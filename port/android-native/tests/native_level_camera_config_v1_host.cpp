#include "../app/src/main/cpp/native_camera_crypt_frame_v1.hpp"
#include "../app/src/main/cpp/native_level_camera_config_v1.hpp"

#include <cmath>
#include <cstdio>
#include <fstream>
#include <iterator>
#include <string>
#include <vector>

namespace {
std::string read(const char* path) {
    std::ifstream file(path,std::ios::binary);
    return {std::istreambuf_iterator<char>(file),std::istreambuf_iterator<char>()};
}
bool near(float a,float b,float epsilon=1e-5f) {
    return std::fabs(a-b)<=epsilon;
}
}

int main(int argc,char** argv) {
    if(argc!=3){std::fprintf(stderr,"usage: native_level_camera_config_v1_host swamp.mlx crypt.rule.xml\n");return 2;}
    const auto swamp_xml=read(argv[1]),crypt_xml=read(argv[2]);
    dh2::native::level_camera_config_v1::ClipPlanes swamp{},crypt{};
    if(!dh2::native::level_camera_config_v1::parse_clip_planes(swamp_xml,&swamp)||
       !near(swamp.near_clip,900.0f)||!near(swamp.far_clip,4200.0f)){
        std::fprintf(stderr,"FAIL: SWAMP LevelConfig clip planes must come from 001_swamp.mlx\n");return 1;
    }
    if(!dh2::native::level_camera_config_v1::parse_clip_planes(crypt_xml,&crypt)||
       !near(crypt.near_clip,900.0f)||!near(crypt.far_clip,5000.0f)){
        std::fprintf(stderr,"FAIL: Crypt rule clip planes must come from 007_crypt_01.rule.xml\n");return 1;
    }

    using namespace dh2::native::crypt_camera_frame_v1;
    const Vec3 target{1090.75f,-212.202f,255.0001f};
    const Vec3 eye_offset{1380.0f,-1180.46f,2551.55f};
    const Vec3 up_direction{-404.008f,345.604f,378.41f};
    Frame swamp_frame{},crypt_frame{};
    if(!build_player_frame(target,2400,1080,&swamp_frame,kVerticalFovRadians,
                           swamp.near_clip,swamp.far_clip,eye_offset,up_direction)||
       !build_player_frame(target,2400,1080,&crypt_frame,kVerticalFovRadians,
                           crypt.near_clip,crypt.far_clip,eye_offset,up_direction)||
       !near(swamp_frame.aspect,2400.0f/1080.0f)||
       !near(swamp_frame.input_yaw,std::atan2(eye_offset[1],eye_offset[0]))||
       !near(swamp_frame.input_pitch,std::atan2(eye_offset[2],std::hypot(eye_offset[0],eye_offset[1])))){
        std::fprintf(stderr,"FAIL: shared rig frame rejected source route or modern viewport\n");return 1;
    }
    bool projection_differs=false;
    for(std::size_t i=0;i<swamp_frame.view_projection.size();++i)
        projection_differs|=!near(swamp_frame.view_projection[i],crypt_frame.view_projection[i],1e-7f);
    if(!projection_differs){std::fprintf(stderr,"FAIL: source level clip-plane override did not affect projection\n");return 1;}
    Frame invalid{};
    if(build_player_frame(target,2400,1080,&invalid,kVerticalFovRadians,
                          900.0f,900.0f,eye_offset,up_direction)){
        std::fprintf(stderr,"FAIL: invalid near/far order accepted\n");return 1;
    }
    std::puts("PASS: per-level camera clip planes and shared player-rig projection");
    return 0;
}
