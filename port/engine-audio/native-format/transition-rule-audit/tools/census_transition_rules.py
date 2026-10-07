#!/usr/bin/env python3
"""Extract Rule rows from the cached VoxN corpus without assigning field names."""

from __future__ import annotations

import hashlib
import json
import struct
from collections import Counter
from pathlib import Path


CORPUS_ROOT = (
    Path(__file__).resolve().parents[7]
    / "work"
    / "cache-recovery"
    / "extracted"
    / "com.gameloft.android.GAND.GloftD2SS"
    / "files"
    / "data"
    / "sounds"
)
OUTPUT = Path(__file__).resolve().parents[1] / "corpus" / "rule-rows.json"


def u32(data: bytes, offset: int) -> int:
    return struct.unpack_from("<I", data, offset)[0]


def sha256(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def parse_rule_rows(path: Path) -> dict[str, object]:
    data = path.read_bytes()
    if len(data) < 24 or data[:4] != b"VoxN":
        raise ValueError(f"{path.name}: missing observed VoxN header")
    read_size = u32(data, 4)
    audio_base = u32(data, 20)
    chunk_size = audio_base - 16 - read_size
    chunk_start = 24
    chunk_end = chunk_start + chunk_size
    if chunk_size < 0 or chunk_end > len(data):
        raise ValueError(f"{path.name}: parser-derived chunk window is out of bounds")

    rules: list[tuple[int, bytes]] = []
    cursor = chunk_start
    while cursor < chunk_end:
        if cursor + 8 > chunk_end:
            raise ValueError(f"{path.name}: truncated chunk header at 0x{cursor:x}")
        tag = data[cursor : cursor + 4]
        payload_size = u32(data, cursor + 4)
        payload_start = cursor + 8
        payload_end = payload_start + payload_size
        if payload_end > chunk_end:
            raise ValueError(f"{path.name}: chunk {tag!r} exceeds observed chunk window")
        if tag == b"Rule":
            rules.append((payload_start, data[payload_start:payload_end]))
        cursor = payload_end
    if cursor != chunk_end:
        raise ValueError(f"{path.name}: chunk walk did not end at the parser boundary")
    if len(rules) != 1:
        raise ValueError(f"{path.name}: expected one Rule chunk, found {len(rules)}")

    payload_offset, payload = rules[0]
    if len(payload) < 4:
        raise ValueError(f"{path.name}: Rule payload lacks count")
    count = u32(payload, 0)
    if count == 0 or (len(payload) - 4) % count:
        raise ValueError(f"{path.name}: Rule count does not evenly partition records")
    stride = (len(payload) - 4) // count
    if stride != 36:
        raise ValueError(f"{path.name}: expected runtime Rule stride 36, observed {stride}")

    rows = []
    for row_index in range(count):
        relative = 4 + row_index * stride
        raw = payload[relative : relative + stride]
        rows.append(
            {
                "row_index": row_index,
                "file_offset": payload_offset + relative,
                "rule_payload_relative_offset": relative,
                "raw_hex": raw.hex(),
                "u32_words": list(struct.unpack("<9I", raw)),
            }
        )
    return {
        "file_name": path.name,
        "file_size_bytes": len(data),
        "file_sha256": sha256(data),
        "rule_payload_offset": payload_offset,
        "rule_payload_length": len(payload),
        "rule_payload_sha256": sha256(payload),
        "record_count": count,
        "record_stride_bytes": stride,
        "rows": rows,
    }


def main() -> None:
    files = sorted(CORPUS_ROOT.glob("*.vxn"))
    if not files:
        raise SystemExit(f"no .vxn files found in {CORPUS_ROOT}")
    records = [parse_rule_rows(path) for path in files]
    patterns = Counter(tuple(row["u32_words"]) for item in records for row in item["rows"])
    output = {
        "schema": "dh-sc-native-audio-transition-rule-census-v1",
        "corpus_root_as_observed": str(CORPUS_ROOT),
        "files_scanned": len(records),
        "rows_scanned": sum(item["record_count"] for item in records),
        "record_stride_bytes": 36,
        "unique_raw_row_patterns": len(patterns),
        "raw_pattern_counts": [
            {"u32_words": list(words), "count": count}
            for words, count in sorted(patterns.items())
        ],
        "files": records,
        "method": (
            "Read-only parsing of cached VoxN chunk headers. Rule location uses the APK-matched "
            "ParseFile chunk-window formula; each Rule body count and 36-byte row extent is "
            "checked before raw little-endian words are recorded."
        ),
    }
    OUTPUT.parent.mkdir(parents=True, exist_ok=True)
    OUTPUT.write_text(json.dumps(output, indent=2) + "\n", encoding="utf-8")
    print(f"scanned {len(records)} files and {output['rows_scanned']} Rule rows")
    print(f"record stride: 36 bytes; unique raw row patterns: {len(patterns)}")
    print(f"wrote {OUTPUT}")


if __name__ == "__main__":
    main()
