cmake_minimum_required(VERSION 3.22)
project(dh2_cloud LANGUAGES C CXX)
enable_testing()
find_package(Python3 REQUIRED COMPONENTS Interpreter)
option(DH2_CLOUD_SANITIZERS "Instrument the cloud reconstruction checks" OFF)
if(DH2_CLOUD_SANITIZERS)
 add_compile_options(-fsanitize=address,undefined -fno-omit-frame-pointer)
 add_link_options(-fsanitize=address,undefined)
endif()
add_subdirectory(../level-loader "${CMAKE_CURRENT_BINARY_DIR}/loader")
set(DH2_ROOT "${CMAKE_CURRENT_SOURCE_DIR}/../..")
set(FIXTURES "${CMAKE_CURRENT_BINARY_DIR}/fixtures")
execute_process(COMMAND "${Python3_EXECUTABLE}" "${CMAKE_CURRENT_SOURCE_DIR}/prepare_fixtures.py"
 "${DH2_ROOT}" "${FIXTURES}" COMMAND_ERROR_IS_FATAL ANY)
foreach(unit player_skill_session_v1 player_skill_update_session_v1 player_skill_integers)
 if(unit STREQUAL "player_skill_integers")
  set(unit_source tests/player_skill_integers.cpp)
 else()
  set(unit_source ../level-world/tests/${unit}.cpp)
 endif()
 add_executable(cloud_${unit} ${unit_source}
  ../android-native/app/src/main/cpp/native_debug_files.cpp ../pydata-names/names.c)
 target_compile_features(cloud_${unit} PRIVATE cxx_std_20)
 target_link_libraries(cloud_${unit} PRIVATE dh2_level_world dh2_script_runtime)
 add_test(NAME cloud_${unit} COMMAND cloud_${unit} "${FIXTURES}/cache" "${FIXTURES}/state/${unit}")
endforeach()
add_test(NAME cloud_loader_replays COMMAND "${Python3_EXECUTABLE}"
 "${CMAKE_CURRENT_SOURCE_DIR}/replay_loader.py" "${DH2_ROOT}" "${FIXTURES}"
 "$<TARGET_FILE_DIR:dh2_loader_module_load_probe>")
add_custom_target(dh2_cloud_check_binaries DEPENDS
 cloud_player_skill_session_v1 cloud_player_skill_update_session_v1 cloud_player_skill_integers
 script_int_audit dh2_loader_xml_ownership dh2_loader_module_load_probe
 dh2_loader_cached_level_file_probe dh2_loader_fixed_map_probe)
