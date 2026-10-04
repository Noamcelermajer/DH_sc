"""Exercise source Crypt contact -> Wait -> Spawn on API37/16KiB.

The authored trigger/scripts stay unchanged. A temporary fan spawn override
places the player near the trigger; actual touch movement must enter it.
"""
import argparse
import hashlib
import json
from pathlib import Path
import re
import struct
import subprocess
import time
import xml.etree.ElementTree as ET
import zipfile
from emulator_smoke import inspect, launch_fresh

PACKAGE = 'com.example.dh2'
NAMES = ('_prim_Monster_SURPRISE_01', '_prim_Monster_SURPRISE_02')
BAD = re.compile(r'FATAL EXCEPTION|Fatal signal|Native frame failed|World load failed|Model draw GL error')


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--adb', required=True)
    parser.add_argument('--serial', required=True)
    parser.add_argument('--apk', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--require-source-pursuit', action='store_true',
                        help='enable enemy AI and require two independent source Ghost body pursuits')
    args = parser.parse_args()
    assert args.serial.startswith('emulator-')
    out = args.output.resolve()
    out.mkdir(parents=True, exist_ok=True)
    report = {'validation': 'FAIL', 'apk_sha256': hashlib.sha256(args.apk.read_bytes()).hexdigest(),
              'serial': args.serial, 'full_game_playable': False, 'physical_arm64_phone_tested': False,
              'authored_trigger_and_script_modified': False, 'player_start_is_fan_test_override': True}
    transcript = []
    last_logs = ''
    pid = ''
    log_since = ''
    prior = []
    remote = f'/sdcard/Android/data/{PACKAGE}/files/mods/worlds/crypt01.dwld'
    backup = out / 'previous-world.dwld'
    existed = None
    deadline = time.monotonic() + 210

    def adb(*command, missing=False, cleanup=False):
        if not cleanup and time.monotonic() > deadline:
            raise RuntimeError('Crypt script smoke deadline exceeded')
        run = subprocess.run([args.adb, '-s', args.serial, *command], capture_output=True, text=True, timeout=30)
        transcript.append({'args': list(command), 'returncode': run.returncode, 'stderr': run.stderr,
                           'stdout': run.stdout if command[0] != 'logcat' else '[stored separately]'})
        if run.returncode and not missing:
            raise RuntimeError(str(command) + '\n' + run.stdout + run.stderr)
        return run.stdout.strip() if not run.returncode else ''

    def logs():
        nonlocal last_logs
        current = adb('shell', 'pidof', PACKAGE)
        assert current and current == pid, 'app exited or process changed'
        last_logs = adb('logcat', '-d', '-T', log_since, '--pid=' + pid, '-v', 'brief')
        assert not BAD.search(last_logs), 'native failure in logs'
        return last_logs

    def wait(predicate, label, timeout=30):
        end = min(deadline, time.monotonic() + timeout)
        while time.monotonic() < end:
            value = logs()
            if predicate(value):
                return value
            time.sleep(.15)
        raise AssertionError(label + ' not observed')

    def launch():
        nonlocal pid, log_since
        log_since = adb('shell', 'date', '+%s.%N')
        launch_fresh(adb, '--es', 'world', 'crypt01.dwld', '--ez', 'enemy_ai',
                     'true' if args.require_source_pursuit else 'false')
        pid = adb('shell', 'pidof', PACKAGE)
        report.setdefault('launch_log_boundaries', []).append({'pid': pid, 'epoch_since': log_since})
        return wait(lambda text: 'Crypt script ready | common 15 | level 25 | script 17' in text and
                    'Native actor frame |' in text, 'source script/actor ready')

    def capture(name):
        run = subprocess.run([args.adb, '-s', args.serial, 'exec-out', 'screencap', '-p'], capture_output=True, timeout=30)
        assert run.returncode == 0 and run.stdout.startswith(b'\x89PNG')
        path = out / (name + '.png')
        path.write_bytes(run.stdout)
        report.setdefault('screenshots', []).append({'path': path.name, 'sha256': hashlib.sha256(run.stdout).hexdigest()})

    def movement_bounds():
        adb('shell', 'uiautomator', 'dump', '/sdcard/dh2-crypt-script-window.xml')
        xml = adb('shell', 'cat', '/sdcard/dh2-crypt-script-window.xml')
        for node in ET.fromstring(xml).iter('node'):
            if node.get('content-desc') == 'Movement control':
                return tuple(map(int, re.findall(r'-?\d+', node.get('bounds'))))
        raise AssertionError('movement control absent')

    try:
        report['libraries'] = inspect(args.apk)
        assert adb('shell', 'getconf', 'PAGE_SIZE') == '16384'
        report['page_size'] = 16384
        report['api_level'] = int(adb('shell', 'getprop', 'ro.build.version.sdk'))
        assert report['api_level'] >= 37
        assert 'Success' in adb('install', '-r', str(args.apk))
        installed = adb('shell', 'pm', 'path', PACKAGE).splitlines()[0].removeprefix('package:')
        report['installed_apk_sha256'] = adb('shell', 'sha256sum', installed).split()[0]
        assert report['installed_apk_sha256'] == report['apk_sha256']
        prior = adb('shell', 'cmd', 'window', 'user-rotation').split()
        adb('shell', 'cmd', 'window', 'user-rotation', 'lock', '0')
        probe = subprocess.run([args.adb, '-s', args.serial, 'shell', 'test', '-e', remote], capture_output=True)
        assert probe.returncode in (0, 1)
        existed = probe.returncode == 0
        if existed:
            adb('pull', remote, str(backup))
        adb('shell', 'mkdir', '-p', str(Path(remote).parent).replace('\\', '/'))
        adb('shell', 'rm', '-f', remote)
        launch()
        time.sleep(.5)
        text = logs()
        assert 'Crypt trigger activated |' not in text and 'Crypt script SpawnCharacter |' not in text
        report['bundled_start_does_not_trigger_remote_ambush'] = True
        (out / 'bundled-start.log').write_text(text, encoding='utf-8')

        with zipfile.ZipFile(args.apk) as archive:
            raw = bytearray(archive.read('assets/worlds/crypt01.dwld'))
            descriptor = archive.read('assets/scripts/crypt-ghost01.dctr')
            provenance = json.loads(archive.read('assets/scripts/crypt-script-provenance.json'))
            actor_records = json.loads(archive.read('assets/actor-provenance.json'))['records']
            gates = {row['name']: index for index, row in enumerate(actor_records) if row.get('gated_spawn')}
            legacy = next(index for index, row in enumerate(actor_records) if row['kind'] == 1 and not row.get('gated_spawn'))
            assert set(gates) == set(NAMES)
            center = struct.unpack_from('<3f', descriptor, 12)
            scale = struct.unpack_from('<3f', descriptor, 24)
            assert descriptor[:4] == b'DCTR' and len(descriptor) == 44
            assert hashlib.sha256(descriptor).hexdigest() == provenance['descriptor_sha256']
            for item in provenance['inputs']:
                if item['name'].endswith('.bin'):
                    data = archive.read('assets/scripts/' + item['name'])
                    assert hashlib.sha256(data).hexdigest() == item['sha256']
            target = [center[0], center[1] + 100 * scale[1] + 250, center[2]]
            struct.pack_into('<3f', raw, 12, *target)
            report['authored_trigger_descriptor_sha256'] = provenance['descriptor_sha256']
            report['test_spawn'] = target
        fixture = out / 'near-authored-trigger.dwld'
        fixture.write_bytes(raw)
        adb('push', str(fixture), remote)
        text = launch()
        time.sleep(.3)
        text = logs()
        assert 'Crypt trigger activated |' not in text, 'test start must be outside source AABB'
        assert all('Gated character ready | ' + name + ' | source state 0' in text for name in NAMES)
        assert all('Spawn visibility | ' + name + ' | visible 0 | enabled 1' in text for name in NAMES)
        capture('outside-authored-trigger')
        left, top, right, bottom = movement_bounds()
        x = round((left + right) / 2)
        y = round((top + bottom) / 2 + (right - left) * .44 * .9)
        adb('shell', 'input', 'touchscreen', 'motionevent', 'DOWN', str(x), str(y))
        try:
            text = wait(lambda value: 'Crypt trigger activated | GhostAmbush01 | count 1' in value,
                        'real touch movement into authored trigger', timeout=12)
        finally:
            adb('shell', 'input', 'touchscreen', 'motionevent', 'UP', str(x), str(y), cleanup=True)
        text = wait(lambda value: 'Crypt script completed | GhostAmbush01' in value and all(
            'Spawn source event | ' + name + ' | event 0x22 | current 3 | body 1' in value for name in NAMES),
                    'authored script and both finite Spawn animations complete')
        spawns = re.findall(r'Crypt script SpawnCharacter \| (\S+) \| script (\d+) \| command (\d+) \| time (\d+) \| result (\S+)', text)
        assert [(name, int(script), int(command), result) for name, script, command, _, result in spawns] == [
            (NAMES[0], 17, 1, 'requested'), (NAMES[1], 17, 3, 'requested')]
        waits = [tuple(map(int, row)) for row in re.findall(r'Crypt script Wait \| duration (\d+) \| time (\d+) \| dt (\d+)', text)]
        assert len(waits) == 2 and [row[0] for row in waits] == [250, 75]
        for spawn, (duration, started, initial_delta) in zip(spawns, waits):
            assert int(spawn[3]) > started and int(spawn[3]) - started + initial_delta >= duration
        for name in NAMES:
            assert text.count('Spawn body ready | ' + name + ' | creations 1 |') == 1
            assert text.count('Spawn visibility | ' + name + ' | visible 1 | enabled 1') == 1
        report['source_visibility_hides_then_restores_enabled_ghosts'] = True
        report['source_spawn_requests'] = [{'name': row[0], 'script_id': int(row[1]), 'pc': int(row[2]),
                                           'time_ms': int(row[3])} for row in spawns]
        report['source_wait_start_frames'] = [{'duration': row[0], 'time_ms': row[1], 'frame_dt': row[2]} for row in waits]
        report['actual_touch_contact_triggered_original_script'] = True
        if args.require_source_pursuit:
            from ghost_ai_runtime_evidence import validate_pursuit
            def pursued(value):
                try:
                    validate_pursuit(value)
                    return True
                except AssertionError:
                    return False
            text = wait(pursued, 'two source Ghost acquisition/Lua/path/body pursuits', timeout=30)
            report['source_ghost_pursuit'] = validate_pursuit(text)
            report['native_source_pursuit_verified'] = True
        capture('source-ghost-pair-idle')
        rejected_pairs = [(legacy, gates[NAMES[0]]), (gates[NAMES[0]], legacy),
                          (gates[NAMES[1]], -2)]
        for source, target_index in rejected_pairs:
            offset = len(text)
            adb('shell', 'am', 'start', '-f', '0x20000000', '-n', PACKAGE + '/.MainActivity',
                '--ei', 'object_index', str(source), '--ei', 'combat_target_index', str(target_index),
                '--ez', 'enemy_ai', 'false')
            marker = f'Combat target rejected | index {source} | target {target_index} | gated Character services pending'
            text = wait(lambda value: marker in value[offset:] and
                        'Gated actor combat services are pending' in value[offset:], 'gated combat ownership boundary')
            assert not any(token in text[offset:] for token in
                           ('Combat target selected |', 'Native combat hit |', 'Spawn source state |'))
        report['unbound_gated_combat_target_pairs_rejected'] = rejected_pairs
        offset = len(text)
        adb('shell', 'am', 'broadcast', '-a', PACKAGE + '.DEBUG_RELOAD_WORLD', '-p', PACKAGE)
        text = wait(lambda value: 'Crypt script restored | activations 1 | requests 2 | ready 1 | running 0' in value[offset:] and
                    'World reload command applied |' in value[offset:], 'retained source script after world reload')
        assert 'Crypt script SpawnCharacter |' not in text[offset:] and 'Crypt trigger activated |' not in text[offset:]
        assert all('Gated character ready | ' + name + ' | source state 3 | presentation visible 1' in text[offset:] for name in NAMES)
        report['reload_preserves_consumed_trigger_and_script'] = True
        offset = len(text)
        adb('shell', 'cmd', 'window', 'user-rotation', 'lock', '1')
        text = wait(lambda value: 'Crypt script restored | activations 1 | requests 2 | ready 1 | running 0' in value[offset:] and
                    all('Gated character ready | ' + name + ' | source state 3' in value[offset:] for name in NAMES),
                    'retained script across Activity recreation')
        time.sleep(.5)
        text = logs()
        assert 'Crypt script SpawnCharacter |' not in text[offset:] and 'Crypt trigger activated |' not in text[offset:]
        assert all('Gated character ready | ' + name + ' | source state 3 | presentation visible 1' in text[offset:] for name in NAMES)
        report['recreation_preserves_script_and_ghost_states_without_replay'] = True
        capture('authored-ambush-restored')
        report['validation'] = 'PASS'
        report['scope'] = 'Original GhostAmbush01 contact/timed spawning on authored placement, approached with actual root-motion touch input from an explicit fan spawn override; source completion/body creation and reload/recreation; no complete-level or full AI claim.'
    except Exception as error:
        report['error'] = str(error)
        raise
    finally:
        if existed is not None:
            try:
                if existed:
                    adb('push', str(backup), remote, cleanup=True)
                else:
                    adb('shell', 'rm', '-f', remote, cleanup=True)
                report['previous_world_override_restored'] = True
            except Exception as error:
                report['cleanup_error'] = str(error)
                report['validation'] = 'FAIL'
        if prior:
            try:
                adb('shell', 'cmd', 'window', 'user-rotation', *prior, cleanup=True)
            except Exception as error:
                report['rotation_cleanup_error'] = str(error)
                report['validation'] = 'FAIL'
        (out / 'crypt-script.log').write_text(last_logs, encoding='utf-8')
        (out / 'adb-transcript.json').write_text(json.dumps(transcript, indent=2) + '\n', encoding='utf-8')
        (out / 'crypt-script-smoke.json').write_text(json.dumps(report, indent=2) + '\n', encoding='utf-8')
    assert report['validation'] == 'PASS'
    print(json.dumps({key: value for key, value in report.items() if key != 'libraries'}, indent=2))


if __name__ == '__main__':
    main()
