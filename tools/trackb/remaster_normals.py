#!/usr/bin/env python3
"""Normal maps for the remaster with Ubisoft La Forge's CHORD (REMASTER.md, "Normal maps").

Run with CHORD's own environment (it has torch + CUDA); CHORD itself is not part of this repository (research-only
license; code and weights stay in the user's tools folder):

  <chord>/.venv/Scripts/python.exe tools/trackb/remaster_normals.py [--chord <dir>] [--src <hd2x/3d>] [--out <dir>]
                                    [--only name1,name2] [--tile 1024] [--overlap 192] [--all]

For every lit-surface texture of <src> (world atlases, characters, weapons, objects; menus, splash art, skies, effects
and data maps are skipped unless --all), CHORD estimates base colour (light removed), normal, roughness and metalness.
CHORD works on 1024x1024 inputs, so a larger texture is cut into overlapping 1024 tiles whose results are blended with
feathered weights (normals re-normalised), which keeps the 2x detail. Transparent texels get a flat normal.
Output per texture: <out>/<name>/{normal,basecolor,roughness,metalness}.png (normal: tangent space as CHORD encodes it, 0.5 + n/2); a texture whose normal.png is newer than the
input is skipped.
"""
import argparse
import os
import re
import sys
import time

import numpy as np

HOME = os.path.expanduser('~')
CHORD = os.path.join(HOME, 'Documents', 'DH2-tools', 'chord')
SRC = os.path.join(HOME, 'Documents', 'DH2-remaster', 'hd2x', '3d')
OUT = os.path.join(HOME, 'Documents', 'DH2-remaster', 'chord')
# Stable Diffusion 2.1 configs + tokenizer (no weights: CHORD's checkpoint holds them). CHORD's default mirror
# (RedbeardNZ/stable-diffusion-2-1-base) is gone; a local copy of sd2-community/stable-diffusion-2-1-base's *.json and
# tokenizer files is used instead.
SD_CONFIG = os.path.join(HOME, 'Documents', 'DH2-tools', 'sd21-config')
LIT = re.compile(r'^(env_|char_|atlas_modular_|atlas_weapons|atlas_skinned_|atlas_dh2_game_objects_\d+$|dh1_atlas_|walls$)', re.I)
DATA = re.compile(r'(_spec$|_alpha$|lightmap|_specular$)', re.I)


def wanted(name, everything):
    if everything:
        return True
    return bool(LIT.search(name)) and not DATA.search(name)


def feather(n, overlap):
    w = np.ones(n, np.float32)
    if overlap > 0:
        ramp = (np.arange(overlap, dtype=np.float32) + 0.5) / overlap
        w[:overlap] = ramp
        w[-overlap:] = ramp[::-1]
    return w


def tiles(size, tile, overlap):
    if size <= tile:
        return [0]
    step = tile - overlap
    starts = list(range(0, size - tile, step)) + [size - tile]
    return sorted(set(starts))


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--chord', default=CHORD)
    ap.add_argument('--src', default=SRC)
    ap.add_argument('--out', default=OUT)
    ap.add_argument('--only', default='')
    ap.add_argument('--tile', type=int, default=1024)
    ap.add_argument('--overlap', type=int, default=192)
    ap.add_argument('--all', action='store_true')
    ap.add_argument('--sd-config', default=SD_CONFIG)
    a = ap.parse_args()

    sys.path.insert(0, a.chord)
    os.chdir(a.chord)  # CHORD reads config/chord.yaml relative to its folder
    import torch
    from huggingface_hub import hf_hub_download
    from omegaconf import OmegaConf
    from PIL import Image
    from torchvision.transforms import v2
    from chord import ChordModel
    from chord.io import load_torch_file

    Image.MAX_IMAGE_PIXELS = None
    names = sorted(os.path.splitext(f)[0] for f in os.listdir(a.src) if f.lower().endswith('.png'))
    only = {n.strip() for n in a.only.split(',') if n.strip()}
    names = [n for n in names if (n in only) if only] if only else [n for n in names if wanted(n, a.all)]
    print('textures:', len(names), flush=True)

    device = torch.device('cuda')
    config = OmegaConf.load('config/chord.yaml')
    if os.path.isdir(a.sd_config):
        config.model.stable_diffusion.hf_key = a.sd_config
    model = ChordModel(config)
    model.load_state_dict(load_torch_file(hf_hub_download(repo_id='Ubisoft/ubisoft-laforge-chord', filename='chord_v1.safetensors')))
    model.eval().to(device)

    for i, name in enumerate(names):
        src = os.path.join(a.src, name + '.png')
        dst = os.path.join(a.out, name)
        if os.path.exists(os.path.join(dst, 'normal.png')) and os.path.getmtime(os.path.join(dst, 'normal.png')) >= os.path.getmtime(src):
            continue
        t0 = time.time()
        rgba = np.asarray(Image.open(src).convert('RGBA')).astype(np.float32) / 255.0
        h, w = rgba.shape[:2]
        rgb = rgba[..., :3]
        alpha = rgba[..., 3]
        acc = {}
        wsum = np.zeros((h, w), np.float32)
        tile = min(a.tile, h, w)
        for y in tiles(h, tile, a.overlap):
            for x in tiles(w, tile, a.overlap):
                crop = torch.from_numpy(np.ascontiguousarray(rgb[y:y + tile, x:x + tile])).movedim(2, 0).to(device)
                inp = v2.Resize(size=(1024, 1024), antialias=True)(crop).unsqueeze(0)
                with torch.no_grad(), torch.autocast(device_type='cuda'):
                    out = model(inp)
                wt = np.outer(feather(tile, a.overlap if h > tile else 0), feather(tile, a.overlap if w > tile else 0))
                for key, val in out.items():
                    if val.dim() == 3:  # roughness, metalness: BxHxW
                        val = val.unsqueeze(1)
                    val = v2.Resize(size=(tile, tile), antialias=True)(val.float()).squeeze(0).movedim(0, 2).cpu().numpy()
                    if key not in acc:
                        acc[key] = np.zeros((h, w, val.shape[2]), np.float32)
                    acc[key][y:y + tile, x:x + tile] += val * wt[..., None]
                wsum[y:y + tile, x:x + tile] += wt
        os.makedirs(dst, exist_ok=True)
        for key, val in acc.items():
            val = val / np.maximum(wsum, 1e-6)[..., None]
            if key == 'normal':
                n = val * 2.0 - 1.0
                n[alpha < 0.02] = (0.0, 0.0, 1.0)
                n /= np.maximum(np.linalg.norm(n, axis=2, keepdims=True), 1e-6)
                val = n * 0.5 + 0.5
            img = (np.clip(val, 0.0, 1.0) * 255.0 + 0.5).astype(np.uint8)
            Image.fromarray(img[..., 0] if img.shape[2] == 1 else img[..., :3]).save(os.path.join(dst, key + '.png'))
        print('[%d/%d] %-40s %dx%d %.1fs' % (i + 1, len(names), name, w, h, time.time() - t0), flush=True)


if __name__ == '__main__':
    main()
