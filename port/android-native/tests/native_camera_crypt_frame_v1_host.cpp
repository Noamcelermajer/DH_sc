#include "../app/src/main/cpp/native_camera_crypt_frame_v1.hpp"

#include <cmath>
#include <cstdio>

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

    float clip[4]{};
    transform(frame.view_projection, frame.target, clip);
    if (!expect(std::fabs(clip[0] / clip[3]) < 1e-5f && std::fabs(clip[1] / clip[3]) < 1e-5f,
                "camera target projects to screen center")) return 9;
    if (!expect(clip[3] > 0.0f, "target lies in front of camera")) return 10;

    Frame swamp{};
    if (!expect(!build("SWAMP", "001_swamp.mlx", receipt_target, 2400, 1080, &swamp),
                "Crypt frame builder refuses SWAMP")) return 11;
    Frame portrait{};
    if (!expect(build("GOTHICUS_CRYPT_01", "007_crypt_01.rule.xml", receipt_target, 1080, 2400, &portrait),
                "build portrait Crypt frame")) return 12;
    if (!expect(portrait.aspect < frame.aspect, "portrait aspect changes projection")) return 13;

    std::printf("native_camera_crypt_frame_v1: %d assertions passed\n", checks);
}
