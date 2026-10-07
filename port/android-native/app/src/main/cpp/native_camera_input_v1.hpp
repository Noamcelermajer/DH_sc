#pragma once

#include "navigation_heading.hpp"

#include <cmath>

namespace dh2::native::camera_input_v1 {

// Reconstruct the camera-relative part of v2GamepadController::Update
// (0x406c2c). CameraBase::GetCameraLookAtVec (0x40e8a8) supplies a full 3D
// direction. The orbit adapter below derives center-eye from the renderer's
// yaw/pitch camera; navigation_heading supplies the IDA-matched
// Point3D::angle/rotateXY arithmetic. Returns 0 on success and 1 on bad input.
inline int camera_look_at_from_orbit(float camera_yaw, float camera_pitch, float* look_at) {
    if (!look_at || !std::isfinite(camera_yaw) || !std::isfinite(camera_pitch)) return 1;
    const float cos_pitch = std::cos(camera_pitch);
    float forward[3]{-std::cos(camera_yaw) * cos_pitch,
                     -std::sin(camera_yaw) * cos_pitch,
                     -std::sin(camera_pitch)};
    const float length = std::sqrt(forward[0] * forward[0] + forward[1] * forward[1] +
                                   forward[2] * forward[2]);
    if (!std::isfinite(length) || length <= 0.0f) return 1;
    for (unsigned i = 0; i < 3; ++i) look_at[i] = forward[i] / length;
    return 0;
}

inline int rotate_ground_input(float* direction, float camera_yaw, float camera_pitch = 0.0f) {
    float look_at[3]{};
    if (camera_look_at_from_orbit(camera_yaw, camera_pitch, look_at)) return 1;
    return dh2_nav_rotate_input_for_camera(direction, look_at);
}

// v2GamepadController::Update converts calibrated analog axes into a radial
// stick vector: deadzone length 0.25, normalize, then scale the sub-unit range
// linearly to [0,1]. CameraBase rotation is applied afterward. `active` reports
// whether the resulting vector is nonzero so callers can gate Move/state events
// using the same conditioned input rather than a separate raw-axis threshold.
// This returns a direction per controller update; do not multiply by dt here.
// The recovered dt*1.25 accumulation is a separate `Character+5320` branch.
inline int map_touch_ground_input(float* direction, float camera_yaw, float camera_pitch,
                                  bool camera_active, bool* active) {
    if (!direction || !active || !std::isfinite(direction[0]) ||
        !std::isfinite(direction[1]) || !std::isfinite(direction[2])) return 1;
    float mapped[3]{direction[0], direction[1], 0.0f};
    const float length = std::sqrt(mapped[0] * mapped[0] + mapped[1] * mapped[1]);
    if (!std::isfinite(length)) return 1;
    bool next_active = false;
    if (length >= 0.25f) {
        mapped[0] /= length;
        mapped[1] /= length;
        if (length < 1.0f) {
            const float scale = (length - 0.25f) / 0.75f;
            mapped[0] *= scale;
            mapped[1] *= scale;
        }
        next_active = mapped[0] != 0.0f || mapped[1] != 0.0f;
    } else {
        mapped[0] = mapped[1] = 0.0f;
    }
    if (camera_active && next_active && rotate_ground_input(mapped, camera_yaw, camera_pitch)) return 1;
    direction[0] = mapped[0];
    direction[1] = mapped[1];
    direction[2] = 0.0f;
    *active = next_active;
    return 0;
}

}  // namespace dh2::native::camera_input_v1
