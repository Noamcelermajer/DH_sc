"""Verify the bounded source AI units are packaged for both native ABIs.

Export presence and one Lua core establish the build boundary. They do not
claim that the live enemy controllers call these units or complete the game.
Requires pyelftools, also used by the original-function comparison tools.
"""
import argparse
import hashlib
import io
import json
from pathlib import Path
import zipfile

from elftools.elf.elffile import ELFFile

UNITS = {
    'aggro_delay': '_ZN3dh221character_aggro_delay6update',
    'turn_selection': '_ZN3dh217character_ai_turn8evaluate',
    'target_search': 'dh2_aggro_target_',
    'candidate_events': '_ZN3dh232character_aggro_candidate_events7consume',
    'enemy_spotted': '_ZN3dh223character_enemy_spotted16on_enemy_spotted',
    'external_monster_script': '_ZN3dh223monster_external_script7Session8dispatch',
}
TARGETING_UNITS = {
    'target_mutation': 'dh2_character_ai_set_target',
    'faction_relations': '_ZN3dh222character_ai_relations5query',
    'combat_query': '_ZN3dh222character_ai_in_combat8evaluate',
}
ACQUISITION_UNITS = {
    'acquisition_prefix': '_ZN3dh234character_aggro_acquisition_prefix7prepare',
    'monster_retarget': '_ZN3dh226character_monster_retarget6update',
    'sight_distance': '_ZN3dh218character_ai_sight17evaluate_distance',
    'sight_object': '_ZN3dh218character_ai_sight15evaluate_object',
    'ghost_actor_composition': '_ZN3dh216ghost_ai_session12ActorSession19search_and_dispatch',
}
LUA_SYMBOL = 'lua_newstate'


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--apk', type=Path, required=True)
    parser.add_argument('--artifact', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--require-targeting-units', action='store_true')
    parser.add_argument('--require-acquisition-units', action='store_true')
    args = parser.parse_args()
    units = {**UNITS, **(TARGETING_UNITS if args.require_targeting_units or args.require_acquisition_units else {}),
             **(ACQUISITION_UNITS if args.require_acquisition_units else {})}
    raw = args.apk.read_bytes()
    digest = hashlib.sha256(raw).hexdigest()
    artifact = json.loads(args.artifact.read_text())
    assert artifact['validation'] == 'PASS' and artifact['apk_sha256'] == digest
    abis = {}
    with zipfile.ZipFile(io.BytesIO(raw)) as archive:
        for abi in ('arm64-v8a', 'x86_64'):
            exports = {}
            lua_definitions = []
            for path in archive.namelist():
                if not path.startswith(f'lib/{abi}/') or not path.endswith('.so'):
                    continue
                image = archive.read(path)
                elf = ELFFile(io.BytesIO(image))
                assert elf.elfclass == 64
                assert elf['e_machine'] == {'arm64-v8a': 'EM_AARCH64', 'x86_64': 'EM_X86_64'}[abi]
                symbols = elf.get_section_by_name('.dynsym')
                defined = {s.name for s in symbols.iter_symbols() if s['st_shndx'] != 'SHN_UNDEF'}
                if LUA_SYMBOL in defined:
                    lua_definitions.append(path)
                if path.endswith('/libdh2_level_world.so'):
                    exports = {
                        unit: sorted(n for n in defined if n.startswith(prefix))
                        for unit, prefix in units.items()
                    }
            assert all(exports.get(unit) for unit in units), (abi, exports)
            assert set(exports['target_search']) == {
                'dh2_aggro_target_list_init', 'dh2_aggro_target_search', 'dh2_aggro_target_pop',
            }, (abi, exports['target_search'])
            assert lua_definitions == [f'lib/{abi}/libdh2_script_runtime.so'], (abi, lua_definitions)
            abis[abi] = {'source_unit_exports': exports, 'lua_core_definitions': lua_definitions}
    report = {
        'validation': 'PASS', 'apk_sha256': digest, 'apk_bytes': len(raw),
        'artifact_report_sha256': hashlib.sha256(args.artifact.read_bytes()).hexdigest(),
        'abis': abis, 'source_sha256': artifact['source_sha256'],
        'compiled_source_units': len(units) - int(args.require_acquisition_units),
        'required_export_groups': len(units),
        'native_ai_wired': False, 'full_game_playable': False,
        'scope': f'{len(units) - int(args.require_acquisition_units)} bounded source AI/script units compiled and exported for ELF64 ARM64/x86_64; one reused Adam Lua core per ABI. Existing Crypt spawn runtime passed. Live acquisition/controller integration is pending.',
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(report, indent=2) + '\n', encoding='utf-8')
    print(json.dumps({'validation': 'PASS', 'apk_sha256': digest, 'abis': list(abis),
                      'source_units': len(units) - int(args.require_acquisition_units), 'native_ai_wired': False}))


if __name__ == '__main__':
    main()
