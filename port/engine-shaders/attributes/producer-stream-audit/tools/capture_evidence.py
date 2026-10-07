#!/usr/bin/env python3
"""Capture byte-backed producer-side vertex-stream evidence from the supplied APK."""

from __future__ import annotations

import argparse
import hashlib
import json
import re
import shutil
import struct
import subprocess
import zipfile
from pathlib import Path


EXPECTED_APK_SHA256 = "32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200"
EXPECTED_ELF_SHA256 = "36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80"
APK_MEMBER = "lib/armeabi-v7a/libDungeonHunter2.so"

FUNCTIONS = [
    ("collada_add_stream", "anonymous Collada helper; prepares one stream record", 0x006BCCF0, 0x290),
    ("mesh_buffer_constructor_c2", "scene::CMeshBuffer C2 Collada constructor", 0x006BCF80, 0xA78),
    ("mesh_buffer_constructor_c1", "scene::CMeshBuffer C1 Collada constructor", 0x006BD9F8, 0xA78),
    ("vertex_stream_constructor", "CVertexStreams constructor", 0x005A113C, 0x134),
    ("vertex_stream_allocate_mask", "CVertexStreams::allocate(mask)", 0x005A135C, 0xA8),
    ("vertex_stream_setup_from_data", "CVertexStreams::setupStreams(data, mask, bool)", 0x005A178C, 0xEC),
    ("vertex_stream_setup_from_buffer", "CVertexStreams::setupStreams(buffer, mask)", 0x005A15C0, 0x1CC),
    ("vertex_stream_set_stream", "CVertexStreams::setStream(data)", 0x007D46FC, 0x6C),
    ("vertex_stream_set_stream_loadvs_clone", "setStream clone called by loadVS", 0x006B6194, 0x68),
    ("vertex_stream_set_streams", "CVertexStreams::setStreams(source, mask, int, bool)", 0x005A0C60, 0x120),
    ("vertex_stream_active_attribute_mask", "CVertexStreams::getActiveAttributeMask()", 0x005A0A58, 0x54),
    ("append_configure_stream", "CAppendMeshBuffer::configureStream", 0x006B8950, 0x150),
    ("append_allocate_configured_streams", "CAppendMeshBuffer::allocateConfiguredVertexStreams", 0x0058CC74, 0x160),
    ("generic_baker_constructor", "CGenericBaker constructor", 0x00609D28, 0x8C),
    ("generic_baker_configure_append", "CGenericBaker::configureAppendBuffer", 0x00609BA4, 0x184),
    ("io_load_vs", "io::loadVS", 0x006B73D8, 0x844),
    ("io_load_mb", "io::loadMB", 0x006B7C1C, 0x168),
    ("io_load_headers_skip_data", "io::loadHeadersAndSkipData", 0x006B6CAC, 0x72C),
    ("shader_attribute_classifier", "guessShaderVertexAttribute", 0x006DBB50, 0x994),
    ("shader_link_program", "CGLSLShader::linkProgram", 0x006DE9F8, 0x5A4),
    ("gles_setup_arrays", "CProgrammableGLDriver::setupArrays", 0x005B6584, 0x1E4),
    ("buffered_renderer_constructor", "BufferedRenderer constructor", 0x007D4768, 0x2A0),
    ("glitch_render_handler_constructor", "render_handler_glitch constructor", 0x007D60F4, 0x564),
    ("append_end_of_batch_callback", "SDefaultEndOfBatchCallback::operator()", 0x0059013C, 0x524),
]

EXCERPTS = [
    ("mesh_buffer_c2_stream_mask", "Collada C2 stream slots and generic allocation", 0x006BD114, 0x006BD3D8),
    ("mesh_buffer_c1_stream_mask", "Collada C1 mirror of stream slots and allocation", 0x006BDB8C, 0x006BDE5C),
    ("add_stream", "Collada stream record preparation", 0x006BCCF0, 0x006BCFE0),
    ("vertex_stream_constructor", "Mask-bit iteration and stream-code field initialization", 0x005A113C, 0x005A1270),
    ("vertex_stream_allocate_mask", "Generic allocation retains the requested mask and adds code zero", 0x005A135C, 0x005A1404),
    ("setup_streams_from_data", "Installs data only into already allocated code records", 0x005A178C, 0x005A1878),
    ("set_stream", "Copies buffer/layout fields without rewriting the code field", 0x007D46FC, 0x007D4768),
    ("loadvs_header_codes", "Serialized 16-bit code values form the allocation mask", 0x006B74C8, 0x006B7628),
    ("loadvs_install_streams", "Reader fills allocated records with setStream", 0x006B7960, 0x006B7A50),
    ("loadvs_set_stream_clone", "setStream clone preserves the target code", 0x006B6194, 0x006B61FC),
    ("load_headers_raw_codes", "Descriptor parser ORs the serialized 16-bit code into a stream mask", 0x006B6E4C, 0x006B6F64),
    ("generic_baker_code_switch", "Append-buffer layout dispatch for codes 0 through 27", 0x00609BB0, 0x00609D28),
    ("append_configure_stream", "Stores layout in a stream slot and appends its code", 0x006B8950, 0x006B8AA0),
    ("append_allocate_configured_streams", "Configured code list becomes a mask and streams are populated", 0x0058CC74, 0x0058CDD4),
    ("shader_reflection_filter", "Classifier result above code 29 is skipped before storage", 0x006DEBE4, 0x006DEC74),
    ("buffered_renderer_stream_codes", "Renderer constructor initializes position, UV, and color streams", 0x007D48D8, 0x007D49B8),
    ("glitch_renderer_stream_codes", "Glitch renderer initializes position, UV, and color streams", 0x007D62F4, 0x007D63F8),
    ("end_of_batch_allocate_call", "Batch completion invokes configured-stream allocation", 0x005902B8, 0x00590310),
]

CALL_TARGETS = {
    "collada_add_stream": 0x006BCCF0,
    "vertex_stream_allocate_mask": 0x005A135C,
    "vertex_stream_setup_from_data": 0x005A178C,
    "vertex_stream_set_stream": 0x007D46FC,
    "vertex_stream_set_stream_loadvs_clone": 0x006B6194,
    "append_configure_stream": 0x006B8950,
    "append_allocate_configured_streams": 0x0058CC74,
    "io_load_vs": 0x006B73D8,
    "io_load_headers_skip_data": 0x006B6CAC,
    "shader_attribute_classifier": 0x006DBB50,
}


def sha256(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def file_sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as source:
        for block in iter(lambda: source.read(1024 * 1024), b""):
            digest.update(block)
    return digest.hexdigest()


def elf_load_segments(data: bytes) -> list[dict]:
    if data[:4] != b"\x7fELF" or data[4] != 1 or data[5] != 1:
        raise ValueError("Expected a little-endian ELF32 input")
    phoff = struct.unpack_from("<I", data, 28)[0]
    phentsize, phnum = struct.unpack_from("<HH", data, 42)
    segments = []
    load_index = 0
    for index in range(phnum):
        offset = phoff + index * phentsize
        p_type, p_offset, p_vaddr, _p_paddr, p_filesz, p_memsz, p_flags, p_align = struct.unpack_from(
            "<IIIIIIII", data, offset
        )
        if p_type == 1:
            segments.append(
                {
                    "index": load_index,
                    "elf_program_header_index": index,
                    "p_offset": p_offset,
                    "p_vaddr": p_vaddr,
                    "p_filesz": p_filesz,
                    "p_memsz": p_memsz,
                    "p_flags": p_flags,
                    "p_align": p_align,
                }
            )
            load_index += 1
    return segments


def file_offset_for(segments: list[dict], address: int, size: int) -> tuple[int, int]:
    for segment in segments:
        start = segment["p_vaddr"]
        end = start + segment["p_filesz"]
        if start <= address and address + size <= end:
            return segment["p_offset"] + address - start, segment["index"]
    raise ValueError(f"VA range {address:#x}..{address + size:#x} is not file-backed")


def decode_rows(text: str) -> list[tuple[int, bytes]]:
    rows: list[tuple[int, bytes]] = []
    for line in text.splitlines():
        match = re.match(r"^\s*([0-9a-fA-F]+):\s+(.*)$", line)
        if not match:
            continue
        address = int(match.group(1), 16)
        tokens = match.group(2).split()
        if not tokens:
            continue
        if re.fullmatch(r"[0-9a-fA-F]{8}", tokens[0]):
            raw = int(tokens[0], 16).to_bytes(4, "little")
        elif len(tokens) >= 4 and all(re.fullmatch(r"[0-9a-fA-F]{2}", token) for token in tokens[:4]):
            raw = bytes(int(token, 16) for token in tokens[:4])
        else:
            continue
        rows.append((address, raw))
    return rows


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--apk", type=Path, default=Path(r"Dungeon-Hunter-2-HD-v1-0-2.apk"))
    parser.add_argument("--cache", type=Path, default=Path(r"Dungeon-Hunter-2-HD-v1-0-2-cache.zip"))
    parser.add_argument("--elf", type=Path, default=Path(__file__).resolve().parents[5] / "work" / "libDungeonHunter2.so")
    parser.add_argument("--objdump", default=shutil.which("llvm-objdump") or "llvm-objdump")
    args = parser.parse_args()

    out_dir = Path(__file__).resolve().parents[1]
    reference_dir = out_dir / "reference"
    reference_dir.mkdir(parents=True, exist_ok=True)

    apk_hash = file_sha256(args.apk)
    if apk_hash != EXPECTED_APK_SHA256:
        raise ValueError(f"APK hash mismatch: {apk_hash}")
    elf_data = args.elf.read_bytes()
    elf_hash = sha256(elf_data)
    if elf_hash != EXPECTED_ELF_SHA256:
        raise ValueError(f"ELF hash mismatch: {elf_hash}")
    with zipfile.ZipFile(args.apk) as archive:
        apk_member_data = archive.read(APK_MEMBER)
    if sha256(apk_member_data) != elf_hash or apk_member_data != elf_data:
        raise ValueError("Extracted ELF does not match the named APK member")

    segments = elf_load_segments(elf_data)
    function_rows = []
    for key, name, address, size in FUNCTIONS:
        file_offset, segment_index = file_offset_for(segments, address, size)
        function_rows.append(
            {
                "key": key,
                "symbol_description": name,
                "elf_va": f"0x{address:08x}",
                "range_size": size,
                "elf_file_offset": file_offset,
                "pt_load_segment_index_zero_based": segment_index,
                "range_sha256": sha256(elf_data[file_offset : file_offset + size]),
            }
        )

    excerpt_rows = []
    asm_parts = [
        "; Byte-backed, bounded ARM excerpts from libDungeonHunter2.so in the supplied APK.",
        f"; APK SHA-256: {apk_hash}",
        f"; ELF SHA-256: {elf_hash}",
        "; Each excerpt's raw instruction/data bytes were compared with the file-backed PT_LOAD bytes.",
        "",
    ]
    for key, label, start, end in EXCERPTS:
        size = end - start
        file_offset, segment_index = file_offset_for(segments, start, size)
        excerpt_bytes = elf_data[file_offset : file_offset + size]
        result = subprocess.run(
            [
                args.objdump,
                "-d",
                "--triple=armv7-linux-gnueabihf",
                f"--start-address=0x{start:x}",
                f"--stop-address=0x{end:x}",
                str(args.elf),
            ],
            check=True,
            capture_output=True,
            text=True,
        )
        rows = decode_rows(result.stdout)
        cursor = start
        for address, raw in rows:
            if address != cursor:
                raise ValueError(f"Non-contiguous disassembly in {key}: expected {cursor:#x}, found {address:#x}")
            relative = address - start
            if excerpt_bytes[relative : relative + len(raw)] != raw:
                raise ValueError(f"Disassembly bytes mismatch at {address:#x} in {key}")
            cursor += len(raw)
        if cursor != end:
            raise ValueError(f"Disassembly did not cover bounded excerpt {key}: ended at {cursor:#x}, expected {end:#x}")
        excerpt_rows.append(
            {
                "key": key,
                "label": label,
                "elf_va": f"0x{start:08x}",
                "end_va_exclusive": f"0x{end:08x}",
                "range_size": size,
                "elf_file_offset": file_offset,
                "pt_load_segment_index_zero_based": segment_index,
                "range_sha256": sha256(excerpt_bytes),
                "disassembly_raw_bytes_checked": len(excerpt_bytes),
            }
        )
        asm_parts.append(f"; --- {key}: {label} ---")
        asm_parts.append(f"; ELF VA [0x{start:08x}, 0x{end:08x}); {size} bytes; SHA-256 {sha256(excerpt_bytes)}")
        asm_parts.append(result.stdout.rstrip())
        asm_parts.append("")

    disassembly = subprocess.run(
        [args.objdump, "-d", "--triple=armv7-linux-gnueabihf", str(args.elf)],
        check=True,
        capture_output=True,
        text=True,
    ).stdout
    parsed_calls: dict[str, list[str]] = {key: [] for key in CALL_TARGETS}
    for line in disassembly.splitlines():
        match = re.match(r"^\s*([0-9a-fA-F]+):\s+[0-9a-fA-F]{8}\s+bl\s+0x([0-9a-fA-F]+)\b", line)
        if not match:
            continue
        callsite, target = int(match.group(1), 16), int(match.group(2), 16)
        for key, expected_target in CALL_TARGETS.items():
            if target == expected_target:
                parsed_calls[key].append(f"0x{callsite:08x}")
    call_xrefs = {
        key: {"target_va": f"0x{CALL_TARGETS[key]:08x}", "direct_bl_callsites": calls}
        for key, calls in parsed_calls.items()
    }

    with zipfile.ZipFile(args.cache) as archive:
        cache_names = archive.namelist()
    cache_counts = {suffix: sum(name.lower().endswith(suffix) for name in cache_names) for suffix in (".vs", ".mb", ".bdae")}

    manifest = {
        "schema": "dh2-producer-vertex-stream-evidence-v1",
        "method": "SHA-256 is over exact byte ranges mapped through file-backed PT_LOAD entries; bounded llvm-objdump ARM rows were decoded and byte-compared to those same ranges.",
        "source_apk": {"path": str(args.apk), "sha256": apk_hash, "size_bytes": args.apk.stat().st_size},
        "source_elf_member": {
            "member": APK_MEMBER,
            "path": str(args.elf),
            "sha256": elf_hash,
            "size_bytes": len(elf_data),
            "apk_member_byte_match": True,
            "elf_class": "ELF32",
            "endianness": "little",
            "machine": "ARM",
            "pt_load_segments": segments,
        },
        "supplied_cache_zip": {
            "path": str(args.cache),
            "sha256": file_sha256(args.cache),
            "entry_count": len(cache_names),
            "suffix_counts": cache_counts,
        },
        "function_ranges": function_rows,
        "bounded_assembly_excerpts": excerpt_rows,
        "direct_call_xrefs": call_xrefs,
        "call_xref_method": "Whole-file llvm-objdump ARM disassembly; direct BL immediate targets only. This does not include indirect/vtable calls.",
        "generator": "tools/capture_evidence.py",
        "reference_assembly": "reference/producer-stream-excerpts.asm",
    }
    (out_dir / "producer-stream-ranges.json").write_text(json.dumps(manifest, indent=2) + "\n", encoding="utf-8")
    (reference_dir / "producer-stream-excerpts.asm").write_text("\n".join(asm_parts), encoding="utf-8")
    print(f"Wrote {len(function_rows)} function ranges, {len(excerpt_rows)} verified excerpts, and {sum(map(len, parsed_calls.values()))} direct xrefs.")


if __name__ == "__main__":
    main()
