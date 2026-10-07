#!/usr/bin/env python3
"""Read-only BRES census for quaternion-angle tracks in a recovered BDAE tree.

This script reports serialized observations only. It does not attempt to infer
the runtime channel-to-sampler binding, decode engine defaults, or patch files.
"""
from __future__ import annotations

import argparse
import hashlib
import json
import math
import struct
from collections import Counter, defaultdict
from pathlib import Path


WIDTHS = (1, 1, 2, 2, 4, 4, 4)
FMT = ("b", "B", "h", "H", "i", "I", "f")


class BadBres(ValueError):
    pass


def u32(b: bytes, o: int) -> int:
    if o < 0 or o + 4 > len(b):
        raise BadBres(f"u32 out of bounds at 0x{o:x}")
    return struct.unpack_from("<I", b, o)[0]


def i32(b: bytes, o: int) -> int:
    if o < 0 or o + 4 > len(b):
        raise BadBres(f"i32 out of bounds at 0x{o:x}")
    return struct.unpack_from("<i", b, o)[0]


def span(b: bytes, o: int, n: int) -> bytes:
    if o < 0 or n < 0 or o > len(b) or n > len(b) - o:
        raise BadBres(f"range out of bounds: 0x{o:x}+0x{n:x}")
    return b[o:o+n]


def text(b: bytes, o: int) -> str | None:
    if not o:
        return None
    span(b, o, 1)
    end = b.find(b"\0", o)
    if end < 0:
        raise BadBres(f"unterminated string at 0x{o:x}")
    return b[o:end].decode("utf-8", "replace")


def number(b: bytes, o: int, t: int) -> int | float:
    if t > 6:
        raise BadBres(f"unsupported scalar type {t}")
    return struct.unpack_from("<" + FMT[t], span(b, o, WIDTHS[t]))[0]


def vector_values(b: bytes, target: int, count: int, typ: int, comps: int):
    if typ > 6 or comps < 1 or comps > 16:
        raise BadBres(f"unsupported vector type/components {typ}/{comps}")
    raw = span(b, target, count * comps * WIDTHS[typ])
    flat = struct.unpack("<" + FMT[typ] * (count * comps), raw)
    return [tuple(flat[i*comps:(i+1)*comps]) for i in range(count)]


def parse_file(path: Path) -> dict:
    b = path.read_bytes()
    if len(b) < 60 or b[:4] != b"BRES":
        raise BadBres("missing BRES header")
    if b[4:6] != b"\xfe\xff" or u32(b, 8) != 60 or u32(b, 12) != len(b):
        raise BadBres("unexpected byte order/header/image length")
    if b[7] & 0x80 or u32(b, 20) != 0:
        raise BadBres("relocated or external-base image")
    root = u32(b, 32)
    span(b, root, 192)
    fixups, table = u32(b, 16), u32(b, 24)
    if table != 60 or u32(b, 28) != 60 + fixups * 4:
        raise BadBres("unexpected fixup table placement")
    span(b, table, fixups * 4)
    for i in range(fixups):
        field = u32(b, table + i * 4)
        span(b, field, 4)
        if field % 4 or table <= field < table + fixups * 4:
            raise BadBres(f"invalid fixup field at 0x{field:x}")
        if u32(b, field) > len(b):
            raise BadBres(f"invalid fixup target in field 0x{field:x}")

    anim_count, anim_off = u32(b, root + 0x24), u32(b, root + 0x28)
    seg_desc = u32(b, root + 0x30)
    span(b, anim_off, anim_count * 32)
    if seg_desc:
        span(b, seg_desc, 8)
        seg_count, seg_off = u32(b, seg_desc), u32(b, seg_desc + 4)
        span(b, seg_off, seg_count * 24)
    else:
        # The original accessor returns zero segments for a null library ptr.
        seg_count, seg_off = 0, 0

    result = {
        "path": str(path),
        "sha256": hashlib.sha256(b).hexdigest(),
        "bytes": len(b),
        "animation_records": anim_count,
        "segment_count": seg_count,
        "interesting": [],
        "animation_record_count": 0,
        "segments_scanned": 0,
    }
    for ai in range(anim_count):
        ar = anim_off + ai * 32
        name = text(b, u32(b, ar))
        sampler_count, sampler_off = u32(b, ar + 4), u32(b, ar + 8)
        channel_count, channel_off = u32(b, ar + 12), u32(b, ar + 16)
        default_off, offset_scale_off = u32(b, ar + 24), u32(b, ar + 28)
        span(b, sampler_off, sampler_count * 28)
        span(b, channel_off, channel_count * 16)
        channels = []
        for ci in range(channel_count):
            cr = channel_off + ci * 16
            channels.append({
                "index": ci,
                "type": u32(b, cr + 8),
                "target": text(b, u32(b, cr + 4)),
                "word0_signed": i32(b, cr),
                "hash": u32(b, cr + 12),
            })
        special_channels = [c for c in channels if c["type"] in (6, 7, 8, 9)]
        if not special_channels:
            continue
        result["animation_record_count"] += 1
        samplers = []
        for si in range(sampler_count):
            sr = sampler_off + si * 28
            samplers.append({
                "index": si,
                "interpolation": u32(b, sr),
                "time_type": u32(b, sr + 4),
                "time_components": u32(b, sr + 8),
                "time_entry": u32(b, sr + 12),
                "value_type": u32(b, sr + 16),
                "value_components": u32(b, sr + 20),
                "value_entry": u32(b, sr + 24),
            })

        default = None
        if default_off:
            span(b, default_off, 12)
            default = {
                "record_words": [u32(b, default_off + k) for k in (0, 4, 8)],
                "value_offset": u32(b, default_off + 8),
            }
            # Store both a short raw prefix and common four-float interpretation
            # as inspection aids. The latter remains type-agnostic evidence.
            d = default["value_offset"]
            default["prefix_hex"] = span(b, d, min(32, len(b) - d)).hex()
            if d + 16 <= len(b):
                default["first_four_f32"] = list(struct.unpack_from("<4f", b, d))
        scale = None
        if offset_scale_off:
            span(b, offset_scale_off, 12)
            st, so, oo = (u32(b, offset_scale_off + k) for k in (0, 4, 8))
            scale = {"type": st, "scales_offset": so, "offsets_offset": oo}
            if st in (0, 1, 2) and so and oo:
                width = WIDTHS[st]
                scale["scales_prefix_hex"] = span(b, so, min(24, len(b) - so)).hex()
                scale["offsets_prefix_hex"] = span(b, oo, min(24, len(b) - oo)).hex()
                # Scale/offset readers observed in the APK index element zero.
                scale["scale0_as_f32"] = struct.unpack_from("<f", span(b, so, 4))[0]
                scale["offset0_as_f32"] = struct.unpack_from("<f", span(b, oo, 4))[0]
                scale["key_width_bytes"] = width

        segments = []
        for gi in range(seg_count):
            gr = seg_off + gi * 24
            state = u32(b, gr + 8)
            if state > 1:
                continue
            data = u32(b, gr + (12 if state == 0 else 20))
            if state == 0:
                size = u32(b, gr + 16) & ~3
                span(b, data, size)
            else:
                if u32(b, gr + 16):
                    raise BadBres(f"segment {gi} is already inner-relocated")
                span(b, data, 4)
                size = len(b) - data
            entry_count = u32(b, data)
            if 4 + entry_count * 8 > size:
                raise BadBres(f"segment {gi} animation data table exceeds block")
            result["segments_scanned"] += 1
            entry_meta = []
            for si, sm in enumerate(samplers):
                if sm["time_entry"] >= entry_count or sm["value_entry"] >= entry_count:
                    raise BadBres(f"sampler {si} entry index outside segment table")
                vector_meta = []
                for role, ei, typ, comps in (
                    ("time", sm["time_entry"], sm["time_type"], sm["time_components"]),
                    ("value", sm["value_entry"], sm["value_type"], sm["value_components"]),
                ):
                    slot = data + 8 + ei * 8
                    count = u32(b, slot - 4)
                    target = slot + i32(b, slot)
                    values = vector_values(b, target, count, typ, comps)
                    summary = {
                        "role": role, "entry": ei, "count": count,
                        "type": typ, "components": comps,
                        "first_values": [list(x) for x in values[:3]],
                        "last_values": [list(x) for x in values[-3:]],
                        "target_offset": target,
                    }
                    scalars = [x for row in values for x in row]
                    if scalars and all(not isinstance(x, float) or math.isfinite(x) for x in scalars):
                        summary["minimum"] = min(scalars)
                        summary["maximum"] = max(scalars)
                        if role == "value" and typ == 6 and comps == 1:
                            summary["zero_count"] = sum(x == 0.0 for x in scalars)
                    vector_meta.append(summary)
                entry_meta.append({"sampler": si, "vectors": vector_meta})
            segments.append({"index": gi, "state": state, "entries": entry_meta})

        result["interesting"].append({
            "animation_index": ai,
            "name": name,
            "channels": channels,
            "channel_sampler_count_relation": [channel_count, sampler_count],
            "samplers": samplers,
            "default": default,
            "offset_scale": scale,
            "segments": segments,
        })
    return result


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("corpus", type=Path)
    ap.add_argument("--out", type=Path, required=True)
    args = ap.parse_args()
    paths = sorted(args.corpus.rglob("*.bdae"))
    errors = []
    files = []
    census = {
        "schema": "dh2-quaternion-angle-payload-census-v1",
        "source_scope": "all .bdae files recursively under corpus argument",
        "input_file_count": len(paths),
        "valid_file_count": 0,
        "errors": errors,
        "files_with_channel_6_9": 0,
        "animation_records_with_channel_6_9": 0,
        "channel_counts": Counter(),
        "scalar_discriminator_counts": Counter(),
        "sampler_layouts_by_channel_type": defaultdict(Counter),
        "default_presence_by_channel_type": defaultdict(Counter),
        "offset_presence_by_channel_type": defaultdict(Counter),
        "channel_sampler_count_relations": Counter(),
        "records": files,
    }
    for path in paths:
        try:
            report = parse_file(path)
        except (BadBres, OSError, struct.error) as exc:
            errors.append({"path": str(path), "error": str(exc)})
            continue
        census["valid_file_count"] += 1
        if report["interesting"]:
            census["files_with_channel_6_9"] += 1
        census["animation_records_with_channel_6_9"] += report["animation_record_count"]
        for anim in report["interesting"]:
            census["channel_sampler_count_relations"][tuple(anim["channel_sampler_count_relation"])] += 1
            st = anim["offset_scale"]["type"] if anim["offset_scale"] is not None else 2
            census["scalar_discriminator_counts"][st] += 1
            for channel in anim["channels"]:
                typ = channel["type"]
                if typ in (6, 7, 8, 9):
                    census["channel_counts"][typ] += 1
                    census["default_presence_by_channel_type"][typ]["present" if anim["default"] else "absent"] += 1
                    census["offset_presence_by_channel_type"][typ]["present" if anim["offset_scale"] else "absent"] += 1
                    for sampler in anim["samplers"]:
                        for seg in anim["segments"]:
                            vectors = seg["entries"][sampler["index"]]["vectors"]
                            val = next(x for x in vectors if x["role"] == "value")
                            layout = (sampler["value_type"], sampler["value_components"], val["count"])
                            census["sampler_layouts_by_channel_type"][typ][layout] += 1
        if report["interesting"]:
            report["path"] = str(path.relative_to(args.corpus))
            files.append(report)
    # Convert counters to JSON-stable dictionaries while retaining raw details.
    census["channel_counts"] = {str(k): v for k, v in sorted(census["channel_counts"].items())}
    census["scalar_discriminator_counts"] = {str(k): v for k, v in sorted(census["scalar_discriminator_counts"].items())}
    census["channel_sampler_count_relations"] = {f"{a}/{b}": v for (a, b), v in sorted(census["channel_sampler_count_relations"].items())}
    census["sampler_layouts_by_channel_type"] = {
        str(k): {f"type={t},components={c},keys={n}": v for (t, c, n), v in sorted(counts.items())}
        for k, counts in sorted(census["sampler_layouts_by_channel_type"].items())
    }
    for field in ("default_presence_by_channel_type", "offset_presence_by_channel_type"):
        census[field] = {str(k): dict(counts) for k, counts in sorted(census[field].items())}
    args.out.parent.mkdir(parents=True, exist_ok=True)
    args.out.write_text(json.dumps(census, indent=2, sort_keys=True, allow_nan=False) + "\n", encoding="utf-8")
    print(json.dumps({k: census[k] for k in (
        "input_file_count", "valid_file_count", "files_with_channel_6_9",
        "animation_records_with_channel_6_9", "channel_counts",
        "scalar_discriminator_counts", "default_presence_by_channel_type",
        "offset_presence_by_channel_type", "channel_sampler_count_relations", "errors")}, indent=2))


if __name__ == "__main__":
    main()
