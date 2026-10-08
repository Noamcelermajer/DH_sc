#pragma once

#include "native_camera_input_v1.hpp"

#include <cmath>
#include <cstdint>

namespace dh2::native::character_controller_v1 {

enum class Outcome : std::uint32_t { unchanged, heading, stopped, skill_blocked };
enum class Status : std::int32_t { complete, invalid_argument, service_failed };

struct Services {
    void* context;
    // Character::RaiseEvent receives 0 for accepted HeadTowards and 63 after
    // Ctrl_Stop. The host adapter supplies CharAI's event-number translation.
    int (*raise_character_event)(void*, std::uint32_t);
    // GameObject::Stop, called by Character::Ctrl_Stop before RaiseEvent(63).
    int (*stop_game_object)(void*);
};

// Applies the default Character+5320=false controller route. The source
// Controller sends a nonzero HeadTowards unless the character is using a skill
// or casting. A zero vector bypasses those checks and stops only when heading
// was active. The original controller's camera/navigation vector is passed
// through unchanged to GameObject::SetHeadingDirection.
inline Status dispatch_head_towards(dh2::navigation::HeadingState* heading,
                                    float* movement_heading_angle,
                                    const float* mapped_direction,
                                    bool mapped_input_active,
                                    bool controller_enabled,
                                    bool using_skill,
                                    bool casting,
                                    const Services* services,
                                    Outcome* outcome) {
    if (!heading || !movement_heading_angle || !mapped_direction ||
        !services || !outcome || !services->raise_character_event ||
        !services->stop_game_object || heading->reserved ||
        !std::isfinite(mapped_direction[0]) || !std::isfinite(mapped_direction[1]) ||
        !std::isfinite(mapped_direction[2]))
        return Status::invalid_argument;

    const float length_squared = mapped_direction[0] * mapped_direction[0] +
        mapped_direction[1] * mapped_direction[1] +
        mapped_direction[2] * mapped_direction[2];
    if (!std::isfinite(length_squared)) return Status::invalid_argument;
    *outcome = Outcome::unchanged;
    if (!controller_enabled) return Status::complete;

    // v2GamepadController's calibrated output activity is the route decision.
    // Do not reuse GameObject::SetHeadingDirection's 1e-4 activation test here:
    // valid radial outputs just above its 0.25 deadzone can be smaller than it.
    if (mapped_input_active) {
        if (using_skill || casting) {
            *outcome = Outcome::skill_blocked;
            return Status::complete;
        }
        if (camera_input_v1::apply_head_towards(
                heading, movement_heading_angle, mapped_direction))
            return Status::invalid_argument;
        if (services->raise_character_event(services->context, 0) < 0)
            return Status::service_failed;
        *outcome = Outcome::heading;
        return Status::complete;
    }

    if (!heading->active) return Status::complete;
    // Character::Ctrl_Stop delegates to GameObject::Stop, which owns clearing
    // heading after DropPath. Preserve the source's pre-stop fields until then.
    if (services->stop_game_object(services->context) < 0)
        return Status::service_failed;
    if (services->raise_character_event(services->context, 63) < 0)
        return Status::service_failed;
    *outcome = Outcome::stopped;
    return Status::complete;
}

}  // namespace dh2::native::character_controller_v1
