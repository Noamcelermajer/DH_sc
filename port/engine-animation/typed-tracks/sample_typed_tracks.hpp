#pragma once

#include "../value_sampling.hpp"
#include "../../engine-math/math.hpp"

namespace dh2::animation {

enum class TypedTrackSampleMode : unsigned char {
    direct_key,
    interpolate_adjacent_keys,
};

[[nodiscard]] constexpr bool supportsScaleFloat3(
    TransformTrackSelection selection) noexcept {
    return selection.kind == TransformTrackKind::scale_vector3 &&
           selection.scalar == TrackScalarTemplate::floating_point;
}

[[nodiscard]] constexpr bool supportsRotationQuaternionFloat(
    TransformTrackSelection selection) noexcept {
    return selection.kind == TransformTrackKind::rotation_quaternion &&
           selection.scalar == TrackScalarTemplate::floating_point;
}

// The caller supplies already decoded values and the selected branch. The
// original interpreter uses separate float multiply/add operations.
[[nodiscard]] inline bool sampleScaleFloat3(
    TransformTrackSelection selection,
    TypedTrackSampleMode mode,
    const Float3Value& lower_key,
    const Float3Value& upper_key,
    float fraction,
    Float3Value& result) noexcept {
    if (!supportsScaleFloat3(selection)) return false;
    if (mode == TypedTrackSampleMode::direct_key) {
        result = lower_key;
        return true;
    }
    if (mode != TypedTrackSampleMode::interpolate_adjacent_keys) return false;

    const float lower_weight = 1.0f - fraction;
    const float lower_x = lower_weight * lower_key.x;
    const float lower_y = lower_weight * lower_key.y;
    const float lower_z = lower_weight * lower_key.z;
    const float upper_x = fraction * upper_key.x;
    const float upper_y = fraction * upper_key.y;
    const float upper_z = fraction * upper_key.z;
    result = {
        lower_x + upper_x,
        lower_y + upper_y,
        lower_z + upper_z,
    };
    return true;
}

// Quaternion storage is four adjacent floats. Interpolation delegates to
// the independently reconstructed engine slerp routine. This helper does
// not perform the separate indexed quaternion-composition overload.
[[nodiscard]] inline bool sampleRotationQuaternionFloat(
    TransformTrackSelection selection,
    TypedTrackSampleMode mode,
    const dh2::math::Quaternion& lower_key,
    const dh2::math::Quaternion& upper_key,
    float fraction,
    dh2::math::Quaternion& result) noexcept {
    if (!supportsRotationQuaternionFloat(selection)) return false;
    if (mode == TypedTrackSampleMode::direct_key) {
        result = lower_key;
        return true;
    }
    if (mode != TypedTrackSampleMode::interpolate_adjacent_keys) return false;

    dh2::math::Quaternion interpolated{};
    dh2_quat_slerp(&interpolated, &lower_key, &upper_key, fraction);
    result = interpolated;
    return true;
}

} // namespace dh2::animation
