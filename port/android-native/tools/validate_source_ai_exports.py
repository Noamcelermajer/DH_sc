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
def cpp_prefix(namespace, function):
    return f'_ZN3dh2{len(namespace)}{namespace}{len(function)}{function}'


FRAME_UNITS = {
    'enemy_retention': cpp_prefix('character_enemy_retention', 'update'),
    'target_update': cpp_prefix('character_ai_update_target', 'update'),
    'master_update': cpp_prefix('character_ai_master_update', 'update'),
    'melee_range': cpp_prefix('character_ai_melee_range', 'evaluate_object'),
    'melee_radius': cpp_prefix('character_ai_melee_range', 'get_radius'),
    'interaction_range': cpp_prefix('character_ai_interaction_range', 'evaluate_object'),
    'ais_external_update': cpp_prefix('ais_external_update', 'update'),
    'ais_state_callbacks': cpp_prefix('ais_state_callbacks', 'invoke'),
    'pause_update': cpp_prefix('character_ai_pause_update', 'pause'),
    'collision_persist': cpp_prefix('ais_default_collision_persist', 'persist'),
}
RUNTIME_DEPENDENCY_UNITS = {
    'close_range': cpp_prefix('character_ai_ranged_range', 'evaluate_close'),
    'ranged_range': cpp_prefix('character_ai_ranged_range', 'evaluate_ranged'),
    'character_range_parameters': cpp_prefix('character_range_capability', 'character_parameters'),
    'inventory_range_parameters': cpp_prefix('character_range_capability', 'inventory_parameters'),
    'character_range_capability': cpp_prefix('character_range_capability', 'character_can_range'),
    'inventory_range_capability': cpp_prefix('character_range_capability', 'has_ranged_weapon'),
    'shared_ai_queue': cpp_prefix('character_ai_queue', 'advance'),
    'character_interactive': cpp_prefix('character_interactive', 'evaluate'),
    'character_ai_initialization': cpp_prefix('character_ai_initialization', 'construct'),
    'ais_default_callback_flags': cpp_prefix('ais_external_init_vcb', 'initialize_default'),
    'ais_external_callback_flags': cpp_prefix('ais_external_init_vcb', 'initialize_external'),
}
LIFECYCLE_UNITS = {
    'ais_script_construction': cpp_prefix('ais_external_initialization','construct_char_ai_script'),
    'ais_external_construction': cpp_prefix('ais_external_initialization','construct_external'),
    'ais_character_association': cpp_prefix('ais_external_initialization','set_character'),
    'lua_base_bindings': cpp_prefix('ais_native_bindings','bind_base'),
    'lua_ai_bindings': cpp_prefix('ais_native_bindings','bind_character'),
    'lua_all_bindings': cpp_prefix('ais_native_bindings','bind_all'),
    'character_ai_association': cpp_prefix('character_ai_association','associate'),
    'game_object_native_bindings': cpp_prefix('character_native_bindings','bind_game_object'),
    'character_native_bindings': cpp_prefix('character_native_bindings','bind_character'),
    'room_zone_initial_enrollment': cpp_prefix('room_zone_enrollment','add_initial_object'),
    'object_zone_entered': cpp_prefix('room_zone_enrollment','zone_entered'),
    'object_zone_exited': cpp_prefix('room_zone_enrollment','zone_exited'),
}
LUA_SYMBOL = 'lua_newstate'


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--apk', type=Path, required=True)
    parser.add_argument('--artifact', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--require-targeting-units', action='store_true')
    parser.add_argument('--require-acquisition-units', action='store_true')
    parser.add_argument('--require-frame-units', action='store_true')
    parser.add_argument('--require-runtime-dependency-units', action='store_true')
    parser.add_argument('--require-lifecycle-units', action='store_true')
    args = parser.parse_args()
    runtime_dependencies = args.require_runtime_dependency_units or args.require_lifecycle_units
    frame = args.require_frame_units or runtime_dependencies
    acquisition = args.require_acquisition_units or frame
    units = {**UNITS, **(TARGETING_UNITS if args.require_targeting_units or acquisition else {}),
             **(ACQUISITION_UNITS if acquisition else {}),
             **(FRAME_UNITS if frame else {}),
             **(RUNTIME_DEPENDENCY_UNITS if runtime_dependencies else {}),
             **(LIFECYCLE_UNITS if args.require_lifecycle_units else {})}
    # Sight has two overload groups; melee caller and radius share one unit.
    source_units = len(units) - int(acquisition) - int(frame) - 5 * int(runtime_dependencies) - 7 * int(args.require_lifecycle_units)
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
        'compiled_source_units': source_units,
        'required_export_groups': len(units),
        'native_ai_wired': False, 'full_game_playable': False,
        'scope': f'{source_units} bounded source AI/script units compiled and exported for ELF64 ARM64/x86_64; one reused Adam Lua core per ABI. Export verification establishes compilation only; live AI/controller/body behavior requires separate device evidence.',
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(report, indent=2) + '\n', encoding='utf-8')
    print(json.dumps({'validation': 'PASS', 'apk_sha256': digest, 'abis': list(abis),
                      'source_units': source_units, 'native_ai_wired': False}))


if __name__ == '__main__':
    main()
