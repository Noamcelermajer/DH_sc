#ifndef DH2_ENGINE_AUDIO_NATIVE_FORMAT_IMA_ADPCM_HPP
#define DH2_ENGINE_AUDIO_NATIVE_FORMAT_IMA_ADPCM_HPP

#include "chunk_view.hpp"

#include <array>
#include <cstddef>
#include <cstdint>
#include <limits>

// Bounded reconstruction of the VoxN Microsoft IMA ADPCM block decoder used
// by Dungeon Hunter 2. The original ARM32 evidence and the supported corpus
// are recorded under reference/ima-adpcm/. This is not the original ABI.
namespace dh2::engine_audio::native_format {

inline constexpr std::uint16_t kFormatImaAdpcm = 0x0011u;
inline constexpr std::uint32_t kTagData = 0x61746144u;
inline constexpr std::size_t kMaxImaAdpcmChannels = 8;

struct AudioFormat {
    std::uint16_t format_tag;
    std::uint16_t channels;
    std::uint32_t sample_rate_hz;
    std::uint16_t block_align;
    std::uint16_t bits_per_sample;
};

inline std::uint16_t read_u16_le(const std::uint8_t* p) noexcept {
    return static_cast<std::uint16_t>(p[0]) |
           static_cast<std::uint16_t>(static_cast<std::uint16_t>(p[1]) << 8);
}

// Afmt is the twelve-byte native format record observed in all recorded DH2
// VoxN files. Rejection leaves out unchanged.
inline bool read_audio_format(const ChunkView& chunk, AudioFormat* out) noexcept {
    if (!detail::output(out) || chunk.tag != kTagAfmt || chunk.payload_size != 12 ||
        !detail::span(chunk.payload, chunk.payload_size) ||
        detail::overlaps(chunk.payload, chunk.payload_size, out, sizeof(*out)))
        return false;
    const AudioFormat value{
        read_u16_le(chunk.payload),
        read_u16_le(chunk.payload + 2),
        read_u32_le(chunk.payload + 4),
        read_u16_le(chunk.payload + 8),
        read_u16_le(chunk.payload + 10),
    };
    *out = value;
    return true;
}

// The original constructors derive this value as
// (((block_align - 4 * channels) * 2) / channels) + 1 and reject channel
// counts above eight. This port additionally requires complete four-byte
// channel groups so every accepted block is fully bounded.
inline bool ima_adpcm_samples_per_block(const AudioFormat& format,
                                        std::size_t* out) noexcept {
    if (!detail::output(out) || format.format_tag != kFormatImaAdpcm ||
        format.channels == 0 || format.channels > kMaxImaAdpcmChannels ||
        format.sample_rate_hz == 0 || format.bits_per_sample != 4)
        return false;
    const std::size_t channels = format.channels;
    const std::size_t header_bytes = channels * 4;
    const std::size_t group_bytes = channels * 4;
    if (format.block_align < header_bytes ||
        (static_cast<std::size_t>(format.block_align) - header_bytes) % group_bytes != 0)
        return false;
    const std::size_t encoded_bytes = format.block_align - header_bytes;
    const std::size_t value = (encoded_bytes * 2) / channels + 1;
    *out = value;
    return true;
}

enum class ImaAdpcmBlockStatus { kDecoded, kMalformed, kOutputTooSmall };

struct ImaAdpcmBlockResult {
    std::size_t frames;
    std::size_t samples;
};

namespace detail {
inline constexpr std::array<std::int16_t, 89> kImaStepTable{{
    7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 21, 23, 25, 28, 31,
    34, 37, 41, 45, 50, 55, 60, 66, 73, 80, 88, 97, 107, 118, 130,
    143, 157, 173, 190, 209, 230, 253, 279, 307, 337, 371, 408, 449,
    494, 544, 598, 658, 724, 796, 876, 963, 1060, 1166, 1282, 1411,
    1552, 1707, 1878, 2066, 2272, 2499, 2749, 3024, 3327, 3660,
    4026, 4428, 4871, 5358, 5894, 6484, 7132, 7845, 8630, 9493,
    10442, 11487, 12635, 13899, 15289, 16818, 18500, 20350, 22385,
    24623, 27086, 29794, 32767,
}};

inline constexpr std::array<std::int8_t, 16> kImaIndexTable{{
    -1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8,
}};

struct ImaChannelState {
    int predictor;
    int step_index;
};

inline int clamp_predictor(int value) noexcept {
    if (value < -32768) return -32768;
    if (value > 32767) return 32767;
    return value;
}
} // namespace detail

// Decodes one complete Microsoft IMA ADPCM block into interleaved signed PCM.
// Channel headers are followed by four encoded bytes per channel per group;
// each 32-bit little-endian group is consumed low nibble first, matching the
// original ARM32 DecodeBlock control flow. Inputs are borrowed. Rejection
// leaves both output PCM and result unchanged.
inline ImaAdpcmBlockStatus decode_ima_adpcm_block(const std::uint8_t* block,
        std::size_t block_size, const AudioFormat& format, std::int16_t* output,
        std::size_t output_capacity_samples, ImaAdpcmBlockResult* result) noexcept {
    std::size_t frames = 0;
    if (!ima_adpcm_samples_per_block(format, &frames) ||
        block_size != format.block_align || !detail::span(block, block_size) ||
        !detail::output(result))
        return ImaAdpcmBlockStatus::kMalformed;
    const std::size_t channels = format.channels;
    if (frames > std::numeric_limits<std::size_t>::max() / channels)
        return ImaAdpcmBlockStatus::kMalformed;
    const std::size_t samples = frames * channels;
    if (output_capacity_samples < samples)
        return ImaAdpcmBlockStatus::kOutputTooSmall;
    if (samples > std::numeric_limits<std::size_t>::max() / sizeof(*output) ||
        (output == nullptr && samples != 0) ||
        reinterpret_cast<std::uintptr_t>(output) % alignof(std::int16_t) != 0 ||
        !detail::span(output, samples * sizeof(*output)) ||
        detail::overlaps(block, block_size, output, samples * sizeof(*output)) ||
        detail::overlaps(block, block_size, result, sizeof(*result)) ||
        detail::overlaps(output, samples * sizeof(*output), result, sizeof(*result)))
        return ImaAdpcmBlockStatus::kMalformed;

    std::array<detail::ImaChannelState, kMaxImaAdpcmChannels> states{};
    for (std::size_t channel = 0; channel != channels; ++channel) {
        const std::uint8_t* header = block + channel * 4;
        if (header[2] > 88) return ImaAdpcmBlockStatus::kMalformed;
        states[channel] = {
            static_cast<std::int16_t>(read_u16_le(header)),
            header[2],
        };
    }

    for (std::size_t channel = 0; channel != channels; ++channel)
        output[channel] = static_cast<std::int16_t>(states[channel].predictor);

    std::size_t input_offset = channels * 4;
    std::size_t first_frame = 1;
    while (input_offset != block_size) {
        for (std::size_t channel = 0; channel != channels; ++channel) {
            std::uint32_t codes = read_u32_le(block + input_offset);
            input_offset += 4;
            auto& state = states[channel];
            for (std::size_t nibble_index = 0; nibble_index != 8; ++nibble_index) {
                const unsigned code = codes & 0x0fu;
                codes >>= 4;
                const int step = detail::kImaStepTable[static_cast<std::size_t>(state.step_index)];
                int difference = step >> 3;
                if ((code & 4u) != 0) difference += step;
                if ((code & 2u) != 0) difference += step >> 1;
                if ((code & 1u) != 0) difference += step >> 2;
                state.predictor = detail::clamp_predictor(
                    (code & 8u) != 0 ? state.predictor - difference
                                     : state.predictor + difference);
                state.step_index += detail::kImaIndexTable[code];
                if (state.step_index < 0) state.step_index = 0;
                if (state.step_index > 88) state.step_index = 88;
                output[(first_frame + nibble_index) * channels + channel] =
                    static_cast<std::int16_t>(state.predictor);
            }
        }
        first_frame += 8;
    }

    const ImaAdpcmBlockResult value{frames, samples};
    *result = value;
    return ImaAdpcmBlockStatus::kDecoded;
}

} // namespace dh2::engine_audio::native_format
#endif
