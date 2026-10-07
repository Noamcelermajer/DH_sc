#pragma once

#include "track_selection.hpp"

namespace dh2::animation {

struct Float3Value {
    float x = 0.0f;
    float y = 0.0f;
    float z = 0.0f;
};

static_assert(sizeof(Float3Value) == 3 * sizeof(float));

enum class PositionFloat3SampleMode : unsigned char {
    direct_key,
    interpolate_adjacent_keys,
};

[[nodiscard]] constexpr bool supportsPositionFloat3(
    TransformTrackSelection selection) noexcept {
    return selection.kind == TransformTrackKind::position_vector3 &&
           selection.scalar == TrackScalarTemplate::floating_point;
}

// The caller supplies values already read from the selected key or adjacent
// keys. Key search, sampler selection, BRES decoding, and target application
// are outside this bounded reconstruction.
[[nodiscard]] inline bool samplePositionFloat3(
    TransformTrackSelection selection,
    PositionFloat3SampleMode mode,
    const Float3Value& lower_key,
    const Float3Value& upper_key,
    float fraction,
    Float3Value& result) noexcept {
    if (!supportsPositionFloat3(selection)) {
        return false;
    }

    if (mode == PositionFloat3SampleMode::direct_key) {
        result = lower_key;
        return true;
    }

    if (mode != PositionFloat3SampleMode::interpolate_adjacent_keys) {
        return false;
    }

    const float lower_weight = 1.0f - fraction;
    const float lower_x = lower_weight * lower_key.x;
    const float lower_y = lower_weight * lower_key.y;
    const float lower_z = lower_weight * lower_key.z;
    const float upper_x = fraction * upper_key.x;
    const float upper_y = fraction * upper_key.y;
    const float upper_z = fraction * upper_key.z;

    result = {lower_x + upper_x, lower_y + upper_y, lower_z + upper_z};
    return true;
}

} // namespace dh2::animation
