"""Original Player skill preparation/cooldown composition on API37/16KiB.

The shell cooldown fixture invokes the unchanged skill framework, not a full
skill-use/combat lifecycle. The missing saved-skill provider must fail visibly.
"""
import argparse
import hashlib
import json
from pathlib import Path
import re
import subprocess
import time
import zipfile
from emulator_smoke import inspect, launch_fresh

PACKAGE = 'com.example.dh2'
BAD = re.compile(r'FATAL EXCEPTION|Fatal signal|Native frame failed|World load failed|Model draw GL error')

def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('--adb', required=True)
    p.add_argument('--serial', required=True)
    p.add_argument('--apk', type=Path, required=True)
    p.add_argument('--output', type=Path, required=True)
    a = p.parse_args()
    assert a.serial.startswith('emulator-'), 'emulator only'
    out = a.output.resolve()
    out.mkdir(parents=True, exist_ok=True)
    report = {'validation': 'FAIL', 'scope': 'Live native Player preparation and original framework cooldown shell fixture. Full Player AIS/savegame/skill-use/combat loop remains unfinished.',
              'apk_sha256': hashlib.sha256(a.apk.read_bytes()).hexdigest(),
              'libraries': inspect(a.apk), 'serial': a.serial}
    transcript = []
    pid = since = last_logs = ''
    prior_rotation = None
    def adb(*args):
        r = subprocess.run([a.adb, '-s', a.serial, *args], capture_output=True, text=True, timeout=45)
        transcript.append({'args': list(args), 'exit_code': r.returncode,
                           'stdout': r.stdout if args[0] != 'logcat' else '[stored separately]', 'stderr': r.stderr})
        assert r.returncode == 0, (args, r.stdout, r.stderr)
        return r.stdout.strip()
    def logs():
        nonlocal last_logs
        assert adb('shell', 'pidof', PACKAGE) == pid, 'process changed or exited'
        last_logs = adb('logcat', '-d', '-T', since, '--pid=' + pid, '-v', 'brief')
        assert not BAD.search(last_logs), 'native failure in logs'
        return last_logs
    def wait(predicate, label, seconds=35):
        deadline = time.monotonic() + seconds
        while time.monotonic() < deadline:
            text = logs()
            if predicate(text): return text
            time.sleep(.2)
        raise AssertionError(label + ' not observed')
    def command(action, *extras):
        return adb('shell', 'am', 'broadcast', '-a', 'com.example.dh2.DEBUG_' + action, '-p', PACKAGE, *extras)
    def screenshot(name):
        raw = subprocess.check_output([a.adb, '-s', a.serial, 'exec-out', 'screencap', '-p'], timeout=30)
        assert raw.startswith(b'\x89PNG')
        path = out / (name + '.png')
        path.write_bytes(raw)
        return {'file': path.name, 'sha256': hashlib.sha256(raw).hexdigest()}
    try:
        report['api'] = int(adb('shell', 'getprop', 'ro.build.version.sdk'))
        report['page_size'] = int(adb('shell', 'getconf', 'PAGE_SIZE'))
        report['abi'] = adb('shell', 'getprop', 'ro.product.cpu.abi')
        assert report['api'] == 37 and report['page_size'] == 16384 and report['abi'] == 'x86_64'
        with zipfile.ZipFile(a.apk) as z:
            manifest = json.loads(z.read('assets/player-skills-provenance.json'))
            for path, receipt in manifest['files'].items():
                raw = z.read('assets/' + path)
                assert len(raw) == receipt['bytes'] and hashlib.sha256(raw).hexdigest() == receipt['sha256'], path
            report['packaged_original_resources_verified'] = len(manifest['files'])
        assert 'Success' in adb('install', '-r', str(a.apk.resolve()))
        prior_rotation = adb('shell', 'cmd', 'window', 'user-rotation').split()
        adb('shell', 'cmd', 'window', 'user-rotation', 'lock', '0')
        since = adb('shell', 'date', '+%s.%N')
        launch_fresh(adb, '--es', 'world', 'crypt01.dwld', '--ez', 'enemy_ai', 'false')
        pid = adb('shell', 'pidof', PACKAGE)
        # Each nonnull script has DeclareSkill(name,index), then the no-args
        # DeclareSkill() reset after loading: 26 real calls for 13 instances.
        text = wait(lambda t: 'Native Player skill preparation | skills 16 | faeries 5 | loaded paths 15 | declarations 26' in t and
                    'Native Player skill update blocked | attempt 1 | callbacks 0 | VM status -5' in t and 'Native actor frame |' in t, 'real Player preparation/update boundary')
        assert 'GetCurrentSkillInfo__' in text
        assert text.count('Native Player skill preparation |') == 1
        report['initial'] = {'source_skill_slots': 16, 'source_faery_slots': 5, 'nonnull_instances': 13,
                             'source_paths': 15, 'source_declaration_calls': 26, 'update_boundary': 'GetCurrentSkillInfo__',
                             'update_vm_status': -5, 'full_skill_update_complete': False}
        report['screenshots'] = [screenshot('player-skills-initial')]
        command('ANIMATION_TIME', '--ei', 'time_ms', '0')
        wait(lambda t: 'Animation time command applied | time 0' in t, 'freeze')
        command('PLAYER_SKILL_COOLDOWN', '--ei', 'delay_ms', '12000')
        text = wait(lambda t: 'Player skill cooldown command applied | Original skill cooldown callback armed' in t, 'source cooldown fixture')
        match = re.search(r'Native Player skill cooldown probe \| script prince_warrior_bashdown \| slot0 field18 (\d+) \| timer (\d+) \| duration 12000', text)
        assert match and match[1] == match[2], 'Lua/native timer identities differ'
        timer_id = int(match[1])
        report['cooldown_fixture'] = {'script': 'prince_warrior_bashdown', 'slot': 0, 'field18': timer_id,
                                      'native_timer_id': timer_id, 'duration_ms': 12000, 'full_skill_use': False}
        command('RELOAD_WORLD')
        text = wait(lambda t: 'World reload command applied |' in t and 'Native Player skills retained |' in t, 'retained world reload')
        assert text.count('Native Player skill preparation |') == 1 and text.count('Native Player skill update blocked |') == 1
        first_vm = re.search(r'Native Player skills retained \| VM (\S+) \| paths 15 \| update attempts 1 \| timer callbacks 0', text)
        assert first_vm, 'VM/paths/update attempt not retained'
        # Reload resumes the frame; ensure pending cooldown survives recreation.
        adb('shell', 'cmd', 'window', 'user-rotation', 'lock', '1')
        text = wait(lambda t: len(re.findall(r'Native Player skills retained \|', t)) >= 2, 'retained rotation')
        vms = re.findall(r'Native Player skills retained \| VM (\S+) \| paths 15 \| update attempts 1', text)
        assert vms and set(vms) == {first_vm[1]}, 'Player VM replaced on graphics restore'
        assert text.count('Native Player skill preparation |') == 1 and text.count('Native Player skill update blocked |') == 1
        report['restore'] = {'same_process': pid, 'same_vm': first_vm[1], 'reload_and_rotation': True, 'preparation_count': 1, 'blocked_update_attempts': 1}
        text = wait(lambda t: re.search(r'Native Player skill timer callback \| timer ' + str(timer_id) + r' \| callbacks 1 \| slot0 field18 -1', t), 'original cooldown expiry', 35)
        report['cooldown_expiry'] = {'callback_count': 1, 'slot0_field18': -1, 'same_native_timer_id': timer_id}
        command('PLAYER_SKILL_COOLDOWN', '--ei', 'delay_ms', '300')
        text = wait(lambda t: re.search(r'Native Player skill timer callback \| timer \d+ \| callbacks 2 \| slot0 field18 -1', t), 'cooldown rearm/expiry')
        assert text.count('Player skill cooldown command applied | Original skill cooldown callback armed') == 2
        report['cooldown_rearm_verified'] = True
        report['screenshots'].append(screenshot('player-skills-restored'))
        report['validation'] = 'PASS'
    except Exception as exc:
        report['error'] = str(exc)
        raise
    finally:
        (out / 'player-skills.log').write_text(last_logs, encoding='utf-8')
        (out / 'adb-transcript.json').write_text(json.dumps(transcript, indent=2) + '\n')
        report['log_sha256'] = hashlib.sha256(last_logs.encode()).hexdigest()
        (out / 'player-skills-smoke.json').write_text(json.dumps(report, indent=2) + '\n')
        if prior_rotation:
            if prior_rotation[0] == 'lock': adb('shell', 'cmd', 'window', 'user-rotation', 'lock', prior_rotation[1])
            else: adb('shell', 'cmd', 'window', 'user-rotation', 'free')
    print(json.dumps({'validation': report['validation'], 'resources': report['packaged_original_resources_verified'],
                      'cooldown_callbacks': 2, 'player_skill_use': False}))

if __name__ == '__main__': main()
