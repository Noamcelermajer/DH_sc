"""Build and run the factory-backed Faery Character link regression."""
from __future__ import annotations

import argparse
import json
import os
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile

LEVEL_WORLD = Path(__file__).resolve().parents[1]


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--compiler", help="C++17 host compiler")
    args = parser.parse_args()
    compiler = args.compiler or os.environ.get("CXX") or shutil.which("g++") or shutil.which("clang++")
    if not compiler:
        parser.error("no C++ host compiler found; pass --compiler or set CXX")
    with tempfile.TemporaryDirectory(prefix="dh2-faery-links-") as temporary:
        output = Path(temporary) / "character_faery_links_v1.exe"
        sources = [
            LEVEL_WORLD / "tests" / "character_faery_links_v1.cpp",
            LEVEL_WORLD / "character_faery_links_v1.cpp",
            LEVEL_WORLD / "character_faery_placement_v1.cpp",
            LEVEL_WORLD / "character_runtime_factory_v1.cpp",
            LEVEL_WORLD / "character_constructor_owner_v1.cpp",
            LEVEL_WORLD / "character_ai_initialization.cpp",
            LEVEL_WORLD / "character_ai_association.cpp",
            LEVEL_WORLD / "character_net_state_owner_v1.cpp",
            LEVEL_WORLD / "object_manager_runtime_owner_v1.cpp",
            LEVEL_WORLD / "character_aggro_object_manager_list.cpp",
        ]
        command = [compiler, "-std=c++17", "-O1", "-Wall", "-Wextra", "-Werror",
                   *(str(path) for path in sources), "-o", str(output)]
        built = subprocess.run(command, text=True, capture_output=True)
        if built.stdout:
            sys.stdout.write(built.stdout)
        if built.stderr:
            sys.stderr.write(built.stderr)
        if built.returncode:
            return built.returncode
        run = subprocess.run([str(output)], text=True, capture_output=True)
        if run.stdout:
            sys.stdout.write(run.stdout)
        if run.stderr:
            sys.stderr.write(run.stderr)
        if run.returncode:
            return run.returncode
        expected = {"factory_identity_links": True, "player_field_420": True,
                    "ai_master_unwired_fail_closed": True,
                    "ai_master_50_restored": True, "ai_master_bytes_54_55": True,
                    "placement_completed": True}
        report = json.loads(run.stdout)
        if report != expected:
            raise SystemExit(f"unexpected regression result: {report}")
        print(json.dumps({"validation": "PASS", "host_report": report}))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
