"""Test source LevelConfig camera clip planes against the original cache."""
from __future__ import annotations

import shutil
import subprocess
import tempfile
from pathlib import Path

ROOT = Path(__file__).resolve().parents[3]
COMPILER = shutil.which("g++") or shutil.which("clang++")
if not COMPILER:
    raise SystemExit("A host C++17 compiler (g++ or clang++) is required")

with tempfile.TemporaryDirectory(prefix="dh2-level-camera-config-") as temp:
    exe = Path(temp) / "native_level_camera_config_v1_host.exe"
    source = ROOT / "port/android-native/tests/native_level_camera_config_v1_host.cpp"
    swamp = ROOT / "port/android-native/app/src/main/assets/original-cache/data/scene/001_swamp.mlx"
    crypt = ROOT / "port/android-native/app/src/main/assets/worlds/007_crypt_01.rule.xml"
    subprocess.run([COMPILER, "-std=c++17", "-O2", "-Wall", "-Wextra", "-Werror",
                    str(source), "-o", str(exe)], check=True)
    subprocess.run([str(exe), str(swamp), str(crypt)], check=True)
