#!/usr/bin/env python3
"""Verify controller records in individually recoverable BRES cache entries.

The cache archive can be a truncated ZIP prefix. This reader follows the
manifest's already recovered local-header extents and accepts a .bdae only
when its decompressed size, CRC-32, and SHA-256 all match that manifest. It
does not follow pointer values or assign meanings to controller fields other
than the dispatch word established by the native assembly.
"""
from __future__ import annotations

import argparse
import collections
import hashlib
import json
from pathlib import Path
import struct
import zlib


def unpack_u32(data: bytes, offset: int) -> int:
    if offset < 0 or offset + 4 > len(data):
        raise ValueError(f"word outside BRES image at 0x{offset:x}")
    return struct.unpack_from("<I", data, offset)[0]


def read_entry(archive, archive_size: int, row: dict) -> bytes:
    start = row["data_offset"]
    compressed_size = row["compressed_size"]
    end = start + compressed_size
    if start < 0 or end > archive_size:
        raise ValueError(f"compressed entry outside archive: {row['path']}")
    archive.seek(start)
    compressed = archive.read(compressed_size)
    method = row["compression_method"]
    if method == 0:
        data = compressed
    elif method == 8:
        data = zlib.decompress(compressed, -15)
    else:
        raise ValueError(f"unsupported ZIP method {method}: {row['path']}")

    if len(data) != row["size"]:
        raise ValueError(f"decompressed size mismatch: {row['path']}")
    if f"{zlib.crc32(data) & 0xffffffff:08x}" != row["crc32"].lower():
        raise ValueError(f"CRC-32 mismatch: {row['path']}")
    if hashlib.sha256(data).hexdigest() != row["sha256"].lower():
        raise ValueError(f"SHA-256 mismatch: {row['path']}")
    return data


def inspect_bres(data: bytes, path: str, digest: str) -> dict:
    if len(data) < 60 or data[:4] != b"BRES":
        raise ValueError(f"invalid BRES header: {path}")
    if data[4:6] != b"\xfe\xff":
        raise ValueError(f"unexpected BRES byte-order marker: {path}")

    file_size = unpack_u32(data, 12)
    fixup_count = unpack_u32(data, 16)
    fixup_offset = unpack_u32(data, 24)
    root_offset = unpack_u32(data, 32)
    bulk_offset = unpack_u32(data, 40)
    bulk_size = unpack_u32(data, 44)
    bulk_blocks = unpack_u32(data, 48)
    if file_size != len(data):
        raise ValueError(f"BRES length mismatch: {path}")
    if fixup_offset + fixup_count * 4 > len(data):
        raise ValueError(f"fixup table outside BRES image: {path}")
    if root_offset + 0x78 > len(data):
        raise ValueError(f"Collada root outside BRES image: {path}")
    if bulk_offset > len(data) or bulk_size > len(data) - bulk_offset:
        raise ValueError(f"bulk span outside BRES image: {path}")

    fixup_fields = {
        unpack_u32(data, fixup_offset + index * 4)
        for index in range(fixup_count)
    }
    controller_count = unpack_u32(data, root_offset + 0x70)
    controller_offset = unpack_u32(data, root_offset + 0x74)
    controller_end = controller_offset + controller_count * 12
    if controller_end > len(data):
        raise ValueError(f"controller table outside BRES image: {path}")

    records = []
    for index in range(controller_count):
        record_offset = controller_offset + index * 12
        dispatch = unpack_u32(data, record_offset)
        records.append({
            "index": index,
            "record_offset": record_offset,
            "dispatch_word": dispatch,
            "raw_record_hex": data[record_offset:record_offset + 12].hex(),
            "word_plus_4_is_fixup_field": record_offset + 4 in fixup_fields,
            "word_plus_8_is_fixup_field": record_offset + 8 in fixup_fields,
        })

    return {
        "path": path,
        "size_bytes": len(data),
        "sha256": digest,
        "fixup_count": fixup_count,
        "root_offset": root_offset,
        "bulk_offset": bulk_offset,
        "bulk_size": bulk_size,
        "bulk_blocks": bulk_blocks,
        "controller_count": controller_count,
        "controller_table_offset": controller_offset,
        "controllers": records,
    }


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--manifest", required=True, type=Path,
                        help="recovered cache-manifest.json")
    parser.add_argument("--archive", required=True, type=Path,
                        help="assembled cache ZIP or recoverable ZIP prefix")
    parser.add_argument("--output", type=Path,
                        help="optional path for the verified JSON census")
    args = parser.parse_args()

    manifest_bytes = args.manifest.read_bytes()
    manifest = json.loads(manifest_bytes)
    archive_size = args.archive.stat().st_size
    counts = collections.Counter()
    dispatch_counts = collections.Counter()
    pointer_field_counts = collections.Counter()
    controller_assets = []
    verified_assets = 0
    errors = []

    rows = [row for row in manifest.get("entries", [])
            if row.get("kind") == "file"
            and row.get("path", "").lower().endswith(".bdae")]
    with args.archive.open("rb") as archive:
        for row in rows:
            if not row.get("verified"):
                errors.append(f"manifest marks entry unverified: {row['path']}")
                continue
            try:
                data = read_entry(archive, archive_size, row)
                item = inspect_bres(data, row["path"], row["sha256"])
            except (OSError, ValueError, zlib.error) as error:
                errors.append(f"{row['path']}: {error}")
                continue

            verified_assets += 1
            if item["controller_count"]:
                counts["assets_with_controllers"] += 1
                for controller in item["controllers"]:
                    dispatch_counts[str(controller["dispatch_word"])] += 1
                    pointer_field_counts[
                        "word_plus_4_is_fixup_field"
                        if controller["word_plus_4_is_fixup_field"]
                        else "word_plus_4_not_fixup_field"
                    ] += 1
                    pointer_field_counts[
                        "word_plus_8_is_fixup_field"
                        if controller["word_plus_8_is_fixup_field"]
                        else "word_plus_8_not_fixup_field"
                    ] += 1
                controller_assets.append(item)
            else:
                counts["assets_without_controllers"] += 1

    result = {
        "schema": "dh2-bres-controller-census/v1",
        "source": {
            "manifest_path": str(args.manifest),
            "manifest_sha256": hashlib.sha256(manifest_bytes).hexdigest(),
            "archive_path": str(args.archive),
            "archive_bytes": archive_size,
            "archive_sha256_from_manifest": manifest.get("archive", {}).get("sha256"),
            "archive_complete": manifest.get("archive_complete"),
            "manifest_bdae_entries": len(rows),
        },
        "verified_bdae_assets": verified_assets,
        "assets": dict(counts),
        "controller_records_by_dispatch_word": dict(dispatch_counts),
        "controller_pointer_field_status": dict(pointer_field_counts),
        "errors": errors,
        "controller_assets": controller_assets,
    }
    encoded = json.dumps(result, indent=2, sort_keys=True) + "\n"
    if args.output:
        args.output.parent.mkdir(parents=True, exist_ok=True)
        args.output.write_text(encoded, encoding="utf-8")
    print(json.dumps({
        "verified_bdae_assets": verified_assets,
        "assets": dict(counts),
        "controller_records_by_dispatch_word": dict(dispatch_counts),
        "controller_pointer_field_status": dict(pointer_field_counts),
        "errors": len(errors),
        "output": str(args.output.resolve()) if args.output else None,
    }, sort_keys=True))
    return 1 if errors else 0


if __name__ == "__main__":
    raise SystemExit(main())
