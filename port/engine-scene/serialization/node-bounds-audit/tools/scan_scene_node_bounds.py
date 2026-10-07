#!/usr/bin/env python3
"""Verify cache-backed extents for nodes reachable through the selected BRES scene path.

This mirrors only the recovered root-scene -> named visual-scene -> SNode child
path. It is a read-only corpus audit, not a general BRES decoder.
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


def scan(assets: Path, manifest_path: Path) -> dict:
    manifest_bytes = manifest_path.read_bytes()
    manifest = json.loads(manifest_bytes)
    entries = {entry["path"]: entry for entry in manifest["entries"]
               if entry.get("kind") == "file"}
    asset_prefix = "com.gameloft.android.GAND.GloftD2SS/files/"
    files = sorted(assets.rglob("*.bdae"))
    errors: Counter[str] = Counter()
    totals: Counter[str] = Counter()
    selector_counts: Counter[int] = Counter()
    records: list[dict] = []

    for path in files:
        data = path.read_bytes()
        size = len(data)
        relative = path.relative_to(assets).as_posix()
        asset_path = asset_prefix + relative
        digest = hashlib.sha256(data).hexdigest()
        manifest_entry = entries.get(asset_path)
        if (manifest_entry is None or manifest_entry.get("verified") is not True
                or manifest_entry.get("size") != size
                or manifest_entry.get("sha256") != digest):
            errors["manifest_mismatch"] += 1
            continue
        totals["manifest_verified_bdaes"] += 1

        if size < 60 or data[:4] != b"BRES" or u32(data, 8) != 60 or u32(data, 12) != size:
            errors["bres_header"] += 1
            continue
        fixup_count = u32(data, 16)
        fixup_offset = u32(data, 24)
        root_offset = u32(data, 32)
        if fixup_offset + fixup_count * 4 > size or root_offset + 192 > size:
            errors["header_tables_out_of_bounds"] += 1
            continue
        fixups = {u32(data, fixup_offset + index * 4)
                  for index in range(fixup_count)}
        file_counts: Counter[str] = Counter()
        file_selectors: Counter[int] = Counter()
        visited: set[int] = set()
        active: set[int] = set()

        def pointer(field: int, label: str) -> int | None:
            if field not in fixups:
                errors[f"unfixed_{label}"] += 1
                return None
            target = u32(data, field)
            if target >= size:
                errors[f"target_oob_{label}"] += 1
                return None
            return target

        visual_count = u32(data, root_offset + 0x98)
        visual_field = root_offset + 0x9C
        visual_base = (pointer(visual_field, "visual_table") if visual_count
                       else u32(data, visual_field))
        scene_count = u32(data, root_offset + 0xB8)
        scene_field = root_offset + 0xBC
        scene_base = (pointer(scene_field, "root_scene_table") if scene_count
                      else u32(data, scene_field))
        if (visual_count > 100000 or scene_count > 100000
                or (visual_count and (visual_base is None
                    or visual_base + visual_count * 16 > size))
                or (scene_count and (scene_base is None
                    or scene_base + scene_count * 8 > size))):
            errors["root_table_span"] += 1
            continue

        visual_names: dict[str | None, list[int]] = {}
        for index in range(visual_count):
            row = visual_base + index * 16
            name_offset = pointer(row, "visual_name")
            if name_offset is not None:
                visual_names.setdefault(c_string(data, name_offset), []).append(row)

        selected: list[tuple[int, str | None]] = []
        for index in range(scene_count):
            row = scene_base + index * 8
            if u32(data, row) != 6:
                continue
            file_counts["type6_scene_references"] += 1
            reference = pointer(row + 4, "scene_reference")
            if reference is None or reference + 8 > size:
                errors["scene_reference_span"] += 1
                continue
            name_offset = pointer(reference + 4, "scene_name")
            requested = (c_string(data, name_offset + 1)
                         if name_offset is not None and name_offset + 1 < size
                         else None)
            matches = visual_names.get(requested, [])
            if not matches:
                errors["unmatched_visual_scene"] += 1
                continue
            # The recovered name lookup returns the first row in table order.
            selected.append((matches[0], requested))
            file_counts["matched_visual_scenes"] += 1

        def array_span(field: int, count: int, stride: int, label: str) -> int | None:
            if count == 0:
                return u32(data, field)
            base = pointer(field, label)
            if count > 100000 or base is None or base + count * stride > size:
                errors[f"{label}_span"] += 1
                return None
            file_counts[f"{label}_arrays"] += 1
            file_counts[f"{label}_elements"] += count
            return base

        def visit_node(node: int, depth: int = 0) -> None:
            if depth > 128:
                errors["node_depth"] += 1
                return
            if node in active:
                errors["node_cycle"] += 1
                return
            if node in visited:
                file_counts["repeated_node_references"] += 1
                return
            if node < 0 or node + 0x50 > size:
                errors["node_record_span"] += 1
                return
            visited.add(node)
            active.add(node)
            file_counts["unique_node_records"] += 1

            attachment_count = u32(data, node + 0x40)
            attachment_base = array_span(node + 0x44, attachment_count, 8,
                                         "attachment")
            if attachment_count and attachment_base is not None:
                for index in range(attachment_count):
                    tag = u32(data, attachment_base + index * 8)
                    file_selectors[tag] += 1

            child_count = u32(data, node + 0x38)
            child_base = array_span(node + 0x3C, child_count, 0x50, "child")
            if child_count and child_base is not None:
                for index in range(child_count):
                    visit_node(child_base + index * 0x50, depth + 1)
            active.remove(node)

        for descriptor, _name in selected:
            node_count = u32(data, descriptor + 8)
            node_base = array_span(descriptor + 12, node_count, 0x50,
                                   "visual_root_node")
            if node_count and node_base is not None:
                for index in range(node_count):
                    visit_node(node_base + index * 0x50)

        for key, value in file_counts.items():
            totals[key] += value
        for tag, value in file_selectors.items():
            selector_counts[tag] += value
        records.append({
            "path": relative,
            "size": size,
            "sha256": digest,
            "selected_visual_scenes": len(selected),
            "unique_node_records": file_counts["unique_node_records"],
            "child_arrays": file_counts["child_arrays"],
            "child_elements": file_counts["child_elements"],
            "attachment_arrays": file_counts["attachment_arrays"],
            "attachment_elements": file_counts["attachment_elements"],
            "repeated_node_references": file_counts["repeated_node_references"],
        })

    return {
        "schema": "dh2-selected-scene-node-bounds-v1",
        "assets_root": str(assets),
        "manifest_path": str(manifest_path),
        "manifest_sha256": hashlib.sha256(manifest_bytes).hexdigest(),
        "bdae_files_found": len(files),
        "bdae_files_manifest_verified": totals["manifest_verified_bdaes"],
        "totals": dict(sorted(totals.items())),
        "attachment_selector_counts": {str(tag): selector_counts[tag]
                                        for tag in sorted(selector_counts)},
        "traversal_errors": dict(sorted(errors.items())),
        "per_asset": records,
        "scope_note": (
            "Checks file-backed spans along the recovered type-6 scene reference and "
            "named visual-scene child path. A 0x50-byte node extent is the stride and "
            "minimum consumed span for this route; this does not establish every SNode "
            "field meaning or an original runtime bounds check."
        ),
    }


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--assets", type=Path, required=True,
                        help="Extracted `files` directory")
    parser.add_argument("--manifest", type=Path, required=True,
                        help="Verified cache-recovery manifest JSON")
    parser.add_argument("--output", type=Path,
                        help="Write JSON here; omit to print to stdout")
    args = parser.parse_args()
    result = scan(args.assets, args.manifest)
    rendered = json.dumps(result, indent=2, ensure_ascii=False) + "\n"
    if args.output:
        args.output.parent.mkdir(parents=True, exist_ok=True)
        args.output.write_text(rendered, encoding="utf-8")
    else:
        print(rendered, end="")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
