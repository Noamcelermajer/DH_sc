#include "../skill_train_callback_v1.hpp"

#include <array>
#include <iostream>
#include <string>

int main() {
    unsigned checks = 0;
    bool ok = true;
    const auto check = [&](bool value, const char* message) {
        if (!value) std::cerr << "FAIL: " << message << '\n';
        ok &= value;
        ++checks;
    };

    std::array<std::int32_t, 3> integers{};
    std::array<bool, 3> booleans{};
    unsigned integer_calls = 0, boolean_calls = 0;
    const auto to_integer = [&](std::size_t index, std::int32_t& out, std::string&) {
        ++integer_calls;
        out = integers[index];
        return true;
    };
    const auto to_boolean = [&](std::size_t index) {
        ++boolean_calls;
        return booleans[index];
    };
    dh2::ui::SkillTrainCallbackArgsV1 decoded;
    std::string error;

    integers = {7, 2, 0};
    check(dh2::ui::decode_skill_train_callback_v1(2, to_integer, to_boolean,
              decoded, error) && decoded.skill_index == 7 && decoded.player_index == 2 &&
              !decoded.test_only && integer_calls == 2 && boolean_calls == 0,
          "two-argument Talent click converts indices without reading a test flag");

    integers = {5, 0, 0};
    integer_calls = boolean_calls = 0;
    check(dh2::ui::decode_skill_train_callback_v1(2, to_integer, to_boolean,
              decoded, error) && decoded.skill_index == 5 && decoded.player_index == 0 &&
              !decoded.test_only && integer_calls == 2 && boolean_calls == 0,
          "SWF btn_add.onRelease arguments decode as [selected skill index, local PlayerInfo 0]");

    integers = {4, 1, 0};
    booleans = {false, false, true};
    integer_calls = boolean_calls = 0;
    check(dh2::ui::decode_skill_train_callback_v1(3, to_integer, to_boolean,
              decoded, error) && decoded.skill_index == 4 && decoded.player_index == 1 &&
              decoded.test_only && integer_calls == 2 && boolean_calls == 1,
          "three-argument source form coerces its optional test flag");

    integers = {-1, 0, 0};
    check(dh2::ui::decode_skill_train_callback_v1(2, to_integer, to_boolean,
              decoded, error) && decoded.skill_index == -1 && decoded.player_index == 0,
          "negative index reaches the callback's source no-op path");

    integer_calls = boolean_calls = 0;
    check(!dh2::ui::decode_skill_train_callback_v1(4, to_integer, to_boolean,
              decoded, error) && !error.empty() && integer_calls == 0 && boolean_calls == 0,
          "unsupported arity has no callback conversion side effects");

    std::cout << "{\"validation\":\"" << (ok ? "PASS" : "FAIL")
              << "\",\"checks\":" << checks << "}\n";
    return ok ? 0 : 1;
}
