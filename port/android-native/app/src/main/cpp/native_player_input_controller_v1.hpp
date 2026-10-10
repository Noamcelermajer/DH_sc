#pragma once

#include "native_character_controller_v1.hpp"

#include <cmath>
#include <cstdint>

namespace dh2::native::player_input_controller_v1 {

enum class Source : std::uint32_t {
    android_movement_control,
    authored_hud_projected,
    v2_gamepad,
};

enum class Status : std::uint8_t { complete, invalid_argument, controller_failed };

struct Input {
    const float* direction = nullptr;
    Source source = Source::android_movement_control;
    // Used by authored_hud_projected, whose source Joystick.Update already
    // rotated and scaled its vector. For the other sources, activity is derived
    // by the matching source input adapter.
    bool active = false;
    float camera_yaw = 0.0f;
    float camera_pitch = 0.0f;
    bool camera_active = false;
};

struct Projection {
    float direction[3]{};
    bool active = false;
};

struct DispatchResult {
    Projection input{};
    character_controller_v1::Outcome outcome = character_controller_v1::Outcome::unchanged;
};

// Renderer queries source skill/cast state only for a controller-enabled
// nonzero HeadTowards. This shares the exact vector threshold with the
// canonical dispatcher, so release/tiny vectors bypass those queries.
inline bool requires_skill_cast_gates(const Projection& input,
                                     bool controller_enabled) noexcept {
    const float length_squared = input.direction[0] * input.direction[0] +
        input.direction[1] * input.direction[1] +
        input.direction[2] * input.direction[2];
    return character_controller_v1::has_source_head_towards_vector(
        controller_enabled, input.active, length_squared);
}

// Project input into the original controller vector. MovementControl uses
// HUDControls' fixed +45-degree screen basis. The authored SWF joystick passes
// through its already-rotated vector. The v2 gamepad keeps its radial deadzone
// and camera-relative transform. None of these routes takes PathTo ownership.
inline Status project(const Input& input, Projection* out) {
    if (!out || !input.direction) return Status::invalid_argument;
    Projection next{};
    int status = 0;
    switch (input.source) {
    case Source::android_movement_control:
        for (unsigned i = 0; i < 3; ++i) next.direction[i] = input.direction[i];
        status = camera_input_v1::map_movement_control_input(next.direction, &next.active);
        break;
    case Source::authored_hud_projected:
        if (input.active) {
            for (unsigned i = 0; i < 3; ++i) {
                if (!std::isfinite(input.direction[i])) return Status::invalid_argument;
                next.direction[i] = input.direction[i];
            }
            next.active = true;
        } else {
            next.direction[0] = next.direction[1] = next.direction[2] = 0.0f;
        }
        break;
    case Source::v2_gamepad:
        for (unsigned i = 0; i < 3; ++i) next.direction[i] = input.direction[i];
        status = camera_input_v1::map_touch_ground_input(
            next.direction, input.camera_yaw, input.camera_pitch,
            input.camera_active, &next.active);
        break;
    default:
        return Status::invalid_argument;
    }
    if (status) return Status::invalid_argument;
    *out = next;
    return Status::complete;
}

// Dispatch the projected vector through the existing Character controller
// owner. Callers query source skill/cast gates after projection and before this
// call, matching the original Update order. Path movement remains on Cmd_MoveTo.
inline Status dispatch(const Projection& input,
                       dh2::navigation::HeadingState* heading,
                       float* movement_heading_angle,
                       bool controller_enabled,
                       bool using_skill,
                       bool casting,
                       const character_controller_v1::Services* services,
                       DispatchResult* out) {
    if (!heading || !movement_heading_angle || !services || !out)
        return Status::invalid_argument;
    character_controller_v1::Outcome outcome{};
    const auto status = character_controller_v1::dispatch_head_towards(
        heading, movement_heading_angle, input.direction, input.active,
        controller_enabled, using_skill, casting, services, &outcome);
    if (status == character_controller_v1::Status::invalid_argument)
        return Status::invalid_argument;
    if (status != character_controller_v1::Status::complete)
        return Status::controller_failed;
    *out = DispatchResult{input, outcome};
    return Status::complete;
}

} // namespace dh2::native::player_input_controller_v1
