#include "../prince_actor.hpp"

#include "../../../asset-payloads/payloads.hpp"
#include "../../../engine-resources/resources.hpp"

#include <algorithm>
#include <array>
#include <cmath>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <fstream>
#include <iterator>
#include <limits>
#include <string>
#include <vector>

namespace {
void require(bool condition, const char* message) {
    if (condition) return;
    std::fprintf(stderr, "Prince actor host assertion failed: %s\n", message);
    std::exit(1);
}

std::vector<std::uint8_t> read(const std::string& path) {
    std::ifstream input(path, std::ios::binary);
    require(input.good(), "checked source asset must be readable");
    return {std::istreambuf_iterator<char>(input),
            std::istreambuf_iterator<char>()};
}

using Pose = std::vector<std::vector<std::array<float, 3>>>;
struct PoseBounds {
    std::array<float, 3> low{
        std::numeric_limits<float>::infinity(),
        std::numeric_limits<float>::infinity(),
        std::numeric_limits<float>::infinity()};
    std::array<float, 3> high{
        -std::numeric_limits<float>::infinity(),
        -std::numeric_limits<float>::infinity(),
        -std::numeric_limits<float>::infinity()};
};

Pose positions(const dh2::irrlicht_game::PrinceActor& actor) {
    Pose result;
    result.reserve(actor.parts().size());
    for (const auto& part : actor.parts()) {
        std::vector<std::array<float, 3>> vertices;
        vertices.reserve(part.vertices.size());
        for (const auto& vertex : part.vertices) vertices.push_back(vertex.position);
        result.push_back(std::move(vertices));
    }
    return result;
}

PoseBounds bounds(const Pose& pose) {
    PoseBounds result;
    for (const auto& part : pose)
        for (const auto& vertex : part)
            for (unsigned axis = 0; axis < 3; ++axis) {
                result.low[axis] = std::min(result.low[axis], vertex[axis]);
                result.high[axis] = std::max(result.high[axis], vertex[axis]);
            }
    return result;
}

std::array<float, 3> center(const PoseBounds& value) {
    return {(value.low[0] + value.high[0]) * 0.5f,
            (value.low[1] + value.high[1]) * 0.5f,
            (value.low[2] + value.high[2]) * 0.5f};
}

double pose_distance(const Pose& a, const Pose& b) {
    require(a.size() == b.size(), "poses must preserve primitive count");
    double distance = 0.0;
    std::size_t count = 0;
    for (std::size_t part = 0; part < a.size(); ++part) {
        require(a[part].size() == b[part].size(), "poses must preserve vertex count");
        for (std::size_t vertex = 0; vertex < a[part].size(); ++vertex) {
            for (unsigned axis = 0; axis < 3; ++axis) {
                const double delta = static_cast<double>(a[part][vertex][axis]) -
                                     b[part][vertex][axis];
                distance += delta * delta;
                ++count;
            }
        }
    }
    return count ? std::sqrt(distance / count) : 0.0;
}

bool near(float a, float b) {
    return std::isfinite(a) && std::isfinite(b) &&
           std::fabs(a - b) <= 1.0e-5f * std::max(1.0f, std::fabs(a));
}

void require_source_stream_equivalence(
    const std::vector<std::uint8_t>& model,
    const dh2::irrlicht_game::PrinceActor& actor) {
    using namespace dh2;
    resources::BresView view{};
    require(dh2_bres_open(&view, model.data(), model.size()) ==
                resources::BresError::ok,
            "source Prince BRES must reopen for stream equivalence checks");
    for (const auto& part : actor.parts()) {
        assets::Mesh mesh{};
        require(dh2_mesh_open(&mesh, &view,
                              static_cast<std::int32_t>(part.geometry_index)) ==
                    assets::Error::ok,
                "each actor primitive must resolve its source geometry");
        assets::Primitive primitive{};
        require(dh2_mesh_primitive(&mesh,
                                   static_cast<std::int32_t>(part.primitive_index),
                                   &primitive) == assets::Error::ok,
                "each actor primitive must resolve its source attribute map");
        require(part.position_attribute == primitive.attributes[0] &&
                    part.uv_attribute == primitive.attributes[4] &&
                    part.color_attribute == primitive.attributes[2],
                "actor stream IDs must follow this primitive's semantic mapping");
        require(part.position_attribute >= 0 &&
                    part.vertices.size() == mesh.vertices,
                "semantic position stream must cover every actor vertex");

        assets::Attribute position{};
        require(dh2_mesh_attribute(&mesh, part.position_attribute, &position) ==
                    assets::Error::ok && position.components >= 3,
                "mapped semantic position stream must resolve");
        assets::Attribute uv{};
        if (part.uv_attribute >= 0) {
            require(dh2_mesh_attribute(&mesh, part.uv_attribute, &uv) ==
                        assets::Error::ok && uv.components >= 2,
                    "mapped semantic UV stream must resolve");
        }
        assets::Attribute color{};
        if (part.color_attribute >= 0) {
            require(dh2_mesh_attribute(&mesh, part.color_attribute, &color) ==
                        assets::Error::ok && color.components > 0,
                    "mapped semantic color stream must resolve");
        }
        for (std::uint32_t vertex = 0; vertex < mesh.vertices; ++vertex) {
            float values[4]{};
            require(dh2_attribute_read(&position, vertex, values),
                    "source mapped position must decode");
            for (unsigned axis = 0; axis < 3; ++axis)
                require(near(part.vertices[vertex].rest_position[axis], values[axis]),
                        "imported rest positions must equal this primitive's source stream");

            if (part.uv_attribute >= 0) {
                require(dh2_attribute_read(&uv, vertex, values),
                        "source mapped UV must decode");
                require(near(part.vertices[vertex].uv[0], values[0]) &&
                            near(part.vertices[vertex].uv[1], values[1]),
                        "imported UVs must equal this primitive's semantic UV stream");
            } else {
                require(part.vertices[vertex].uv[0] == 0.0f &&
                            part.vertices[vertex].uv[1] == 0.0f,
                        "missing semantic UVs must retain the documented zero default");
            }

            std::array<float, 4> expected{1.0f, 1.0f, 1.0f, 1.0f};
            if (part.color_attribute >= 0) {
                require(dh2_attribute_read(&color, vertex, values),
                        "source mapped vertex color must decode");
                const float scale = color.type == 1 ? 1.0f / 255.0f : 1.0f;
                for (std::uint32_t component = 0;
                     component < std::min<std::uint32_t>(4, color.components);
                     ++component)
                    expected[component] = values[component] * scale;
            }
            for (unsigned component = 0; component < 4; ++component)
                require(near(part.vertices[vertex].color[component],
                             expected[component]),
                        "imported colors must equal this primitive's semantic color stream");
        }
    }
}
} // namespace

int main(int argc, char** argv) {
    require(argc == 2, "asset directory argument is required");
    const std::string root = argv[1];
    const auto model = read(root + "/models/prince_modular.bdae");
    const auto idle = read(root + "/animations/prince_idle_shield.bdae");
    const auto walk = read(root + "/animations/prince_walk_1hand.bdae");

    dh2::irrlicht_game::PrinceActor actor;
    std::string error;
    const bool loaded = actor.load(model.data(), model.size(), idle.data(),
                                   idle.size(), walk.data(), walk.size(), error);
    if (!loaded) {
        std::fprintf(stderr, "Prince source load error: %s\n", error.c_str());
        require(false, "source model and clips must load");
    }
    require(actor.ready() && actor.controller_count() == 4,
            "four source default-warrior skins must load");
    require(actor.vertex_count() >= 400 && actor.triangle_count() >= 500,
            "the source Prince mesh must not collapse to a marker");
    require(actor.joint_count() >= 20,
            "source skin joints must load for the four selected equipment meshes");
    std::uint32_t atlas_refs = 0;
    std::uint32_t alpha_refs = 0;
    for (const auto& part : actor.parts()) {
        if (part.diffuse_texture.find("atlas_modular_warrior.tga") != std::string::npos)
            ++atlas_refs;
        if (!part.alpha_texture.empty()) ++alpha_refs;
    }
    require(atlas_refs > 0, "selected source equipment must reference the supplied warrior atlas");
    require_source_stream_equivalence(model, actor);

    const auto idle_start = actor.clip_start(dh2::irrlicht_game::PrinceMotion::idle);
    const auto idle_end = actor.clip_end(dh2::irrlicht_game::PrinceMotion::idle);
    const auto walk_start = actor.clip_start(dh2::irrlicht_game::PrinceMotion::walk);
    const auto walk_end = actor.clip_end(dh2::irrlicht_game::PrinceMotion::walk);
    require(idle_end > idle_start && walk_end > walk_start,
            "source idle and walk clips must have nonempty ranges");

    const std::array<float, 3> origin{0.0f, 0.0f, 0.0f};
    require(actor.sample(dh2::irrlicht_game::PrinceMotion::idle,
                         idle_start,
                         origin, error), error.c_str());
    const auto idle_pose = positions(actor);
    const auto idle_bounds = bounds(idle_pose);
    const auto idle_center = center(idle_bounds);
    require(std::fabs(idle_center[0]) < 1.0e-3f &&
                std::fabs(idle_center[1]) < 1.0e-3f &&
                std::fabs(idle_bounds.low[2]) < 1.0e-3f,
            "first-Idle development placement must center the actor over the checked floor");
    require(actor.sample(dh2::irrlicht_game::PrinceMotion::walk,
                         walk_start + (walk_end - walk_start) / 2,
                         origin, error), error.c_str());
    const auto walk_pose = positions(actor);
    const auto walk_bounds = bounds(walk_pose);
    const auto walk_center = center(walk_bounds);
    const double motion_distance = pose_distance(idle_pose, walk_pose);
    require(std::isfinite(motion_distance) && motion_distance > 0.01,
            "source walk sampling must visibly deform the idle Prince pose");
    require(std::fabs(walk_center[0]) < 100.0f &&
                std::fabs(walk_center[1]) < 100.0f &&
                std::fabs(walk_bounds.low[2] - idle_bounds.low[2]) < 100.0f,
            "source visual helper must keep Walk centered near its owner and floor");

    // Input release selects the same source idle clip used at startup.
    // Resampling it after walk also verifies that pose writes start from the
    // immutable source rest positions rather than last frame's deformed data.
    require(actor.sample(dh2::irrlicht_game::PrinceMotion::idle,
                         idle_start,
                         origin, error), error.c_str());
    const auto returned_idle_pose = positions(actor);
    require(pose_distance(idle_pose, returned_idle_pose) < 1.0e-5,
            "released input must return to the reproducible source idle pose");

    const std::array<float, 3> moved_owner{37.0f, -11.0f, 4.5f};
    require(actor.sample(dh2::irrlicht_game::PrinceMotion::idle,
                         idle_start,
                         moved_owner, error), error.c_str());
    const auto translated_pose = positions(actor);
    double translation_error = 0.0;
    for (std::size_t part = 0; part < idle_pose.size(); ++part) {
        for (std::size_t vertex = 0; vertex < idle_pose[part].size(); ++vertex) {
            for (unsigned axis = 0; axis < 3; ++axis) {
                const float observed = translated_pose[part][vertex][axis] -
                                       idle_pose[part][vertex][axis];
                const double delta = static_cast<double>(observed) - moved_owner[axis];
                translation_error += delta * delta;
            }
        }
    }
    require(std::sqrt(translation_error / (actor.vertex_count() * 3.0)) < 1.0e-4,
            "actor owner translation must be applied exactly once after source skinning");

    std::printf("Prince Irrlicht adapter source check: controllers=%u joints=%u vertices=%u triangles=%u atlas_materials=%u source_alpha_maps=%u idle=[%d,%d] walk=[%d,%d] pose_delta=%.4f development_idle_anchor_bounds=(%.2f,%.2f,%.2f)-(%.2f,%.2f,%.2f) walk_bounds=(%.2f,%.2f,%.2f)-(%.2f,%.2f,%.2f) semantic_streams=source_equivalent source_visual_binding=owner_helper_graph owner_translation=single idle_release=pass full_character_playback=not_implemented\n",
        actor.controller_count(), actor.joint_count(), actor.vertex_count(),
        actor.triangle_count(), atlas_refs, alpha_refs, idle_start, idle_end,
        walk_start, walk_end, motion_distance,
        idle_bounds.low[0], idle_bounds.low[1], idle_bounds.low[2],
        idle_bounds.high[0], idle_bounds.high[1], idle_bounds.high[2],
        walk_bounds.low[0], walk_bounds.low[1], walk_bounds.low[2],
        walk_bounds.high[0], walk_bounds.high[1], walk_bounds.high[2]);
    return 0;
}
