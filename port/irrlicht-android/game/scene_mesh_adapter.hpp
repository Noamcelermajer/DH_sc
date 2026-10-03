#pragma once

#include "prince_actor.hpp"
#include "../../android-app/scene_buffers.hpp"
#include "../upstream/include/IMesh.h"
#include "../upstream/include/ITexture.h"
#include "../upstream/include/SMesh.h"
#include "../upstream/include/SMeshBuffer.h"

#include <cstdint>
#include <string>
#include <vector>

namespace dh2::irrlicht_adapter {

using irrlicht_game::PrinceActor;
using irrlicht_game::PrinceMeshPart;

enum class MeshBuildStatus : std::uint32_t {
    ok,
    argument,
    invalid_scene,
    range_error,
    no_visible_draws,
    allocation
};

// The callback chooses a texture using source material/sampler metadata. It
// returns a borrowed Irrlicht texture owned by the caller's video driver.
// Returning null leaves the mesh buffer untextured.
using TextureResolver = irr::video::ITexture* (*)(
    const viewer::SceneDrawDescriptor& draw,
    const viewer::SceneTextureReference* references,
    std::uint32_t reference_count,
    void* user_data);

// Converts an already flattened SceneMesh into one Irrlicht SMeshBuffer per
// visible SceneDrawDescriptor. The returned IMesh has its initial reference;
// the caller must eventually call drop().
//
// SceneMesh positions and UVs are copied without an extra transform. The
// adapter does not own or free the input SceneMesh.
irr::scene::IMesh* build_mesh(
    const viewer::SceneMesh& source,
    MeshBuildStatus* status = nullptr,
    TextureResolver texture_resolver = nullptr,
    void* texture_user_data = nullptr,
    std::uint32_t* output_buffer_count = nullptr);

using PrinceTextureResolver = irr::video::ITexture* (*)(
    const PrinceMeshPart& part, void* user_data);

// Owns one SMesh reference and keeps non-owning pointers to its mutable
// buffers. Adding mesh to a scene node takes a second mesh reference; the
// caller can then let this wrapper go out of scope after the node is destroyed.
struct MutablePrinceMesh {
    irr::scene::SMesh* mesh = nullptr;
    std::vector<irr::scene::SMeshBuffer*> buffers;
    std::uint32_t mapped_textures = 0;
    std::uint32_t unmapped_diffuse_textures = 0;
    std::uint32_t alpha_map_materials = 0;

    MutablePrinceMesh() = default;
    ~MutablePrinceMesh();
    MutablePrinceMesh(MutablePrinceMesh&& other) noexcept;
    MutablePrinceMesh& operator=(MutablePrinceMesh&& other) noexcept;
    MutablePrinceMesh(const MutablePrinceMesh&) = delete;
    MutablePrinceMesh& operator=(const MutablePrinceMesh&) = delete;
};

// Builds one mutable Irrlicht SMeshBuffer for each source Prince primitive.
// Only source diffuse references accepted by the resolver are bound; alpha
// maps and other unsupported source effects remain explicitly unrendered.
bool build_mutable_prince_mesh(
    const PrinceActor& source, MutablePrinceMesh* output, std::string& error,
    PrinceTextureResolver texture_resolver = nullptr,
    void* texture_user_data = nullptr);

// Copies only deformed positions, rebuilds normals/bounds and marks each
// buffer dirty for a dynamic hardware upload. UV/color/index/material streams
// stay immutable. The corresponding scene node must remain at identity.
bool update_mutable_prince_mesh(const PrinceActor& source,
                               MutablePrinceMesh& output,
                               std::string& error);

} // namespace dh2::irrlicht_adapter
