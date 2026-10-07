#!/usr/bin/env python3
"""Read-only census of scene-reachable DH2 serialized vertex remap tables."""

from __future__ import annotations

import argparse
import collections
import hashlib
import json
import struct
import zipfile
from pathlib import Path


MAX_TABLE_ITEMS = 4096


def u32(data: bytes, offset: int) -> int:
    return struct.unpack_from("<I", data, offset)[0]


def file_sha256(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def printable_string(data: bytes, offset: int) -> str | None:
    if offset <= 0 or offset >= len(data):
        return None
    end = data.find(b"\0", offset, min(len(data), offset + 513))
    if end < 0:
        return None
    raw = data[offset:end]
    if not raw or any(value < 0x20 or value > 0x7E for value in raw):
        return None
    return raw.decode("ascii")


def source_sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as source:
        for block in iter(lambda: source.read(1024 * 1024), b""):
            digest.update(block)
    return digest.hexdigest()


def scan(cache_path: Path) -> dict:
    stats: collections.Counter[str] = collections.Counter()
    pair_counts: collections.Counter[tuple[int, int]] = collections.Counter()
    seen_subrecords: set[tuple[str, int]] = set()
    examples: dict[tuple[int, int], dict] = {}

    with zipfile.ZipFile(cache_path) as archive:
        members = [
            name
            for name in archive.namelist()
            if name.lower().endswith(".bdae") and "/files/data/" in name.lower()
        ]
        stats["bdae_members"] = len(members)

        for member in members:
            data = archive.read(member)
            stats["bdae_images_read"] += 1
            if (
                len(data) < 60
                or data[:4] != b"BRES"
                or u32(data, 8) != 60
                or u32(data, 12) != len(data)
            ):
                stats["invalid_bres_headers"] += 1
                continue
            stats["valid_bres_headers"] += 1

            fixup_count = u32(data, 16)
            fixup_offset = u32(data, 24)
            root_offset = u32(data, 32)
            if (
                fixup_count > len(data) // 4
                or fixup_offset + fixup_count * 4 > len(data)
                or root_offset + 0xA0 > len(data)
            ):
                stats["invalid_bres_tables"] += 1
                continue

            fixups = [u32(data, fixup_offset + 4 * index) for index in range(fixup_count)]
            if any(field + 4 > len(data) for field in fixups):
                stats["invalid_fixup_fields"] += 1
                continue
            fixup_set = set(fixups)
            targets = {field: u32(data, field) for field in fixup_set}

            scene_count = u32(data, root_offset + 0x98)
            scene_pointer_field = root_offset + 0x9C
            if scene_count == 0:
                stats["files_without_visual_scenes"] += 1
                continue
            if scene_count > MAX_TABLE_ITEMS or scene_pointer_field not in fixup_set:
                stats["invalid_scene_table_roots"] += 1
                continue
            scenes = targets[scene_pointer_field]
            if scenes + scene_count * 16 > len(data):
                stats["invalid_scene_table_bounds"] += 1
                continue
            stats["files_with_visual_scenes"] += 1

            image_hash: str | None = None

            def ensure_image_hash() -> str:
                nonlocal image_hash
                if image_hash is None:
                    image_hash = file_sha256(data)
                return image_hash

            for scene_index in range(scene_count):
                scene = scenes + scene_index * 16
                scene_name = None
                if scene + 4 in fixup_set:
                    scene_name = printable_string(data, targets[scene + 4])
                node_count = u32(data, scene + 8)
                node_pointer_field = scene + 12
                if node_count > MAX_TABLE_ITEMS:
                    stats["invalid_node_counts"] += 1
                    continue
                if node_count and node_pointer_field not in fixup_set:
                    stats["unfixed_node_array_pointers"] += 1
                    continue
                nodes = targets.get(node_pointer_field, 0)
                if nodes + node_count * 80 > len(data):
                    stats["invalid_node_array_bounds"] += 1
                    continue
                stats["visual_scene_records"] += 1

                for node_index in range(node_count):
                    node = nodes + node_index * 80
                    reference_count = u32(data, node + 0x40)
                    reference_pointer_field = node + 0x44
                    if reference_count == 0:
                        continue
                    if reference_count > MAX_TABLE_ITEMS:
                        stats["invalid_node_reference_counts"] += 1
                        continue
                    if reference_pointer_field not in fixup_set:
                        stats["unfixed_node_reference_pointers"] += 1
                        continue
                    references = targets[reference_pointer_field]
                    if references + reference_count * 8 > len(data):
                        stats["invalid_node_reference_bounds"] += 1
                        continue

                    for reference_index in range(reference_count):
                        reference = references + reference_index * 8
                        # constructNode dispatches type 3 to constructGeometry.
                        if u32(data, reference) != 3 or reference + 4 not in fixup_set:
                            continue
                        instance_geometry = targets[reference + 4]
                        if instance_geometry + 0x14 > len(data):
                            stats["invalid_instance_geometry_bounds"] += 1
                            continue

                        geometry_id = None
                        material_id = None
                        if instance_geometry in fixup_set:
                            geometry_id = printable_string(data, targets[instance_geometry])
                        if instance_geometry + 4 in fixup_set:
                            material_id = printable_string(data, targets[instance_geometry + 4])
                        # constructGeometry uses +0 when non-null, otherwise +4.
                        if u32(data, instance_geometry) and geometry_id is None:
                            stats["invalid_instance_geometry_strings"] += 1
                            continue
                        if u32(data, instance_geometry + 4) and material_id is None:
                            stats["invalid_instance_material_strings"] += 1
                            continue

                        material_count = u32(data, instance_geometry + 0x0C)
                        material_pointer_field = instance_geometry + 0x10
                        if material_count == 0:
                            stats["geometry_instances_without_material_records"] += 1
                            continue
                        if (
                            material_count > MAX_TABLE_ITEMS
                            or material_pointer_field not in fixup_set
                        ):
                            stats["invalid_instance_material_arrays"] += 1
                            continue
                        material_records = targets[material_pointer_field]
                        if material_records + material_count * 60 > len(data):
                            stats["invalid_instance_material_bounds"] += 1
                            continue
                        stats["scene_geometry_instances"] += 1

                        for material_index in range(material_count):
                            material = material_records + material_index * 60
                            for descriptor_offset in (0x1C, 0x24):
                                technique_count = u32(data, material + descriptor_offset)
                                table_pointer_field = material + descriptor_offset + 4
                                if technique_count == 0:
                                    continue
                                if (
                                    technique_count > MAX_TABLE_ITEMS
                                    or table_pointer_field not in fixup_set
                                ):
                                    stats["invalid_profile_map_descriptors"] += 1
                                    continue
                                table = targets[table_pointer_field]
                                if table + technique_count * 12 > len(data):
                                    stats["invalid_profile_map_bounds"] += 1
                                    continue
                                stats["profile_map_descriptors"] += 1

                                for technique_index in range(technique_count):
                                    technique_row = table + technique_index * 12
                                    if technique_row not in fixup_set:
                                        stats["unfixed_technique_strings"] += 1
                                        continue
                                    technique = printable_string(data, targets[technique_row])
                                    subrecord_count = u32(data, technique_row + 4)
                                    subtable_pointer_field = technique_row + 8
                                    if technique is None or subrecord_count > MAX_TABLE_ITEMS:
                                        stats["invalid_technique_rows"] += 1
                                        continue
                                    if subrecord_count and subtable_pointer_field not in fixup_set:
                                        stats["unfixed_subrecord_tables"] += 1
                                        continue
                                    subtable = targets.get(subtable_pointer_field, 0)
                                    if subtable + subrecord_count * 12 > len(data):
                                        stats["invalid_subrecord_table_bounds"] += 1
                                        continue
                                    stats["technique_rows"] += 1

                                    for subrecord_index in range(subrecord_count):
                                        subrecord = subtable + subrecord_index * 12
                                        pair_count = u32(data, subrecord + 4)
                                        pair_pointer_field = subrecord + 8
                                        if pair_count and pair_pointer_field not in fixup_set:
                                            stats["unfixed_pair_arrays"] += 1
                                            continue
                                        pair_data = targets.get(pair_pointer_field, 0)
                                        byte_count = pair_count * 2
                                        if pair_count > len(data) // 2 or pair_data + byte_count > len(data):
                                            stats["invalid_pair_array_bounds"] += 1
                                            continue
                                        raw_pairs = data[pair_data : pair_data + byte_count]
                                        pair_values = [
                                            (raw_pairs[index], raw_pairs[index + 1])
                                            for index in range(0, byte_count, 2)
                                        ]
                                        invalid_values = [
                                            pair
                                            for pair in pair_values
                                            if pair[0] > 29 or pair[1] > 29
                                        ]
                                        if invalid_values:
                                            stats["pair_arrays_with_code_above_29"] += 1
                                            continue

                                        # Count serialized subrecords once even if a scene
                                        # references a shared geometry more than once.
                                        unique_key = (member, subrecord)
                                        if unique_key in seen_subrecords:
                                            continue
                                        seen_subrecords.add(unique_key)
                                        stats["serialized_map_subrecords"] += 1
                                        stats["serialized_pairs"] += pair_count
                                        for pair in pair_values:
                                            pair_counts[pair] += 1
                                            if pair not in examples:
                                                examples[pair] = {
                                                    "member": member,
                                                    "file_sha256": ensure_image_hash(),
                                                    "root_offset": f"0x{root_offset:x}",
                                                    "visual_scene_offset": f"0x{scene:x}",
                                                    "visual_scene_name": scene_name,
                                                    "node_offset": f"0x{node:x}",
                                                    "node_reference_offset": f"0x{reference:x}",
                                                    "instance_geometry_offset": f"0x{instance_geometry:x}",
                                                    "geometry_id": geometry_id,
                                                    "material_id": material_id,
                                                    "instance_material_offset": f"0x{material:x}",
                                                    "profile_descriptor_offset": f"0x{descriptor_offset:x}",
                                                    "technique_row_offset": f"0x{technique_row:x}",
                                                    "technique": technique,
                                                    "subrecord_offset": f"0x{subrecord:x}",
                                                    "subrecord_word0_uninterpreted": f"0x{u32(data, subrecord):08x}",
                                                    "pair_count": pair_count,
                                                    "pair_data_offset": f"0x{pair_data:x}",
                                                    "pair_bytes_hex": raw_pairs.hex(" "),
                                                }

    destination_counts = collections.Counter()
    source_counts = collections.Counter()
    for (destination, source), count in pair_counts.items():
        destination_counts[str(destination)] += count
        source_counts[str(source)] += count
    codes_9_to_16 = {
        str(code): {
            "destination_occurrences": destination_counts[str(code)],
            "source_occurrences": source_counts[str(code)],
        }
        for code in range(9, 17)
    }

    return {
        "schema": "dh2-scene-reachable-vertex-remap-census-v1",
        "method": (
            "Follow BRES root visual-scene table (root+0x98/+0x9c), scene node arrays "
            "(scene+0x08/+0x0c, stride 80), node typed-reference arrays "
            "(node+0x40/+0x44, stride 8), type-3 SInstanceGeometry references, "
            "per-buffer SInstanceMaterial arrays (instance geometry +0x0c/+0x10, stride 60), "
            "both runtime-selected profile descriptors (+0x1c/+0x24), technique rows "
            "(stride 12), then per-technique 12-byte map subrecords. The two-byte arrays "
            "passed to CVertexAttributeMap::set are counted as (destination, source) pairs."
        ),
        "source_cache_zip": str(cache_path),
        "source_cache_zip_sha256": source_sha256(cache_path),
        "stats": dict(sorted(stats.items())),
        "pair_histogram": [
            {"destination": destination, "source": source, "occurrences": count}
            for (destination, source), count in sorted(pair_counts.items())
        ],
        "codes_9_to_16": codes_9_to_16,
        "sample_for_each_observed_pair": [
            {"destination": destination, "source": source, **examples[(destination, source)]}
            for destination, source in sorted(examples)
        ],
        "interpretation_limit": (
            "This census establishes serialized values and runtime reachability through the "
            "original scene/map call chain. It does not assign semantic names to numeric "
            "attribute codes."
        ),
    }


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--cache", type=Path, required=True, help="Recovered BRES cache ZIP")
    parser.add_argument("--output", type=Path, required=True, help="Output JSON census path")
    args = parser.parse_args()
    result = scan(args.cache)
    args.output.write_text(json.dumps(result, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({"output": str(args.output), "stats": result["stats"], "pairs": result["pair_histogram"], "codes_9_to_16": result["codes_9_to_16"]}, indent=2))


if __name__ == "__main__":
    main()
