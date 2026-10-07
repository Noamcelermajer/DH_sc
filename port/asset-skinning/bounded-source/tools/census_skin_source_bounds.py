#!/usr/bin/env python3
"""Verify BRES-backed SSkin pointers and report source-row bounds.

The scanner uses only the recovered cache manifest and cache ZIP prefix. It
verifies every selected BDAE's decompressed size, CRC-32, and SHA-256 before
following the two controller/skin pointer fixups. It does not execute the APK,
modify source assets, or infer a serialized C++ object layout beyond offsets
that the native code directly reads.
"""
from __future__ import annotations

import argparse
import collections
import hashlib
import json
import math
from pathlib import Path
import struct
import zlib


def u32(data: bytes, offset: int) -> int:
    if offset < 0 or offset + 4 > len(data):
        raise ValueError(f"u32 outside BRES image at 0x{offset:x}")
    return struct.unpack_from("<I", data, offset)[0]


def read_entry(archive, archive_size: int, row: dict) -> bytes:
    start = row["data_offset"]
    end = start + row["compressed_size"]
    if start < 0 or end > archive_size:
        raise ValueError(f"compressed entry outside archive: {row['path']}")
    archive.seek(start)
    packed = archive.read(row["compressed_size"])
    if row["compression_method"] == 0:
        data = packed
    elif row["compression_method"] == 8:
        data = zlib.decompress(packed, -15)
    else:
        raise ValueError(f"unsupported ZIP method {row['compression_method']}")
    if len(data) != row["size"]:
        raise ValueError(f"decompressed-size mismatch: {row['path']}")
    if f"{zlib.crc32(data) & 0xffffffff:08x}" != row["crc32"].lower():
        raise ValueError(f"CRC-32 mismatch: {row['path']}")
    if hashlib.sha256(data).hexdigest() != row["sha256"].lower():
        raise ValueError(f"SHA-256 mismatch: {row['path']}")
    return data


def inspect(data: bytes, path: str, digest: str) -> tuple[list[dict], dict]:
    if len(data) < 60 or data[:4] != b"BRES" or data[4:6] != b"\xfe\xff":
        raise ValueError(f"invalid BRES header: {path}")
    if u32(data, 12) != len(data):
        raise ValueError(f"BRES declared length mismatch: {path}")

    fixup_count = u32(data, 16)
    fixup_offset = u32(data, 24)
    root = u32(data, 32)
    bulk_start = u32(data, 40)
    bulk_size = u32(data, 44)
    block_count = u32(data, 48)
    trailer_size = u32(data, 56)
    main_source_end = len(data) - bulk_size - trailer_size
    trailer_start = len(data) - trailer_size
    if fixup_offset + fixup_count * 4 > len(data):
        raise ValueError(f"fixup table outside file: {path}")
    if bulk_start > len(data) or bulk_size > len(data) - bulk_start:
        raise ValueError(f"bulk extent outside file: {path}")
    if block_count and 8 * block_count > bulk_size:
        raise ValueError(f"block table exceeds bulk extent: {path}")

    fixups = {u32(data, fixup_offset + 4 * i) for i in range(fixup_count)}
    rows = []
    for i in range(block_count):
        row = bulk_start + 8 * i
        rows.append((u32(data, row), u32(data, row + 4)))
    payload_sum = sum(size for size, _ in rows)
    row_table_size = 8 * block_count
    row_layout_valid = (
        payload_sum == bulk_size - row_table_size
        and all(rows[i][1] + rows[i][0] == rows[i + 1][1]
                for i in range(len(rows) - 1))
    )
    if rows:
        payload_start = rows[0][1]
        payload_end = rows[-1][1] + rows[-1][0]
    else:
        payload_start = payload_end = 0

    controller_count = u32(data, root + 0x70)
    controller_table = u32(data, root + 0x74)
    if controller_table + controller_count * 12 > len(data):
        raise ValueError(f"controller table outside file: {path}")

    geometry_count = u32(data, root + 0x68)
    geometry_table = u32(data, root + 0x6c)
    if geometry_table + geometry_count * 16 > len(data):
        raise ValueError(f"geometry table outside file: {path}")
    type0_geometry_vertex_counts = []
    for geometry_index in range(geometry_count):
        geometry = geometry_table + geometry_index * 16
        if u32(data, geometry + 8) != 0:
            continue
        mesh = u32(data, geometry + 12)
        if mesh + 8 <= len(data):
            type0_geometry_vertex_counts.append(u32(data, mesh + 4))

    records = []
    for index in range(controller_count):
        controller = controller_table + index * 12
        dispatch = u32(data, controller)
        skin = u32(data, controller + 8)
        item = {
            "path": path,
            "asset_sha256": digest,
            "asset_size": len(data),
            "controller_index": index,
            "controller_offset": controller,
            "dispatch_word": dispatch,
            "skin_pointer_field_is_fixup": controller + 8 in fixups,
            "skin_object_offset": skin,
        }
        if dispatch != 0:
            records.append(item)
            continue
        if skin + 0x99 > len(data):
            item["error"] = "skin object +0x98 byte outside file"
            records.append(item)
            continue
        skin_data_field = skin + 0x80
        target = u32(data, skin_data_field)
        influences = data[skin + 0x98]
        stride = 4 * (influences + 1)
        host_index = next((i for i, (size, offset) in enumerate(rows)
                           if offset <= target < offset + size), None)
        if host_index is not None:
            target_region = "bulk_payload_row"
        elif target < main_source_end:
            target_region = "main_source_section"
        elif bulk_start <= target < bulk_start + 8 * block_count:
            target_region = "bulk_row_table"
        elif bulk_start <= target < bulk_start + bulk_size:
            target_region = "other_bulk_bytes"
        elif main_source_end <= target < bulk_start:
            target_region = "source_gap_before_bulk"
        elif bulk_start + bulk_size <= target < len(data) - trailer_size:
            target_region = "source_bytes_after_bulk"
        elif target < len(data):
            target_region = "trailer"
        else:
            target_region = "outside_file"
        available = None
        delta = None
        if host_index is not None:
            size, offset = rows[host_index]
            delta = target - offset
            available = size - delta
        aggregate_available = None
        if rows and payload_start <= target < payload_end:
            aggregate_available = payload_end - target
        sample = b""
        if target < len(data):
            sample = data[target:min(target + min(stride, 32), len(data))]
        target_words = ([u32(data, target + 4 * i)
                         for i in range(min(4, (len(data) - target) // 4))]
                        if target < len(data) else [])
        descriptor_offset = target_words[1] if target_region == "main_source_section" and len(target_words) > 1 else None
        descriptor_size = target_words[2] if target_region == "main_source_section" and len(target_words) > 2 else None
        descriptor_cached_pointer = target_words[3] if target_region == "main_source_section" and len(target_words) > 3 else None
        descriptor_end = (descriptor_offset + descriptor_size
                          if descriptor_offset is not None and descriptor_size is not None else None)
        descriptor_source_row = next((i for i, (size, offset) in enumerate(rows)
                                      if descriptor_offset is not None
                                      and offset <= descriptor_offset
                                      and descriptor_end is not None
                                      and descriptor_end <= offset + size), None)
        descriptor_source_region = None
        if descriptor_offset is not None:
            source_row = next((i for i, (size, offset) in enumerate(rows)
                               if offset <= descriptor_offset < offset + size), None)
            if source_row is not None:
                descriptor_source_region = "bulk_payload_row"
            elif descriptor_offset < main_source_end:
                descriptor_source_region = "main_source_section"
            elif bulk_start <= descriptor_offset < bulk_start + 8 * block_count:
                descriptor_source_region = "bulk_row_table"
            elif bulk_start <= descriptor_offset < bulk_start + bulk_size:
                descriptor_source_region = "other_bulk_bytes"
            elif descriptor_offset >= trailer_start and descriptor_offset < len(data):
                descriptor_source_region = "declared_trailer"
            elif descriptor_offset < len(data):
                descriptor_source_region = "source_bytes_after_bulk"
            else:
                descriptor_source_region = "outside_file"
        descriptor_sample = b""
        if (descriptor_offset is not None and descriptor_size is not None
                and descriptor_offset < len(data)):
            descriptor_sample = data[descriptor_offset:min(
                descriptor_offset + min(stride, 32),
                descriptor_end if descriptor_end is not None else len(data),
                len(data))]
        extent_count = (available // stride
                        if available is not None and available % stride == 0
                        else descriptor_size // stride
                        if descriptor_size is not None and descriptor_size % stride == 0
                        else None)
        source_start = (target if available is not None
                        else descriptor_offset if descriptor_size is not None
                        else None)
        source_size = (available if available is not None
                       else descriptor_size if descriptor_size is not None
                       else None)
        profile = None
        source_fixup_count = None
        if (source_start is not None and source_size is not None
                and source_start + source_size <= len(data)
                and source_size % stride == 0):
            source = data[source_start:source_start + source_size]
            weight_values = []
            zero_weight_blocks = 0
            near_unit_sum_blocks = 0
            nonzero_padding_blocks = 0
            for vertex in range(extent_count or 0):
                base = vertex * stride
                weights = [struct.unpack_from("<f", source, base + 4 + 4 * i)[0]
                           for i in range(influences)]
                weight_values.extend(weights)
                if all(value == 0.0 for value in weights):
                    zero_weight_blocks += 1
                if abs(sum(weights) - 1.0) <= 0.02:
                    near_unit_sum_blocks += 1
                if any(source[base + i] != 0 for i in range(influences, 4)):
                    nonzero_padding_blocks += 1
            source_fixup_count = sum(source_start <= field < source_start + source_size
                                     for field in fixups)
            profile = {
                "vertex_blocks": extent_count,
                "weight_value_count": len(weight_values),
                "all_weights_finite": all(math.isfinite(value) for value in weight_values),
                "weight_values_outside_zero_to_one": sum(
                    not (0.0 <= value <= 1.0) for value in weight_values),
                "minimum_weight": min(weight_values) if weight_values else None,
                "maximum_weight": max(weight_values) if weight_values else None,
                "all_zero_weight_vertex_blocks": zero_weight_blocks,
                "weight_sums_within_0_02_of_one": near_unit_sum_blocks,
                "vertex_blocks_with_nonzero_unused_index_bytes": nonzero_padding_blocks,
            }
        item.update({
            "skin_data_pointer_field_offset": skin_data_field,
            "skin_data_pointer_field_is_fixup": skin_data_field in fixups,
            "raw_data_target_offset": target,
            "raw_data_target_region": target_region,
            "raw_target_words_u32": target_words,
            "on_demand_offset_candidate": descriptor_offset,
            "on_demand_size_candidate": descriptor_size,
            "on_demand_cached_pointer_word": descriptor_cached_pointer,
            "on_demand_range_end_candidate": descriptor_end,
            "on_demand_range_inside_asset_candidate": (
                descriptor_end <= len(data) if descriptor_end is not None else None),
            "on_demand_range_inside_declared_trailer_candidate": (
                descriptor_offset >= trailer_start and descriptor_end <= len(data)
                if descriptor_offset is not None and descriptor_end is not None else None),
            "on_demand_range_inside_one_payload_row_candidate": descriptor_source_row is not None,
            "on_demand_source_target_region_candidate": descriptor_source_region,
            "on_demand_source_first_record_sample_hex": descriptor_sample.hex(),
            "on_demand_size_divisible_by_consumer_stride": (
                descriptor_size % stride == 0 if descriptor_size is not None else None),
            "on_demand_vertex_count_candidate": (
                descriptor_size // stride if descriptor_size is not None and descriptor_size % stride == 0 else None),
            "influence_count_byte": influences,
            "consumer_stride_bytes": stride,
            "source_extent_vertex_count_candidate": extent_count,
            "source_extent_source_offset_candidate": source_start,
            "source_extent_bytes_candidate": source_size,
            "source_extent_fixup_fields_inside_count": source_fixup_count,
            "source_extent_consumer_data_profile": profile,
            "source_extent_count_matches_any_type0_geometry_count": (
                extent_count in type0_geometry_vertex_counts if extent_count is not None else None),
            "source_extent_count_matches_four_times_type0_geometry_count": (
                extent_count in [4 * value for value in type0_geometry_vertex_counts]
                if extent_count is not None else None),
            "first_record_sample_hex": sample.hex(),
            "payload_row_index": host_index,
            "payload_row_start": rows[host_index][1] if host_index is not None else None,
            "payload_row_size": rows[host_index][0] if host_index is not None else None,
            "target_delta_in_payload_row": delta,
            "bytes_to_payload_row_end": available,
            "row_tail_divisible_by_consumer_stride": (
                available % stride == 0 if available is not None else None),
            "row_tail_vertex_count_candidate": (
                available // stride if available is not None and available % stride == 0 else None),
            "bytes_to_aggregate_payload_end": aggregate_available,
            "aggregate_tail_divisible_by_consumer_stride": (
                aggregate_available % stride == 0 if aggregate_available is not None else None),
            "aggregate_tail_vertex_count_candidate": (
                aggregate_available // stride if aggregate_available is not None and aggregate_available % stride == 0 else None),
            "block_rows_tile_declared_payload": row_layout_valid,
        })
        records.append(item)

    metadata = {
        "path": path,
        "asset_sha256": digest,
        "asset_size": len(data),
        "fixup_count": fixup_count,
        "bulk_offset": bulk_start,
        "bulk_size": bulk_size,
        "block_count": block_count,
        "trailer_size": trailer_size,
        "block_rows_tile_declared_payload": row_layout_valid,
        "controller_count": controller_count,
        "controller_table_offset": controller_table,
    }
    return records, metadata


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--manifest", required=True, type=Path)
    parser.add_argument("--archive", required=True, type=Path)
    parser.add_argument("--output", required=True, type=Path)
    args = parser.parse_args()

    manifest_bytes = args.manifest.read_bytes()
    manifest = json.loads(manifest_bytes)
    rows = [row for row in manifest.get("entries", [])
            if row.get("kind") == "file"
            and row.get("path", "").lower().endswith(".bdae")]
    errors: list[str] = []
    records: list[dict] = []
    asset_metadata: list[dict] = []
    verified_assets = 0
    archive_size = args.archive.stat().st_size
    with args.archive.open("rb") as archive:
        for row in rows:
            if not row.get("verified"):
                errors.append(f"manifest marks BDAE unverified: {row['path']}")
                continue
            try:
                data = read_entry(archive, archive_size, row)
                current, metadata = inspect(data, row["path"], row["sha256"])
            except (OSError, ValueError, zlib.error, struct.error) as error:
                errors.append(f"{row['path']}: {error}")
                continue
            verified_assets += 1
            records.extend(current)
            asset_metadata.append(metadata)

    skins = [item for item in records if item.get("dispatch_word") == 0
             and "raw_data_target_offset" in item]
    profiles = [item["source_extent_consumer_data_profile"] for item in skins
                if item.get("source_extent_consumer_data_profile") is not None]
    summary = {
        "verified_bdae_assets": verified_assets,
        "manifest_bdae_entries": len(rows),
        "controller_records": len(records),
        "controller_dispatch_words": dict(collections.Counter(
            str(item.get("dispatch_word")) for item in records)),
        "skin_records": len(skins),
        "controller_skin_pointer_fixup_records": sum(
            item.get("skin_pointer_field_is_fixup") is True for item in records),
        "skin_data_pointer_fixup_records": sum(
            item.get("skin_data_pointer_field_is_fixup") is True for item in skins),
        "skin_data_targets_in_payload_rows": sum(
            item.get("payload_row_index") is not None for item in skins),
        "skin_data_target_regions": dict(collections.Counter(
            item.get("raw_data_target_region", "unknown") for item in skins)),
        "skin_data_targets_at_row_start": sum(
            item.get("target_delta_in_payload_row") == 0 for item in skins),
        "on_demand_descriptor_ranges_inside_asset": sum(
            item.get("on_demand_range_inside_asset_candidate") is True for item in skins),
        "on_demand_descriptor_ranges_inside_declared_trailer": sum(
            item.get("on_demand_range_inside_declared_trailer_candidate") is True for item in skins),
        "on_demand_descriptor_sizes_divisible_by_stride": sum(
            item.get("on_demand_size_divisible_by_consumer_stride") is True for item in skins),
        "on_demand_descriptor_cache_word_zero": sum(
            item.get("on_demand_cached_pointer_word") == 0 for item in skins),
        "source_extent_candidate_matches_geometry_count": sum(
            item.get("source_extent_count_matches_any_type0_geometry_count") is True for item in skins),
        "source_extent_candidate_matches_four_times_geometry_count": sum(
            item.get("source_extent_count_matches_four_times_type0_geometry_count") is True for item in skins),
        "source_extent_profiles": len(profiles),
        "source_extent_vertex_blocks": sum(item["vertex_blocks"] for item in profiles),
        "source_extent_weight_values": sum(item["weight_value_count"] for item in profiles),
        "source_extent_nonfinite_weight_records": sum(
            not item["all_weights_finite"] for item in profiles),
        "source_extent_weights_outside_unit_interval": sum(
            item["weight_values_outside_zero_to_one"] for item in profiles),
        "source_extent_all_zero_weight_vertex_blocks": sum(
            item["all_zero_weight_vertex_blocks"] for item in profiles),
        "source_extent_weight_sums_within_0_02_of_one": sum(
            item["weight_sums_within_0_02_of_one"] for item in profiles),
        "source_extent_nonzero_unused_index_bytes": sum(
            item["vertex_blocks_with_nonzero_unused_index_bytes"] for item in profiles),
        "source_extent_fixup_fields_inside_count": sum(
            item.get("source_extent_fixup_fields_inside_count", 0) or 0 for item in skins),
        "influence_count_distribution": dict(collections.Counter(
            str(item["influence_count_byte"]) for item in skins)),
        "stride_distribution": dict(collections.Counter(
            str(item["consumer_stride_bytes"]) for item in skins)),
        "row_tail_divisible_by_stride": sum(
            item.get("row_tail_divisible_by_consumer_stride") is True for item in skins),
        "aggregate_tail_divisible_by_stride": sum(
            item.get("aggregate_tail_divisible_by_consumer_stride") is True for item in skins),
        "row_layout_valid_assets": sum(
            item["block_rows_tile_declared_payload"] for item in asset_metadata),
        "row_layout_asset_count": len(asset_metadata),
        "errors": errors,
    }
    result = {
        "schema": "dh2-bres-skin-source-bound-census/v1",
        "source": {
            "manifest_path": str(args.manifest),
            "manifest_sha256": hashlib.sha256(manifest_bytes).hexdigest(),
            "archive_path": str(args.archive),
            "archive_bytes": archive_size,
            "archive_sha256": hashlib.sha256(args.archive.read_bytes()).hexdigest(),
            "archive_complete": manifest.get("archive_complete"),
            "manifest_archive_sha256": manifest.get("archive", {}).get("sha256"),
        },
        "summary": summary,
        "controller_records": records,
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(result, indent=2, sort_keys=True) + "\n",
                           encoding="utf-8")
    print(json.dumps(summary, sort_keys=True))
    return 1 if errors else 0


if __name__ == "__main__":
    raise SystemExit(main())
