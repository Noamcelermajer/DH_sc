#pragma once

#include <algorithm>
#include <array>
#include <cmath>
#include <string_view>

namespace dh2::native::crypt_camera_frame_v1 {

using Vec3 = std::array<float, 3>;
using Matrix = std::array<float, 16>;

// The only live source-camera frame receipt currently available is Adam's
// API-37 Crypt checkpoint from x07_crypt_backup.mlx. Keep this camera profile
// behind the exact Crypt level identity; never use it for SWAMP or another
// level. The dynamic authored camera animation/anchor providers are not yet
// connected, so this is a source-framed fallback, not full CameraLevel parity.
inline constexpr std::string_view kLevelName = "GOTHICUS_CRYPT_01";
inline constexpr std::string_view kLevelFile = "007_crypt_01.rule.xml";
inline constexpr Vec3 kEyeFromTarget{1380.0f, -1380.0f, 2450.0f};
inline constexpr float kVerticalFovRadians = 0.429630011f;
inline constexpr float kNearPlane = 900.0f;
inline constexpr float kFarPlane = 5000.0f;
inline constexpr float kInputYawRadians = -0.7853981633974483f;
// Character::InitCam constructs AnchorForward from the three
// CharacterDesign/ForwardCamera_* constants. AnchorForward::Update adds the
// Distance_PerSec member directly on each update (the observed function does
// not multiply this term by dt), caps the look-ahead at Max_Distance while
// moving, and caps the retained distance at 40% while idle.
inline constexpr float kForwardAnchorMaxDistance = 640.0f;
inline constexpr float kForwardAnchorDistancePerFrame = 17.0f;
inline constexpr float kForwardAnchorIdleCap = kForwardAnchorMaxDistance * 0.4f;
inline constexpr float kForwardAnchorTurnThresholdRadians = 1.0f;
inline constexpr float kForwardAnchorTurnRetreat = kForwardAnchorDistancePerFrame * 0.25f;
inline constexpr float kForwardAnchorTranslationSquaredThreshold = 0.05f;
inline float input_pitch_radians() noexcept {
    const float horizontal = std::hypot(kEyeFromTarget[0], kEyeFromTarget[1]);
    return std::atan2(kEyeFromTarget[2], horizontal);
}

inline bool verified_crypt_route(std::string_view level_name,
                                 std::string_view level_file) noexcept {
    return level_name == kLevelName && level_file == kLevelFile;
}

struct Frame {
    Vec3 eye{};
    Vec3 target{};
    Matrix view_projection{};
    float aspect{};
    float input_yaw{};
    float input_pitch{};
};

struct ForwardAnchorState {
    float distance{};
    float previous_heading{};
    bool has_previous_heading{};
};

// Bounded Character::InitCam/AnchorForward projection. The original anchor
// updates before CameraLevel consumes CameraTarget each frame. Its exact
// CameraLevel animation, multiplayer branch, damped target transition, and
// actor +0x1B8 direction provider are separate; the heading-angle gate below
// is a horizontal single-player approximation of the source Point3D angle.
inline bool update_forward_anchor(ForwardAnchorState* state, float heading,
                                  bool moving_or_attacking,
                                  bool player_displaced_enough) noexcept {
    if (!state || !std::isfinite(heading) || !std::isfinite(state->distance) ||
        state->distance < 0.0f || state->distance > kForwardAnchorMaxDistance) return false;
    if (moving_or_attacking) {
        float turn = 0.0f;
        if (state->has_previous_heading) {
            const float delta = std::remainder(heading - state->previous_heading,
                                               6.2831853071795864769f);
            turn = std::fabs(delta);
        }
        if (turn > kForwardAnchorTurnThresholdRadians) {
            state->distance = std::max(0.0f, state->distance - kForwardAnchorTurnRetreat);
        } else {
            const float limit = player_displaced_enough
                ? kForwardAnchorMaxDistance : kForwardAnchorMaxDistance * 0.5f;
            if (state->distance < kForwardAnchorMaxDistance * 0.5f) {
                state->distance = kForwardAnchorMaxDistance * 0.5f;
            } else {
                state->distance = std::min(limit,
                    state->distance + kForwardAnchorDistancePerFrame);
            }
        }
    } else {
        state->distance = std::min(state->distance, kForwardAnchorIdleCap);
    }
    state->previous_heading = heading;
    state->has_previous_heading = true;
    return true;
}

// GameObject::GetLookAtVec writes (sin(rotation), -cos(rotation), 0).
inline Vec3 player_camera_anchor(Vec3 actor_position, float heading,
                                 float distance) noexcept {
    if (!std::isfinite(heading) || !std::isfinite(distance)) return actor_position;
    return {actor_position[0] + std::sin(heading) * distance,
            actor_position[1] - std::cos(heading) * distance,
            actor_position[2]};
}

inline Vec3 add(Vec3 a, Vec3 b) noexcept {
    return {a[0] + b[0], a[1] + b[1], a[2] + b[2]};
}
inline Vec3 subtract(Vec3 a, Vec3 b) noexcept {
    return {a[0] - b[0], a[1] - b[1], a[2] - b[2]};
}
inline float dot(Vec3 a, Vec3 b) noexcept {
    return a[0] * b[0] + a[1] * b[1] + a[2] * b[2];
}
// AnchorForward::Update compares the full previous/current GameObject position
// delta against 0.05 (squared units), not just its ground-plane projection.
inline bool player_displaced_enough_for_forward_anchor(Vec3 delta) noexcept {
    for (float component : delta) if (!std::isfinite(component)) return false;
    return dot(delta, delta) > kForwardAnchorTranslationSquaredThreshold;
}
inline Vec3 cross(Vec3 a, Vec3 b) noexcept {
    return {a[1] * b[2] - a[2] * b[1],
            a[2] * b[0] - a[0] * b[2],
            a[0] * b[1] - a[1] * b[0]};
}
inline bool normalize(Vec3& v) noexcept {
    const float n2 = dot(v, v);
    if (!(n2 > 0.0f) || !std::isfinite(n2)) return false;
    const float inverse = 1.0f / std::sqrt(n2);
    for (float& component : v) component *= inverse;
    return std::isfinite(v[0]) && std::isfinite(v[1]) && std::isfinite(v[2]);
}
inline Matrix multiply(const Matrix& a, const Matrix& b) noexcept {
    Matrix result{};
    for (int column = 0; column < 4; ++column)
        for (int row = 0; row < 4; ++row)
            for (int k = 0; k < 4; ++k)
                result[column * 4 + row] += a[k * 4 + row] * b[column * 4 + k];
    return result;
}

// Build the GLES matrix from the recovered CameraBase look-at and perspective
// conventions, then apply the original driver projection fixup. Aspect follows
// the current surface as an explicit modern display policy.
inline bool build(std::string_view level_name, std::string_view level_file,
                  Vec3 target, int width, int height, Frame* out) noexcept {
    if (!out || !verified_crypt_route(level_name, level_file) || width <= 1 || height <= 1)
        return false;
    for (float value : target) if (!std::isfinite(value)) return false;

    Frame frame{};
    frame.target = target;
    frame.eye = add(target, kEyeFromTarget);
    frame.aspect = static_cast<float>(width) / static_cast<float>(height);
    frame.input_yaw = kInputYawRadians;
    frame.input_pitch = input_pitch_radians();

    Vec3 forward = subtract(frame.target, frame.eye);
    if (!normalize(forward)) return false;
    // Camera look-at v8: side = up × forward, vertical = -forward × side.
    // The source uses a positive-forward camera basis; do not substitute the
    // conventional negative-Z OpenGL look-at, which flips the screen axes.
    const Vec3 world_up{0.0f, 0.0f, 1.0f};
    Vec3 side = cross(world_up, forward);
    if (!normalize(side)) return false;
    const Vec3 vertical = cross({-forward[0], -forward[1], -forward[2]}, side);
    const Matrix view{
        side[0], vertical[0], forward[0], 0.0f,
        side[1], vertical[1], forward[1], 0.0f,
        side[2], vertical[2], forward[2], 0.0f,
        -dot(side, frame.eye), -dot(vertical, frame.eye), -dot(forward, frame.eye), 1.0f};

    const float tangent = std::tan(kVerticalFovRadians * 0.5f);
    if (!(tangent > 0.0f) || !std::isfinite(tangent)) return false;
    const float near_plane = kNearPlane, far_plane = kFarPlane;
    // Source perspective v8 followed by CCommonGLDriverBase::fixUpProjection:
    // m10 = 2*far/(far-near)-1, m11 stays +1, m14 doubles.
    const Matrix projection{
        1.0f / (tangent * frame.aspect), 0.0f, 0.0f, 0.0f,
        0.0f, 1.0f / tangent, 0.0f, 0.0f,
        0.0f, 0.0f, (far_plane + near_plane) / (far_plane - near_plane), 1.0f,
        0.0f, 0.0f, -(2.0f * far_plane * near_plane) / (far_plane - near_plane), 0.0f};
    frame.view_projection = multiply(projection, view);
    for (float value : frame.view_projection) if (!std::isfinite(value)) return false;
    *out = frame;
    return true;
}

} // namespace dh2::native::crypt_camera_frame_v1
