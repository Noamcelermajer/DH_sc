#pragma once

#include "../../../engine-math/math.hpp"

namespace dh2::animation {

// Bounded semantic port of the ordinary quaternion-angle key path after the
// caller has resolved the three default-axis lanes and decoded key values to
// floats. It does not perform BRES decoding, offset/scale conversion, key
// search, or the missing-default fallback.
[[nodiscard]] inline math::Quaternion* quaternionFromAngleKey(
    math::Quaternion* out,
    const math::Vector3f* default_axis,
    float angle) noexcept {
    return dh2_quat_from_angle_axis(out, angle, default_axis);
}

// The recovered two-key interpreter computes first + fraction * (second -
// first), then passes that angle and the same default axis to fromAngleAxis.
// Volatile intermediates preserve the observed single-precision operation
// boundaries and prevent contraction into a fused multiply-add.
[[nodiscard]] inline math::Quaternion* quaternionFromInterpolatedAngleKeys(
    math::Quaternion* out,
    const math::Vector3f* default_axis,
    float first_angle,
    float second_angle,
    float fraction) noexcept {
    volatile float delta = second_angle - first_angle;
    volatile float weighted_delta = fraction * delta;
    volatile float angle = first_angle + weighted_delta;
    return dh2_quat_from_angle_axis(out, angle, default_axis);
}

} // namespace dh2::animation
