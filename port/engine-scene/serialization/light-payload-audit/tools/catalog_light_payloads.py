#!/usr/bin/env python3
"""Catalog selector-4 lights using only offsets/strides shown by engine code.

This is a read-only BRES corpus probe, not a general scene/resource decoder.
It follows the already documented type-6 scene -> visual scene -> SNode path,
then mirrors the recovered name lookup: SLibrary light count/base at +0x44/+0x48,
0x18-byte light rows, and the attachment's encoded string pointer + 1.
"""

from __future__ import annotations

import argparse
import hashlib
import json
import struct
from collections import Counter
from pathlib import Path


def u32(data: bytes, offset: int) -> int:
    return struct.unpack_from("<I", data, offset)[0]


def c_string(data: bytes, offset: int) -> str | None:
    if offset < 0 or offset >= len(data):
        return None
    end = data.find(b"\0", offset)
    if end < 0:
        return None
    return data[offset:end].decode("ascii", errors="replace")


def hx(value: int | None) -> str | None:
    return None if value is None else f"0x{value:x}"


def catalog(assets: Path) -> dict:
    files = sorted(assets.rglob("*.bdae"))
    errors: Counter[str] = Counter()
    types: Counter[int] = Counter()
    table_types: Counter[int] = Counter()
    totals: Counter[str] = Counter()
    observations: list[dict] = []
    seen_rows: set[tuple[str, int]] = set()
    table_examples: dict[str, dict] = {}
    unmatched_names: Counter[str] = Counter()

    for path in files:
        data = path.read_bytes()
        size = len(data)
        if size < 60 or data[:4] != b"BRES" or u32(data, 8) != 60 or u32(data, 12) != size:
            errors["header"] += 1
            continue
        fixup_count = u32(data, 16)
        fixup_offset = u32(data, 24)
        root = u32(data, 32)
        if fixup_offset + fixup_count * 4 > size or root + 0xC4 > size:
            errors["header_bounds"] += 1
            continue
        fixups = {u32(data, fixup_offset + i * 4) for i in range(fixup_count)}

        def pointer(field: int, label: str) -> int | None:
            if field not in fixups:
                errors[f"unfixed_{label}"] += 1
                return None
            target = u32(data, field)
            if target >= size:
                errors[f"target_outside_file_{label}"] += 1
                return None
            return target

        # The light collection's count, pointer, and 0x18-byte row stride are
        # independently visible in getLight(int) and getLight(char const*).
        light_count = u32(data, root + 0x44)
        light_field = root + 0x48
        light_base = pointer(light_field, "light_table") if light_count else u32(data, light_field)
        if light_count > 100000 or (light_count and (
                light_base is None or light_base + light_count * 0x18 > size)):
            errors["light_table_span"] += 1
            continue
        totals["files_with_light_table"] += int(light_count > 0)

        scene_count = u32(data, root + 0xB8)
        scene_field = root + 0xBC
        scene_base = pointer(scene_field, "scene_table") if scene_count else u32(data, scene_field)
        visual_count = u32(data, root + 0x98)
        visual_field = root + 0x9C
        visual_base = pointer(visual_field, "visual_table") if visual_count else u32(data, visual_field)
        if scene_count > 100000 or visual_count > 100000 or (
                scene_count and (scene_base is None or scene_base + scene_count * 8 > size)) or (
                visual_count and (visual_base is None or visual_base + visual_count * 16 > size)):
            errors["scene_table_span"] += 1
            continue

        visuals: dict[str | None, list[int]] = {}
        for i in range(visual_count):
            row = visual_base + i * 16
            name_at = pointer(row, "visual_name")
            if name_at is not None:
                visuals.setdefault(c_string(data, name_at), []).append(row)

        # getLight(char const*) compares the first word of each 0x18-byte row.
        # Build first-match lookup in table order, matching that routine.
        name_index: dict[bytes, int] = {}
        if light_base is not None:
            for i in range(light_count):
                row = light_base + i * 0x18
                name_at = pointer(row, "light_name")
                type_value = u32(data, row + 8)
                table_types[type_value] += 1
                if name_at is not None:
                    end = data.find(b"\0", name_at)
                    if end >= 0:
                        name_index.setdefault(data[name_at:end], i)
                        if str(type_value) not in table_examples:
                            example = {
                                "asset_path": path.relative_to(assets).as_posix(),
                                "asset_size": size,
                                "asset_sha256": hashlib.sha256(data).hexdigest(),
                                "row_offset": hx(row),
                                "row_stride_bytes": 0x18,
                                "row_words": [hx(u32(data, row + k)) for k in (0, 4, 8, 12, 16, 20)],
                                "name": c_string(data, name_at),
                                "name_pointer_is_fixup": row in fixups,
                                "type_word": type_value,
                                "four_bytes_at_plus_0x0c": list(data[row + 12:row + 16]),
                                "word_at_plus_0x10": hx(u32(data, row + 16)),
                                "pointer_field_at_plus_0x14_is_fixup": row + 20 in fixups,
                                "target_at_plus_0x14": hx(u32(data, row + 20)),
                            }
                            if type_value in (1, 3) and u32(data, row + 20) and u32(data, row + 20) + 20 <= size:
                                target = u32(data, row + 20)
                                example["five_words_at_target_plus_0x14"] = [
                                    hx(u32(data, target + j)) for j in (0, 4, 8, 12, 16)
                                ]
                            table_examples[str(type_value)] = example

        selected: list[tuple[int, dict]] = []
        for i in range(scene_count):
            selector = scene_base + i * 8
            if u32(data, selector) != 6:
                continue
            ref = pointer(selector + 4, "scene_reference")
            if ref is None or ref + 8 > size:
                errors["scene_reference_span"] += 1
                continue
            name_at = pointer(ref + 4, "scene_name")
            if name_at is None:
                continue
            requested = c_string(data, name_at + 1)
            candidate_rows = visuals.get(requested, [])
            if not candidate_rows:
                errors["unmatched_visual_scene"] += 1
                continue
            descriptor = candidate_rows[0]
            selected.append((descriptor, {
                "requested_visual_scene": requested,
                "visual_scene_descriptor": hx(descriptor),
            }))

        visited: set[int] = set()

        def walk_node(node: int, scene: dict, depth: int = 0) -> None:
            if depth > 128 or node in visited or node + 0x50 > size:
                errors["node_cycle_depth_or_span"] += 1
                return
            visited.add(node)
            totals["active_nodes"] += 1
            count = u32(data, node + 0x40)
            field = node + 0x44
            base = pointer(field, "attachment_array") if count else u32(data, field)
            if count > 10000 or (count and (base is None or base + count * 8 > size)):
                errors["attachment_span"] += 1
                count = 0
            for j in range(count):
                record = base + j * 8
                if u32(data, record) != 4:
                    continue
                totals["selector_4_attachments"] += 1
                payload_field = record + 4
                instance_at = pointer(payload_field, "light_attachment_instance")
                if instance_at is None or instance_at + 8 > size:
                    errors["light_attachment_name_span"] += 1
                    continue
                name_field = instance_at + 4
                encoded_at = pointer(name_field, "light_attachment_name")
                if encoded_at is None or encoded_at + 1 >= size:
                    errors["light_attachment_name_span"] += 1
                    continue
                # constructNode selector 4 follows attachment+4 -> instance,
                # loads instance+4, adds one, then calls constructLight(name).
                query_at = encoded_at + 1
                query_end = data.find(b"\0", query_at)
                query_raw = data[query_at:query_end] if query_end >= 0 else b""
                index = name_index.get(query_raw)
                obs = {
                    "asset_path": path.relative_to(assets).as_posix(),
                    "asset_size": size,
                    "asset_sha256": hashlib.sha256(data).hexdigest(),
                    "scene": scene,
                    "node_offset": hx(node),
                    "attachment_record_offset": hx(record),
                    "selector": 4,
                    "attachment_name_pointer_field": hx(payload_field),
                    "attachment_name_pointer_is_fixup": payload_field in fixups,
                    "attachment_instance_offset": hx(instance_at),
                    "attachment_instance_name_pointer_field": hx(name_field),
                    "attachment_instance_name_pointer_is_fixup": name_field in fixups,
                    "encoded_name_offset": hx(encoded_at),
                    "query_name_offset_after_engine_plus_one": hx(query_at),
                    "query_name": query_raw.decode("ascii", errors="replace"),
                    "light_table": {
                        "count_offset": hx(root + 0x44),
                        "count": light_count,
                        "pointer_field_offset": hx(light_field),
                        "pointer_field_is_fixup": light_field in fixups,
                        "base_offset": hx(light_base),
                        "row_stride_bytes": 0x18,
                    },
                    "matched_index": index,
                }
                if index is None or light_base is None:
                    totals["unmatched_light_names"] += 1
                    unmatched_names[query_raw.decode("ascii", errors="replace")] += 1
                    observations.append(obs)
                    continue
                row = light_base + index * 0x18
                obs["light_row_offset"] = hx(row)
                obs["light_row_words"] = [hx(u32(data, row + k)) for k in (0, 4, 8, 12, 16, 20)]
                obs["light_name_pointer_field_is_fixup"] = row in fixups
                obs["light_name_offset"] = hx(u32(data, row))
                obs["light_name"] = c_string(data, u32(data, row))
                obs["type_word_offset"] = hx(row + 8)
                obs["type_word"] = u32(data, row + 8)
                obs["four_bytes_at_plus_0x0c"] = list(data[row + 12:row + 16])
                obs["word_at_plus_0x10"] = hx(u32(data, row + 16))
                obs["pointer_field_at_plus_0x14_is_fixup"] = row + 20 in fixups
                obs["target_at_plus_0x14"] = hx(u32(data, row + 20))
                types[u32(data, row + 8)] += 1
                key = (obs["asset_sha256"], row)
                if key not in seen_rows:
                    seen_rows.add(key)
                    totals["unique_matched_light_rows"] += 1
                totals["matched_light_attachments"] += 1
                observations.append(obs)

            child_count = u32(data, node + 0x38)
            child_field = node + 0x3C
            child_base = pointer(child_field, "child_array") if child_count else u32(data, child_field)
            if child_count > 100000 or (child_count and (
                    child_base is None or child_base + child_count * 0x50 > size)):
                errors["child_span"] += 1
                return
            if child_base is not None:
                for k in range(child_count):
                    walk_node(child_base + k * 0x50, scene, depth + 1)

        for descriptor, scene in selected:
            node_count = u32(data, descriptor + 8)
            field = descriptor + 12
            base = pointer(field, "scene_node_array") if node_count else u32(data, field)
            if node_count > 100000 or (node_count and (
                    base is None or base + node_count * 0x50 > size)):
                errors["scene_node_span"] += 1
                continue
            if base is not None:
                for i in range(node_count):
                    walk_node(base + i * 0x50, scene)

    return {
        "schema": "dh2-active-scene-light-payload-catalog-v1",
        "assets_root": str(assets),
        "bdae_files_scanned": len(files),
        "selector_4_attachments": totals["selector_4_attachments"],
        "matched_light_attachments": totals["matched_light_attachments"],
        "unmatched_light_names": totals["unmatched_light_names"],
        "unique_matched_light_rows": totals["unique_matched_light_rows"],
        "matched_type_word_counts_by_attachment": {str(k): types[k] for k in sorted(types)},
        "all_light_table_type_word_counts": {str(k): table_types[k] for k in sorted(table_types)},
        "one_example_per_type": table_examples,
        "unmatched_attachment_name_counts": dict(sorted(unmatched_names.items())),
        "observations": observations,
        "traversal_errors": dict(sorted(errors.items())),
        "scope_note": (
            "Read-only corpus correlation following the active selected scene path. "
            "Root light count/base, 0x18-byte lookup stride, SNode attachment shape, "
            "and the +1 name adjustment are taken from APK-matched engine routines. "
            "The 0x18-byte rows are runtime lookup strides, not a proof of bounded "
            "file-level schema or complete record validity."
        ),
    }


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--assets", type=Path, required=True)
    parser.add_argument("--output", type=Path)
    args = parser.parse_args()
    result = catalog(args.assets)
    rendered = json.dumps(result, indent=2, ensure_ascii=False) + "\n"
    if args.output:
        args.output.parent.mkdir(parents=True, exist_ok=True)
        args.output.write_text(rendered, encoding="utf-8")
    else:
        print(rendered, end="")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
