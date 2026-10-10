#include "../camera_animset_v1.hpp"

#include <stdexcept>
#include <string>

namespace {
void require(bool value,const char* message){if(!value)throw std::runtime_error(message);}
}

int main(){
    using namespace dh2::camera_animset_v1;
    Selection selected;selected.name="fixture";selected.idle_clip_id=901;
    selected.idle_path="camera/idle.bdae";
    selected.resources={
        {Resource::Slot::template_animation,0,900,"camera/template.bdae"},
        {Resource::Slot::idle,1,901,"camera/idle.bdae"},
        {Resource::Slot::shake,2,44,"camera/shake.bdae"},
        {Resource::Slot::crit,3,45,"camera/crit.bdae"},
        {Resource::Slot::cam_animation,4,1040,"camera/event.bdae"}};
    dh2::data::Dictionary clips;
    clips.names.resize(1041);clips.values.resize(1041);
    clips.names[1040]="event";clips.values[1040]="camera/event.bdae";

    PlaybackOwner owner;PlayRequest request;std::string error;
    require(owner.bind(selected),"selected AnimSet failed to bind");
    require(owner.level_idle(request,error)&&request.present&&
            request.resource.clip_id==901&&!request.preserve_zoom,
            "entry Idle request differs from source flags");

    dh2::data::AnimationStep step;step.cam=1040;
    require(owner.animation_step(step,-1,request,error)&&request.present&&
            request.resource.clip_id==1040&&request.preserve_zoom,
            "Cam step did not resolve its global AnimDict ID");
    step.cam=-1;step.random_cam={1040};
    require(owner.animation_step(step,1040,request,error)&&request.present&&
            request.resource.clip_id==1040,
            "RandomCam choice did not resolve to the authored resource");
    require(!owner.animation_step(step,45,request,error),
            "RandomCam choice outside its authored group was accepted");

    require(owner.object_event("camera/event",clips,true,request,error)&&request.present&&
            request.resource.clip_id==1040&&request.preserve_zoom,
            "camera/<clip-name> event failed AnimDict-to-AnimSet resolution");
    require(owner.object_event("camera/event",clips,false,request,error)&&!request.present,
            "CanPlayShakeAnim denial did not suppress an event");
    require(owner.combat_shake(true,true,true,request,error)&&request.present&&
            request.resource.slot==Resource::Slot::shake&&request.preserve_zoom,
            "critical Player result failed to select configured Shake");
    require(owner.combat_shake(false,true,true,request,error)&&!request.present&&
            owner.combat_shake(true,true,false,request,error)&&!request.present,
            "Shake request bypassed its source gates");
    require(owner.script_play_camera(true,-1,request,error)&&request.present&&
            request.resource.slot==Resource::Slot::crit&&!request.preserve_zoom,
            "Script_PlayCamera Crit did not use selected Crit");
    require(owner.script_play_camera(false,1040,request,error)&&request.present&&
            request.resource.clip_id==1040&&!request.preserve_zoom,
            "Script_PlayCamera external AnimDict ID did not resolve");
    require(!owner.script_play_camera(false,99,request,error),
            "unregistered Script_PlayCamera AnimDict ID was accepted");
    return 0;
}
