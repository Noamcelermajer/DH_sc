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
INITIALIZATION_UNITS = {
    'host_player_level': cpp_prefix('lua_script_level_queries', 'get_host_player_level'),
    'host_player_difficulty': cpp_prefix('lua_script_level_queries', 'get_host_player_difficulty'),
    'current_level_range': cpp_prefix('lua_script_level_queries', 'get_current_level_range'),
    'character_script_set_level': cpp_prefix('character_script_set_level', 'set_level'),
    'character_regen_hp': cpp_prefix('character_regeneration', 'regen_hp'),
    'character_regen_mp': cpp_prefix('character_regeneration', 'regen_mp'),
    'module_room_zone_bounds': cpp_prefix('module_room_zone_bounds', 'initialize'),
}
DEBUG_PERSISTENCE_UNITS = {
    'debug_switches_load': '_ZN3dh214debug_switches7Runtime4load',
    'debug_switches_get': '_ZN3dh214debug_switches7Runtime10get_switch',
    'debug_switches_set': '_ZN3dh214debug_switches7Runtime10set_switch',
    'debug_switches_write': cpp_prefix('debug_switches_persistence', 'write'),
    'debug_switches_save': cpp_prefix('debug_switches_persistence', 'save'),
}
LEVEL_CONSTRUCTION_UNITS = {'level_construction_fields': cpp_prefix('level_construction_fields', 'initialize')}
NATIVE_MONSTER_DEPENDENCIES = {
    'live_character_level_adapter': cpp_prefix('character_level_runtime', 'Runtime') + '15set_level_fixed',
    'player_level_member_set': cpp_prefix('character_level_member', 'set_value'),
    'player_character_level_setter': cpp_prefix('character_level_member', 'set_character_level'),
    'player_manager_host_level': cpp_prefix('player_manager_host_level', 'get_hosting_level'),
    'player_level_reconciliation': cpp_prefix('player_manager_host_level', 'reconcile_character_level'),
    'ai_update_all_skills': cpp_prefix('character_ai_update_all_skills', 'update'),
}
CHARACTER_LIST_DEPENDENCIES = {
    'character_list_query': 'dh2_aggro_target_search_character_list',
    'object_list_query': 'dh2_aggro_target_search_object_list',
    'manager_character_list_initialize': '_ZN3dh29character5aggro19object_manager_list10initialize',
    'manager_character_list_append': '_ZN3dh29character5aggro19object_manager_list16append_after_add',
    'manager_character_list_remove': '_ZN3dh29character5aggro19object_manager_list19remove_after_remove',
    'manager_object_list_methods': '_ZN3dh29character5aggro19object_manager_list19object_list_methods',
}
INIT_CALLBACK_DEPENDENCIES = {
    'ais_init_callback_callers': cpp_prefix('ais_external_init_callbacks','invoke'),
    'ais_default_init': cpp_prefix('ais_external_init_callbacks','default_init'),
    'ais_default_post': cpp_prefix('ais_external_init_callbacks','default_post'),
    'ais_default_final': cpp_prefix('ais_external_init_callbacks','default_final'),
}
HP_MP_INIT_DEPENDENCIES = {
    'character_hp_mp_init_caller': cpp_prefix('character_init_hp_mp','execute'),
    'native_hp_mp_init_adapter': cpp_prefix('character_level_runtime','Runtime') + '16initialize_hp_mp',
}
GHOST_SKILL_INIT_DEPENDENCIES = {
    'source_set_skills_and_spells': cpp_prefix('character_ai_set_skills_and_spells','prepare'),
    'source_faery_selection': cpp_prefix('character_faery_selection','select'),
    'source_skill_script_constructor': cpp_prefix('character_ai_skill_script_constructor','construct'),
    'source_skill_state_predicates': cpp_prefix('character_skill_state_queries','query'),
    'owned_skill_tables': cpp_prefix('data','load_skill_tables'),
    'owned_faery_tables': cpp_prefix('data','load_faery_tables'),
}
FRAME_FOUNDATION_UNITS = {
    'character_ai_classification': cpp_prefix('character_ai_classification','query'),
    'character_zonability': cpp_prefix('character_zonability','evaluate'),
    'character_update_eligibility': cpp_prefix('character_update_eligibility','evaluate'),
    'session_state_update': cpp_prefix('monster_external_script','Session')+'17call_state_update',
    'session_state_conditions': cpp_prefix('monster_external_script','Session')+'21call_state_conditions',
    'session_resolved_path_load': cpp_prefix('monster_external_script','Session')+'13load_resolved',
    'per_vm_path_cache': cpp_prefix('lua_script_load_once','load_once'),
}
FRAME_BRIDGE_UNITS = {
    'game_object_stop': 'dh2_game_object_stop',
    'character_physics_position': 'dh2_character_is_updating_position_from_physics',
    'character_update_script_scheduler': cpp_prefix('character_update_script_scheduler','run'),
    'session_created_services': cpp_prefix('monster_external_script','Session')+'24install_created_services',
    'session_vm_identity': '_ZNK3dh223monster_external_script7Session11vm_identity',
}


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
    parser.add_argument('--require-initialization-units', action='store_true')
    parser.add_argument('--require-debug-persistence-units', action='store_true')
    parser.add_argument('--require-level-construction-unit', action='store_true')
    parser.add_argument('--require-native-monster-dependencies', action='store_true')
    parser.add_argument('--require-character-list-dependencies', action='store_true')
    parser.add_argument('--require-init-callback-dependencies', action='store_true')
    parser.add_argument('--require-hp-mp-init-dependencies', action='store_true')
    parser.add_argument('--require-ghost-skill-init-dependencies', action='store_true')
    parser.add_argument('--require-frame-foundation-units', action='store_true')
    parser.add_argument('--require-frame-bridge-units', action='store_true')
    args = parser.parse_args()
    initialization = args.require_initialization_units or args.require_debug_persistence_units or args.require_level_construction_unit or args.require_native_monster_dependencies
    lifecycle = args.require_lifecycle_units or initialization
    runtime_dependencies = args.require_runtime_dependency_units or lifecycle
    frame = args.require_frame_units or runtime_dependencies
    acquisition = args.require_acquisition_units or frame
    units = {**UNITS, **(TARGETING_UNITS if args.require_targeting_units or acquisition else {}),
             **(ACQUISITION_UNITS if acquisition else {}),
             **(FRAME_UNITS if frame else {}),
             **(RUNTIME_DEPENDENCY_UNITS if runtime_dependencies else {}),
             **(LIFECYCLE_UNITS if lifecycle else {}),
             **(INITIALIZATION_UNITS if initialization else {}),
             **(DEBUG_PERSISTENCE_UNITS if args.require_debug_persistence_units else {}),
             **(LEVEL_CONSTRUCTION_UNITS if args.require_level_construction_unit else {}),
             **(NATIVE_MONSTER_DEPENDENCIES if args.require_native_monster_dependencies else {}),
             **(CHARACTER_LIST_DEPENDENCIES if args.require_character_list_dependencies else {}),
             **(INIT_CALLBACK_DEPENDENCIES if args.require_init_callback_dependencies else {}),
             **(HP_MP_INIT_DEPENDENCIES if args.require_hp_mp_init_dependencies else {}),
             **(GHOST_SKILL_INIT_DEPENDENCIES if args.require_ghost_skill_init_dependencies else {}),
             **(FRAME_FOUNDATION_UNITS if args.require_frame_foundation_units else {}),
             **(FRAME_BRIDGE_UNITS if args.require_frame_bridge_units else {})}
    # Sight has two overload groups; melee caller and radius share one unit.
    source_units = len(units) - int(acquisition) - int(frame) - 5 * int(runtime_dependencies) - 7 * int(lifecycle) - 3 * int(initialization) - 3 * int(args.require_debug_persistence_units) - 2 * int(args.require_native_monster_dependencies)
    source_units -= 4 * int(args.require_character_list_dependencies) + 3 * int(args.require_init_callback_dependencies)
    source_units -= int(args.require_hp_mp_init_dependencies) # adapter already counted in level unit.
    source_units -= int(args.require_ghost_skill_init_dependencies) # skill/faery readers share one source unit.
    source_units -= 3 * int(args.require_frame_foundation_units) # three Session methods extend its existing unit.
    source_units -= 2 * int(args.require_frame_bridge_units) # installer/identity extend the existing Session unit.
    raw = args.apk.read_bytes()
    digest = hashlib.sha256(raw).hexdigest()
    artifact = json.loads(args.artifact.read_text())
    assert artifact['validation'] == 'PASS' and artifact['apk_sha256'] == digest
    abis = {}
    with zipfile.ZipFile(io.BytesIO(raw)) as archive:
        for abi in ('arm64-v8a', 'x86_64'):
            exports = {}
            export_libraries = {}
            lua_definitions = []
            debug_backend = []
            native_character_owner = []
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
                if path.endswith('/libdh2_native.so') and args.require_native_monster_dependencies:
                    debug_backend = sorted(n for n in defined if n.startswith('_ZN3dh26native11debug_files7Backend10initialize'))
                if path.endswith('/libdh2_native.so') and args.require_character_list_dependencies:
                    native_character_owner = sorted(n for n in defined if n.startswith('_ZN3dh26native14character_list5Owner16enroll_after_add'))
                for unit, prefix in units.items():
                    library = 'libdh2_game_data.so' if unit in ('owned_skill_tables', 'owned_faery_tables') else 'libdh2_level_world.so'
                    if path.endswith('/'+library):
                        exports[unit] = sorted(n for n in defined if n.startswith(prefix))
                        export_libraries[unit] = path
            assert all(exports.get(unit) for unit in units), (abi, exports)
            expected_target_exports = {
                'dh2_aggro_target_list_init', 'dh2_aggro_target_search', 'dh2_aggro_target_pop',
            }
            if args.require_character_list_dependencies:
                expected_target_exports.update(('dh2_aggro_target_search_character_list', 'dh2_aggro_target_search_object_list'))
            assert set(exports['target_search']) == expected_target_exports, (abi, exports['target_search'])
            assert lua_definitions == [f'lib/{abi}/libdh2_script_runtime.so'], (abi, lua_definitions)
            if args.require_native_monster_dependencies:
                assert debug_backend, (abi, 'real native Debug file backend missing')
            if args.require_character_list_dependencies:
                assert native_character_owner, (abi, 'native owned Character list missing')
            abis[abi] = {'source_unit_exports': exports, 'lua_core_definitions': lua_definitions,
                         'source_unit_export_libraries': export_libraries,
                         'native_debug_file_backend': debug_backend,
                         'native_character_list_owner': native_character_owner}
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
