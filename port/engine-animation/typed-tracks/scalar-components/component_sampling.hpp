#pragma once

#include <array>
#include <cstddef>
#include <cstdint>

namespace dh2::animation::component_sampling {

using Vector3 = std::array<float, 3>;

// The APK sign-extends its stored char and short values before conversion.
// Pass that sign-extended integer as raw_value. The scalar metadata comes
// from CInputReader<T, float, 1>'s first scale/offset entries.
[[nodiscard]] inline float decode_integral(std::int32_t raw_value,
                                           float scale,
                                           float offset) noexcept {
    const float converted = static_cast<float>(raw_value);
    const float scaled = converted * scale;
    return scaled + offset;
}

// Matches the engine's separate subtract, multiply, and add operations.
[[nodiscard]] inline float interpolate(float lower,
                                       float upper,
                                       float fraction) noexcept {
    const float delta = upper - lower;
    const float weighted_delta = fraction * delta;
    return lower + weighted_delta;
}

[[nodiscard]] inline float sample_integral_direct(std::int32_t raw_value,
                                                  float scale,
                                                  float offset) noexcept {
    return decode_integral(raw_value, scale, offset);
}

[[nodiscard]] inline float sample_integral_interpolated(std::int32_t lower_raw,
                                                        std::int32_t upper_raw,
                                                        float fraction,
                                                        float scale,
                                                        float offset) noexcept {
    const float lower = decode_integral(lower_raw, scale, offset);
    const float upper = decode_integral(upper_raw, scale, offset);
    return interpolate(lower, upper, fraction);
}

[[nodiscard]] inline float sample_float_direct(float raw_value) noexcept {
    return raw_value;
}

[[nodiscard]] inline float sample_float_interpolated(float lower,
                                                     float upper,
                                                     float fraction) noexcept {
    return interpolate(lower, upper, fraction);
}

// The apply callbacks start with a zeroed vec3. If a default vector is
// present, the interpreter copies its two non-animated lanes before the
// callback invokes the whole-vector scene-node setter.
[[nodiscard]] inline Vector3 compose_apply_value(std::size_t component,
                                                 float sampled_component,
                                                 const Vector3* default_value) noexcept {
    Vector3 result = default_value ? *default_value : Vector3{};
    if (component < result.size()) {
        result[component] = sampled_component;
    }
    return result;
}

} // namespace dh2::animation::component_sampling
