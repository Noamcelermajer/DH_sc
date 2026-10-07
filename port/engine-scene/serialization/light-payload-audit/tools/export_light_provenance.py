#!/usr/bin/env python3
"""Export APK-bound ranges/excerpts for the selector-4 light path."""

from __future__ import annotations

import argparse
import hashlib
import json
import re
import struct
import zipfile
from pathlib import Path


ROOT = Path(__file__).resolve().parents[7]
ASSEMBLY = ROOT / "work/recovery/dh2-reconstruction/recovered/native/assembly/libDungeonHunter2.so"
DEFAULT_APK = Path(r"Dungeon-Hunter-2-HD-v1-0-2.apk")
OUT = Path(__file__).resolve().parents[1]
EXPECTED_APK_SHA = "32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200"
EXPECTED_ELF_SHA = "36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80"

FUNCTIONS = [
    {
        "demangled": "glitch::collada::CColladaDatabase::getLight(int) const",
        "va": 0x0060E3AC, "size": 28,
        "assembly": "glitch_collada_CColladaDatabase-f458595c81f3-001.asm",
        "use": "Reads the light table base and indexes with a 0x18-byte row stride.",
    },
    {
        "demangled": "glitch::collada::CColladaDatabase::getLight(char const*) const",
        "va": 0x0061B1EC, "size": 96,
        "assembly": "glitch_collada_CColladaDatabase-f458595c81f3-001.asm",
        "use": "Reads light count/base at data-root +0x44/+0x48, compares row name pointers, advances rows by 0x18.",
    },
    {
        "demangled": "glitch::collada::CColladaDatabase::constructLight(char const*, glitch::collada::CRootSceneNode*) const",
        "va": 0x0061B24C, "size": 36,
        "assembly": "glitch_collada_CColladaDatabase-f458595c81f3-001.asm",
        "use": "Resolves the named light and delegates to constructLight(SLight*, root).",
    },
    {
        "demangled": "glitch::collada::CColladaDatabase::constructLight(glitch::collada::SLight*, glitch::collada::CRootSceneNode*) const",
        "va": 0x00619404, "size": 76,
        "assembly": "glitch_collada_CColladaDatabase-f458595c81f3-001.asm",
        "use": "Calls the database's createLight virtual with the SLight pointer, then adds a non-null node to the root.",
    },
    {
        "demangled": "glitch::collada::CColladaFactory::createLight(glitch::collada::CColladaDatabase const&, glitch::collada::SLight*)",
        "va": 0x00631AF8, "size": 48,
        "assembly": "glitch_collada_CColladaFactory-db06bc565b1a-001.asm",
        "use": "Allocates a 0x16c-byte Collada light scene node and invokes its constructor.",
    },
    {
        "demangled": "glitch::collada::CLightSceneNode::CLightSceneNode(glitch::collada::CColladaDatabase const&, glitch::collada::SLight&) [C1]",
        "va": 0x006444EC, "size": 704,
        "assembly": "glitch_collada_CLightSceneNode-67c6c0cb5046-001.asm",
        "use": "Consumes SLight words/bytes at +0x08, +0x0c..+0x0f, +0x10, and conditionally through pointer +0x14.",
    },
]

LINKED_FUNCTION = {
    "demangled": "glitch::collada::CColladaDatabase::constructNode(glitch::video::IVideoDriver*, glitch::collada::SNode*, glitch::collada::CRootSceneNode*) const",
    "va": 0x0061B2F4, "size": 1480,
    "sha256": "9e047558fe98fb8d63868ffd99023086eaeab7284e550954810440da90d88b59",
    "existing_manifest": "../serialization-ranges.json",
    "excerpt_addresses": [0x0061B360, 0x0061B378, 0x0061B664, 0x0061B678],
    "use": "Existing verified selector switch: selector 4 follows attachment+4 -> instance+4, adds one to the name pointer, then calls constructLight(char const*, root).",
}


def sha(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def parse_segments(elf: bytes) -> list[dict]:
    phoff = struct.unpack_from("<I", elf, 28)[0]
    phentsize, phnum = struct.unpack_from("<HH", elf, 42)
    segments = []
    for i in range(phnum):
        typ, off, va, _, filesz, memsz, flags, align = struct.unpack_from("<IIIIIIII", elf, phoff + i * phentsize)
        if typ == 1:
            segments.append({"index": len(segments) + 1, "offset": off, "vaddr": va, "filesz": filesz, "memsz": memsz, "flags": flags})
    return segments


def file_offset(va: int, size: int, segments: list[dict]) -> tuple[int, int]:
    for s in segments:
        if s["vaddr"] <= va and va + size <= s["vaddr"] + s["filesz"]:
            return s["offset"] + va - s["vaddr"], s["index"]
    raise ValueError(f"VA range outside PT_LOAD: {va:#x}+{size:#x}")


def function_block(path: Path, va: int, size: int) -> tuple[list[str], bytes]:
    lines = path.read_text(encoding="utf-8").splitlines()
    hdr = re.compile(r"^; FUNCTION 0x([0-9a-fA-F]+),")
    row = re.compile(r"^([0-9a-fA-F]{8})\s+((?:[0-9a-fA-F]{2}\s+){1,16})")
    start_i = None
    for i, line in enumerate(lines):
        match = hdr.match(line)
        if match and int(match.group(1), 16) == va:
            start_i = i
            break
    if start_i is None:
        raise ValueError(f"function header {va:#x} missing from {path}")
    end_i = next((i for i in range(start_i + 1, len(lines)) if hdr.match(lines[i])), len(lines))
    block = lines[start_i:end_i]
    found: dict[int, int] = {}
    for line in block:
        m = row.match(line)
        if not m:
            continue
        addr = int(m.group(1), 16)
        octets = bytes(int(x, 16) for x in m.group(2).split())
        for j, b in enumerate(octets):
            if va <= addr + j < va + size:
                found[addr + j] = b
    missing = [a for a in range(va, va + size) if a not in found]
    if missing:
        raise ValueError(f"listing misses {len(missing)} bytes at {missing[0]:#x} in {path}")
    return block, bytes(found[a] for a in range(va, va + size))


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--apk", type=Path, default=DEFAULT_APK)
    args = parser.parse_args()
    apk_bytes = args.apk.read_bytes()
    apk_sha = sha(apk_bytes)
    if apk_sha != EXPECTED_APK_SHA:
        raise SystemExit(f"APK hash mismatch: {apk_sha}")
    with zipfile.ZipFile(args.apk) as z:
        names = [n for n in z.namelist() if n.endswith("/libDungeonHunter2.so")]
        if len(names) != 1:
            raise SystemExit(f"expected one ARM library member, found {names}")
        member = names[0]
        elf = z.read(member)
    elf_sha = sha(elf)
    if elf_sha != EXPECTED_ELF_SHA:
        raise SystemExit(f"ELF hash mismatch: {elf_sha}")
    if elf[:4] != b"\x7fELF" or elf[4:6] != b"\x01\x01":
        raise SystemExit("APK member is not ELF32 little-endian")
    segments = parse_segments(elf)

    records = []
    assembly_sections = [
        "; Selector-4 dispatch slice (the full 0x61b2f4 range/hash is linked below).",
    ]
    db_asm = ASSEMBLY / "glitch_collada_CColladaDatabase-f458595c81f3-001.asm"
    linked_lines, linked_bytes = function_block(db_asm, LINKED_FUNCTION["va"], LINKED_FUNCTION["size"])
    for line in linked_lines:
        m = re.match(r"^([0-9a-fA-F]{8})\s", line)
        if m and any(start <= int(m.group(1), 16) < end for start, end in (
                (0x0061B360, 0x0061B37C), (0x0061B664, 0x0061B67C))):
            assembly_sections.append(line)

    for spec in FUNCTIONS:
        source = ASSEMBLY / spec["assembly"]
        block, listing_bytes = function_block(source, spec["va"], spec["size"])
        off, segment = file_offset(spec["va"], spec["size"], segments)
        apk_range = elf[off:off + spec["size"]]
        if listing_bytes != apk_range:
            raise SystemExit(f"assembly/listing bytes differ from APK at {spec['va']:#x}")
        records.append({
            "demangled": spec["demangled"],
            "elf_virtual_address": f"0x{spec['va']:08x}",
            "elf_file_offset": f"0x{off:08x}",
            "range_size": spec["size"],
            "original_code_sha256": sha(apk_range),
            "pt_load_segment_index": segment,
            "mode": "arm",
            "assembly_file": spec["assembly"],
            "listing_byte_comparison": "exact_match_to_original_apk_elf_bytes",
            "use_in_analysis": spec["use"],
        })
        assembly_sections.append("")
        assembly_sections.extend(block)
        assembly_sections.append("")

    linked_off, linked_segment = file_offset(LINKED_FUNCTION["va"], LINKED_FUNCTION["size"], segments)
    linked_apk_bytes = elf[linked_off:linked_off + LINKED_FUNCTION["size"]]
    if linked_bytes != linked_apk_bytes:
        raise SystemExit("linked constructNode listing bytes differ from APK")
    if sha(linked_apk_bytes) != LINKED_FUNCTION["sha256"]:
        raise SystemExit("linked constructNode hash disagrees with APK")

    # The app's concrete ColladaFactory vtable supplies the base light factory
    # in the slot reached by the engine call at vptr+0x0c.
    vtable_entry_va = 0x0095CCA4
    vtable_off, vtable_segment = file_offset(vtable_entry_va, 4, segments)
    vtable_raw = elf[vtable_off:vtable_off + 4]
    vtable_word = struct.unpack("<I", vtable_raw)[0]
    if vtable_word != 0x00631AF8:
        raise SystemExit(f"unexpected concrete ColladaFactory createLight slot: {vtable_word:#x}")

    doc = {
        "schema": "dh2-engine-scene-light-payload-provenance-v1",
        "source_apk": str(args.apk),
        "source_apk_sha256": apk_sha,
        "source_elf_member": member,
        "source_elf_size": len(elf),
        "source_elf_sha256": elf_sha,
        "elf_format": "ELF32 little-endian ARM",
        "hash_basis": "SHA-256 covers exact bytes read from the APK's ELF member through PT_LOAD mapping. Each copied assembly range was byte-compared with those APK bytes.",
        "pt_load_segments": [
            {"index": s["index"], "offset": s["offset"], "vaddr": s["vaddr"], "filesz": s["filesz"]}
            for s in segments
        ],
        "function_count": len(records),
        "functions": records,
        "linked_existing_range": {
            "demangled": LINKED_FUNCTION["demangled"],
            "elf_virtual_address": f"0x{LINKED_FUNCTION['va']:08x}",
            "elf_file_offset": f"0x{linked_off:08x}",
            "range_size": LINKED_FUNCTION["size"],
            "original_code_sha256": LINKED_FUNCTION["sha256"],
            "pt_load_segment_index": linked_segment,
            "assembly_file": "glitch_collada_CColladaDatabase-f458595c81f3-001.asm",
            "existing_manifest": LINKED_FUNCTION["existing_manifest"],
            "listing_byte_comparison": "confirmed_against_original_apk_elf_bytes",
            "use_in_analysis": LINKED_FUNCTION["use"],
        },
        "supporting_data_ranges": [{
            "name": "ColladaFactory concrete vtable createLight slot",
            "elf_virtual_address": f"0x{vtable_entry_va:08x}",
            "elf_file_offset": f"0x{vtable_off:08x}",
            "range_size": 4,
            "pt_load_segment_index": vtable_segment,
            "data_bytes_sha256": sha(vtable_raw),
            "raw_hex": vtable_raw.hex(),
            "raw_word": f"0x{vtable_word:08x}",
            "table_offset_from_vtable_start": "0x14",
            "call_offset_from_vptr_address_point": "0x0c",
            "target_function": "CColladaFactory::createLight at 0x00631af8",
        }],
    }
    (OUT / "reference").mkdir(parents=True, exist_ok=True)
    (OUT / "function-manifest.json").write_text(json.dumps(doc, indent=2) + "\n", encoding="utf-8")
    (OUT / "reference/light-payload-excerpts.asm").write_text("\n".join(assembly_sections).rstrip() + "\n", encoding="utf-8")
    print(f"wrote {len(records)} exact APK ranges plus linked constructNode evidence")
    print(f"APK SHA-256 {apk_sha}")
    print(f"ELF SHA-256 {elf_sha}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
