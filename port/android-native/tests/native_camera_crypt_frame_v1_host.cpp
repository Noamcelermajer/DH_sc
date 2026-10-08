#include "../app/src/main/cpp/native_camera_crypt_frame_v1.hpp"

#include <cmath>
#include <cstdio>
#include <limits>

using namespace dh2::native::crypt_camera_frame_v1;

namespace {
bool near(float a, float b, float epsilon = 0.02f) {
    return std::fabs(a - b) <= epsilon;
}
void transform(const Matrix& m, const Vec3& p, float out[4]) {
    const float in[4]{p[0], p[1], p[2], 1.0f};
    for (int row = 0; row < 4; ++row) {
        out[row] = 0.0f;
        for (int column = 0; column < 4; ++column)
            out[row] += m[column * 4 + row] * in[column];
    }
}
}

int main() {
    int checks = 0;
    auto expect = [&](bool ok, const char* message) {
        if (!ok) { std::fprintf(stderr, "FAIL: %s\n", message); return false; }
        ++checks; return true;
    };
    if (!expect(verified_crypt_route("GOTHICUS_CRYPT_01", "007_crypt_01.rule.xml"), "Crypt gate")) return 1;
    if (!expect(!verified_crypt_route("SWAMP", "001_swamp.mlx"), "SWAMP excluded")) return 2;
    if (!expect(!verified_crypt_route("GOTHICUS_CRYPT_01", "x07_crypt_backup.mlx"), "wrong route file excluded")) return 3;

    const Vec3 receipt_target{-2227.77f, 1220.93f, 842.364f};
    Frame frame{};
    if (!expect(build("GOTHICUS_CRYPT_01", "007_crypt_01.rule.xml", receipt_target, 2400, 1080, &frame), "build Crypt frame")) return 4;
    if (!expect(near(frame.eye[0], -847.77f) && near(frame.eye[1], -159.07f) &&
                near(frame.eye[2], 3292.364f), "reproduces Adam v20 observed eye from target-relative source frame")) return 5;
    if (!expect(near(frame.aspect, 2.2222223f, 1e-5f), "modern surface aspect")) return 6;
    if (!expect(near(frame.input_yaw, -0.78539816f, 1e-6f), "movement yaw follows source eye azimuth")) return 7;
    if (!expect(near(frame.input_pitch, input_pitch_radians(), 1e-6f) && frame.input_pitch > 0.89f,
                "movement pitch follows source eye elevation")) return 8;

    ForwardAnchorState anchor{};
    if (!expect(update_forward_anchor(&anchor, 0.0f, false, false) &&
                near(anchor.distance, 0.0f), "idle camera anchor starts at the character")) return 21;
    if (!expect(update_forward_anchor(&anchor, 0.0f, true, true) &&
                near(anchor.distance, 320.0f), "AnchorForward reaches its half-distance startup ramp")) return 22;
    if (!expect(update_forward_anchor(&anchor, 0.0f, true, true) &&
                near(anchor.distance, 337.0f), "AnchorForward advances by its source frame increment")) return 23;
    if (!expect(update_forward_anchor(&anchor, 1.570796327f, true, true) &&
                near(anchor.distance, 332.75f), "sharp facing turn retreats the source anchor")) return 24;
    if (!expect(update_forward_anchor(&anchor, 1.570796327f, false, false) &&
                near(anchor.distance, kForwardAnchorIdleCap), "idle anchor retains only 40 percent of maximum")) return 25;
    const Vec3 forward_anchor = player_camera_anchor({1.0f, 2.0f, 3.0f}, 0.0f, 256.0f);
    if (!expect(near(forward_anchor[0], 1.0f) && near(forward_anchor[1], -254.0f) &&
                near(forward_anchor[2], 3.0f), "camera anchor uses GameObject::GetLookAtVec orientation")) return 26;
    if (!expect(!player_displaced_enough_for_forward_anchor({0.2f, 0.0f, 0.0f}) &&
                player_displaced_enough_for_forward_anchor({0.0f, 0.0f, 0.23f}),
                "AnchorForward displacement threshold includes vertical movement")) return 27;
    ForwardAnchorState threshold_turn{320.0f, 0.0f, true};
    if (!expect(update_forward_anchor(&threshold_turn, 1.0f, true, true) &&
                near(threshold_turn.distance, 337.0f),
                "one-radian source turn threshold does not trigger retreat")) return 28;
    if (!expect(!player_displaced_enough_for_forward_anchor(
                    {0.0f, 0.0f, std::numeric_limits<float>::infinity()}),
                "nonfinite displacement cannot expand camera anchor")) return 29;

    float clip[4]{};
    transform(frame.view_projection, frame.target, clip);
    if (!expect(std::fabs(clip[0] / clip[3]) < 1e-5f && std::fabs(clip[1] / clip[3]) < 1e-5f,
                "camera target projects to screen center")) return 9;
    if (!expect(clip[3] > 0.0f, "target lies in front of camera")) return 10;

    Vec3 forward = subtract(frame.target, frame.eye);
    if (!expect(normalize(forward), "source forward basis normalizes")) return 11;
    const Vec3 movement_forward{
        -std::cos(frame.input_yaw) * std::cos(frame.input_pitch),
        -std::sin(frame.input_yaw) * std::cos(frame.input_pitch),
        -std::sin(frame.input_pitch)};
    if (!expect(near(movement_forward[0], forward[0], 1e-6f) &&
                near(movement_forward[1], forward[1], 1e-6f) &&
                near(movement_forward[2], forward[2], 1e-6f),
                "controller look vector matches recovered source camera forward")) return 12;
    Vec3 side = cross({0.0f, 0.0f, 1.0f}, forward);
    if (!expect(normalize(side), "source side basis normalizes")) return 13;
    Vec3 vertical = cross({-forward[0], -forward[1], -forward[2]}, side);
    const Vec3 right_point{frame.target[0] + side[0] * 100.0f,
                           frame.target[1] + side[1] * 100.0f,
                           frame.target[2] + side[2] * 100.0f};
    transform(frame.view_projection, right_point, clip);
    if (!expect(clip[0] / clip[3] > 0.0f, "source camera side maps right on screen")) return 14;
    const Vec3 up_point{frame.target[0] + vertical[0] * 100.0f,
                        frame.target[1] + vertical[1] * 100.0f,
                        frame.target[2] + vertical[2] * 100.0f};
    transform(frame.view_projection, up_point, clip);
    if (!expect(clip[1] / clip[3] > 0.0f, "source camera vertical maps up on screen")) return 15;
    const Vec3 near_point{frame.eye[0] + forward[0] * kNearPlane,
                          frame.eye[1] + forward[1] * kNearPlane,
                          frame.eye[2] + forward[2] * kNearPlane};
    transform(frame.view_projection, near_point, clip);
    if (!expect(near(clip[2] / clip[3], -1.0f, 1e-5f), "source near plane maps to GLES -1")) return 16;
    const Vec3 far_point{frame.eye[0] + forward[0] * kFarPlane,
                         frame.eye[1] + forward[1] * kFarPlane,
                         frame.eye[2] + forward[2] * kFarPlane};
    transform(frame.view_projection, far_point, clip);
    if (!expect(near(clip[2] / clip[3], 1.0f, 1e-5f), "source far plane maps to GLES +1")) return 17;

    Frame swamp{};
    if (!expect(!build("SWAMP", "001_swamp.mlx", receipt_target, 2400, 1080, &swamp),
                "Crypt frame builder refuses SWAMP")) return 18;
    Frame portrait{};
    if (!expect(build("GOTHICUS_CRYPT_01", "007_crypt_01.rule.xml", receipt_target, 1080, 2400, &portrait),
                "build portrait Crypt frame")) return 19;
    if (!expect(portrait.aspect < frame.aspect, "portrait aspect changes projection")) return 20;

    std::printf("native_camera_crypt_frame_v1: %d assertions passed\n", checks);
}
