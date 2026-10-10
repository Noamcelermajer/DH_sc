#pragma once

#include <cstddef>
#include <cstdint>
#include <string>

namespace dh2::ui {

struct SkillTrainCallbackArgsV1 {
    std::int32_t skill_index = 0;
    std::int32_t player_index = 0;
    bool test_only = false;
};

// The source callback converts both indices with as_value::to_number() and
// only reads the optional test flag when argc is exactly three.
template<class ToInteger, class ToBoolean>
bool decode_skill_train_callback_v1(std::size_t argc, ToInteger&& to_integer,
        ToBoolean&& to_boolean, SkillTrainCallbackArgsV1& out,
        std::string& error) {
    out = {};
    error.clear();
    if (argc != 2 && argc != 3) {
        error = "NativeSkillsTrainSkill expects two indices and an optional test flag";
        return false;
    }
    if (!to_integer(0, out.skill_index, error) ||
        !to_integer(1, out.player_index, error)) return false;
    out.test_only = argc == 3 ? to_boolean(2) : false;
    return true;
}

} // namespace dh2::ui
