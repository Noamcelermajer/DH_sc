"""Replay recorded loader fixtures and assemble unchanged bundled Crypt bytes.

This reruns native code against historical oracle results; it does not execute
the original ARM engine. Capture drift is reported separately from fixture parity.
"""
import hashlib
import json
import pathlib
import struct
import subprocess
import sys
import zipfile

root, fixtures, binaries = map(lambda p: pathlib.Path(p).resolve(), sys.argv[1:])
loader = root / 'port/level-loader'
word = lambda n: struct.pack('<I', n & 0xffffffff)
def blob(value):
    raw = value.encode() if isinstance(value, str) else value
    return word(len(raw)) + raw
def run(name, payload, *args):
    return json.loads(subprocess.check_output([str(binaries / name), *map(str, args)], input=payload, timeout=60))

module = json.loads((loader / 'reports/module-load-original.json').read_text())
assert module['validation'] == 'PASS'
payload = bytearray(word(len(module['cases'])))
for row in module['cases']:
    payload += blob(row['label']) + blob(row['gametype'])
    payload += word(row['module_id']) + b''.join(word(n) for n in row['position_words'])
    payload += blob(row['gameplay']) + blob(row['visual'])
    payload += word(row['gameplay_pending']) + word(row['visual_pending'])
actual = run('dh2_loader_module_load_probe', payload)
assert actual['adapter_checks'] == 12
for wanted, got in zip(module['cases'], actual['cases'], strict=True):
    for key in ('label', 'events', 'file_polls', 'final_context'):
        assert wanted[key] == got[key], (wanted['label'], key)

receipt = json.loads((loader / 'reports/level-file-walk-original.json').read_text())
assert receipt['validation'] == 'PASS'
prefix = 'com.gameloft.android.GAND.GloftD2SS/files/'
raw_fixtures = {'fixture/' + name + '.xml': raw.encode() for name, raw in receipt['fixture_source'].items()}
raw_fixtures['fixture/unsupported_nul.xml'] = b'<Module>\0<GameObject name="a" gametype="Decor"/></Module>'
raw_fixtures['data/scene/alias.mgp'] = raw_fixtures['fixture/single.xml']
archive = fixtures / 'traversal.zip'
with zipfile.ZipFile(archive, 'w', zipfile.ZIP_DEFLATED) as pack:
    for uri, raw in raw_fixtures.items():
        pack.writestr(prefix + uri, raw)
payload = bytearray(word(len(receipt['fixtures'])))
for row in receipt['fixtures']:
    uri = 'fixture/' + row['label'] + '.xml'
    raw = raw_fixtures[uri]
    assert hashlib.sha256(raw).hexdigest() == row['raw_sha256']
    payload += word(1) + blob(row['label']) + blob(uri) + blob(row['requested']) + blob(raw)
walk = run('dh2_loader_cached_level_file_probe', payload, archive, archive)
assert walk['adapter_checks'] == 12
for wanted, got in zip(receipt['fixtures'], walk['cases'], strict=True):
    for key in ('label', 'parse_success', 'calls'):
        assert wanted[key] == got[key], (wanted['label'], key)
    assert got['unsafe'] == bool(wanted['unsafe']) and got['raw_source_preserved']
    events = [{k: v for k, v in event.items() if not(event['kind'] == 'parse_result' and k == 'error')}
              for event in wanted['events'] if event['kind'] != 'unsafe_null_first_child_element']
    assert events == got['events'], wanted['label']
    assert wanted.get('failure_cleanup_poll') == got['failure_cleanup_poll']

maps = []
for identity in ('CRYPT', 'CRYPT_REVISIT'):
    value = run('dh2_loader_fixed_map_probe', b'', fixtures / 'crypt.zip', identity, 'data/scene/x07_crypt_backup.mlx')
    assert value['validation'] == 'PASS' and value['identity'] == identity
    assert value['module_count'] == 8 and value['geometry_kinds']['mesh'] == 97
    assert value['navigation'] == {'floors': 8, 'triangles': 314, 'nodes': 335, 'edges': 838, 'sewn': True}
    assert value['ownership_checks'] and not value['gameplay_verified']
    maps.append(value)

drift = []
for label, captured in [('module', module), ('file_walk', receipt)]:
    for path, expected in captured['capture_sha256'].items():
        file = loader / path
        current = hashlib.sha256(file.read_bytes()).hexdigest() if file.exists() else None
        if current != expected:
            drift.append({'receipt': label, 'path': path, 'recorded': expected, 'current': current})
report = {'validation': 'PASS', 'module_cases': len(module['cases']), 'traversal_cases': len(receipt['fixtures']),
          'module_adapter_checks': actual['adapter_checks'], 'cache_adapter_checks': walk['adapter_checks'],
          'maps': maps, 'historical_capture_drift': drift, 'original_engine_reexecuted': False,
          'swamp_retested': False, 'runtime_objects_verified': False}
(fixtures / 'loader-replay.json').write_text(json.dumps(report, indent=2) + '\n')
print(json.dumps({k: v for k, v in report.items() if k != 'maps'}))
