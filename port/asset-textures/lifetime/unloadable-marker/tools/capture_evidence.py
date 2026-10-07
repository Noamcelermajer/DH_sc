#!/usr/bin/env python3
"""Capture byte-checked APK evidence for the texture unloadable marker."""

from __future__ import annotations

import argparse
import hashlib
import json
import re
import subprocess
import zipfile
from pathlib import Path


EXPECTED_APK_SHA256 = "32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200"
EXPECTED_ELF_SHA256 = "36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80"
APK_MEMBER = "lib/armeabi-v7a/libDungeonHunter2.so"

# All selected native routines lie in PT_LOAD 0, for which p_offset == p_vaddr.
RANGES = [
    ("texture_manager_mark_unloadable", "CTextureManager::markTextureAsUnloadable", 0x005E8DD4, 0x104, "Raw-pointer vector membership and growth."),
    ("texture_add_from_desc", "CTextureManager::addTexture(char const*, STextureDesc const&, bool)", 0x005EA7F8, 0x100, "Descriptor +0x1e gate and registration call."),
    ("texture_manager_constructor", "CTextureManager::CTextureManager(IVideoDriver*) [C1]", 0x005EAA7C, 0x45C, "Initializes the marker vector begin/end/capacity."),
    ("texture_manager_destructor", "CTextureManager::~CTextureManager() [D2]", 0x005EA050, 0xE8, "Cache teardown and non-owning marker-vector deallocation."),
    ("texture_manager_remove_texture_raw", "CTextureManager::removeTexture(ITexture*)", 0x003849A0, 0xAC, "Consumes marker membership and attempts cache removal."),
    ("texture_manager_remove_texture_intrusive", "CTextureManager::removeTexture(intrusive_ptr<ITexture>&)", 0x00384EB4, 0x3C, "Drops caller reference, then delegates to raw remover."),
    ("texture_manager_set_placeholder", "CTextureManager::setPlaceHolder(...) ", 0x005EA228, 0x80, "One engine caller of raw removal."),
    ("texture_manager_clear_placeholder", "CTextureManager::clearPlaceHolder(...) ", 0x005E8260, 0x2C, "Placeholder cleanup after successful cache removal."),
    ("texture_cache_remove", "SIDedCollection<ITexture>::remove(unsigned short, bool)", 0x005E9E7C, 0xFC, "Non-forced refcount gate for cache eviction."),
    ("texture_cache_entry_reset", "SIDedCollection<ITexture>::SEntry::reset()", 0x005E9E50, 0x2C, "Clears cache pointer and drops its strong reference."),
    ("bres_manager_unload_iterator", "CResFileManager::unload(iterator, bool)", 0x006584FC, 0x68, "Releases/erases a cached CResFile when allowed."),
    ("bres_manager_unload_name", "CResFileManager::unload(char const*, bool)", 0x00659B60, 0xDC, "Name-based resource-cache unload entry."),
    ("bres_manager_unload_all", "CResFileManager::unloadAll()", 0x00659C3C, 0xC0, "Iterates cached CResFile entries for unload."),
    ("bres_release_objects", "CResFile::releaseObjects()", 0x00658744, 0x2E8, "Drops each SImage texture and conditionally asks the texture manager to evict cache-only textures."),
    ("bres_file_destructor", "CResFile::~CResFile() [D1]", 0x00658A2C, 0x124, "Calls releaseObjects during resource-file destruction."),
    ("texture_desc_dimension_builder", "CTextureManager::addTexture(dimension2d, ...)", 0x005EA8F8, 0x98, "Builds a descriptor with +0x1e initialized to zero."),
    ("texture_desc_placeholder_builder", "CTextureManager::getPlaceHolder(...) ", 0x005EC1B8, 0x28C, "Builds a descriptor with +0x1e initialized to zero."),
    ("texture_file_desc_init_excerpt", "CTextureManager::loadTextureFromFile descriptor initialization (excerpt)", 0x005ECC00, 0x40, "Initializes stack descriptor byte +0x1e to zero before loader dispatch."),
    ("driver_set_texture_slot", "CCommonGLDriver::setTexture(unit, ITexture*, type)", 0x005B26F0, 0x11C, "Stores raw texture-unit cache pointers without intrusive retain/drop."),
    ("texture_clear_driver_resources", "CTextureManager::clearDriverSpecificResources()", 0x005E97E0, 0xF4, "Walks cached textures and clears driver names when the live-name bit is set."),
    ("gl_texture_unbind", "CCommonGLDriver::CTexture::unbindImpl()", 0x005B28DC, 0x154, "Clears matching driver unit slots and deletes the GL name."),
    ("gl_texture_destructor", "CCommonGLDriver::CTexture::~CTexture() [D2]", 0x005B2A30, 0x74, "Runs driver unbind when a live GL name remains."),
    ("texture_base_destructor", "ITexture::~ITexture() [D2]", 0x005FE310, 0x6C, "Releases owned CPU backing after derived destruction."),
]


def sha256(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def main() -> None:
    script_dir = Path(__file__).resolve().parent
    supplement_dir = script_dir.parent
    repo_root = script_dir.parents[4]
    parser = argparse.ArgumentParser()
    parser.add_argument("--apk", type=Path, default=Path(r"Dungeon-Hunter-2-HD-v1-0-2.apk"))
    parser.add_argument("--elf", type=Path, default=repo_root / "work" / "libDungeonHunter2.so")
    parser.add_argument("--objdump", default="llvm-objdump")
    args = parser.parse_args()

    apk_bytes = args.apk.read_bytes()
    if sha256(apk_bytes) != EXPECTED_APK_SHA256:
        raise SystemExit("APK identity hash mismatch")
    elf_bytes = args.elf.read_bytes()
    if sha256(elf_bytes) != EXPECTED_ELF_SHA256:
        raise SystemExit("ELF identity hash mismatch")
    with zipfile.ZipFile(args.apk) as apk:
        member_bytes = apk.read(APK_MEMBER)
    if sha256(member_bytes) != EXPECTED_ELF_SHA256:
        raise SystemExit("APK ELF member hash mismatch")
    if member_bytes != elf_bytes:
        raise SystemExit("APK ELF member differs from the checked local ELF")

    whole_disassembly = subprocess.run(
        [args.objdump, "-d", str(args.elf)], check=True, capture_output=True, text=True
    ).stdout
    descriptor_add_call_sites = [
        int(address, 16)
        for address in re.findall(
            r"^\s*([0-9a-f]+):.*\bbl\s+0x5ea7f8\b", whole_disassembly, re.MULTILINE
        )
    ]
    if descriptor_add_call_sites != [0x5EA980, 0x5EC2F8]:
        raise SystemExit(f"unexpected addTexture(desc) direct-call sites: {descriptor_add_call_sites!r}")

    manifest_ranges = []
    excerpts = [
        "; Source: exact ELF member lib/armeabi-v7a/libDungeonHunter2.so from the checked APK.",
        f"; APK SHA-256: {EXPECTED_APK_SHA256}",
        f"; ELF SHA-256: {EXPECTED_ELF_SHA256}",
        "; PT_LOAD 0 has p_offset=0 and p_vaddr=0, so code VA equals file offset.",
        "; Raw instruction words below are emitted by llvm-objdump from the hash-checked ELF.",
    ]
    for key, symbol, va, size, scope in RANGES:
        file_offset = va
        code = member_bytes[file_offset:file_offset + size]
        if len(code) != size:
            raise SystemExit(f"short range: {key}")
        command = [
            args.objdump,
            "-C",
            "-d",
            f"--start-address=0x{va:x}",
            f"--stop-address=0x{va + size:x}",
            str(args.elf),
        ]
        disassembly = subprocess.run(command, check=True, capture_output=True, text=True).stdout
        lines = disassembly.splitlines()
        excerpts.extend(["", f"; RANGE {key}: {symbol}", f"; ELF_VA=0x{va:08x} size={size} file_offset=0x{file_offset:08x} sha256={sha256(code)}", *lines[4:]])
        manifest_ranges.append({
            "key": key,
            "symbol_or_listing_alias": symbol,
            "elf_va": f"0x{va:08x}",
            "size_bytes": size,
            "file_offset": f"0x{file_offset:08x}",
            "pt_load_segment_index": 0,
            "sha256": sha256(code),
            "apk_member_bytes_match": True,
            "scope": scope,
        })

    manifest = {
        "component": "Texture unloadable-marker registration, resource release, texture-cache removal, and GLES reference cleanup",
        "original_apk": args.apk.name,
        "original_apk_sha256": EXPECTED_APK_SHA256,
        "original_library": APK_MEMBER.rsplit("/", 1)[-1],
        "original_library_sha256": EXPECTED_ELF_SHA256,
        "apk_member": APK_MEMBER,
        "hash_assumption": "Each range hash covers exactly the ELF bytes at file_offset for size_bytes after checking whole APK, ELF, and member identity.",
        "pt_load_mapping": {"pt_load_index": 0, "p_offset": "0x00000000", "p_vaddr": "0x00000000", "p_filesz": 9785648},
        "ranges": manifest_ranges,
        "direct_call_site_audit": {
            "target": "CTextureManager::addTexture(char const*, STextureDesc const&, bool) at 0x005ea7f8",
            "call_sites": [f"0x{address:08x}" for address in descriptor_add_call_sites],
            "scope_limit": "Direct BL call sites within this ELF; does not account for callers in other libraries or runtime-generated code.",
        },
        "verification": {
            "range_count": len(manifest_ranges),
            "all_range_bytes_equal_apk_elf": True,
            "whole_apk_hash_matches": True,
            "whole_elf_hash_matches": True,
            "apk_member_hash_matches": True,
            "builds_or_tests_run": False,
        },
    }
    supplement_dir.mkdir(parents=True, exist_ok=True)
    (supplement_dir / "functions.json").write_text(json.dumps(manifest, indent=2) + "\n", encoding="utf-8")
    reference_dir = supplement_dir / "reference"
    reference_dir.mkdir(parents=True, exist_ok=True)
    (reference_dir / "unloadable-marker.asm").write_text("\n".join(excerpts) + "\n", encoding="utf-8")
    print(f"APK SHA-256: {EXPECTED_APK_SHA256}")
    print(f"ELF SHA-256: {EXPECTED_ELF_SHA256}")
    print(f"Verified ranges: {len(manifest_ranges)} (all byte-equal to the APK member)")


if __name__ == "__main__":
    main()
