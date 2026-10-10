#pragma once

#include "character_animation_ai.hpp"
#include "character_controller_commands.hpp"

#include <cstdint>
#include <string>

namespace dh2::character_enemy_pursuit_v1 {

enum class Status : std::uint8_t { complete, invalid_argument, provider_failed };

// Borrows the single canonical AI/controller state and their selected services.
// The adapter only connects the recovered Move-begin decision to the existing
// controller -> Character::Ctrl_MoveTo -> PathTo service chain.
struct Binding {
    character::AnimationAIState96* ai{};
    character::AnimationAIServices16 ai_services{};
    character::ControllerCommandState32* controller{};
    character::CharacterControlServices16 control_services{};
};

struct Result {
    std::uint32_t ai_service_calls{};
    std::uint32_t move_to_calls{};
    std::uint32_t controller_status{};
    bool path_dispatch_attempted{};
};

Status move_begin(const Binding&, Result*, std::string& error) noexcept;

} // namespace dh2::character_enemy_pursuit_v1
