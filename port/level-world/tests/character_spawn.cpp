#include "character_factory.hpp"

#include <array>
#include <cmath>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <stdexcept>
#include <string>
#include <vector>

using namespace dh2::character;
using namespace dh2::character::factory;

namespace {

void require(bool condition,const char* message){if(!condition)throw std::runtime_error(message);}

bool state_equal(const State& a,const State& b){
 return a.current==b.current&&a.flags==b.flags&&a.attack_gate==b.attack_gate&&
  a.move_type==b.move_type&&a.elapsed_ms==b.elapsed_ms&&
  ((std::isnan(a.cached_speed)&&std::isnan(b.cached_speed))||a.cached_speed==b.cached_speed)&&
  a.idle_suppressed==b.idle_suppressed&&a.stop_attack_allowed==b.stop_attack_allowed&&
  a.heading_active==b.heading_active&&a.controller_locked==b.controller_locked&&
  a.dead_alternate==b.dead_alternate&&a.body_present==b.body_present&&
  a.animation_override==b.animation_override&&a.current_animation==b.current_animation;
}

struct Fixture {
 std::vector<Request> calls;
 State* state=nullptr;
 const Facts* facts=nullptr;
 const SpawnFacts* spawn=nullptr;
 bool complete_spawn_on_state_notification=false;
};

void callback(void* context,State* state,const Request* request){
 auto& fixture=*static_cast<Fixture*>(context);
 require(request&&request->reserved==0,"callback request layout");
 fixture.calls.push_back(*request);
 if(request->service==set_animation)state->current_animation=request->argument[0];
 if(request->service==init_physical_object)state->body_present=1;
 if(request->service==remove_body)state->body_present=0;
 if(request->service==raise_event&&request->argument[0]==0x1d&&
    fixture.complete_spawn_on_state_notification){
  fixture.complete_spawn_on_state_notification=false;
  Services services{&fixture,callback};
  require(dh2_character_spawn_event(state,fixture.facts,fixture.spawn,0x22,nullptr,
                                     &services)==1,
          "synchronous Spawn completion callback");
 }
}

void expect_services(const std::vector<Request>& calls,
                     std::initializer_list<Service> expected){
 require(calls.size()==expected.size(),"source service count");
 std::size_t i=0;for(const auto service:expected)
  require(calls[i++].service==service,"source service order");
}

std::uint32_t event_count(const std::vector<Request>& calls,std::uint32_t event){
 std::uint32_t count=0;for(const auto& request:calls)
  if(request.service==raise_event&&request.argument[0]==static_cast<std::int32_t>(event))++count;
 return count;
}

}  // namespace

int main(){
 try{
  Fixture fixture;Services services{&fixture,callback};
  Facts facts;facts.idle=205;facts.stance=4;facts.is_player=0;
  SpawnFacts spawn;spawn.spawn_animation=213;
  spawn.visual_present=1;spawn.raw_fade_in_argument=3000.0f;
  fixture.facts=&facts;fixture.spawn=&spawn;

  // Script_SpawnCharacter exact-name lookup: Limbus blur, Spawn focus, then
  // state-change notification. The virtual restores enabled-byte visibility.
  State actor;actor.current=0;actor.flags=0;actor.elapsed_ms=77;
  ActorRef one{"_prim_Monster_SURPRISE_01",&actor,&facts,&spawn,
               source_character_registered_states};
  fixture.calls.clear();
  require(request_spawn_character(&one,1,"_prim_Monster_SURPRISE_01",&services)==
          SpawnResult::requested,"unique exact actor lookup");
  expect_services(fixture.calls,{reset_controller_lock,set_visible,
      restore_limbus_position,restore_limbus_rotation,revive_character,
      set_animation,clear_ai_target,sync_last_ai_target,cancel_sneaking,
      start_fade_in,raise_event});
  require(fixture.calls[1].argument[0]==1,"Limbus blur restores enabled visibility");
  require(fixture.calls[5].argument[0]==213&&actor.current_animation==213,
          "Spawn uses the exact authored CharAnimTable sequence without stance addition");
  require(fixture.calls[9].scalar==3000.0f,"raw fade property argument retained");
  require(fixture.calls.back().argument[0]==0x1d&&
          fixture.calls.back().argument[1]==0&&fixture.calls.back().identity==0,
          "state notification carries previous Limbus id");
  require(actor.current==1&&actor.flags==0x241&&actor.elapsed_ms==0,
          "Limbus to Spawn state projection");

  // CSSpawn::OnEvent(0x28, "is_interactive") marks the actor and creates its
  // physical object. A differently cased name is not a source match.
  fixture.calls.clear();
  require(dh2_character_spawn_event(&actor,&facts,&spawn,0x28,"Is_Interactive",
                                   &services)==0&&fixture.calls.empty()&&
          !(actor.flags&0x2000u),"interactive event name is exact");
  require(dh2_character_spawn_event(&actor,&facts,&spawn,0x28,"is_interactive",
                                   &services)==1,"interactive animation event");
  expect_services(fixture.calls,{init_physical_object});
  require((actor.flags&0x2000u)&&actor.body_present,"interactive body state");

  // The authored Spawn OnInit registers event 0x22 -> Idle. The body is not
  // initialized twice when the earlier is_interactive event already did it.
  fixture.calls.clear();
  require(dh2_character_spawn_event(&actor,&facts,&spawn,0x22,nullptr,&services)==1,
          "Spawn completion event");
  expect_services(fixture.calls,{set_animation,raise_event});
  require(actor.current==3&&actor.flags==0x2380&&actor.current_animation==205&&
          actor.body_present,"Spawn completion reaches Idle with body");
  require(fixture.calls.back().argument[1]==1&&fixture.calls.back().identity==1,
          "Spawn completion notification previous id");

  // Without the animation's is_interactive marker, CSSpawn::OnBlur performs
  // the one physical-object initialization before Idle focus.
  State fallback;fallback.current=1;fallback.flags=0x241;
  fixture.calls.clear();
  require(dh2_character_spawn_event(&fallback,&facts,&spawn,0x22,nullptr,&services)==1,
          "completion fallback transition");
  expect_services(fixture.calls,{init_physical_object,set_animation,raise_event});
  require(fallback.body_present&&fallback.current==3,
          "CSSpawn blur constructs fallback body");

  // Limbus OnFocus's timer gate uses source facts, and its state update/event
  // body itself never fabricates an Idle transition.
  State limbus;limbus.current=0;spawn.respawn_timer_eligible=1;
  spawn.respawn_delay_ms=900;fixture.calls.clear();
  require(dh2_character_spawn_transition(&limbus,&facts,&spawn,0,&services)==1,
          "same-state Limbus focus");
  expect_services(fixture.calls,{reset_controller_lock,set_visible,
      restore_limbus_position,restore_limbus_rotation,revive_character,
      set_visible,start_timer,clear_all_aggro,raise_event});
  require(fixture.calls[5].argument[0]==0&&fixture.calls[6].argument[0]==900&&
          fixture.calls[6].argument[2]==0x2f,"Limbus respawn timer order and event");
  require(dh2_character_spawn_update(&limbus,&spawn)==0&&limbus.current==0,
          "Limbus update remains source no-op");
  fixture.calls.clear();spawn.can_respawn=0;
  require(dh2_character_spawn_event(&limbus,&facts,&spawn,0x2f,nullptr,&services)==0&&
          fixture.calls.empty()&&limbus.current==0,"CanRespawn rejection is atomic");
  spawn.can_respawn=1;
  require(dh2_character_spawn_event(&limbus,&facts,&spawn,0x2f,nullptr,&services)==1&&
          limbus.current==1,"Limbus timer event enters Spawn when allowed");
  require(dh2_character_spawn_update(&limbus,&spawn)==0&&limbus.current==1,
          "Spawn update remains source no-op");

  // The observed PreSpawn -> Spawn blur preserves the interactive bit only
  // when bit 0x2000 was already set. PreSpawn focus is intentionally outside
  // this slice; this validates only CSSpawn's source predecessor branch.
  State prespawn;prespawn.current=17;prespawn.flags=0x3300;
  fixture.calls.clear();
  require(dh2_character_spawn_transition(&prespawn,&facts,&spawn,1,&services)==1,
          "PreSpawn predecessor to Spawn");
  expect_services(fixture.calls,{set_visible,revive_character,
      enable_collisions,set_animation,clear_ai_target,sync_last_ai_target,
      cancel_sneaking,start_fade_in,raise_event});
  require(prespawn.flags==0x2241,"PreSpawn interactive bit preserved by Spawn focus");

  // Factory misses, duplicate names, malformed records and unregistered
  // Spawn states are fail-closed: no state mutation and no callback.
  const State snapshot=actor;
  fixture.calls.clear();
  require(request_spawn_character(&one,1,"missing",&services)==SpawnResult::lookup_miss&&
          state_equal(actor,snapshot)&&fixture.calls.empty(),
          "missing-name lookup atomicity");
  ActorRef duplicate[2]={one,one};
  require(request_spawn_character(duplicate,2,"_prim_Monster_SURPRISE_01",&services)==
          SpawnResult::ambiguous_name&&state_equal(actor,snapshot)&&
          fixture.calls.empty(),"duplicate-name lookup atomicity");
  require(request_spawn_character(&one,1,"_prim_monster_surprise_01",&services)==
          SpawnResult::lookup_miss&&fixture.calls.empty(),"case-sensitive lookup");
  ActorRef unregistered=one;unregistered.registered_state_mask=state_bit(0)|state_bit(3);
  require(request_spawn_character(&unregistered,1,"_prim_Monster_SURPRISE_01",&services)==
          SpawnResult::spawn_state_unregistered&&
          state_equal(actor,snapshot)&&fixture.calls.empty(),
          "unregistered Spawn state atomicity");
  ActorRef reserved=one;SpawnFacts malformed_spawn=spawn;malformed_spawn.reserved_zero=1;
  reserved.spawn_facts=&malformed_spawn;
  require(request_spawn_character(&reserved,1,"_prim_Monster_SURPRISE_01",&services)==
          SpawnResult::source_state_rejected&&state_equal(actor,snapshot)&&fixture.calls.empty(),
          "reserved Spawn fact is rejected atomically");

  // Same-state _SetState requests still blur/focus and emit event 0x1d.
  actor.current=1;actor.flags=0x241;fixture.calls.clear();
  require(request_spawn_character(&one,1,"_prim_Monster_SURPRISE_01",&services)==
          SpawnResult::requested,"repeated named Spawn request");
  require(actor.current==1&&event_count(fixture.calls,0x1d)==1&&
          event_count(fixture.calls,0x22)==0,"same-state request remains source transition");

  // Callback re-entry after 0x1d can complete Spawn synchronously. State is
  // stored before OnFocus/notification, matching native _SetState ordering.
  State reentrant;reentrant.current=0;fixture.calls.clear();fixture.state=&reentrant;
  fixture.complete_spawn_on_state_notification=true;
  require(dh2_character_spawn_transition(&reentrant,&facts,&spawn,1,&services)==1&&
          reentrant.current==3,"source state notification synchronous completion");

  std::printf("{\"spawn_transition_cases\":%u,\"factory_atomicity_cases\":%u,\"ordered_service_requests\":%zu,\"limbus_spawn_idle_path\":true,\"interactive_event_body\":true,\"fade_boundary_is_stub\":true,\"on_update_invents_no_transition\":true,\"mismatches\":0}\n",
              10u,5u,fixture.calls.size());
  return 0;
 }catch(const std::exception& failure){
  std::fprintf(stderr,"character spawn audit: %s\n",failure.what());return 1;
 }
}
