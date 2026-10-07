#include "tga32.hpp"

#include <cstring>
#include <limits>

namespace dh2::tga {
namespace {

std::uint16_t read_le16(const std::uint8_t* p) noexcept {
    return static_cast<std::uint16_t>(p[0]) |
           static_cast<std::uint16_t>(static_cast<std::uint16_t>(p[1]) << 8);
}

}  // namespace

DecodeStatus decode_type2_32(const std::uint8_t* file,
                             std::size_t file_size,
                             std::uint8_t* output,
                             std::size_t output_capacity,
                             ImageInfo* info) noexcept {
    if (info == nullptr) return DecodeStatus::invalid_argument;
    *info = {};
    if (file == nullptr) return DecodeStatus::invalid_argument;
    if (file_size < 18) return DecodeStatus::truncated_header;

    const std::uint8_t id_length = file[0];
    const std::uint8_t color_map_type = file[1];
    const std::uint8_t image_type = file[2];
    const std::uint16_t width = read_le16(file + 12);
    const std::uint16_t height = read_le16(file + 14);
    const std::uint8_t pixel_depth = file[16];
    const std::uint8_t descriptor = file[17];

    if (id_length != 0 || color_map_type != 0 || image_type != 2 ||
        pixel_depth != 32 || (descriptor != 0x08 && descriptor != 0x28)) {
        return DecodeStatus::unsupported_header;
    }
    if (width == 0 || height == 0) return DecodeStatus::invalid_dimensions;

    constexpr std::size_t bytes_per_pixel = 4;
    if (static_cast<std::size_t>(width) >
        std::numeric_limits<std::size_t>::max() / bytes_per_pixel) {
        return DecodeStatus::invalid_dimensions;
    }
    const std::size_t row_bytes = static_cast<std::size_t>(width) * bytes_per_pixel;
    if (static_cast<std::size_t>(height) >
        std::numeric_limits<std::size_t>::max() / row_bytes) {
        return DecodeStatus::invalid_dimensions;
    }
    const std::size_t pixel_bytes = row_bytes * static_cast<std::size_t>(height);
    if (pixel_bytes > file_size - 18) return DecodeStatus::truncated_pixels;
    if (output == nullptr) return DecodeStatus::invalid_argument;
    if (output_capacity < pixel_bytes) return DecodeStatus::output_too_small;

    const std::uint8_t* pixels = file + 18;
    const bool descriptor_bit5_set = (descriptor & 0x20) != 0;
    for (std::size_t y = 0; y < height; ++y) {
        const std::size_t source_y = descriptor_bit5_set ? y : (height - 1 - y);
        std::memcpy(output + y * row_bytes, pixels + source_y * row_bytes, row_bytes);
    }

    info->width = width;
    info->height = height;
    info->engine_format = 13;
    info->byte_count = pixel_bytes;
    return DecodeStatus::ok;
}

}  // namespace dh2::tga
