#!/usr/bin/env python3
"""Generate the APK-byte-backed component blend/add evidence package."""

from __future__ import annotations

import csv
import hashlib
import json
import re
import subprocess
from pathlib import Path


ROOT = Path("work/DH_sc")
OUT = ROOT / "port/engine-animation/typed-tracks/component-audit"
ELF_PATH = ROOT / "work/libDungeonHunter2.so"
SYMBOL_ROOT = Path(
    "work/recovery/dh2-reconstruction/recovered/native/symbols/libDungeonHunter2.so"
)
EXPECTED_APK_SHA256 = "32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200"
EXPECTED_ELF_SHA256 = "36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80"
OBJDUMP = r"C:\Program Files\LLVM\bin\llvm-objdump.exe"


def main() -> None:
    OUT.mkdir(parents=True, exist_ok=True)
    elf = ELF_PATH.read_bytes()
    elf_sha = hashlib.sha256(elf).hexdigest()
    if elf_sha != EXPECTED_ELF_SHA256:
        raise RuntimeError(f"ELF digest mismatch: {elf_sha}")

    with (SYMBOL_ROOT / "function-index.csv").open(encoding="utf-8", newline="") as f:
        function_rows = list(csv.DictReader(f))
    function_by_va = {int(row["address"]): row for row in function_rows}
    vtable_rows = json.loads(
        (SYMBOL_ROOT / "vtables-001.json").read_text(encoding="utf-8")
    )

    # PT_LOAD mappings from the APK ELF program headers. All selected code and
    # vtable slices are file-backed in one of these two segments.
    def file_offset(va: int, size: int) -> int:
        if 0 <= va and va + size <= 0x955130:
            return va
        if 0x956130 <= va and va + size <= 0x956130 + 0x4954C:
            return 0x955130 + (va - 0x956130)
        raise ValueError(f"range is not file-backed: {va:#x}+{size:#x}")

    def range_hash(va: int, size: int) -> tuple[int, str]:
        offset = file_offset(va, size)
        return offset, hashlib.sha256(elf[offset : offset + size]).hexdigest()

    def aliases_for(row: dict) -> list[str]:
        return [
            alias.get("demangled", alias.get("name", ""))
            for alias in json.loads(row["aliases"])
        ]

    registry: dict[int, dict] = {}

    def add_function(va: int) -> dict:
        if va in registry:
            return registry[va]
        row = function_by_va.get(va)
        if row is None:
            raise KeyError(f"function-index is missing {va:#x}")
        size = int(row["range_size"])
        offset, digest = range_hash(va, size)
        record = {
            "va": f"0x{va:08x}",
            "file_offset": f"0x{offset:08x}",
            "size": size,
            "sha256": digest,
            "aliases": aliases_for(row),
        }
        registry[va] = record
        return record

    def disassemble(va: int, size: int) -> str:
        result = subprocess.run(
            [
                OBJDUMP,
                "-d",
                f"--start-address=0x{va:x}",
                f"--stop-address=0x{va + size:x}",
                str(ELF_PATH),
            ],
            check=True,
            capture_output=True,
            text=True,
        )
        kept = []
        for line in result.stdout.splitlines():
            if re.match(r"^\s*[0-9a-f]+(?: <.*>)?:\s*$", line):
                kept.append(line.rstrip())
            elif re.match(r"^\s*[0-9a-f]+:\s+[0-9a-f ]{8,}", line):
                kept.append(line.rstrip())
        return "\n".join(kept)

    def tail_branch_target(va: int, size: int) -> int:
        text = disassemble(va, size)
        matches = re.findall(r"\bb\s+0x([0-9a-fA-F]+)", text)
        if not matches:
            raise ValueError(f"apply trampoline {va:#x} has no direct branch")
        return int(matches[-1], 16)

    scalar_tracks = []
    material_tracks = []
    slot_layout = [
        ("get_blended", 0x18),
        ("get_added", 0x1C),
        ("apply_blended", 0x20),
        ("apply_added", 0x24),
    ]

    for table in vtable_rows:
        demangled = table.get("demangled", "")
        track_kind = None
        name = None
        variant: dict

        if (
            "CSceneNodePositionComponentMixin<" in demangled
            or "CSceneNodeScaleComponentMixin<" in demangled
        ):
            match = re.search(
                r"CSceneNode(Position|Scale)([XYZ])Ex<(char|short|float)>,\s*(\d+),\s*(char|short|float)>",
                demangled,
            )
            if not match:
                raise ValueError(f"cannot parse scalar vtable: {demangled}")
            family, axis, scalar, component, _ = match.groups()
            track_kind = "scalar_component"
            name = f"{family.lower()}_{axis.lower()}_{scalar}"
            variant = {
                "transform": family.lower(),
                "axis": axis.lower(),
                "scalar_template": scalar,
                "component_template": int(component),
                "reduction_value_type": "float3",
            }
        elif "SMaterialSetParam<" in demangled and "CApplyValueEx<" in demangled:
            shapes = [
                ("SAnimationTypes<float, float>", "float", 1),
                ("SAnimationTypes<float [2], float [2]>", "float", 2),
                ("SAnimationTypes<float [3], float [3]>", "float", 3),
                ("SAnimationTypes<float [4], float [4]>", "float", 4),
                (
                    "SAnimationTypes<unsigned char [3], glitch::video::SColor>",
                    "u8",
                    3,
                ),
                (
                    "SAnimationTypes<unsigned char [4], glitch::video::SColor>",
                    "u8",
                    4,
                ),
            ]
            found = next((item for item in shapes if item[0] in demangled), None)
            if found is None:
                continue
            _, value_type, arity = found
            components = re.findall(
                r",\s*(-?\d+),\s*(?:float|unsigned char)>", demangled
            )
            if not components:
                raise ValueError(f"cannot parse material component: {demangled}")
            component = int(components[-1])
            track_kind = "material_parameter"
            name = f"material_{value_type}{arity}_component_{component}"
            variant = {
                "value_type": value_type,
                "value_arity": arity,
                "component_template": component,
                "reduction_value_type": "float" if value_type == "u8" else f"float{arity}",
            }
        else:
            continue

        if int(table["size"]) != 152:
            raise ValueError(f"unexpected vtable size for {name}: {table['size']}")
        table_va = int(table["address"])
        table_off, table_sha = range_hash(table_va, 152)
        entries = {int(entry["offset"]): entry for entry in table["entries"]}
        route = {
            "name": name,
            "family": track_kind,
            "variant": variant,
            "class_demangled": demangled,
            "vtable_va": f"0x{table_va:08x}",
            "size": 152,
            "file_offset": f"0x{table_off:08x}",
            "address_point_va": f"0x{table_va + 8:08x}",
            "sha256": table_sha,
            "slots": [],
        }
        for slot_name, slot_offset in slot_layout:
            target = int(entries[slot_offset]["raw_word"])
            target_record = add_function(target)
            slot = {
                "method": slot_name,
                "full_vtable_offset": f"0x{slot_offset:02x}",
                "object_vptr_offset": f"0x{slot_offset - 8:02x}",
                "target_va": target_record["va"],
                "target_size": target_record["size"],
                "target_sha256": target_record["sha256"],
                "target_symbol": target_record["aliases"][0],
            }
            if slot_name.startswith("apply_") and target_record["size"] == 28:
                helper_va = tail_branch_target(target, target_record["size"])
                helper_record = add_function(helper_va)
                slot.update(
                    {
                        "helper_va": helper_record["va"],
                        "helper_size": helper_record["size"],
                        "helper_sha256": helper_record["sha256"],
                        "helper_symbol": helper_record["aliases"][0],
                    }
                )
            route["slots"].append(slot)
        (scalar_tracks if track_kind == "scalar_component" else material_tracks).append(route)

    scalar_tracks.sort(key=lambda x: x["name"])
    material_tracks.sort(key=lambda x: x["name"])
    if len(scalar_tracks) != 18 or len(material_tracks) != 17:
        raise RuntimeError(f"unexpected table counts: {len(scalar_tracks)}, {len(material_tracks)}")

    # Factory references and cache layout. Repeated offsets are aliases to the
    # same singleton object, as shown by repeated calls/stores in the ARM body.
    singleton_specs = [
        ("float", 1, -1, 0x61110C, [0x10, 0x14]),
        ("float", 2, -1, 0x6115AC, [0x24]),
        ("float", 2, 0, 0x6111A0, [0x28]),
        ("float", 2, 1, 0x611234, [0x2C]),
        ("float", 3, -1, 0x611640, [0x38]),
        ("float", 3, 0, 0x6112C8, [0x3C, 0x40, 0x44]),
        ("float", 4, -1, 0x6116D4, [0x4C]),
        ("float", 4, 0, 0x61135C, [0x50]),
        ("float", 4, 1, 0x6113F0, [0x54]),
        ("float", 4, 2, 0x611484, [0x58]),
        ("float", 4, 3, 0x611518, [0x5C]),
        ("u8", 3, -1, 0x611A4C, []),
        ("u8", 4, -1, 0x6119B8, []),
        ("u8", 4, 0, 0x611768, []),
        ("u8", 4, 1, 0x6117FC, []),
        ("u8", 4, 2, 0x611890, []),
        ("u8", 4, 3, 0x611924, []),
    ]
    table_by_key = {}
    for route in material_tracks:
        v = route["variant"]
        table_by_key[(v["value_type"], v["value_arity"], v["component_template"])] = route
    singleton_routes = []
    for value_type, arity, component, va, cache_offsets in singleton_specs:
        route = table_by_key[(value_type, arity, component)]
        init = add_function(va)
        singleton_routes.append(
            {
                "value_type": value_type,
                "arity": arity,
                "component": component,
                "get_instance_va": init["va"],
                "get_instance_size": init["size"],
                "get_instance_sha256": init["sha256"],
                "vtable_va": route["vtable_va"],
                "factory_cache_word_offsets": [f"0x{x:02x}" for x in cache_offsets],
            }
        )

    factory = add_function(0x611AE0)
    dependencies = {
        "float1_setter": 0x5C6B8C,
        "float2_setter": 0x5C6C60,
        "float3_setter": 0x5C6D34,
        "float4_setter": 0x5CE768,
        "scolor_setter": 0x5CAD38,
        "float_to_unsigned_int": 0x8BE2A0,
    }
    setter_dependencies = []
    for label, va in dependencies.items():
        record = add_function(va)
        setter_dependencies.append({"role": label, **record})

    # Captured exact function slices: every reducer/apply slot, any apply
    # trampoline callee, relevant setters/conversion routine, factory, and all
    # material getInstance functions.
    function_records = sorted(registry.values(), key=lambda row: int(row["va"], 16))
    assembly = [
        "; APK-backed ARM32 disassembly for scalar transform and material parameter non-key routes.",
        "; Each block is bounded to the exact function slice hashed in functions.json.",
        "; Vtable slices and selected slot words are recorded in vtables.json.",
        "",
    ]
    for record in function_records:
        va = int(record["va"], 16)
        assembly.extend(
            [
                f"; FUNCTION {record['va']} size={record['size']} sha256={record['sha256']}",
                "; symbols: " + " | ".join(record["aliases"][:3]),
                disassemble(va, record["size"]),
                "",
            ]
        )
    (OUT / "apk-arm-disassembly.asm").write_text("\n".join(assembly), encoding="utf-8")

    (OUT / "functions.json").write_text(
        json.dumps(
            {
                "schema_version": 1,
                "description": "APK-byte-backed ranges for scalar position/scale and material-parameter blend/add routes, apply helpers, setters, factory and material singleton initializers.",
                "apk": {"sha256": EXPECTED_APK_SHA256},
                "elf": {
                    "apk_member": "lib/armeabi-v7a/libDungeonHunter2.so",
                    "package_relative_copy": "work/libDungeonHunter2.so",
                    "size_bytes": len(elf),
                    "sha256": elf_sha,
                    "file_backed_load_segments": [
                        {"p_offset": "0x0", "p_vaddr": "0x0", "p_filesz": "0x955130"},
                        {"p_offset": "0x955130", "p_vaddr": "0x956130", "p_filesz": "0x4954c"},
                    ],
                    "file_offset_formula": "p_offset + (VA - p_vaddr)",
                },
                "disassembly": "apk-arm-disassembly.asm",
                "functions": function_records,
                "counts": {
                    "scalar_component_vtables": len(scalar_tracks),
                    "material_parameter_vtables": len(material_tracks),
                    "unique_function_ranges": len(function_records),
                },
            },
            indent=2,
        )
        + "\n",
        encoding="utf-8",
    )

    (OUT / "vtables.json").write_text(
        json.dumps(
            {
                "schema_version": 1,
                "description": "Exact APK-derived 152-byte CVirtualEx vtable slices and non-key slots.",
                "elf_sha256": elf_sha,
                "slot_layout": {
                    "full_vtable_offsets": {
                        "get_blended": "0x18",
                        "get_added": "0x1c",
                        "apply_blended": "0x20",
                        "apply_added": "0x24",
                    },
                    "object_vptr_offsets": {
                        "get_blended": "0x10",
                        "get_added": "0x14",
                        "apply_blended": "0x18",
                        "apply_added": "0x1c",
                    },
                    "itanium_header_size": 8,
                },
                "table_count": len(scalar_tracks) + len(material_tracks),
                "hash_scope": "SHA-256 over the exact 152 bytes from the mapped ELF file offset.",
                "scalar_component_vtables": scalar_tracks,
                "material_parameter_vtables": material_tracks,
            },
            indent=2,
        )
        + "\n",
        encoding="utf-8",
    )

    (OUT / "factory.json").write_text(
        json.dumps(
            {
                "schema_version": 1,
                "description": "APK-backed material-track selection routes; numeric record fields remain unnamed where schema semantics are unresolved.",
                "elf_sha256": elf_sha,
                "factory_function": factory,
                "dispatch": {
                    "material_outer_case_va": "0x00611c60",
                    "case_after_one_based_adjustment": 86,
                    "material_discriminator_va": "0x00611c88",
                    "float_cache_lookup_va": "0x00611f9c",
                    "float_cache_init_va": "0x00612074",
                    "color_shape_dispatch_va": "0x00611e70",
                    "observed_numeric_flow": [
                        "The outer switch reaches the material branch at 0x611c60.",
                        "The branch reads a nested value at [r2+0x10] and secondary selector at [r2+0x14].",
                        "The float route initializes and indexes a singleton table of float tracks.",
                        "The color route selects U8[3]/U8[4] SColor track specializations.",
                    ],
                    "field_semantics": "The nested numeric fields' source names and serialized meanings remain unresolved.",
                },
                "float_cache_word_offsets": {
                    "0x10": "float1 component -1",
                    "0x14": "float1 component -1 (same singleton)",
                    "0x24": "float2 component -1",
                    "0x28": "float2 component 0",
                    "0x2c": "float2 component 1",
                    "0x38": "float3 component -1",
                    "0x3c": "float3 component 0",
                    "0x40": "float3 component 0 (same singleton)",
                    "0x44": "float3 component 0 (same singleton)",
                    "0x4c": "float4 component -1",
                    "0x50": "float4 component 0",
                    "0x54": "float4 component 1",
                    "0x58": "float4 component 2",
                    "0x5c": "float4 component 3",
                },
                "singleton_initializers": singleton_routes,
                "material_setter_dependencies": setter_dependencies,
                "disassembly": "apk-arm-disassembly.asm",
                "vtable_matrix": "vtables.json",
            },
            indent=2,
        )
        + "\n",
        encoding="utf-8",
    )

    print(
        f"Generated {OUT}: {len(scalar_tracks)} scalar tables, "
        f"{len(material_tracks)} material tables, {len(function_records)} exact function ranges."
    )


if __name__ == "__main__":
    main()
