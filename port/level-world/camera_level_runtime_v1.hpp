#pragma once

#include <cstdint>

namespace dh2::camera_level_runtime_v1 {

struct Vec3 { float x=0.0f, y=0.0f, z=0.0f; };

// A borrowed projection of the original GameObject fields used by the camera:
// +352 is the normal world position, +736 is an optional custom anchor pointer,
// and +129 retires the CameraTarget after the frame. The adapter resolves the
// custom pointer's +12 vector exactly as GameObject::GetCameraAnchorPosition.
struct GameObjectSample {
    std::uintptr_t identity=0;
    bool present=false;
    Vec3 object_position{};
    bool custom_anchor_present=false;
    Vec3 custom_anchor_plus_12{};
    bool clear_camera_target_after_update=false;
};

bool resolve_camera_anchor(const GameObjectSample&, Vec3* out) noexcept;

struct CameraBaseOffsetInput {
    // Camera node matrix/basis values read by CameraBase::GetCenterOffset from
    // the object returned by its virtual +56 accessor, offsets +16/+20/+24.
    Vec3 camera_basis_column{};
    float vertical_fov_radians=0.0f; // camera virtual +296
    float target_z=0.0f;
};
bool camera_base_get_center_offset(const CameraBaseOffsetInput&,Vec3 camera_world_position,
                                   Vec3* out) noexcept;

enum class Status : std::uint8_t {
    invalid_input,
    no_camera_update,
    transition_position_written,
    follow_position_written
};

struct FrameInput {
    bool active_camera=false;
    bool camera_node_present=false;       // CameraTarget +4
    bool target_cam_node_present=false;  // CameraLevel +8
    bool target_game_object_present=false;
    GameObjectSample target{};            // borrowed target identity and source fields
    std::int32_t dt_ms=0;

    // Level::Update chooses GameObject +352 in this mode; otherwise it calls
    // CameraTarget::GetTargetPosition -> GameObject::GetCameraAnchorPosition.
    bool use_object_position=false;
    Vec3 animated_target_cam_offset{};    // CameraLevel +152/+156/+160 sample

    // Values produced by source providers, kept explicit so this owner does not
    // silently invent projection, multiplayer, asset-timeline or table data.
    CameraBaseOffsetInput center_offset_source{}; // raw CameraBase scene-node/FOV inputs
    Vec3 multiplayer_centering_delta{};   // CameraLevel::HandleCentering result
    float normal_design_min_zoom=0.0f;    // DesignSettingsTable +172
    float normal_design_max_zoom=0.0f;    // DesignSettingsTable +168
    float alternate_design_min_zoom=0.0f; // DesignSettingsTable +76
    float alternate_design_max_zoom=0.0f; // DesignSettingsTable +72
    bool infinite_zoom=false;             // DebugSwitches::InfiniteZoom
    bool zoom_clamp_disabled=false;       // CameraLevel +134
    Vec3 camera_world_position{};         // CameraBase camera-node absolute position
};

struct FrameOutput {
    Vec3 camera_world_position{};
    Vec3 target_cam_local_position{};
    Vec3 target_before_damping{};
    bool target_was_retired=false;
};

// One-owner port of the CameraTarget/CameraLevel state transitions. Scene graph,
// animation sampling, ZoomHandler and DesignSettingsTable remain providers.
class Owner {
public:
    Owner() noexcept = default;

    // Source SetTarget(nullptr, ...) is a no-op. A positive duration captures
    // the old target's current camera anchor; nonpositive duration clears the
    // transition. A real target's identity must be stable for its lifetime.
    bool set_target(const GameObjectSample* next, std::int32_t duration_ms,
                    const GameObjectSample* old_target_sample) noexcept;
    void clear_target() noexcept;
    void enable_center_offset(bool enabled) noexcept;
    void enable_damping(bool enabled) noexcept;
    void set_damping_ratio(float ratio) noexcept;
    void set_ghost_camera_offset(Vec3 offset) noexcept;
    // Mirrors PlayAnim's successful-start path. preserve_zoom corresponds to
    // the source's a4 flag; end_animation mirrors CameraLevel::__Callback.
    void play_animation_started(bool preserve_zoom) noexcept;
    void end_animation() noexcept;
    void set_zoom(float current, float target) noexcept;
    void set_zoom_animation_state(bool active, bool preserve_zoom) noexcept;
    void set_default_target_distance(float distance) noexcept;

    Status update(const FrameInput&, FrameOutput*) noexcept;
    std::uintptr_t target_identity() const noexcept { return target_identity_; }
    Vec3 damping_velocity() const noexcept { return damping_velocity_; }
    float current_zoom() const noexcept { return current_zoom_; }
    float effective_zoom() const noexcept { return effective_zoom_; }
    std::int32_t transition_remaining_ms() const noexcept { return transition_remaining_ms_; }

private:
    std::uintptr_t target_identity_=0;
    Vec3 transition_start_{};
    std::int32_t transition_duration_ms_=0;
    std::int32_t transition_remaining_ms_=0;
    bool center_offset_enabled_=false;
    bool damping_enabled_=true;
    float damping_ratio_=0.7f;
    Vec3 damping_velocity_{};
    Vec3 ghost_camera_offset_{};
    bool zoom_animation_active_=false;
    bool preserve_zoom_=false;
    float current_zoom_=0.0f;
    float target_zoom_=0.0f;
    float effective_zoom_=0.0f;
    float default_target_distance_=0.0f;
};

} // namespace dh2::camera_level_runtime_v1
