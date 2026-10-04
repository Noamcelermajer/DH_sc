"""Verify original Spawn evidence and write the cumulative mapping extension.

This extends the pinned Adam audit without rewriting its historical ledger.
Evidence reach is not a count of completely rebuilt functions.
"""
import argparse
import csv
import hashlib
import json
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
MANIFEST = 'port/level-world/reference/character-spawn/original-functions.json'
TEMPLATE_MANIFEST = 'port/level-world/reference/character-template-factory/original-functions.json'
OUTPUT = 'docs/generated/character-runtime-function-map.json'
STATE = ['port/level-world/character_state.cpp',
         'port/level-world/character_coordinator.cpp']
NATIVE = 'port/android-native/app/src/main/cpp/model_renderer.cpp'


def classify(row):
    symbol = row['demangled']
    if row.get('evidence_manifest') == TEMPLATE_MANIFEST:
        category = ('host_template_projection' if row['port_coverage'].startswith('bounded')
                    else 'template_dependency_evidence')
        return (category, ['port/level-world/character_template_factory.cpp'],
                row['port_coverage'] + '; host-only, not live actor factory integration.')
    if symbol.startswith(('CSLimbus::', 'CSSpawn::')):
        return ('bounded_state_kernel', STATE,
                'Limbus/Spawn service ordering, flags and registered events. '
                'Respawn/group/AI facts remain external; first-spawn Ghost path is live.')
    if symbol.startswith('Script_SpawnCharacter::'):
        return ('bounded_factory_request', ['port/level-world/character_factory.cpp'],
                'Exact-name request on already-loaded actors. No actor allocation '
                'or authored trigger dispatch is implemented here.')
    if symbol.startswith('CharStateMachine::SM_SetSpawnState'):
        return ('bounded_factory_request', ['port/level-world/character_factory.cpp'],
                'The observed false,false request selects Spawn ID 1; other '
                'PreSpawn/cinematic paths remain outside this adapter.')
    if symbol.startswith(('CharStateMachine::_SetState', 'CharStateMachine::RaiseStateEvent')):
        return ('bounded_state_kernel', STATE,
                'Supported state projections, synchronous blur/focus/event '
                'dispatch. Not all registered Character states or AI consumers.')
    if symbol.startswith('VisualObject::'):
        return ('original_return_stub', [NATIVE],
                'Preserves source no-op fade boundary and raw argument. No alpha ramp.')
    if symbol.startswith('GameObject::IsUpdatable'):
        return ('source_query_boundary', [NATIVE],
                'Constant-true query; no visibility mutation. Initial hiding is '
                'an explicit development presentation policy.')
    if symbol.startswith(('Character::GetCharAnimTableId', 'Character::GetCharAI',
                          'Character::GetCharType')):
        return ('resolved_data_service', [NATIVE, 'port/game-data/properties.cpp'],
                'Current cached property/table projections provide selected '
                'animation and AI type inputs. Full property ownership is incomplete.')
    if symbol.startswith('Character::InitPhysicalObject'):
        return ('bounded_native_service', [NATIVE, 'port/level-world/character_body_config.cpp'],
                'Fresh Ghost configuration and real NativeWorld body creation; '
                'body replacement and lifecycle tested. Whole Character factory is pending.')
    return ('caller_or_service_evidence', [MANIFEST],
            'Original caller/service contract recorded. Complete constructor, '
            'state registration, PreSpawn, revival, linked aggro and AI ownership '
            'are not reconstructed by this checkpoint; see NOTES.md.')


def build():
    manifest = json.loads((ROOT / MANIFEST).read_text(encoding='utf-8-sig'))
    template = json.loads((ROOT / TEMPLATE_MANIFEST).read_text(encoding='utf-8-sig'))
    assert manifest['original_sha256'] == template['original_sha256']
    pinned = json.loads((ROOT / 'docs/generated/combined-function-audit.json').read_text())
    old_addresses = {int(row['address'], 0) for row in pinned['mapped_function_starts']}
    index_path = ROOT / 'recovered/native/symbols/libDungeonHunter2.so/function-index.csv'
    with index_path.open(encoding='utf-8-sig', newline='') as stream:
        index = {int(row['address'], 0): row for row in csv.DictReader(stream)}
    rows = []
    records = [{**record, 'evidence_manifest': path}
               for path, source in ((MANIFEST, manifest), (TEMPLATE_MANIFEST, template))
               for record in source['functions']]
    for original in records:
        address = int(original['elf_address'], 0)
        entry = index[address]
        assert int(entry['range_size']) == original['size'], original['demangled']
        aliases = json.loads(entry['aliases'])
        assert any(a['name'] == original['original_symbol'] for a in aliases)
        relative = 'recovered/native/assembly/libDungeonHunter2.so/' + entry['assembly_file']
        listing = (ROOT / relative).read_text(encoding='utf-8-sig')
        memory = {}
        for line in listing.splitlines():
            match = re.match(r'^([0-9a-fA-F]{8})\s+((?:[0-9a-fA-F]{2}\s+)+)', line)
            if match:
                start = int(match[1], 16)
                raw = bytes.fromhex(match[2])
                for offset, value in enumerate(raw):
                    memory[start + offset] = value
        data = bytes(memory[p] for p in range(address, address + original['size']))
        assert hashlib.sha256(data).hexdigest() == original['sha256'], original['demangled']
        category, paths, scope = classify(original)
        assert all((ROOT / path).is_file() for path in paths)
        rows.append({**original, 'assembly_file': relative,
                     'in_pinned_adam_ledger': address in old_addresses,
                     'mapping_category': category, 'source_paths': paths,
                     'implementation_limit': scope})
    addresses = {int(row['elf_address'], 0) for row in rows}
    assert len(addresses) == len(rows)
    return {
        'schema': 'dh2-character-runtime-function-map/v1',
        'scope': 'Original evidence and bounded implementation extension; '
                 'counts do not measure game completion or fully reconstructed functions.',
        'original_library_sha256': manifest['original_sha256'],
        'adam_commit': pinned['provenance']['adam_commit'],
        'pinned_ledger': 'docs/generated/combined-function-audit.json',
        'extension_manifests': [MANIFEST, TEMPLATE_MANIFEST],
        'counts': {'pinned_addresses': len(old_addresses),
                   'extension_records': len(rows),
                   'additional_addresses': len(addresses - old_addresses),
                   'combined_unique_addresses': len(old_addresses | addresses)},
        'verification': f'All ranges, aliases and {len(rows)} complete original byte hashes '
                        'verified against the original symbol index and assembly exports.',
        'functions': rows,
        'unsupported': list(dict.fromkeys(manifest['unsupported'] + template['unsupported'])),
    }


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--check', action='store_true', help='Verify the saved map matches current evidence')
    args = parser.parse_args()
    result = build()
    target = ROOT / OUTPUT
    if args.check:
        assert json.loads(target.read_text()) == result, 'saved map differs; regenerate and review'
    else:
        target.write_text(json.dumps(result, indent=2) + '\n', encoding='utf-8')
    print(json.dumps({'validation': 'PASS', **result['counts'], 'report': OUTPUT}))


if __name__ == '__main__':
    main()
