#!/usr/bin/env python3
"""Extract and byte-check the selected ARM material/effect evidence ranges.

Usage:
  python build_route_evidence.py <Dungeon-Hunter-2-HD-v1-0-2.apk>

The APK and BRES inputs are read only. The script writes only the assembly
excerpt and JSON manifest beside this file.
"""
from __future__ import annotations

import hashlib
import json
import pathlib
import re
import shutil
import struct
import subprocess
import sys
import tempfile
import zipfile


APK_MEMBER = "lib/armeabi-v7a/libDungeonHunter2.so"
EXPECTED_APK_SHA256 = "32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200"
EXPECTED_ELF_SHA256 = "36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80"

FUNCTIONS = [
    ("CResFileManager::postLoadProcess", 0x658C90, 0x810),
    ("collada::createMaterial", 0x631CE8, 0x6E8),
    ("CColladaFactory::createMaterial", 0x6323D0, 0xF4),
    ("CMaterialRenderer::getTechniqueID", 0x5D4714, 0xA0),
    ("CColladaDatabase::getEffect(int) const", 0x60E3E4, 0x1C),
    ("CColladaDatabase::getEffect(char const*) const", 0x61B0AC, 0x60),
    ("CColladaDatabase::CColladaDatabase(char const*, CColladaFactory*)", 0x60F25C, 0x54),
    ("CColladaDatabase::~CColladaDatabase()", 0x619474, 0x9C),
    ("CResFileManager::CResFileManager(IDevice*)", 0x657914, 0x80),
    ("CResFile::CResFile(char const*, IReadFile*, bool)", 0x658048, 0x114),
    ("CResFileManager::get(IReadFile*, bool, bool)", 0x65A748, 0x244),
    ("CResFileManager::get(char const*, bool)", 0x65A9A8, 0x2B4),
    ("CResFileManager::load(char const*, bool, callback)", 0x65AC5C, 0x18),
    ("CResFileManager::unload(iterator, bool)", 0x6584FC, 0x68),
    ("CResFileManager::unload(char const*, bool)", 0x659B60, 0xDC),
    ("CResFileManager::~CResFileManager()", 0x6582C4, 0xE4),
    ("SEffectList::SEffectList(CColladaDatabase const&, SEffect*)", 0x6319D8, 0xA4),
    ("SEffectList list clear", 0x631A7C, 0x48),
    ("CColladaFactory::createMaterialRenderer(effect overload)", 0x636C8C, 0x19C),
]

EXCERPTS = [
    ("material-table offsets and raw effect-index check", "CResFileManager::postLoadProcess", 0x658F1C, 0x658F34),
    ("local effect-index to pointer relocation", "CResFileManager::postLoadProcess", 0x658F98, 0x658FB4),
    ("external sentinel database and effect lookup", "CResFileManager::postLoadProcess", 0x659264, 0x6592B0),
    ("SMaterial effect argument forwarding", "CColladaFactory::createMaterial", 0x632420, 0x632454),
    ("enum 20 comparison, technique lookup, and runtime byte store", "collada::createMaterial", 0x631E44, 0x631EA4),
    ("technique name intern and ID lookup", "CMaterialRenderer::getTechniqueID", 0x5D4714, 0x5D47B4),
    ("effect table lookup by integer index", "CColladaDatabase::getEffect(int) const", 0x60E3E4, 0x60E400),
    ("effect table lookup by name", "CColladaDatabase::getEffect(char const*) const", 0x61B0AC, 0x61B10C),
    ("temporary database constructor and retained CResFile", "CColladaDatabase::CColladaDatabase(char const*, CColladaFactory*)", 0x60F25C, 0x60F2A4),
    ("temporary database destructor and conditional unload", "CColladaDatabase::~CColladaDatabase()", 0x619474, 0x619500),
    ("manager default unload flags", "CResFileManager::CResFileManager(IDevice*)", 0x657948, 0x65797C),
    ("CResFile initial manager reference", "CResFile::CResFile(char const*, IReadFile*, bool)", 0x658068, 0x658080),
    ("stream-based get disables auto-unload", "CResFileManager::get(IReadFile*, bool, bool)", 0x65A770, 0x65A790),
    ("stream-based get restores flag after post-load", "CResFileManager::get(IReadFile*, bool, bool)", 0x65A8A4, 0x65A8D0),
    ("stream-based get invokes post-load", "CResFileManager::get(IReadFile*, bool, bool)", 0x65A944, 0x65A970),
    ("stream-based get stores the CResFile in the manager map", "CResFileManager::get(IReadFile*, bool, bool)", 0x65A90C, 0x65A928),
    ("path-based get disables auto-unload", "CResFileManager::get(char const*, bool)", 0x65A9D8, 0x65A9F0),
    ("path-based get restores flag", "CResFileManager::get(char const*, bool)", 0x65AAE0, 0x65AB0C),
    ("path-based get stores the CResFile in the manager map", "CResFileManager::get(char const*, bool)", 0x65AB78, 0x65AB9C),
    ("path-based get invokes post-load", "CResFileManager::get(char const*, bool)", 0x65ABC4, 0x65AC0C),
    ("load delegates to path-based get", "CResFileManager::load(char const*, bool, callback)", 0x65AC5C, 0x65AC74),
    ("name-based unload dispatch", "CResFileManager::unload(char const*, bool)", 0x659BC4, 0x659BDC),
    ("unload erases only when refcount permits", "CResFileManager::unload(iterator, bool)", 0x65851C, 0x658560),
    ("manager destruction drops cached CResFile entries", "CResFileManager::~CResFileManager()", 0x6582EC, 0x65835C),
    ("effect-list retains database/factory and stores raw effect", "SEffectList::SEffectList(CColladaDatabase const&, SEffect*)", 0x6319E8, 0x631A68),
    ("effect-list clear releases entry database references", "SEffectList list clear", 0x631A98, 0x631AB0),
    ("factory seeds effect list then clears it", "CColladaFactory::createMaterialRenderer(effect overload)", 0x636D84, 0x636DE4),
]


def sha256(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def parse_load_segments(elf: bytes) -> list[dict[str, int]]:
    if elf[:4] != b"\x7fELF" or elf[4] != 1 or elf[5] != 1:
        raise SystemExit("source member is not ELF32 little-endian")
    phoff = struct.unpack_from("<I", elf, 28)[0]
    phentsize, phnum = struct.unpack_from("<HH", elf, 42)
    segments = []
    for index in range(phnum):
        off = phoff + index * phentsize
        p_type, p_offset, p_vaddr, _p_paddr, p_filesz, p_memsz, _p_flags, _p_align = struct.unpack_from("<IIIIIIII", elf, off)
        if p_type == 1:
            segments.append({
                "program_header_index": index,
                "p_offset": p_offset,
                "p_vaddr": p_vaddr,
                "p_filesz": p_filesz,
                "p_memsz": p_memsz,
            })
    if not segments:
        raise SystemExit("ELF has no PT_LOAD segments")
    return segments


def map_range(segments: list[dict[str, int]], va: int, size: int) -> tuple[int, int]:
    hits = [s for s in segments if s["p_vaddr"] <= va and va + size <= s["p_vaddr"] + s["p_filesz"]]
    if len(hits) != 1:
        raise SystemExit(f"VA range 0x{va:08x}+0x{size:x} maps through {len(hits)} file-backed PT_LOAD segments")
    segment = hits[0]
    return segment["p_offset"] + va - segment["p_vaddr"], segment["program_header_index"]


def main() -> int:
    if len(sys.argv) != 2:
        print(__doc__.strip(), file=sys.stderr)
        return 2
    apk_path = pathlib.Path(sys.argv[1]).resolve()
    apk_bytes = apk_path.read_bytes()
    apk_hash = sha256(apk_bytes)
    if apk_hash != EXPECTED_APK_SHA256:
        raise SystemExit(f"unexpected APK SHA-256: {apk_hash}")
    with zipfile.ZipFile(apk_path) as apk:
        elf = apk.read(APK_MEMBER)
    elf_hash = sha256(elf)
    if elf_hash != EXPECTED_ELF_SHA256:
        raise SystemExit(f"unexpected ELF member SHA-256: {elf_hash}")

    llvm_objdump = shutil.which("llvm-objdump") or r"C:\Program Files\LLVM\bin\llvm-objdump.exe"
    llvm_nm = shutil.which("llvm-nm") or r"C:\Program Files\LLVM\bin\llvm-nm.exe"
    if not pathlib.Path(llvm_objdump).exists() or not pathlib.Path(llvm_nm).exists():
        raise SystemExit("llvm-objdump and llvm-nm are required for evidence extraction")

    out_dir = pathlib.Path(__file__).resolve().parent.parent
    ref_dir = out_dir / "reference"
    ref_dir.mkdir(parents=True, exist_ok=True)
    asm_path = ref_dir / "material-effect-routes.asm"
    manifest_path = out_dir / "material-effect-routes.json"
    segments = parse_load_segments(elf)

    with tempfile.TemporaryDirectory(prefix="dh2-material-effect-") as tmp:
        elf_path = pathlib.Path(tmp) / "libDungeonHunter2.so"
        elf_path.write_bytes(elf)
        disassembly = subprocess.run(
            [llvm_objdump, "-d", "--demangle", str(elf_path)],
            check=True, capture_output=True, text=True,
        ).stdout
        nm_text = subprocess.run(
            [llvm_nm, "-S", "--demangle", "--defined-only", str(elf_path)],
            check=True, capture_output=True, text=True,
        ).stdout

    decoded: dict[int, tuple[int, str]] = {}
    current_symbol = ""
    direct_calls = []
    postload_calls = []
    for line in disassembly.splitlines():
        header = re.match(r"^\s*([0-9a-fA-F]+) <(.+)>:\s*$", line)
        if header:
            current_symbol = header.group(2)
            continue
        row = re.match(r"^\s*([0-9a-fA-F]+):\s+([0-9a-fA-F]{8})\s+(.+?)\s*$", line)
        if not row:
            continue
        va = int(row.group(1), 16)
        word = int(row.group(2), 16)
        text = row.group(3)
        decoded[va] = (word, text)
        if re.search(r"\bbl\s+0x[0-9a-fA-F]+ <glitch::video::CMaterialRenderer::getTechniqueID\(char const\*\) const>", text):
            direct_calls.append({"call_va": f"0x{va:08x}", "caller": current_symbol})
        if "CResFileManager::postLoadProcess(" in text and re.search(r"\bbl\s+", text):
            postload_calls.append({"call_va": f"0x{va:08x}", "caller": current_symbol})

    nm_by_va: dict[int, list[dict[str, str | int]]] = {}
    for line in nm_text.splitlines():
        parts = line.strip().split(maxsplit=3)
        if len(parts) != 4 or not re.fullmatch(r"[0-9a-fA-F]+", parts[0]) or not re.fullmatch(r"[0-9a-fA-F]+", parts[1]):
            continue
        va = int(parts[0], 16)
        nm_by_va.setdefault(va, []).append({"size": int(parts[1], 16), "type": parts[2], "symbol": parts[3]})

    function_rows = []
    function_by_name = {}
    for name, va, size in FUNCTIONS:
        file_offset, ph_index = map_range(segments, va, size)
        raw = elf[file_offset:file_offset + size]
        symbols = nm_by_va.get(va, [])
        matching = [s for s in symbols if s["size"] == size]
        if not matching:
            raise SystemExit(f"llvm-nm has no matching size {size} for {name} at 0x{va:08x}")
        entry = {
            "name": name,
            "elf_va": f"0x{va:08x}",
            "range_size_bytes": size,
            "elf_file_offset": file_offset,
            "pt_load_program_header_index": ph_index,
            "sha256": sha256(raw),
            "llvm_nm_symbol": matching[0]["symbol"],
            "llvm_nm_size_bytes": matching[0]["size"],
        }
        function_rows.append(entry)
        function_by_name[name] = entry

    asm_lines = [
        "; Exact ARM-mode instruction excerpts decoded from the APK ELF member.",
        f"; APK SHA-256: {apk_hash}",
        f"; ELF member: {APK_MEMBER}",
        f"; ELF SHA-256: {elf_hash}",
        "; Each row's bytes are little-endian and were compared with the PT_LOAD-mapped ELF slice.",
        "; Excerpts preserve only selected route instructions; complete function ranges and hashes are in the JSON manifest.",
        "",
    ]
    excerpt_rows = []
    for label, function_name, start, end in EXCERPTS:
        fn = function_by_name[function_name]
        fn_start = int(fn["elf_va"], 16)
        if not (fn_start <= start < end <= fn_start + int(fn["range_size_bytes"])):
            raise SystemExit(f"excerpt {label} is outside function {function_name}")
        file_offset, ph_index = map_range(segments, start, end - start)
        lines = []
        raw_excerpt = bytearray()
        for va in range(start, end, 4):
            if va not in decoded:
                raise SystemExit(f"llvm-objdump did not decode 0x{va:08x} in {label}")
            word, instruction = decoded[va]
            row_bytes = struct.pack("<I", word)
            if elf[file_offset + va - start:file_offset + va - start + 4] != row_bytes:
                raise SystemExit(f"disassembly bytes mismatch at 0x{va:08x}")
            raw_excerpt.extend(row_bytes)
            byte_text = " ".join(f"{value:02x}" for value in row_bytes)
            lines.append(f"{va:08x}  {byte_text}  {instruction}")
        asm_lines.extend([
            f"; EXCERPT {label}",
            f"; function={function_name}; function_sha256={fn['sha256']}",
            f"; VA=0x{start:08x}..0x{end:08x} (end-exclusive); file_offset=0x{file_offset:08x}; PT_LOAD program header={ph_index}",
            *lines,
            "",
        ])
        excerpt_rows.append({
            "name": label,
            "function": function_name,
            "start_va": f"0x{start:08x}",
            "end_va_exclusive": f"0x{end:08x}",
            "file_offset": file_offset,
            "byte_count": end - start,
            "sha256": sha256(bytes(raw_excerpt)),
            "instruction_rows": len(lines),
            "byte_comparison": "all emitted row bytes equal their APK PT_LOAD-mapped ELF bytes",
        })

    asm_text = "\n".join(asm_lines) + "\n"
    asm_path.write_text(asm_text, encoding="utf-8", newline="\n")
    corpus_path = out_dir / "corpus-audit.json"
    manifest = {
        "schema_version": 1,
        "description": "Focused material enum-20 and effect-pointer relocation/ownership supplement.",
        "source": {
            "apk_sha256": apk_hash,
            "elf_member": APK_MEMBER,
            "elf_size_bytes": len(elf),
            "elf_sha256": elf_hash,
            "elf_class": "ELF32 little-endian ARM",
            "pt_load_segments": segments,
            "hash_basis": "SHA-256 covers exact file-backed PT_LOAD bytes mapped from each listed ELF VA.",
        },
        "function_ranges": function_rows,
        "assembly_path": "reference/material-effect-routes.asm",
        "assembly_sha256": sha256(asm_text.encode("utf-8")),
        "excerpts": excerpt_rows,
        "whole_target_elf_direct_callsite_scan": {
            "method": "llvm-objdump -d --demangle over the APK's libDungeonHunter2.so member",
            "direct_CMaterialRenderer_getTechniqueID_calls": direct_calls,
            "direct_CMaterialRenderer_getTechniqueID_call_count": len(direct_calls),
            "direct_postLoadProcess_calls": postload_calls,
            "direct_postLoadProcess_call_count": len(postload_calls),
            "enum20_cmp_site_in_collada_createMaterial": "0x00631e68",
        },
        "corpus_audit": {
            "path": "corpus-audit.json",
            "sha256": sha256(corpus_path.read_bytes()) if corpus_path.exists() else None,
        },
    }
    manifest_path.write_text(json.dumps(manifest, indent=2, ensure_ascii=True) + "\n", encoding="utf-8")
    print(json.dumps({
        "apk_sha256": apk_hash,
        "elf_sha256": elf_hash,
        "function_ranges_hashed": len(function_rows),
        "assembly_excerpts_byte_checked": len(excerpt_rows),
        "technique_id_direct_calls": len(direct_calls),
        "postload_direct_calls": len(postload_calls),
        "assembly": str(asm_path),
        "manifest": str(manifest_path),
    }, ensure_ascii=True))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
