#include "../camera_level_runtime_v1.hpp"

#include <cmath>
#include <cstdio>
#include <cstdlib>

using namespace dh2::camera_level_runtime_v1;

namespace {
int assertions=0;
void check(bool condition,const char* label){++assertions;if(!condition){std::fprintf(stderr,"FAIL: %s\n",label);std::exit(1);}}
bool near(float a,float b){return std::fabs(a-b)<0.0002f;}
bool near(Vec3 a,Vec3 b){return near(a.x,b.x)&&near(a.y,b.y)&&near(a.z,b.z);}
FrameInput frame(const GameObjectSample& target){
    FrameInput in{};in.active_camera=true;in.camera_node_present=true;in.target_cam_node_present=true;
    in.target_game_object_present=true;in.target=target;in.normal_design_min_zoom=0;in.normal_design_max_zoom=2;
    in.alternate_design_min_zoom=0;in.alternate_design_max_zoom=2;return in;
}
}

int main(){
    GameObjectSample a{1,true,{2,3,4},true,{10,20,30},false},b{2,true,{50,60,70},false,{},false};
    Vec3 resolved{};
    check(resolve_camera_anchor(a,&resolved)&&near(resolved,{10,20,30}),"custom +736 anchor resolves to pointer +12");
    a.custom_anchor_present=false;
    check(resolve_camera_anchor(a,&resolved)&&near(resolved,{2,3,4}),"missing custom anchor falls back to +352 world position");
    check(!resolve_camera_anchor({},&resolved),"missing GameObject cannot fabricate an anchor");

    Owner owner;owner.enable_damping(false);
    check(owner.set_target(&a,0,nullptr),"SetTarget accepts actual target");
    auto in=frame(a);in.dt_ms=16;FrameOutput out{};
    check(owner.update(in,&out)==Status::transition_position_written&&near(out.camera_world_position,{2,3,4}),
          "zero-duration SetTarget still consumes the source transition snap frame");
    in.dt_ms=16;
    check(owner.update(in,&out)==Status::follow_position_written,"expired transition returns to normal follow update");

    Owner zero_dt_owner;zero_dt_owner.enable_damping(false);
    check(zero_dt_owner.set_target(&a,0,nullptr),"zero-delta fixture target set");
    auto zero_dt=frame(a);FrameOutput zero_dt_out{};
    check(zero_dt_owner.update(zero_dt,&zero_dt_out)==Status::transition_position_written&&
          zero_dt_owner.transition_remaining_ms()==0,"source equality branch snaps at dt=0");
    check(zero_dt_owner.update(zero_dt,&zero_dt_out)==Status::transition_position_written&&
          zero_dt_owner.transition_remaining_ms()==0,"source repeats zero-duration snap while dt remains 0");
    zero_dt.dt_ms=16;
    check(zero_dt_owner.update(zero_dt,&zero_dt_out)==Status::transition_position_written&&
          zero_dt_owner.transition_remaining_ms()<0,"first positive dt exits immediate-target snap state");
    zero_dt.dt_ms=16;
    check(zero_dt_owner.update(zero_dt,&zero_dt_out)==Status::follow_position_written,
          "regular follow starts on the frame after the source snap");

    GameObjectSample old{1,true,{2,3,4},true,{10,20,30},false};
    check(owner.set_target(&b,100,&old),"positive SetTarget captures old source anchor");
    in=frame(b);in.dt_ms=25;
    check(owner.update(in,&out)==Status::transition_position_written&&near(out.camera_world_position,{20,30,40}),
          "transition interpolates captured anchor to current new anchor at 25 percent");
    in.dt_ms=75;
    check(owner.update(in,&out)==Status::transition_position_written&&near(out.camera_world_position,{50,60,70}),
          "transition endpoint snaps to current target and short-circuits follow");
    in=frame(b);in.dt_ms=16;
    check(owner.update(in,&out)==Status::transition_position_written&&owner.transition_remaining_ms()<0,
          "zero remaining transition expires before the regular camera frame");

    check(owner.set_target(nullptr,500,nullptr)&&owner.target_identity()==2,"null SetTarget is source no-op");
    owner.enable_center_offset(true);owner.set_ghost_camera_offset({1,2,3});
    in=frame(b);in.dt_ms=16;in.camera_world_position={0,0,71};
    in.center_offset_source.camera_basis_column={0.8f,0,-0.6f};
    in.center_offset_source.vertical_fov_radians=1.0f;
    in.multiplayer_centering_delta={100,200,300};in.animated_target_cam_offset={4,8,12};
    check(owner.update(in,&out)==Status::follow_position_written&&near(out.target_before_damping,{158.23267f,270,385}),
          "follow runs source CameraBase FOV offset, multiplayer centering, animated rig, then ghost");

    owner.set_ghost_camera_offset({});in=frame(b);in.dt_ms=16;in.use_object_position=true;
    in.animated_target_cam_offset={1,0,0};
    check(owner.update(in,&out)==Status::follow_position_written&&
          near(out.target_before_damping,{50.7071067f,60.7071067f,70}),
          "direct-position camera mode rotates authored XY offset by source 45-degree constants");

    owner.enable_center_offset(false);owner.set_ghost_camera_offset({});owner.set_default_target_distance(10);
    owner.set_zoom(0.8f,0.6f);owner.end_animation();in=frame(b);in.dt_ms=16;
    check(owner.update(in,&out)==Status::follow_position_written&&near(owner.current_zoom(),0.8f)&&
          near(owner.effective_zoom(),0.6f)&&near(out.target_cam_local_position,{0,0,-6}),
          "design zoom provider clamps current/target then uses their minimum times loaded camera distance");
    in.infinite_zoom=true;
    check(owner.update(in,&out)==Status::follow_position_written&&near(owner.effective_zoom(),0.8f)&&
          near(out.target_cam_local_position,{0,0,-8}),"InfiniteZoom selects unclamped current zoom");
    in.infinite_zoom=false;in.zoom_clamp_disabled=true;owner.set_zoom(0.4f,0.2f);
    check(owner.update(in,&out)==Status::follow_position_written&&near(owner.effective_zoom(),0.8f),
          "source zoom-clamp-disabled path preserves previous effective zoom");

    owner.set_zoom(0.8f,0.8f);owner.set_zoom_animation_state(true,false);in.zoom_clamp_disabled=false;
    check(owner.update(in,&out)==Status::follow_position_written&&near(owner.current_zoom(),0.6f)&&
          near(out.target_cam_local_position.z,-6),"active non-preserving animation decays zoom by 0.75");
    owner.set_zoom(0.05f,0.8f);
    check(owner.update(in,&out)==Status::follow_position_written&&near(owner.current_zoom(),0)&&
          near(out.target_cam_local_position.z,0),"animation zoom tail snaps below source 0.1 threshold");

    owner.set_zoom_animation_state(false,false);owner.set_ghost_camera_offset({});owner.enable_damping(true);owner.set_damping_ratio(0.7f);
    in=frame(b);in.dt_ms=100;in.camera_world_position={10,10,10};
    check(owner.update(in,&out)==Status::follow_position_written&&near(owner.damping_velocity(),{28,35,42})&&
          near(out.camera_world_position,{12.8f,13.5f,14.2f}),
          "damping uses (target + stored velocity - camera position) * ratio then dt seconds");
    owner.set_ghost_camera_offset({9,9,9});
    check(owner.set_target(&b,0,nullptr),"retarget to current actor resets ghost camera offset");
    check(near(owner.damping_velocity(),{28,35,42}),"SetTarget preserves damping velocity");
    owner.enable_damping(false);check(near(owner.damping_velocity(),{}),"EnableDamping resets all velocity components");

    in=frame(b);in.dt_ms=16;
    check(owner.update(in,&out)==Status::transition_position_written,
          "immediate retarget consumes its source snap frame");
    in=frame(b);in.dt_ms=16;in.target.clear_camera_target_after_update=true;
    check(owner.update(in,&out)==Status::follow_position_written&&out.target_was_retired&&owner.target_identity()==0,
          "GameObject +129 retires target after completing follow update");
    in.target.identity=999;
    check(owner.update(in,&out)==Status::no_camera_update,"missing canonical target owner cannot update camera");
    std::printf("PASS: CameraLevel source-backed host checks (%d assertions)\n",assertions);
}
