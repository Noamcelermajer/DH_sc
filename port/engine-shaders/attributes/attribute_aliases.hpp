#pragma once

#include <array>
#include <cstdint>
#include <string_view>

namespace dh2::shaders::attributes {

inline constexpr std::uint8_t unknown_attribute_code = 0xff;

struct AttributeAlias {
    std::string_view name;
    std::uint8_t code;
};

// Exact ASCII aliases recovered from guessShaderVertexAttribute. Codes 9-16
// have no aliases in the observed initializer.
inline constexpr std::array<AttributeAlias, 45> attribute_aliases{{
    {"pos", 0}, {"position", 0}, {"vertices", 0},
    {"normal", 17}, {"normals", 17},
    {"tangent", 20}, {"tangents", 20}, {"tangent0", 20},
    {"tangent1", 21}, {"tangent2", 22}, {"tangent3", 23},
    {"binormal", 24}, {"binormals", 24}, {"binormal0", 24},
    {"binormal1", 25}, {"binormal2", 26}, {"binormal3", 27},
    {"diffuse", 18}, {"color", 18}, {"color0", 18},
    {"color1", 19}, {"secondarycolor", 19}, {"alternatecolor", 19},
    {"coord", 1}, {"coord0", 1}, {"coord1", 2}, {"coord2", 3},
    {"coord3", 4}, {"coord4", 5}, {"coord5", 6}, {"coord6", 7},
    {"coord7", 8},
    {"texcoord", 1}, {"texcoord0", 1}, {"texcoord1", 2},
    {"texcoord2", 3}, {"texcoord3", 4}, {"texcoord4", 5},
    {"texcoord5", 6}, {"texcoord6", 7}, {"texcoord7", 8},
    {"skinweights", 28}, {"skinweight", 28},
    {"skinindices", 29}, {"skinindex", 29},
}};

[[nodiscard]] constexpr char ascii_lower(char value) noexcept {
    return value >= 'A' && value <= 'Z'
        ? static_cast<char>(value + ('a' - 'A'))
        : value;
}

// The binary lowercases the shader name and, when a dot is present, looks up
// the suffix following the first dot. This bounded port covers ASCII names;
// it does not reconstruct GL reflection records or stream/material maps.
[[nodiscard]] constexpr std::uint8_t find_attribute_code(
    std::string_view shader_name) noexcept {
    const std::size_t dot = shader_name.find('.');
    if (dot != std::string_view::npos) {
        shader_name.remove_prefix(dot + 1);
    }

    for (const AttributeAlias& alias : attribute_aliases) {
        if (shader_name.size() != alias.name.size()) {
            continue;
        }

        bool matches = true;
        for (std::size_t i = 0; i < shader_name.size(); ++i) {
            if (ascii_lower(shader_name[i]) != alias.name[i]) {
                matches = false;
                break;
            }
        }
        if (matches) {
            return alias.code;
        }
    }
    return unknown_attribute_code;
}

} // namespace dh2::shaders::attributes
