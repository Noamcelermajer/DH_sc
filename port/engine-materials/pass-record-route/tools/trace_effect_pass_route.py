#!/usr/bin/env python3
"""Extract the concrete chandelier_castle material -> GLES pass evidence.

Usage:
  python trace_effect_pass_route.py <Dungeon-Hunter-2-HD-v1-0-2.apk> \
      <recovered-files-data-root> <output-dir>

The APK and recovered BRES input are read only. The output directory receives
machine-readable source/corpus evidence and a byte-checked ARM excerpt.
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
APK_SHA256 = "32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200"
ELF_SHA256 = "36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80"
ASSET_RELATIVE = pathlib.PurePosixPath(
    "3d/animateddecors/castle/chandelier_castle.bdae"
)
ASSET_SHA256 = "84098bbb6d5daac56fcd84c4a0e1248924a068da29bc436ac1f859d73997c9e8"

# Complete mapped ranges used to interpret the selected bytes and the route.
FUNCTIONS = [
    ("CResFileManager::postLoadProcess", 0x00658C90, 0x810),
    ("CColladaFactory::createMaterial", 0x006323D0, 0xF4),
    ("SEffectList::SEffectList(CColladaDatabase const&, SEffect*)", 0x006319D8, 0xA4),
    ("CColladaFactory::createMaterialRenderer(effect overload)", 0x00636C8C, 0x19C),
    ("glitch::collada::createMaterialRenderer", 0x00636B6C, 0x120),
    ("createMaterialRendererForProfile<SProfileGLES2Traits>", 0x006361E8, 0x984),
    ("SProfileGLES2Traits::createShader", 0x00634B30, 0x134),
    ("CGLSLShaderManager::createShader", 0x006E01B4, 0x194),
    ("CGLSLShaderManager::createShaderCode", 0x006DFE68, 0x34C),
]
EXCERPT_START = 0x0063631C
EXCERPT_END = 0x006364C8
EFFECT_STRIDE = 0x74
TECHNIQUE_ROW_STRIDE = 12
PASS_STRIDE = 0x74


def sha256(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def u32(data: bytes, offset: int) -> int:
    return struct.unpack_from("<I", data, offset)[0]


def cstring(data: bytes, offset: int) -> tuple[str, bytes]:
    if offset < 0 or offset >= len(data):
        raise ValueError(f"string target outside BRES image: 0x{offset:x}")
    end = data.find(b"\0", offset, min(len(data), offset + 512))
    if end < 0:
        raise ValueError(f"unterminated string at BRES offset 0x{offset:x}")
    raw = data[offset:end + 1]
    return raw[:-1].decode("ascii"), raw


def elf_va_to_file_offset(elf: bytes, va: int, size: int) -> tuple[int, int]:
    if elf[:4] != b"\x7fELF" or elf[4] != 1 or elf[5] != 1:
        raise ValueError("target shared library is not ELF32 little endian")
    e_phoff = u32(elf, 28)
    e_phentsize = struct.unpack_from("<H", elf, 42)[0]
    e_phnum = struct.unpack_from("<H", elf, 44)[0]
    for index in range(e_phnum):
        ph = e_phoff + index * e_phentsize
        p_type, p_offset, p_vaddr, _p_paddr, p_filesz, _p_memsz, _p_flags, _p_align = (
            struct.unpack_from("<IIIIIIII", elf, ph)
        )
        if p_type == 1 and p_vaddr <= va and va + size <= p_vaddr + p_filesz:
            return p_offset + va - p_vaddr, index
    raise ValueError(f"VA 0x{va:x}..0x{va + size:x} is not file-backed")


def parse_bres(data: bytes):
    if len(data) < 60 or data[:4] != b"BRES":
        raise ValueError("asset is not a BRES image")
    if u32(data, 8) != 60 or u32(data, 12) != len(data) or u32(data, 24) != 60:
        raise ValueError("asset header does not match the recovered whole-buffer layout")
    fix_count = u32(data, 16)
    fix_table = u32(data, 24)
    if fix_count > (len(data) - fix_table) // 4:
        raise ValueError("fixup table exceeds asset bounds")
    fixups = {}
    for i in range(fix_count):
        field = u32(data, fix_table + i * 4)
        if field + 4 > len(data):
            raise ValueError(f"fixup field out of range: 0x{field:x}")
        target = u32(data, field)
        if target > len(data):
            raise ValueError(f"fixup target out of range: 0x{target:x}")
        fixups[field] = target
    root = u32(data, 32)
    effect_count, effect_base = u32(data, root + 0x54), u32(data, root + 0x58)
    material_count, material_base = u32(data, root + 0x5C), u32(data, root + 0x60)
    if effect_base + effect_count * EFFECT_STRIDE > len(data):
        raise ValueError("effect table exceeds asset bounds")
    if material_base + material_count * 0x24 > len(data):
        raise ValueError("material table exceeds asset bounds")
    return fixups, root, effect_count, effect_base, material_count, material_base


def extract_elf(apk_path: pathlib.Path) -> tuple[bytes, str]:
    apk = apk_path.read_bytes()
    actual_apk_hash = sha256(apk)
    if actual_apk_hash != APK_SHA256:
        raise ValueError(f"unexpected APK SHA-256: {actual_apk_hash}")
    with zipfile.ZipFile(apk_path) as archive:
        elf = archive.read(APK_MEMBER)
    actual_elf_hash = sha256(elf)
    if actual_elf_hash != ELF_SHA256:
        raise ValueError(f"unexpected ELF SHA-256: {actual_elf_hash}")
    return elf, actual_apk_hash


def disassemble_excerpt(elf: bytes) -> tuple[bytes, list[str]]:
    objdump = shutil.which("llvm-objdump")
    if objdump is None:
        raise RuntimeError("llvm-objdump is required to emit the byte-checked excerpt")
    excerpt_size = EXCERPT_END - EXCERPT_START
    file_offset, _segment = elf_va_to_file_offset(elf, EXCERPT_START, excerpt_size)
    excerpt_bytes = elf[file_offset:file_offset + excerpt_size]
    with tempfile.TemporaryDirectory(prefix="dh2-effect-pass-") as temp_dir:
        temp_elf = pathlib.Path(temp_dir) / "libDungeonHunter2.so"
        temp_elf.write_bytes(elf)
        result = subprocess.run(
            [
                objdump, "-d", "--demangle",
                f"--start-address=0x{EXCERPT_START:08x}",
                f"--stop-address=0x{EXCERPT_END:08x}", str(temp_elf),
            ], check=True, capture_output=True, text=True,
        )
    rows: list[str] = []
    pattern = re.compile(r"^\s*([0-9a-fA-F]+):\s+([0-9a-fA-F]{8})\s+(.+)$")
    seen = bytearray()
    expected_va = EXCERPT_START
    for line in result.stdout.splitlines():
        match = pattern.match(line)
        if not match:
            continue
        va = int(match.group(1), 16)
        opcode = int(match.group(2), 16)
        if va < EXCERPT_START or va >= EXCERPT_END:
            continue
        encoded = struct.pack("<I", opcode)
        relative = va - EXCERPT_START
        if va != expected_va or excerpt_bytes[relative:relative + 4] != encoded:
            raise ValueError(f"disassembly/ELF byte mismatch at VA 0x{va:x}")
        rows.append(f"{va:08x}  {encoded.hex(' ')}  {match.group(3).strip()}")
        seen.extend(encoded)
        expected_va += 4
    if bytes(seen) != excerpt_bytes:
        raise ValueError("disassembler did not cover the complete selected instruction range")
    return excerpt_bytes, rows


def asset_evidence(asset_path: pathlib.Path) -> dict:
    asset = asset_path.read_bytes()
    asset_hash = sha256(asset)
    if asset_hash != ASSET_SHA256:
        raise ValueError(f"unexpected chandelier asset SHA-256: {asset_hash}")
    fixups, root, effect_count, effect_base, material_count, material_base = parse_bres(asset)
    asset_path_text = asset_path.resolve().as_posix()
    marker = "/files/data/"
    rel = asset_path_text.lower().split(marker, 1)[1] if marker in asset_path_text.lower() else ASSET_RELATIVE.as_posix()
    if pathlib.PurePosixPath(rel) != ASSET_RELATIVE:
        raise ValueError(f"unexpected asset path after files/data/: {rel}")

    # The non-sentinel material with index 0 is the exact asset record already
    # used by the corpus link audit (material row 1, effect row 0).
    material_index = 1
    material_off = material_base + material_index * 0x24
    effect_index = u32(asset, material_off + 0x18)
    if effect_index >= effect_count:
        raise ValueError("selected material does not carry an in-range effect index")
    effect_off = effect_base + effect_index * EFFECT_STRIDE

    def field_string(field_off: int) -> dict:
        target = fixups.get(field_off)
        if target is None:
            raise ValueError(f"expected serialized pointer fixup at 0x{field_off:x}")
        value, raw = cstring(asset, target)
        return {"target_offset": f"0x{target:x}", "value": value, "nul_terminated_bytes_sha256": sha256(raw)}

    material_key = field_string(material_off)
    material_effect_name = field_string(material_off + 0x0C)
    effect_key = field_string(effect_off)
    if not material_effect_name["value"].startswith("#") or material_effect_name["value"][1:] != effect_key["value"]:
        raise ValueError("material +0x0c name does not match the selected effect key")

    encoded_profile_count = u32(asset, effect_off + 0x20)
    profile_count = encoded_profile_count & 0x3FFFFFFF
    profile_table = fixups.get(effect_off + 0x24)
    if profile_table is None or profile_count == 0 or profile_count > 64:
        raise ValueError("selected effect profile table does not fit the expected bounded case")
    profile_index = 0
    profile_off = profile_table + profile_index * TECHNIQUE_ROW_STRIDE
    profile_name = field_string(profile_off)
    pass_count = u32(asset, profile_off + 4)
    pass_table = fixups.get(profile_off + 8)
    if pass_count == 0 or pass_count > 64 or pass_table is None:
        raise ValueError("selected technique has no bounded pass array")
    pass_index = 0
    pass_off = pass_table + pass_index * PASS_STRIDE
    shader_fields = {}
    for offset, label in ((4, "component_1"), (0x0C, "component_2"), (0x10, "component_3"), (0x18, "component_4")):
        shader_fields[label] = field_string(pass_off + offset)

    if shader_fields["component_1"]["value"] != "ProfileCOMMON_emul_VS.glsl":
        raise ValueError("selected pass's first shader component changed")
    if shader_fields["component_3"]["value"] != "ProfileCOMMON_emul_FS.glsl":
        raise ValueError("selected pass's third shader component changed")

    return {
        "source": {
            "relative_to_recovered_files_data": rel,
            "size_bytes": len(asset),
            "sha256": asset_hash,
            "fixup_count": len(fixups),
            "root_offset": f"0x{root:x}",
        },
        "table_bounds": {
            "effect_count": effect_count,
            "effect_base_offset": f"0x{effect_base:x}",
            "effect_record_stride": "0x74",
            "material_count": material_count,
            "material_base_offset": f"0x{material_base:x}",
            "material_record_stride": "0x24",
        },
        "material": {
            "index": material_index,
            "record_offset": f"0x{material_off:x}",
            "record_bytes_sha256": sha256(asset[material_off:material_off + 0x24]),
            "key": material_key,
            "effect_name_field_plus_0c": material_effect_name,
            "raw_effect_index_at_plus_18": effect_index,
            "resolved_effect_record_offset": f"0x{effect_off:x}",
        },
        "effect": {
            "index": effect_index,
            "record_offset": f"0x{effect_off:x}",
            "record_bytes_sha256": sha256(asset[effect_off:effect_off + EFFECT_STRIDE]),
            "key": effect_key,
            "field_plus_20_raw_word": f"0x{encoded_profile_count:08x}",
            "field_plus_20_low_30_bit_iteration_bound": profile_count,
            "field_plus_24_fixup_target": f"0x{profile_table:x}",
            "selected_table_row": {
                "index": profile_index,
                "offset": f"0x{profile_off:x}",
                "bytes_sha256": sha256(asset[profile_off:profile_off + TECHNIQUE_ROW_STRIDE]),
                "name": profile_name,
                "word_plus_04_pass_count": pass_count,
                "field_plus_08_fixup_target_pass_array": f"0x{pass_table:x}",
            },
            "selected_pass": {
                "index": pass_index,
                "offset": f"0x{pass_off:x}",
                "stride": "0x74",
                "bytes_sha256": sha256(asset[pass_off:pass_off + PASS_STRIDE]),
                "strings_at_offsets_read_by_SProfileGLES2Traits_createShader": shader_fields,
                "word_plus_1c_raw_hex_unassigned": f"0x{u32(asset, pass_off + 0x1C):08x}",
            },
        },
        "interpretation_boundary": (
            "BRES offsets, fixups, record bytes, and strings are direct corpus observations. "
            "Field roles come only from the hashed native consumers listed in native_ranges.json. "
            "The selected row is not evidence that this asset was rendered in a particular session."
        ),
    }


def main() -> int:
    if len(sys.argv) != 4:
        print(__doc__.strip(), file=sys.stderr)
        return 2
    apk_path = pathlib.Path(sys.argv[1])
    data_root = pathlib.Path(sys.argv[2])
    out_dir = pathlib.Path(sys.argv[3])
    asset_path = data_root.joinpath(*ASSET_RELATIVE.parts)
    if not asset_path.is_file():
        raise SystemExit(f"asset not found: {asset_path}")
    elf, apk_hash = extract_elf(apk_path)

    function_rows = []
    for name, va, size in FUNCTIONS:
        file_offset, program_header = elf_va_to_file_offset(elf, va, size)
        function_rows.append({
            "name": name,
            "elf_va": f"0x{va:08x}",
            "range_size_bytes": size,
            "elf_file_offset": file_offset,
            "pt_load_program_header_index": program_header,
            "sha256": sha256(elf[file_offset:file_offset + size]),
        })
    excerpt_bytes, instruction_rows = disassemble_excerpt(elf)
    corpus = asset_evidence(asset_path)

    out_dir.mkdir(parents=True, exist_ok=True)
    reference_dir = out_dir / "reference"
    reference_dir.mkdir(parents=True, exist_ok=True)
    manifest = {
        "schema_version": 1,
        "hash_basis": "Full native-range SHA-256 values cover exactly the mapped ELF bytes. The selected instruction excerpt is decoded with llvm-objdump and every emitted ARM word is compared with its file-backed ELF bytes.",
        "apk": {"member": APK_MEMBER, "sha256": apk_hash},
        "elf": {"size_bytes": len(elf), "sha256": ELF_SHA256},
        "native_ranges": function_rows,
        "focused_excerpt": {
            "path": "reference/pass-table-route.asm",
            "start_va": f"0x{EXCERPT_START:08x}",
            "end_va_exclusive": f"0x{EXCERPT_END:08x}",
            "byte_count": len(excerpt_bytes),
            "sha256": sha256(excerpt_bytes),
            "decoded_instruction_rows": len(instruction_rows),
            "all_rows_byte_compared": True,
        },
    }
    (out_dir / "native_ranges.json").write_text(json.dumps(manifest, indent=2) + "\n", encoding="utf-8")
    (out_dir / "corpus-route.json").write_text(json.dumps(corpus, indent=2) + "\n", encoding="utf-8")
    asm = [
        "; Exact byte-checked ARM excerpt for SEffect profile/technique and pass traversal.",
        f"; APK SHA-256: {apk_hash}",
        f"; ELF SHA-256: {ELF_SHA256}",
        f"; Complete GLES2 renderer function SHA-256: {next(row['sha256'] for row in function_rows if row['name'].startswith('createMaterialRendererForProfile'))}",
        f"; Excerpt VA: 0x{EXCERPT_START:08x}..0x{EXCERPT_END:08x} (end-exclusive)",
        f"; Excerpt byte SHA-256: {sha256(excerpt_bytes)}",
        "; Rows were decoded with llvm-objdump and byte-compared against the APK ELF PT_LOAD mapping.",
        "",
        *instruction_rows,
        "",
    ]
    (reference_dir / "pass-table-route.asm").write_text("\n".join(asm), encoding="utf-8")
    print(json.dumps({
        "native_ranges": len(function_rows),
        "excerpt_bytes": len(excerpt_bytes),
        "excerpt_rows": len(instruction_rows),
        "asset": corpus["source"],
        "output_dir": str(out_dir.resolve()),
    }, indent=2))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
