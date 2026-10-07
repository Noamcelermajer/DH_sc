#pragma once

#include "navigation_heading.hpp"

#include <cmath>

namespace dh2::native::camera_input_v1 {

// Reconstruct the camera-relative part of v2GamepadController::Update.
// The renderer's orbit yaw defines its horizontal camera forward vector; the
// existing navigation owner supplies the IDA-matched Point3D::angle/rotateXY
// arithmetic. Returns 0 on success and 1 for invalid input.
inline int rotate_ground_input(float* direction, float camera_yaw) {
    if (!std::isfinite(camera_yaw)) return 1;
    const float look_at[3]{-std::cos(camera_yaw), -std::sin(camera_yaw), 0.0f};
    return dh2_nav_rotate_input_for_camera(direction, look_at);
}

}  // namespace dh2::native::camera_input_v1
