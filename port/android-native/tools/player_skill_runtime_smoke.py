"""Original Player skill preparation/cooldown composition on API37/16KiB.

The shell fixtures invoke the unchanged skill framework, not a full activation
or combat lifecycle. Optional --saved-skills checks the integrated saved owner,
eight Knight updates and full two-result checks. --full-update additionally
requires all13 Knight/faery callbacks, retained updates and real MP spending.
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
    p.add_argument('--saved-skills', action='store_true')
    p.add_argument('--full-update', action='store_true')
    p.add_argument('--mana-faeries', action='store_true', help='verify saved faeries and MP callbacks at an explicit unfinished update provider')
    p.add_argument('--update-boundary', default='GetInt')
    p.add_argument('--completed-updates', type=int, default=8)
    a = p.parse_args()
    assert not (a.full_update or a.mana_faeries) or a.saved_skills, 'new owner checks require --saved-skills'
    assert not (a.full_update and a.mana_faeries), 'select complete updates or a bounded update checkpoint'
    assert 8 <= a.completed_updates < 13
    assert a.serial.startswith('emulator-'), 'emulator only'
    out = a.output.resolve()
    out.mkdir(parents=True, exist_ok=True)
    report = {'validation': 'FAIL', 'scope': 'Live native Player preparation, optional saved-skill/property/check integration and original framework cooldown shell fixture. Full Player AIS/profile/starter grant/skill activation/combat loop remains unfinished.',
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
    def skill_check(slot, usable, active, mana=6976):
        prior = len(re.findall(r'Native Player skill check probe \|', logs()))
        command('PLAYER_SKILL_CHECK', '--ei', 'skill_slot', str(slot))
        text = wait(lambda t: len(re.findall(r'Native Player skill check probe \|', t)) == prior + 1,
                    'two-result source skill check')
        rows = re.findall(r'Native Player skill check probe \| script (\S+) \| slot (\d+) \| saved level (\d+) \| usable (\d+) \| active (\d+) \| usable returns (\d+) \| active returns (\d+) \| MP (\d+) \| SnS_Level (-?\d+) \| temp ManaCost (-?\d+)', text)
        assert rows, 'source skill check did not report both result vectors'
        row = rows[-1]
        assert tuple(map(int, row[1:7])) == (slot, 0, usable, active, 2, 2), row
        assert int(row[7]) == mana, 'HasMana/check changed the live Knight MP'
        report.setdefault('skill_checks', []).append({'script': row[0], 'slot': slot,
            'saved_level': 0, 'usable': usable, 'active': active, 'return_counts': [2, 2],
            'MP': int(row[7]), 'SnS_Level': int(row[8]), 'temporary_mana_cost': int(row[9])})
        return text
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
        callbacks = 13 if a.full_update else a.completed_updates if a.mana_faeries else 8 if a.saved_skills else 0
        boundary = None if a.full_update else a.update_boundary if a.mana_faeries else 'GetCurrentSpellInfo' if a.saved_skills else 'GetCurrentSkillInfo__'
        update_message = ('Native Player skill update complete | attempt 1 | callbacks 13 | skill slots 16 | faery slots 5' if a.full_update else
                          f'Native Player skill update blocked | attempt 1 | callbacks {callbacks} | VM status -5')
        text = wait(lambda t: 'Native Player skill preparation | skills 16 | faeries 5 | loaded paths 15 | declarations 26' in t and
                    update_message in t and 'Native actor frame |' in t, 'real Player preparation/update boundary')
        if boundary: assert f'unresolved native Player skill provider: {boundary}' in text
        else:
            assert 'Native Player skill update blocked |' not in text
        if a.full_update or a.mana_faeries:
            assert 'Native Player saved faeries ready | difficulty 0 | selected 0 | level 0 | rows 5 5 5' in text
            assert text.count('Native Player saved faeries ready |') == 1
        if a.saved_skills:
            assert 'rows 16 | slot0 level 0 | source _InitSkills; starter grant/profile load pending' in text
            assert text.count('Native Player saved skills ready |') == 1
        assert text.count('Native Player skill preparation |') == 1
        report['initial'] = {'source_skill_slots': 16, 'source_faery_slots': 5, 'nonnull_instances': 13,
                             'source_paths': 15, 'source_declaration_calls': 26, 'completed_knight_updates': min(callbacks,8),
                             'completed_faery_updates': max(0,callbacks-8),
                             'update_boundary': boundary, 'saved_skill_rows': 16 if a.saved_skills else 0,
                             'update_vm_status': 0 if a.full_update else -5, 'full_skill_update_complete': a.full_update}
        report['screenshots'] = [screenshot('player-skills-initial')]
        command('ANIMATION_TIME', '--ei', 'time_ms', '0')
        wait(lambda t: 'Animation time command applied | time 0' in t, 'freeze')
        if a.saved_skills:
            skill_check(0, 1, 0)
            assert report['skill_checks'][-1]['temporary_mana_cost'] == 1024
            skill_check(7, 0, 1)  # Original passive check selects the second result.
        command('PLAYER_SKILL_COOLDOWN', '--ei', 'delay_ms', '12000')
        text = wait(lambda t: 'Player skill cooldown command applied | Original skill cooldown callback armed' in t, 'source cooldown fixture')
        match = re.search(r'Native Player skill cooldown probe \| script prince_warrior_bashdown \| slot0 field18 (\d+) \| timer (\d+) \| duration 12000', text)
        assert match and match[1] == match[2], 'Lua/native timer identities differ'
        timer_id = int(match[1])
        report['cooldown_fixture'] = {'script': 'prince_warrior_bashdown', 'slot': 0, 'field18': timer_id,
                                      'native_timer_id': timer_id, 'duration_ms': 12000, 'full_skill_use': False}
        # Authored Bashdown has no cooldown: its check is HasMana,false. This
        # deliberately armed framework timer must not add a new check gate.
        if a.saved_skills: skill_check(0, 1, 0)
        command('RELOAD_WORLD')
        text = wait(lambda t: 'World reload command applied |' in t and 'Native Player skills retained |' in t, 'retained world reload')
        expected_blocked = 0 if a.full_update else 1
        assert text.count('Native Player skill preparation |') == 1 and text.count('Native Player skill update blocked |') == expected_blocked
        first_vm = re.search(r'Native Player skills retained \| VM (\S+) \| paths 15 \| update attempts (\d+) \| timer callbacks 0', text)
        assert first_vm, 'VM/paths/update attempt not retained'
        assert int(first_vm[2]) > 1 if a.full_update else int(first_vm[2]) == 1
        # Reload resumes the frame; ensure pending cooldown survives recreation.
        adb('shell', 'cmd', 'window', 'user-rotation', 'lock', '1')
        text = wait(lambda t: len(re.findall(r'Native Player skills retained \|', t)) >= 2, 'retained rotation')
        restores = re.findall(r'Native Player skills retained \| VM (\S+) \| paths 15 \| update attempts (\d+)', text)
        assert restores and {row[0] for row in restores} == {first_vm[1]}, 'Player VM replaced on graphics restore'
        if a.full_update: assert int(restores[-1][1]) >= int(first_vm[2])
        assert text.count('Native Player skill preparation |') == 1 and text.count('Native Player skill update blocked |') == expected_blocked
        report['restore'] = {'same_process': pid, 'same_vm': first_vm[1], 'reload_and_rotation': True, 'preparation_count': 1,
                             'blocked_update_attempts': expected_blocked, 'observed_update_attempts': [int(row[1]) for row in restores]}
        if a.saved_skills:
            assert text.count('Native Player saved skills ready |') == 1
            skill_check(0, 1, 0)
        text = wait(lambda t: re.search(r'Native Player skill timer callback \| timer ' + str(timer_id) + r' \| callbacks 1 \| slot0 field18 -1', t), 'original cooldown expiry', 35)
        report['cooldown_expiry'] = {'callback_count': 1, 'slot0_field18': -1, 'same_native_timer_id': timer_id}
        if a.saved_skills: skill_check(0, 1, 0)
        command('PLAYER_SKILL_COOLDOWN', '--ei', 'delay_ms', '300')
        text = wait(lambda t: re.search(r'Native Player skill timer callback \| timer \d+ \| callbacks 2 \| slot0 field18 -1', t), 'cooldown rearm/expiry')
        assert text.count('Player skill cooldown command applied | Original skill cooldown callback armed') == 2
        report['cooldown_rearm_verified'] = True
        if a.full_update or a.mana_faeries:
            command('ANIMATION_TIME', '--ei', 'time_ms', '0')
            wait(lambda t: t.count('Animation time command applied | time 0') >= 2, 'freeze for MP debit')
            def mana_debit(amount, has, used, before, after):
                previous = len(re.findall(r'Native Player mana probe \|', logs()))
                command('PLAYER_MANA', '--ei', 'raw_amount', str(amount))
                t = wait(lambda t: len(re.findall(r'Native Player mana probe \|', t)) == previous + 1, 'original mana debit')
                rows = re.findall(r'Native Player mana probe \| amount (\d+) \| has (\d+) \| used (\d+) \| MP before (-?\d+) \| MP after (-?\d+) \| exempt14f0 (\d+) \| options (\d+)', t)
                assert tuple(map(int,rows[-1])) == (amount,has,used,before,after,0,0), rows[-1]
                report.setdefault('mana_debits',[]).append({'amount':amount,'has':has,'used':used,'MP_before':before,'MP_after':after})
            mana_debit(1024,1,1,6976,5952)
            mana_debit(8000,0,0,5952,5952)
            skill_check(0,1,0,5952)
            mana_debit(5952,1,1,5952,0)
            skill_check(0,0,0,0)
            mana_debit(1,0,0,0,0)
            command('RELOAD_WORLD')
            text = wait(lambda t: t.count('World reload command applied |') == 2, 'retained zero MP')
            skill_check(0,0,0,0)
            assert text.count('Native Player skill update blocked |') == expected_blocked
            assert text.count('Native Player saved faeries ready |') == 1
            report['zero_MP_retained_on_reload'] = True
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
