#pragma once

#include <cstddef>
#include <cstdint>

namespace dh2::camera_design_zoom_v1 {

// Projection of the single source DesignSettingsTable row used by
// CameraLevel::HandleZoom. The packed cache row excludes the runtime vptr;
// these offsets are cache-word indices from its first serialized field.
struct Bounds {
    std::uint32_t row = 0;
    float normal_min = 0.0f;
    float normal_max = 0.0f;
    float alternate_min = 0.0f;
    float alternate_max = 0.0f;
};

enum class Status : std::uint8_t {
    complete,
    invalid_input,
    unexpected_row_count,
    invalid_bounds
};

// design_pyarray.bin begins with the DesignSettings row count followed by
// 43-word/172-byte rows. The supplied cache has one global row; require that
// exact shape instead of silently treating a future multi-row table as row 0.
// Fields 17/18 (MiniMapZoomMaxLimit/MiniMapZoomMinLimit) and 41/42
// (ZoomMaxLimit/ZoomMinLimit) are confirmed by pystructnames.bin.
Status decode_global_bounds(const std::uint8_t* data, std::size_t size,
                            Bounds* output) noexcept;

} // namespace dh2::camera_design_zoom_v1
