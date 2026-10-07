#pragma once

#include <array>
#include <cstdint>

namespace dh2::ui::original_menu_viewport_v1 {

// The original front SWFs' authored stage rectangle is [0,9600] x [0,6400]
// twips. SWF coordinates use 20 twips per logical pixel: 480 x 320 (3:2).
inline constexpr std::int32_t stage_width_twips = 9600;
inline constexpr std::int32_t stage_height_twips = 6400;

// Center the original stage in a modern surface without stretching/cropping it.
// Returned coordinates are Android/OpenGL pixel coordinates [x,y,width,height].
inline std::array<std::int32_t, 4> fit(std::int32_t surface_width,
                                       std::int32_t surface_height) noexcept {
    if (surface_width <= 0 || surface_height <= 0) return {};
    const auto sw = static_cast<std::int64_t>(surface_width);
    const auto sh = static_cast<std::int64_t>(surface_height);
    const auto stage_width = static_cast<std::int64_t>(stage_width_twips);
    const auto stage_height = static_cast<std::int64_t>(stage_height_twips);

    std::int64_t width{};
    std::int64_t height{};
    if (sw * stage_height > sh * stage_width) {
        height = sh;
        width = sh * stage_width / stage_height;
    } else {
        width = sw;
        height = sw * stage_height / stage_width;
    }
    return {static_cast<std::int32_t>((sw - width) / 2),
            static_cast<std::int32_t>((sh - height) / 2),
            static_cast<std::int32_t>(width),
            static_cast<std::int32_t>(height)};
}

}  // namespace dh2::ui::original_menu_viewport_v1
