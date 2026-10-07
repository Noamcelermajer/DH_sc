#!/usr/bin/env python3
"""Read-only census of the BRES image-row string fields.

Usage: python census_image_fields.py <extracted-files-data-root> [output.json]
"""
from __future__ import annotations

import collections
import importlib.util
import json
import pathlib
import sys

PARSER_PATH = pathlib.Path(__file__).resolve().parents[1] / "asset-links" / "scan_bres_material_links.py"
SPEC = importlib.util.spec_from_file_location("dh2_bres_material_links", PARSER_PATH)
if SPEC is None or SPEC.loader is None:
    raise SystemExit(f"cannot load BRES parser: {PARSER_PATH}")
PARSER = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(PARSER)


def main() -> None:
    if len(sys.argv) < 2:
        raise SystemExit(__doc__)
    root = pathlib.Path(sys.argv[1]).resolve()
    output = pathlib.Path(sys.argv[2]).resolve() if len(sys.argv) > 2 else None
    totals: collections.Counter[str] = collections.Counter()
    examples: list[dict[str, object]] = []
    alias_values: set[str] = set()
    encountered = valid_files = 0

    for path in sorted(root.rglob("*.bdae")):
        encountered += 1
        try:
            parsed = PARSER.parse(path)
        except OSError:
            totals["read_errors"] += 1
            continue
        if parsed is None:
            totals["invalid_bres_files"] += 1
            continue
        valid_files += 1
        buf, fixups, tables, _records = parsed
        count, start, stride = tables["image"]
        totals["image_rows"] += count
        for index in range(count):
            row = start + index * stride
            strings: dict[int, str | None] = {}
            for field in (0x00, 0x04, 0x08):
                target = fixups.get(row + field)
                value = PARSER.cstr(buf, target, True) if target is not None else None
                strings[field] = value
                if row + field in fixups:
                    totals[f"field_{field:02x}_fixups"] += 1
                if value is not None:
                    totals[f"field_{field:02x}_printable_strings"] += 1

            key, alias, image_path = strings[0x00], strings[0x04], strings[0x08]
            if key is not None and alias is not None:
                alias_values.add(alias)
                if alias == key.replace(".", "_"):
                    totals["field_04_exact_dot_to_underscore_aliases"] += 1
                else:
                    totals["field_04_nonmatching_aliases"] += 1
            if len(examples) < 8 and key is not None and alias is not None and image_path is not None:
                examples.append({
                    "file": path.relative_to(root).as_posix(),
                    "row_index": index,
                    "row_offset": row,
                    "key_plus_00": key,
                    "companion_plus_04": alias,
                    "path_plus_08": image_path,
                })

    report = {
        "schema_version": 1,
        "method": "Read-only scan of printable targets for exact BRES fixups at image-row offsets +0x00, +0x04, and +0x08.",
        "source_root_label": "recovered game cache files/data",
        "bdae_files_encountered": encountered,
        "valid_bres_files": valid_files,
        "distinct_plus_04_strings": len(alias_values),
        "counts": dict(sorted(totals.items())),
        "examples": examples,
        "interpretation_limit": "The +0x04 relationship is a corpus pattern, not proof of its native consumer or purpose. The +0x08 path field's native forwarding is documented in ANALYSIS.md; path resolution and cache-key semantics remain open.",
    }
    raw = json.dumps(report, indent=2, ensure_ascii=False) + "\n"
    if output:
        output.parent.mkdir(parents=True, exist_ok=True)
        output.write_text(raw, encoding="utf-8")
    else:
        sys.stdout.write(raw)


if __name__ == "__main__":
    main()
