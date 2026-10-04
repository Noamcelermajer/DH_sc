"""Bind the new native Crypt script artifact to its runtime, assets and sources."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import subprocess
import zipfile
from emulator_smoke import inspect

REPO = Path(__file__).resolve().parents[3]


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--apk', type=Path, required=True)
    parser.add_argument('--sdk', type=Path, required=True)
    parser.add_argument('--runtime', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    runtime = json.loads(args.runtime.read_text(encoding='utf-8'))
    digest = sha(args.apk)
    assert runtime['validation'] == 'PASS' and runtime['apk_sha256'] == digest
    assert runtime['installed_apk_sha256'] == digest and runtime['page_size'] == 16384
    assert runtime['actual_touch_contact_triggered_original_script']
    assert runtime['reload_preserves_consumed_trigger_and_script']
    assert runtime['recreation_preserves_script_and_ghost_states_without_replay']
    assert runtime['source_visibility_hides_then_restores_enabled_ghosts']
    assert len(runtime['unbound_gated_combat_target_pairs_rejected']) == 3
    tools = args.sdk / 'build-tools/37.0.0'
    alignment = subprocess.run([str(tools / 'zipalign.exe'), '-c', '-P', '16', '4', str(args.apk.resolve())],
                               check=True, capture_output=True, text=True)
    signing = subprocess.run([str(tools / 'apksigner.bat'), 'verify', '--verbose', str(args.apk.resolve())],
                             check=True, capture_output=True, text=True, env=os.environ.copy())
    paths = [
        'port/android-native/app/src/main/cpp/model_renderer.cpp',
        'port/android-native/app/src/main/java/com/example/dh2/MainActivity.java',
        'port/android-native/app/src/main/cpp/CMakeLists.txt',
        'port/level-world/CMakeLists.txt',
        'port/level-world/crypt_spawn_script_session.cpp',
        'port/level-world/crypt_spawn_script_session.hpp',
        'port/level-world/crypt_spawn_trigger.cpp',
        'port/level-world/crypt_spawn_trigger.hpp',
        'port/level-world/character_factory.cpp',
        'port/level-world/character_state.cpp',
        'port/level-world/character_state.hpp',
        'port/script-runtime/script_runtime.cpp',
        'port/script-runtime/script_runtime.hpp',
        'port/trigger-contact/trigger_contact.cpp',
        'port/trigger-contact/trigger_contact.hpp',
        'port/zone-contact-runtime/zone_geometry.cpp',
        'port/pydata-scripts/native/pydata_scripts.cpp',
        'port/pydata-scripts/native/pydata_scripts.h',
    ]
    assets = {}
    with zipfile.ZipFile(args.apk) as archive:
        for name in archive.namelist():
            if name.startswith('assets/') and not name.endswith('/'):
                raw = archive.read(name)
                local = REPO / 'port/android-native/app/src/main' / name
                assert local.read_bytes() == raw, name
                assets[name.removeprefix('assets/')] = {'bytes': len(raw), 'sha256': hashlib.sha256(raw).hexdigest()}
    assert len(assets) == 240
    report = {'validation': 'PASS', 'apk_sha256': digest, 'apk_bytes': args.apk.stat().st_size,
              'runtime_report_sha256': sha(args.runtime), 'native_libraries': inspect(args.apk),
              'zip_16k_alignment_verified': alignment.returncode == 0,
              'signing_verification': signing.stdout.strip(), 'assets': assets,
              'source_sha256': {path: sha(REPO / path) for path in paths},
              'host_only_source_not_claimed_live': ['character_template_random', 'swamp_actor_floor_bridge'],
              'full_game_playable': False, 'physical_arm64_phone_tested': False,
              'scope': 'Exact Crypt GhostAmbush01 artifact/source/assets and Android17/16KiB runtime evidence; no whole-function or full-game equivalence claim'}
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(report, indent=2) + '\n', encoding='utf-8')
    print(json.dumps({'validation': 'PASS', 'apk_sha256': digest, 'apk_bytes': report['apk_bytes'],
                      'assets': len(assets), 'libraries': len(report['native_libraries'])}))


if __name__ == '__main__':
    main()
