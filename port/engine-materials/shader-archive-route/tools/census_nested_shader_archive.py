#!/usr/bin/env python3
"""Match one BRES pass's shader filenames/prefixes to a nested cache archive."""

from __future__ import annotations

import argparse
import hashlib
import io
import json
import re
import zipfile
from pathlib import Path


def sha256(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def file_sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as source:
        for block in iter(lambda: source.read(1024 * 1024), b""):
            digest.update(block)
    return digest.hexdigest()


def entry_record(archive: zipfile.ZipFile, info: zipfile.ZipInfo) -> dict[str, object]:
    data = archive.read(info)
    return {
        "name": info.filename,
        "size_bytes": info.file_size,
        "crc32": f"{info.CRC:08x}",
        "compression_method": info.compress_type,
        "sha256": sha256(data),
    }


def archive_candidates(archive: zipfile.ZipFile) -> list[dict[str, object]]:
    signatures = (
        (b"PK\x03\x04", "zip-local-header"),
        (b"PK\x05\x06", "zip-empty-archive"),
        (b"PK\x07\x08", "zip-spanned-marker"),
        (b"7z\xbc\xaf\x27\x1c", "7z"),
        (b"Rar!", "rar"),
        (b"\x1f\x8b\x08", "gzip"),
    )
    archive_suffixes = {".zip", ".pak", ".obb", ".apk", ".jar", ".7z", ".rar", ".gz"}
    candidates = []
    for info in archive.infolist():
        with archive.open(info) as member:
            header = member.read(8)
        signature_matches = [label for signature, label in signatures if header.startswith(signature)]
        suffix = Path(info.filename).suffix.lower()
        if signature_matches or suffix in archive_suffixes:
            candidates.append(
                {
                    "name": info.filename,
                    "size_bytes": info.file_size,
                    "first_8_bytes_hex": header.hex(),
                    "signature_matches": signature_matches,
                    "archive_suffix": suffix if suffix in archive_suffixes else None,
                }
            )
    return candidates


def main() -> int:
    tool_dir = Path(__file__).resolve().parent
    audit_dir = tool_dir.parent
    engine_materials_dir = audit_dir.parent

    parser = argparse.ArgumentParser()
    parser.add_argument("apk", type=Path)
    parser.add_argument("cache_zip", type=Path)
    parser.add_argument(
        "--pass-route",
        type=Path,
        default=engine_materials_dir / "pass-record-route" / "corpus-route.json",
    )
    parser.add_argument(
        "--output",
        type=Path,
        default=audit_dir / "archive-census.json",
    )
    args = parser.parse_args()

    route = json.loads(args.pass_route.read_text(encoding="utf-8"))
    selected_pass = route["effect"]["selected_pass"]
    pass_strings = selected_pass["strings_at_offsets_read_by_SProfileGLES2Traits_createShader"]

    apk_shader_members: list[str] = []
    elf_member = "lib/armeabi-v7a/libDungeonHunter2.so"
    with zipfile.ZipFile(args.apk) as apk:
        apk_archive_candidates = archive_candidates(apk)
        apk_shader_members = [
            info.filename
            for info in apk.infolist()
            if "shader" in info.filename.lower()
            or info.filename.lower().endswith((".pak", ".glsl", ".vert", ".frag", ".vsh", ".fsh"))
        ]
        elf_bytes = apk.read(elf_member)
        apk_entry_count = len(apk.infolist())

    bdae_suffix = "3d/animateddecors/castle/chandelier_castle.bdae"
    pak_suffix = "files/shaders.pak"
    with zipfile.ZipFile(args.cache_zip) as cache:
        cache_archive_candidates = archive_candidates(cache)
        cache_infos = cache.infolist()
        bdae_matches = [info for info in cache_infos if info.filename.endswith(bdae_suffix)]
        pak_matches = [info for info in cache_infos if info.filename.endswith(pak_suffix)]
        direct_shader_members = [
            info.filename
            for info in cache_infos
            if info.filename.lower().endswith((".glsl", ".vert", ".frag", ".vsh", ".fsh"))
        ]
        if len(bdae_matches) != 1:
            raise SystemExit(f"expected one cached BDAE match, found {len(bdae_matches)}")
        if len(pak_matches) != 1:
            raise SystemExit(f"expected one nested shader package match, found {len(pak_matches)}")

        bdae_info = bdae_matches[0]
        bdae_bytes = cache.read(bdae_info)
        pak_info = pak_matches[0]
        pak_bytes = cache.read(pak_info)

    with zipfile.ZipFile(args.cache_zip) as cache:
        outer_bdae = entry_record(cache, bdae_info)
        outer_pak = entry_record(cache, pak_info)

    with zipfile.ZipFile(io.BytesIO(pak_bytes)) as shaders:
        infos = shaders.infolist()
        names = [info.filename for info in infos]
        duplicates = sorted({name for name in names if names.count(name) > 1})
        bad_crc = shaders.testzip()
        exact_matches: dict[str, dict[str, object] | None] = {}
        for key in ("component_1", "component_3"):
            wanted = pass_strings[key]["value"]
            matches = [info for info in infos if info.filename == wanted]
            if len(matches) > 1:
                raise SystemExit(f"duplicate shader entry: {wanted}")
            exact_matches[key] = entry_record(shaders, matches[0]) if matches else None

        shader_texts = {
            key: shaders.read(match["name"]).decode("utf-8")
            for key, match in exact_matches.items()
            if match is not None
        }
        nested_entry_records = [entry_record(shaders, info) for info in infos]
        package_archive_candidates = archive_candidates(shaders)

    prefix_report: dict[str, dict[str, object]] = {}
    pairs = (
        ("vertex", "component_2", "component_1"),
        ("fragment", "component_4", "component_3"),
    )
    for stage, prefix_key, filename_key in pairs:
        prefix_value = pass_strings[prefix_key]["value"]
        filename = pass_strings[filename_key]["value"]
        source = shader_texts.get(filename_key, "")
        macro_names = re.findall(r"(?m)^\s*#\s*define\s+([A-Za-z_][A-Za-z0-9_]*)", prefix_value)
        macro_uses: dict[str, list[dict[str, object]]] = {}
        for macro in macro_names:
            conditionals = []
            for line_number, line in enumerate(source.splitlines(), 1):
                if re.search(rf"^\s*#\s*(?:if|ifdef|ifndef)\b.*\b{re.escape(macro)}\b", line):
                    conditionals.append({"line": line_number, "text": line.strip()})
            macro_uses[macro] = conditionals
        prefix_report[stage] = {
            "filename": filename,
            "prefix": prefix_value,
            "prefix_sha256_with_nul": sha256(prefix_value.encode("utf-8") + b"\x00"),
            "defines": macro_names,
            "matching_source_conditionals": macro_uses,
            "native_source_order": "prefix string precedes loaded file contents in createShaderCode's source-pointer list",
        }

    result = {
        "source_inputs": {
            "apk": {
                "path": str(args.apk),
                "size_bytes": args.apk.stat().st_size,
                "sha256": file_sha256(args.apk),
            "zip_entry_count": apk_entry_count,
            "shader_related_direct_entries": apk_shader_members,
            "nested_archive_candidates": apk_archive_candidates,
            },
            "elf_member": {
                "name": elf_member,
                "size_bytes": len(elf_bytes),
                "sha256": sha256(elf_bytes),
            },
            "recovered_cache_zip": {
                "path": str(args.cache_zip),
                "size_bytes": args.cache_zip.stat().st_size,
                "sha256": file_sha256(args.cache_zip),
            },
        },
        "same_cache_bdae": outer_bdae,
        "outer_cache_zip": {
            "entry_count": len(cache_infos),
            "direct_shader_source_entry_count": len(direct_shader_members),
            "direct_shader_source_entries": direct_shader_members,
            "nested_archive_candidates": cache_archive_candidates,
            "nested_shader_package": outer_pak,
        },
        "nested_shader_zip": {
            "entry_count": len(infos),
            "glsl_entry_count": sum(info.filename.lower().endswith(".glsl") for info in infos),
            "non_glsl_entry_names": [info.filename for info in infos if not info.filename.lower().endswith(".glsl")],
            "bad_crc_member": bad_crc,
            "duplicate_names": duplicates,
            "nested_archive_candidates": package_archive_candidates,
            "entries": nested_entry_records,
        },
        "pass_route": {
            "bdae_sha256": route["source"]["sha256"],
            "record_offset": selected_pass["offset"],
            "record_sha256": selected_pass["bytes_sha256"],
            "fields": pass_strings,
            "exact_filename_matches": exact_matches,
            "prefixes": prefix_report,
            "native_source_ranges": [
                {
                    "function": "SProfileGLES2Traits::createShader",
                    "elf_va": "0x00634b30",
                    "size_bytes": 308,
                    "sha256": "b8c161d864042f4f4e74803848cb6f907b69b3ceeebae5aa25bb994cd1669684",
                },
                {
                    "function": "CGLSLShaderManager::createShader",
                    "elf_va": "0x006e01b4",
                    "size_bytes": 404,
                    "sha256": "b53f059259f1e2b65fd6dac8e81801c9d07a8b159bd13dfc949c6693b2163b66",
                },
                {
                    "function": "CGLSLShaderManager::createShaderCode",
                    "elf_va": "0x006dfe68",
                    "size_bytes": 844,
                    "sha256": "2fc259ff52a2b2287740bc95ff033c95f37c0b396b7a9998df6657576cdc813d",
                },
            ],
        },
        "limits": [
            "A matching cache member and BRES pass record prove archive/source name correspondence, not that the game opened this archive in a particular session.",
            "The shader source bytes and prefix order are recovered, but device compilation, linking, technique selection, draw use, and visual output are not proven.",
        ],
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(result, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    print(f"cache_entries={len(cache_infos)} nested_entries={len(infos)} nested_bad_crc={bad_crc}")
    print(f"same_cache_bdae_sha256={outer_bdae['sha256']}")
    for key, value in exact_matches.items():
        print(f"{key}={value['name'] if value else 'MISSING'} sha256={value['sha256'] if value else 'n/a'}")
    print(f"wrote={args.output}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
