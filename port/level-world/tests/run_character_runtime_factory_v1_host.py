"""Compile and run the bounded native Character factory regression."""
from __future__ import annotations

import argparse
import json
import os
from pathlib import Path
import shutil
import subprocess
import sys

LEVEL_WORLD = Path(__file__).resolve().parents[1]


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--compiler", help="C++17 host compiler")
    parser.add_argument("--output", type=Path,
        default=LEVEL_WORLD / "build" / "character_runtime_factory_v1_host.exe")
    args = parser.parse_args()
    compiler = args.compiler or os.environ.get("CXX") or shutil.which("g++") or shutil.which("clang++")
    if not compiler:
        parser.error("no C++ host compiler found; pass --compiler or set CXX")
    output = args.output.resolve()
    output.parent.mkdir(parents=True, exist_ok=True)
    command = [compiler, "-std=c++17", "-O1", "-Wall", "-Wextra", "-Werror",
        str(LEVEL_WORLD / "tests" / "character_runtime_factory_v1.cpp"),
        str(LEVEL_WORLD / "character_runtime_factory_v1.cpp"),
        str(LEVEL_WORLD / "character_faery_script_session_v1.cpp"),
        str(LEVEL_WORLD / "character_gameplay_save_v1.cpp"),
        str(LEVEL_WORLD / "character_constructor_owner_v1.cpp"),
        str(LEVEL_WORLD / "character_kill_death_tail_v1.cpp"),
        str(LEVEL_WORLD / "object_update_culling.cpp"),
        str(LEVEL_WORLD / "character_net_state_owner_v1.cpp"),
        str(LEVEL_WORLD / "character_init_post_nonplayer_v1.cpp"),
        str(LEVEL_WORLD / "character_script_lifecycle.cpp"),
        str(LEVEL_WORLD / ".." / "game-data" / "ai.cpp"),
        str(LEVEL_WORLD / "object_manager_runtime_owner_v1.cpp"),
        str(LEVEL_WORLD / "character_aggro_object_manager_list.cpp"),
        str(LEVEL_WORLD / ".." / "game-data" / "player_save_load_owner_v1.cpp"),
        str(LEVEL_WORLD / ".." / "game-data" / "player_profile_index_v1.cpp"),
        str(LEVEL_WORLD / ".." / "game-data" / "player_save_level_states_v1.cpp"),
        str(LEVEL_WORLD / ".." / "game-data" / "player_savegame_v1.cpp"),
        str(LEVEL_WORLD / ".." / "android-native" / "app" / "src" / "main" / "cpp" / "native_character_list.cpp"),
        "-o", str(output)]
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
    report = json.loads(run.stdout)
    expected = {"stable_owner": True, "constructor_order": True,
        "net_state_pair": True, "nonplayer_init_post_prefix": True,
        "nonplayer_ai_postload_branch": True,
        "nonplayer_init_post_fx_animation_sound_chain": True,
        "script_created_character_flag": True,
        "script_created_kill_objective_gate": True,
        "init_final_gated": True,
        "source_save_slot_null_and_player_mask2": True,
        "registered_states": 20,
        "manager_roster_publication": True,
        "constructor_and_roster_rollback": True, "retirement": True,
        "staged_lifecycle_order": True,
        "premature_stage_rejection": True,
        "lifecycle_failure_retry": True,
        "lifecycle_idempotence": True, "faery_session_retirement_gate": True,
        "native_roster_adapter": True}
    if report != expected:
        raise SystemExit(f"unexpected regression result: {report}")
    print(json.dumps({"validation": "PASS", "host_report": report}))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
