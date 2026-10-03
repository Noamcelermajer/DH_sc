#pragma once

#include <array>
#include <cstddef>
#include <cstdint>
#include <memory>
#include <string>
#include <vector>

namespace dh2::irrlicht_game {

struct PrinceVertex {
    std::array<float, 3> rest_position{};
    std::array<float, 3> position{};
    std::array<float, 2> uv{};
    std::array<float, 4> color{1.0f, 1.0f, 1.0f, 1.0f};
};

struct PrinceMeshPart {
    std::uint32_t skin_index = 0;
    std::uint32_t geometry_index = 0;
    std::uint32_t primitive_index = 0;
    std::int32_t position_attribute = -1;
    std::int32_t uv_attribute = -1;
    std::int32_t color_attribute = -1;
    std::uint32_t material_index = 0;
    std::string material_id;
    std::string diffuse_texture;
    std::string alpha_texture;
    std::array<float, 4> material_color{1.0f, 1.0f, 1.0f, 1.0f};
    std::array<float, 16> texture_matrix{
        1, 0, 0, 0, 0, 1, 0, 0,
        0, 0, 1, 0, 0, 0, 0, 1};
    std::vector<PrinceVertex> vertices;
    std::vector<std::uint16_t> indices;
};

enum class PrinceMotion : std::uint32_t { idle, walk };

// A renderer-neutral view of the source Prince. It assembles the four default
// warrior equipment controllers, samples the recovered idle/walk clips, and
// deforms every primitive from immutable bind-pose positions with the checked
// engine-skinning palette. The source visual binding supplies owner * helper *
// authored graph transforms and source animated-root compensation. A fixed
// first-Idle bounds offset remains a development placement choice. Full
// Character scale/state/blended playback are not reconstructed; the renderer
// adapter must keep its scene-node transform at identity.
class PrinceActor {
    struct Impl;
    std::unique_ptr<Impl> impl_;

public:
    PrinceActor();
    ~PrinceActor();
    PrinceActor(PrinceActor&&) noexcept;
    PrinceActor& operator=(PrinceActor&&) noexcept;
    PrinceActor(const PrinceActor&) = delete;
    PrinceActor& operator=(const PrinceActor&) = delete;

    bool load(const std::uint8_t* model, std::size_t model_size,
              const std::uint8_t* idle, std::size_t idle_size,
              const std::uint8_t* walk, std::size_t walk_size,
              std::string& error);
    bool sample(PrinceMotion motion, std::int32_t milliseconds,
                const std::array<float, 3>& owner_position,
                std::string& error);

    const std::vector<PrinceMeshPart>& parts() const;
    std::uint32_t controller_count() const;
    std::uint32_t joint_count() const;
    std::uint32_t vertex_count() const;
    std::uint32_t triangle_count() const;
    std::int32_t clip_start(PrinceMotion motion) const;
    std::int32_t clip_end(PrinceMotion motion) const;
    bool ready() const;
};

} // namespace dh2::irrlicht_game
