#!/usr/bin/env python3
"""Read-only catalog of active BRES scene attachment selector records.

This follows the recovered root scene -> named visual scene -> SNode child and
attachment paths. It is a corpus evidence tool, not a general BRES decoder.
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


def hex_offset(value: int | None) -> str | None:
    return None if value is None else f"0x{value:x}"


def scan(assets: Path) -> dict:
    files = sorted(assets.rglob("*.bdae"))
    errors: Counter[str] = Counter()
    selector_counts: Counter[int] = Counter()
    totals = Counter()
    selector_13: list[dict] = []

    for path in files:
        data = path.read_bytes()
        size = len(data)
        if size < 60 or data[:4] != b"BRES":
            errors["header"] += 1
            continue
        if u32(data, 8) != 60 or u32(data, 12) != size:
            errors["header_size_or_file_size"] += 1
            continue
        fixup_count = u32(data, 16)
        fixup_offset = u32(data, 24)
        root_offset = u32(data, 32)
        if (fixup_offset + fixup_count * 4 > size
                or root_offset + 192 > size):
            errors["header_bounds"] += 1
            continue
        fixups = {u32(data, fixup_offset + index * 4)
                  for index in range(fixup_count)}

        def pointer(field: int, label: str) -> int | None:
            if field not in fixups:
                errors[f"unfixed_{label}"] += 1
                return None
            target = u32(data, field)
            if target > size:
                errors[f"target_outside_file_{label}"] += 1
                return None
            return target

        visual_count = u32(data, root_offset + 0x98)
        visual_base = (pointer(root_offset + 0x9C, "visual_table")
                       if visual_count else u32(data, root_offset + 0x9C))
        scene_count = u32(data, root_offset + 0xB8)
        scene_base = (pointer(root_offset + 0xBC, "scene_table")
                      if scene_count else u32(data, root_offset + 0xBC))
        if (visual_count > 100000 or scene_count > 100000
                or (visual_count and (visual_base is None
                    or visual_base + visual_count * 16 > size))
                or (scene_count and (scene_base is None
                    or scene_base + scene_count * 8 > size))):
            errors["root_scene_table_span"] += 1
            continue

        totals["files_with_visual_scene_table"] += int(visual_count > 0)
        visual_names: dict[str | None, list[tuple[int, int]]] = {}
        for index in range(visual_count):
            descriptor = visual_base + index * 16
            name_offset = pointer(descriptor, "visual_name")
            if name_offset is None:
                continue
            visual_names.setdefault(c_string(data, name_offset), []).append(
                (descriptor, index))

        selected_scenes: list[tuple[int, int, dict]] = []
        for index in range(scene_count):
            selector = scene_base + index * 8
            if u32(data, selector) != 6:
                continue
            totals["type_6_scene_references"] += 1
            reference = pointer(selector + 4, "scene_reference")
            if reference is None or reference + 8 > size:
                errors["scene_reference_span"] += 1
                continue
            name_field = reference + 4
            name_offset = pointer(name_field, "scene_name")
            requested_name = c_string(data, name_offset + 1) if name_offset is not None else None
            candidates = visual_names.get(requested_name, [])
            if not candidates:
                errors["unmatched_visual_scene_name"] += 1
                continue
            # getVisualScene returns the first matching entry in table order.
            descriptor, visual_index = candidates[0]
            totals["matched_named_visual_scenes"] += 1
            selected_scenes.append((descriptor, visual_index, {
                "root_scene_entry_offset": hex_offset(selector),
                "root_scene_entry_tag": 6,
                "root_scene_reference_offset": hex_offset(reference),
                "root_scene_name_field_offset": hex_offset(name_field),
                "requested_name": requested_name,
                "visual_scene_descriptor_offset": hex_offset(descriptor),
                "visual_scene_name_offset": hex_offset(u32(data, descriptor)),
                "visual_scene_name": c_string(data, u32(data, descriptor)),
            }))

        if selected_scenes:
            totals["files_with_selected_visual_scene"] += 1
        visited_nodes: set[int] = set()

        def visit_node(node: int, scene_context: dict, depth: int = 0) -> None:
            if depth > 128 or node in visited_nodes or node + 0x50 > size:
                errors["node_depth_cycle_or_span"] += 1
                return
            visited_nodes.add(node)
            totals["recursive_nodes"] += 1

            attachment_count = u32(data, node + 0x40)
            attachment_base = (pointer(node + 0x44, "attachment_array")
                               if attachment_count else u32(data, node + 0x44))
            if (attachment_count > 10000
                    or (attachment_count and (attachment_base is None
                        or attachment_base + attachment_count * 8 > size))):
                errors["attachment_span"] += 1
                attachment_count = 0
            totals["attachments"] += attachment_count
            for index in range(attachment_count):
                record = attachment_base + index * 8
                tag = u32(data, record)
                selector_counts[tag] += 1
                if tag != 13:
                    continue
                target = pointer(record + 4, "selector_13_payload")
                observation = {
                    "asset_path": path.relative_to(assets).as_posix(),
                    "asset_size": size,
                    "asset_sha256": hashlib.sha256(data).hexdigest(),
                    "scene": scene_context,
                    "node_offset": hex_offset(node),
                    "node_plus_0x48_raw_word": hex_offset(u32(data, node + 0x48)),
                    "attachment_array_offset": hex_offset(attachment_base),
                    "attachment_record_offset": hex_offset(record),
                    "selector": tag,
                    "payload_pointer_field_offset": hex_offset(record + 4),
                    "payload_pointer_is_fixup": record + 4 in fixups,
                    "payload_offset": hex_offset(target),
                }
                if target is not None and target + 12 <= size:
                    count_a = u32(data, target)
                    array_field = target + 4
                    array_offset = pointer(array_field, "selector_13_array")
                    count_b = u32(data, target + 8)
                    total_entries = count_a + count_b
                    observation["payload_words"] = {
                        "offset_0": count_a,
                        "offset_4_pointer_field": hex_offset(array_field),
                        "offset_4_pointer_is_fixup": array_field in fixups,
                        "offset_4_target": hex_offset(array_offset),
                        "offset_8": count_b,
                        "offset_0_plus_offset_8": total_entries,
                    }
                    if (total_entries > 10000 or array_offset is None
                            or array_offset + total_entries * 16 > size):
                        errors["selector_13_array_span"] += 1
                    else:
                        entries = []
                        for item_index in range(total_entries):
                            item = array_offset + item_index * 16
                            text_field = item + 4
                            text_offset = pointer(text_field, "selector_13_item_string")
                            entries.append({
                                "offset": hex_offset(item),
                                "stride_bytes": 16,
                                "words": [hex_offset(u32(data, item + j))
                                          for j in (0, 4, 8, 12)],
                                "word_1_pointer_field_is_fixup": text_field in fixups,
                                "word_1_string_offset": hex_offset(text_offset),
                                "word_1_string": c_string(data, text_offset),
                            })
                        observation["array_entries"] = entries
                selector_13.append(observation)

            child_count = u32(data, node + 0x38)
            child_base = (pointer(node + 0x3C, "child_array")
                          if child_count else u32(data, node + 0x3C))
            if (child_count > 100000
                    or (child_count and (child_base is None
                        or child_base + child_count * 0x50 > size))):
                errors["child_span"] += 1
                return
            for child_index in range(child_count):
                visit_node(child_base + child_index * 0x50,
                           scene_context, depth + 1)

        for descriptor, visual_index, scene_context in selected_scenes:
            node_count = u32(data, descriptor + 8)
            node_base = (pointer(descriptor + 12, "scene_node_array")
                         if node_count else u32(data, descriptor + 12))
            if (node_count > 100000
                    or (node_count and (node_base is None
                        or node_base + node_count * 0x50 > size))):
                errors["scene_node_span"] += 1
                continue
            for index in range(node_count):
                visit_node(node_base + index * 0x50, scene_context)

    return {
        "schema": "dh2-active-scene-attachment-selector-catalog-v1",
        "assets_root": str(assets),
        "bdae_files_scanned": len(files),
        "files_with_visual_scene_table": totals["files_with_visual_scene_table"],
        "type_6_scene_references": totals["type_6_scene_references"],
        "matched_named_visual_scenes": totals["matched_named_visual_scenes"],
        "files_with_selected_visual_scene": totals["files_with_selected_visual_scene"],
        "recursive_snode_records": totals["recursive_nodes"],
        "attachment_records": totals["attachments"],
        "selector_counts": {str(tag): selector_counts[tag]
                            for tag in sorted(selector_counts)},
        "selectors_5_through_8_present": any(selector_counts[tag]
                                               for tag in range(5, 9)),
        "selector_13_observations": selector_13,
        "traversal_errors": dict(sorted(errors.items())),
        "scope_note": (
            "Read-only traversal of the type-6 root scene selector path and its selected "
            "visual-scene node trees. Counts do not assign names or semantics to selector "
            "values; no complete serialized C++ record layout is claimed."
        ),
    }


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--assets", type=Path, required=True,
                        help="Extracted game files directory containing BDAE files")
    parser.add_argument("--output", type=Path,
                        help="Write JSON here; omit to print to stdout")
    args = parser.parse_args()
    result = scan(args.assets)
    rendered = json.dumps(result, indent=2, ensure_ascii=False) + "\n"
    if args.output:
        args.output.parent.mkdir(parents=True, exist_ok=True)
        args.output.write_text(rendered, encoding="utf-8")
    else:
        print(rendered, end="")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
