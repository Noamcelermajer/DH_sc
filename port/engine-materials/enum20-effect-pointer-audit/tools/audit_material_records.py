#!/usr/bin/env python3
"""Read-only corpus census for material enum 20 and material effect indices.

Usage:
  python audit_material_records.py <recovered-files-data-root> <output.json>

The input tree is only read. This script does not relocate BRES words or infer
field roles beyond reporting offsets, fixups, strings, and numeric counts.
"""
from __future__ import annotations

import collections
import hashlib
import json
import pathlib
import struct
import sys


def u32(buf: bytes, off: int) -> int:
    return struct.unpack_from("<I", buf, off)[0]


def cstr(buf: bytes, off: int | None) -> str | None:
    if off is None or off < 0 or off >= len(buf):
        return None
    end = buf.find(b"\0", off, min(len(buf), off + 512))
    if end <= off:
        return None
    raw = buf[off:end]
    if any(c < 0x20 or c > 0x7E for c in raw):
        return None
    return raw.decode("ascii")


def sha256(path: pathlib.Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as f:
        for block in iter(lambda: f.read(1024 * 1024), b""):
            h.update(block)
    return h.hexdigest()


def parse(path: pathlib.Path):
    buf = path.read_bytes()
    if len(buf) < 60 or buf[:4] != b"BRES":
        return None
    if u32(buf, 8) != 60 or u32(buf, 12) != len(buf) or u32(buf, 24) != 60:
        return None
    fix_count = u32(buf, 16)
    if fix_count > (len(buf) - 60) // 4:
        return None
    fixups: dict[int, int] = {}
    for i in range(fix_count):
        field = u32(buf, 60 + i * 4)
        if field + 4 > len(buf):
            return None
        target = u32(buf, field)
        if target > len(buf):
            return None
        fixups[field] = target
    root = u32(buf, 32)
    if root + 0x60 > len(buf):
        return None
    effect_count, effect_base = u32(buf, root + 0x54), u32(buf, root + 0x58)
    material_count, material_base = u32(buf, root + 0x5C), u32(buf, root + 0x60)
    if effect_count and (effect_base > len(buf) or effect_count * 0x74 > len(buf) - effect_base):
        return None
    if material_count and (material_base > len(buf) or material_count * 0x24 > len(buf) - material_base):
        return None
    return buf, fixups, root, effect_count, effect_base, material_count, material_base


def main() -> int:
    if len(sys.argv) != 3:
        print(__doc__.strip(), file=sys.stderr)
        return 2
    root = pathlib.Path(sys.argv[1]).resolve()
    out_path = pathlib.Path(sys.argv[2])
    if not root.is_dir():
        raise SystemExit(f"not a directory: {root}")

    totals = collections.Counter()
    enum_names = collections.Counter()
    enum_values = collections.Counter()
    material_external_paths = collections.Counter()
    material_name_to_effect = collections.Counter()
    effect_indices = collections.Counter()
    local_index_key_checks = collections.Counter()
    examples: dict[str, list[dict[str, object]]] = {
        "enum20": [], "external_effect": [], "local_effect": [], "bounds_edge": []
    }
    files = sorted(root.rglob("*.bdae"))
    for path in files:
        parsed = parse(path)
        if parsed is None:
            totals["invalid_or_non_bres_files"] += 1
            continue
        buf, fixups, bres_root, effect_count, effect_base, material_count, material_base = parsed
        effect_keys = []
        for ei in range(effect_count):
            eo = effect_base + ei * 0x74
            effect_keys.append(cstr(buf, fixups.get(eo)))
        totals["valid_bres_files"] += 1
        totals["effects"] += effect_count
        totals["materials"] += material_count
        rel = path.relative_to(root).as_posix()
        file_hash = None

        for mi in range(material_count):
            mo = material_base + mi * 0x24
            raw_effect = u32(buf, mo + 0x18)
            material_effect_key = cstr(buf, fixups.get(mo + 0x0C))
            external_path = cstr(buf, fixups.get(mo + 0x08))
            effect_name = material_effect_key[1:] if material_effect_key and material_effect_key.startswith("#") else None
            totals["material_plus18_values"] += 1
            if mo + 0x08 in fixups:
                totals["material_plus08_fixups"] += 1
                material_external_paths[external_path or "<non-string/empty>"] += 1
            if mo + 0x0C in fixups:
                totals["material_plus0c_fixups"] += 1
            if raw_effect == 0xFFFFFFFF:
                totals["material_plus18_external_sentinel"] += 1
                if mo + 0x08 in fixups:
                    totals["sentinel_with_plus08_fixup"] += 1
                    if mo + 0x0C in fixups:
                        totals["sentinel_with_plus0c_fixup"] += 1
                    if file_hash is None:
                        file_hash = sha256(path)
                    if len(examples["external_effect"]) < 24:
                        examples["external_effect"].append({
                            "file": rel, "file_sha256": file_hash,
                            "material_index": mi, "material_offset": mo,
                            "plus08_target": fixups.get(mo + 0x08), "plus08_text": external_path,
                            "plus0c_target": fixups.get(mo + 0x0C), "plus0c_text": material_effect_key,
                            "raw_plus18": raw_effect, "effect_count": effect_count,
                        })
            elif raw_effect < effect_count:
                totals["material_plus18_in_range_indices"] += 1
                effect_indices[raw_effect] += 1
                if effect_name is not None and effect_keys[raw_effect] == effect_name:
                    local_index_key_checks["same_file_effect_key_matches"] += 1
                else:
                    local_index_key_checks["same_file_effect_key_mismatches_or_unresolved"] += 1
                if file_hash is None:
                    file_hash = sha256(path)
                if len(examples["local_effect"]) < 12:
                    examples["local_effect"].append({
                        "file": rel, "file_sha256": file_hash,
                        "material_index": mi, "material_offset": mo,
                        "plus08_text": external_path, "plus0c_text": material_effect_key,
                        "raw_plus18": raw_effect, "effect_count": effect_count,
                        "expected_effect_offset": effect_base + raw_effect * 0x74,
                    })
            elif raw_effect == effect_count:
                totals["material_plus18_equal_effect_count"] += 1
                if file_hash is None:
                    file_hash = sha256(path)
                if len(examples["bounds_edge"]) < 16:
                    examples["bounds_edge"].append({
                        "file": rel, "file_sha256": file_hash,
                        "material_index": mi, "material_offset": mo,
                        "plus08_text": external_path, "plus0c_text": material_effect_key,
                        "raw_plus18": raw_effect, "effect_count": effect_count,
                    })
            else:
                totals["material_plus18_greater_than_effect_count"] += 1

            if effect_name is not None:
                material_name_to_effect[effect_name] += 1

            param_count = u32(buf, mo + 0x10)
            param_base = fixups.get(mo + 0x14)
            if param_count > 512 or (param_count and (param_base is None or param_base + param_count * 24 > len(buf))):
                totals["invalid_material_parameter_arrays"] += 1
                continue
            for pi in range(param_count):
                po = param_base + pi * 24
                param_type = u32(buf, po + 0x08)
                if param_type != 20:
                    continue
                totals["enum20_rows"] += 1
                name = cstr(buf, fixups.get(po))
                value_obj = fixups.get(po + 0x14)
                value_string_target = fixups.get(value_obj + 0x04) if value_obj is not None else None
                value_string = cstr(buf, value_string_target)
                if raw_effect == 0xFFFFFFFF:
                    totals["enum20_rows_parenting_external_sentinel"] += 1
                elif raw_effect < effect_count:
                    totals["enum20_rows_parenting_local_effect_index"] += 1
                else:
                    totals["enum20_rows_parenting_other_effect_value"] += 1
                enum_names[name or "<non-string/empty>"] += 1
                enum_values[value_string or "<non-string/empty>"] += 1
                if len(examples["enum20"]) < 32:
                    if file_hash is None:
                        file_hash = sha256(path)
                    examples["enum20"].append({
                        "file": rel, "file_sha256": file_hash,
                        "material_index": mi, "material_offset": mo,
                        "parameter_index": pi, "parameter_offset": po,
                        "parameter_name": name, "parameter_type_word": param_type,
                        "value_object": value_obj,
                        "value_string_target": value_string_target,
                        "value_string": value_string,
                    })

    result = {
        "schema_version": 1,
        "method": "Read-only scan of unrelocated BRES records and explicit fixup fields.",
        "source_root_label": "recovered game cache files/data",
        "file_count_seen": len(files),
        "aggregate_counts": dict(sorted(totals.items())),
        "enum20_parameter_names": dict(enum_names.most_common()),
        "enum20_value_strings": dict(enum_values.most_common()),
        "material_plus08_external_path_strings": dict(material_external_paths.most_common()),
        "material_plus18_effect_indices": dict(effect_indices.most_common()),
        "local_material_effect_key_validation": dict(sorted(local_index_key_checks.items())),
        "material_plus0c_names_after_hash": dict(material_name_to_effect.most_common()),
        "examples": examples,
    }
    out_path.parent.mkdir(parents=True, exist_ok=True)
    out_path.write_text(json.dumps(result, indent=2, ensure_ascii=True) + "\n", encoding="utf-8")
    print(json.dumps({
        "files": len(files),
        "valid_bres_files": totals["valid_bres_files"],
        "materials": totals["materials"],
        "enum20_rows": totals["enum20_rows"],
        "plus18_external_sentinel": totals["material_plus18_external_sentinel"],
        "plus18_local_indices": totals["material_plus18_in_range_indices"],
        "plus18_equal_effect_count": totals["material_plus18_equal_effect_count"],
        "plus18_greater_than_effect_count": totals["material_plus18_greater_than_effect_count"],
        "output": str(out_path),
    }, ensure_ascii=True))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
