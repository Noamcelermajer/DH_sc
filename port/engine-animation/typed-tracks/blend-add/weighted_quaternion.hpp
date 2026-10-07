#pragma once

#include <cstddef>
#include <cstdint>
#include <cstring>

#include "../../../engine-math/math.hpp"

namespace dh2::animation {

namespace detail {

[[nodiscard]] inline float flipFloatSignBit(float value) noexcept {
    std::uint32_t bits = 0;
    std::memcpy(&bits, &value, sizeof(bits));
    bits ^= 0x80000000u;
    std::memcpy(&value, &bits, sizeof(value));
    return value;
}

[[nodiscard]] inline dh2::math::Quaternion conjugateBySignBit(
    dh2::math::Quaternion value) noexcept {
    value.x = flipFloatSignBit(value.x);
    value.y = flipFloatSignBit(value.y);
    value.z = flipFloatSignBit(value.z);
    return value;
}

} // namespace detail

// Mirrors the APK's quaternion CBlender reduction for already-decoded values.
// In particular, after the first active quaternion seeds the accumulator, the
// later-weight sum starts at zero and excludes that seed's weight.
[[nodiscard]] inline bool weightedQuaternionBlend(
    const dh2::math::Quaternion* values,
    const float* weights,
    int count,
    dh2::math::Quaternion& result) noexcept {
    constexpr dh2::math::Quaternion identity{0.0f, 0.0f, 0.0f, 1.0f};
    result = identity;
    if (count <= 0) return true;
    if (values == nullptr || weights == nullptr) return false;

    int seed = 0;
    while (seed < count && weights[seed] == 0.0f) ++seed;
    if (seed == count) return true;

    dh2::math::Quaternion accumulated = values[seed];
    if (weights[seed] == 1.0f) {
        result = accumulated;
        return true;
    }

    float laterWeightSum = 0.0f;
    for (int i = seed + 1; i < count; ++i) {
        const float weight = weights[i];
        if (weight == 0.0f) continue;

        laterWeightSum = laterWeightSum + weight;
        const float fraction = weight / laterWeightSum;
        dh2::math::Quaternion next{};
        dh2_quat_slerp(&next, &accumulated, &values[i], fraction);
        accumulated = next;
    }

    result = accumulated;
    return true;
}

// Mirrors the APK's ordered quaternion add reducer. Positive and negative
// weights slerp identity toward q or its sign-bit conjugate, then right-compose
// each contribution into the accumulator. Zero and unordered (NaN) weights
// are skipped by the original greater-than/less-than branches.
[[nodiscard]] inline bool weightedQuaternionAdd(
    const dh2::math::Quaternion* values,
    const float* weights,
    int count,
    dh2::math::Quaternion& result) noexcept {
    dh2::math::Quaternion accumulated{0.0f, 0.0f, 0.0f, 1.0f};
    if (count <= 0) {
        result = accumulated;
        return true;
    }
    if (values == nullptr || weights == nullptr) return false;

    const dh2::math::Quaternion identity{0.0f, 0.0f, 0.0f, 1.0f};
    for (int i = 0; i < count; ++i) {
        float weight = weights[i];
        dh2::math::Quaternion value = values[i];
        if (weight < 0.0f) {
            value = detail::conjugateBySignBit(value);
            weight = detail::flipFloatSignBit(weight);
        } else if (!(weight > 0.0f)) {
            continue;
        }

        dh2::math::Quaternion contribution{};
        dh2_quat_slerp(&contribution, &identity, &value, weight);
        dh2::math::Quaternion composed{};
        dh2_quat_multiply(&composed, &accumulated, &contribution);
        accumulated = composed;
    }

    result = accumulated;
    return true;
}

} // namespace dh2::animation
