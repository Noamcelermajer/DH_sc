#include "../combat_application.hpp"
#include <cstring>
#include <iostream>
#include <stdexcept>

namespace {
using namespace dh2::data;
void check(bool condition,const char* message){if(!condition)throw std::runtime_error(message);}
struct Observation {
 const PropertyView* defender;
 const CombatActorState* state;
 std::int32_t hp=0;
 std::uint32_t dead=0,threat_bits=0,calls=0;
};
void before_hit(void* context,float threat){
 auto* observation=static_cast<Observation*>(context);
 if(!observation)return;
 ++observation->calls;
 observation->hp=observation->defender->resolved[36];
 observation->dead=observation->state->dead;
 std::memcpy(&observation->threat_bits,&threat,sizeof threat);
}
}

int main(){try{
 using namespace dh2::data;
 PropertyRules rules{};rules.types.fill(8);
 PropertyState attacker{},defender{};
 attacker.resolved[204]=256;
 defender.resolved[36]=10000;defender.resolved[38]=20000;
 auto attacker_view=property_view(rules,attacker),defender_view=property_view(rules,defender);
 CombatActorState attacker_state{},defender_state{};
 CombatResult result{};result.amount=1;
 MonsterApplication application{};
 Observation observation{&defender_view,&defender_state};
 MonsterApplicationRequest request{&result,&attacker_view,&defender_view,&attacker_state,&defender_state,&before_hit,&observation};

 const auto hp_before=defender.resolved[36];
 check(dh2_combat_apply_monster(&application,&request)==0,"Nonlethal application failed");
 std::uint32_t returned_threat=0;std::memcpy(&returned_threat,&application.threat,sizeof application.threat);
 check(observation.calls==1&&observation.hp==hp_before&&observation.dead==0&&
       observation.threat_bits==returned_threat&&application.hit_called==1&&
       application.health.before==hp_before&&application.health.after<hp_before&&
       defender_state.dead==0,"Aggro callback was not before HitFor and its returned threat");

 defender.resolved[36]=1;result.amount=1;observation.calls=0;
 check(dh2_combat_apply_monster(&application,&request)==0,"Lethal application failed");
 check(observation.calls==1&&observation.hp==1&&observation.dead==0&&
       application.health.kill_requested==1&&defender_state.dead==1&&
       defender.resolved[36]==0,"Aggro callback did not precede lethal HitFor/death writes");

 result.amount=0;observation.calls=0;
 check(dh2_combat_apply_monster(&application,&request)==0&&observation.calls==0&&
       application.hit_called==0,"No-hit result invoked the callback");

 result.amount=1;result.mask=0x400000u;observation.calls=0;
 const auto old_application=application;const auto old_defender=defender;
 const auto old_state=defender_state;const auto old_result=result;
 check(dh2_combat_apply_monster(&application,&request)==1&&observation.calls==0&&
       std::memcmp(&application,&old_application,sizeof application)==0&&
       std::memcmp(&defender,&old_defender,sizeof defender)==0&&
       std::memcmp(&defender_state,&old_state,sizeof defender_state)==0&&
       std::memcmp(&result,&old_result,sizeof result)==0,
       "Rejected application invoked callback or mutated its inputs");
 std::cout<<"pre-hit aggro ordering: nonlethal, lethal, no-hit and rejection cases passed\n";
 return 0;
}catch(const std::exception& error){std::cerr<<error.what()<<'\n';return 1;}}
