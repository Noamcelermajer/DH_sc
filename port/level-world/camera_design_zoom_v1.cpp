#include "camera_design_zoom_v1.hpp"

#include <cmath>
#include <cstring>

namespace dh2::camera_design_zoom_v1 {
namespace {
constexpr std::size_t kDesignSettingsStride = 43u * sizeof(std::uint32_t);

std::uint32_t read_u32(const std::uint8_t* data) noexcept {
    return std::uint32_t(data[0]) | (std::uint32_t(data[1]) << 8) |
           (std::uint32_t(data[2]) << 16) | (std::uint32_t(data[3]) << 24);
}

float read_float(const std::uint8_t* row, std::size_t word) noexcept {
    const std::uint32_t bits = read_u32(row + word * sizeof(std::uint32_t));
    float value = 0.0f;
    std::memcpy(&value, &bits, sizeof(value));
    return value;
}
} // namespace

Status decode_global_bounds(const std::uint8_t* data, std::size_t size,
                            Bounds* output) noexcept {
    if (!data || !output || size < sizeof(std::uint32_t))
        return Status::invalid_input;
    const std::uint32_t row_count = read_u32(data);
    if (row_count != 1u) return Status::unexpected_row_count;
    if (size < sizeof(std::uint32_t) + kDesignSettingsStride)
        return Status::invalid_input;

    const std::uint8_t* row = data + sizeof(std::uint32_t);
    const Bounds candidate{
        0u,
        read_float(row, 42u), // runtime member +172, normal minimum
        read_float(row, 41u), // runtime member +168, normal maximum
        read_float(row, 18u), // runtime member +76, alternate minimum
        read_float(row, 17u)  // runtime member +72, alternate maximum
    };
    if (!std::isfinite(candidate.normal_min) ||
        !std::isfinite(candidate.normal_max) ||
        !std::isfinite(candidate.alternate_min) ||
        !std::isfinite(candidate.alternate_max) ||
        candidate.normal_min > candidate.normal_max ||
        candidate.alternate_min > candidate.alternate_max)
        return Status::invalid_bounds;
    *output = candidate;
    return Status::complete;
}

} // namespace dh2::camera_design_zoom_v1
