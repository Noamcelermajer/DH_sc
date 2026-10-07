#include "../app/src/main/cpp/native_camera_input_v1.hpp"

#include <cmath>
#include <cstring>
#include <limits>
#include <stdexcept>
#include <string>

namespace {
unsigned checks = 0;
void check(bool value, const char* message) {
    if (!value) throw std::runtime_error(message);
    ++checks;
}
bool near(float a, float b) { return std::fabs(a - b) < 2e-6f; }
void compare(float yaw, const float input[3], const float expected[3]) {
    float actual[3]{input[0], input[1], input[2]};
    check(dh2::native::camera_input_v1::rotate_ground_input(actual, yaw) == 0,
          "source camera input rejected valid yaw");
    check(near(actual[0], expected[0]) && near(actual[1], expected[1]) &&
          near(actual[2], expected[2]), "camera-relative heading differs from source rotation");
}
}

int main() {
    constexpr float half_pi = 1.57079632679489661923f;
    constexpr float forward[3]{0, 1, 0.25f};
    constexpr float strafe[3]{1, 0, 0.5f};
    constexpr float forward_default[3]{0, 1, 0.25f};
    constexpr float forward_yaw_zero[3]{-1, 0, 0.25f};
    constexpr float forward_yaw_positive[3]{0, -1, 0.25f};
    constexpr float strafe_yaw_zero[3]{0, 1, 0.5f};
    compare(-half_pi, forward, forward_default);
    compare(0, forward, forward_yaw_zero);
    compare(half_pi, forward, forward_yaw_positive);
    compare(0, strafe, strafe_yaw_zero);

    float unchanged[3]{0.2f, -0.7f, 0.3f};
    const float before[3]{unchanged[0], unchanged[1], unchanged[2]};
    check(dh2::native::camera_input_v1::rotate_ground_input(
              unchanged, std::numeric_limits<float>::quiet_NaN()) == 1,
          "nonfinite yaw accepted");
    check(std::memcmp(unchanged, before, sizeof(before)) == 0,
          "invalid yaw mutated movement input");
    check(dh2::native::camera_input_v1::rotate_ground_input(nullptr, 0) == 1,
          "null movement input accepted");
    return checks == 11 ? 0 : 1;
}
