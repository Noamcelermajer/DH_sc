#!/usr/bin/env python3
"""Census BDAE SAnimation channel and sampler array shapes without relocation."""
from __future__ import annotations
import argparse
import hashlib
import json
import struct
from collections import Counter
from pathlib import Path

APK_SHA256 = "32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200"
ELF_SHA256 = "36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80"

def u32(data: bytes, offset: int) -> int:
    return struct.unpack_from("<I", data, offset)[0]

def i32(data: bytes, offset: int) -> int:
    return struct.unpack_from("<i", data, offset)[0]

def bounded(data: bytes, offset: int, size: int, label: str) -> None:
    if offset < 0 or size < 0 or offset > len(data) or size > len(data) - offset:
        raise ValueError(f"{label}: range {offset:#x}+{size:#x} outside {len(data):#x}")

def cstr(data: bytes, offset: int) -> str:
    if offset <= 0 or offset >= len(data):
        raise ValueError(f"string offset {offset:#x} outside image")
    end = data.find(b"\0", offset)
    if end < 0:
        raise ValueError(f"unterminated string at {offset:#x}")
    return data[offset:end].decode("utf-8", errors="replace")

def scan_file(path: Path, root: Path):
    data = path.read_bytes()
    if len(data) < 60 or u32(data, 0) != 0x53455242:
        raise ValueError("not a BRES image")
    if data[4:6] != b"\xfe\xff" or data[7] & 0x80 or u32(data, 8) != 60:
        raise ValueError("unsupported BRES byte order, relocation state, or header size")
    if u32(data, 12) != len(data):
        raise ValueError("BRES declared file size mismatch")
    root_offset = u32(data, 32)
    bounded(data, root_offset, 192, "BRES root")
    count = u32(data, root_offset + 0x24)
    array = u32(data, root_offset + 0x28)
    bounded(data, array, count * 32, "animation library")
    file_hash = hashlib.sha256(data).hexdigest()
    records = []
    for index in range(count):
        offset = array + index * 32
        name = cstr(data, u32(data, offset))
        sampler_count, sampler_array = u32(data, offset + 4), u32(data, offset + 8)
        channel_count, channel_array = u32(data, offset + 12), u32(data, offset + 16)
        bounded(data, sampler_array, sampler_count * 28, "sampler array")
        bounded(data, channel_array, channel_count * 16, "channel array")
        channels = []
        for channel_index in range(channel_count):
            c = channel_array + channel_index * 16
            channels.append({
                "index": channel_index,
                "word0_signed": i32(data, c),
                "target": cstr(data, u32(data, c + 4)),
                "type": u32(data, c + 8),
                "word12": u32(data, c + 12),
            })
        samplers = []
        for sampler_index in range(sampler_count):
            s = sampler_array + sampler_index * 28
            samplers.append({
                "index": sampler_index,
                "interpolation": u32(data, s),
                "time_type": u32(data, s + 4),
                "time_components": u32(data, s + 8),
                "time_entry": u32(data, s + 12),
                "output_type": u32(data, s + 16),
                "output_components": u32(data, s + 20),
                "output_entry": u32(data, s + 24),
            })
        records.append({
            "index": index,
            "name": name,
            "channel_count": channel_count,
            "sampler_count": sampler_count,
            "animator_word": u32(data, offset + 20),
            "channels": channels,
            "samplers": samplers,
        })
    return {
        "path": path.relative_to(root).as_posix(),
        "sha256": file_hash,
        "animation_count": count,
        "records": records,
    }

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("cache_root", type=Path, help="Recovered files/data/3d directory")
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    root = args.cache_root.resolve()
    files = sorted(root.rglob("*.bdae"))
    if not files:
        parser.error("no .bdae files found")
    per_file = []
    errors = []
    pairs = Counter()
    channel_types = Counter()
    channel_word0 = Counter()
    animator_words = Counter()
    multichannel = []
    all_records = 0
    for path in files:
        try:
            item = scan_file(path, root)
            per_file.append({"path": item["path"], "sha256": item["sha256"], "animation_count": item["animation_count"]})
            all_records += item["animation_count"]
            for record in item["records"]:
                n, m = record["channel_count"], record["sampler_count"]
                pairs[f"{n}/{m}"] += 1
                channel_types.update(channel["type"] for channel in record["channels"])
                channel_word0.update(channel["word0_signed"] for channel in record["channels"])
                animator_words.update([record["animator_word"]])
                if n > 1 or m > 1:
                    multichannel.append({"file": item["path"], "file_sha256": item["sha256"], **record})
        except Exception as exc:
            errors.append({"path": path.relative_to(root).as_posix(), "error": str(exc)})
    summary = {
        "schema_version": 1,
        "source": "recovered files/data/3d/**/*.bdae; raw unrelocated BRES image offsets",
        "apk_sha256": APK_SHA256,
        "elf_sha256": ELF_SHA256,
        "files_scanned": len(files),
        "files_with_valid_animation_records": len(per_file),
        "animation_records": all_records,
        "channel_sampler_count_pairs": dict(sorted(pairs.items())),
        "channel_type_counts": {str(k): v for k, v in sorted(channel_types.items())},
        "channel_word0_counts": {str(k): v for k, v in sorted(channel_word0.items())},
        "animation_animator_word_counts": {str(k): v for k, v in sorted(animator_words.items())},
        "multichannel_records": multichannel,
        "file_hashes": per_file,
        "errors": errors,
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(summary, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
    print(json.dumps({
        "files_scanned": summary["files_scanned"],
        "valid_files": summary["files_with_valid_animation_records"],
        "animation_records": summary["animation_records"],
        "channel_sampler_count_pairs": summary["channel_sampler_count_pairs"],
        "multichannel_records": len(multichannel),
        "channel_type_counts": summary["channel_type_counts"],
        "errors": len(errors),
        "output": str(args.output.resolve()),
    }, indent=2))
    if errors:
        raise SystemExit(1)

if __name__ == "__main__":
    main()
