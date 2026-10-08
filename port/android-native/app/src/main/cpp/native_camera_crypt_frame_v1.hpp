#pragma once

#include <algorithm>
#include <array>
#include <cmath>
#include <string_view>

namespace dh2::native::crypt_camera_frame_v1 {

using Vec3 = std::array<float, 3>;
using Matrix = std::array<float, 16>;

// The source-backed Crypt frame is isolated to the exact level identity.
// Level::_LoadCamera (original ELF VA 0x3f1008) calls CameraBase::SetData
// (0x40e9a8) after loading the CameraLevel BDAE. Its FOV is the immediate
// 0x3edbf877 (0.429630011 rad); near/far are camera_znear/camera_zfar from
// 007_crypt_01.rule.xml (900/5000) read from LevelConfig +0x294/+0x298.
// Those runtime SetData values replace the playercamera.bdae Camera record
// (45, 1.5, 600, 3800); do not feed the BRES values into the gameplay frame.
// The old runtime also supplies aspect 0x3fd578e9 (1.6677524), but this port
// deliberately uses the current surface aspect in build() for modern displays.
// Authored player-camera rig transforms replace only the fallback eye offset;
// the CameraLevel target/animation timeline remains a separate provider.
inline constexpr std::string_view kLevelName = "GOTHICUS_CRYPT_01";
inline constexpr std::string_view kLevelFile = "007_crypt_01.rule.xml";
inline constexpr Vec3 kEyeFromTarget{1380.0f, -1380.0f, 2450.0f};
inline constexpr float kVerticalFovRadians = 0.42963001132011414f;
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
    Vec3 previous_actor_look_at{};
    bool has_previous_actor_look_at{};
    Vec3 previous_actor_position{};
    Vec3 target{};
    bool has_target{};
};

// Bounded Character::InitCam/AnchorForward projection. The original anchor
// updates before CameraLevel consumes CameraTarget each frame. Its exact
// CameraLevel animation, multiplayer branch and damped target transition are
// separate. The angle-only overload below is a compatibility approximation;
// the vector overload follows the source Point3D angle inputs.
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

inline bool point3d_angle(Vec3 a, Vec3 b, float* radians) noexcept {
    if (!radians) return false;
    for (float component : a) if (!std::isfinite(component)) return false;
    for (float component : b) if (!std::isfinite(component)) return false;
    const float a_length = std::hypot(std::hypot(a[0], a[1]), a[2]);
    const float b_length = std::hypot(std::hypot(b[0], b[1]), b[2]);
    if (!(a_length > 0.0f) || !(b_length > 0.0f) ||
        !std::isfinite(a_length) || !std::isfinite(b_length)) return false;
    const float cosine = (a[0] * b[0] + a[1] * b[1] + a[2] * b[2]) /
                         (a_length * b_length);
    if (!std::isfinite(cosine)) return false;
    *radians = std::acos(std::clamp(cosine, -1.0f, 1.0f));
    return std::isfinite(*radians);
}

// Source-backed AnchorForward::Update path. It compares the current normalized
// actor heading (+0x1B8) to the look-at vector saved by the prior update, then
// refreshes that saved vector with this update's GetLookAtVec after projecting
// the target. This differs from comparing two consecutive actor headings.
inline float source_point3d_angle(Vec3 a, Vec3 b) noexcept {
    const float dot = a[0] * b[0] + a[1] * b[1] + a[2] * b[2];
    const float a_length = std::sqrt(a[0] * a[0] + a[1] * a[1] + a[2] * a[2]);
    const float b_length = std::sqrt(b[0] * b[0] + b[1] * b[1] + b[2] * b[2]);
    // Point3D::angleCos divides without a zero-length guard. Preserve the
    // resulting NaN comparison behavior (NaN > 1 is false) for AnchorForward's
    // zero-initialized previous look-at vector on its first active frame.
    return std::acos(dot / (a_length * b_length));
}

inline bool update_forward_anchor(ForwardAnchorState* state,
                                  Vec3 actor_position,
                                  Vec3 current_heading_direction,
                                  Vec3 current_actor_look_at,
                                  bool heading_active,
                                  bool moving,
                                  bool attacking) noexcept {
    if (!state || !std::isfinite(state->distance) || state->distance < 0.0f ||
        state->distance > kForwardAnchorMaxDistance) return false;
    for (float component : actor_position)
        if (!std::isfinite(component)) return false;
    for (float component : current_heading_direction)
        if (!std::isfinite(component)) return false;
    for (float component : current_actor_look_at)
        if (!std::isfinite(component)) return false;

    if (!state->has_target) {
        // AnchorBase::Reset seeds its prior target from GameObject position;
        // the first live call is the first point at which that owner is known.
        state->target = actor_position;
        state->has_target = true;
    }

    if (heading_active && (moving || attacking)) {
        const float heading_length = std::hypot(
            std::hypot(current_heading_direction[0], current_heading_direction[1]),
            current_heading_direction[2]);
        if (!(heading_length > 0.0f) || !std::isfinite(heading_length)) return false;
        const Vec3 direction{current_heading_direction[0] / heading_length,
                             current_heading_direction[1] / heading_length,
                             current_heading_direction[2] / heading_length};
        const float turn = source_point3d_angle(current_heading_direction,
                                                 state->previous_actor_look_at);
        const float dx = actor_position[0] - state->previous_actor_position[0];
        const float dy = actor_position[1] - state->previous_actor_position[1];
        const float dz = actor_position[2] - state->previous_actor_position[2];
        const float target_limit = moving && dx * dx + dy * dy + dz * dz >
                kForwardAnchorTranslationSquaredThreshold
            ? kForwardAnchorMaxDistance : kForwardAnchorMaxDistance * 0.5f;

        if (turn > kForwardAnchorTurnThresholdRadians) {
            state->distance = std::max(0.0f,
                state->distance - kForwardAnchorDistancePerFrame * 0.25f);
        } else if (state->distance < kForwardAnchorMaxDistance * 0.5f) {
            state->distance = kForwardAnchorMaxDistance * 0.5f;
        } else {
            state->distance = std::min(target_limit,
                state->distance + kForwardAnchorDistancePerFrame);
        }

        const Vec3 full_target{actor_position[0] + direction[0] * target_limit,
                               actor_position[1] + direction[1] * target_limit,
                               actor_position[2] + direction[2] * target_limit};
        const float full_dx = full_target[0] - state->target[0];
        const float full_dy = full_target[1] - state->target[1];
        const float full_dz = full_target[2] - state->target[2];
        if (full_dx * full_dx + full_dy * full_dy + full_dz * full_dz <= 0.0f ||
            target_limit - state->distance <= 0.05f) {
            state->target = full_target;
        } else {
            state->target = {actor_position[0] + direction[0] * state->distance,
                             actor_position[1] + direction[1] * state->distance,
                             actor_position[2] + direction[2] * state->distance};
        }
    } else {
        state->distance = std::min(state->distance, kForwardAnchorIdleCap);
        state->target = {
            actor_position[0] + state->distance * state->previous_actor_look_at[0],
            actor_position[1] + state->distance * state->previous_actor_look_at[1],
            actor_position[2] + state->distance * state->previous_actor_look_at[2]};
    }

    state->previous_actor_position = actor_position;
    state->previous_actor_look_at = current_actor_look_at;
    state->has_previous_actor_look_at = true;
    return true;
}

inline Vec3 forward_anchor_target(const ForwardAnchorState* state,
                                  Vec3 actor_position) noexcept {
    if (!state || !state->has_target) return actor_position;
    return state->target;
}

// Horizontal compatibility helper. The live AnchorForward path stores its
// source target in ForwardAnchorState and uses forward_anchor_target().
inline Vec3 player_camera_anchor_from_direction(Vec3 actor_position,
                                                 Vec3 heading_direction,
                                                 float distance) noexcept {
    if (!std::isfinite(heading_direction[0]) ||
        !std::isfinite(heading_direction[1]) || !std::isfinite(distance))
        return actor_position;
    const float length = std::hypot(heading_direction[0], heading_direction[1]);
    if (!(length > 0.0f) || !std::isfinite(length)) return actor_position;
    const float direction_x = heading_direction[0] / length;
    const float direction_y = heading_direction[1] / length;
    return {actor_position[0] + direction_x * distance,
            actor_position[1] + direction_y * distance,
            actor_position[2]};
}

// Compatibility helper for callers that only have GameObject rotation:
// GetLookAtVec writes (sin(rotation), -cos(rotation), 0). The live game
// forward-anchor callsite should use the recovered actor heading vector above.
inline Vec3 player_camera_anchor(Vec3 actor_position, float heading,
                                 float distance) noexcept {
    if (!std::isfinite(heading)) return actor_position;
    return player_camera_anchor_from_direction(
        actor_position, {std::sin(heading), -std::cos(heading), 0.0f}, distance);
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
                  Vec3 target, int width, int height, Frame* out,
                  Vec3 eye_from_target = kEyeFromTarget,
                  Vec3 up_direction = Vec3{0.0f, 0.0f, 1.0f},
                  Vec3 target_from_anchor = Vec3{0.0f, 0.0f, 0.0f}) noexcept {
    if (!out || !verified_crypt_route(level_name, level_file) || width <= 1 || height <= 1)
        return false;
    for (float value : target) if (!std::isfinite(value)) return false;
    for (float value : eye_from_target) if (!std::isfinite(value)) return false;
    for (float value : up_direction) if (!std::isfinite(value)) return false;
    for (float value : target_from_anchor) if (!std::isfinite(value)) return false;

    Frame frame{};
    frame.target = add(target,target_from_anchor);
    frame.eye = add(frame.target, eye_from_target);
    frame.aspect = static_cast<float>(width) / static_cast<float>(height);
    frame.input_yaw = std::atan2(eye_from_target[1], eye_from_target[0]);
    frame.input_pitch = std::atan2(eye_from_target[2],
        std::hypot(eye_from_target[0], eye_from_target[1]));

    Vec3 forward = subtract(frame.target, frame.eye);
    if (!normalize(forward)) return false;
    // Camera look-at v8: side = up × forward, vertical = -forward × side.
    // The source uses a positive-forward camera basis; do not substitute the
    // conventional negative-Z OpenGL look-at, which flips the screen axes.
    if (!normalize(up_direction)) return false;
    Vec3 side = cross(up_direction, forward);
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
