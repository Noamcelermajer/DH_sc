#include "../ima_adpcm.hpp"

#include <array>
#include <charconv>
#include <cstdint>
#include <fstream>
#include <iostream>
#include <limits>
#include <stdexcept>
#include <string>
#include <vector>

namespace v = dh2::engine_audio::native_format;
namespace {

std::size_t checks = 0;

void require(bool condition, const char* why) {
    ++checks;
    if (!condition) throw std::runtime_error(why);
}

void put16(std::uint8_t* p, std::uint16_t value) {
    p[0] = static_cast<std::uint8_t>(value);
    p[1] = static_cast<std::uint8_t>(value >> 8);
}

void put32(std::uint8_t* p, std::uint32_t value) {
    for (unsigned i = 0; i != 4; ++i)
        p[i] = static_cast<std::uint8_t>(value >> (8 * i));
}

bool unchanged(const v::AudioFormat& format) {
    return format.format_tag == 1 && format.channels == 2 && format.sample_rate_hz == 3 &&
           format.block_align == 4 && format.bits_per_sample == 5;
}

bool unchanged(const v::ImaAdpcmBlockResult& result) {
    return result.frames == 123 && result.samples == 456;
}

void guards() {
    alignas(std::max_align_t) std::array<std::uint8_t, 64> storage{};
    auto* bytes = storage.data();
    put16(bytes, v::kFormatImaAdpcm);
    put16(bytes + 2, 2);
    put32(bytes + 4, 32000);
    put16(bytes + 8, 1024);
    put16(bytes + 10, 4);
    v::ChunkView chunk{v::kTagAfmt, 0, bytes, 12};
    v::AudioFormat format{1, 2, 3, 4, 5};
    require(v::read_audio_format(chunk, &format), "observed Afmt rejected");
    require(format.format_tag == 17 && format.channels == 2 && format.sample_rate_hz == 32000 &&
            format.block_align == 1024 && format.bits_per_sample == 4, "Afmt fields");
    for (std::size_t size = 0; size != 12; ++size) {
        chunk.payload_size = size;
        format = {1, 2, 3, 4, 5};
        require(!v::read_audio_format(chunk, &format) && unchanged(format), "Afmt truncation preservation");
    }
    chunk.payload_size = 12;
    chunk.tag = v::kTagSegm;
    format = {1, 2, 3, 4, 5};
    require(!v::read_audio_format(chunk, &format) && unchanged(format), "non-Afmt accepted");
    chunk.tag = v::kTagAfmt;
    require(!v::read_audio_format(chunk, nullptr), "null format output");
    require(!v::read_audio_format(chunk, reinterpret_cast<v::AudioFormat*>(bytes + 1)),
            "unaligned format output");
    require(!v::read_audio_format(chunk, reinterpret_cast<v::AudioFormat*>(bytes)),
            "aliased format output");

    const v::AudioFormat observed{17, 2, 32000, 1024, 4};
    std::size_t frames = 0;
    require(v::ima_adpcm_samples_per_block(observed, &frames) && frames == 1017,
            "observed samples per block");
    require(!v::ima_adpcm_samples_per_block(observed, nullptr), "null frame output");
    for (const v::AudioFormat bad : {
             v::AudioFormat{1, 2, 32000, 1024, 4}, v::AudioFormat{17, 0, 32000, 1024, 4},
             v::AudioFormat{17, 9, 32000, 1024, 4}, v::AudioFormat{17, 2, 0, 1024, 4},
             v::AudioFormat{17, 2, 32000, 1024, 8}, v::AudioFormat{17, 2, 32000, 7, 4},
             v::AudioFormat{17, 2, 32000, 17, 4}}) {
        frames = 999;
        require(!v::ima_adpcm_samples_per_block(bad, &frames) && frames == 999,
                "invalid format accepted");
    }

    // FFmpeg adpcm_ima_wav golden: predictors 1000/-1000 followed by codes
    // 0..7 and 8..15, respectively, in low-nibble-first order.
    const v::AudioFormat small{17, 2, 32000, 16, 4};
    const std::array<std::uint8_t, 16> block{{
        0xe8, 0x03, 0x00, 0x00, 0x18, 0xfc, 0x00, 0x00,
        0x10, 0x32, 0x54, 0x76, 0x98, 0xba, 0xdc, 0xfe,
    }};
    const std::array<std::int16_t, 18> expected{{
        1000, -1000, 1000, -1000, 1001, -1001, 1004, -1004, 1008,
        -1008, 1015, -1015, 1027, -1027, 1047, -1047, 1088, -1088,
    }};
    std::array<std::int16_t, 18> output{};
    v::ImaAdpcmBlockResult result{};
    require(v::decode_ima_adpcm_block(block.data(), block.size(), small, output.data(), output.size(), &result) ==
            v::ImaAdpcmBlockStatus::kDecoded, "synthetic block decode");
    require(output == expected && result.frames == 9 && result.samples == 18,
            "synthetic FFmpeg golden mismatch");

    for (std::size_t size = 0; size != block.size(); ++size) {
        output.fill(3210);
        result = {123, 456};
        require(v::decode_ima_adpcm_block(block.data(), size, small, output.data(), output.size(), &result) ==
                    v::ImaAdpcmBlockStatus::kMalformed && output[0] == 3210 && unchanged(result),
                "partial block accepted or mutated output");
    }
    output.fill(3210);
    result = {123, 456};
    require(v::decode_ima_adpcm_block(block.data(), block.size(), small, output.data(), output.size() - 1, &result) ==
                v::ImaAdpcmBlockStatus::kOutputTooSmall && output[0] == 3210 && unchanged(result),
            "short PCM output accepted or mutated");
    auto invalid_index = block;
    invalid_index[2] = 89;
    output.fill(3210);
    result = {123, 456};
    require(v::decode_ima_adpcm_block(invalid_index.data(), invalid_index.size(), small,
                output.data(), output.size(), &result) == v::ImaAdpcmBlockStatus::kMalformed &&
            output[0] == 3210 && unchanged(result), "invalid step index accepted or mutated");
    result = {123, 456};
    require(v::decode_ima_adpcm_block(nullptr, block.size(), small, output.data(), output.size(), &result) ==
                v::ImaAdpcmBlockStatus::kMalformed && unchanged(result), "null encoded block accepted");
    require(v::decode_ima_adpcm_block(block.data(), block.size(), small, nullptr, output.size(), &result) ==
                v::ImaAdpcmBlockStatus::kMalformed && unchanged(result), "null PCM output accepted");
    require(v::decode_ima_adpcm_block(block.data(), block.size(), small, output.data(), output.size(), nullptr) ==
                v::ImaAdpcmBlockStatus::kMalformed, "null result accepted");

    alignas(std::int16_t) std::array<std::uint8_t, 64> alias{};
    for (std::size_t i = 0; i != block.size(); ++i) alias[i] = block[i];
    result = {123, 456};
    require(v::decode_ima_adpcm_block(alias.data(), block.size(), small,
                reinterpret_cast<std::int16_t*>(alias.data()), output.size(), &result) ==
                v::ImaAdpcmBlockStatus::kMalformed && unchanged(result), "input/output alias accepted");

    std::cout << "{\"status\":\"PASS\",\"checks\":" << checks
              << ",\"mismatches\":0}" << std::endl;
}

struct Description {
    v::ContainerLayout layout;
    v::AudioFormat format;
    std::size_t frames_per_block;
    std::size_t block_count;
};

std::uint64_t file_size(std::ifstream& file) {
    file.seekg(0, std::ios::end);
    const auto end = file.tellg();
    if (end < 0) throw std::runtime_error("cannot determine input size");
    file.seekg(0);
    return static_cast<std::uint64_t>(end);
}

void read_exact(std::ifstream& file, std::uint8_t* bytes, std::size_t size) {
    if (size != 0 && !file.read(reinterpret_cast<char*>(bytes), static_cast<std::streamsize>(size)))
        throw std::runtime_error("short input read");
}

Description describe(std::ifstream& file, std::uint64_t physical) {
    if (physical > std::numeric_limits<std::uint32_t>::max())
        throw std::runtime_error("input exceeds VoxN 32-bit size field");
    std::array<std::uint8_t, 24> prefix{};
    read_exact(file, prefix.data(), prefix.size());
    v::ContainerLayout layout{};
    if (v::read_container_layout(prefix.data(), prefix.size(), static_cast<std::size_t>(physical), &layout) !=
        v::LayoutReadStatus::kLayout)
        throw std::runtime_error("unsupported or malformed VoxN layout");
    if (layout.audio_base > 1024 * 1024 || layout.audio_base < 32)
        throw std::runtime_error("VoxN metadata exceeds test bound");
    std::vector<std::uint8_t> metadata(layout.audio_base);
    file.seekg(0);
    read_exact(file, metadata.data(), metadata.size());

    std::size_t offset = 0;
    v::ChunkView chunk{};
    v::AudioFormat format{};
    bool found_format = false;
    const auto* chunks = metadata.data() + layout.chunk_file_offset;
    for (;;) {
        const auto status = v::next_chunk(chunks, layout.chunk_bytes, &offset, &chunk);
        if (status == v::ChunkReadStatus::kEnd) break;
        if (status != v::ChunkReadStatus::kChunk)
            throw std::runtime_error("malformed VoxN metadata chunks");
        if (chunk.tag == v::kTagAfmt) {
            if (found_format || !v::read_audio_format(chunk, &format))
                throw std::runtime_error("missing or duplicate native audio format");
            found_format = true;
        }
    }
    if (!found_format) throw std::runtime_error("missing native audio format");
    const std::size_t data_header = layout.audio_base - 8;
    if (v::read_u32_le(metadata.data() + data_header) != v::kTagData ||
        v::read_u32_le(metadata.data() + data_header + 4) != layout.audio_bytes)
        throw std::runtime_error("Data chunk boundary mismatch");
    std::size_t frames = 0;
    if (!v::ima_adpcm_samples_per_block(format, &frames))
        throw std::runtime_error("unsupported native audio format");
    if (layout.audio_bytes % format.block_align != 0)
        throw std::runtime_error("partial terminal IMA ADPCM block");
    return {layout, format, frames, layout.audio_bytes / format.block_align};
}

std::size_t parse_index(const char* word) {
    const std::string text(word);
    std::size_t value = 0;
    const auto parsed = std::from_chars(text.data(), text.data() + text.size(), value);
    if (parsed.ec != std::errc{} || parsed.ptr != text.data() + text.size())
        throw std::runtime_error("invalid block index");
    return value;
}

void write_pcm(const std::vector<std::int16_t>& samples) {
    std::vector<std::uint8_t> bytes(samples.size() * 2);
    for (std::size_t i = 0; i != samples.size(); ++i) {
        const auto value = static_cast<std::uint16_t>(samples[i]);
        bytes[i * 2] = static_cast<std::uint8_t>(value);
        bytes[i * 2 + 1] = static_cast<std::uint8_t>(value >> 8);
    }
    if (!std::cout.write(reinterpret_cast<const char*>(bytes.data()),
                         static_cast<std::streamsize>(bytes.size())))
        throw std::runtime_error("PCM output write failed");
}

void decode(const char* path, bool one_block, std::size_t requested_block) {
    std::ifstream file(path, std::ios::binary);
    if (!file) throw std::runtime_error("cannot open VoxN input");
    const std::uint64_t physical = file_size(file);
    const Description description = describe(file, physical);
    if (one_block && requested_block >= description.block_count)
        throw std::runtime_error("block index out of range");
    const std::size_t first = one_block ? requested_block : 0;
    const std::size_t end = one_block ? requested_block + 1 : description.block_count;
    std::vector<std::uint8_t> block(description.format.block_align);
    std::vector<std::int16_t> pcm(description.frames_per_block * description.format.channels);
    for (std::size_t index = first; index != end; ++index) {
        const std::uint64_t byte_offset = description.layout.audio_base +
            static_cast<std::uint64_t>(index) * description.format.block_align;
        file.seekg(static_cast<std::streamoff>(byte_offset));
        read_exact(file, block.data(), block.size());
        v::ImaAdpcmBlockResult result{};
        if (v::decode_ima_adpcm_block(block.data(), block.size(), description.format,
                    pcm.data(), pcm.size(), &result) != v::ImaAdpcmBlockStatus::kDecoded ||
            result.frames != description.frames_per_block || result.samples != pcm.size())
            throw std::runtime_error("IMA ADPCM block decode failed");
        write_pcm(pcm);
    }
}

void inspect(const char* path) {
    std::ifstream file(path, std::ios::binary);
    if (!file) throw std::runtime_error("cannot open VoxN input");
    const std::uint64_t physical = file_size(file);
    const Description d = describe(file, physical);
    std::cout << "{\"status\":\"ok\",\"file_bytes\":" << physical
              << ",\"audio_offset\":" << d.layout.audio_base
              << ",\"audio_bytes\":" << d.layout.audio_bytes
              << ",\"format_tag\":" << d.format.format_tag
              << ",\"channels\":" << d.format.channels
              << ",\"sample_rate_hz\":" << d.format.sample_rate_hz
              << ",\"block_align\":" << d.format.block_align
              << ",\"bits_per_sample\":" << d.format.bits_per_sample
              << ",\"samples_per_block\":" << d.frames_per_block
              << ",\"block_count\":" << d.block_count
              << ",\"pcm_frames\":" << d.block_count * d.frames_per_block
              << ",\"pcm_bytes\":" << d.block_count * d.frames_per_block * d.format.channels * 2
              << "}" << std::endl;
}

} // namespace

int main(int argc, char** argv) {
    try {
        if (argc == 2 && std::string(argv[1]) == "--guards") guards();
        else if (argc == 3 && std::string(argv[1]) == "--inspect") inspect(argv[2]);
        else if (argc == 3 && std::string(argv[1]) == "--decode") decode(argv[2], false, 0);
        else if (argc == 4 && std::string(argv[1]) == "--decode-block")
            decode(argv[2], true, parse_index(argv[3]));
        else throw std::runtime_error(
            "usage: --guards | --inspect FILE | --decode FILE | --decode-block FILE INDEX");
    } catch (const std::exception& error) {
        std::cerr << error.what() << '\n';
        return 1;
    }
    return 0;
}
