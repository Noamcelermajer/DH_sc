// Test for the port camera settings (CAM1, game/include/dh2/global/camera_port.hpp) and the level camera's Hor+ projection on a
// 2220x1080 surface (TRACK-B.md decision 15): the vertical view is the original's, only the sides grow.
#include <cmath>
#include <cstdio>

#include "dh2/global/camera_port.hpp"
#include "dh2/global/screen_size.hpp"
#include "glitch-core-io/core/matrix_builders.hpp"

namespace {
int g_failures = 0;
void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}
bool Near(double a, double b, double eps = 1e-4) { return std::fabs(a - b) <= eps; }
}  // namespace

int main() {
    const float kLevelFov = 0.42963f;      // Level::_LoadCamera
    const float kLevelAspect = 1.66775239f;

    // Defaults are the original.
    Check(g_dh2CamFovPercent == 100 && g_dh2CamDistPercent == 100 && g_dh2CamFollowPercent == 100 && g_dh2CamLeadPercent == 0,
          "defaults 100/100/100/0");
    Check(dh2cam::ScaledFov(kLevelFov, 100) == kLevelFov, "fov 100% unchanged");
    Check(dh2cam::ExtraDistanceZ(500.0f, 100) == 0.0f, "distance 100% adds nothing");
    Check(dh2cam::FollowRatio(0.7f, 100) == 0.7f, "follow 100% keeps 0.7");

    // camfov scales the visible height (half-angle tangent), not the angle.
    const double t0 = std::tan(kLevelFov * 0.5);
    Check(Near(std::tan(dh2cam::ScaledFov(kLevelFov, 120) * 0.5), t0 * 1.2), "fov 120% = 1.2x visible height");
    Check(Near(std::tan(dh2cam::ScaledFov(kLevelFov, 50) * 0.5), t0 * 0.5), "fov 50% = half visible height");
    Check(Near(dh2cam::ExtraDistanceZ(400.0f, 150), 200.0), "distance 150% = +0.5 x distance");
    Check(dh2cam::FollowRatio(0.7f, 135) <= 0.95f && dh2cam::FollowRatio(0.7f, 135) > 0.7f, "follow clamp");

    // Look-ahead: steady motion along +y at 100 units/s, 30 fps; the lead converges to v * 0.75 s * pct (capped).
    {
        dh2cam::LeadState s;
        float lx = 0, ly = 0;
        float y = 0;
        for (int i = 0; i < 120; ++i) {
            y += 100.0f / 30.0f;
            dh2cam::UpdateLead(s, 0.0f, y, 1.0f / 30.0f, 50, 1000.0f, lx, ly);
        }
        Check(Near(lx, 0.0, 1e-3) && Near(ly, 100.0 * 0.75 * 0.5, 0.5), "lead follows the movement direction");
        dh2cam::UpdateLead(s, 0.0f, y + 5000.0f, 1.0f / 30.0f, 50, 1000.0f, lx, ly);  // teleport
        Check(lx == 0.0f && ly == 0.0f, "teleport resets the lead");
        dh2cam::UpdateLead(s, 0.0f, y, 1.0f / 30.0f, 0, 1000.0f, lx, ly);
        Check(lx == 0.0f && ly == 0.0f && !s.valid, "lead 0 is off");
        for (int i = 0; i < 120; ++i) {  // fast motion is capped at 0.6 x distance
            y += 10000.0f / 30.0f;
            dh2cam::UpdateLead(s, 0.0f, y, 1.0f / 30.0f, 100, 1000.0f, lx, ly);
        }
        Check(std::sqrt(lx * lx + ly * ly) <= 600.0f + 1e-2f, "lead capped");
    }

#if defined(__ANDROID__) || defined(DH2_HOST_RUNNER)
    // Hor+: on 2220x1080 the level camera's projection keeps the original vertical scale (M[5]) and only widens.
    Width_Screen = 2220;
    Height_Screen = 1080;
    g_dh2ScreenFitMode = 1;
    const float aspectWide = kLevelAspect * ScreenAspectScale();
    const auto wide = glitch::core::buildProjectionMatrixPerspectiveFov<float>(kLevelFov, aspectWide, 10.0f, 1000.0f);
    Width_Screen = 854;
    Height_Screen = 480;
    const auto orig = glitch::core::buildProjectionMatrixPerspectiveFov<float>(kLevelFov, kLevelAspect * ScreenAspectScale(), 10.0f, 1000.0f);
    Check(wide.M[5] == orig.M[5], "2220x1080: same vertical view as 854x480");
    Check(wide.M[0] < orig.M[0], "2220x1080: wider horizontal view than 854x480");
    // Undistorted: the horizontal over vertical scale matches the surface aspect up to the original's own 1.6677-vs-16:9 stretch.
    Check(Near((orig.M[5] / orig.M[0]) / (wide.M[5] / wide.M[0]), (854.0 / 480.0) / (2220.0 / 1080.0), 1e-3), "2220x1080: same stretch as 16:9");
#else
    std::printf("note: ScreenAspectScale compiled out (not Android / host runner); Hor+ check skipped\n");
#endif

    if (g_failures == 0) {
        std::printf("camera_port_test: all checks passed\n");
    }
    return g_failures == 0 ? 0 : 1;
}
