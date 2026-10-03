#!/usr/bin/env python3
"""Build and run the renderer-neutral Prince source/skinning host test.

The asset input may be the packaged ``assets`` directory, a staged directory
with ``models/`` and ``animations/``, or an extracted game cache/files tree.
The test only reads these inputs; its executable, staged copies, and report go
under ``--output``.
"""
from __future__ import annotations

import argparse
import hashlib
import json
import os
from pathlib import Path
import shlex
import shutil
import subprocess
import sys


HERE = Path(__file__).resolve().parent
GAME = HERE.parent
IRRLICHT = GAME.parent
PORT = IRRLICHT.parent
REPO = PORT.parent
DEFAULT_ASSETS = REPO / "port" / "android-native" / "app" / "src" / "main" / "assets"

ASSET_RELATIVES = {
    "models/prince_modular.bdae": (
        "models/prince_modular.bdae",
        "data/3d/characters/prince/prince_modular.bdae",
        "data/3D/characters/prince/prince_modular.bdae",
        "files/data/3d/characters/prince/prince_modular.bdae",
        "files/data/3D/characters/prince/prince_modular.bdae",
    ),
    "animations/prince_idle_shield.bdae": (
        "animations/prince_idle_shield.bdae",
        "data/3d/characters/prince/animations/prince_idle_shield.bdae",
        "data/3D/characters/prince/animations/prince_idle_shield.bdae",
        "files/data/3d/characters/prince/animations/prince_idle_shield.bdae",
        "files/data/3D/characters/prince/animations/prince_idle_shield.bdae",
    ),
    "animations/prince_walk_1hand.bdae": (
        "animations/prince_walk_1hand.bdae",
        "data/3d/characters/prince/animations/prince_walk_1hand.bdae",
        "data/3D/characters/prince/animations/prince_walk_1hand.bdae",
        "files/data/3d/characters/prince/animations/prince_walk_1hand.bdae",
        "files/data/3D/characters/prince/animations/prince_walk_1hand.bdae",
    ),
}

COMPILE_SOURCES = (
    HERE / "prince_actor_host.cpp",
    GAME / "prince_actor.cpp",
    PORT / "level-world" / "visual_motion.cpp",
    PORT / "level-world" / "physical_controls.cpp",
    PORT / "engine-skinning" / "skinning.cpp",
    PORT / "scene-materials" / "scene.cpp",
    PORT / "engine-resources" / "resources.cpp",
    PORT / "asset-payloads" / "payloads.cpp",
    PORT / "engine-math" / "math.cpp",
    PORT / "engine-animation" / "animation.cpp",
    PORT / "engine-animation" / "angle_interpreter.cpp",
    PORT / "engine-animation" / "events.cpp",
    PORT / "engine-animation" / "event_track.cpp",
    PORT / "animation-values" / "values.cpp",
)


def sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(block)
    return digest.hexdigest()


def resolve_compiler(requested: str | None) -> Path:
    choices: list[str] = []
    if requested:
        choices.append(requested)
    elif os.environ.get("CXX"):
        choices.append(os.environ["CXX"])
    choices.extend(("g++", "c++", "clang++"))

    for choice in choices:
        found = shutil.which(choice)
        if found:
            return Path(found).resolve()
        candidate = Path(choice).expanduser()
        if candidate.is_file():
            return candidate.resolve()

    if os.name == "nt":
        # PATH is preferred above; these common locations also make the
        # runner work from shells that do not inherit MinGW's PATH entry.
        roots = [
            Path.home() / ".local" / "mingw" / "mingw64",
            Path(os.environ.get("MINGW_HOME", "C:/nonexistent")),
            Path(os.environ.get("MSYS2_ROOT", "C:/nonexistent")) / "mingw64",
            Path(os.environ.get("MSYS2_ROOT", "C:/nonexistent")) / "ucrt64",
            Path("C:/msys64/mingw64"),
            Path("C:/msys64/ucrt64"),
            Path("C:/mingw64"),
        ]
        for root in roots:
            candidate = root / "bin" / "g++.exe"
            if candidate.is_file():
                return candidate.resolve()

    raise SystemExit(
        "C++ compiler not found; install MinGW-w64 or set --compiler / CXX "
        "to g++ (or another compatible host compiler)."
    )


def locate_assets(root: Path) -> dict[str, Path]:
    resolved: dict[str, Path] = {}
    missing: list[str] = []
    for destination, alternatives in ASSET_RELATIVES.items():
        source = next((root / relative for relative in alternatives
                       if (root / relative).is_file()), None)
        if source is None:
            missing.append(destination)
        else:
            resolved[destination] = source
    if missing:
        searched = ", ".join(str(root / relative)
                              for relative in ASSET_RELATIVES[missing[0]])
        raise SystemExit(
            f"missing Prince source assets under {root}: {', '.join(missing)}\n"
            f"model candidates include: {searched}"
        )
    return resolved


def run(command: list[str | Path], cwd: Path) -> str:
    args = [str(item) for item in command]
    result = subprocess.run(args, cwd=cwd, stdout=subprocess.PIPE,
                            stderr=subprocess.STDOUT, text=True, check=False)
    quoted = subprocess.list2cmdline(args) if os.name == "nt" else shlex.join(args)
    print(f"+ {quoted}", flush=True)
    if result.stdout:
        print(result.stdout, end="" if result.stdout.endswith("\n") else "\n")
    if result.returncode:
        raise RuntimeError(
            f"command exited {result.returncode}: {quoted}\n{result.stdout[-12000:]}"
        )
    return result.stdout


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--assets", type=Path, default=DEFAULT_ASSETS,
        help="packaged/staged Prince assets or extracted cache/files root",
    )
    parser.add_argument(
        "--compiler", "--cxx", dest="compiler", default=None,
        help="host C++ compiler executable (default: CXX, PATH g++, then MinGW discovery)",
    )
    parser.add_argument(
        "--output", type=Path,
        default=IRRLICHT / "build" / "prince-host-checks",
        help="directory for executable, staged inputs, and JSON validation report",
    )
    args = parser.parse_args()

    asset_root = args.assets.expanduser().resolve(strict=True)
    if not asset_root.is_dir():
        parser.error(f"--assets must name a directory: {asset_root}")
    output = args.output.expanduser().resolve()
    output.mkdir(parents=True, exist_ok=True)
    compiler = resolve_compiler(args.compiler)

    missing_sources = [source for source in COMPILE_SOURCES if not source.is_file()]
    if missing_sources:
        raise SystemExit("missing Prince host source(s):\n" +
                         "\n".join(str(path) for path in missing_sources))

    inputs = locate_assets(asset_root)
    staged_assets = output / "prince-input"
    for relative, source in inputs.items():
        target = staged_assets / Path(relative)
        target.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(source, target)
        if target.stat().st_size != source.stat().st_size or sha256(target) != sha256(source):
            raise RuntimeError(f"staged Prince input differs from source: {source}")

    executable = output / ("prince-actor-host.exe" if os.name == "nt"
                           else "prince-actor-host")
    command: list[str | Path] = [
        compiler, "-std=c++17", "-O1", "-Wall", "-Wextra", "-Werror",
        "-Wno-misleading-indentation",
        "-Wno-unused-parameter", "-fexceptions", "-fno-rtti",
        "-I", GAME,
        "-I", IRRLICHT / "upstream" / "include",
        "-I", PORT,
        "-I", PORT / "android-app",
        *COMPILE_SOURCES,
        "-o", executable,
    ]
    compiler_version = run([compiler, "--version"], cwd=REPO)
    test_output = run(command, cwd=REPO)
    test_output += run([executable, staged_assets], cwd=REPO)

    required = (
        "controllers=4 ",
        "semantic_streams=source_equivalent",
        "source_visual_binding=owner_helper_graph",
        "idle_release=pass",
        "owner_translation=single",
        "full_character_playback=not_implemented",
    )
    if not all(token in test_output for token in required):
        raise RuntimeError("Prince host assertions did not report all expected checks")

    report = {
        "pass": True,
        "scope": (
            "Host source check for four Prince default-warrior controllers, source "
            "per-primitive streams, owner/helper/source-graph composition, "
            "idle/walk bounds, idle release, and one-time owner translation; "
            "does not validate Irrlicht rendering or Android integration."
        ),
        "compiler": str(compiler),
        "compiler_version": compiler_version.splitlines()[0] if compiler_version else "",
        "compile_command": [str(item) for item in command],
        "test_output": test_output.strip(),
        "asset_inputs": {
            relative: {
                "source": str(source),
                "bytes": source.stat().st_size,
                "sha256": sha256(source),
            }
            for relative, source in inputs.items()
        },
        "source_sha256": {
            source.relative_to(REPO).as_posix(): sha256(source)
            for source in COMPILE_SOURCES
        },
        "executable": {
            "path": str(executable),
            "bytes": executable.stat().st_size,
            "sha256": sha256(executable),
        },
    }
    report_path = output / "validation.json"
    report_path.write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
    print(f"PASS: Prince source host assertions; report={report_path}")
    return 0


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (OSError, ValueError, RuntimeError) as exc:
        print(f"ERROR: {exc}", file=sys.stderr)
        raise SystemExit(1)
