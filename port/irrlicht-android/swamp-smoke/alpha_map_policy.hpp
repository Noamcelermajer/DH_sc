#pragma once

#include "../../android-app/scene_buffers.hpp"

#include <cstddef>
#include <cstdint>
#include <cstring>

namespace dh2::irrlicht_swamp {

inline bool source_texture_path_is(const char* source_path,
                                   const char* expected_path) {
    if (!source_path || !expected_path) return false;
    constexpr char prefix[] = "q:/data/iphone/3d/";
    if (std::strncmp(source_path, prefix, sizeof(prefix) - 1) == 0)
        source_path += sizeof(prefix) - 1;
    return std::strcmp(source_path, expected_path) == 0;
}

inline bool is_swamp_diffuse_reference(
    const viewer::SceneTextureReference& reference) {
    return reference.image_index >= 0 &&
        (std::strcmp(reference.parameter_id, "Diffuse") == 0 ||
         std::strcmp(reference.parameter_id, "diffuse-sampler") == 0) &&
        source_texture_path_is(reference.source_path, "textures/env_swamp.tga");
}

inline bool is_swamp_alpha_map_reference(
    const viewer::SceneTextureReference& reference) {
    return reference.image_index >= 0 &&
        std::strcmp(reference.parameter_id, "AlphaMap") == 0 &&
        source_texture_path_is(reference.source_path,
                               "textures/pvr2_env_swamp_alpha.tga");
}

// The source metadata pairs this AlphaMap with env_swamp.tga on
// Material__11611. Keep the projection narrow until additional material
// effects are recovered and validated.
inline bool swamp_draw_uses_alpha_cutout(
    const viewer::SceneDrawDescriptor& draw,
    const viewer::SceneTextureReference* references,
    std::uint32_t reference_count) {
    if (std::strcmp(draw.material_id, "Material__11611") != 0 ||
        !references || !reference_count)
        return false;
    bool diffuse = false;
    bool alpha_map = false;
    for (std::uint32_t i = 0; i < reference_count; ++i) {
        diffuse = diffuse || is_swamp_diffuse_reference(references[i]);
        alpha_map = alpha_map || is_swamp_alpha_map_reference(references[i]);
    }
    return diffuse && alpha_map;
}

// The recovered source AlphaMap is a PVRTC texture whose decoded alpha
// channel carries the cutout. Preserve diffuse RGB and replace only its alpha.
inline bool apply_swamp_alpha_map(std::uint8_t* diffuse_rgba,
                                  const std::uint8_t* alpha_rgba,
                                  std::size_t pixel_count) {
    if (pixel_count && (!diffuse_rgba || !alpha_rgba)) return false;
    for (std::size_t pixel = 0; pixel < pixel_count; ++pixel)
        diffuse_rgba[pixel * 4 + 3] = alpha_rgba[pixel * 4 + 3];
    return true;
}

} // namespace dh2::irrlicht_swamp
