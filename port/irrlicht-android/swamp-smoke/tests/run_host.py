#!/usr/bin/env python3
"""Run the cache-scene, source-movement, and Irrlicht joystick host assertions."""
from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path
import shutil
import subprocess
import sys


TESTS = Path(__file__).resolve().parent
SMOKE = TESTS.parent
REPO = TESTS.parents[3]


def run(command: list[str | Path], *, cwd: Path = REPO) -> str:
    result = subprocess.run([str(item) for item in command], cwd=cwd,
                            stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
                            text=True, check=False)
    if result.returncode:
        raise RuntimeError("command failed: " + " ".join(map(str, command)) +
                           "\n" + result.stdout[-12000:])
    return result.stdout


def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--cache', required=True, type=Path,
                        help='Extracted supplied cache containing SWAMP BRES/MLX files')
    parser.add_argument('--cxx', default='g++',
                        help='Host C++ compiler used for the touch/fixed-step policy test')
    parser.add_argument('--output', type=Path,
                        default=REPO / 'port/irrlicht-android/build/swamp-host-checks')
    parser.add_argument('--report', type=Path)
    args = parser.parse_args()
    cache = args.cache.resolve(strict=True)
    output = args.output.resolve()
    output.mkdir(parents=True, exist_ok=True)
    compiler = shutil.which(args.cxx)
    if not compiler:
        parser.error(f'host C++ compiler not found: {args.cxx}')

    control_exe = output / ('control-policy.exe' if sys.platform == 'win32'
                            else 'control-policy')
    run([compiler, '-std=c++17', '-O2', '-Wall', '-Wextra', '-Werror',
         '-fno-exceptions', '-fno-rtti', SMOKE / 'tests/control_policy.cpp',
         '-o', control_exe])
    control_output = run([control_exe])
    if 'touch axes, diagonal clamp, Idle release, blocked Idle, fixed-step, frame cap and pause reset pass' not in control_output:
        raise RuntimeError('Irrlicht touch/fixed-step policy assertions did not report pass')

    alpha_exe = output / ('alpha-map-policy.exe' if sys.platform == 'win32'
                          else 'alpha-map-policy')
    run([compiler, '-std=c++17', '-O2', '-Wall', '-Wextra', '-Werror',
         '-fno-exceptions', '-fno-rtti', SMOKE / 'tests/alpha_map_policy.cpp',
         '-o', alpha_exe])
    alpha_output = run([alpha_exe])
    if 'source AlphaMap binding scope and diffuse-alpha composition pass' not in alpha_output:
        raise RuntimeError('Irrlicht source AlphaMap policy assertions did not report pass')

    scene_output = run([sys.executable,
                        REPO / 'port/android-app/tests/run_swamp_scene.py',
                        '--cache', cache])
    expected_scene = (
        '103 subtree records, 54 source draw commands (54 source-visible; '
        '53 drawn diagnostics; 1 unresolved diagnostic draw omitted)')
    if expected_scene not in scene_output:
        raise RuntimeError('SWAMP source module scene assertions changed:\n' + scene_output)
    expected_alpha = '22 resolved AlphaMap refs/22 Material__11611 cutouts'
    if expected_alpha not in scene_output or '10816 vertices, 13284 indices' not in scene_output:
        raise RuntimeError('SWAMP AlphaMap/cache-source assertions changed:\n' + scene_output)
    if 'correction=(-52000,-3000,0); BRES unchanged' not in scene_output:
        raise RuntimeError('SWAMP module-zero source placement/immutability assertion missing')

    # Compile the checked engine-skinning and animation path with exceptions
    # enabled (those parsers report malformed source assets by exception).
    # Stage exact local cache inputs in the ignored host output directory so
    # the test exercises the same source paths as the Android package builder.
    prince_sources = {
        'models/prince_modular.bdae':
            cache / 'data/3d/characters/prince/prince_modular.bdae',
        'animations/prince_idle_shield.bdae':
            cache / 'data/3d/characters/prince/animations/prince_idle_shield.bdae',
        'animations/prince_walk_1hand.bdae':
            cache / 'data/3d/characters/prince/animations/prince_walk_1hand.bdae',
    }
    prince_assets = output / 'prince-input'
    for destination, source in prince_sources.items():
        if not source.is_file():
            raise FileNotFoundError(f'Prince source animation/model missing from --cache: {source}')
        target = prince_assets / destination
        target.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(source, target)
        if sha256(source) != sha256(target):
            raise RuntimeError(f'Prince source changed while staging: {source}')

    prince_exe = output / ('prince-actor-host.exe' if sys.platform == 'win32'
                           else 'prince-actor-host')
    prince_compiler = shutil.which(args.cxx)
    prince_compile_sources = [
        SMOKE.parents[0] / 'game/tests/prince_actor_host.cpp',
        SMOKE.parents[0] / 'game/prince_actor.cpp',
        REPO / 'port/level-world/visual_motion.cpp',
        REPO / 'port/level-world/physical_controls.cpp',
        REPO / 'port/engine-skinning/skinning.cpp',
        REPO / 'port/scene-materials/scene.cpp',
        REPO / 'port/engine-resources/resources.cpp',
        REPO / 'port/asset-payloads/payloads.cpp',
        REPO / 'port/engine-math/math.cpp',
        REPO / 'port/engine-animation/animation.cpp',
        REPO / 'port/engine-animation/angle_interpreter.cpp',
        REPO / 'port/engine-animation/events.cpp',
        REPO / 'port/engine-animation/event_track.cpp',
        REPO / 'port/animation-values/values.cpp',
    ]
    run([prince_compiler, '-std=c++17', '-O1', '-Wall', '-Wextra', '-Werror',
         '-Wno-misleading-indentation',
         '-Wno-unused-parameter', '-fexceptions', '-fno-rtti',
         '-I', SMOKE.parents[0] / 'game',
         '-I', REPO / 'port/irrlicht-android/upstream/include',
         '-I', REPO / 'port', '-I', REPO / 'port/android-app',
         *prince_compile_sources, '-o', prince_exe])
    prince_output = run([prince_exe, prince_assets])
    expected_prince = 'controllers=4 '
    if expected_prince not in prince_output or 'idle_release=pass' not in prince_output or \
            'semantic_streams=source_equivalent' not in prince_output or \
            'source_visual_binding=owner_helper_graph' not in prince_output or \
            'owner_translation=single' not in prince_output or \
            'full_character_playback=not_implemented' not in prince_output:
        raise RuntimeError('Prince skinning/animation/owner host assertions changed:\n' +
                           prince_output)

    movement_build = output / 'movement'
    movement_report = movement_build / 'build-validation.json'
    run([sys.executable, REPO / 'port/swamp-movement/build.py',
         '--output', movement_build, '--report', movement_report])
    movement_library = movement_build / (
        'libdh2_swamp_movement_host.dll' if sys.platform == 'win32'
        else 'libdh2_swamp_movement_host.so')
    movement_result = output / 'movement-validation.json'
    run([sys.executable, REPO / 'port/swamp-movement/tests/check_movement.py',
         '--library', movement_library, '--cache', cache, '--report', movement_result])
    movement_data = json.loads(movement_result.read_text(encoding='utf-8'))
    if movement_data.get('pass') is not True or movement_data.get('complete_movement') is not False:
        raise RuntimeError('Existing bounded source SWAMP movement assertions failed or changed scope')

    source_files = [SMOKE / 'main.cpp', SMOKE / 'alpha_map_policy.hpp',
                    SMOKE / 'tests/alpha_map_policy.cpp', SMOKE / 'control_policy.hpp',
                    SMOKE / 'tests/control_policy.cpp',
                    REPO / 'port/android-app/tests/swamp_scene.cpp',
                    REPO / 'port/swamp-movement/movement.cpp',
                    SMOKE.parents[0] / 'game/prince_actor.hpp',
                    SMOKE.parents[0] / 'game/prince_actor.cpp',
                    SMOKE.parents[0] / 'game/scene_mesh_adapter.hpp',
                    SMOKE.parents[0] / 'game/scene_mesh_adapter.cpp',
                    SMOKE.parents[0] / 'game/prince_mesh_adapter.cpp',
                    SMOKE.parents[0] / 'game/tests/prince_actor_host.cpp']
    report = {
        'pass': True,
        'scope': 'Host assertions validate SWAMP module-zero import/placement, the exact 22 source AlphaMap cutout material mappings, path-mask movement and touch/fixed-step policy, plus four source Prince warrior skins, idle/walk deformation, idle release, and one-time owner translation; Android render/install remains separate.',
        'source_scene': expected_scene,
        'source_alpha_map': expected_alpha,
        'control_policy': control_output.strip(),
        'alpha_map_policy': alpha_output.strip(),
        'prince_actor': prince_output.strip(),
        'prince_input_sha256': {
            relative: sha256(source) for relative, source in prince_sources.items()},
        'movement_checks': movement_data.get('checks', {}),
        'source_sha256': {path.relative_to(REPO).as_posix(): sha256(path)
                          for path in source_files},
        'host_artifacts': {
            'control_test_sha256': sha256(control_exe),
            'prince_actor_test_sha256': sha256(prince_exe),
            'movement_library_sha256': sha256(movement_library),
        },
    }
    report_path = args.report.resolve() if args.report else output / 'validation.json'
    report_path.parent.mkdir(parents=True, exist_ok=True)
    report_path.write_text(json.dumps(report, indent=2) + '\n', encoding='utf-8')
    print(f'PASS: SWAMP Irrlicht host assertions; report={report_path}')


if __name__ == '__main__':
    main()
