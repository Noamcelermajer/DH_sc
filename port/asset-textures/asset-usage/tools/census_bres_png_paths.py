#!/usr/bin/env python3
"""Inventory .png strings reachable from BRES relocation targets.

This is a read-only corpus scan. A matching string is evidence of serialized
text, not proof that the engine interprets its field as a texture filename.
"""

from __future__ import annotations

import hashlib
import json
import sys
from pathlib import Path


def u32(data: bytes, offset: int) -> int:
    return int.from_bytes(data[offset : offset + 4], "little")


def bres_fixups(data: bytes) -> tuple[list[tuple[int, int]], str | None]:
    if len(data) < 60:
        return [], "short_header"
    if u32(data, 0) != 0x53455242:
        return [], "magic"
    if data[4:6] != b"\xfe\xff":
        return [], "byte_order"
    if data[7] & 0x80:
        return [], "already_relocated"
    if u32(data, 8) != 60:
        return [], "header_size"
    if u32(data, 12) != len(data):
        return [], "file_size"
    if u32(data, 20) != 0:
        return [], "external_base"
    count, table = u32(data, 16), u32(data, 24)
    if not count or table != 60 or table + count * 4 > len(data):
        return [], "fixup_table"
    if u32(data, 28) != 60 + count * 4 or u32(data, table) != 24:
        return [], "fixup_table"
    fields: list[tuple[int, int]] = []
    for index in range(count):
        field = u32(data, table + index * 4)
        if field % 4 or field + 4 > len(data) or table <= field < table + count * 4:
            return [], "fixup_field"
        target = u32(data, field)
        if target > len(data):
            return [], "fixup_target"
        fields.append((field, target))
    return fields, None


def path_candidate(data: bytes, target: int) -> str | None:
    if target >= len(data):
        return None
    end = data.find(b"\0", target, min(len(data), target + 1024))
    if end < 0 or end == target:
        return None
    raw = data[target:end]
    if any(byte < 0x20 or byte > 0x7E for byte in raw):
        return None
    value = raw.decode("ascii")
    if not value.lower().endswith(".png"):
        return None
    return value


def census(root: Path) -> dict:
    files = sorted(root.rglob("*.bdae"), key=lambda p: (p.as_posix().casefold(), p.as_posix()))
    hits: list[dict] = []
    invalid: dict[str, int] = {}
    valid = 0
    total_fixups = 0
    total_bytes = 0
    corpus_index = hashlib.sha256()
    for path in files:
        data = path.read_bytes()
        relative = path.relative_to(root).as_posix()
        digest = hashlib.sha256(data).hexdigest()
        total_bytes += len(data)
        corpus_index.update(relative.encode("utf-8"))
        corpus_index.update(b"\0")
        corpus_index.update(bytes.fromhex(digest))
        fixups, error = bres_fixups(data)
        if error:
            invalid[error] = invalid.get(error, 0) + 1
            continue
        valid += 1
        total_fixups += len(fixups)
        for field, target in fixups:
            value = path_candidate(data, target)
            if value is not None:
                hits.append({
                    "bres_path": relative,
                    "bres_size_bytes": len(data),
                    "bres_sha256": digest,
                    "fixup_field_offset": field,
                    "string_target_offset": target,
                    "string": value,
                })
    unique = sorted({row["string"] for row in hits}, key=str.casefold)
    return {
        "schema": "dh2-bres-relocation-png-string-census-v1",
        "scope": "Null-terminated printable ASCII .png strings at BRES relocation targets in recovered .bdae files.",
        "interpretation_limit": "A fixup-reachable string is not proof that its containing field is a texture path or that the engine loads it.",
        "bres_file_count": len(files),
        "bres_total_bytes": total_bytes,
        "source_file_index_sha256": corpus_index.hexdigest(),
        "source_file_index_definition": "SHA-256 over sorted relative path UTF-8, NUL, and each file SHA-256 byte sequence.",
        "valid_bres_count": valid,
        "invalid_bres_counts": invalid,
        "valid_bres_fixup_count": total_fixups,
        "png_string_reference_count": len(hits),
        "distinct_png_strings": unique,
        "references": hits,
    }


def main() -> int:
    if len(sys.argv) != 3:
        print("usage: census_bres_png_paths.py <recovered-files-root> <output.json>", file=sys.stderr)
        return 2
    root = Path(sys.argv[1]).resolve()
    output = Path(sys.argv[2]).resolve()
    if not root.is_dir():
        raise SystemExit(f"cache root does not exist: {root}")
    result = census(root)
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(result, indent=2) + "\n", encoding="utf-8")
    print(f"bres_files={result['bres_file_count']} valid={result['valid_bres_count']} fixups={result['valid_bres_fixup_count']}")
    print(f"png_string_references={result['png_string_reference_count']} distinct={len(result['distinct_png_strings'])}")
    for value in result["distinct_png_strings"]:
        print(value)
    print(f"manifest={output}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
