#include "pvr.hpp"

#include <algorithm>

namespace {

using dh2::textures::Error;
using dh2::textures::FormatStatus;
using dh2::textures::MipRange;
using dh2::textures::PvrView;

constexpr std::uint32_t kHeaderBytes = 52;
constexpr std::uint32_t kBtexBytes = 8;
constexpr std::uint32_t kFlagMipmaps = 0x0100;
constexpr std::uint32_t kFlagTwiddled = 0x0200;
constexpr std::uint32_t kFlagVolume = 0x4000;
constexpr std::uint32_t kFlagAlphaVariant = 0x8000;
constexpr std::uint32_t kFlagCube = 0x1000;

struct PixelLayout {
    std::uint32_t engine_format;
    std::uint8_t features;
    std::uint8_t bytes_per_block;
    std::uint8_t bits_per_pixel;
    std::uint8_t block_width;
    std::uint8_t block_height;
    std::uint8_t minimum_bytes;
};

bool read_u32_le(const std::uint8_t* bytes, std::uint32_t* out) {
    if (bytes == nullptr || out == nullptr) return false;
    *out = static_cast<std::uint32_t>(bytes[0]) |
           (static_cast<std::uint32_t>(bytes[1]) << 8) |
           (static_cast<std::uint32_t>(bytes[2]) << 16) |
           (static_cast<std::uint32_t>(bytes[3]) << 24);
    return true;
}

bool checked_add(std::uint64_t a, std::uint64_t b, std::uint64_t* out) {
    if (out == nullptr || b > UINT64_MAX - a) return false;
    *out = a + b;
    return true;
}

bool checked_mul(std::uint64_t a, std::uint64_t b, std::uint64_t* out) {
    if (out == nullptr || (a != 0 && b > UINT64_MAX / a)) return false;
    *out = a * b;
    return true;
}

std::uint32_t mip_dimension(std::uint32_t value, std::uint32_t mip) {
    if (mip >= 32) return 1;
    return std::max<std::uint32_t>(1, value >> mip);
}

bool pvr_pixel_type(std::uint32_t flags, std::uint32_t* engine_format) {
    if (engine_format == nullptr) return false;
    switch (flags & 0xffu) {
        case 0x00: *engine_format = 6; return true;
        case 0x01: *engine_format = 8; return true;
        case 0x02: *engine_format = 5; return true;
        case 0x04: *engine_format = 10; return true;
        case 0x05: *engine_format = 13; return true;
        case 0x10: *engine_format = 7; return true;
        case 0x11: *engine_format = 9; return true;
        case 0x12: *engine_format = 14; return true;
        case 0x13: *engine_format = 5; return true;
        case 0x15: *engine_format = 10; return true;
        case 0x16: *engine_format = 0; return true;
        case 0x17: *engine_format = 4; return true;
        case 0x18: *engine_format = (flags & kFlagAlphaVariant) ? 25 : 24; return true;
        case 0x19: *engine_format = (flags & kFlagAlphaVariant) ? 27 : 26; return true;
        case 0x1a: *engine_format = 13; return true;
        case 0x20: *engine_format = (flags & kFlagAlphaVariant) ? 18 : 17; return true;
        case 0x21:
        case 0x22: *engine_format = 19; return true;
        case 0x23:
        case 0x24: *engine_format = 20; return true;
        case 0x2a: *engine_format = 16; return true;
        case 0x39: *engine_format = 2; return true;
        case 0x3b: *engine_format = 1; return true;
        case 0x50: *engine_format = 31; return true;
        case 0x53: *engine_format = 30; return true;
        case 0x56: *engine_format = 29; return true;
        default: return false;
    }
}

bool pixel_layout(std::uint32_t engine_format, PixelLayout* out) {
    if (out == nullptr) return false;
    // Values are the selected fields of the original 40-byte PFDTable rows:
    // features at +0, bytes/block +0x15, bits/pixel +0x16, block width +0x24,
    // block height +0x25, and minimum byte count +0x27.
    switch (engine_format) {
        case 0:  *out = {0, 0x04, 1, 8, 1, 1, 0}; return true;
        case 1:  *out = {1, 0x04, 2, 16, 1, 1, 0}; return true;
        case 2:  *out = {2, 0x01, 1, 8, 1, 1, 0}; return true;
        case 4:  *out = {4, 0x05, 2, 16, 1, 1, 0}; return true;
        case 5:  *out = {5, 0x40, 2, 16, 1, 1, 0}; return true;
        case 6:  *out = {6, 0x41, 2, 16, 1, 1, 0}; return true;
        case 7:  *out = {7, 0x41, 2, 16, 1, 1, 0}; return true;
        case 8:  *out = {8, 0x41, 2, 16, 1, 1, 0}; return true;
        case 9:  *out = {9, 0x41, 2, 16, 1, 1, 0}; return true;
        case 10: *out = {10, 0x00, 3, 24, 1, 1, 0}; return true;
        case 13: *out = {13, 0x01, 4, 32, 1, 1, 0}; return true;
        case 14: *out = {14, 0x01, 4, 32, 1, 1, 0}; return true;
        case 16: *out = {16, 0x41, 4, 32, 1, 1, 0}; return true;
        case 17: *out = {17, 0x08, 8, 4, 4, 4, 0}; return true;
        case 18: *out = {18, 0x09, 8, 4, 4, 4, 0}; return true;
        case 19: *out = {19, 0x09, 16, 8, 4, 4, 0}; return true;
        case 20: *out = {20, 0x09, 16, 8, 4, 4, 0}; return true;
        case 24: *out = {24, 0x08, 8, 2, 8, 4, 32}; return true;
        case 25: *out = {25, 0x09, 8, 2, 8, 4, 32}; return true;
        case 26: *out = {26, 0x08, 8, 4, 4, 4, 32}; return true;
        case 27: *out = {27, 0x09, 8, 4, 4, 4, 32}; return true;
        case 29: *out = {29, 0x03, 8, 64, 1, 1, 0}; return true;
        case 30: *out = {30, 0x02, 12, 96, 1, 1, 0}; return true;
        case 31: *out = {31, 0x02, 16, 128, 1, 1, 0}; return true;
        default: return false;
    }
}

bool size_2d(const PixelLayout& layout, std::uint32_t width,
             std::uint32_t height, std::uint64_t* size) {
    if (size == nullptr || width == 0 || height == 0 ||
        layout.bits_per_pixel == 0 || layout.block_width == 0 ||
        layout.block_height == 0) return false;

    std::uint64_t pitch = 0;
    if (layout.block_width > 1) {
        const std::uint64_t blocks_wide =
            (static_cast<std::uint64_t>(width) + layout.block_width - 1) /
            layout.block_width;
        if (!checked_mul(blocks_wide, layout.bytes_per_block, &pitch)) return false;
    } else {
        // Mirrors computePitch's integer (bits * width) >> 3 behavior.
        if (!checked_mul(layout.bits_per_pixel, width, &pitch)) return false;
        pitch >>= 3;
    }

    std::uint64_t rows = height;
    if (layout.block_height > 1) {
        rows = (static_cast<std::uint64_t>(height) + layout.block_height - 1) /
               layout.block_height;
    }
    if (!checked_mul(rows, pitch, size)) return false;
    *size = std::max<std::uint64_t>(*size, layout.minimum_bytes);
    return true;
}

bool mip_size(const PvrView& view, const PixelLayout& layout,
              std::uint32_t mip, std::uint64_t* size,
              std::uint32_t* width, std::uint32_t* height,
              std::uint32_t* depth) {
    if (size == nullptr || width == nullptr || height == nullptr || depth == nullptr)
        return false;
    *width = mip_dimension(view.width, mip);
    *height = mip_dimension(view.height, mip);
    *depth = view.volume ? mip_dimension(view.depth, mip) : 1;
    std::uint64_t one_slice = 0;
    return size_2d(layout, *width, *height, &one_slice) &&
           checked_mul(one_slice, *depth, size);
}

bool modeled_face_size(const PvrView& view, const PixelLayout& layout,
                       std::uint64_t* size) {
    if (size == nullptr) return false;
    *size = 0;
    for (std::uint32_t mip = 0; mip < view.mip_levels; ++mip) {
        std::uint64_t level_size = 0;
        std::uint32_t width = 0, height = 0, depth = 0;
        if (!mip_size(view, layout, mip, &level_size, &width, &height, &depth) ||
            !checked_add(*size, level_size, size)) return false;
    }
    return true;
}

std::uint32_t complete_chain_mipmaps(std::uint32_t maximum_dimension) {
    std::uint32_t count = 0;
    while (maximum_dimension > 1) {
        maximum_dimension >>= 1;
        ++count;
    }
    return count;
}

bool image_load_switch_supports(std::uint32_t type) {
    switch (type) {
        case 0x01:
        case 0x10: case 0x11: case 0x12: case 0x13:
        case 0x15: case 0x16: case 0x17: case 0x18: case 0x19:
            return true;
        default:
            return false;
    }
}

}  // namespace

extern "C" dh2::textures::Error dh2_pvr_open(PvrView* out,
                                               const std::uint8_t* file,
                                               std::uint64_t file_size) {
    if (out == nullptr) return Error::argument;
    *out = PvrView{};
    if (file == nullptr) return Error::argument;

    bool wrapped = false;
    if (file_size >= kBtexBytes) {
        static constexpr std::uint8_t marker[kBtexBytes] =
            {'B', 'T', 'E', 'X', 'p', 'v', 'r', 0};
        // The assembly compares eight bytes, including the trailing NUL.
        wrapped = true;
        for (std::uint32_t i = 0; i < kBtexBytes; ++i) {
            const std::uint8_t expected = (i == 7) ? 0 : marker[i];
            if (file[i] != expected) {
                wrapped = false;
                break;
            }
        }
    }

    const std::uint64_t payload_offset = kHeaderBytes + (wrapped ? kBtexBytes : 0);
    if (file_size < payload_offset) return Error::truncated;
    const std::uint8_t* header = file + (wrapped ? kBtexBytes : 0);
    std::uint32_t fields[13]{};
    for (std::uint32_t i = 0; i < 13; ++i) {
        if (!read_u32_le(header + i * 4, &fields[i])) return Error::truncated;
    }
    if (fields[0] != kHeaderBytes || header[44] != 'P' || header[45] != 'V' ||
        header[46] != 'R' || header[47] != '!') return Error::header;

    const std::uint32_t flags = fields[4];
    const bool cube = (flags & kFlagCube) != 0;
    const bool volume = (flags & kFlagVolume) != 0;
    const bool mip_flag = (flags & kFlagMipmaps) != 0;
    if (fields[1] == 0 || fields[2] == 0) return Error::dimensions;
    if (cube && fields[12] != 6) return Error::surfaces;
    if (volume && fields[12] == 0) return Error::volume;

    const std::uint32_t depth = volume ? fields[12] : 1;
    std::uint32_t mip_levels = 1;
    if (mip_flag) {
        if (fields[3] == 0) return Error::mip_chain;
        const std::uint32_t maximum_dimension = std::max(
            std::max(fields[1], fields[2]), volume ? depth : 1u);
        if (fields[3] != complete_chain_mipmaps(maximum_dimension))
            return Error::mip_chain;
        mip_levels = fields[3] + 1;
    }

    std::uint64_t expected_payload = fields[5];
    if (cube && !checked_mul(expected_payload, 6, &expected_payload))
        return Error::overflow;
    if (file_size - payload_offset != expected_payload) return Error::file_length;

    PvrView view{};
    view.file = file;
    view.file_size = file_size;
    view.payload_offset = payload_offset;
    view.width = fields[2];
    view.height = fields[1];
    view.depth = depth;
    view.flags = flags;
    view.pixel_type = flags & 0xffu;
    view.header_mipmaps = fields[3];
    view.mip_levels = mip_levels;
    view.surfaces = fields[12];
    view.data_length = fields[5];
    view.bits_per_pixel = fields[6];
    view.channel_masks[0] = fields[7];
    view.channel_masks[1] = fields[8];
    view.channel_masks[2] = fields[9];
    view.channel_masks[3] = fields[10];
    view.wrapped_btex = wrapped;
    view.cube = cube;
    view.volume = volume;
    view.mip_flag = mip_flag;
    view.twiddled = (flags & kFlagTwiddled) != 0;

    PixelLayout layout{};
    if (!pvr_pixel_type(flags, &view.engine_format) ||
        !pixel_layout(view.engine_format, &layout)) {
        view.format_status = FormatStatus::unsupported_pixel_type;
        view.modeled_data_length_matches = false;
    } else {
        view.format_features = layout.features;
        view.bytes_per_block = layout.bytes_per_block;
        view.block_width = layout.block_width;
        view.block_height = layout.block_height;
        view.minimum_bytes = layout.minimum_bytes;
        view.format_status = (view.twiddled && (layout.features & 0x08u) == 0)
            ? FormatStatus::twiddled_not_supported_by_original_loader
            : FormatStatus::mapped;

        std::uint64_t modeled_size = 0;
        view.modeled_data_length_matches =
            !(cube && volume) && modeled_face_size(view, layout, &modeled_size) &&
            modeled_size == view.data_length;
    }

    *out = view;
    return Error::ok;
}

extern "C" dh2::textures::Error dh2_pvr_mip_range(const PvrView* view,
                                                   std::uint32_t face,
                                                   std::uint32_t mip,
                                                   MipRange* out) {
    if (view == nullptr || out == nullptr || view->file == nullptr)
        return Error::argument;
    *out = MipRange{};
    if (view->format_status == FormatStatus::unsupported_pixel_type)
        return Error::unsupported_format;
    if (view->cube && view->volume) return Error::unsupported_layout;
    if ((view->cube && face >= 6) || (!view->cube && face != 0) ||
        mip >= view->mip_levels) return Error::range;

    PixelLayout layout{};
    if (!pixel_layout(view->engine_format, &layout)) return Error::unsupported_format;
    std::uint64_t mip_offset = 0;
    for (std::uint32_t level = 0; level < mip; ++level) {
        std::uint64_t prior_size = 0;
        std::uint32_t width = 0, height = 0, depth = 0;
        if (!mip_size(*view, layout, level, &prior_size, &width, &height, &depth) ||
            !checked_add(mip_offset, prior_size, &mip_offset)) return Error::overflow;
    }

    std::uint64_t size = 0;
    std::uint32_t width = 0, height = 0, depth = 0;
    if (!mip_size(*view, layout, mip, &size, &width, &height, &depth))
        return Error::overflow;
    std::uint64_t face_offset = 0;
    if (view->cube && !checked_mul(face, view->data_length, &face_offset))
        return Error::overflow;
    std::uint64_t relative_offset = 0;
    if (!checked_add(face_offset, mip_offset, &relative_offset)) return Error::overflow;
    std::uint64_t relative_end = 0;
    if (!checked_add(relative_offset, size, &relative_end)) return Error::overflow;
    const std::uint64_t allowed = view->cube
        ? static_cast<std::uint64_t>(view->data_length) * 6
        : view->data_length;
    if (relative_end > allowed) return Error::range;

    std::uint64_t absolute_offset = 0, absolute_end = 0;
    if (!checked_add(view->payload_offset, relative_offset, &absolute_offset) ||
        !checked_add(absolute_offset, size, &absolute_end)) return Error::overflow;
    if (absolute_end > view->file_size) return Error::range;

    out->file_offset = absolute_offset;
    out->size = size;
    out->width = width;
    out->height = height;
    out->depth = depth;
    return Error::ok;
}

extern "C" bool dh2_pvr_load_image_supported(const PvrView* view) {
    return view != nullptr && view->file != nullptr &&
           image_load_switch_supports(view->pixel_type);
}
