#pragma once

#include <cstdint>

// Borrowed immutable PVR/BTEX views. The complete input file must outlive the
// view and every range returned from it. These are host-side port interfaces,
// not the original ARM32 C++ object ABI.
namespace dh2::textures {

enum class Error : std::uint32_t {
    ok,
    argument,
    truncated,
    header,
    dimensions,
    mip_chain,
    surfaces,
    volume,
    file_length,
    overflow,
    unsupported_format,
    unsupported_layout,
    range
};

enum class FormatStatus : std::uint32_t {
    mapped,
    unsupported_pixel_type,
    twiddled_not_supported_by_original_loader
};

struct PvrView {
    const std::uint8_t* file;
    std::uint64_t file_size;
    std::uint64_t payload_offset;
    std::uint32_t width, height, depth;
    // engine_format is meaningful when format_status is not
    // unsupported_pixel_type. surfaces retains the raw header numSurfs word;
    // depth is derived from it only for a volume header.
    std::uint32_t flags, pixel_type, engine_format;
    std::uint32_t header_mipmaps, mip_levels;
    std::uint32_t surfaces, data_length, bits_per_pixel;
    std::uint32_t channel_masks[4];
    std::uint32_t format_features;
    std::uint32_t bytes_per_block, block_width, block_height, minimum_bytes;
    FormatStatus format_status;
    bool wrapped_btex, cube, volume, mip_flag, twiddled;
    bool modeled_data_length_matches;
};

struct MipRange {
    // Absolute byte offset from the start of file. A caller can inspect the
    // encoded bytes at view.file + file_offset; this is not decoded pixel data.
    std::uint64_t file_offset;
    std::uint64_t size;
    std::uint32_t width, height, depth;
};

}  // namespace dh2::textures

extern "C" {

// Accepts the exact 52-byte legacy PVR v2 header, optionally preceded by the
// exact eight-byte "BTEXpvr" marker. Unknown PVR pixel types remain inspectable
// in a successful view; format_status records that they cannot be sized here.
dh2::textures::Error dh2_pvr_open(dh2::textures::PvrView* out,
                                  const std::uint8_t* file,
                                  std::uint64_t file_size);

// Returns a checked byte range for one cube face/mip. For non-cube images,
// face must be zero. A volume returns one range per mip with its depth included.
dh2::textures::Error dh2_pvr_mip_range(const dh2::textures::PvrView* view,
                                       std::uint32_t face,
                                       std::uint32_t mip,
                                       dh2::textures::MipRange* out);

// True only for the narrower PVR CPU-image switch in CImageLoaderPVR::loadImage.
bool dh2_pvr_load_image_supported(const dh2::textures::PvrView* view);

}
