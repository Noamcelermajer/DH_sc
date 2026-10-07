#pragma once

#include <cstddef>

#include "../../value_sampling.hpp"

namespace dh2::animation {

// Bounded value reduction used by the APK's float scale-vector3 blend and
// add slots. The caller supplies already sampled values and weights.
// Negative counts, key lookup, weight generation, and target dispatch are
// outside this helper.
[[nodiscard]] inline bool weightedScaleFloat3(
    const Float3Value* values,
    const float* weights,
    std::size_t count,
    Float3Value& result) noexcept {
    if (count == 0) {
        result = {};
        return true;
    }
    if (values == nullptr) return false;
    if (count == 1) {
        result = values[0];
        return true;
    }
    if (weights == nullptr) return false;

    Float3Value sum{};
    for (std::size_t i = 0; i < count; ++i) {
        const float weight = weights[i];
        const Float3Value& value = values[i];
        const float x = weight * value.x;
        const float y = weight * value.y;
        const float z = weight * value.z;
        sum.x = sum.x + x;
        sum.y = sum.y + y;
        sum.z = sum.z + z;
    }
    result = sum;
    return true;
}

} // namespace dh2::animation
