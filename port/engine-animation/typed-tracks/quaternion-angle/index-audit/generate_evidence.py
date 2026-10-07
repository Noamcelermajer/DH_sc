#!/usr/bin/env python3
"""Regenerate the isolated quaternion-angle index/default evidence bundle."""
from __future__ import annotations

import hashlib
import json
import re
import struct
import zipfile
from collections import Counter
from pathlib import Path


HERE = Path(__file__).resolve().parent
WORKSPACE = HERE.parents[6]
REPO = WORKSPACE / "work" / "DH_sc"
APK = Path(r"Dungeon-Hunter-2-HD-v1-0-2.apk")
ELF_PATH = REPO / "work" / "libDungeonHunter2.so"
ELF_MEMBER = "lib/armeabi-v7a/libDungeonHunter2.so"
EXPECTED_APK_SHA256 = "32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200"
EXPECTED_ELF_SHA256 = "36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80"

ASM_FILES = [
    REPO / "port/engine-animation/typed-tracks/quaternion-angle/reference/quaternion-angle-functions.asm",
    WORKSPACE / "work/recovery/dh2-reconstruction/recovered/native/assembly/libDungeonHunter2.so/glitch_collada_animation_track_CInterpreterQuaternionAngle_glitch_collada_animation_track_-bc0a4b32386a-001.asm",
    WORKSPACE / "work/recovery/dh2-reconstruction/recovered/native/assembly/libDungeonHunter2.so/glitch_collada_animation_track_CInterpreterQuaternionAngle_glitch_collada_animation_track_-7a07b83b2ec9-001.asm",
    WORKSPACE / "work/recovery/dh2-reconstruction/recovered/native/assembly/libDungeonHunter2.so/glitch_collada_animation_track_CInterpreterQuaternionAngle_glitch_collada_animation_track_-90365ac1a7c5-001.asm",
    WORKSPACE / "work/recovery/dh2-reconstruction/recovered/native/assembly/libDungeonHunter2.so/glitch_collada_animation_track_CVirtualEx_glitch_collada_animation_track_CApplyValueEx_gli-c208f587cbc3-001.asm",
    WORKSPACE / "work/recovery/dh2-reconstruction/recovered/native/assembly/libDungeonHunter2.so/glitch_collada_animation_track_CVirtualEx_glitch_collada_animation_track_CApplyValueEx_gli-907653e2c2f0-001.asm",
    WORKSPACE / "work/recovery/dh2-reconstruction/recovered/native/assembly/libDungeonHunter2.so/glitch_collada_animation_track_CVirtualEx_glitch_collada_animation_track_CApplyValueEx_gli-ff3f68d5b483-001.asm",
    WORKSPACE / "work/recovery/dh2-reconstruction/recovered/native/assembly/libDungeonHunter2.so/glitch_collada_CAnimationTrackEx-3b337e928626-001.asm",
    WORKSPACE / "work/recovery/dh2-reconstruction/recovered/native/assembly/libDungeonHunter2.so/glitch_collada_SAnimationAccessor-dd6bb90af5fe-001.asm",
    WORKSPACE / "work/recovery/dh2-reconstruction/recovered/native/assembly/libDungeonHunter2.so/glitch_core_quaternion-0c307365cc58-001.asm",
    WORKSPACE / "work/recovery/dh2-reconstruction/recovered/native/assembly/libDungeonHunter2.so/glitch_collada_CAnimationSet-b1d6a1ba6c69-001.asm",
]


def spec(va: int, name: str, claim: str) -> dict:
    return {"va": va, "name": name, "claim": claim}


SPECS = [
    spec(0x00611AE0, "track_factory", "Selects the quaternion-angle track family for channel codes 6-9 and the scalar template."),
    spec(0x006601FC, "animation_set_add_animation", "Caller that evaluates channel descriptors and calls the track factory for an SAnimation."),
    spec(0x006E307C, "track_get_value_single_index", "Searches time sampler 0 and dispatches ordinary direct/interpolated typed value retrieval."),
    spec(0x006E2DBC, "track_get_value_indexed", "Searches time sampler 0 and dispatches the indexed quaternion-angle value route."),
    spec(0x0066AF34, "accessor_find_key_frame_no", "Uses its explicit sampler-index argument when resolving a time vector."),
    spec(0x0066B814, "accessor_find_key_frame_no_extended", "Extended key search with explicit sampler-index argument and additional mode input."),
    spec(0x00669E24, "accessor_get_output", "Resolves one output vector through the selected 28-byte sampler record."),
    spec(0x00669E44, "accessor_get_channel", "Returns an SChannel record using a 16-byte stride."),
    spec(0x00669E54, "accessor_has_default_value", "Tests whether the SAnimation default-value pointer is non-null."),
    spec(0x00669E68, "accessor_get_default_value", "Returns the default-value payload pointer."),
    spec(0x0061F51C, "angle_float_direct_scalar", "Float angle sampler; no-default branch stores only the scalar at output byte 0."),
    spec(0x0061F898, "angle_float_interpolated_scalar", "Float two-key angle sampler; no-default branch stores only the interpolated scalar at output byte 0."),
    spec(0x00614A90, "angle_short_direct_scalar", "Signed-short angle sampler; no-default branch stores only the decoded scalar at output byte 0."),
    spec(0x00614B38, "angle_short_interpolated_scalar", "Signed-short two-key angle sampler; no-default branch stores only the decoded/interpolated scalar at output byte 0."),
    spec(0x00614C44, "angle_char_direct_scalar", "Signed-char angle sampler; no-default branch stores only the decoded scalar at output byte 0."),
    spec(0x00614CE8, "angle_char_interpolated_scalar", "Signed-char two-key angle sampler; no-default branch stores only the decoded/interpolated scalar at output byte 0."),
    spec(0x0061F594, "angle_float_to_quaternion_direct", "Initializes xyz only, invokes the float scalar sampler, then reads lane 3 as the angle."),
    spec(0x0061F94C, "angle_float_to_quaternion_interpolated", "Initializes xyz only, invokes the float two-key sampler, then reads lane 3 as the angle."),
    spec(0x00618064, "angle_short_to_quaternion_direct", "Initializes xyz only, invokes the short scalar sampler, then reads lane 3 as the angle."),
    spec(0x006180B4, "angle_short_to_quaternion_interpolated", "Initializes xyz only, invokes the short two-key sampler, then reads lane 3 as the angle."),
    spec(0x006183C0, "angle_char_to_quaternion_direct", "Initializes xyz only, invokes the char scalar sampler, then reads lane 3 as the angle."),
    spec(0x00618410, "angle_char_to_quaternion_interpolated", "Initializes xyz only, invokes the char two-key sampler, then reads lane 3 as the angle."),
    spec(0x0061F5D4, "float_direct_virtual_wrapper", "Normal direct-key vtable thunk into the float quaternion-angle interpreter."),
    spec(0x0061F988, "float_interpolated_virtual_wrapper", "Normal interpolated-key vtable thunk into the float quaternion-angle interpreter."),
    spec(0x006180A4, "short_direct_virtual_wrapper", "Normal direct-key vtable thunk into the short quaternion-angle interpreter."),
    spec(0x006180F0, "short_interpolated_virtual_wrapper", "Normal interpolated-key vtable thunk into the short quaternion-angle interpreter."),
    spec(0x00618400, "char_direct_virtual_wrapper", "Normal direct-key vtable thunk into the char quaternion-angle interpreter."),
    spec(0x006184BC, "char_interpolated_virtual_wrapper", "Normal interpolated-key vtable thunk into the char quaternion-angle interpreter."),
    spec(0x0061F6E0, "float_indexed_direct_virtual_wrapper", "Forwards the extra index and key index into the float indexed interpreter."),
    spec(0x0061F874, "float_indexed_interpolated_virtual_wrapper", "Forwards the extra index, key bounds, fraction, and output into the float indexed interpreter."),
    spec(0x00618208, "short_indexed_direct_virtual_wrapper", "Forwards the extra index and key index into the short indexed interpreter."),
    spec(0x0061839C, "short_indexed_interpolated_virtual_wrapper", "Forwards the extra index, key bounds, fraction, and output into the short indexed interpreter."),
    spec(0x006185D4, "char_indexed_direct_virtual_wrapper", "Forwards the extra index and key index into the char indexed interpreter."),
    spec(0x00618768, "char_indexed_interpolated_virtual_wrapper", "Forwards the extra index, key bounds, fraction, and output into the char indexed interpreter."),
    spec(0x0061F5E4, "float_indexed_direct_relative_rotation", "Samples two key indices from output 0 and composes a relative quaternion."),
    spec(0x0061F6F4, "float_indexed_interpolated_relative_rotation", "Samples three key indices from output 0, slerps two, and composes relative to the third."),
    spec(0x0061810C, "short_indexed_direct_relative_rotation", "Short analogue of the two-index relative quaternion route."),
    spec(0x0061821C, "short_indexed_interpolated_relative_rotation", "Short analogue of the three-index/slerp relative quaternion route."),
    spec(0x006184D8, "char_indexed_direct_relative_rotation", "Char analogue of the two-index relative quaternion route."),
    spec(0x006185E8, "char_indexed_interpolated_relative_rotation", "Char analogue of the three-index/slerp relative quaternion route."),
    spec(0x0060CDBC, "quaternion_from_angle_axis", "Converts angle plus xyz axis into a quaternion."),
    spec(0x0060DD34, "quaternion_multiply", "Quaternion product used by the relative indexed route."),
    spec(0x00612D00, "quaternion_slerp", "Quaternion slerp used by the indexed interpolated route."),
]


def sha(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def elf_loads(elf: bytes) -> list[dict]:
    if elf[:4] != b"\x7fELF" or elf[4] != 1 or elf[5] != 1:
        raise ValueError("expected little-endian ELF32")
    phoff = struct.unpack_from("<I", elf, 28)[0]
    phentsize, phnum = struct.unpack_from("<HH", elf, 42)
    loads = []
    for i in range(phnum):
        row = struct.unpack_from("<IIIIIIII", elf, phoff + i * phentsize)
        p_type, p_offset, p_vaddr, _p_paddr, p_filesz, p_memsz, p_flags, p_align = row
        if p_type == 1:
            loads.append({"offset": p_offset, "vaddr": p_vaddr, "filesz": p_filesz, "memsz": p_memsz, "flags": p_flags, "align": p_align})
    return loads


def source_blocks() -> dict[int, dict]:
    found: dict[int, dict] = {}
    function_header = re.compile(r"^; FUNCTION 0x([0-9a-fA-F]+), declared_size=(\d+), range_size=(\d+), mode=(\w+)$")
    address_row = re.compile(r"^([0-9a-fA-F]{8})\s+(.*)$")
    for path in ASM_FILES:
        lines = path.read_text(encoding="utf-8").splitlines()
        for i, line in enumerate(lines):
            h = function_header.match(line)
            if not h:
                continue
            va, size = int(h.group(1), 16), int(h.group(3))
            if va not in {x["va"] for x in SPECS}:
                continue
            j = i + 1
            while j < len(lines) and not function_header.match(lines[j]):
                j += 1
            raw = []
            rows = []
            for k in range(i, j):
                m = address_row.match(lines[k])
                if not m:
                    continue
                row_va = int(m.group(1), 16)
                if va <= row_va < va + size:
                    byte_tokens = []
                    for token in m.group(2).split():
                        if not re.fullmatch(r"[0-9a-fA-F]{2}", token):
                            break
                        byte_tokens.append(token)
                    if not byte_tokens:
                        continue
                    bs = bytes.fromhex(" ".join(byte_tokens))
                    rows.append((row_va, bs, k + 1, lines[k]))
                    raw.append(bs)
            listing_bytes = b"".join(x[1] for x in rows)
            header = lines[i:j]
            alias = next((x.split(": ", 1)[1] for x in header if x.startswith("; alias: ")), None)
            demangled = next((x.split(": ", 1)[1] for x in header if x.startswith("; demangled: ")), None)
            if va in found and found[va]["listing_bytes"] != listing_bytes:
                raise ValueError(f"conflicting copied listings for 0x{va:08x}")
            found[va] = {
                "size": size,
                "alias": alias,
                "demangled": demangled,
                "listing_bytes": listing_bytes,
                "rows": rows,
                "source": path.relative_to(WORKSPACE).as_posix(),
                "source_line_start": i + 1,
                "source_line_end": j,
                "function_header": header[:next((idx for idx, x in enumerate(header) if address_row.match(x)), len(header))],
            }
    return found


def load_corpus() -> dict:
    root = WORKSPACE / "work/cache-recovery/extracted/com.gameloft.android.GAND.GloftD2SS/files/data/3d"
    paths = sorted(root.rglob("*.bdae"))
    relations: Counter[str] = Counter()
    multi_relations: Counter[str] = Counter()
    multi_word0: Counter[int] = Counter()
    multi_types: Counter[int] = Counter()
    angle_counts: Counter[int] = Counter()
    angle_relations: Counter[str] = Counter()
    angle_defaults: Counter[str] = Counter()
    angle_offsets: Counter[str] = Counter()
    angle_multi = 0
    total_animations = 0
    examples = {}
    for path in paths:
        b = path.read_bytes()
        if len(b) < 60 or b[:4] != b"BRES" or struct.unpack_from("<I", b, 8)[0] != 60 or struct.unpack_from("<I", b, 12)[0] != len(b):
            raise ValueError(f"invalid BRES header in {path}")
        u = lambda off: struct.unpack_from("<I", b, off)[0]
        s = lambda off: struct.unpack_from("<i", b, off)[0]
        root_off = u(32)
        count, array = u(root_off + 0x24), u(root_off + 0x28)
        for ai in range(count):
            total_animations += 1
            ar = array + ai * 32
            sampler_count, sampler_off = u(ar + 4), u(ar + 8)
            channel_count, channel_off = u(ar + 12), u(ar + 16)
            relation = f"{channel_count}/{sampler_count}"
            relations[relation] += 1
            channel_rows = []
            for ci in range(channel_count):
                cr = channel_off + ci * 16
                channel_rows.append((s(cr), u(cr + 8)))
            types = [typ for _word, typ in channel_rows]
            is_angle = any(typ in (6, 7, 8, 9) for typ in types)
            if channel_count > 1 or sampler_count > 1:
                multi_relations[relation] += 1
                for word, typ in channel_rows:
                    multi_word0[word] += 1
                    multi_types[typ] += 1
            if is_angle:
                angle_relations[relation] += 1
                for typ in types:
                    if typ in (6, 7, 8, 9):
                        angle_counts[typ] += 1
                default = u(ar + 24)
                offset_scale = u(ar + 28)
                angle_defaults["present" if default else "absent"] += 1
                angle_offsets["present" if offset_scale else "absent"] += 1
                if channel_count > 1 or sampler_count > 1:
                    angle_multi += 1
            if path.name == "crypt_flame.bdae" and u(ar) and b.find(b"offsetV\0", u(ar)) == u(ar):
                # Keep a concrete ordinary multi-record example without relying on names for meaning.
                if relation == "2/2":
                    examples["multi_2_channel_2_sampler"] = {
                        "file": path.name,
                        "file_sha256": sha(b),
                        "animation_name": b[u(ar):b.find(b"\0", u(ar))].decode("utf-8", "replace"),
                        "channel_words_and_types": channel_rows,
                        "samplers": [
                            {
                                "index": i,
                                "time_entry": u(sampler_off + i * 28 + 12),
                                "output_entry": u(sampler_off + i * 28 + 24),
                            }
                            for i in range(sampler_count)
                        ],
                    }
    angle_file = root / "animateddecors/cin_king_gothicus_01.bdae"
    if angle_file.exists():
        census = json.loads((REPO / "port/engine-animation/typed-tracks/quaternion-angle/payload-audit/corpus-census.json").read_text(encoding="utf-8"))
        row = next((f for f in census["records"] if f["path"].replace("\\", "/").endswith("animateddecors/cin_king_gothicus_01.bdae")), None)
        rec = next((x for x in row["interesting"] if any(c["type"] == 9 for c in x["channels"])), None) if row else None
        if rec:
            examples["type9_one_channel_one_sampler_with_default"] = {
                "file": "animateddecors/cin_king_gothicus_01.bdae",
                "file_sha256": row["sha256"],
                "animation_name": rec["name"],
                "channel": rec["channels"][0],
                "sampler": rec["samplers"][0],
                "default_first_four_f32": rec["default"]["first_four_f32"],
                "first_output_keys": rec["segments"][0]["entries"][0]["vectors"][1]["first_values"],
            }
    return {
        "corpus_root": "work/cache-recovery/extracted/com.gameloft.android.GAND.GloftD2SS/files/data/3d",
        "bdae_file_count": len(paths),
        "animation_record_count": total_animations,
        "channel_sampler_relations": dict(sorted(relations.items())),
        "multi_channel_or_sampler_records": dict(sorted(multi_relations.items())),
        "multi_record_channel_word0_counts": {str(k): v for k, v in sorted(multi_word0.items())},
        "multi_record_channel_type_counts": {str(k): v for k, v in sorted(multi_types.items())},
        "quaternion_angle_channel_counts": {str(k): v for k, v in sorted(angle_counts.items())},
        "quaternion_angle_channel_sampler_relations": dict(sorted(angle_relations.items())),
        "quaternion_angle_default_pointer_presence": dict(sorted(angle_defaults.items())),
        "quaternion_angle_offset_scale_pointer_presence": dict(sorted(angle_offsets.items())),
        "quaternion_angle_multichannel_or_multisampler_records": angle_multi,
        "examples": examples,
    }


def main() -> None:
    apk_bytes = APK.read_bytes()
    if sha(apk_bytes) != EXPECTED_APK_SHA256:
        raise ValueError("user APK hash changed")
    with zipfile.ZipFile(APK) as zf:
        apk_elf = zf.read(ELF_MEMBER)
    elf = ELF_PATH.read_bytes()
    if sha(elf) != EXPECTED_ELF_SHA256 or sha(apk_elf) != EXPECTED_ELF_SHA256 or elf != apk_elf:
        raise ValueError("APK member and local ELF do not match the expected hash")
    loads = elf_loads(elf)
    copied = source_blocks()
    functions = []
    excerpt_lines = [
        "; Focused ARM32 evidence excerpt; instructions are copied from recovered listings.",
        f"; APK SHA-256: {EXPECTED_APK_SHA256}",
        f"; ELF SHA-256: {EXPECTED_ELF_SHA256}",
    ]
    for entry in SPECS:
        va = entry["va"]
        listed = copied.get(va)
        if listed is None:
            raise ValueError(f"no original assembly listing for 0x{va:08x}")
        size = listed["size"]
        mapping = next((p for p in loads if p["vaddr"] <= va and va + size <= p["vaddr"] + p["filesz"]), None)
        if mapping is None:
            raise ValueError(f"no file-backed PT_LOAD for 0x{va:08x}")
        file_off = mapping["offset"] + va - mapping["vaddr"]
        raw = elf[file_off:file_off + size]
        if len(raw) != size or listed["listing_bytes"] != raw:
            raise ValueError(f"copied listing does not byte-match ELF at 0x{va:08x}")
        functions.append({
            "name": entry["name"],
            "claim": entry["claim"],
            "original_symbol": listed["alias"],
            "demangled": listed["demangled"],
            "elf_virtual_address": f"0x{va:08x}",
            "elf_file_offset": f"0x{file_off:08x}",
            "elf_size_bytes": size,
            "function_slice_sha256": sha(raw),
            "source_listing": listed["source"],
            "source_listing_lines_1_based_inclusive": {
                "start": listed["source_line_start"],
                "end": listed["source_line_end"],
            },
            "listing_bytes_match_elf_slice": True,
        })
        excerpt_lines.append("")
        excerpt_lines.extend(listed["function_header"])
        excerpt_lines.extend(row[3] for row in listed["rows"])
    (HERE / "reference").mkdir(parents=True, exist_ok=True)
    asm_path = HERE / "reference" / "index-routes.asm"
    asm_path.write_text("\n".join(excerpt_lines) + "\n", encoding="utf-8", newline="\n")
    corpus = load_corpus()
    manifest = {
        "schema_version": 1,
        "description": "APK-backed ARM32 audit of quaternion-angle false-default behavior and index routing.",
        "apk": {"path": str(APK), "sha256": EXPECTED_APK_SHA256},
        "elf": {
            "apk_member": ELF_MEMBER,
            "size_bytes": len(elf),
            "sha256": EXPECTED_ELF_SHA256,
            "class": "ELF32",
            "endianness": "little",
            "machine": "ARM",
            "file_backed_load_segments": loads,
        },
        "assembly_excerpt": {"path": "reference/index-routes.asm", "sha256": sha(asm_path.read_bytes())},
        "functions": functions,
        "corpus": corpus,
        "interpretation_limits": [
            "Quaternion-angle codes 6-9 are only observed as code 9 in this BDAE corpus.",
            "The no-default route is supported by ARM bodies but no matching type-6-through-9 BDAE record was found in this corpus.",
            "The meaning of the extra integer in indexed CAnimationTrackEx/CInterpreterQuaternionAngle overloads is not inferred beyond its observed use as a key index into output vector zero.",
            "No general mapping from multi-channel SChannel records to multi-sampler SSampler records is established by this type-specific trace.",
        ],
        "verification": {
            "function_ranges": len(functions),
            "function_listing_ranges_byte_match": True,
            "apk_member_matches_local_elf": True,
            "corpus_parse_errors": 0,
        },
    }
    (HERE / "functions.json").write_text(json.dumps(manifest, indent=2) + "\n", encoding="utf-8", newline="\n")
    print(f"wrote {len(functions)} byte-verified ARM32 ranges and corpus counts")


if __name__ == "__main__":
    main()
