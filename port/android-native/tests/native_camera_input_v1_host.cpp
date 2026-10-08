#include "../app/src/main/cpp/native_camera_input_v1.hpp"

#include <cmath>
#include <cstdio>
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
void compare(float yaw, float pitch, const float input[3], const float expected[3]) {
    float actual[3]{input[0], input[1], input[2]};
    check(dh2::native::camera_input_v1::rotate_ground_input(actual, yaw, pitch) == 0,
          "source camera input rejected valid yaw");
    check(near(actual[0], expected[0]) && near(actual[1], expected[1]) &&
          near(actual[2], expected[2]), "camera-relative heading differs from source rotation");
}
}

int main() {
    constexpr float half_pi = 1.57079632679489661923f;
    constexpr float pi = 3.14159265358979323846f;
    constexpr float pitch = 0.35f;
    constexpr float forward[3]{0, 1, 0.25f};
    constexpr float strafe[3]{1, 0, 0.5f};
    constexpr float forward_default[3]{0, 1, 0.25f};
    constexpr float forward_yaw_zero[3]{-1, 0, 0.25f};
    constexpr float forward_yaw_positive[3]{0, -1, 0.25f};
    constexpr float strafe_yaw_zero[3]{0, 1, 0.5f};
    const float forward_with_pitch[3]{-std::sin(pitch), std::cos(pitch), 0.25f};
    compare(-half_pi, 0, forward, forward_default);
    compare(0, 0, forward, forward_yaw_zero);
    compare(half_pi, 0, forward, forward_yaw_positive);
    compare(0, 0, strafe, strafe_yaw_zero);
    compare(-half_pi, pitch, forward, forward_with_pitch);

    // Pin the original unsigned Point3D::angle limitation at the far orbit
    // quadrant: camera looks +X, but acos loses that sign and forward rotates
    // the same way as yaw 0. This is evidence, not a claim that yaw is fixed.
    float opposite_look[3]{};
    check(dh2::native::camera_input_v1::camera_look_at_from_orbit(pi,0,opposite_look)==0&&
          opposite_look[0]>0.999f,
          "opposite orbit quadrant must point the camera look vector toward +X");
    compare(pi, 0, forward, forward_yaw_zero);

    float look_at[3]{};
    check(dh2::native::camera_input_v1::camera_look_at_from_orbit(-half_pi,pitch,look_at)==0,
          "orbit failed to provide source camera look-at vector");
    check(near(look_at[0],0)&&near(look_at[1],std::cos(pitch))&&near(look_at[2],-std::sin(pitch)),
          "orbit look-at vector differs from center-minus-eye camera direction");

    bool active=true;
    float tiny[3]{0.2f,0,0.9f};
    check(dh2::native::camera_input_v1::map_touch_ground_input(tiny,0,0,false,&active)==0&&
          !active&&near(tiny[0],0)&&near(tiny[1],0)&&near(tiny[2],0),
          "source radial stick deadzone clears input below 0.25");
    float edge[3]{0.25f,0,0};
    check(dh2::native::camera_input_v1::map_touch_ground_input(edge,0,0,false,&active)==0&&
          !active&&near(edge[0],0),"exact 0.25 source deadzone edge maps to zero");
    float half[3]{0,0.5f,9};
    check(dh2::native::camera_input_v1::map_touch_ground_input(half,0,0,false,&active)==0&&
          active&&near(half[0],0)&&near(half[1],1.0f/3.0f)&&near(half[2],0),
          "source radial curve maps half-stick magnitude to one third");
    float diagonal[3]{0.5f,0.5f,0};
    const float diagonal_magnitude=(std::sqrt(0.5f)-0.25f)/0.75f;
    check(dh2::native::camera_input_v1::map_touch_ground_input(diagonal,0,0,false,&active)==0&&
          active&&near(diagonal[0],diagonal_magnitude/std::sqrt(2.0f))&&
          near(diagonal[1],diagonal_magnitude/std::sqrt(2.0f)),
          "source radial curve preserves diagonal heading while normalizing length");
    float camera_relative[3]{0,0.5f,0};
    check(dh2::native::camera_input_v1::map_touch_ground_input(
              camera_relative,-half_pi,pitch,true,&active)==0&&active&&
          near(camera_relative[0],-std::sin(pitch)/3.0f)&&
          near(camera_relative[1],std::cos(pitch)/3.0f),
          "camera-relative stick mapping uses full pitch-aware look vector after radial curve");

    // The shared playercamera.bdae camera-to-target offset is the live source
    // camera basis on both supported gameplay routes. CameraBase input uses
    // target-minus-eye, then unsigned Point3D::angle and rotateXY.
    constexpr float rig_eye_offset[3]{1380.0f,-1180.46f,2551.55f};
    const float rig_yaw=std::atan2(rig_eye_offset[1],rig_eye_offset[0]);
    const float rig_pitch=std::atan2(rig_eye_offset[2],
        std::hypot(rig_eye_offset[0],rig_eye_offset[1]));
    float rig_look_at[3]{};
    const float rig_length=std::sqrt(rig_eye_offset[0]*rig_eye_offset[0]+
        rig_eye_offset[1]*rig_eye_offset[1]+rig_eye_offset[2]*rig_eye_offset[2]);
    check(dh2::native::camera_input_v1::camera_look_at_from_orbit(
              rig_yaw,rig_pitch,rig_look_at)==0&&
          near(rig_look_at[0],-rig_eye_offset[0]/rig_length)&&
          near(rig_look_at[1],-rig_eye_offset[1]/rig_length)&&
          near(rig_look_at[2],-rig_eye_offset[2]/rig_length),
          "shared authored eye offset reconstructs CameraBase target-minus-eye vector");
    float rig_forward[3]{0.0f,1.0f,0.0f};
    check(dh2::native::camera_input_v1::map_touch_ground_input(
              rig_forward,rig_yaw,rig_pitch,true,&active)==0&&active&&
          near(rig_forward[0],-std::sin(std::acos(rig_look_at[1])))&&
          near(rig_forward[1],std::cos(std::acos(rig_look_at[1]))),
          "player forward touch follows source Point3D angle/rotateXY for authored camera basis");

    // HeadTowards is a heading-only source command. It must not replace the
    // caller-owned route destination while publishing the new visual angle.
    dh2::navigation::HeadingState heading{{0,0,0},0.25f,0,0};
    float movement_angle=heading.angle;
    float destination[3]{120,240,360};
    float direct[3]{0.5f,0.5f,0};
    const float destination_before[3]{destination[0],destination[1],destination[2]};
    check(dh2::native::camera_input_v1::apply_head_towards(
              &heading,&movement_angle,direct)==0&&heading.active&&
          near(heading.direction[0],direct[0])&&near(heading.direction[1],direct[1])&&
          near(movement_angle,heading.angle)&&
          std::memcmp(destination,destination_before,sizeof(destination))==0,
          "HeadTowards updates heading without taking ownership of path destination");
    const float stopped_angle=heading.angle;
    float stopped[3]{};
    check(dh2::native::camera_input_v1::apply_head_towards(
              &heading,&movement_angle,stopped)==0&&!heading.active&&
          heading.direction[0]==0&&heading.direction[1]==0&&
          movement_angle==stopped_angle&&
          std::memcmp(destination,destination_before,sizeof(destination))==0,
          "zero HeadTowards clears movement while retaining heading angle and destination");

    float unchanged[3]{0.2f, -0.7f, 0.3f};
    const float before[3]{unchanged[0], unchanged[1], unchanged[2]};
    check(dh2::native::camera_input_v1::rotate_ground_input(
              unchanged, std::numeric_limits<float>::quiet_NaN(),0) == 1,
          "nonfinite yaw accepted");
    check(std::memcmp(unchanged, before, sizeof(before)) == 0,
          "invalid yaw mutated movement input");
    check(dh2::native::camera_input_v1::rotate_ground_input(nullptr, 0,0) == 1,
          "null movement input accepted");
    float bad[3]{0,0.5f,0};
    const float bad_before[3]{bad[0],bad[1],bad[2]};
    active=false;
    check(dh2::native::camera_input_v1::map_touch_ground_input(
              bad,std::numeric_limits<float>::quiet_NaN(),0,true,&active)==1&&
          !active&&std::memcmp(bad,bad_before,sizeof(bad))==0,
          "invalid camera frame preserves touch input and activity state");
    std::printf("PASS: source gamepad-to-touch camera mapping (%u assertions)\n",checks);
    return 0;
}
