#!/usr/bin/env python3
"""Inventory files named .pak without interpreting them as engine PAKs."""

from __future__ import annotations

import hashlib
import json
import struct
import sys
import zipfile
from pathlib import Path


def inventory(root: Path) -> dict:
    files = []
    for path in sorted(root.rglob("*.pak"), key=lambda item: item.as_posix().casefold()):
        data = path.read_bytes()
        item = {
            "path": path.relative_to(root).as_posix(),
            "size_bytes": len(data),
            "sha256": hashlib.sha256(data).hexdigest(),
            "first_16_bytes_hex": data[:16].hex(" "),
            "first_4_bytes_hex": data[:4].hex(),
            "zip_valid": zipfile.is_zipfile(path),
        }
        if len(data) >= 12:
            header_word_4, header_word_8 = struct.unpack_from("<II", data, 4)
            item["engine_pak_header_interpretation_if_registered"] = {
                "prefix_gate_passes": data[0] == ord("P") or data[1] == ord("A"),
                "index_offset_from_plus_4": header_word_4,
                "record_count_from_plus_8_shift_right_6": header_word_8 >> 6,
            }
        if item["zip_valid"]:
            with zipfile.ZipFile(path) as archive:
                item["zip_entry_count"] = len(archive.infolist())
                item["zip_crc_failure"] = archive.testzip()
        files.append(item)
    return {
        "schema_version": 1,
        "scope": "Files whose names end in .pak under the supplied recovered-cache root. Extension does not establish engine PAK format.",
        "root_scope": "Recovered game-cache files directory supplied to the scanner at runtime.",
        "file_count": len(files),
        "files": files,
    }


def main() -> int:
    if len(sys.argv) != 3:
        print("usage: census_pak_assets.py <recovered-cache-root> <output.json>", file=sys.stderr)
        return 2
    root = Path(sys.argv[1]).resolve()
    output = Path(sys.argv[2]).resolve()
    if not root.is_dir():
        raise SystemExit(f"cache root does not exist: {root}")
    doc = inventory(root)
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(doc, indent=2) + "\n", encoding="utf-8")
    print(f"pak_named_files={doc['file_count']}")
    for item in doc["files"]:
        print(f"{item['path']}: {item['size_bytes']} bytes; sha256={item['sha256']}; zip={item['zip_valid']}")
        if "engine_pak_header_interpretation_if_registered" in item:
            interpretation = item["engine_pak_header_interpretation_if_registered"]
            print(f"  engine reader would derive offset={interpretation['index_offset_from_plus_4']} count={interpretation['record_count_from_plus_8_shift_right_6']}")
    print(f"manifest={output}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
