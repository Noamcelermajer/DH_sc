#pragma once

#include "../engine-animation/animation.hpp"
#include "../scene-materials/scene.hpp"
#include "visual_timeline.hpp"
#include <array>
#include <cstddef>
#include <cstdint>
#include <string>

namespace dh2::player_camera_rig_v1 {

struct Assets {
    const std::uint8_t* camera_scene=nullptr;
    std::size_t camera_scene_size=0;
    const std::uint8_t* idle_animation=nullptr;
    std::size_t idle_animation_size=0;
};

// Raw values authored in the BRES Camera record. source_fov_value is retained
// without guessing whether the caller's projection API expects degrees or
// radians; aspect and clip distances are source fields as well.
struct Projection {
    float source_fov_value=0.0f;
    float aspect_ratio=0.0f;
    float near_clip=0.0f;
    float far_clip=0.0f;
};

struct Pose {
    // All matrices are relative to Root_Camera-node, in column-major order.
    std::array<float,16> camera{};
    std::array<float,16> target{};
    std::array<float,16> up_vector{};
};

// Loads a camera-only visual graph plus its authored idle animation. Sampling
// has no clock or loop policy: the caller supplies an absolute clip time.
class Rig {
public:
    bool load(const Assets&,std::string& error);
    bool sample(std::int32_t milliseconds,Pose*,std::string& error);

    const Projection& projection() const noexcept { return projection_; }
    std::int32_t animation_start() const noexcept { return idle_.start; }
    std::int32_t animation_end() const noexcept { return idle_.end; }
    unsigned track_count() const noexcept { return idle_.track_count(); }
    unsigned skipped_tracks() const noexcept { return idle_.skipped; }
    unsigned unbound_tracks() const noexcept { return idle_.unbound; }

private:
    scene::Scene scene_;
    animation::Player idle_;
    Projection projection_{};
    std::size_t root_=0,camera_=0,target_=0,up_vector_=0;
    bool loaded_=false;
};

// Runtime for CameraLevel's selected CameraTests idle clip. CameraLevel::PlayAnim
// selects the clip with loop=false and speed=1; the scene timeline supplies
// elapsed milliseconds, clamps at the authored end, and notifies completion
// once. The caller advances this from its game-frame delta rather than a
// wall-clock epoch.
class Playback {
public:
    bool start(const Rig&,std::string& error);
    bool advance(Rig&,std::uint32_t dt_ms,Pose*,std::string& error);
    std::int32_t current_time_ms() const noexcept { return timeline_.current_ms; }
    bool completed() const noexcept { return timeline_.ended!=0; }

private:
    timeline::State timeline_{};
    std::uint32_t source_clock_ms_=0;
    bool started_=false;
};

} // namespace dh2::player_camera_rig_v1
