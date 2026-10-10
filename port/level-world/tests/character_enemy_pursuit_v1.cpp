#include "../character_enemy_pursuit_v1.hpp"

#include <algorithm>
#include <cmath>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <string>

namespace {
using namespace dh2::character;
using namespace dh2::character_enemy_pursuit_v1;
struct Fixture {
    float target_position[3]{10.f, 20.f, 30.f};
    float radius_squared{4.f};
    std::uint32_t ai_calls{};
    std::uint32_t control_calls{};
    std::uint32_t path_calls{};
    std::uintptr_t path_owner{};
    float path_position[3]{};
};
void ai_invoke(void* raw, AnimationAIState96*, const AnimationAIRequest32* request,
               AnimationAIResponse16* response) {
    auto& f = *static_cast<Fixture*>(raw);
    ++f.ai_calls;
    if (request->service == ai_target_position)
        std::copy(f.target_position, f.target_position + 3, response->position);
    else if (request->service == ai_melee_radius_squared)
        std::memcpy(&response->word, &f.radius_squared, sizeof(response->word));
}
int control_invoke(void* raw, const CharacterControlRequest32* request,
                   CharacterControlResponse16* response) {
    auto& f = *static_cast<Fixture*>(raw);
    ++f.control_calls;
    if (request->service == control_is_remotely_updated) {
        response->word = 0;
        return 1;
    }
    if (request->service == control_target_position) {
        std::copy(f.target_position, f.target_position + 3, response->position);
        return 1;
    }
    if (request->service == control_path_to) {
        f.path_owner = request->subject;
        std::copy(request->position, request->position + 3, f.path_position);
        ++f.path_calls;
        return 1;
    }
    return -1;
}
void require(bool ok, const char* text) {
    if (!ok) { std::fprintf(stderr, "FAIL: %s\n", text); std::exit(1); }
}
}

int main() {
    Fixture fixture;
    AnimationAIState96 ai{};
    ai.owner = 0x100;
    ai.controller = 0x200;
    ai.target = 0x300;
    ai.seeking = 1;
    ControllerCommandState32 controller{0x200, 0x100, 0, 0, 0, 0};
    Binding binding{&ai, {&fixture, ai_invoke}, &controller,
                    {&fixture, control_invoke}};
    Result result{};
    std::string error;
    require(move_begin(binding, &result, error) == Status::complete &&
            result.move_to_calls == 1 && result.path_dispatch_attempted &&
            result.controller_status == 1 && fixture.path_calls == 1 &&
            fixture.path_owner == ai.owner &&
            fixture.path_position[0] == fixture.target_position[0] &&
            fixture.path_position[1] == fixture.target_position[1] &&
            fixture.path_position[2] == fixture.target_position[2],
            "source Move-begin did not reach the canonical Character PathTo service");

    fixture.radius_squared = 2000.f;
    const auto paths_before = fixture.path_calls;
    require(move_begin(binding, &result, error) == Status::complete &&
            result.move_to_calls == 0 && fixture.path_calls == paths_before,
            "in-range enemy incorrectly requested a new path");

    controller.owner = 0x101;
    require(move_begin(binding, &result, error) == Status::invalid_argument &&
            fixture.path_calls == paths_before,
            "mismatched Character/controller identities were accepted");
    std::puts("PASS character_enemy_pursuit_v1 checks=3");
}
