#!/usr/bin/env python3
"""Read-only, compact BRES material/effect/image relationship audit.

Usage: python scan_bres_material_links.py <extracted-files-data-root> [output.json]

The report records exact file offsets and fixup targets. It does not relocate
pointers or infer undocumented serialized field meanings.
"""
from __future__ import annotations

import collections
import hashlib
import json
import pathlib
import struct
import sys

LAYOUTS = {
    "image": (0x4C, 0x50, 0x14),
    "effect": (0x54, 0x58, 0x74),
    "material": (0x5C, 0x60, 0x24),
}
PASS_STRING_FIELDS = (0x04, 0x0C, 0x10, 0x18)


def u32(buf: bytes, off: int) -> int:
    return struct.unpack_from("<I", buf, off)[0]


def cstr(buf: bytes, off: int, printable: bool = False) -> str | None:
    if off < 0 or off >= len(buf):
        return None
    end = buf.find(b"\0", off, min(len(buf), off + 512))
    if end <= off:
        return None
    raw = buf[off:end]
    if printable and any(x < 0x20 or x > 0x7E for x in raw):
        return None
    return raw.decode("utf-8", "replace")


def parse(path: pathlib.Path):
    buf = path.read_bytes()
    if len(buf) < 60 or buf[:4] != b"BRES":
        return None
    fix_count, fix_off, root = u32(buf, 16), u32(buf, 24), u32(buf, 32)
    if u32(buf, 8) != 60 or u32(buf, 12) != len(buf) or fix_off != 60:
        return None
    if not fix_count or fix_off + 4 * fix_count > len(buf) or root + 192 > len(buf):
        return None
    fixups = {}
    for i in range(fix_count):
        field = u32(buf, fix_off + i * 4)
        if field + 4 > len(buf):
            return None
        target = u32(buf, field)
        if target > len(buf):
            return None
        fixups[field] = target
    tables = {}
    records = {}
    for kind, (count_off, ptr_off, stride) in LAYOUTS.items():
        count, start = u32(buf, root + count_off), u32(buf, root + ptr_off)
        if count and (start > len(buf) or count * stride > len(buf) - start):
            return None
        tables[kind] = (count, start, stride)
        for idx in range(count):
            at = start + idx * stride
            records[kind, at] = {"index": idx, "offset": at,
                                 "key": cstr(buf, fixups.get(at, -1), True)}
    return buf, fixups, tables, records


def hash_file(path: pathlib.Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as f:
        for block in iter(lambda: f.read(1024 * 1024), b""):
            h.update(block)
    return h.hexdigest()


def analyze(path: pathlib.Path, root: pathlib.Path, parsed, totals: collections.Counter,
            unmatched: collections.Counter, sampler_matches: list,
            examples: dict, pass_hits: list, image_direct_hits: list):
    buf, fixups, tables, records = parsed
    rel = path.relative_to(root).as_posix()
    file_counts = {f"{k}s": n for k, (n, _, _) in tables.items()}
    totals.update({f"records.{k}": n for k, (n, _, _) in tables.items()})

    effects = {}
    images = {}
    image_record_offsets = {off for (kind, off) in records if kind == "image"}
    materials = []
    image_null = 0
    image_plus10_fixups = 0
    for kind, (count, start, stride) in tables.items():
        for idx in range(count):
            ro = start + idx * stride
            key_target = fixups.get(ro)
            key = cstr(buf, key_target, True) if key_target is not None else None
            if kind == "effect":
                if key is not None:
                    effects.setdefault(key, []).append(ro)
            elif kind == "image":
                if key is not None:
                    images.setdefault(key, []).append(ro)
                for rel_field in (0x00, 0x04, 0x08):
                    if ro + rel_field in fixups:
                        totals[f"image.plus{rel_field:02x}_fixups"] += 1
                        if cstr(buf, fixups[ro + rel_field], True) is not None:
                            totals[f"image.plus{rel_field:02x}_printable_string_targets"] += 1
                if u32(buf, ro + 0x10) == 0:
                    image_null += 1
                if ro + 0x10 in fixups:
                    image_plus10_fixups += 1
            elif kind == "material":
                ref_target = fixups.get(ro + 0x0C)
                ref_text = cstr(buf, ref_target, True) if ref_target is not None else None
                param_count = u32(buf, ro + 0x10)
                param_base = fixups.get(ro + 0x14)
                params = []
                if param_base is not None and param_count <= 512 and param_base + param_count * 24 <= len(buf):
                    for pidx in range(param_count):
                        po = param_base + pidx * 24
                        name_target = fixups.get(po)
                        name = cstr(buf, name_target, True) if name_target is not None else None
                        value_target = fixups.get(po + 0x14)
                        p = {"offset": po, "name": name, "name_target": name_target,
                             "value_target": value_target}
                        params.append(p)
                        if name and name.endswith("-sampler") and name[:-8] in images:
                            sampler_matches.append({"file": rel, "parameter": name,
                                                    "image_key": name[:-8]})
                        if value_target in image_record_offsets:
                            image_direct_hits.append({"file": rel, "parameter": name,
                                                      "via": "parameter value target",
                                                      "image_record": value_target})
                        if value_target is not None:
                            for delta in range(0, 64, 4):
                                target = fixups.get(value_target + delta)
                                if target is None:
                                    continue
                                if target in image_record_offsets:
                                    image_direct_hits.append({"file": rel,
                                                              "parameter": name,
                                                              "via": "fixup in first 64 bytes of parameter value target",
                                                              "value_target": value_target,
                                                              "element_delta": delta,
                                                              "image_record": target})
                for rel_field in (0x04, 0x08, 0x0C, 0x14):
                    target = fixups.get(ro + rel_field)
                    if target in image_record_offsets:
                        image_direct_hits.append({"file": rel,
                                                  "material_record": ro,
                                                  "field": rel_field,
                                                  "via": "material record fixup",
                                                  "image_record": target})
                materials.append({"offset": ro, "key": key, "ref": ref_text,
                                  "ref_target": ref_target, "params": params})

    effect_key_set = set(effects)
    for material in materials:
        ref = material["ref"]
        if ref is None or not ref.startswith("#"):
            continue
        effect_key = ref[1:]
        if effect_key in effect_key_set:
            totals["material.effect_key_matches"] += 1
            if len(effects[effect_key]) == 1:
                totals["material.effect_unique_key_matches"] += 1
        else:
            unmatched[effect_key] += 1

    # Candidate pass bases are derived only from fields that actually have
    # fixups, then checked at all four offsets read by the GLES trait helper.
    bases = set()
    for field in fixups:
        for delta in PASS_STRING_FIELDS:
            bases.add(field - delta)
    for base in bases:
        texts = [cstr(buf, fixups.get(base + delta, -1), True)
                 if base + delta in fixups else None for delta in PASS_STRING_FIELDS]
        if all(text is not None for text in texts):
            pass_hits.append({"file": rel, "base": base, "strings": texts})

    totals["image.plus10_zero_words"] += image_null
    totals["image.plus10_fixups"] += image_plus10_fixups
    totals["material.records"] += len(materials)

    def example_candle():
        if not rel.endswith("3d/animateddecors/candle_flame.bdae"):
            return
        wanted = "#ProfileCOMMON_Material__12-fx1302961531_candle_flame"
        m = next((x for x in materials if x["ref"] == wanted), None)
        ekey = wanted[1:]
        eoff = effects.get(ekey, [None])[0]
        if m is None or eoff is None:
            return
        nested = fixups.get(eoff + 0x14)
        string_target = fixups.get(nested) if nested is not None else None
        p = next((x for x in m["params"] if x["name"] == "diffuse-sampler"), None)
        examples["candle_flame"] = {
            "path": rel, "sha256": hash_file(path),
            "material_record": m["offset"], "material_ref_field": m["offset"] + 0x0C,
            "material_ref_target": m["ref_target"], "material_ref": m["ref"],
            "matched_effect_key": ekey, "effect_record": eoff,
            "effect_key_target": fixups.get(eoff) if eoff is not None else None,
            "effect_plus14_field": eoff + 0x14, "effect_plus14_target": nested,
            "nested_first_word_target": string_target,
            "nested_first_word_text": cstr(buf, string_target, True) if string_target is not None else None,
            "parameter_record": p["offset"] if p else None,
            "parameter_name_target": p["name_target"] if p else None,
            "parameter_name": p["name"] if p else None,
        }

    def example_king():
        if not rel.endswith("3d/animateddecors/cin_king_gothicus_01.bdae"):
            return
        wanted = "#ProfileCOMMON__8_-_Default-fx1302961534_cin_king_gothicus_01"
        m = next((x for x in materials if x["ref"] == wanted), None)
        ekey = wanted[1:]
        eoff = effects.get(ekey, [None])[0]
        image_key = "Map__391__char_king.tga_"
        ioff = images.get(image_key, [None])[0]
        p = next((x for x in (m["params"] if m else [])
                  if x["name"] == image_key + "-sampler"), None)
        path_target = fixups.get(ioff + 8) if ioff is not None else None
        examples["cin_king_gothicus_01"] = {
            "path": rel, "sha256": hash_file(path),
            "material_record": m["offset"] if m else None,
            "material_ref_field": m["offset"] + 0x0C if m else None,
            "material_ref_target": m["ref_target"] if m else None,
            "material_ref": m["ref"] if m else None,
            "matched_effect_key": ekey, "effect_record": eoff,
            "effect_key_target": fixups.get(eoff) if eoff is not None else None,
            "parameter_record": p["offset"] if p else None,
            "parameter_name_target": p["name_target"] if p else None,
            "parameter_name": p["name"] if p else None,
            "image_record": ioff,
            "image_key_target": fixups.get(ioff) if ioff is not None else None,
            "image_key": image_key,
            "image_path_field": ioff + 8 if ioff is not None else None,
            "image_path_target": path_target,
            "image_path": cstr(buf, path_target, True) if path_target is not None else None,
            "parameter_to_image_relation": "parameter name without literal '-sampler' equals image key",
        }

    example_candle()
    example_king()
    return file_counts


def main():
    if len(sys.argv) < 2:
        raise SystemExit(__doc__)
    root = pathlib.Path(sys.argv[1]).resolve()
    output = pathlib.Path(sys.argv[2]).resolve() if len(sys.argv) > 2 else None
    totals = collections.Counter()
    unmatched = collections.Counter()
    sampler_matches = []
    pass_hits = []
    image_direct_hits = []
    examples = {}
    files_scanned = 0
    skipped = collections.Counter()
    for path in sorted(root.rglob("*.bdae")):
        try:
            parsed = parse(path)
        except OSError:
            skipped["read_error"] += 1
            continue
        if parsed is None:
            skipped["not_valid_bres"] += 1
            continue
        analyze(path, root, parsed, totals, unmatched, sampler_matches,
                examples, pass_hits, image_direct_hits)
        files_scanned += 1

    report = {
        "schema_version": 2,
        "method": "Read-only BRES parser; exact unrelocated fixup field/target offsets and resolved printable strings.",
        "source_root_label": "recovered game cache files/data",
        "files_scanned": files_scanned,
        "aggregate_counts": dict(sorted(totals.items())),
        "material_field0c_post_hash_effect_key": {
            "matched_records": totals["material.effect_key_matches"],
            "unique_effect_key_matches": totals["material.effect_unique_key_matches"],
            "unmatched_value_counts": dict(sorted(unmatched.items())),
        },
        "sampler_name_image_key_convention": {
            "matching_parameter_records": len(sampler_matches),
            "examples": sampler_matches[:12],
        },
        "negative_checks": {
            "image_plus10_zero_words": totals["image.plus10_zero_words"],
            "image_plus10_fixups": totals["image.plus10_fixups"],
            "material_record_parameter_or_value_array_fixups_targeting_image_records": len(image_direct_hits),
        },
        "gles_four_offset_string_candidates": {
            "candidate_bases": len(pass_hits),
            "examples": pass_hits[:8],
        },
        "examples": examples,
        "skipped": dict(sorted(skipped.items())),
    }
    raw = json.dumps(report, indent=2, ensure_ascii=False) + "\n"
    if output:
        output.parent.mkdir(parents=True, exist_ok=True)
        output.write_text(raw, encoding="utf-8")
    else:
        sys.stdout.write(raw)


if __name__ == "__main__":
    main()
