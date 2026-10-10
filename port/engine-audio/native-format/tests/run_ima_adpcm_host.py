#!/usr/bin/env python3
"""Bounded VoxN IMA ADPCM corpus/golden gate; no playback integration."""
from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path
import struct
import subprocess
import sys

AREA = Path(__file__).resolve().parents[1]
REPO = AREA.parents[2]
REFERENCE = AREA / "reference/ima-adpcm"
ASSEMBLY = [
    REPO / "recovered/native/assembly/libDungeonHunter2.so/vox_VoxNativeSubDecoderIMAADPCM-4f783647ca7a-001.asm",
    REPO / "recovered/native/assembly/libDungeonHunter2.so/vox_VoxMSWavSubDecoderIMAADPCM-e5f4552dc727-001.asm",
]
INPUTS = [AREA / "chunk_view.hpp", AREA / "ima_adpcm.hpp", Path(__file__).resolve(),
          AREA / "tests/ima_adpcm.cpp", REFERENCE / "NOTES.md",
          REFERENCE / "provenance.json", REFERENCE / "golden-output.json", *ASSEMBLY]

STEP_TABLE = [
    7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 21, 23, 25, 28, 31,
    34, 37, 41, 45, 50, 55, 60, 66, 73, 80, 88, 97, 107, 118, 130,
    143, 157, 173, 190, 209, 230, 253, 279, 307, 337, 371, 408, 449,
    494, 544, 598, 658, 724, 796, 876, 963, 1060, 1166, 1282, 1411,
    1552, 1707, 1878, 2066, 2272, 2499, 2749, 3024, 3327, 3660,
    4026, 4428, 4871, 5358, 5894, 6484, 7132, 7845, 8630, 9493,
    10442, 11487, 12635, 13899, 15289, 16818, 18500, 20350, 22385,
    24623, 27086, 29794, 32767,
]
INDEX_TABLE = [-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8]


def sha(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(block)
    return digest.hexdigest()


def run(command: list[str]) -> subprocess.CompletedProcess[str]:
    result = subprocess.run(command, text=True, capture_output=True, check=False)
    if result.returncode:
        raise RuntimeError(f"command failed ({result.returncode}): {command}\n{result.stdout}\n{result.stderr}")
    return result


def elf_loads(path: Path) -> list[tuple[int, int, int]]:
    with path.open("rb") as stream:
        head = stream.read(52)
        if head[:7] != b"\x7fELF\x01\x01\x01":
            raise ValueError("expected original ELF32 little-endian image")
        phoff = struct.unpack_from("<I", head, 28)[0]
        phsize, phcount = struct.unpack_from("<HH", head, 42)
        loads = []
        for index in range(phcount):
            stream.seek(phoff + index * phsize)
            values = struct.unpack("<8I", stream.read(32))
            if values[0] == 1:
                loads.append((values[2], values[1], values[4]))
    return loads


def verify_original(path: Path, provenance: dict) -> dict:
    actual = sha(path)
    if actual != provenance["original_elf_sha256"]:
        raise ValueError("original ELF identity mismatch")
    loads = elf_loads(path)
    measured = []
    with path.open("rb") as stream:
        for row in provenance["original_code_evidence"] + provenance["original_table_evidence"]:
            address, length = int(row["elf_va"], 0), row["range_size"]
            segment = next((item for item in loads
                            if item[0] <= address and address + length <= item[0] + item[2]), None)
            if segment is None:
                raise ValueError(f"original evidence range is not mapped: {row['elf_va']}")
            offset = segment[1] + address - segment[0]
            stream.seek(offset)
            digest = hashlib.sha256(stream.read(length)).hexdigest()
            if digest != row["sha256"]:
                raise ValueError(f"original evidence range hash mismatch: {row['elf_va']}")
            measured.append({"name": row.get("symbol", row.get("name")), "elf_va": row["elf_va"],
                             "range_bytes": length, "sha256": digest, "file_offset": offset})
    for row in provenance["original_code_evidence"]:
        assembly = REPO / row["recovered_assembly"]
        if sha(assembly) != row["recovered_assembly_sha256"]:
            raise ValueError(f"recovered assembly identity mismatch: {assembly}")
    return {"elf_sha256": actual, "ranges": measured, "original_execution": False}


def reference_decode(block: bytes, channels: int, block_align: int) -> bytes:
    if len(block) != block_align or not 1 <= channels <= 8:
        raise ValueError("invalid reference block")
    header_bytes = channels * 4
    if block_align < header_bytes or (block_align - header_bytes) % (channels * 4):
        raise ValueError("incomplete reference channel group")
    frames = ((block_align - header_bytes) * 2) // channels + 1
    predictors, indices = [], []
    pcm = [0] * (frames * channels)
    for channel in range(channels):
        predictor, index = struct.unpack_from("<hB", block, channel * 4)
        if index > 88:
            raise ValueError("invalid reference step index")
        predictors.append(predictor)
        indices.append(index)
        pcm[channel] = predictor
    offset, first_frame = header_bytes, 1
    while offset != len(block):
        for channel in range(channels):
            codes = struct.unpack_from("<I", block, offset)[0]
            offset += 4
            for nibble_index in range(8):
                code = codes & 15
                codes >>= 4
                step = STEP_TABLE[indices[channel]]
                difference = step >> 3
                if code & 4:
                    difference += step
                if code & 2:
                    difference += step >> 1
                if code & 1:
                    difference += step >> 2
                predictors[channel] += -difference if code & 8 else difference
                predictors[channel] = max(-32768, min(32767, predictors[channel]))
                indices[channel] = max(0, min(88, indices[channel] + INDEX_TABLE[code]))
                pcm[(first_frame + nibble_index) * channels + channel] = predictors[channel]
        first_frame += 8
    return struct.pack(f"<{len(pcm)}h", *pcm)


def streamed_decode(executable: Path, path: Path) -> tuple[int, str]:
    process = subprocess.Popen([str(executable), "--decode", str(path)],
                               stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    if process.stdout is None or process.stderr is None:
        process.kill()
        process.wait()
        raise RuntimeError("failed to capture decoder output")
    digest, count = hashlib.sha256(), 0
    for block in iter(lambda: process.stdout.read(1024 * 1024), b""):
        digest.update(block)
        count += len(block)
    errors = process.stderr.read().decode("utf-8", errors="replace")
    code = process.wait()
    if code:
        raise RuntimeError(f"decoder failed ({code}) for {path}: {errors}")
    if errors:
        raise RuntimeError(f"decoder emitted unexpected stderr for {path}: {errors}")
    return count, digest.hexdigest()


def candidate_block(executable: Path, path: Path, index: int) -> bytes:
    result = subprocess.run([str(executable), "--decode-block", str(path), str(index)],
                            capture_output=True, check=False)
    if result.returncode:
        raise RuntimeError(f"block decoder failed ({result.returncode}) for {path}: "
                           f"{result.stderr.decode(errors='replace')}")
    if result.stderr:
        raise RuntimeError(f"block decoder emitted unexpected stderr for {path}")
    return result.stdout


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--cache", type=Path, required=True,
                        help="explicit root containing the external .vxn files")
    parser.add_argument("--original-elf", type=Path, required=True)
    parser.add_argument("--compiler", required=True, help="absolute C++17 compiler path")
    parser.add_argument("--build-dir", type=Path,
                        default=REPO / "port/level-world/build/vox-n-ima-adpcm")
    parser.add_argument("--report", type=Path)
    args = parser.parse_args()

    compiler = Path(args.compiler).resolve(strict=True)
    cache = args.cache.resolve(strict=True)
    original = args.original_elf.resolve(strict=True)
    build = args.build_dir.resolve()
    build.mkdir(parents=True, exist_ok=True)
    report_path = (args.report or build / "validation.json").resolve()
    before = {str(path.relative_to(REPO)).replace("\\", "/"): sha(path) for path in INPUTS}
    provenance = json.loads((REFERENCE / "provenance.json").read_text(encoding="utf-8"))
    golden = json.loads((REFERENCE / "golden-output.json").read_text(encoding="utf-8"))
    evidence = verify_original(original, provenance)

    expected = {row["file_name"]: row for row in golden["assets"]}
    if len(expected) != 17 or len(golden["assets"]) != 17:
        raise ValueError("golden corpus must contain exactly 17 unique basenames")
    files = sorted(cache.rglob("*.vxn"))
    if len(files) != 17 or len({path.name for path in files}) != 17:
        raise ValueError("external corpus must contain exactly 17 unique VoxN basenames")
    if {path.name for path in files} != expected.keys():
        raise ValueError("external VoxN corpus does not match the documented golden set")

    executable = build / ("ima_adpcm_host.exe" if sys.platform == "win32" else "ima_adpcm_host")
    compile_command = [str(compiler), "-std=c++17", "-O2", "-Wall", "-Wextra", "-Werror",
                       "-pedantic", str(AREA / "tests/ima_adpcm.cpp"), "-o", str(executable)]
    run(compile_command)
    guards = json.loads(run([str(executable), "--guards"]).stdout)
    if guards["status"] != "PASS" or guards["mismatches"] != 0 or guards["checks"] < 50:
        raise ValueError("host guard suite failed or incomplete")

    rows = []
    differential_blocks = full_output_comparisons = 0
    total_encoded_blocks = total_pcm_bytes = 0
    for path in files:
        row = expected[path.name]
        if path.stat().st_size != row["file_bytes"] or sha(path) != row["file_sha256"]:
            raise ValueError(f"external input identity mismatch: {path.name}")
        with path.open("rb") as stream:
            metadata = stream.read(row["metadata_bytes"])
        if hashlib.sha256(metadata).hexdigest() != row["metadata_sha256"]:
            raise ValueError(f"metadata identity mismatch: {path.name}")

        actual = json.loads(run([str(executable), "--inspect", str(path)]).stdout)
        expected_inspect = {"status": "ok", "file_bytes": row["file_bytes"],
                            "audio_offset": row["audio_offset"], "audio_bytes": row["audio_bytes"],
                            **{key: golden["format"][key] for key in
                               ["format_tag", "channels", "sample_rate_hz", "block_align",
                                "bits_per_sample", "samples_per_block"]},
                            "block_count": row["block_count"], "pcm_frames": row["pcm_frames"],
                            "pcm_bytes": row["pcm_bytes"]}
        if actual != expected_inspect:
            raise ValueError(f"compiled format inspection mismatch: {path.name}")

        decoded_bytes, decoded_hash = streamed_decode(executable, path)
        if decoded_bytes != row["pcm_bytes"] or decoded_hash != row["pcm_s16le_sha256"]:
            raise ValueError(f"full PCM golden mismatch: {path.name}")
        full_output_comparisons += 1

        selected = sorted({0, row["block_count"] // 2, row["block_count"] - 1})
        with path.open("rb") as stream:
            for index in selected:
                stream.seek(row["audio_offset"] + index * golden["format"]["block_align"])
                encoded = stream.read(golden["format"]["block_align"])
                reference = reference_decode(encoded, golden["format"]["channels"],
                                             golden["format"]["block_align"])
                candidate = candidate_block(executable, path, index)
                if candidate != reference:
                    raise ValueError(f"independent block differential mismatch: {path.name}#{index}")
                differential_blocks += 1
        total_encoded_blocks += row["block_count"]
        total_pcm_bytes += decoded_bytes
        rows.append({"path": str(path.relative_to(cache)).replace("\\", "/"),
                     "file_bytes": row["file_bytes"], "file_sha256": row["file_sha256"],
                     "metadata_bytes": row["metadata_bytes"],
                     "metadata_sha256": row["metadata_sha256"],
                     "audio_offset": row["audio_offset"], "audio_bytes": row["audio_bytes"],
                     "block_count": row["block_count"], "pcm_frames": row["pcm_frames"],
                     "pcm_bytes": decoded_bytes, "pcm_s16le_sha256": decoded_hash,
                     "differential_block_indices": selected})

    after = {str(path.relative_to(REPO)).replace("\\", "/"): sha(path) for path in INPUTS}
    if before != after:
        raise ValueError("source/evidence inputs changed during compile/test")
    report = {
        "schema": "dh2-vox-n-ima-adpcm-host-v1",
        "status": "PASS",
        "scope": "bounded recorded-corpus IMA ADPCM decode to interleaved s16le; no playback",
        "source_sha256": before,
        "original_evidence": evidence,
        "original_execution": False,
        "cache_root": str(cache),
        "compiler": str(compiler),
        "compiler_version": run([str(compiler), "--version"]).stdout.splitlines()[0],
        "compile_command": compile_command,
        "executable": {"path": str(executable), "sha256": sha(executable)},
        "local_file_count": len(rows),
        "format": golden["format"],
        "full_output_golden_comparisons": full_output_comparisons,
        "independent_block_differential_comparisons": differential_blocks,
        "total_encoded_blocks": total_encoded_blocks,
        "total_pcm_bytes_streamed": total_pcm_bytes,
        "maximum_encoded_bytes_retained": golden["format"]["block_align"],
        "maximum_pcm_bytes_retained": golden["format"]["samples_per_block"] *
                                      golden["format"]["channels"] * 2,
        "guard_suite": guards,
        "mismatches": 0,
        "unsupported": ["VoxN transition/cue scheduling", "stateful seeking across transitions",
                        "mixing and Android playback", "formats other than recorded 0x0011 IMA ADPCM"],
        "assets": rows,
    }
    report_path.parent.mkdir(parents=True, exist_ok=True)
    report_path.write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8", newline="\n")
    print(json.dumps({key: report[key] for key in
                      ["status", "local_file_count", "full_output_golden_comparisons",
                       "independent_block_differential_comparisons", "total_encoded_blocks",
                       "total_pcm_bytes_streamed", "guard_suite", "mismatches"]}))


if __name__ == "__main__":
    main()
