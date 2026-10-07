cmake_minimum_required(VERSION 3.22)
project(dh2_random_level LANGUAGES CXX)

add_library(dh2_random_level STATIC native_rule_plan_v1.cpp)
target_include_directories(dh2_random_level PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}")
target_compile_features(dh2_random_level PUBLIC cxx_std_17)

if(MSVC)
  target_compile_options(dh2_random_level PRIVATE /W4 /WX)
else()
  target_compile_options(dh2_random_level PRIVATE -Wall -Wextra -Werror -pedantic)
endif()

include(CTest)
if(BUILD_TESTING)
  add_executable(native_rule_plan_v1_audit tests/native_rule_plan_v1.cpp)
  target_link_libraries(native_rule_plan_v1_audit PRIVATE dh2_random_level)
  if(MSVC)
    target_compile_options(native_rule_plan_v1_audit PRIVATE /W4 /WX)
  else()
    target_compile_options(native_rule_plan_v1_audit PRIVATE -Wall -Wextra -Werror -pedantic)
  endif()

  add_test(
    NAME native_rule_plan_v1_audit
    COMMAND native_rule_plan_v1_audit
      "${CMAKE_CURRENT_SOURCE_DIR}/../android-native/app/src/main/assets/worlds/007_crypt_01.rule.xml")
endif()
