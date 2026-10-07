#!/usr/bin/env python3
"""Capture the exact ARM ranges for float scale and quaternion blend/add paths."""
from __future__ import annotations

import csv
import hashlib
import json
import shutil
import struct
import subprocess
import zipfile
from pathlib import Path


HERE = Path(__file__).resolve().parent
REPO = HERE.parents[4]
WORKSPACE = REPO.parent.parent
APK = Path(r"Dungeon-Hunter-2-HD-v1-0-2.apk")
ELF_MEMBER = "lib/armeabi-v7a/libDungeonHunter2.so"
ELF_COPY = REPO / "work" / "libDungeonHunter2.so"
SYMBOL_INDEX = WORKSPACE / "work/recovery/dh2-reconstruction/recovered/native/symbols/libDungeonHunter2.so/function-index.csv"
LLVM_OBJDUMP = Path(r"C:\Program Files\LLVM\bin\llvm-objdump.exe")
EXPECTED_APK_SHA256 = "32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200"
EXPECTED_ELF_SHA256 = "36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80"

SPECS = [
    (0x006130D4, 448, "quaternion_blend_reducer", "Reduces weighted quaternion contributors using the engine slerp path."),
    (0x00613300, 20, "quaternion_blend_vtable_wrapper", "Virtual wrapper for the float quaternion blended-value slot."),
    (0x00613314, 20, "quaternion_short_blend_vtable_wrapper", "Virtual wrapper for the short quaternion blended-value slot."),
    (0x00613328, 20, "quaternion_char_blend_vtable_wrapper", "Virtual wrapper for the char quaternion blended-value slot."),
    (0x0061333C, 20, "quaternion_angle_float_blend_vtable_wrapper", "Virtual wrapper for the float quaternion-angle blended-value slot."),
    (0x00613350, 20, "quaternion_angle_short_blend_vtable_wrapper", "Virtual wrapper for the short quaternion-angle blended-value slot."),
    (0x00613364, 20, "quaternion_angle_char_blend_vtable_wrapper", "Virtual wrapper for the char quaternion-angle blended-value slot."),
    (0x00613378, 528, "quaternion_add_reducer", "Composes signed weighted quaternion contributors in input order."),
    (0x00613588, 20, "quaternion_add_vtable_wrapper", "Virtual wrapper for the float quaternion added-value slot."),
    (0x0061359C, 20, "quaternion_short_add_vtable_wrapper", "Virtual wrapper for the short quaternion added-value slot."),
    (0x006135B0, 20, "quaternion_char_add_vtable_wrapper", "Virtual wrapper for the char quaternion added-value slot."),
    (0x006135C4, 20, "quaternion_angle_float_add_vtable_wrapper", "Virtual wrapper for the float quaternion-angle added-value slot."),
    (0x006135D8, 20, "quaternion_angle_short_add_vtable_wrapper", "Virtual wrapper for the short quaternion-angle added-value slot."),
    (0x006135EC, 20, "quaternion_angle_char_add_vtable_wrapper", "Virtual wrapper for the char quaternion-angle added-value slot."),
    (0x00620968, 76, "quaternion_apply_blended", "Reduces blended quaternion values and dispatches through callback slot +0x9c."),
    (0x006209B4, 28, "quaternion_apply_blended_vtable_wrapper", "Virtual wrapper for the float quaternion blended-apply slot."),
    (0x006209D0, 76, "quaternion_short_apply_blended", "Uses the shared reducer then dispatches through callback slot +0x9c."),
    (0x00620A1C, 28, "quaternion_short_apply_blended_vtable_wrapper", "Virtual wrapper for the short quaternion blended-apply slot."),
    (0x00620A38, 76, "quaternion_char_apply_blended", "Uses the shared reducer then dispatches through callback slot +0x9c."),
    (0x00620A84, 28, "quaternion_char_apply_blended_vtable_wrapper", "Virtual wrapper for the char quaternion blended-apply slot."),
    (0x00620AA0, 76, "quaternion_angle_float_apply_blended", "Uses the shared reducer then dispatches through callback slot +0x9c."),
    (0x00620AEC, 28, "quaternion_angle_float_apply_blended_vtable_wrapper", "Virtual wrapper for the float quaternion-angle blended-apply slot."),
    (0x00620B08, 76, "quaternion_angle_short_apply_blended", "Uses the shared reducer then dispatches through callback slot +0x9c."),
    (0x00620B54, 28, "quaternion_angle_short_apply_blended_vtable_wrapper", "Virtual wrapper for the short quaternion-angle blended-apply slot."),
    (0x00620B70, 76, "quaternion_angle_char_apply_blended", "Uses the shared reducer then dispatches through callback slot +0x9c."),
    (0x00620BBC, 28, "quaternion_angle_char_apply_blended_vtable_wrapper", "Virtual wrapper for the char quaternion-angle blended-apply slot."),
    (0x00620BD8, 76, "quaternion_apply_added", "Reduces added quaternion values and dispatches through callback slot +0x9c."),
    (0x00620C24, 28, "quaternion_apply_added_vtable_wrapper", "Virtual wrapper for the float quaternion added-apply slot."),
    (0x00620C40, 76, "quaternion_short_apply_added", "Uses the shared reducer then dispatches through callback slot +0x9c."),
    (0x00620C8C, 28, "quaternion_short_apply_added_vtable_wrapper", "Virtual wrapper for the short quaternion added-apply slot."),
    (0x00620CA8, 76, "quaternion_char_apply_added", "Uses the shared reducer then dispatches through callback slot +0x9c."),
    (0x00620CF4, 28, "quaternion_char_apply_added_vtable_wrapper", "Virtual wrapper for the char quaternion added-apply slot."),
    (0x00620D10, 76, "quaternion_angle_float_apply_added", "Uses the shared reducer then dispatches through callback slot +0x9c."),
    (0x00620D5C, 28, "quaternion_angle_float_apply_added_vtable_wrapper", "Virtual wrapper for the float quaternion-angle added-apply slot."),
    (0x00620D78, 76, "quaternion_angle_short_apply_added", "Uses the shared reducer then dispatches through callback slot +0x9c."),
    (0x00620DC4, 28, "quaternion_angle_short_apply_added_vtable_wrapper", "Virtual wrapper for the short quaternion-angle added-apply slot."),
    (0x00620DE0, 76, "quaternion_angle_char_apply_added", "Uses the shared reducer then dispatches through callback slot +0x9c."),
    (0x00620E2C, 28, "quaternion_angle_char_apply_added_vtable_wrapper", "Virtual wrapper for the char quaternion-angle added-apply slot."),
    (0x006275FC, 228, "scale_float3_blend_vtable_method", "Float3 scale weighted-sum implementation for getBlendedValue."),
    (0x0062B204, 228, "scale_float3_add_vtable_method", "Float3 scale weighted-sum implementation for getAddedValue."),
    (0x0062D634, 248, "scale_float3_apply_blended", "Reduces float3 values and dispatches through callback slot +0x94."),
    (0x0062D72C, 28, "scale_float3_apply_blended_vtable_wrapper", "Virtual wrapper for the float3 scale blended-apply slot."),
    (0x0062D748, 248, "scale_float3_apply_added", "Reduces float3 values and dispatches through callback slot +0x94."),
    (0x0062D840, 28, "scale_float3_apply_added_vtable_wrapper", "Virtual wrapper for the float3 scale added-apply slot."),
]


def sha(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def load_segments(elf: bytes) -> list[dict[str, int]]:
    if elf[:4] != b"\x7fELF" or elf[4] != 1 or elf[5] != 1:
        raise ValueError("target is not little-endian ELF32")
    machine = struct.unpack_from("<H", elf, 18)[0]
    if machine != 40:
        raise ValueError(f"expected ARM ELF machine 40, got {machine}")
    phoff = struct.unpack_from("<I", elf, 28)[0]
    phentsize, phnum = struct.unpack_from("<HH", elf, 42)
    segments = []
    for i in range(phnum):
        typ, off, va, _, filesz, memsz, flags, align = struct.unpack_from("<IIIIIIII", elf, phoff + i * phentsize)
        if typ == 1:
            segments.append({"p_offset": off, "p_vaddr": va, "p_filesz": filesz,
                             "p_memsz": memsz, "p_flags": flags, "p_align": align})
    return segments


def symbol_rows() -> dict[int, dict]:
    if not SYMBOL_INDEX.exists():
        return {}
    found = {}
    with SYMBOL_INDEX.open(newline="", encoding="utf-8-sig") as f:
        for row in csv.DictReader(f):
            va = int(row["address"])
            if va not in {spec[0] for spec in SPECS}:
                continue
            aliases = json.loads(row["aliases"])
            found[va] = {
                "range_size": int(row["range_size"]),
                "declared_size": int(row["declared_size"]),
                "end_inferred": row["end_inferred"].lower() == "true",
                "original_symbols": aliases,
                "symbol_index_class_group": row["class_group"],
                "symbol_index_assembly_file": row["assembly_file"],
            }
    return found


def main() -> None:
    apk_bytes = APK.read_bytes()
    apk_sha = sha(apk_bytes)
    if apk_sha != EXPECTED_APK_SHA256:
        raise SystemExit(f"APK SHA-256 mismatch: {apk_sha}")
    with zipfile.ZipFile(APK) as archive:
        if archive.namelist().count(ELF_MEMBER) != 1:
            raise SystemExit(f"expected exactly one {ELF_MEMBER} member")
        elf = archive.read(ELF_MEMBER)
    elf_sha = sha(elf)
    if elf_sha != EXPECTED_ELF_SHA256:
        raise SystemExit(f"ELF SHA-256 mismatch: {elf_sha}")
    if not ELF_COPY.exists() or sha(ELF_COPY.read_bytes()) != elf_sha:
        raise SystemExit("workspace ELF copy is absent or does not match the APK member")
    if not LLVM_OBJDUMP.exists() and shutil.which("llvm-objdump") is None:
        raise SystemExit("llvm-objdump was not found")
    objdump = str(LLVM_OBJDUMP if LLVM_OBJDUMP.exists() else shutil.which("llvm-objdump"))

    segments = load_segments(elf)
    index = symbol_rows()
    functions = []
    listing = []
    for va, size, name, claim in SPECS:
        mapped = next((s["p_offset"] + va - s["p_vaddr"] for s in segments
                       if s["p_vaddr"] <= va and va + size <= s["p_vaddr"] + s["p_filesz"]
                       and s["p_flags"] & 1), None)
        if mapped is None:
            raise ValueError(f"range is not wholly contained in an executable PT_LOAD: {name}")
        symbol = index.get(va, {})
        if symbol and symbol["range_size"] != size:
            raise ValueError(f"function-index size mismatch at 0x{va:08x}: {symbol['range_size']} != {size}")
        row = {
            "name": name,
            "claim": claim,
            "elf_member": ELF_MEMBER,
            "address": f"0x{va:08x}",
            "range_size": size,
            "elf_file_offset": f"0x{mapped:x}",
            "range_sha256": sha(elf[mapped:mapped + size]),
        }
        row.update(symbol)
        functions.append(row)
        stop = va + size
        out = subprocess.run(
            [objdump, "-d", f"--start-address=0x{va:x}", f"--stop-address=0x{stop:x}", str(ELF_COPY)],
            check=True, capture_output=True, text=True,
        )
        listing.append(f"\n; ===== {name} [0x{va:08x}, 0x{stop:08x}) =====\n")
        listing.append(out.stdout.strip())
        listing.append("\n")

    doc = {
        "schema_version": 1,
        "description": "APK-backed ARM ranges for float scale-vector3 and float quaternion non-key blend/add reducers and apply routes.",
        "apk": {"sha256": apk_sha},
        "elf": {
            "apk_member": ELF_MEMBER,
            "size_bytes": len(elf),
            "sha256": elf_sha,
            "elf_class": 32,
            "endianness": "little",
            "machine": 40,
            "load_segments": [{k: f"0x{v:x}" for k, v in s.items()} for s in segments],
            "file_offset_formula": "p_offset + (elf_virtual_address - p_vaddr)",
        },
        "functions": functions,
    }
    (HERE.parent / "functions.json").write_text(json.dumps(doc, indent=2) + "\n", encoding="utf-8")
    reference = HERE.parent / "reference" / "blend-add.asm"
    reference.parent.mkdir(parents=True, exist_ok=True)
    reference.write_text("\n".join(listing), encoding="utf-8")
    print(f"captured {len(functions)} function ranges from {ELF_MEMBER}")
    print(f"APK sha256: {apk_sha}")
    print(f"ELF sha256: {elf_sha}")


if __name__ == "__main__":
    main()
