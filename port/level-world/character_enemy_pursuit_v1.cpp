#include "character_enemy_pursuit_v1.hpp"

namespace dh2::character_enemy_pursuit_v1 {
namespace {

struct Dispatch {
    const Binding& binding;
    Result& result;
    bool failed{};
};

void invoke(void* raw, character::AnimationAIState96* state,
            const character::AnimationAIRequest32* request,
            character::AnimationAIResponse16* response) {
    auto& dispatch = *static_cast<Dispatch*>(raw);
    ++dispatch.result.ai_service_calls;
    if (!state || !request || !response) {
        dispatch.failed = true;
        return;
    }
    if (request->service != character::ai_controller_move_to) {
        try {
            dispatch.binding.ai_services.invoke(
                dispatch.binding.ai_services.context, state, request, response);
        } catch (...) { dispatch.failed = true; }
        return;
    }

    ++dispatch.result.move_to_calls;
    dispatch.result.path_dispatch_attempted = true;
    if (request->subject != dispatch.binding.controller->controller ||
        !request->payload || request->payload != state->target ||
        state->owner != dispatch.binding.controller->owner ||
        state->controller != dispatch.binding.controller->controller) {
        dispatch.failed = true;
        return;
    }
    const auto status = dh2_character_controller_character(
        dispatch.binding.controller, character::controller_move_object,
        request->payload, &dispatch.binding.control_services);
    dispatch.result.controller_status = static_cast<std::uint32_t>(status);
    if (status != 1) dispatch.failed = true;
}

} // namespace

Status move_begin(const Binding& binding, Result* output,
                  std::string& error) noexcept {
    error.clear();
    if (output) *output = {};
    if (!output || !binding.ai || !binding.controller ||
        !binding.ai_services.invoke || !binding.control_services.invoke ||
        !binding.ai->owner || !binding.ai->controller ||
        binding.ai->owner != binding.controller->owner ||
        binding.ai->controller != binding.controller->controller) {
        error = "enemy pursuit lacks one canonical Character/controller owner";
        return Status::invalid_argument;
    }
    Dispatch dispatch{binding, *output};
    const character::AnimationAIServices16 services{&dispatch, &invoke};
    int status = -1;
    try {
        status = dh2_character_animation_ai(binding.ai,
            character::ai_move_begin, &services);
    } catch (...) {
        dispatch.failed = true;
    }
    if (status != 1 || dispatch.failed) {
        error = "source enemy Move-begin/controller/path provider failed";
        return Status::provider_failed;
    }
    return Status::complete;
}

} // namespace dh2::character_enemy_pursuit_v1
