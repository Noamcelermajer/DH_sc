#include "../alpha_map_policy.hpp"
#include "../../../android-app/swamp_render_policy.hpp"

#include <array>
#include <cstdio>
#include <cstdlib>
#include <cstring>

namespace {
void require(bool condition, const char* message) {
    if (!condition) {
        std::fprintf(stderr, "SWAMP AlphaMap regression failed: %s\n", message);
        std::exit(1);
    }
}

void set_reference(dh2::viewer::SceneTextureReference* reference,
                   const char* parameter, const char* path) {
    reference->image_index = 0;
    std::strncpy(reference->parameter_id, parameter,
                 sizeof(reference->parameter_id) - 1);
    std::strncpy(reference->source_path, path,
                 sizeof(reference->source_path) - 1);
}
}

int main() {
    dh2::viewer::SceneDrawDescriptor draw{};
    std::strcpy(draw.material_id, "Material__11611");
    std::array<dh2::viewer::SceneTextureReference, 3> refs{};
    set_reference(&refs[0], "Diffuse", "q:/data/iphone/3d/textures/env_swamp.tga");
    set_reference(&refs[1], "AlphaMap",
                  "q:/data/iphone/3d/textures/pvr2_env_swamp_alpha.tga");
    set_reference(&refs[2], "Specular",
                  "q:/data/iphone/3d/textures/env_swamp_spec.tga");
    require(dh2::irrlicht_swamp::swamp_draw_uses_alpha_cutout(
                draw, refs.data(), refs.size()),
            "verified source material and paired samplers must enable cutout");
    require(dh2::viewer::swamp_draw_writes_depth(draw.material_id, true),
            "alpha-reference cutout must depth-write its visible texels");
    require(!dh2::viewer::swamp_draw_writes_depth("Material__11598", false),
            "source additive overlay must keep depth writes disabled");
    require(!dh2::irrlicht_swamp::swamp_draw_uses_alpha_cutout(
                draw, refs.data(), 1),
            "Diffuse alone must not enable cutout");

    std::strcpy(draw.material_id, "Material__11610");
    require(!dh2::irrlicht_swamp::swamp_draw_uses_alpha_cutout(
                draw, refs.data(), refs.size()),
            "alpha mapping must remain scoped to Material__11611");
    std::strcpy(draw.material_id, "Material__11611");
    refs[1].image_index = -1;
    require(!dh2::irrlicht_swamp::swamp_draw_uses_alpha_cutout(
                draw, refs.data(), refs.size()),
            "unresolved AlphaMap must not enable cutout");

    std::array<std::uint8_t, 8> diffuse{{10, 20, 30, 255, 40, 50, 60, 255}};
    const std::array<std::uint8_t, 8> mask{{1, 2, 3, 0, 4, 5, 6, 127}};
    require(dh2::irrlicht_swamp::apply_swamp_alpha_map(
                diffuse.data(), mask.data(), 2),
            "valid diffuse/AlphaMap composition rejected");
    require(diffuse == std::array<std::uint8_t, 8>{{10, 20, 30, 0,
                                                   40, 50, 60, 127}},
            "composition must preserve diffuse RGB and copy decoded AlphaMap alpha");
    require(!dh2::irrlicht_swamp::apply_swamp_alpha_map(nullptr, mask.data(), 1) &&
            !dh2::irrlicht_swamp::apply_swamp_alpha_map(diffuse.data(), nullptr, 1),
            "composition must reject missing pixel buffers");

    std::puts("source AlphaMap binding scope and diffuse-alpha composition pass");
    return 0;
}
