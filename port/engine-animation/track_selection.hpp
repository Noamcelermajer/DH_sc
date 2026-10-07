#pragma once

#include <cstdint>

namespace dh2::animation {

// A narrow reconstruction of the transform-track portion of
// CColladaDatabase::getAnimationTrackEx. This identifies the template track
// selected by the original code; it does not sample or apply animation data.
enum class TransformTrackKind : std::uint8_t {
    unsupported,
    position_vector3,
    position_x,
    position_y,
    position_z,
    rotation_quaternion,
    rotation_quaternion_angle,
    scale_vector3,
    scale_x,
    scale_y,
    scale_z,
};

// The template scalar named by the original CVirtualEx/CApplyValueEx target.
enum class TrackScalarTemplate : std::uint8_t {
    unknown,
    character,
    short_integer,
    floating_point,
};

struct TransformTrackSelection {
    TransformTrackKind kind = TransformTrackKind::unsupported;
    TrackScalarTemplate scalar = TrackScalarTemplate::unknown;

    [[nodiscard]] constexpr explicit operator bool() const noexcept {
        return kind != TransformTrackKind::unsupported &&
               scalar != TrackScalarTemplate::unknown;
    }
};

// channel_type is SChannel+8. If an offset/scale record is present,
// offset_scale_type is that record's first word. The original factory maps
// absent records and discriminator 2 to float, 0 to char, and 1 to short.
// Only channel types 1 through 13 are covered here; other factory cases are
// intentionally left unresolved.
[[nodiscard]] constexpr TransformTrackSelection selectTransformTrack(
    std::uint32_t channel_type,
    bool has_offset_scale_record,
    std::uint32_t offset_scale_type) noexcept {
    TransformTrackKind kind = TransformTrackKind::unsupported;
    switch (channel_type) {
    case 1: kind = TransformTrackKind::position_vector3; break;
    case 2: kind = TransformTrackKind::position_x; break;
    case 3: kind = TransformTrackKind::position_y; break;
    case 4: kind = TransformTrackKind::position_z; break;
    case 5: kind = TransformTrackKind::rotation_quaternion; break;
    case 6:
    case 7:
    case 8:
    case 9: kind = TransformTrackKind::rotation_quaternion_angle; break;
    case 10: kind = TransformTrackKind::scale_vector3; break;
    case 11: kind = TransformTrackKind::scale_x; break;
    case 12: kind = TransformTrackKind::scale_y; break;
    case 13: kind = TransformTrackKind::scale_z; break;
    default: return {};
    }

    if (!has_offset_scale_record) {
        return {kind, TrackScalarTemplate::floating_point};
    }

    switch (offset_scale_type) {
    case 0: return {kind, TrackScalarTemplate::character};
    case 1: return {kind, TrackScalarTemplate::short_integer};
    case 2: return {kind, TrackScalarTemplate::floating_point};
    default: return {};
    }
}

} // namespace dh2::animation
