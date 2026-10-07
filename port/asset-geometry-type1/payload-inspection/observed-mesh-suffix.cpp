#include "observed-mesh-suffix.hpp"

#include <cstring>

namespace {
using dh2::assets::Error;
using dh2::asset_geometry_type1::ObservedMeshSuffix;
using dh2::resources::BresView;

constexpr std::uint32_t opaque_prefix_size = 20;
constexpr std::uint32_t suffix_offset = 0x14;
constexpr std::uint32_t primitive_stride = 56;

std::uint32_t word(const std::uint8_t* p) {
    return std::uint32_t(p[0]) | (std::uint32_t(p[1]) << 8)
         | (std::uint32_t(p[2]) << 16) | (std::uint32_t(p[3]) << 24);
}

std::uint16_t half(const std::uint8_t* p) {
    return std::uint16_t(p[0]) | (std::uint16_t(p[1]) << 8);
}

float float_word(const std::uint8_t* p) {
    const auto bits = word(p);
    float value;
    std::memcpy(&value, &bits, sizeof(value));
    return value;
}

bool span(const BresView& image, std::uint64_t offset, std::uint64_t size) {
    return image.bytes && offset <= image.size && size <= image.size - offset;
}

const std::uint8_t* at(const BresView& image, std::uint64_t offset,
                       std::uint64_t size) {
    return span(image, offset, size) ? image.bytes + offset : nullptr;
}

const char* text(const BresView& image, std::uint32_t offset) {
    if (!offset || !span(image, offset, 1)) return nullptr;
    for (std::size_t i = offset; i < image.size; ++i)
        if (!image.bytes[i]) return reinterpret_cast<const char*>(image.bytes + offset);
    return nullptr;
}

bool prefix_matches_observed_corpus(const std::uint8_t* prefix) {
    // Corpus signature only. These bytes are retained, not assigned meanings.
    constexpr std::uint8_t signature[opaque_prefix_size] = {
        0x00, 0x00, 0x00, 0x00, 0x0f, 0x00, 0x00, 0x00,
        0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00
    };
    return prefix && std::memcmp(prefix, signature, sizeof(signature)) == 0;
}

bool observed_descriptor(const BresView& image, const std::uint8_t* stream,
                         std::uint32_t& attributes, std::uint32_t& stride) {
    if (!stream) return false;
    stride = half(stream);
    attributes = word(stream + 4);
    if (stride != 32 || attributes != 3
        || word(stream + 12) != attributes
        || word(stream + 20) != attributes
        || word(stream + 28) != attributes)
        return false;

    const std::uint32_t arrays[] = {
        word(stream + 8), word(stream + 16),
        word(stream + 24), word(stream + 32)
    };
    for (const auto offset : arrays)
        if (!at(image, offset, attributes * 4ULL)) return false;

    constexpr std::uint32_t expected_offsets[] = {0, 12, 24};
    constexpr std::uint32_t expected_types[] = {6, 6, 6};
    constexpr std::uint32_t expected_components[] = {3, 3, 2};
    for (std::uint32_t i = 0; i < attributes; ++i) {
        if (word(image.bytes + arrays[0] + i * 4) != expected_offsets[i]
            || word(image.bytes + arrays[1] + i * 4) != expected_types[i]
            || word(image.bytes + arrays[2] + i * 4) != expected_components[i]
            || word(image.bytes + arrays[3] + i * 4) != 0)
            return false;
    }
    return true;
}
}

dh2::assets::Error dh2_observed_type1_mesh_suffix_open(
    ObservedMeshSuffix* out, const BresView* image,
    std::int32_t geometry_index) {
    if (!out) return Error::argument;
    *out = {};
    if (!image || !image->bytes) return Error::argument;

    const auto* geometry = dh2_bres_library_item(
        image, dh2::resources::Library::geometry, geometry_index);
    if (!geometry) return Error::range;
    if (geometry_index != 0) return Error::range;
    if (word(geometry + 8) != 1) return Error::geometry_type;

    const auto* geometry_id = text(*image, word(geometry));
    if (!geometry_id
        || (std::strcmp(geometry_id, "Circle01-spline") != 0
            && std::strcmp(geometry_id, "Line01-spline") != 0))
        return Error::stream_layout;

    const auto payload_offset = word(geometry + 12);
    const auto* prefix = at(*image, payload_offset, opaque_prefix_size);
    if (!prefix) return Error::range;
    if (!prefix_matches_observed_corpus(prefix)) return Error::stream_layout;

    const auto* smesh = at(*image, std::uint64_t(payload_offset) + suffix_offset, 44);
    if (!smesh) return Error::range;
    if (word(smesh) != 1) return Error::stream_layout;

    const auto vertices = word(smesh + 4);
    if (vertices != 24 && vertices != 52 && vertices != 78)
        return Error::stream_layout;
    const auto stream_offset = word(smesh + 8);
    const auto primitive_count = word(smesh + 12);
    const auto primitive_offset = word(smesh + 16);
    if (primitive_count != 1) return Error::stream_layout;
    const auto* stream = at(*image, stream_offset, 44);
    if (!stream) return Error::range;

    std::uint32_t attributes = 0, stride = 0;
    if (!observed_descriptor(*image, stream, attributes, stride))
        return Error::stream_layout;
    if (!at(*image, primitive_offset,
            std::uint64_t(primitive_count) * primitive_stride))
        return Error::range;

    ObservedMeshSuffix candidate{};
    auto& mesh = candidate.mesh;
    mesh.image = *image;
    mesh.id = text(*image, word(geometry));
    mesh.name = text(*image, word(geometry + 4));
    mesh.vertices = vertices;
    mesh.stride = stride;
    mesh.attributes = attributes;
    mesh.primitives = primitive_count;
    mesh.stream = stream_offset;
    mesh.buffers = primitive_offset;
    for (std::uint32_t i = 0; i < 3; ++i) {
        mesh.minimum[i] = float_word(smesh + 20 + i * 4);
        mesh.maximum[i] = float_word(smesh + 32 + i * 4);
    }
    if (!mesh.id || !mesh.name) return Error::string;

    for (std::uint32_t i = 0; i < mesh.attributes; ++i) {
        dh2::assets::Attribute attribute{};
        const auto error = dh2_mesh_attribute(&mesh, static_cast<std::int32_t>(i), &attribute);
        if (error != Error::ok) return error;
    }
    for (std::uint32_t i = 0; i < mesh.primitives; ++i) {
        dh2::assets::Primitive primitive{};
        const auto error = dh2_mesh_primitive(&mesh, static_cast<std::int32_t>(i), &primitive);
        if (error != Error::ok) return error;
        const auto expected_triangles = vertices == 24 ? 12U : (vertices == 52 ? 48U : 96U);
        constexpr std::int32_t expected_attributes[18] = {
            0, 1, -1, -1, 2, -1, -1, -1, -1,
            -1, -1, -1, -1, -1, -1, -1, -1, -1
        };
        if (primitive.collada_type != 0
            || primitive.declared_count != expected_triangles
            || primitive.index_count != expected_triangles * 3
            || primitive.index_count % 3 != 0
            || std::memcmp(primitive.attributes, expected_attributes,
                           sizeof(expected_attributes)) != 0)
            return Error::primitive;
        for (std::uint32_t k = 0; k < primitive.index_count; ++k) {
            std::uint32_t index = 0;
            if (!dh2_index_read(&primitive, k, &index)) return Error::index;
            if (index >= mesh.vertices || index < primitive.minimum_index
                || index > primitive.maximum_index)
                return Error::index;
        }
    }

    candidate.opaque_prefix = prefix;
    candidate.opaque_prefix_size = opaque_prefix_size;
    *out = candidate;
    return Error::ok;
}
