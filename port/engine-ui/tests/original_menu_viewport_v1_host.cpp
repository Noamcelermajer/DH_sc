#include "../original_menu_viewport_v1.hpp"
#include "../viewport.hpp"

#include <array>
#include <cmath>
#include <stdexcept>

namespace {
unsigned checks = 0;
void check(bool value, const char* message) {
    if (!value) throw std::runtime_error(message);
    ++checks;
}

struct Context {};
int invoke(void*, dh2::ui::ViewportState64*, const dh2::ui::ViewportRequest40* request,
           dh2::ui::ViewportResponse16* response) {
    if (request->operation != dh2::ui::ViewportOperation::orientation) return 0;
    response->values[0] = 0;  // Android surface is already oriented.
    return 1;
}

bool inside_source_stage(const float point[2]) {
    return point[0] >= 0.0f && point[0] < 480.0f &&
           point[1] >= 0.0f && point[1] < 320.0f;
}
}

int main() {
    using dh2::ui::original_menu_viewport_v1::fit;
    using dh2::ui::original_menu_viewport_v1::background_viewport;
    using dh2::ui::original_menu_viewport_v1::surface_aspect;
    const std::array<std::int32_t, 4> landscape{100, 0, 1080, 720};
    check(fit(1280, 720) == landscape,
          "16:9 rendering must center the 480x320 source stage without stretching");
    check(fit(1280, 550) == std::array<std::int32_t, 4>{227, 0, 825, 550},
          "wide screenshot viewport must retain source 3:2 geometry");
    check(fit(720, 1280) == std::array<std::int32_t, 4>{0, 400, 720, 480},
          "portrait viewport must center the source stage without cropping");
    check(fit(0, 720) == std::array<std::int32_t, 4>{},
          "invalid surface must produce an empty rectangle");
    const auto background = background_viewport(2400, 1080);
    check(background == std::array<std::int32_t, 4>{390, 0, 1620, 1080},
          "20:9 menu background must share the centered source-stage rectangle");
    check(std::fabs(surface_aspect(background[2], background[3]) - 1.5f) < 1e-6f,
          "menu camera must use the fitted source-stage ratio behind the SWF");
    check(std::fabs(surface_aspect(0, 720) - 1.5f) < 1e-6f,
          "invalid camera bounds must fall back to the authored UI stage ratio");

    // Production passes this one fitted rectangle to both input_rectangle()
    // and display_clip(). Exercise the source viewport transform so taps in
    // the side gutters remain outside the authored 480x320 hit-test stage.
    dh2::ui::ViewportState64 state{
        {0.0f, 9600.0f, 0.0f, 6400.0f},
        {landscape[0], landscape[1], landscape[2], landscape[3]},
        {landscape[0], landscape[1], landscape[2], landscape[3]},
        1.0f, 0, 0};
    Context context;
    const dh2::ui::ViewportServices16 services{&context, invoke};
    float center[2]{640.0f, 360.0f};
    check(dh2_ui_screen_to_logical(&state, center, &services) == 0 &&
          std::fabs(center[0] - 240.0f) < 1e-5f &&
          std::fabs(center[1] - 160.0f) < 1e-5f && inside_source_stage(center),
          "viewport center must map to the center of the original hit-test stage");
    float left_gutter[2]{99.0f, 360.0f};
    check(dh2_ui_screen_to_logical(&state, left_gutter, &services) == 0 &&
          !inside_source_stage(left_gutter),
          "tap one pixel into the left pillarbox must map outside authored hit targets");
    float right_gutter[2]{1180.0f, 360.0f};
    check(dh2_ui_screen_to_logical(&state, right_gutter, &services) == 0 &&
          !inside_source_stage(right_gutter),
          "tap on the right pillarbox boundary must map outside authored hit targets");

    return checks == 10 ? 0 : 1;
}
