#include "../game/scene_mesh_adapter.hpp"
#include "../game/prince_character_runtime.hpp"
#include "alpha_map_policy.hpp"
#include "control_policy.hpp"
#include "../../android-app/scene_buffers.hpp"
#include "../../android-app/swamp_render_policy.hpp"
#include "../../world-data/world.hpp"
#include "../../world-data/world_scene.hpp"
#include "../../navigation/navigation.hpp"
#include "../../swamp-movement/movement.hpp"
#include "../../engine-resources/resources.hpp"
#include "../../scene-payloads/scene.hpp"
#include "../../texture-assets/texture.hpp"

#include <irrlicht.h>
#include <android/asset_manager.h>
#include <android/asset_manager_jni.h>
#include <android/log.h>
#include <android_native_app_glue.h>

#include <algorithm>
#include <array>
#include <chrono>
#include <cmath>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <string>
#include <vector>

namespace {
constexpr char kTag[] = "DH2IrrlichtSwamp";
constexpr char kBresAsset[] = "dh2/swamp.bdae";
constexpr char kMlxAsset[] = "dh2/swamp.mlx";
constexpr char kSpawnAsset[] = "dh2/swamp-entry-mgp.mgp";
constexpr char kDiffuseAsset[] = "dh2/swamp-diffuse.tga";
constexpr char kAlphaMapAsset[] = "dh2/swamp-alpha.tga";
constexpr char kPrinceModelAsset[] = "dh2/prince-modular.bdae";
constexpr char kPrinceAtlasAsset[] = "dh2/prince-atlas.tga";
constexpr float kMovementSpeed = 30.0f;  // Explicit preview choice, not recovered source speed.
constexpr std::uint32_t kPlayerPathMask = dh2::movement::baseline_object_path_mask;

void log(int priority, const char* message) {
    __android_log_print(priority, kTag, "%s", message ? message : "");
}

bool read_asset(AAssetManager* manager, const char* path,
                std::vector<std::uint8_t>* output) {
    if (!manager || !path || !output) return false;
    AAsset* asset = AAssetManager_open(manager, path, AASSET_MODE_BUFFER);
    if (!asset) return false;
    const auto length = AAsset_getLength64(asset);
    if (length <= 0 || length > 64 * 1024 * 1024) {
        AAsset_close(asset);
        return false;
    }
    output->resize(static_cast<std::size_t>(length));
    std::size_t offset = 0;
    while (offset < output->size()) {
        const auto got = AAsset_read(asset, output->data() + offset,
                                     output->size() - offset);
        if (got <= 0) {
            AAsset_close(asset);
            output->clear();
            return false;
        }
        offset += static_cast<std::size_t>(got);
    }
    AAsset_close(asset);
    return true;
}

bool read_prince_asset(void* context, const char* path,
                       std::vector<std::uint8_t>* output, std::string* error) {
    auto* manager = static_cast<AAssetManager*>(context);
    if (read_asset(manager, path, output)) return true;
    if (error) *error = std::string("Android APK Prince asset is missing: ") +
                         (path ? path : "(null)");
    return false;
}

struct TextureContext {
    irr::video::ITexture* diffuse = nullptr;
    irr::video::ITexture* alpha_cutout_diffuse = nullptr;
    std::uint32_t assigned_draws = 0;
    std::uint32_t alpha_cutout_draws = 0;
};

irr::video::ITexture* resolve_texture(
    const dh2::viewer::SceneDrawDescriptor& draw,
    const dh2::viewer::SceneTextureReference* references,
    std::uint32_t count, void* opaque) {
    auto* context = static_cast<TextureContext*>(opaque);
    if (!context || !references) return nullptr;
    if (dh2::irrlicht_swamp::swamp_draw_uses_alpha_cutout(
            draw, references, count)) {
        if (!context->alpha_cutout_diffuse) return nullptr;
        ++context->assigned_draws;
        ++context->alpha_cutout_draws;
        return context->alpha_cutout_diffuse;
    }
    for (std::uint32_t i = 0; i < count; ++i) {
        const auto& reference = references[i];
        if (dh2::irrlicht_swamp::is_swamp_diffuse_reference(reference) &&
            context->diffuse) {
            ++context->assigned_draws;
            return context->diffuse;
        }
    }
    return nullptr;
}

struct PrinceTextureContext {
    irr::video::ITexture* atlas = nullptr;
};

irr::video::ITexture* resolve_prince_texture(
    const dh2::irrlicht_game::PrinceMeshPart& part, void* opaque) {
    auto* context = static_cast<PrinceTextureContext*>(opaque);
    if (!context || !context->atlas || part.diffuse_texture.empty()) return nullptr;
    const auto* basename = std::strrchr(part.diffuse_texture.c_str(), '/');
    basename = basename ? basename + 1 : part.diffuse_texture.c_str();
    return std::strcmp(basename, "atlas_modular_warrior.tga") == 0
        ? context->atlas : nullptr;
}

bool decode_pvrtc_rgba8(
    const std::vector<std::uint8_t>& bytes, const char* label,
    std::vector<std::uint8_t>* rgba, irr::u32* width_out,
    irr::u32* height_out, dh2::textures::Format* format_out) {
    if (bytes.empty() || !rgba || !width_out || !height_out) return false;
    dh2::textures::TextureView view{};
    const auto opened = dh2_texture_open(&view, bytes.data(), bytes.size());
    if (opened != dh2::textures::Error::ok || !view.width || !view.height ||
        view.width > 4096 || view.height > 4096 ||
        std::uint64_t(view.width) * view.height > 16U * 1024U * 1024U ||
        (view.format != dh2::textures::Format::pvrtc_2bpp &&
         view.format != dh2::textures::Format::pvrtc_4bpp)) {
        __android_log_print(ANDROID_LOG_ERROR, kTag,
            "%s texture rejected: status=%u format=%u size=%ux%u", label,
            static_cast<unsigned>(opened), static_cast<unsigned>(view.format),
            view.width, view.height);
        return false;
    }

    const std::size_t size = std::size_t(view.width) * view.height * 4U;
    rgba->resize(size);
    const auto decoded = dh2_texture_decode_rgba8(
        rgba->data(), rgba->size(), std::size_t(view.width) * 4U,
        bytes.data(), bytes.size());
    if (decoded != dh2::textures::Error::ok) {
        __android_log_print(ANDROID_LOG_ERROR, kTag,
                            "%s PVRTC decode failed: status=%u", label,
                            static_cast<unsigned>(decoded));
        rgba->clear();
        return false;
    }
    *width_out = view.width;
    *height_out = view.height;
    if (format_out) *format_out = view.format;
    return true;
}

irr::video::ITexture* upload_rgba8_texture(
    irr::IrrlichtDevice* device, const char* name, irr::u32 width,
    irr::u32 height, const std::vector<std::uint8_t>& rgba) {
    if (!device || !width || !height ||
        rgba.size() != std::size_t(width) * height * 4U) return nullptr;
    std::vector<std::uint8_t> bgra(rgba.size());
    for (std::size_t i = 0; i < rgba.size(); i += 4) {
        bgra[i] = rgba[i + 2];
        bgra[i + 1] = rgba[i + 1];
        bgra[i + 2] = rgba[i];
        bgra[i + 3] = rgba[i + 3];
    }
    auto* image = device->getVideoDriver()->createImageFromData(
        irr::video::ECF_A8R8G8B8,
        irr::core::dimension2d<irr::u32>(width, height),
        bgra.data(), false);
    if (!image) return nullptr;
    auto* texture = device->getVideoDriver()->addTexture(name, image);
    image->drop();
    return texture;
}

bool decode_swamp_textures(
    irr::IrrlichtDevice* device,
    const std::vector<std::uint8_t>& diffuse_bytes,
    const std::vector<std::uint8_t>& alpha_map_bytes,
    irr::video::ITexture** diffuse_out,
    irr::video::ITexture** alpha_cutout_out) {
    if (diffuse_out) *diffuse_out = nullptr;
    if (alpha_cutout_out) *alpha_cutout_out = nullptr;
    if (!device || !diffuse_out || !alpha_cutout_out) return false;

    std::vector<std::uint8_t> diffuse_rgba, alpha_map_rgba;
    irr::u32 diffuse_width = 0, diffuse_height = 0;
    irr::u32 alpha_width = 0, alpha_height = 0;
    dh2::textures::Format alpha_format = dh2::textures::Format::unknown;
    if (!decode_pvrtc_rgba8(diffuse_bytes, "env_swamp",
                            &diffuse_rgba, &diffuse_width, &diffuse_height,
                            nullptr) ||
        !decode_pvrtc_rgba8(alpha_map_bytes, "pvr2_env_swamp_alpha",
                            &alpha_map_rgba, &alpha_width, &alpha_height,
                            &alpha_format))
        return false;
    if (alpha_format != dh2::textures::Format::pvrtc_2bpp) {
        __android_log_print(ANDROID_LOG_ERROR, kTag,
            "SWAMP AlphaMap is not the expected PVRTC2 format: format=%u",
            static_cast<unsigned>(alpha_format));
        return false;
    }
    if (diffuse_width != alpha_width || diffuse_height != alpha_height) {
        __android_log_print(ANDROID_LOG_ERROR, kTag,
            "SWAMP diffuse/AlphaMap dimensions differ: diffuse=%ux%u AlphaMap=%ux%u",
            diffuse_width, diffuse_height, alpha_width, alpha_height);
        return false;
    }

    *diffuse_out = upload_rgba8_texture(
        device, "dh2-env-swamp", diffuse_width, diffuse_height, diffuse_rgba);
    if (!*diffuse_out) return false;

    if (!dh2::irrlicht_swamp::apply_swamp_alpha_map(
            diffuse_rgba.data(), alpha_map_rgba.data(),
            std::size_t(diffuse_width) * diffuse_height)) {
        log(ANDROID_LOG_ERROR, "SWAMP AlphaMap composition failed");
        return false;
    }
    *alpha_cutout_out = upload_rgba8_texture(
        device, "dh2-env-swamp-alpha-cutout", diffuse_width, diffuse_height,
        diffuse_rgba);
    if (!*alpha_cutout_out) {
        log(ANDROID_LOG_ERROR, "SWAMP alpha-cutout diffuse texture upload failed");
        return false;
    }
    return true;
}

class MovementInput final : public irr::IEventReceiver {
public:
    void set_screen(irr::u32 width, irr::u32 height) {
        width_ = std::max<irr::u32>(1, width);
        height_ = std::max<irr::u32>(1, height);
    }

    void reset() {
        active_id_ = kNoPointer;
        stick_x_ = stick_y_ = 0.0f;
    }

    bool active() const { return active_id_ != kNoPointer; }
    irr::s32 center_x() const { return static_cast<irr::s32>(width_ * 0.18f); }
    irr::s32 center_y() const { return static_cast<irr::s32>(height_ * 0.77f); }
    irr::s32 pad_radius() const {
        return static_cast<irr::s32>(std::max(1.0f,
            std::min(width_ * 0.18f, height_ * 0.24f)));
    }

    bool OnEvent(const irr::SEvent& event) override {
        // Irrlicht forwards Android lifecycle commands to the event receiver
        // before updating its own Focused/Paused flags. Clear held movement
        // here on the exact loss/pause event, then return false so Irrlicht's
        // native handler still updates those flags.
        if (event.EventType == irr::EET_SYSTEM_EVENT &&
            event.SystemEvent.EventType == irr::ESET_ANDROID_CMD) {
            const auto command = event.SystemEvent.AndroidCmd.Cmd;
            if (command == APP_CMD_LOST_FOCUS || command == APP_CMD_PAUSE ||
                command == APP_CMD_TERM_WINDOW) {
                reset();
            }
            return false;
        }
        if (event.EventType != irr::EET_TOUCH_INPUT_EVENT) return false;
        const auto& touch = event.TouchInput;
        if (touch.Event == irr::ETIE_PRESSED_DOWN) {
            // Use a visible fixed lower-left joystick. Touches elsewhere in
            // the module remain available for ordinary device interaction.
            const float dx = touch.X - center_x();
            const float dy = touch.Y - center_y();
            if (active_id_ != kNoPointer ||
                dx * dx + dy * dy > float(pad_radius()) * pad_radius()) return false;
            active_id_ = touch.ID;
            origin_x_ = center_x();
            origin_y_ = center_y();
            update(touch.X, touch.Y);
            return true;
        }
        if (touch.ID != active_id_) return false;
        if (touch.Event == irr::ETIE_LEFT_UP) {
            active_id_ = kNoPointer;
            stick_x_ = stick_y_ = 0.0f;
            return true;
        }
        if (touch.Event == irr::ETIE_MOVED) {
            update(touch.X, touch.Y);
            return true;
        }
        return false;
    }

    float x() const { return stick_x_; }
    float y() const { return stick_y_; }

private:
    static constexpr std::size_t kNoPointer = static_cast<std::size_t>(-1);
    void update(irr::s32 x, irr::s32 y) {
        const auto stick = dh2::irrlicht_swamp::source_stick_from_screen_delta(
            static_cast<float>(x - origin_x_),
            static_cast<float>(y - origin_y_),
            static_cast<float>(pad_radius()));
        stick_x_ = stick.x;
        stick_y_ = stick.y;
    }

    irr::u32 width_ = 1, height_ = 1;
    std::size_t active_id_ = kNoPointer;
    irr::s32 origin_x_ = 0, origin_y_ = 0;
    float stick_x_ = 0.0f, stick_y_ = 0.0f;
};

bool assemble_source_module_zero(
    const std::vector<std::uint8_t>& bres_bytes,
    const std::vector<std::uint8_t>& mlx_bytes,
    const std::vector<std::uint8_t>& spawn_bytes,
    dh2::world::Level* level,
    dh2::resources::BresView* bres,
    dh2::scene::Scene* source_scene,
    dh2::navigation::Navigation* navigation,
    dh2::viewer::SceneMesh* output_mesh,
    irr::IrrlichtDevice* device,
    const std::vector<std::uint8_t>& diffuse_bytes,
    const std::vector<std::uint8_t>& alpha_map_bytes,
    irr::core::vector3df* spawn_out,
    std::uint32_t* source_draws_out,
    std::uint32_t* visible_draws_out,
    std::uint32_t* omitted_draws_out,
    std::uint32_t* additive_draws_out,
    std::uint32_t* additive_one_one_mapped_out,
    std::uint32_t* diffuse_refs_out,
    std::uint32_t* alpha_refs_out,
    std::uint32_t* unresolved_alpha_refs_out,
    std::uint32_t* lightmap_refs_out,
    std::uint32_t* specular_refs_out,
    std::uint32_t* other_refs_out,
    std::uint32_t* no_texture_out,
    std::uint32_t* visible_no_texture_out,
    std::uint32_t* assigned_draws_out,
    std::uint32_t* alpha_cutout_draws_out) {
    dh2::world::Diagnostic world_diag{};
    if (dh2_world_import_level(level, "SWAMP", "data/scene/001_swamp.mlx",
            mlx_bytes.data(), mlx_bytes.size(), &world_diag) != dh2::world::Error::ok) {
        __android_log_print(ANDROID_LOG_ERROR, kTag, "MLX import: %s", world_diag.message);
        return false;
    }
    if (!level->module_count || std::strcmp(level->modules[0].cache_dae,
            "data/3d/modules/swamp/swamp.bdae") != 0 ||
        dh2_world_import_module_objects(level, 0, dh2::world::RecordKind::mgp,
            level->modules[0].cache_mgp, spawn_bytes.data(), spawn_bytes.size(),
            &world_diag) != dh2::world::Error::ok) {
        __android_log_print(ANDROID_LOG_ERROR, kTag, "module-zero MGP import: %s",
            world_diag.message[0] ? world_diag.message : "unexpected SWAMP catalogue path");
        return false;
    }

    const dh2::world::Object* entry = nullptr;
    for (std::uint32_t i = 0; i < level->entity_count; ++i) {
        const auto& object = level->entities[i];
        const char* id = dh2_world_field(&object, "entrypointID");
        if (object.module_index == 0 && object.kind == dh2::world::RecordKind::mgp &&
            object.gametype && std::strcmp(object.gametype, "SpawnPoint") == 0 &&
            id && std::strcmp(id, "0") == 0) {
            if (entry) {
                log(ANDROID_LOG_ERROR, "Multiple module-zero entrypointID 0 SpawnPoints");
                return false;
            }
            entry = &object;
        }
    }
    if (!entry) {
        log(ANDROID_LOG_ERROR, "Module-zero entrypointID 0 SpawnPoint is missing");
        return false;
    }

    if (dh2_bres_open(bres, bres_bytes.data(), bres_bytes.size()) !=
            dh2::resources::BresError::ok ||
        dh2_scene_open(source_scene, bres) != dh2::scene::Error::ok) {
        log(ANDROID_LOG_ERROR, "SWAMP BRES/scene import failed");
        return false;
    }
    dh2::navigation::Diagnostic nav_diag{};
    if (dh2_nav_build_swamp(navigation, level, source_scene, &nav_diag) !=
            dh2::navigation::Error::ok) {
        __android_log_print(ANDROID_LOG_ERROR, kTag, "SWAMP navigation: %s", nav_diag.message);
        return false;
    }

    dh2::world::ModuleBinding binding{};
    if (dh2_world_bind_module(&binding, &level->modules[0], source_scene,
                              &world_diag) != dh2::world::Error::ok) {
        __android_log_print(ANDROID_LOG_ERROR, kTag, "module-zero root binding: %s",
                            world_diag.message);
        return false;
    }
    std::vector<std::uint32_t> records(65536);
    std::uint32_t record_count = 0;
    if (dh2_world_module_records(records.data(), records.size(), &record_count,
            &binding, source_scene, &world_diag) != dh2::world::Error::ok) {
        __android_log_print(ANDROID_LOG_ERROR, kTag, "module-zero subtree: %s",
                            world_diag.message);
        return false;
    }
    dh2::math::Matrix4f correction{};
    if (dh2_world_placement_matrix(&correction, &binding, &world_diag) !=
            dh2::world::Error::ok ||
        dh2_world_scene_mesh_nodes(output_mesh, bres, records.data(), record_count,
                                   &correction) != dh2::viewer::SceneMeshError::ok) {
        __android_log_print(ANDROID_LOG_ERROR, kTag, "module-zero SceneMesh: %s",
                            world_diag.message);
        return false;
    }

    irr::video::ITexture* diffuse = nullptr;
    irr::video::ITexture* alpha_cutout_diffuse = nullptr;
    if (!decode_swamp_textures(device, diffuse_bytes, alpha_map_bytes,
                               &diffuse, &alpha_cutout_diffuse)) {
        log(ANDROID_LOG_ERROR, "Could not decode/compose SWAMP diffuse and AlphaMap textures");
        return false;
    }
    TextureContext texture_context{diffuse, alpha_cutout_diffuse};
    std::vector<dh2::viewer::SceneDrawDescriptor> renderer_draws(
        output_mesh->draws, output_mesh->draws + output_mesh->draw_commands);
    std::uint32_t visible = 0, omitted = 0, additive_draws = 0;
    std::uint32_t additive_one_one_mapped = 0;
    std::uint32_t diffuse_refs = 0, alpha_refs = 0, unresolved_alpha_refs = 0;
    std::uint32_t lightmap_refs = 0;
    std::uint32_t specular_refs = 0, other_refs = 0;
    std::uint32_t no_texture = 0, visible_no_texture = 0;
    for (auto& draw : renderer_draws) {
        for (std::uint32_t i = 0; i < draw.texture_count; ++i) {
            const auto& ref = output_mesh->texture_references[draw.first_texture + i];
            if (dh2::irrlicht_swamp::is_swamp_diffuse_reference(ref)) ++diffuse_refs;
            else if (std::strcmp(ref.parameter_id, "AlphaMap") == 0) {
                if (dh2::irrlicht_swamp::is_swamp_alpha_map_reference(ref)) ++alpha_refs;
                else ++unresolved_alpha_refs;
            }
            else if (std::strcmp(ref.parameter_id, "LightMap") == 0) ++lightmap_refs;
            else if (std::strcmp(ref.parameter_id, "Specular") == 0) ++specular_refs;
            else ++other_refs;
        }
        no_texture += draw.texture_count == 0 ? 1U : 0U;
        additive_draws += dh2::viewer::swamp_material_uses_additive_one_one(
            draw.material_id) ? 1U : 0U;
        const bool omitted_unresolved = dh2::viewer::omit_unresolved_swamp_draw(
            draw.node_id, draw.material_id);
        if (draw.visible && omitted_unresolved) {
            draw.visible = 0;
            ++omitted;
        }
        visible += draw.visible ? 1U : 0U;
        visible_no_texture += draw.visible && draw.texture_count == 0 ? 1U : 0U;
    }
    auto renderer_mesh = *output_mesh;
    renderer_mesh.draws = renderer_draws.data();
    dh2::irrlicht_adapter::MeshBuildStatus adapter_status{};
    std::uint32_t buffer_count = 0;
    auto* mesh = dh2::irrlicht_adapter::build_mesh(
        renderer_mesh, &adapter_status, resolve_texture, &texture_context, &buffer_count);
    if (!mesh || adapter_status != dh2::irrlicht_adapter::MeshBuildStatus::ok ||
        buffer_count != visible || !visible) {
        __android_log_print(ANDROID_LOG_ERROR, kTag,
            "Irrlicht SceneMesh adapter failed status=%u buffers=%u visible=%u",
            static_cast<unsigned>(adapter_status), buffer_count, visible);
        if (mesh) mesh->drop();
        if (diffuse) diffuse->drop();
        return false;
    }

    for (irr::u32 i = 0; i < mesh->getMeshBufferCount(); ++i) {
        auto* buffer = mesh->getMeshBuffer(i);
        if (!buffer) {
            mesh->drop();
            if (diffuse) diffuse->drop();
            log(ANDROID_LOG_ERROR, "Irrlicht adapter returned a null SWAMP mesh buffer");
            return false;
        }
        auto& material = buffer->getMaterial();
        material.setFlag(irr::video::EMF_LIGHTING, false);
        material.setFlag(irr::video::EMF_BACK_FACE_CULLING, false);
        material.DiffuseColor = irr::video::SColor(255, 255, 255, 255);
        material.AmbientColor = irr::video::SColor(255, 255, 255, 255);
    }
    // Source Material__11598 uses GL_ONE/GL_ONE with GL_FUNC_ADD, depth test
    // LEQUAL, and depth writes disabled. Irrlicht's GLES2 EMT_TRANSPARENT_ADD_COLOR
    // uses ONE/ONE_MINUS_SRC_COLOR, so use ONETEXTURE_BLEND with explicit
    // separate factors and the source ADD equation for these two buffers only.
    irr::u32 material_index = 0;
    for (const auto& draw : renderer_draws) {
        if (!draw.visible) continue;
        auto* buffer = mesh->getMeshBuffer(material_index++);
        if (!buffer) continue;
        const bool alpha_cutout = draw.texture_count &&
            dh2::irrlicht_swamp::swamp_draw_uses_alpha_cutout(
                draw, output_mesh->texture_references + draw.first_texture,
                draw.texture_count);
        auto& material = buffer->getMaterial();
        if (dh2::viewer::swamp_material_uses_additive_one_one(draw.material_id)) {
            material.MaterialType = irr::video::EMT_ONETEXTURE_BLEND;
            material.MaterialTypeParam = irr::video::pack_textureBlendFuncSeparate(
                irr::video::EBF_ONE, irr::video::EBF_ONE,
                irr::video::EBF_ONE, irr::video::EBF_ONE,
                irr::video::EMFN_MODULATE_1X, irr::video::EAS_NONE);
            material.BlendOperation = irr::video::EBO_ADD;
            material.ZBuffer = irr::video::ECFN_LESSEQUAL;
            material.ZWriteEnable = irr::video::EZW_OFF;
            ++additive_one_one_mapped;
        } else {
            material.setFlag(irr::video::EMF_ZWRITE_ENABLE,
                dh2::viewer::swamp_draw_writes_depth(draw.material_id, alpha_cutout));
            if (alpha_cutout) {
                material.MaterialType =
                    irr::video::EMT_TRANSPARENT_ALPHA_CHANNEL_REF;
            }
        }
    }
    if (material_index != mesh->getMeshBufferCount() || additive_draws != 2 ||
        additive_one_one_mapped != additive_draws) {
        __android_log_print(ANDROID_LOG_ERROR, kTag,
            "SWAMP additive material mapping mismatch: source=%u mapped=%u buffers=%u configured=%u",
            additive_draws, additive_one_one_mapped, mesh->getMeshBufferCount(),
            material_index);
        mesh->drop();
        if (diffuse) diffuse->drop();
        return false;
    }

    auto* node = device->getSceneManager()->addMeshSceneNode(mesh);
    mesh->drop();
    if (!node) {
        if (diffuse) diffuse->drop();
        log(ANDROID_LOG_ERROR, "Irrlicht could not add the assembled SWAMP module");
        return false;
    }
    node->setAutomaticCulling(irr::scene::EAC_OFF);
    // Keep the texture registered with IVideoDriver for the entire lifetime
    // of the scene materials. SMaterial stores a non-owning pointer; dropping
    // the addTexture result here unregisters it and Irrlicht reports
    // "Tried to set a texture not owned by this driver" during every draw.

    bool floor_found = false;
    dh2::navigation::FloorHit floor{};
    const auto floor_error = dh2_nav_query_actor_floor(navigation,
        entry->world_position[0], entry->world_position[1], entry->world_position[2],
        dh2::movement::native_floor_vertical_tolerance,
        dh2::movement::edge_tolerance, kPlayerPathMask, &floor, &floor_found);
    if (floor_error != dh2::navigation::Error::ok || !floor_found ||
        floor.vertical_distance >= dh2::movement::native_floor_vertical_tolerance) {
        log(ANDROID_LOG_ERROR, "Entry point is not on a path-eligible module-zero floor");
        return false;
    }
    dh2::navigation::Surface surface{};
    if (dh2_nav_surface(navigation, floor.surface_index, &surface) !=
            dh2::navigation::Error::ok || surface.module_index != 0) {
        log(ANDROID_LOG_ERROR, "Entry point floor did not resolve to SWAMP module zero");
        return false;
    }
    spawn_out->set(entry->world_position[0], entry->world_position[1], floor.height);

    *source_draws_out = output_mesh->draw_commands;
    *visible_draws_out = visible;
    *omitted_draws_out = omitted;
    *additive_draws_out = additive_draws;
    *additive_one_one_mapped_out = additive_one_one_mapped;
    *diffuse_refs_out = diffuse_refs;
    *alpha_refs_out = alpha_refs;
    *unresolved_alpha_refs_out = unresolved_alpha_refs;
    *lightmap_refs_out = lightmap_refs;
    *specular_refs_out = specular_refs;
    *other_refs_out = other_refs;
    *no_texture_out = no_texture;
    *visible_no_texture_out = visible_no_texture;
    *assigned_draws_out = texture_context.assigned_draws;
    *alpha_cutout_draws_out = texture_context.alpha_cutout_draws;
    __android_log_print(ANDROID_LOG_INFO, kTag,
        "SWAMP module 0 assembled in Irrlicht r6038: subtree_records=%u source_draws=%u visible_diagnostic_draws=%u omitted_unresolved=%u additive_Material__11598=%u additive_one_one_mapped=%u vertices=%u indices=%u path_mask=0x%X start=(%.3f,%.3f,%.3f) diffuse_refs=%u diffuse_draws=%u AlphaMap_refs=%u AlphaMap_unresolved_refs=%u AlphaMap_cutout_draws=%u LightMap_refs=%u Specular_refs=%u other_refs=%u no_texture_source_draws=%u visible_no_texture_draws=%u",
        record_count, *source_draws_out, *visible_draws_out, *omitted_draws_out,
        *additive_draws_out, *additive_one_one_mapped_out,
        output_mesh->vertex_count, output_mesh->index_count,
        kPlayerPathMask, spawn_out->X, spawn_out->Y, spawn_out->Z,
        *diffuse_refs_out, *assigned_draws_out, *alpha_refs_out,
        *unresolved_alpha_refs_out, *alpha_cutout_draws_out,
        *lightmap_refs_out, *specular_refs_out, *other_refs_out,
        *no_texture_out, *visible_no_texture_out);
    return true;
}

irr::core::stringw utf8_wide(const char* text) {
    irr::core::stringw result;
    for (const auto codepoint : dh2::irrlicht_swamp::utf8_codepoints(text))
        result += static_cast<wchar_t>(codepoint);
    return result;
}

void set_follow_camera(irr::scene::ICameraSceneNode* camera,
                       const irr::core::vector3df& player) {
    if (!camera) return;
    // Frame the measured source Prince bounds (Idle height 342.65, Walk
    // height 328.17) around their first-Idle placement center, rather than the
    // earlier 20-unit marker. This is camera framing only; no mesh rescale.
    camera->setTarget(player + irr::core::vector3df(0.0f, 0.0f, 170.0f));
    camera->setPosition(player + irr::core::vector3df(-480.0f, -640.0f, 410.0f));
    camera->setUpVector(irr::core::vector3df(0.0f, 0.0f, 1.0f));
}

void draw_touch_pad(irr::video::IVideoDriver* driver,
                    const MovementInput& input) {
    if (!driver) return;
    const irr::s32 cx = input.center_x(), cy = input.center_y();
    const irr::s32 radius = input.pad_radius();
    const irr::video::SColor outline(210, 193, 214, 228);
    const irr::video::SColor crosshair(150, 151, 178, 195);
    const irr::video::SColor knob(235, 88, 218, 174);
    constexpr irr::s32 segments = 40;
    for (irr::s32 i = 0; i < segments; ++i) {
        const float a = 6.28318530718f * i / segments;
        const float b = 6.28318530718f * (i + 1) / segments;
        driver->draw2DLine(
            irr::core::position2d<irr::s32>(cx + static_cast<irr::s32>(std::cos(a) * radius),
                                            cy + static_cast<irr::s32>(std::sin(a) * radius)),
            irr::core::position2d<irr::s32>(cx + static_cast<irr::s32>(std::cos(b) * radius),
                                            cy + static_cast<irr::s32>(std::sin(b) * radius)),
            outline);
    }
    driver->draw2DLine({cx - radius / 2, cy}, {cx + radius / 2, cy}, crosshair);
    driver->draw2DLine({cx, cy - radius / 2}, {cx, cy + radius / 2}, crosshair);
    const irr::s32 knob_x = cx + static_cast<irr::s32>(input.x() * radius);
    const irr::s32 knob_y = cy - static_cast<irr::s32>(input.y() * radius);
    const irr::s32 knob_radius = std::max<irr::s32>(8, radius / 4);
    for (irr::s32 i = 0; i < segments; ++i) {
        const float a = 6.28318530718f * i / segments;
        const float b = 6.28318530718f * (i + 1) / segments;
        driver->draw2DLine(
            irr::core::position2d<irr::s32>(knob_x + static_cast<irr::s32>(std::cos(a) * knob_radius),
                                            knob_y + static_cast<irr::s32>(std::sin(a) * knob_radius)),
            irr::core::position2d<irr::s32>(knob_x + static_cast<irr::s32>(std::cos(b) * knob_radius),
                                            knob_y + static_cast<irr::s32>(std::sin(b) * knob_radius)),
            knob);
    }
}
}

void android_main(android_app* app) {
    if (!app || !app->activity) return;
    MovementInput input;
    irr::SIrrlichtCreationParameters params;
    params.DriverType = irr::video::EDT_OGLES2;
    params.WindowSize = irr::core::dimension2d<irr::u32>(0, 0);
    params.PrivateData = app;
    params.EventReceiver = &input;
    params.Bits = 24;
    params.ZBufferBits = 16;
    params.AntiAlias = 0;
    params.LoggingLevel = irr::ELL_WARNING;
    auto* device = irr::createDeviceEx(params);
    if (!device) {
        log(ANDROID_LOG_ERROR, "createDeviceEx failed; no Irrlicht render device");
        return;
    }

    const auto screen = device->getVideoDriver()->getScreenSize();
    input.set_screen(screen.Width, screen.Height);
    std::vector<std::uint8_t> bres_bytes, mlx_bytes, spawn_bytes, diffuse_bytes,
        alpha_map_bytes, prince_model_bytes, prince_atlas_bytes;
    if (!read_asset(app->activity->assetManager, kBresAsset, &bres_bytes) ||
        !read_asset(app->activity->assetManager, kMlxAsset, &mlx_bytes) ||
        !read_asset(app->activity->assetManager, kSpawnAsset, &spawn_bytes) ||
        !read_asset(app->activity->assetManager, kDiffuseAsset, &diffuse_bytes) ||
        !read_asset(app->activity->assetManager, kAlphaMapAsset, &alpha_map_bytes) ||
        !read_asset(app->activity->assetManager, kPrinceModelAsset, &prince_model_bytes) ||
        !read_asset(app->activity->assetManager, kPrinceAtlasAsset, &prince_atlas_bytes)) {
        log(ANDROID_LOG_ERROR, "Could not read the local SWAMP/Prince cache assets packaged in this APK");
        device->drop();
        return;
    }

    dh2::irrlicht_game::PrinceActor prince;
    std::string prince_error;
    if (!prince.load(prince_model_bytes.data(), prince_model_bytes.size(), prince_error)) {
        __android_log_print(ANDROID_LOG_ERROR, kTag,
            "Source Prince rig import failed: %s", prince_error.c_str());
        device->drop();
        return;
    }
    std::vector<std::uint8_t> prince_atlas_rgba;
    irr::u32 prince_atlas_width = 0, prince_atlas_height = 0;
    if (!decode_pvrtc_rgba8(prince_atlas_bytes, "atlas_modular_warrior",
                            &prince_atlas_rgba, &prince_atlas_width,
                            &prince_atlas_height, nullptr)) {
        log(ANDROID_LOG_ERROR, "Source Prince diffuse atlas is not a supported PVRTC asset");
        device->drop();
        return;
    }
    auto* prince_atlas = upload_rgba8_texture(
        device, "dh2-prince-warrior-atlas", prince_atlas_width,
        prince_atlas_height, prince_atlas_rgba);
    if (!prince_atlas) {
        log(ANDROID_LOG_ERROR, "Source Prince diffuse atlas upload failed");
        device->drop();
        return;
    }

    dh2::world::Level level{};
    dh2::resources::BresView bres{};
    dh2::scene::Scene source_scene{};
    dh2::navigation::Navigation navigation{};
    dh2::viewer::SceneMesh source_mesh{};
    irr::core::vector3df player_position{};
    std::uint32_t source_draws = 0, visible_draws = 0, omitted_draws = 0;
    std::uint32_t additive_draws = 0, diffuse_refs = 0, alpha_refs = 0;
    std::uint32_t additive_one_one_mapped = 0;
    std::uint32_t unresolved_alpha_refs = 0;
    std::uint32_t lightmap_refs = 0, specular_refs = 0, other_refs = 0;
    std::uint32_t no_texture_draws = 0, visible_no_texture_draws = 0;
    std::uint32_t textured_draws = 0, alpha_cutout_draws = 0;
    const bool assembled = assemble_source_module_zero(
        bres_bytes, mlx_bytes, spawn_bytes, &level, &bres, &source_scene,
        &navigation, &source_mesh, device, diffuse_bytes, alpha_map_bytes,
        &player_position,
        &source_draws, &visible_draws, &omitted_draws, &additive_draws,
        &additive_one_one_mapped,
        &diffuse_refs, &alpha_refs, &unresolved_alpha_refs,
        &lightmap_refs, &specular_refs, &other_refs,
        &no_texture_draws, &visible_no_texture_draws, &textured_draws,
        &alpha_cutout_draws);
    if (!assembled) {
        dh2_viewer_scene_mesh_free(&source_mesh);
        dh2_nav_free(&navigation);
        dh2_world_free(&level);
        device->drop();
        return;
    }

    dh2::irrlicht_game::PrinceCharacterRuntime prince_character;
    if (!prince_character.load(prince, read_prince_asset,
                               app->activity->assetManager, prince_error)) {
        __android_log_print(ANDROID_LOG_ERROR, kTag,
            "Source Prince Character/bank initialization failed: %s",
            prince_error.c_str());
        dh2_viewer_scene_mesh_free(&source_mesh);
        dh2_nav_free(&navigation);
        dh2_world_free(&level);
        device->drop();
        return;
    }

    using Clock = std::chrono::steady_clock;
    std::uint32_t actor_clock_ms = 1;
    const std::array<float, 3> initial_owner{
        player_position.X, player_position.Y, player_position.Z};
    if (!prince_character.scene_phase(actor_clock_ms, prince_error) ||
        !prince_character.animator_phase(prince_error) ||
        !prince_character.update_pose(initial_owner.data(), prince_error)) {
        __android_log_print(ANDROID_LOG_ERROR, kTag,
            "Initial source Prince Character pose failed: %s", prince_error.c_str());
        dh2_viewer_scene_mesh_free(&source_mesh);
        dh2_nav_free(&navigation);
        dh2_world_free(&level);
        device->drop();
        return;
    }

    auto* scene_manager = device->getSceneManager();
    PrinceTextureContext prince_texture_context{prince_atlas};
    dh2::irrlicht_adapter::MutablePrinceMesh prince_mesh;
    if (!dh2::irrlicht_adapter::build_mutable_prince_mesh(
            prince, &prince_mesh, prince_error, resolve_prince_texture,
            &prince_texture_context)) {
        __android_log_print(ANDROID_LOG_ERROR, kTag,
            "Source Prince Irrlicht mesh build failed: %s", prince_error.c_str());
        dh2_viewer_scene_mesh_free(&source_mesh);
        dh2_nav_free(&navigation);
        dh2_world_free(&level);
        device->drop();
        return;
    }
    auto* player = scene_manager->addMeshSceneNode(prince_mesh.mesh);
    if (!player) {
        log(ANDROID_LOG_ERROR, "Irrlicht could not create the source Prince scene node");
        dh2_viewer_scene_mesh_free(&source_mesh);
        dh2_nav_free(&navigation);
        dh2_world_free(&level);
        device->drop();
        return;
    }
    // Source SceneBinding produces owner * helper * authored graph world
    // transforms in the CPU-skinned vertices. Keep Irrlicht at identity so the
    // spawn owner is not applied a second time.
    player->setPosition(irr::core::vector3df(0, 0, 0));
    player->setRotation(irr::core::vector3df(0, 0, 0));
    player->setScale(irr::core::vector3df(1, 1, 1));
    player->setAutomaticCulling(irr::scene::EAC_OFF);
    __android_log_print(ANDROID_LOG_INFO, kTag,
        "PRINCE: controllers=%u joints=%u vertices=%u triangles=%u parts=%u atlas mapped=%u unmapped diffuse=%u ignored AlphaMaps=%u; source_visual_binding=owner_helper_graph; Character=shared_source_coordinator; authored_bank_resources=%u registration_occurrences=%u state=%d sequence=%d clip=%d; SWAMP owner position development producer; Irrlicht node identity",
        prince.controller_count(), prince.joint_count(), prince.vertex_count(),
        prince.triangle_count(), static_cast<unsigned>(prince.parts().size()),
        prince_mesh.mapped_textures, prince_mesh.unmapped_diffuse_textures,
        prince_mesh.alpha_map_materials,
        prince_character.registered_resource_count(),
        prince_character.registration_occurrence_count(),
        prince_character.state_id(), prince_character.sequence_id(),
        prince_character.clip_id());
    auto* camera = scene_manager->addCameraSceneNode();
    if (camera) {
        camera->setNearValue(1.0f);
        camera->setFarValue(12000.0f);
        set_follow_camera(camera, player_position);
        scene_manager->setActiveCamera(camera);
    }

    auto* gui = device->getGUIEnvironment();
    gui->addStaticText(L"SWAMP module zero · source movement · Irrlicht OGL-ES r6038",
        irr::core::rect<irr::s32>(14, 10, 900, 46), false, false);
    auto* diagnostics = gui->addStaticText(L"Loading source diagnostics…",
        irr::core::rect<irr::s32>(14, 50, 1150, 170), false, false);
    if (diagnostics) diagnostics->setOverrideColor(irr::video::SColor(255, 233, 240, 246));
    auto* hint = gui->addStaticText(
        L"Touch and drag the lower-left pad to move on source X/Y; release to stop.",
        irr::core::rect<irr::s32>(14, static_cast<irr::s32>(screen.Height) - 54,
                                  1000, static_cast<irr::s32>(screen.Height) - 18),
        false, false);
    if (hint) hint->setOverrideColor(irr::video::SColor(255, 230, 236, 241));

    char initial_status[1536]{};
    std::snprintf(initial_status, sizeof(initial_status),
        "SOURCE XYZ  X %.2f  Y %.2f  Z %.2f  | player path mask 0x%X\n"
        "Shown draws %u/%u; omitted unresolved bridge-root draws %u; Material__11598 additive passes %u; exact GL_ONE/GL_ONE + GL_FUNC_ADD mapped %u.\n"
        "Samplers: Diffuse refs %u (%u draws mapped); AlphaMap %u refs (%u Material__11611 cutouts), %u unresolved; LightMap %u, Specular %u, other %u ignored. No-texture draws %u (%u visible default-material fallbacks).\n"
        "Prince: %u warrior skins, %u joints, %u vertices; authored bank %u resources/%u registrations; state %d, sequence %d, clip %d.\n"
        "Limits: external Collada effects/native lighting, AI/gameplay services, actor physics, walls and swept collision.",
        player_position.X, player_position.Y, player_position.Z, kPlayerPathMask,
        visible_draws, source_draws, omitted_draws, additive_draws,
        additive_one_one_mapped,
        diffuse_refs, textured_draws, alpha_refs, alpha_cutout_draws,
        unresolved_alpha_refs,
        lightmap_refs, specular_refs, other_refs, no_texture_draws,
        visible_no_texture_draws, prince.controller_count(), prince.joint_count(),
        prince.vertex_count(), prince_character.registered_resource_count(),
        prince_character.registration_occurrence_count(),
        prince_character.state_id(), prince_character.sequence_id(),
        prince_character.clip_id());
    if (diagnostics) diagnostics->setText(utf8_wide(initial_status).c_str());
    __android_log_print(ANDROID_LOG_INFO, kTag,
        "ENGINE: Irrlicht is confirmed as the game engine family; this diagnostic embeds official upstream OGL-ES r6038. The exact customized DH2 Irrlicht fork/revision and game-specific layer remain under investigation. SWAMP owner movement is a development producer: 20 ms fixed-step, speed %.1f units/s, endpoint path-mask checks. Prince uses the shared source Character coordinator and full authored bank playback; source physics, AI and combat services remain unsupported.",
        kMovementSpeed);
    __android_log_print(ANDROID_LOG_INFO, kTag,
        "RENDER-LIMITS: omitted unresolved bridge-root draws=%u; Material__11598 additive passes=%u exact GL_ONE/GL_ONE + GL_FUNC_ADD mapped=%u with source LEQUAL/depth-write-off; SWAMP diffuse draws=%u; AlphaMap cutout refs=%u/draws=%u with %u unresolved AlphaMap refs; ignored LightMap=%u Specular=%u other=%u; visible no-texture defaults=%u. Prince: four source warrior skins, atlas mapped parts=%u, unmapped diffuse=%u, ignored source AlphaMap parts=%u; exact remaining source shader/effects not reconstructed.",
        omitted_draws, additive_draws, additive_one_one_mapped,
        textured_draws, alpha_refs, alpha_cutout_draws,
        unresolved_alpha_refs,
        lightmap_refs, specular_refs, other_refs, visible_no_texture_draws,
        prince_mesh.mapped_textures, prince_mesh.unmapped_diffuse_textures,
        prince_mesh.alpha_map_materials);

    irr::video::IVideoDriver* driver = device->getVideoDriver();
    using Clock = std::chrono::steady_clock;
    auto previous = Clock::now();
    bool character_failure_logged = false;
    bool pose_changed = false;
    bool character_runtime_ok = true;
    bool first_source_character_frame_reported = false;
    auto last_movement_status = dh2::movement::Error::ok;
    dh2::irrlicht_swamp::FixedStepAccumulator fixed_steps;
    auto last_report = previous;
    auto last_movement_log = previous - std::chrono::seconds(1);
    const char* last_logged_mode = "";
    while (device->run()) {
        if (!device->isWindowActive()) {
            // Defensive fallback for lifecycle paths that do not deliver a
            // command event to the receiver before the window becomes idle.
            input.reset();
            previous = Clock::now();
            fixed_steps.reset();
            device->yield();
            continue;
        }
        const auto now = Clock::now();
        auto elapsed = std::chrono::duration_cast<std::chrono::nanoseconds>(now - previous);
        previous = now;
        const auto steps = fixed_steps.advance(static_cast<std::uint64_t>(elapsed.count()));
        auto movement_status = last_movement_status;
        dh2::movement::Output movement_output{};
        pose_changed = false;
        for (std::uint32_t step = 0; step < steps; ++step) {
            actor_clock_ms += 20;
            if (!prince_character.scene_phase(actor_clock_ms, prince_error)) {
                character_runtime_ok = false;
            }
            if (!character_runtime_ok) {
                if (!character_failure_logged) {
                    __android_log_print(ANDROID_LOG_ERROR, kTag,
                        "Source Character scene phase stopped: %s", prince_error.c_str());
                    character_failure_logged = true;
                }
                break;
            }
            const dh2::movement::Input movement_input{{
                player_position.X, player_position.Y, player_position.Z},
                0.0f, input.x(), input.y(), 0.02f};
            movement_status = dh2_swamp_movement_step(
                &navigation, &movement_input, kMovementSpeed, &movement_output);
            last_movement_status = movement_status;
            if (movement_status == dh2::movement::Error::ok &&
                movement_output.floor_sample_valid) {
                player_position.set(movement_output.position[0],
                                    movement_output.position[1],
                                    movement_output.position[2]);
            }
            const bool accepted = movement_status == dh2::movement::Error::ok &&
                                  movement_output.floor_sample_valid;
            if (!prince_character.update_timers(20, prince_error) ||
                !prince_character.set_input(input.x(), input.y(), accepted,
                                            prince_error) ||
                !prince_character.request_move(prince_error) ||
                !prince_character.update_state(20, prince_error) ||
                !prince_character.animator_phase(prince_error)) {
                character_runtime_ok = false;
                if (!character_failure_logged) {
                    __android_log_print(ANDROID_LOG_ERROR, kTag,
                        "Source Character fixed-step update stopped: %s",
                        prince_error.c_str());
                    character_failure_logged = true;
                }
                break;
            }
            const float owner_position[3]{player_position.X, player_position.Y,
                                          player_position.Z};
            if (!prince_character.update_pose(owner_position, prince_error)) {
                character_runtime_ok = false;
                if (!character_failure_logged) {
                    __android_log_print(ANDROID_LOG_ERROR, kTag,
                        "Source Character pose update stopped: %s",
                        prince_error.c_str());
                    character_failure_logged = true;
                }
                break;
            }
            pose_changed = true;
        }
        if (pose_changed &&
            !dh2::irrlicht_adapter::update_mutable_prince_mesh(
                prince, prince_mesh, prince_error)) {
            character_runtime_ok = false;
            if (!character_failure_logged) {
                __android_log_print(ANDROID_LOG_ERROR, kTag,
                    "Source Character Irrlicht vertex update stopped: %s",
                    prince_error.c_str());
                character_failure_logged = true;
            }
        }
        set_follow_camera(camera, player_position);

        if (diagnostics && now - last_report >= std::chrono::milliseconds(100)) {
            char status[1280]{};
            const char* mode = "IDLE";
            if (movement_status == dh2::movement::Error::no_module_zero_floor)
                mode = "BLOCKED · no path-eligible module-zero floor · position held";
            else if (movement_status != dh2::movement::Error::ok)
                mode = "INPUT REJECTED · position held";
            else if (std::fabs(input.x()) > 0.01f || std::fabs(input.y()) > 0.01f)
                mode = "MOVE";
            std::snprintf(status, sizeof(status),
                "%s  |  SOURCE XYZ  X %.2f  Y %.2f  Z %.2f  | player mask 0x%X\n"
                "Prince source Character state %d; sequence %d (%s), clip %d; four warrior skins (%u joints, %u vertices); atlas parts %u; ignored Prince AlphaMaps %u.\n"
                "Floor: current + candidate endpoint, module zero; water mask 2 eligible; no actor-radius or wall collision. SWAMP draws %u/%u; unresolved bridge-root omitted %u; additive %u GL_ONE/GL_ONE + ADD mapped %u; diffuse %u/%u; AlphaMap %u/%u (%u unresolved); ignored LightMap %u, Specular %u, other %u; no-texture %u (%u visible).",
                mode, player_position.X, player_position.Y, player_position.Z,
                kPlayerPathMask,
                prince_character.state_id(), prince_character.sequence_id(),
                prince_character.sequence_id() == prince_character.walk_sequence_id()
                    ? "WALK" : prince_character.sequence_id() == prince_character.idle_sequence_id()
                        ? "IDLE" : "OTHER",
                prince_character.clip_id(),
                prince.joint_count(), prince.vertex_count(), prince_mesh.mapped_textures,
                prince_mesh.alpha_map_materials,
                visible_draws, source_draws, omitted_draws, additive_draws,
                additive_one_one_mapped,
                diffuse_refs, textured_draws, alpha_refs, alpha_cutout_draws,
                unresolved_alpha_refs, lightmap_refs, specular_refs, other_refs, no_texture_draws,
                visible_no_texture_draws);
            diagnostics->setText(utf8_wide(status).c_str());
            last_report = now;
        }

        // Keep source-coordinate motion verifiable without OCR: emit a
        // throttled state/position line on transitions and while held input
        // changes. This is a diagnostic channel, not gameplay telemetry.
        const char* movement_mode = "IDLE";
        if (movement_status == dh2::movement::Error::no_module_zero_floor)
            movement_mode = "BLOCKED";
        else if (movement_status != dh2::movement::Error::ok)
            movement_mode = "REJECTED";
        else if (std::fabs(input.x()) > 0.01f || std::fabs(input.y()) > 0.01f)
            movement_mode = "MOVE";
        const auto log_interval = std::strcmp(movement_mode, "IDLE") == 0
            ? std::chrono::milliseconds(1000)
            : std::chrono::milliseconds(200);
        if (std::strcmp(movement_mode, last_logged_mode) != 0 ||
            now - last_movement_log >= log_interval) {
            __android_log_print(ANDROID_LOG_INFO, kTag,
                "MOVE state=%s animation=%s source_state=%d sequence=%d clip=%d x=%.3f y=%.3f z=%.3f stick_x=%.3f stick_y=%.3f path_mask=0x%X",
                movement_mode,
                prince_character.sequence_id() == prince_character.walk_sequence_id()
                    ? "WALK" : prince_character.sequence_id() == prince_character.idle_sequence_id()
                        ? "IDLE" : "OTHER",
                prince_character.state_id(), prince_character.sequence_id(),
                prince_character.clip_id(),
                player_position.X, player_position.Y, player_position.Z,
                input.x(), input.y(), kPlayerPathMask);
            last_logged_mode = movement_mode;
            last_movement_log = now;
        }

        driver->beginScene(true, true, irr::video::SColor(255, 18, 27, 37));
        scene_manager->drawAll();
        draw_touch_pad(driver, input);
        gui->drawAll();
        const bool frame_presented = driver->endScene();
        if (frame_presented && !first_source_character_frame_reported) {
            __android_log_print(ANDROID_LOG_INFO, kTag,
                "FIRST_SOURCE_CHARACTER_FRAME: source_state=%d sequence=%d clip=%d authored_bank_resources=%u registration_occurrences=%u; renderer swap succeeded",
                prince_character.state_id(), prince_character.sequence_id(),
                prince_character.clip_id(),
                prince_character.registered_resource_count(),
                prince_character.registration_occurrence_count());
            first_source_character_frame_reported = true;
        }
        device->yield();
    }

    dh2_viewer_scene_mesh_free(&source_mesh);
    dh2_nav_free(&navigation);
    dh2_world_free(&level);
    device->drop();
}
