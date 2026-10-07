#pragma once

#include <cstddef>
#include <cstdint>

namespace dh2::tga {

enum class DecodeStatus : std::uint8_t {
    ok,
    invalid_argument,
    truncated_header,
    unsupported_header,
    invalid_dimensions,
    truncated_pixels,
    output_too_small,
};

struct ImageInfo {
    std::uint16_t width = 0;
    std::uint16_t height = 0;
    std::uint8_t engine_format = 0;
    std::size_t byte_count = 0;
};

// Decodes the bounded cache subset established by the original TGA loader:
// uncompressed true-color, no color map, 32 bits per pixel, and the observed
// descriptor values 0x08 or 0x28. Output bytes
// retain the original engine-format-13 byte order; no channel swizzle occurs.
// Input and output storage must not overlap.
DecodeStatus decode_type2_32(const std::uint8_t* file,
                             std::size_t file_size,
                             std::uint8_t* output,
                             std::size_t output_capacity,
                             ImageInfo* info) noexcept;

}  // namespace dh2::tga
