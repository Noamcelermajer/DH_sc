#!/usr/bin/env python3
"""Build and run the Crypt module bounds registry against packaged assets."""
from __future__ import annotations

import argparse
from pathlib import Path
import shutil
import subprocess
import tempfile

ROOT = Path(__file__).resolve().parents[3]
LEVEL = ROOT / "port/level-world"
ASSETS = ROOT / "port/android-native/app/src/main/assets/worlds"

SOURCES = [
    LEVEL / "tests/crypt_module_bounds_registry_v1.cpp",
    LEVEL / "crypt_module_bounds_registry_v1.cpp",
    LEVEL / "module_scene_root_bounds.cpp",
    LEVEL / "floor_source.cpp",
    ROOT / "port/world-data/world.cpp",
    ROOT / "port/world-data/world_scene.cpp",
    ROOT / "port/scene-payloads/scene.cpp",
    ROOT / "port/scene-materials/scene.cpp",
    ROOT / "port/asset-payloads/payloads.cpp",
    ROOT / "port/engine-resources/resources.cpp",
    ROOT / "port/engine-math/math.cpp",
]
INCLUDES = [
    ROOT / "port/world-data",
    LEVEL,
    ROOT / "port/scene-payloads",
    ROOT / "port/scene-materials",
    ROOT / "port/asset-payloads",
    ROOT / "port/engine-resources",
    ROOT / "port/engine-math",
]


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--cxx", default="g++", help="C++17 compiler executable")
    parser.add_argument("--worlds-dir", type=Path, default=ASSETS)
    args = parser.parse_args()
    compiler = shutil.which(args.cxx) if not Path(args.cxx).is_file() else str(Path(args.cxx))
    if not compiler:
        parser.error(f"C++ compiler not found: {args.cxx}")
    worlds = args.worlds_dir.resolve()
    for required in (worlds / "x07_crypt_backup.mlx", worlds / "crypt.bdae"):
        if not required.is_file():
            parser.error(f"required packaged Crypt asset is missing: {required}")

    with tempfile.TemporaryDirectory(prefix="dh2-crypt-module-bounds-") as temporary:
        executable = Path(temporary) / "crypt-module-bounds-registry-v1"
        command = [
            compiler, "-std=c++17", "-O2", "-fno-fast-math", "-ffp-contract=off",
            "-Wall", "-Wextra", "-Werror", "-pedantic", "-fno-rtti",
            *[f"-I{path}" for path in INCLUDES],
            *[str(path) for path in SOURCES], "-o", str(executable),
        ]
        subprocess.run(command, cwd=ROOT, check=True)
        completed = subprocess.run(
            [str(executable), str(worlds)], cwd=ROOT, check=True,
            capture_output=True, text=True,
        )
        print(completed.stdout, end="")


if __name__ == "__main__":
    main()
