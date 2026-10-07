#!/usr/bin/env python3
"""Emit a byte-backed inventory of the cached VoxN corpus.

The parser records raw chunk bodies and conservative structural observations.
It is an evidence collector, not a reimplementation of the APK parser.
"""

from __future__ import annotations

import argparse
import hashlib
import json
import struct
from pathlib import Path


DEFAULT_CORPUS = (
    Path(__file__).resolve().parents[6]
    / "work"
    / "cache-recovery"
    / "extracted"
    / "com.gameloft.android.GAND.GloftD2SS"
    / "files"
    / "data"
    / "sounds"
)
DEFAULT_OUTPUT = Path(__file__).resolve().parents[1] / "corpus" / "assets.json"
MAGIC = b"VoxN"
KNOWN_CORPUS_TAGS = {b"Afmt", b"Segm", b"Rule", b"Plst", b"Stat", b"Trsn", b"Grps", b"Grpe"}


def sha256(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def u16(data: bytes, offset: int) -> int:
    return struct.unpack_from("<H", data, offset)[0]


def u32(data: bytes, offset: int) -> int:
    return struct.unpack_from("<I", data, offset)[0]


def parse_chunk_body(tag: bytes, body: bytes) -> dict[str, object]:
    result: dict[str, object] = {
        "payload_length": len(body),
        "payload_sha256": sha256(body),
        "payload_hex": body.hex(),
    }
    if tag == b"Afmt" and len(body) == 12:
        fmt, channels, sample_rate, block_align, bits_per_sample = struct.unpack("<HHIHH", body)
        result["observed_fields"] = {
            "u16_0": fmt,
            "u16_2": channels,
            "u32_4": sample_rate,
            "u16_8": block_align,
            "u16_10": bits_per_sample,
        }
    elif len(body) >= 4:
        count = u32(body, 0)
        result["leading_u32_count_candidate"] = count
        if count and (len(body) - 4) % count == 0:
            stride = (len(body) - 4) // count
            result["count_stride_observation"] = {
                "count": count,
                "payload_bytes_after_count": len(body) - 4,
                "derived_stride_bytes": stride,
                "divides_evenly": True,
            }
            if tag == b"Segm" and stride == 24:
                rows = []
                for row_index in range(count):
                    row_offset = 4 + row_index * stride
                    words = list(struct.unpack_from("<6I", body, row_offset))
                    rows.append(
                        {
                            "row_index": row_index,
                            "payload_offset": row_offset,
                            "raw_hex": body[row_offset : row_offset + stride].hex(),
                            "u32_words": words,
                            "observed_word_roles": {
                                "word_0": "relative stream offset consumed by decoder",
                                "word_1": "encoded byte length consumed by IMA decode bounds; matches adjacent/file audio boundaries",
                                "word_2": "sample bound consumed by PCM seek",
                                "words_3_to_5": "unknown",
                            },
                        }
                    )
                result["rows"] = rows
            elif len(body) % 4 == 0:
                result["payload_u32_words"] = list(struct.unpack("<" + "I" * (len(body) // 4), body))
    return result


def parse_file(path: Path) -> dict[str, object]:
    data = path.read_bytes()
    if len(data) < 24:
        raise ValueError(f"{path.name}: shorter than the 24-byte observed header window")
    magic = data[:4]
    read_size = u32(data, 4)
    file_size_field = u32(data, 16)
    audio_base = u32(data, 20)
    if magic != MAGIC:
        raise ValueError(f"{path.name}: unexpected magic {magic!r}")
    if not 24 <= audio_base <= len(data):
        raise ValueError(f"{path.name}: audio base outside file")

    # ParseFile's code requests [0:8], then `read_size` bytes beginning at +8.
    # Its chunk allocation is field_at_20 - 16 - read_size; chunk bytes begin +24.
    chunk_window_size = audio_base - 16 - read_size
    chunk_window_start = 24
    chunk_window_end = chunk_window_start + chunk_window_size
    if chunk_window_size < 0 or chunk_window_end > len(data):
        raise ValueError(f"{path.name}: parser-derived chunk window lies outside file")

    chunks: list[dict[str, object]] = []
    cursor = chunk_window_start
    while cursor < chunk_window_end:
        if cursor + 8 > chunk_window_end:
            raise ValueError(f"{path.name}: truncated chunk header at 0x{cursor:x}")
        tag = data[cursor : cursor + 4]
        payload_size = u32(data, cursor + 4)
        body_start = cursor + 8
        body_end = body_start + payload_size
        if body_end > chunk_window_end:
            raise ValueError(f"{path.name}: chunk {tag!r} runs past parser-derived window")
        body = data[body_start:body_end]
        chunk = {
            "tag_bytes": tag.hex(),
            "tag_ascii": tag.decode("ascii", errors="replace"),
            "header_offset": cursor,
            "payload_offset": body_start,
            **parse_chunk_body(tag, body),
        }
        chunks.append(chunk)
        cursor = body_end

    if cursor != chunk_window_end:
        raise ValueError(f"{path.name}: chunks do not end at derived window boundary")
    segment = next((c for c in chunks if c["tag_bytes"] == b"Segm".hex()), None)
    segment_rows = segment.get("rows", []) if segment else []
    audio_data_bytes = len(data) - audio_base
    segment_spans = []
    for row in segment_rows:
        words = row["u32_words"]
        start, extent, samples = words[:3]
        segment_spans.append(
            {
                "relative_offset": start,
                "encoded_extent_bytes": extent,
                "sample_bound": samples,
                "file_offset_start": audio_base + start,
                "file_offset_end": audio_base + start + extent,
            }
        )

    unique_tags = [chunk["tag_ascii"] for chunk in chunks]
    normalized_fields = None
    afmt = next((c for c in chunks if c["tag_ascii"] == "Afmt"), None)
    if afmt:
        normalized_fields = afmt.get("observed_fields")

    return {
        "file_name": path.name,
        "file_size_bytes": len(data),
        "file_sha256": sha256(data),
        "observed_header": {
            "magic_ascii": magic.decode("ascii"),
            "magic_u32_le": u32(data, 0),
            "read_size_u32_at_4": read_size,
            "bytes_8_to_15_hex": data[8:16].hex(),
            "u32_at_16": file_size_field,
            "u32_at_20_audio_base": audio_base,
            "file_size_field_equals_actual": file_size_field == len(data),
        },
        "parser_derived_chunk_window": {
            "start": chunk_window_start,
            "size": chunk_window_size,
            "end_exclusive": chunk_window_end,
            "formula": "u32_at_20 - 16 - u32_at_4, read begins at file offset 24",
            "chunk_records_end": cursor,
            "bytes_between_chunk_window_and_audio_base": audio_base - cursor,
            "gap_hex": data[cursor:audio_base].hex(),
            "audio_base": audio_base,
        },
        "chunk_order": unique_tags,
        "tags_exactly_match_observed_corpus_set": set(bytes.fromhex(c["tag_bytes"]) for c in chunks) == KNOWN_CORPUS_TAGS,
        "chunks": chunks,
        "audio_payload": {
            "offset": audio_base,
            "size_bytes": audio_data_bytes,
            "sha256": sha256(data[audio_base:]),
        },
        "segment_spans_derived_from_rows": segment_spans,
        "segment_extents_sum_to_audio_payload": sum(s["encoded_extent_bytes"] for s in segment_spans) == audio_data_bytes,
        "segment_offsets_are_contiguous": all(
            segment_spans[i]["relative_offset"] + segment_spans[i]["encoded_extent_bytes"]
            == segment_spans[i + 1]["relative_offset"]
            for i in range(len(segment_spans) - 1)
        ),
        "afmt_raw_observed_fields": normalized_fields,
        "afmt_runtime_bits_overwrite_evidence": "Parser handler stores halfword 16 at native-data offset +0x2a after copying Afmt; see ParseFile VA 0x00873c10 in exact assembly.",
        "unknown_semantics": [
            "u32 words 3-5 in each Segm row",
            "all non-Segm table field names and meanings beyond their observed count/stride",
            "whether every possible VoxN corpus variant has this exact layout",
        ],
    }


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--corpus-root", type=Path, default=DEFAULT_CORPUS)
    parser.add_argument("--output", type=Path, default=DEFAULT_OUTPUT)
    args = parser.parse_args()
    files = sorted(args.corpus_root.glob("*.vxn"))
    report = {
        "schema": "dh-sc-native-audio-vxn-corpus-audit-v1",
        "corpus_root_as_observed": str(args.corpus_root),
        "input_file_count": len(files),
        "method": "Read-only byte inventory. Numeric fields are recorded as unsigned little-endian values unless explicitly noted. Derived table strides are arithmetic observations, not semantic schema names.",
        "assets": [parse_file(path) for path in files],
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
    print(f"wrote {args.output} for {len(files)} .vxn files")


if __name__ == "__main__":
    main()
