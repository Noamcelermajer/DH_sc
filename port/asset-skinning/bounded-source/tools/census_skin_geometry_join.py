#!/usr/bin/env python3
"""Join bounded controller skin streams to same-file geometry IDs and counts.

Inputs are the recovered cache ZIP prefix and its verified manifest.  Each
selected BDAE is decompressed and checked against its manifest size, CRC-32,
and SHA-256 before fields are followed.  This records exact string-key joins;
it does not infer runtime selection or execute the APK.
"""
from __future__ import annotations

import argparse
import collections
import hashlib
import json
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


def read_string(data: bytes, offset: int) -> str:
    if offset <= 0 or offset >= len(data):
        raise ValueError(f"string target outside BRES image: 0x{offset:x}")
    end = data.find(b"\0", offset)
    if end < 0:
        raise ValueError(f"unterminated string at 0x{offset:x}")
    return data[offset:end].decode("utf-8", errors="strict")


def inspect(data: bytes, path: str, digest: str) -> tuple[list[dict], list[dict]]:
    if len(data) < 60 or data[:4] != b"BRES" or data[4:6] != b"\xfe\xff":
        raise ValueError(f"invalid BRES header: {path}")
    if u32(data, 12) != len(data):
        raise ValueError(f"BRES declared length mismatch: {path}")
    fixup_count = u32(data, 16)
    fixup_offset = u32(data, 24)
    root = u32(data, 32)
    if fixup_offset + fixup_count * 4 > len(data) or root + 0x78 > len(data):
        raise ValueError(f"fixup table or root outside BRES image: {path}")
    fixups = {u32(data, fixup_offset + 4 * i) for i in range(fixup_count)}
    root_stream_mode_word = u32(data, root + 0x64)
    technique_byte = int(root_stream_mode_word > 0)

    geometry_count = u32(data, root + 0x68)
    geometry_table = u32(data, root + 0x6c)
    if geometry_table + geometry_count * 16 > len(data):
        raise ValueError(f"geometry table outside BRES image: {path}")
    geometries = []
    for index in range(geometry_count):
        record = geometry_table + index * 16
        key_field = record
        key_offset = u32(data, key_field)
        geometry_type = u32(data, record + 8)
        mesh = u32(data, record + 12)
        if mesh + 16 > len(data):
            raise ValueError(f"SMesh header outside BRES image: {path} geometry {index}")
        geometries.append({
            "index": index,
            "record_offset": record,
            "key_field_offset": key_field,
            "key_field_is_fixup": key_field in fixups,
            "key_offset": key_offset,
            "id": read_string(data, key_offset),
            "type": geometry_type,
            "mesh_offset": mesh,
            "vertex_count": u32(data, mesh + 4),
            "primitive_buffer_count": u32(data, mesh + 12),
        })

    controller_count = u32(data, root + 0x70)
    controller_table = u32(data, root + 0x74)
    if controller_table + controller_count * 12 > len(data):
        raise ValueError(f"controller table outside BRES image: {path}")
    result = []
    for index in range(controller_count):
        controller = controller_table + index * 12
        dispatch = u32(data, controller)
        if dispatch != 0:
            continue
        skin = u32(data, controller + 8)
        if skin + 0x99 > len(data):
            raise ValueError(f"skin object outside BRES image: {path} controller {index}")
        key_field = skin + 0x70
        key_offset = u32(data, key_field)
        raw_key = read_string(data, key_offset)
        # The constructor passes this pointer to name lookup after adding one
        # byte.  Record the raw and normalized keys rather than naming the #.
        lookup_key = raw_key[1:] if raw_key else ""
        matched = [g for g in geometries if g["id"] == lookup_key]
        influences = data[skin + 0x98]
        stride = 4 * (influences + 1)
        result.append({
            "path": path,
            "asset_sha256": digest,
            "controller_index": index,
            "controller_offset": controller,
            "skin_object_offset": skin,
            "geometry_key_field_offset": key_field,
            "geometry_key_field_is_fixup": key_field in fixups,
            "geometry_key_target_offset": key_offset,
            "geometry_key_raw": raw_key,
            "geometry_key_after_native_plus_one": lookup_key,
            "geometry_matches": matched,
            "geometry_match_count": len(matched),
            "type0_geometry_matches": [g for g in matched if g["type"] == 0],
            "type0_geometry_match_count": sum(g["type"] == 0 for g in matched),
            "influence_count": influences,
            "consumer_stride_bytes": stride,
            "bres_root_word_0x64": root_stream_mode_word,
            "technique_byte_from_ctor_root_gate": technique_byte,
        })
    return result, geometries


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--manifest", required=True, type=Path)
    parser.add_argument("--archive", required=True, type=Path)
    parser.add_argument("--bounds-census", required=True, type=Path,
                        help="verified source extents from census_skin_source_bounds.py")
    parser.add_argument("--output", required=True, type=Path)
    args = parser.parse_args()
    manifest_bytes = args.manifest.read_bytes()
    manifest = json.loads(manifest_bytes)
    rows = [row for row in manifest.get("entries", [])
            if row.get("kind") == "file"
            and row.get("path", "").lower().endswith(".bdae")]
    archive_size = args.archive.stat().st_size
    errors: list[str] = []
    verified_assets = 0
    records: list[dict] = []
    geometry_records: list[dict] = []
    with args.archive.open("rb") as archive:
        for row in rows:
            if not row.get("verified"):
                errors.append(f"manifest marks BDAE unverified: {row['path']}")
                continue
            try:
                data = read_entry(archive, archive_size, row)
                current, current_geometries = inspect(data, row["path"], row["sha256"])
                records.extend(current)
                for geometry in current_geometries:
                    geometry_records.append({
                        "path": row["path"], "asset_sha256": row["sha256"], **geometry
                    })
            except (OSError, ValueError, UnicodeError, zlib.error, struct.error) as error:
                errors.append(f"{row['path']}: {error}")
                continue
            verified_assets += 1

    geometry_by_id: dict[str, list[dict]] = collections.defaultdict(list)
    for geometry in geometry_records:
        geometry_by_id[geometry["id"]].append(geometry)
    bounds = json.loads(args.bounds_census.read_text(encoding="utf-8"))
    bound_by_key = {
        (row["path"], row["controller_index"], row["asset_sha256"]): row
        for row in bounds.get("controller_records", [])
        if row.get("dispatch_word") == 0
    }
    missing_bounds = 0
    for record in records:
        global_matches = geometry_by_id.get(record["geometry_key_after_native_plus_one"], [])
        record["global_geometry_candidate_count"] = len(global_matches)
        record["global_type0_vertex_counts"] = sorted({
            g["vertex_count"] for g in global_matches if g["type"] == 0
        })
        record["global_geometry_candidates"] = [
            {k: g[k] for k in ("path", "asset_sha256", "index", "type",
                               "vertex_count", "primitive_buffer_count")}
            for g in global_matches
        ]
        key = (record["path"], record["controller_index"], record["asset_sha256"])
        bounded = bound_by_key.get(key)
        if bounded is None:
            missing_bounds += 1
            record["bounded_source_join"] = None
            continue
        source_region = bounded.get("raw_data_target_region")
        if source_region == "bulk_payload_row":
            source_mode = "direct_bulk_bytes"
            expected_flag = 0
        elif source_region == "main_source_section":
            source_mode = "on_demand_descriptor"
            expected_flag = "nonzero"
        else:
            source_mode = "unclassified"
            expected_flag = None
        record["bounded_source_join"] = {
            "raw_data_target_region": source_region,
            "source_mode_from_bres_shape": source_mode,
            "technique_byte_required_by_source_shape": expected_flag,
            "source_offset_candidate": bounded.get("source_extent_source_offset_candidate"),
            "source_size_candidate": bounded.get("source_extent_bytes_candidate"),
            "source_vertex_blocks_candidate": bounded.get("source_extent_vertex_count_candidate"),
            "source_payload_row_index": bounded.get("payload_row_index"),
            "on_demand_offset_candidate": bounded.get("on_demand_offset_candidate"),
            "on_demand_size_candidate": bounded.get("on_demand_size_candidate"),
            "on_demand_vertex_count_candidate": bounded.get("on_demand_vertex_count_candidate"),
            "technique_flag_observed_at_runtime": None,
            "technique_flag_matches_bres_root_gate": record["technique_byte_from_ctor_root_gate"] == expected_flag
            if isinstance(expected_flag, int) else record["technique_byte_from_ctor_root_gate"] == 1,
        }
        for geometry in record["type0_geometry_matches"]:
            requested = geometry["vertex_count"] * record["consumer_stride_bytes"]
            geometry["skin_request_bytes_if_stream_count_equals_smesh_count"] = requested
            geometry["source_extent_covers_that_request_candidate"] = (
                bounded.get("source_extent_bytes_candidate", -1) >= requested
            )

    joined = [r for r in records if r["geometry_match_count"] == 1]
    unique_type0 = [r for r in records if r["type0_geometry_match_count"] == 1]
    all_geometry = [g for r in records for g in r["geometry_matches"]]
    local_type0_counts = collections.Counter(
        str(g["vertex_count"]) for r in records for g in r["type0_geometry_matches"]
    )
    route_counts = collections.Counter(
        r.get("bounded_source_join", {}).get("source_mode_from_bres_shape", "missing_bounds")
        if r.get("bounded_source_join") else "missing_bounds"
        for r in records
    )
    local_complete = [r for r in records if r["type0_geometry_match_count"] == 1
                      and r.get("bounded_source_join")]
    local_exact_extent_count = sum(
        r["bounded_source_join"]["source_vertex_blocks_candidate"]
        == r["type0_geometry_matches"][0]["vertex_count"]
        for r in local_complete
    )
    local_cover_request = sum(
        r["type0_geometry_matches"][0]["source_extent_covers_that_request_candidate"]
        for r in local_complete
    )
    shape_flag_match = sum(
        (r.get("bounded_source_join") or {}).get("technique_flag_matches_bres_root_gate") is True
        for r in records
    )
    external = [r for r in records if r["type0_geometry_match_count"] == 0]
    external_with_one_count = [r for r in external if len(r["global_type0_vertex_counts"]) == 1]
    external_with_any_count = [r for r in external if r["global_type0_vertex_counts"]]
    external_cover_unique_count = sum(
        (r.get("bounded_source_join") or {}).get("source_size_candidate", -1)
        >= r["global_type0_vertex_counts"][0] * r["consumer_stride_bytes"]
        for r in external_with_one_count
    )
    summary = {
        "verified_bdae_assets": verified_assets,
        "manifest_bdae_entries": len(rows),
        "skin_controller_records": len(records),
        "skin_key_fields_marked_fixup": sum(r["geometry_key_field_is_fixup"] for r in records),
        "controller_keys_start_with_hash": sum(r["geometry_key_raw"].startswith("#") for r in records),
        "exactly_one_same_file_geometry_match": len(joined),
        "exactly_one_type0_geometry_match": len(unique_type0),
        "no_geometry_match": sum(r["geometry_match_count"] == 0 for r in records),
        "ambiguous_geometry_matches": sum(r["geometry_match_count"] > 1 for r in records),
        "geometry_type_match_counts": dict(collections.Counter(str(g["type"]) for g in all_geometry)),
        "global_geometry_candidate_distribution": dict(collections.Counter(
            str(r["global_geometry_candidate_count"]) for r in records)),
        "same_file_type0_vertex_count_distribution": dict(local_type0_counts),
        "source_modes_from_bres_shape": dict(route_counts),
        "source_bounds_records_missing_join": missing_bounds,
        "same_file_unique_type0_joins_with_bounded_source": len(local_complete),
        "same_file_unique_type0_source_extent_count_equals_smesh_vertex_count": local_exact_extent_count,
        "same_file_unique_type0_source_covers_vertex_count_times_consumer_stride": local_cover_request,
        "source_shape_matches_root_technique_gate": shape_flag_match,
        "source_shape_mismatches_root_technique_gate": len(records) - shape_flag_match,
        "unmatched_same_file_with_global_type0_candidates": len(external_with_any_count),
        "unmatched_same_file_with_one_distinct_global_type0_vertex_count": len(external_with_one_count),
        "unmatched_same_file_with_ambiguous_global_type0_vertex_counts": sum(
            len(r["global_type0_vertex_counts"]) > 1 for r in external),
        "unmatched_same_file_with_global_candidate_source_extent_cover": external_cover_unique_count,
        "note": "SMesh counts are same-file joins. The inferred request uses SMesh.vertex_count * (4*(influence_count+1)); it is a candidate CVertexStreams count until runtime stream construction proves equality.",
        "errors": errors,
    }
    result = {
        "schema": "dh2-skin-controller-geometry-join-census/v1",
        "source": {
            "manifest_path": str(args.manifest),
            "manifest_sha256": hashlib.sha256(manifest_bytes).hexdigest(),
            "archive_path": str(args.archive),
            "archive_bytes": archive_size,
            "archive_sha256": hashlib.sha256(args.archive.read_bytes()).hexdigest(),
            "archive_complete": manifest.get("archive_complete"),
            "bounds_census_path": str(args.bounds_census),
            "bounds_census_sha256": hashlib.sha256(args.bounds_census.read_bytes()).hexdigest(),
        },
        "summary": summary,
        "controller_records": records,
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(result, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    print(json.dumps(summary, sort_keys=True))
    return 1 if errors else 0


if __name__ == "__main__":
    raise SystemExit(main())
