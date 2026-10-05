#include "model_renderer.hpp"
#include "frustum_runtime.hpp"
#include "mod_assets.hpp"
#include "scene.hpp"
#include "textures.hpp"
#include "animation.hpp"
#include "skinning.hpp"
#include "world.hpp"
#include "objects.hpp"
#include "animation_tables.hpp"
#include "animation_scheduler.hpp"
#include "animation_bank.hpp"
#include "class_tables.hpp"
#include "skill_tables.hpp"
#include "player_savegame_v1.hpp"
#include "savegame_options_v1.hpp"
#include "level_tables.hpp"
#include "level_construction_fields.hpp"
#include "lua_script_level_queries.hpp"
#include "properties.hpp"
#include "vitals.hpp"
#include "combat_events.hpp"
#include "combat_result.hpp"
#include "health.hpp"
#include "combat_application.hpp"
#include "ai.hpp"
#include "aggro.hpp"
#include "navigation_objects.hpp"
#include "navigation_avoidance.hpp"
#include "navigation_producers.hpp"
#include "navigation_heading.hpp"
#include "actor_runtime.hpp"
#include "actor_blended_playback.hpp"
#include "physical_world.hpp"
#include "character_scene.hpp"
#include "character_state.hpp"
#include "character_timers.hpp"
#include "character_coordinator.hpp"
#include "character_factory.hpp"
#include "crypt_spawn_script_session.hpp"
#include "character_stance.hpp"
#include "character_controller_commands.hpp"
#include "character_path_commands.hpp"
#include "ghost_ai_owner.hpp"
#include "../../../../../../port/level-world/ais_external_init_callbacks.hpp"
#include "character_ai_initialization.hpp"
#include "character_ai_association.hpp"
#include "character_ai_classification.hpp"
#include "character_zonability.hpp"
#include "character_level_runtime.hpp"
#include "character_script_lifecycle.hpp"
#include "character_script_selection.hpp"
#include "ais_external_initialization.hpp"
#include "ais_external_init_vcb.hpp"
#include "native_debug_files.hpp"
#include "native_character_list.hpp"
#include "native_ghost_skills.hpp"
#include "native_player_skills.hpp"
#include "object_update_culling.hpp"
#include "character_ai_update_all_skills.hpp"
#include "character_skill_state_queries.hpp"
#include "../../../../../player-info-level/player_manager_host_level.hpp"
#include "navigation_producers.hpp"
#include <GLES2/gl2.h>
#include <android/log.h>
#include <algorithm>
#include <array>
#include <cmath>
#include <cstdio>
#include <map>
#include <memory>
#include <set>
#include <unordered_map>
#include <functional>
#include <stdexcept>
#include <vector>
#include <chrono>
#include <cctype>
#include <cstring>

namespace model_renderer {
namespace {
using Matrix=std::array<float,16>;
struct NativeSourceCamera {
 dh2::engine_camera::frustum_runtime::Matrix matrix{};
 dh2::engine_camera::frustum_runtime::Frustum frustum{};
 std::uint64_t frames=0;
 int width=0,height=0;
};
NativeSourceCamera source_camera;
using Vertex=dh2::objects::Vertex;
std::string mod_root;
std::string runtime_root;
struct Draw{GLuint vertices=0,indices=0,diffuse=0,alpha=0;GLsizei count=0;unsigned node=0;dh2::scene::Material material;
 dh2::skinning::Skin skin;std::vector<Vertex> cpu_vertices;std::vector<std::array<float,3>> rest_positions;
 bool environment=false;Matrix placement{};};
std::vector<Draw> draws;std::vector<GLuint> images;GLuint program=0;
struct AggroStorage {
 std::vector<dh2::data::AggroEntry> outgoing,incoming;unsigned out_count=0,in_count=0;
 void initialize(unsigned capacity){outgoing.resize(capacity);incoming.resize(capacity);out_count=in_count=0;}
};
struct SearchObjectProjection {
 dh2::character::aggro_search::GameObject object{};
 dh2::character::aggro_search::Character character{};
 std::uint8_t is_character=0;
};
struct SpawnOwner;
struct NativeCharAIProjection;
struct ObjectActor:dh2::objects::Record {
 dh2::data::AnimationScheduler scheduler;double cursor=0;unsigned completions=0;std::string state="Idle";
 dh2::data::PropertySheet base_class{};int class_id=-1;
 dh2::data::PropertyState properties;
 dh2::animation::EventCursor event_cursor;unsigned animation_events=0;
 dh2::data::CombatActorState combat_state;int combat_target=-1;bool pending_death=false;
 AggroStorage aggro;std::uint64_t identity=0;unsigned target_alive=0,target_sight=0;bool target_seeking=false,ai_attack=false;
 SearchObjectProjection search_projection{};
 std::shared_ptr<SpawnOwner> spawn_owner;
 std::shared_ptr<NativeCharAIProjection> native_ai;
 ObjectActor(const dh2::objects::Record& r):Record(r){}
};
struct ObjectGroup{dh2::objects::Resource resource;std::vector<Draw> draws;std::vector<ObjectActor> instances;std::map<int,dh2::animation::Player> clips;int animation_table=-1;};
std::uint64_t snapshot_checksum(const dh2::data::PropertySheet& sheet){
 std::uint64_t result=14695981039346656037ull;for(auto value:sheet)for(unsigned i=0;i<4;++i){result^=(std::uint32_t(value)>>(8*i))&255;result*=1099511628211ull;}return result;
}
std::vector<ObjectGroup> object_groups;
std::vector<ObjectActor> saved_actors;
struct PlayerCombat {
 dh2::data::PropertyState properties;dh2::data::CombatActorState life;
 std::shared_ptr<dh2::data::PlayerSavegameV1> savegame;
 int animation_table=-1,target=-1;unsigned attempts=0,received=0;
 bool pending_death=false;std::uint64_t death_target=0;
 AggroStorage aggro;
 // Source Character constructor zeros +14f0. UseMana reads this separate
 // exemption byte; it is unrelated to the movement type at +53c.
 std::uint8_t mana_exempt_14f0=0;
 // ObjectBase C1/C2 source stores +110=-1 and +118=0. These live fields,
 // shared by regen/remote predicates, are not an inferred online flag.
 dh2::object_update_culling::Object object_update_fields{0,UINT32_MAX,0,0,{0,0}};
};
PlayerCombat prince_combat;
SearchObjectProjection prince_search_projection{};
struct NativeMonsterInitialization;
struct NativeCharAIProjection {
 std::uintptr_t character_identity=0,ai_identity=0;
 dh2::character_ai_initialization::State state{};
 dh2::character_ai_initialization::Result constructor_result{};
 std::shared_ptr<NativeMonsterInitialization> initialization;
};
struct NativeCharAIRegistry {
 std::vector<std::shared_ptr<NativeCharAIProjection>> projections;
 std::vector<std::uintptr_t> queue_order;
 std::unordered_map<std::uintptr_t,NativeCharAIProjection*> by_character;
 bool ready=false;
 void clear(){projections.clear();queue_order.clear();by_character.clear();ready=false;}
} source_char_ai;
std::shared_ptr<NativeCharAIProjection> prince_source_ai;
struct SearchWorld {
 dh2::character::aggro_search::RoomRegistry registry{};
 dh2::character::aggro_search::Room room_sentinel{};
 std::vector<dh2::character::aggro_search::Room> rooms;
 std::vector<dh2::character::aggro_search::ObjectEntry> object_heads,object_entries;
 std::unordered_map<std::uintptr_t,dh2::character::aggro_search::Character*> characters;
 std::unordered_map<std::uintptr_t,dh2::character::aggro_search::GameObject*> objects;
 bool ready=false;
 void clear(){registry={};room_sentinel={};rooms.clear();object_heads.clear();object_entries.clear();characters.clear();objects.clear();ready=false;}
} search_world;
dh2::native::character_list::Owner native_characters;
dh2::data::AiTables actor_ai_tables;bool enemy_ai_enabled=true;
// Typed projection of the actual loaded AI catalogue; its storage stays live
// through each synchronous source classifier. Native pointers are full-width.
std::vector<dh2::character_ai_classification::AiRow> actor_ai_classification_rows;
dh2::character_ai_classification::AiTable actor_ai_classification_table{};
std::int32_t native_classification_service(void*,dh2::character_ai_classification::State* state,
        const dh2::character_ai_classification::Request* request,
        dh2::character_ai_classification::Response* response) {
 using Operation=dh2::character_ai_classification::Operation;
 if(!state||!request||!response||request->character!=state->character||
    actor_ai_classification_rows.size()!=actor_ai_tables.rows.size())return 1;
 switch(request->operation) {
 case Operation::ai_count:response->count=std::int32_t(actor_ai_tables.rows.size());return 0;
 case Operation::faction_count:response->count=std::int32_t(actor_ai_tables.factions.size());return 0;
 case Operation::ai_table:response->table=&actor_ai_classification_table;return 0;
 case Operation::find_player_name:
  if(!request->name)return 1;
  response->match=std::strstr(request->name,"PlayerCharacter");return 0;
 }
 return 1;
}
std::uint32_t native_character_classification(ObjectActor& actor,dh2::character_ai_classification::Query query) {
 using namespace dh2::character_ai_classification;
 if(actor.kind!=1||actor.combat_state.dead>255)throw std::runtime_error("Native Character classification owner unavailable");
 // The native port's normalized death owner and DACT instance name are
 // adapter inputs. Ghost type4 avoids the type0 name branch; exact source
 // Character name/dead-byte producers for all actors remain to be connected.
 State state{actor.identity,actor.properties.resolved[1],actor.properties.resolved[0],
             actor.name.c_str(),std::uint8_t(actor.combat_state.dead)};
 const Services services{nullptr,native_classification_service};Result result{};
 if(dh2::character_ai_classification::query(query,&state,&services,&result)!=Status::complete)
  throw std::runtime_error("Native source Character classification failed");
 return result.word;
}
const dh2::data::AiProps* native_actor_ai_props(ObjectActor& actor) {
 const auto id=native_character_classification(actor,dh2::character_ai_classification::Query::ai_id);
 if(id>=actor_ai_tables.rows.size())throw std::runtime_error("Native source Character AI row out of bounds");
 return &actor_ai_tables.rows[id];
}
std::int32_t native_zonability_service(void* raw,dh2::character_zonability::State*,
        const dh2::character_zonability::Request* request,dh2::character_zonability::Response* response) {
 if(!raw||!request||!response)return 1;
 auto& actor=*static_cast<ObjectActor*>(raw);
 if(request->character!=actor.identity)return 1;
 const auto query=request->operation==dh2::character_zonability::Operation::is_player?
  dh2::character_ai_classification::Query::player:dh2::character_ai_classification::Query::faerie;
 response->word=native_character_classification(actor,query);return 0;
}
std::uint32_t native_actor_zonability(ObjectActor& actor) {
 dh2::character_zonability::State state{actor.identity};
 const dh2::character_zonability::Services services{&actor,native_zonability_service};
 dh2::character_zonability::Result result{};
 if(dh2::character_zonability::evaluate(&state,&services,&result)!=dh2::character_zonability::Status::complete)
  throw std::runtime_error("Native source Character zonability failed");
 return result.zonable;
}
std::map<int,dh2::animation::Player> prince_attack_clips;
dh2::data::AnimationBank prince_animation_bank;
dh2::data::PropertyRules actor_property_rules;
// Original CharProperties::s_temp is shared process storage, borrowed by every
// skill callback. ClearProps(true) seeds it from the current Character owner.
dh2::data::PropertySheet skill_property_temp{};
dh2::data::LevelTables actor_level_tables;
dh2::data::ClassTables actor_class_tables;
struct NativeSkillCatalogue {
 std::shared_ptr<const dh2::player_skill_tables_adapter::Tables> tables;
 std::vector<std::uint8_t> faery_constants_bytes;
 dh2_pycst_view faery_constants{};
 std::vector<std::uint8_t> ai_constants_bytes;
 dh2_pycst_view ai_constants{};
};
std::shared_ptr<const NativeSkillCatalogue> actor_skill_catalogue;
std::vector<dh2::data::ClassRow> actor_class_rows;
std::vector<std::string> actor_character_fields;
std::vector<std::uint8_t> actor_design_bytes;
dh2_pycst_view actor_design{};
dh2::character_script_set_level::Application native_application{};
dh2::data::savegame_options_v1::Owner native_saved_options;
// Source PlayerSavegame::m_difficultyLevel has initial word0. Full profile
// selection/loading is pending; this is separate from the Level difficulty.
std::int32_t native_save_difficulty=0;
dh2::character_level_runtime::DesignBinding native_design_binding{};
std::unique_ptr<dh2::native::debug_files::Backend> native_debug;

struct NativeHostPlayer {
 // The source embedded fallback PlayerInfo constructor initializes +330 to 0.
 dh2::character_level_member::IntMember level_member{};
 std::uint64_t change_serial=0;
 dh2::player_manager_host_level::PlayerInfoProjection player{};
 dh2::player_manager_host_level::PlayerRegistry registry{};
 std::uint8_t online=0; // Explicit offline development session; no network owner.
 NativeHostPlayer() {
  player={reinterpret_cast<std::uintptr_t>(&player),-1,&level_member};
  registry={reinterpret_cast<std::uintptr_t>(&registry),nullptr,0,&player};
 }
 static std::int32_t read_online(void* raw,std::uint8_t* value) {
  *value=static_cast<NativeHostPlayer*>(raw)->online;return 0;
 }
 dh2::player_manager_host_level::Services services() {
  return {this,read_online,nullptr,nullptr,nullptr,nullptr,nullptr,nullptr};
 }
} native_host;
// The viewport owns the bounded Level constructor fields. Its normal-difficulty
// development argument is explicit; the original GSLevel/save stack is pending.
dh2::level_construction_fields::State actor_level_fields{-1,-1,0,{0,0,0},0};
std::string actor_level_file;
bool actor_level_fields_ready=false;

struct NativeLevelQuery {
 const float* number=nullptr;
 std::int32_t pushed[2]{};
 unsigned count=0;
 static std::int32_t application(void*,std::uintptr_t* output) {
  if(!native_application.identity)return 1;
  *output=native_application.identity;return 0;
 }
 static std::int32_t manager(void*,std::uintptr_t app,std::uintptr_t* output) {
  if(app!=native_application.identity)return 1;
  *output=native_host.registry.manager_identity;return 0;
 }
 static std::int32_t hosting(void*,std::uintptr_t manager_identity,std::uintptr_t* output) {
  if(manager_identity!=native_host.registry.manager_identity)return 1;
  auto services=native_host.services();dh2::player_manager_host_level::Result result{};
  if(dh2::player_manager_host_level::get_hosting_level(&native_host.registry,&services,&result)!=dh2::player_manager_host_level::Status::complete)return 1;
  *output=result.player_identity;return 0;
 }
 static std::int32_t player_word(void*,std::uintptr_t player_identity,std::uint32_t offset,std::int32_t* output) {
  if(player_identity!=native_host.player.identity||offset!=0x330)return 1;
  *output=native_host.level_member.value;return 0;
 }
 static std::int32_t current(void*,std::uintptr_t* output) {
  *output=actor_level_fields_ready?reinterpret_cast<std::uintptr_t>(&actor_level_fields):0;return 0;
 }
 static std::int32_t field(void*,std::uintptr_t level_identity,std::uint32_t offset,std::int32_t* output) {
  if(!actor_level_fields_ready||level_identity!=reinterpret_cast<std::uintptr_t>(&actor_level_fields))return 1;
  if(offset==0x3c)*output=actor_level_fields.level_list_index_3c;
  else if(offset==0x118)*output=actor_level_fields.difficulty_118;
  else return 1;
  return 0;
 }
 static std::int32_t value(void* raw,std::uintptr_t identity,float* output) {
  auto& query=*static_cast<NativeLevelQuery*>(raw);
  if(!query.number||identity!=reinterpret_cast<std::uintptr_t>(query.number))return 1;
  *output=*query.number;return 0;
 }
 static std::int32_t convert(void*,float number,std::int32_t* output) {
  if(!std::isfinite(number)||number < -2147483648.f || number >= 2147483648.f)return 1;
  *output=static_cast<std::int32_t>(number);return 0;
 }
 static std::int32_t table(void*,std::uintptr_t* output) {
  *output=reinterpret_cast<std::uintptr_t>(&actor_level_tables);return 0;
 }
 static std::int32_t word(void*,std::uintptr_t table_identity,std::uint32_t row,std::uint32_t offset,std::int32_t* output) {
  if(table_identity!=reinterpret_cast<std::uintptr_t>(&actor_level_tables))return 1;
  return dh2::data::read_level_range_word(actor_level_tables,row,offset,*output)?0:1;
 }
 static std::int32_t push(void* raw,std::int32_t value) {
  auto& query=*static_cast<NativeLevelQuery*>(raw);
  if(query.count>=2)return 1;
  query.pushed[query.count++]=value;return 0;
 }
 dh2::lua_script_level_queries::Services services() {
  return {this,application,manager,hosting,player_word,current,field,value,convert,table,word,push};
 }
};

std::int32_t native_current_level_range(const float* difficulty,std::int32_t output[2],std::uint32_t* count) {
 if(!output||!count)return 1;
 NativeLevelQuery query;query.number=difficulty;
 dh2::lua_script_level_queries::Argument front{reinterpret_cast<std::uintptr_t>(difficulty),3,0};
 dh2::lua_script_level_queries::Arguments arguments{difficulty?&front:nullptr,difficulty?1u:0u,0};
 auto services=query.services();dh2::lua_script_level_queries::Result result{};
 if(dh2::lua_script_level_queries::get_current_level_range(&arguments,&services,&result)!=dh2::lua_script_level_queries::Status::complete)return 1;
 for(unsigned i=0;i<query.count;++i)output[i]=query.pushed[i];
 *count=query.count;return 0;
}

std::int32_t native_host_level(std::int32_t* output) {
 if(!output)return 1;
 NativeLevelQuery query;auto services=query.services();dh2::lua_script_level_queries::Result result{};
 if(dh2::lua_script_level_queries::get_host_player_level(&services,&result)!=dh2::lua_script_level_queries::Status::complete||query.count!=1)return 1;
 *output=query.pushed[0];return 0;
}
std::int32_t native_host_difficulty(std::int32_t* output) {
 if(!output)return 1;
 NativeLevelQuery query;auto services=query.services();dh2::lua_script_level_queries::Result result{};
 if(dh2::lua_script_level_queries::get_host_player_difficulty(&services,&result)!=dh2::lua_script_level_queries::Status::complete||query.count!=1)return 1;
 *output=query.pushed[0];return 0;
}
dh2::data::CombatRandom combat_random{0xD22026u,0};unsigned combat_hits=0;
dh2::data::AnimationTables actor_animation_tables;dh2::data::Dictionary actor_clip_table;dh2::data::AnimationRandom actor_random;
std::vector<dh2::objects::Record> world_objects;
int inspected_object=-1;
std::chrono::steady_clock::time_point object_epoch;
bool enabled=false;float center[3]{},radius=1,yaw=-1.57f,pitch=.35f,zoom=1;
dh2::scene::Scene current_scene;dh2::animation::Player player;
dh2::animation::Player walk_player;dh2::world::Level level;dh2::world::Point actor_position{};
bool world_mode=false,walking=false,resume_world=false;float move_x=0,move_y=0,heading=0;
dh2::character::crypt_scripts::SpawnSession crypt_spawn_script;
dh2_crypt_spawn_trigger::State crypt_trigger_state{};
dh2_zone_contact::Vec3 crypt_trigger_position{},crypt_trigger_scale{};
unsigned crypt_trigger_room=0;
unsigned movement_steps=0,blocked_steps=0;
unsigned native_heading_updates=0;
std::chrono::steady_clock::time_point last_frame;
std::chrono::steady_clock::time_point epoch;
// The touch-to-destination and follow-camera producers remain development
// controls. Actor pose/movement, body services and floor validation below use
// the recovered source pipeline and its original scene/Step/actor ordering.
dh2::physical::NativeWorld actor_world;
dh2::actor::RuntimeState prince_runtime{};
dh2::physical::NativeBody prince_body{};
dh2::visual::SceneBinding prince_visual;
dh2::actor::BlendedPlayback prince_locomotion;
dh2::character::Coordinator prince_character(0x100000001ull);
dh2::character::State& prince_state=prince_character.state;
b2FilterData prince_initial_filter;
bool prince_scene_phase=false;
std::uint64_t pending_character_services=0;
void request_prince_death();
int prince_event(unsigned,std::uint64_t);
dh2::character::Facts prince_facts();
void character_service(void*,dh2::character::State*,const dh2::character::Request*);
std::uint32_t prince_flags=0x2380,prince_move_type=0;
// Recovered controller constructor and shared BSS initial values. Original
// script/HUD producers will write these owned native gates as they are bound.
std::uint32_t controller_global_blocked=0,prince_controller_forced=0;
float scene_clock=0;bool native_actor_ready=false;
bool frozen=false,animation_failed=false,frozen_cursor_logged=false;int sampled_ms=0;
unsigned native_actor_frames=0,native_physics_steps=0;
std::vector<dh2::navigation::ObstacleEntry> live_obstacle_entries;
std::vector<unsigned> live_obstacle_floors,live_workspace_floors;
std::vector<dh2::navigation::PathSegment> live_path_segments,live_workspace_segments;
std::vector<dh2::navigation::AvoidanceActor> live_workspace_actors;
dh2::navigation::ObstacleRegistry live_registry{};
dh2::navigation::ControllerWorkspace live_workspace{};
dh2::navigation::MotionPolicy live_motion_policy{};
struct BodyOwner {
 dh2::physical::WorldObject services{};
 dh2::navigation::PhysicalContact contact{};
 dh2::physical::NativeBody* native=nullptr;
 unsigned additions=0,results=0;
 BodyOwner(){services.context=this;services.test=test;services.contact=collision;services.velocity=velocity;}
 static unsigned test(void* a,void* b,const dh2::physical::Filter*,const dh2::physical::Filter*){
  return dh2_nav_can_collide(&static_cast<BodyOwner*>(a)->contact,&static_cast<BodyOwner*>(b)->contact)==1;
 }
 static void collision(void* a,dh2::physical::ContactEvent event,void*,const float*,unsigned){
  auto& owner=*static_cast<BodyOwner*>(a);owner.additions+=event==dh2::physical::ContactEvent::add;
  owner.results+=event==dh2::physical::ContactEvent::result;
 }
 static void velocity(void* a,float* xy){
  const auto* n=static_cast<BodyOwner*>(a)->native;
  if(n&&n->body){const auto v=n->body->GetLinearVelocity();xy[0]=v.x*100.f;xy[1]=v.y*100.f;}
  else xy[0]=xy[1]=0;
 }
 void set_filter(const dh2::physical::CharacterBodyConfig& c){
  contact={1,0,1,1,{std::int16_t(c.shape.group_index),std::uint16_t(c.shape.category_bits),std::uint16_t(c.shape.mask_bits),1},{}};
 }
};
BodyOwner prince_body_owner;
unsigned actor_virtual_service(void*,unsigned event,float* payload);
std::vector<std::unique_ptr<BodyOwner>> decor_body_owners;
std::vector<dh2::physical::NativeBody> decor_bodies;
// Bounded first-spawn runtime for authored direct-property Limbus actors.
// Source visibility follows SetVisible(false/true). This fresh-MGP slice
// starts with the ObjectBase constructor enabled byte1; disable/serialized
// enable producers and complete AI/Lua ownership remain external.
struct SpawnOwner {
 dh2::character::Coordinator character;
 ObjectActor* actor=nullptr;
 int animation_table=-1;
 dh2::character::Facts facts{};
 dh2::character::SpawnFacts spawn{};
 dh2::physical::CharacterBodyConfig config{};
 dh2::physical::NativeBody body{};
 BodyOwner body_owner;
 // Stable per-actor route, native body view, and scene/root-motion owner.
 // These remain owned by the shared SpawnOwner across vector/world callbacks.
 dh2::actor::RuntimeState runtime{};
 std::vector<dh2::navigation::PathSegment> route_storage;
 dh2::scene::Scene scene;
 dh2::visual::SceneBinding visual;
 std::vector<std::vector<dh2::objects::Vertex>> render_vertices;
 dh2::character::PathToState40 path_to{};
 dh2::character::PathToServices16 path_services{};
 dh2::physical::CharacterOwnerBounds owner_bounds{};
 float visual_scale[3]{1,1,1};
 int sampled_clip=-1;
 bool runtime_ready=false;
 unsigned body_creations=0;
 unsigned idle_updates=0;
 bool source_enabled=true,source_visible=true;
 explicit SpawnOwner(std::uint64_t id):character(id){body_owner.native=&body;}
 static void service(void*,dh2::character::State*,const dh2::character::Request*);
 void initialize_runtime(const ObjectGroup&,const dh2::physical::CharacterOwnerBounds&,
                         const float* scale);
 void register_runtime_object();
 void update_runtime(const dh2::objects::Resource&,const dh2::animation::Player&,
                     int animation_ms,unsigned dt_ms,unsigned frame);
 int request_path(const float* target);
 static int find_path(void*,const dh2::character::PathToRequest32*,std::uint32_t*);
 void bind(ObjectActor& owner,int table) {
  actor=&owner;animation_table=table;
  character.bind({this,[](void* raw){return static_cast<SpawnOwner*>(raw)->facts;},
   {this,service},nullptr,nullptr,[](void* raw){return static_cast<SpawnOwner*>(raw)->spawn;}});
 }
 void create_body() {
  if(!actor||!config.enabled)throw std::runtime_error("Spawn body configuration unavailable");
  // A repeated source InitPhysicalObject request replaces the prior backend
  // body while retaining the stable native owner/contact view.
  if(body.body)actor_world.destroy(body.body);
  body_owner.set_filter(config);
  body={actor_world.create_character(config,&body_owner.services),config.radius,config.pinned};
  if(!body.body)throw std::runtime_error("Spawn physical body creation failed");
  ++body_creations;
  register_runtime_object();
  __android_log_print(ANDROID_LOG_INFO,"DH2Native","Spawn body ready | %s | creations %u | radius %.9g | category %x | mask %x",actor->name.c_str(),body_creations,body.radius*100.f,config.shape.category_bits,config.shape.mask_bits);
 }
};
void retire_native_monster_scripts(bool preserve);
void clear_actor_world(bool preserve_scripts=false) {
 retire_native_monster_scripts(preserve_scripts);
 actor_world.clear();
 native_characters.clear();
 search_world.clear();
 source_char_ai.clear();
 actor_level_fields_ready=false;
 for(auto& group:object_groups)for(auto& actor:group.instances)if(actor.spawn_owner){
  actor.spawn_owner->body={};actor.spawn_owner->actor=nullptr;
  actor.spawn_owner->runtime_ready=false;actor.spawn_owner->sampled_clip=-1;
  actor.spawn_owner->route_storage.clear();actor.spawn_owner->render_vertices.clear();
 }
}

namespace {
constexpr std::uintptr_t kNativeCharAIDispatchToken=0xD2CA1001u;
struct CharAIAppendContext { NativeCharAIRegistry* registry; };
std::int32_t append_char_ai(void* raw,dh2::character_ai_initialization::State* state,
                            std::uintptr_t ai) {
 if(!raw||!state||!ai||state->identity!=ai)return 1;
 auto& registry=*static_cast<CharAIAppendContext*>(raw)->registry;
 if(registry.queue_order.size()>=registry.projections.capacity()||
    std::find(registry.queue_order.begin(),registry.queue_order.end(),ai)!=registry.queue_order.end())return 1;
 registry.queue_order.push_back(ai);
 return 0;
}

void initialize_char_ai_registry() {
 source_char_ai.clear();
 std::size_t character_count=1; // The native Player is constructed before level Characters.
 for(const auto& object:world_objects)character_count+=object.kind==1;
 source_char_ai.projections.reserve(character_count);
 source_char_ai.queue_order.reserve(character_count);
 source_char_ai.by_character.reserve(character_count);
 CharAIAppendContext context{&source_char_ai};
 const dh2::character_ai_initialization::Services services{&context,append_char_ai};
 unsigned fresh=0,retained=0;
 const auto construct=[&](std::uintptr_t character_identity,std::uintptr_t ai_identity,
                          std::shared_ptr<NativeCharAIProjection>* retained_owner) {
  if(retained_owner&&*retained_owner) {
   const auto& projection=*retained_owner;
   if(projection->character_identity!=character_identity||projection->ai_identity!=ai_identity||
      projection->state.owner_04!=character_identity)
    throw std::runtime_error("Retained native CharAI identity differs");
   source_char_ai.projections.push_back(projection);source_char_ai.queue_order.push_back(ai_identity);
   if(!source_char_ai.by_character.emplace(character_identity,projection.get()).second)
    throw std::runtime_error("Duplicate retained Character-to-CharAI projection");
   ++retained;return;
  }
  auto projection=std::make_shared<NativeCharAIProjection>();
  projection->character_identity=character_identity;
  projection->ai_identity=ai_identity;
  projection->state.identity=ai_identity;
  const auto status=dh2::character_ai_initialization::construct(
   &projection->state,kNativeCharAIDispatchToken,&services,&projection->constructor_result);
  if(status!=dh2::character_ai_initialization::Status::complete||
     projection->constructor_result.queue_calls!=1||!projection->constructor_result.queued)
   throw std::runtime_error("Source CharAI constructor projection/registration failed");
  if(dh2::character_ai_association::associate(&projection->state,character_identity)!=
     dh2::character_ai_association::Status::complete ||
     projection->state.owner_04!=character_identity || projection->state.active_ais_1c ||
     projection->state.alternate_ais_20)
   throw std::runtime_error("Source CharAI Character association failed");
  auto* stable=projection.get();
  if(retained_owner)*retained_owner=projection;
  source_char_ai.projections.push_back(std::move(projection));
  if(!source_char_ai.by_character.emplace(character_identity,stable).second)
   throw std::runtime_error("Duplicate native Character-to-CharAI projection");
  ++fresh;
 };
 construct(0x100000001ull,0x300000001ull,&prince_source_ai);
 for(std::size_t i=0;i<world_objects.size();++i)if(world_objects[i].kind==1) {
  const auto identity=0x100000002ull+i;ObjectActor* actor=nullptr;
  for(auto& group:object_groups)for(auto& entry:group.instances)if(entry.identity==identity)actor=&entry;
  if(!actor)throw std::runtime_error("Native Character record has no actor owner");
  construct(identity,0x300000002ull+i,&actor->native_ai);
 }
 if(source_char_ai.projections.size()!=character_count||
    source_char_ai.queue_order.size()!=character_count)
  throw std::runtime_error("Source CharAI constructor count/order differs");
 source_char_ai.ready=true;
 __android_log_print(ANDROID_LOG_INFO,"DH2Native",
  "CharAI constructor projections | characters %zu | native source-order registration records %zu | source Character associations %zu | active AIS initialization pending",
  source_char_ai.projections.size(),source_char_ai.queue_order.size(),source_char_ai.projections.size());
 __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native CharAI lifetime | fresh constructors %u | retained owners %u | graphics registry rebuilt",fresh,retained);
}
}

// Native initialization owner. The same VM survives all source load stages.
// Bounded Ghost InitScriptProcess uses the original empty-script rows. Nonempty
// skill Lua providers and autonomous frames remain separate unfinished work.
struct NativeMonsterInitialization {
 NativeCharAIProjection* ai=nullptr;
 std::shared_ptr<SpawnOwner> owner;
 dh2::monster_external_script::Session vm;
 dh2::character_level_runtime::Runtime stats;
 dh2::character_level_runtime::Result last_stats{};
 std::shared_ptr<const NativeSkillCatalogue> catalogue;
 dh2::native::ghost_skills::Runtime skills;
 dh2::native::ghost_skills::Result last_skills{};
 dh2::character_ai_update_all_skills::Result last_skill_update{};
 dh2::character::ScriptLifecycleState64 lifecycle{};
 dh2::ais_external_initialization::State ais{};
 std::string script_path;
 dh2::monster_external_script::Source common{},external{};
 unsigned init_calls=0,timers_started=0,post_calls=0,final_calls=0;
 std::vector<unsigned> init_phases;
 bool initialized=false;
 unsigned timer_gates=0;
 ObjectActor& actor() {if(!owner||!owner->actor)throw std::runtime_error("Native monster owner is stale");return *owner->actor;}
 bool subject(std::uintptr_t id) {return ai&&id==ai->character_identity&&owner&&owner->actor&&owner->actor->identity==id;}
 static auto& self(void* raw) {return *static_cast<NativeMonsterInitialization*>(raw);}
 static std::int32_t structure(void*,const char* category,const char* field,std::int32_t* output) {
  if(!category||!field||!output||std::strcmp(category,"CharacterProperties"))return 1;
  const auto it=std::find(actor_character_fields.begin(),actor_character_fields.end(),field);
  *output=it==actor_character_fields.end()?-1:std::int32_t(it-actor_character_fields.begin());return 0;
 }
 static std::int32_t property(void* raw,std::uintptr_t id,std::int32_t prop,float* output) {
  auto& s=self(raw);if(!s.subject(id)||!output)return 1;
  auto view=dh2::data::property_view(actor_property_rules,s.actor().properties);std::int32_t value;
  if(dh2_property_resolve(&view,prop,&value))return 1;
  *output=static_cast<float>(value);return 0;
 }
 static std::int32_t constant(void*,const char* category,const char* key,std::int32_t* output) {
  if(!category||!key||!output)return 1;
  dh2_pycst_result value{};
  if(dh2_pycst_get(&actor_design,category,std::strlen(category),key,std::strlen(key),&value))return 1;
  *output=value.found?value.value:-1;return 0;
 }
 static std::int32_t oid(void*,const char* category,const char* name,std::int32_t* output) {
  if(!category||!name||!output||std::strcmp(category,"ClassTable"))return 1;
  const auto it=std::find(actor_class_tables.names.begin(),actor_class_tables.names.end(),name);
  *output=it==actor_class_tables.names.end()?-1:std::int32_t(it-actor_class_tables.names.begin());return 0;
 }
 static std::int32_t position(void* raw,std::uintptr_t id,float output[3]) {
  auto& s=self(raw);if(!s.subject(id)||!output)return 1;
  std::copy(s.actor().position.begin(),s.actor().position.end(),output);return 0;
 }
 static std::int32_t host_level(void*,std::int32_t* output) {return native_host_level(output);}
 static std::int32_t difficulty(void*,std::int32_t* output) {return native_host_difficulty(output);}
 static std::int32_t range(void*,const float* arg,std::int32_t output[2],std::uint32_t* count) {return native_current_level_range(arg,output,count);}
 static std::int32_t set_level(void* raw,std::uintptr_t id,float fixed) {
  auto& s=self(raw);if(!s.subject(id)||!native_debug)return 1;
  auto& properties=s.actor().properties;
  auto view=dh2::data::property_view(actor_property_rules,properties);
  dh2::character_level_runtime::Storage storage{id,reinterpret_cast<std::uintptr_t>(&properties),properties.base.data(),&view,
   actor_class_rows.data(),std::uint32_t(actor_class_rows.size()),&native_design_binding,1,&native_debug->globals(),&native_debug->services()};
  const dh2::character_script_set_level::Globals globals{&native_application};
  const auto status=s.stats.set_level_fixed(&storage,&globals,fixed,&s.last_stats);
  if(status!=dh2::character_level_runtime::Status::complete){
   __android_log_print(ANDROID_LOG_ERROR,"DH2Native","Native monster SetLevel failed | %s | status %d | Level %d | HP attempted %u | MP attempted %u",s.actor().name.c_str(),int(status),properties.base[19],s.last_stats.hp_attempted,s.last_stats.mp_attempted);return 1;
  }
  return 0;
 }
 static std::int32_t has_target(void* raw,std::uintptr_t id,std::uint32_t* output) {
  auto& s=self(raw);if(!s.subject(id)||!output)return 1;*output=s.ai->state.target_40!=0;return 0;
 }
 static std::int32_t get_target(void* raw,std::uintptr_t id,std::uintptr_t* output) {
  auto& s=self(raw);if(!s.subject(id)||!output)return 1;*output=s.ai->state.target_40;return 0;
 }
 // These unused OnInit dependencies reject until genuine actor AI services bind.
 static std::int32_t unbound_state(void*,std::uintptr_t,std::int32_t*) {return 1;}
 static std::int32_t unbound_path(void*,std::uintptr_t,std::uint32_t*) {return 1;}
 static std::int32_t unbound_command(void*,std::uintptr_t,std::uintptr_t) {return 1;}
 dh2::monster_external_script::Services script_services() {
  return {this,ai->character_identity,structure,property,constant,has_target,get_target,unbound_state,unbound_path,
   unbound_command,unbound_command,unbound_command,oid,position,host_level,difficulty,range,set_level};
 }
 static std::int32_t construct_service(void* raw,dh2::ais_external_initialization::State* state,const dh2::ais_external_initialization::Request* request) {
  auto& s=self(raw);if(state!=&s.ais)return 1;
  std::string error;
  switch(request->operation) {
   case dh2::ais_external_initialization::Operation::lua_construct:
    if(request->argument!=1)return 1;
    return s.vm.create(s.script_services(),error)==dh2::monster_external_script::Status::complete?0:1;
   case dh2::ais_external_initialization::Operation::character_create_bindings:
    if(request->subject!=s.ai->character_identity)return 1;
    return s.vm.bind_character_functions(error)==dh2::monster_external_script::Status::complete?0:1;
   case dh2::ais_external_initialization::Operation::path_assign:
    if(!request->text)return 1;
    s.script_path.assign(request->text,request->text_bytes);return 0;
   default:return 1;
  }
 }
 static void create_selected(void* raw,dh2::character::ScriptSelectionState16*,std::uint32_t kind) {
  auto& s=self(raw);if(kind!=dh2::character::script_external)throw std::runtime_error("Unsupported native AIS kind");
  s.ais.identity=reinterpret_cast<std::uintptr_t>(&s.ais);
  s.ais.binder_identity=reinterpret_cast<std::uintptr_t>(&s.vm);
  s.ais.path_storage_identity=reinterpret_cast<std::uintptr_t>(&s.script_path);
  const dh2::ais_external_initialization::Tables tables{0xd2a51001u,0xd2a51002u};
  const dh2::ais_external_initialization::Services services{&s,construct_service};dh2::ais_external_initialization::Result result{};
  if(dh2::ais_external_initialization::construct_external(&s.ais,true,&tables,&services,&result)!=dh2::ais_external_initialization::Status::complete)
   throw std::runtime_error("Native pending AIS constructor failed");
  s.lifecycle.pending=s.ais.identity;
  s.ai->state.alternate_ais_20=s.ais.identity;
 }
 static std::int32_t membership(void* raw,dh2::ais_external_init_vcb::State* state,const char* key,bool* output) {
  auto& s=self(raw);return state->ais==s.ais.identity&&output&&s.vm.contains_source_alias(key,*output)?0:1;
 }
 static std::int32_t init_callback(void* raw,dh2::ais_external_init_callbacks::State*,
        const dh2::ais_external_init_callbacks::Request* request) {
  auto& s=self(raw);if(!request||request->ais!=s.ais.identity)return 1;
  namespace init=dh2::ais_external_init_callbacks;
  const auto event=request->callback==init::Callback::init?dh2::monster_external_script::Event::init:
   request->callback==init::Callback::post?dh2::monster_external_script::Event::init_post:
                                        dh2::monster_external_script::Event::init_final;
  std::string error;
  return s.vm.dispatch(event,0,error)==dh2::monster_external_script::Status::complete?0:1;
 }
 static std::int32_t skills_init_vcb(void* raw,std::uintptr_t active) {
  auto& s=self(raw);if(active!=s.lifecycle.active||active!=s.ais.identity)return 1;
  dh2::ais_external_init_vcb::State flags{active,s.ais.flags_b8};
  const dh2::ais_external_init_vcb::Services services{&s,membership};
  dh2::ais_external_init_vcb::Result result{};
  const auto status=dh2::ais_external_init_vcb::initialize_external(&flags,&services,&result);
  s.ais.flags_b8=flags.flags_b8;
  return status==dh2::ais_external_init_vcb::Status::complete?0:1;
 }
 static std::int32_t skill_update_service(void* raw,dh2::character_ai_update_all_skills::State* state,
      const dh2::character_ai_update_all_skills::Request* request,
      dh2::character_ai_update_all_skills::Response* reply) {
  auto& s=self(raw);
  if(!state||!request||!reply||state->ai!=s.ai->ai_identity||!s.subject(state->owner))return 1;
  using Operation=dh2::character_ai_update_all_skills::Operation;
  if(request->operation==Operation::on_skill_update)return 1; // Nonempty Lua skill providers remain unbound.
  if(request->subject!=state->owner)return 1;
  const dh2::character_skill_state_queries::Machine machine{&s.owner->character.state.current};
  dh2::character_skill_state_queries::Result result{};
  const auto query=request->operation==Operation::is_using_skill?
      dh2::character_skill_state_queries::Query::using_skill:dh2::character_skill_state_queries::Query::casting;
  if(dh2::character_skill_state_queries::query(query,&machine,&result)!=dh2::character_skill_state_queries::Status::complete)return 1;
  reply->word=result.value;return 0;
 }
 static void lifecycle_service(void* raw,dh2::character::ScriptLifecycleState64* state,const dh2::character::ScriptLifecycleRequest32* request,dh2::character::ScriptLifecycleResponse16* reply) {
  using namespace dh2::character;auto& s=self(raw);if(state!=&s.lifecycle)throw std::runtime_error("Native AIS lifecycle owner differs");
  std::string error;
  const auto completed=[&](dh2::monster_external_script::Status status){if(status!=dh2::monster_external_script::Status::complete)throw std::runtime_error("Native monster script: "+error);};
  const ScriptLifecycleServices16 nested{&s,lifecycle_service};
  switch(request->service) {
   case script_create_step: {
    const auto* props=native_actor_ai_props(s.actor());
    if(!native_character_classification(s.actor(),dh2::character_ai_classification::Query::monster)||props->script!="monster")throw std::runtime_error("Native Ghost script selection differs");
    ScriptSelectionState16 selection{};const ScriptCreationFacts24 facts{std::uint32_t(props->script.size()),0,props->script.c_str(),s.actor().name.c_str()};
    const ScriptSelectionServices16 services{&s,create_selected};
    if(dh2_character_script_create_step(&selection,&facts,&services)!=1)throw std::runtime_error("Native AIS selection failed");
    state->external_name=selection.external_name;state->scripted=selection.scripted;break;
   }
   case script_bind_functions:completed(s.vm.bind_ais_functions(error));break;
   case script_set_character: {
    const dh2::ais_external_initialization::Services services{&s,construct_service};dh2::ais_external_initialization::Result result{};
    if(dh2::ais_external_initialization::set_character(&s.ais,request->payload,&services,&result)!=dh2::ais_external_initialization::Status::complete)
     throw std::runtime_error("Native AIS Character binding failed");
    break;
   }
   case script_load_common:completed(s.vm.load_common(s.common,error));break;
   case script_load_external:completed(s.vm.load_external(s.external,error));break;
   case script_ai_init:
    if(dh2_character_script_lifecycle(state,script_on_init,0,&nested)!=1)throw std::runtime_error("Native CharAI OnInit failed");break;
   case script_refresh_vitals: {
    // This service is reached by the source InitScriptProcess, after pending
    // AIS publication and before skills/post/final. Graphics restoration must
    // not replay this phase or heal damaged retained actors.
    s.init_phases.push_back(1);
    auto& properties=s.actor().properties;
    auto view=dh2::data::property_view(actor_property_rules,properties);
    dh2::character_level_runtime::Storage storage{s.ai->character_identity,
     reinterpret_cast<std::uintptr_t>(&properties),properties.base.data(),&view,
     nullptr,0,nullptr,0,native_debug?&native_debug->globals():nullptr,
     native_debug?&native_debug->services():nullptr};
    if(s.stats.initialize_hp_mp(&storage,&s.last_stats)!=dh2::character_level_runtime::Status::complete)
     throw std::runtime_error("Native monster initial HP/MP failed");
    break;
   }
   case script_configure_skills: {
    s.init_phases.push_back(2);
    if(!s.catalogue||!native_debug)throw std::runtime_error("Native skill catalogue/Debug owner missing");
    // Synchronize the published lifecycle fields before this source caller
    // reads the active AIS. The pending and active identities are unchanged.
    s.ai->state.active_ais_1c=state->active;s.ai->state.alternate_ais_20=state->pending;
    auto view=dh2::data::property_view(actor_property_rules,s.actor().properties);
    const dh2::native::ghost_skills::Bindings bindings{&s.ai->state,&view,
     &s.catalogue->tables->skills(),&s.catalogue->tables->faeries(),&s.script_path,0,&s.catalogue->faery_constants,
     &native_debug->globals(),&native_debug->services(),&s,skills_init_vcb};
    if(s.skills.prepare(bindings,s.last_skills)!=dh2::native::ghost_skills::Status::complete)
     throw std::runtime_error("Native Ghost SetSkillsAndSpells failed");
    break;
   }
   case script_update_skills: {
    s.init_phases.push_back(3);
    const auto& skill_vector=s.skills.skill_scripts();const auto& faery_vector=s.skills.faery_scripts();
    const auto range=[](const std::vector<std::uintptr_t>& vector) {
     const auto* begin=vector.empty()?nullptr:vector.data();
     return dh2::character_ai_update_all_skills::ScriptVector{begin,begin?begin+vector.size():nullptr};
    };
    dh2::character_ai_update_all_skills::State projection{s.ai->ai_identity,state->owner,range(skill_vector),range(faery_vector)};
    const dh2::character_ai_update_all_skills::Services services{&s,skill_update_service};
    if(dh2::character_ai_update_all_skills::update(&projection,&services,&s.last_skill_update)!=dh2::character_ai_update_all_skills::Status::complete)
     throw std::runtime_error("Native Ghost UpdateAllSkills failed");
    break;
   }
   case script_ai_init_post:
    s.init_phases.push_back(4);
    if(dh2_character_script_lifecycle(state,script_on_init_post,0,&nested)!=1)throw std::runtime_error("Native CharAI OnInitPost failed");break;
   case script_ai_init_final:
    s.init_phases.push_back(5);
    if(dh2_character_script_lifecycle(state,script_on_init_final,0,&nested)!=1)throw std::runtime_error("Native CharAI OnInitFinal failed");break;
   case script_owner_is_character:reply->word=1;break; // This fixed owner is an actual Character.
   case script_owner_is_dead:reply->word=s.actor().combat_state.dead;break;
   case script_timer_stop:
    if(s.owner->character.stop_timer(request->argument0)<0)throw std::runtime_error("Native AI timer stop failed");break;
   case script_design_tick: {
    dh2_pycst_result value{};const char* key=request->argument0==0x33?"AI_Tick":request->argument0==0x34?"DoT_Tick":nullptr;
    if(!key||dh2_pycst_get(&actor_design,"CharacterDesign",15,key,std::strlen(key),&value)||!value.found)throw std::runtime_error("Native AI timer design key missing");
    reply->word=std::uint32_t(value.value);break;
   }
   case script_timer_start: {
    const auto timer=s.owner->character.start_timer(request->argument0,-1,request->argument1,0);
    if(timer<0)throw std::runtime_error("Native AI timer allocation failed");reply->word=std::uint32_t(timer);++s.timers_started;break;
   }
   case script_ais_init:
   case script_ais_init_post:
   case script_ais_init_final: {
    // Dispatch all phases through the same live alias map and retained VM.
    namespace init=dh2::ais_external_init_callbacks;
    const auto callback=request->service==script_ais_init?init::Callback::init:
     request->service==script_ais_init_post?init::Callback::post:init::Callback::final;
    init::State projection{s.ais.identity};init::Result result{};
    const init::Services provider{&s,init_callback};
    if(init::invoke(&projection,callback,&provider,&result)!=init::Status::complete)
     throw std::runtime_error("Native AIS initialization callback failed");
    if(callback==init::Callback::init)++s.init_calls;
    else if(callback==init::Callback::post)++s.post_calls;
    else ++s.final_calls;
    break;
   }
   case script_pending_init_vcb: {
    dh2::ais_external_init_vcb::State flags{s.ais.identity,s.ais.flags_b8};
    const dh2::ais_external_init_vcb::Services services{&s,membership};dh2::ais_external_init_vcb::Result result{};
    const auto status=dh2::ais_external_init_vcb::initialize_external(&flags,&services,&result);s.ais.flags_b8=flags.flags_b8;
    if(status!=dh2::ais_external_init_vcb::Status::complete)throw std::runtime_error("Native AIS VFTable flags failed");break;
   }
   default:throw std::runtime_error("Native full AIS initialization service remains unbound");
  }
 }
 void load(dh2::monster_external_script::Source commons,dh2::monster_external_script::Source monster) {
  common=commons;external=monster;lifecycle={};lifecycle.owner=ai->character_identity;lifecycle.timer33=lifecycle.timer34=-1;
  const auto* props=native_actor_ai_props(actor());
  lifecycle.delayed=props->delayed_load;
  const dh2::character::ScriptLifecycleServices16 services{this,lifecycle_service};
  if(dh2_character_script_lifecycle(&lifecycle,dh2::character::script_load_and_init,1,&services)!=1||
     !lifecycle.active||lifecycle.active!=lifecycle.pending||init_calls!=1||post_calls!=1||final_calls!=1||!vm.ready()||
     init_phases!=std::vector<unsigned>({1,2,3,4,5})||skills.skill_scripts().size()!=0||skills.faery_scripts().size()!=5||
     last_skill_update.skill_slots!=0||last_skill_update.faery_slots!=5||last_skill_update.script_updates!=0)
   throw std::runtime_error("Native Ghost ordered load/init publication failed");
  ai->state.active_ais_1c=lifecycle.active;ai->state.alternate_ais_20=lifecycle.pending;
  // The source timers were allocated in their original OnInit order. The
  // native port pauses them until their actual AI/DoT expiry providers bind;
  // it must not silently consume those events through the FSM alone.
  if(owner->character.pause_timer(std::uint32_t(lifecycle.timer33),1)!=1||
     owner->character.pause_timer(std::uint32_t(lifecycle.timer34),1)!=1)
   throw std::runtime_error("Native unfinished AI/DoT timer gate failed");
  timer_gates=2;common={};external={}; // The VM owns its loaded chunks now.
  initialized=true;
 }
};

void retire_native_monster_scripts(bool preserve) {
 // Native lifetime cleanup cancels only this retired VM's source timer IDs.
 // Retained Spawn/Idle timers and full source skill cleanup have separate owners.
 for(auto& projection:source_char_ai.projections)if(projection->initialization) {
  auto& script=*projection->initialization;
  if(preserve&&script.initialized)continue;
  if(script.owner) {
   if(script.lifecycle.timer33!=-1)script.owner->character.stop_timer(std::uint32_t(script.lifecycle.timer33));
   if(script.lifecycle.timer34!=-1)script.owner->character.stop_timer(std::uint32_t(script.lifecycle.timer34));
  }
  script.initialized=false;
 }
}

void SpawnOwner::service(void* context,dh2::character::State* state,const dh2::character::Request* request) {
 using namespace dh2::character;
 auto& owner=*static_cast<SpawnOwner*>(context);
 if(!owner.actor||state!=&owner.character.state||!request)throw std::runtime_error("Spawn service owner differs");
 auto& actor=*owner.actor;
 switch(request->service) {
 case set_animation: {
  std::string error;
  if(!actor.scheduler.start(actor_animation_tables,request->argument[0],actor_random,error))throw std::runtime_error(error);
  actor.cursor=0;actor.completions=0;actor.event_cursor={};actor.animation_events=0;
  actor.state=state->current==1?"Spawn":"Idle";state->current_animation=request->argument[0];
  break;
 }
 case init_physical_object:owner.create_body();break;
 case set_visible:
  owner.source_visible=request->argument[0]!=0&&owner.source_enabled;
  __android_log_print(ANDROID_LOG_INFO,"DH2Native","Spawn visibility | %s | visible %u | enabled %u",actor.name.c_str(),unsigned(owner.source_visible),unsigned(owner.source_enabled));
  break;
 case reset_controller_lock:state->controller_locked=0;break; // Full CharAI/controller ownership remains external.
 case restore_limbus_position:case restore_limbus_rotation:break; // Authored pose retained by this stationary slice.
 case revive_character: {
  if(actor.combat_state.dead)throw std::runtime_error("Complete dead-character revival is not bound");
  auto properties=dh2::data::property_view(actor_property_rules,actor.properties);
  dh2::data::VitalsChange hp,mp;
  if(dh2_vitals_initialize(&properties,&hp,&mp))throw std::runtime_error("Spawn HP/MP initialization failed");
  break; // Other Revive FX/UI services remain unbound for fresh monsters.
 }
 case clear_all_aggro:
  if(actor.aggro.out_count||actor.aggro.in_count)throw std::runtime_error("Linked aggression clearing is not bound for gated actors");
  break;
 case clear_ai_target:actor.combat_target=-1;actor.target_alive=actor.target_sight=0;break;
 case sync_last_ai_target:break; // This first-spawn slice has no prior AI target.
 case cancel_sneaking:break; // These original Monster actors have no sneaking producer.
 case start_fade_in:
  __android_log_print(ANDROID_LOG_INFO,"DH2Native","Spawn fade stub | %s | raw argument %.9g | original bx lr",actor.name.c_str(),request->scalar);break;
 case idle_common_update:
  if(++owner.idle_updates==1)__android_log_print(ANDROID_LOG_INFO,"DH2Native","Gated actor IdleCommonUpdate boundary | %s | autonomous AI producer pending",actor.name.c_str());
  break;
 case raise_event:
  if(request->argument[0]==0x1d)__android_log_print(ANDROID_LOG_INFO,"DH2Native","Spawn source state | %s | previous %d | current %d | flags %x | sequence %d | clip %d | body %u",actor.name.c_str(),request->argument[1],state->current,state->flags,state->current_animation,actor.scheduler.clip().anim,unsigned(owner.body.body!=nullptr));
  break;
 default:throw std::runtime_error("Spawn source service is not bound");
 }
}
void SpawnOwner::initialize_runtime(const ObjectGroup& group,
        const dh2::physical::CharacterOwnerBounds& bounds,const float* scale) {
 if(!actor||!level.native_floor||!scale)
  throw std::runtime_error("Ghost actor runtime lacks its live Character/world");
 std::string error;
 scene=group.resource.rest_scene;
 if(!visual.bind(scene,error))throw std::runtime_error("Ghost root-motion binding failed: "+error);
 std::copy(actor->position.begin(),actor->position.end(),visual.root.position);
 for(unsigned i=0;i<3;++i){visual_scale[i]=scale[i]*actor->scale[i];visual.root.scale[i]=visual_scale[i];}
 constexpr float radians=3.14159265358979323846f/180.f;
 const float euler[]{actor->rotation_degrees[0]*radians,
                     actor->rotation_degrees[1]*radians,
                     actor->rotation_degrees[2]*radians};
 if(!visual.set_rotation(euler)||!visual.update_world(scene,error))
  throw std::runtime_error("Ghost scene transform binding failed: "+error);

 runtime={};owner_bounds=bounds;
 std::copy(bounds.relative_box,bounds.relative_box+6,runtime.subobjects.local_bounds);
 std::copy(bounds.absolute_box,bounds.absolute_box+6,runtime.subobjects.absolute_bounds);
 std::copy(actor->position.begin(),actor->position.end(),runtime.subobjects.position);
 std::copy(actor->position.begin(),actor->position.end(),runtime.subobjects.destination);
 runtime.subobjects.rotation=euler[2];
 runtime.rotation.rotation[2]=euler[2];runtime.rotation.heading_angle=euler[2];
 std::copy(actor->position.begin(),actor->position.end(),runtime.controller.position);
 std::copy(actor->position.begin(),actor->position.end(),runtime.controller.destination);
 runtime.path.segments=nullptr;
 route_storage.assign(level.native_floor->graph.node_count+1,{});
 runtime.path.segments=route_storage.data();runtime.path.capacity=std::uint32_t(route_storage.size());
 std::copy(actor->position.begin(),actor->position.end(),runtime.path.position);
 std::copy(actor->position.begin(),actor->position.end(),runtime.path.target);
 if(dh2_nav_object_defaults(&runtime.object))throw std::runtime_error("Ghost PFObject defaults rejected");
 const dh2::navigation::ObjectInitRequest init{
  &level.native_floor->collision_world,&runtime.object,actor->identity,
  {actor->position[0],actor->position[1],actor->position[2]},config.radius*100.f,0,0};
 if(dh2_nav_init_object(&init))throw std::runtime_error("Ghost PFObject initialization rejected");
 if(body.body&&dh2_native_body_refresh_view(&runtime.body,&body))
  throw std::runtime_error("Ghost native-body projection rejected");
 path_to={actor->identity,0,0,0,0,{actor->position[0],actor->position[1],actor->position[2]},0};
 path_services={this,find_path};
 render_vertices.clear();render_vertices.reserve(group.resource.primitives.size());
 for(const auto& primitive:group.resource.primitives)render_vertices.push_back(primitive.vertices);
 sampled_clip=-1;runtime_ready=true;
 register_runtime_object();
}

void SpawnOwner::register_runtime_object() {
 if(!runtime_ready||!body.body||!actor||!level.native_floor)return;
 const auto* box=owner_bounds.absolute_box;
 const dh2::navigation::ProducerFields fields{
  dh2::navigation::ProducerClass::character,1,config.radius,0,
  {box[0],box[1]},{box[3],box[4]}};
 const dh2::navigation::ProducerRequest producer{
  &level.native_floor->collision_world,&live_registry,&runtime.object,actor->identity,&fields};
 if(dh2_nav_update_game_object(&producer))throw std::runtime_error("Ghost PF obstacle registration rejected");
}

int SpawnOwner::find_path(void* context,const dh2::character::PathToRequest32* request,
                          std::uint32_t* found) {
 if(!context||!request||!found)return 1;
 auto& owner=*static_cast<SpawnOwner*>(context);
 if(!owner.actor||!owner.runtime_ready||request->owner!=owner.actor->identity||
    request->reserved||request->reserved1||request->limit>100000||!level.native_floor)return 1;
 dh2::navigation::RouteResult route{};
 const int status=dh2::floors::find_path(*level.native_floor,owner.runtime.path,
                                         request->target,request->limit,route);
 if(status)return 1;
 *found=route.found;
 owner.path_to.path_nonempty=owner.runtime.path.count!=0;
 std::memcpy(owner.path_to.path_target,request->target,sizeof(owner.path_to.path_target));
 owner.runtime.subobjects.path_count=owner.runtime.path.count;
 std::memcpy(owner.runtime.subobjects.path_target,owner.runtime.path.target,
             sizeof(owner.runtime.subobjects.path_target));
 return 0;
}

int SpawnOwner::request_path(const float* target) {
 if(!target||!runtime_ready)return -1;
 dh2::character::PathToResult16 result{};
 const int status=dh2_character_path_to(&result,&path_to,target,&path_services);
 if(status)return -1;
 return result.requested?int(result.find_result):0;
}

void SpawnOwner::update_runtime(const dh2::objects::Resource& resource,
        const dh2::animation::Player& clip,int animation_ms,unsigned dt_ms,unsigned frame) {
 if(!actor||!runtime_ready||!body.body||frozen)return;
 if(resource.primitives.size()!=render_vertices.size())
  throw std::runtime_error("Ghost actor mesh/runtime binding differs");
 std::string error;
 const int clip_id=actor->scheduler.clip().anim;
 dh2::move::Policy decoded{};
 if(dh2_move_policy(&decoded,&character.state.flags))throw std::runtime_error("Ghost movement policy decode failed");
 const bool reset=sampled_clip!=clip_id;
 if(!visual.sample(scene,clip,animation_ms,frame,reset,
                   decoded.position_from_visual!=0,error))
  throw std::runtime_error("Ghost animation/root-motion sample failed: "+error);
 sampled_clip=clip_id;
 if(dh2_native_body_refresh_view(&runtime.body,&body))
  throw std::runtime_error("Ghost physical view refresh failed");
 runtime.subobjects.path_count=runtime.path.count;
 std::memcpy(runtime.subobjects.path_target,runtime.path.target,sizeof(runtime.subobjects.path_target));
 const dh2::actor::RuntimePolicy policy{{1,0,0,decoded.position_from_physics},0,0,0,0,
                                        dh2::actor::base_virtual_speed};
 const dh2::subobjects::Services services{nullptr,actor_virtual_service};
 const dh2::actor::RuntimeRequest request{
  &runtime,&body,&visual,&scene,&level.native_floor->collision_world,
  &level.native_floor->graph,&live_registry,&live_motion_policy,&live_workspace,
  nullptr,actor->properties.resolved.data(),&policy,&services,nullptr,
  actor->identity,character.state.flags,dt_ms};
 dh2::actor::RuntimeResult result{};
 if(dh2::actor::update_actor(result,request,error))
  throw std::runtime_error("Ghost source actor runtime failed: "+error);
 std::copy(runtime.subobjects.position,runtime.subobjects.position+3,actor->position.begin());
 constexpr float radians=0.01745329251994329577f;
 actor->rotation_degrees[2]=runtime.subobjects.rotation/radians;
 dh2_node_matrix(actor->placement.data(),visual.root.position,visual.root.quaternion,visual.root.scale);
}

namespace {
void sync_search_projection(ObjectActor& actor) {
 auto& projection=actor.search_projection;
 auto& object=projection.object;
 object.identity=actor.identity;
 std::copy(actor.position.begin(),actor.position.end(),object.position);
 std::copy(actor.position.begin(),actor.position.end(),object.target_position);
 if(actor.spawn_owner&&actor.spawn_owner->runtime_ready) {
  const auto* position=actor.spawn_owner->runtime.subobjects.position;
  std::copy(position,position+3,object.target_position);
 }
 constexpr float radians=0.01745329251994329577f;
 const float angle=actor.rotation_degrees[2]*radians;
 object.forward[0]=std::cos(angle);object.forward[1]=std::sin(angle);object.forward[2]=0.f;
 object.visible=actor.spawn_owner?std::uint8_t(actor.spawn_owner->source_visible):1;
 object.has_target_position=1;
 // GameObject constructors write +0x2ee=1 and +0x2f0=0. RoomZone enrollment
 // or InitSpawned later owns +0x2f0; this projection remains at the proven
 // constructor value until that producer is bound. These are distinct from
 // Character visibility.
 object.character_2ee=1;object.character_2f0=0;
 projection.is_character=actor.kind==1;
 if(actor.kind==1) {
  projection.character.identity=actor.identity;
  projection.character.object=&object;
  projection.character.source_word_1310=actor.properties.resolved[198];
  projection.character.source_word_1314=actor.properties.resolved[199];
 }
}

void sync_prince_search_projection() {
 auto& projection=prince_search_projection;
 auto& object=projection.object;
 object.identity=0x100000001ull;
 std::copy(actor_position.begin(),actor_position.end(),object.position);
 std::copy(actor_position.begin(),actor_position.end(),object.target_position);
 std::copy(prince_runtime.subobjects.position,prince_runtime.subobjects.position+3,
           object.target_position);
 object.forward[0]=std::cos(heading);object.forward[1]=std::sin(heading);object.forward[2]=0.f;
 object.visible=1;object.has_target_position=1;object.character_2ee=1;object.character_2f0=0;
 projection.is_character=1;
 projection.character.identity=object.identity;
 projection.character.object=&object;
 projection.character.source_word_1310=prince_combat.properties.resolved[198];
 projection.character.source_word_1314=prince_combat.properties.resolved[199];
}

void build_search_world() {
 search_world.clear();
 native_characters.clear();
 if(!level.rooms||level.rooms>512||world_objects.empty())
  throw std::runtime_error("Character search room projection unavailable");
 search_world.rooms.resize(level.rooms);
 search_world.object_heads.resize(level.rooms);
 search_world.object_entries.resize(world_objects.size()+1);
 std::vector<dh2::character::aggro_search::ObjectEntry*> tails(level.rooms);
 for(unsigned room=0;room<level.rooms;++room) {
  auto& head=search_world.object_heads[room];head={&head,nullptr};tails[room]=&head;
  search_world.rooms[room]={room+1<level.rooms?&search_world.rooms[room+1]:&search_world.room_sentinel,&head};
 }
 search_world.room_sentinel={search_world.rooms.empty()?&search_world.room_sentinel:
                             &search_world.rooms.front(),nullptr};
 search_world.registry={&search_world.room_sentinel};
 std::vector<ObjectActor*> actors(world_objects.size(),nullptr);
 // A distinct owned flat Character list supplies the actual aggro iterator
 // shape. This native enrollment follows created Character projections;
 // complete ObjectManager name/map/factory registration remains separate.
 sync_prince_search_projection();
 bool appended=false;
 if(native_characters.enroll_after_add(&prince_search_projection.character,false,&appended)!=
      dh2::native::character_list::Owner::Status::ok || !appended)
  throw std::runtime_error("Native player Character-list enrollment failed");
 for(auto& group:object_groups)for(auto& actor:group.instances) {
  if(actor.identity<0x100000002ull)continue;
  const auto index=std::size_t(actor.identity-0x100000002ull);
  if(index>=actors.size()||actors[index])throw std::runtime_error("Character search actor identity differs");
  actors[index]=&actor;
 }
 for(std::size_t i=0;i<world_objects.size();++i) {
  const auto& record=world_objects[i];
  if(record.room>=level.rooms||!actors[i])throw std::runtime_error("Character search room membership differs");
  auto& actor=*actors[i];sync_search_projection(actor);
  const auto identity=actor.identity;
  if(!search_world.objects.emplace(identity,&actor.search_projection.object).second)
   throw std::runtime_error("Duplicate Character search object identity");
  if(actor.kind==1) {
   if(!search_world.characters.emplace(identity,&actor.search_projection.character).second)
    throw std::runtime_error("Duplicate Character search identity");
   if(native_characters.enroll_after_add(&actor.search_projection.character,false,&appended)!=
       dh2::native::character_list::Owner::Status::ok || !appended)
    throw std::runtime_error("Native actor Character-list enrollment failed");
  }
  auto& entry=search_world.object_entries[i];entry={&search_world.object_heads[record.room],
                                                   &actor.search_projection.object};
  tails[record.room]->next=&entry;tails[record.room]=&entry;
 }
 search_world.ready=true;
 __android_log_print(ANDROID_LOG_INFO,"DH2Native",
  "Native Character list | characters %zu | owned nodes %zu | copied links 0 | full ObjectManager factory 0 | autonomous Ghost AI 0",
  native_characters.source().character_count,native_characters.owned_nodes());
}

void sync_search_world() {
 if(!search_world.ready)return;
 for(auto& group:object_groups)for(auto& actor:group.instances)
  if(actor.kind==1)sync_search_projection(actor);
 sync_prince_search_projection();
 // Trigger contact is not the source RoomZone membership producer. Keep the
 // player projection resolvable but out of room lists until zone enrollment
 // is reconstructed from RoomZone::AddInitialObject/ZoneEntered.
}

[[maybe_unused]] int resolve_search_character(void*,std::uintptr_t identity,
        dh2::character::aggro_search::Character** output) {
 if(!output||!search_world.ready)return 1;
 const auto found=search_world.characters.find(identity);
 *output=found==search_world.characters.end()?nullptr:found->second;
 return 0;
}
}
GLint position,texcoord,color,mvp,texture_matrix,material_color,has_alpha,alpha_ref;
void check(const char* operation){
  auto code=glGetError();if(code!=GL_NO_ERROR){char b[128];std::snprintf(b,sizeof(b),"%s GL error 0x%04x",operation,code);throw std::runtime_error(b);}
}
GLuint shader(GLenum type,const char* source){
  GLuint s=glCreateShader(type);glShaderSource(s,1,&source,nullptr);glCompileShader(s);GLint ok=0;glGetShaderiv(s,GL_COMPILE_STATUS,&ok);
  if(!ok){char log[2048]{};glGetShaderInfoLog(s,sizeof(log),nullptr,log);glDeleteShader(s);throw std::runtime_error(log);}return s;
}
void create_program(){
  const char* vs=R"(attribute vec3 position;attribute vec2 texcoord;attribute vec4 color;
uniform mat4 mvp;uniform mat4 texture_matrix;varying vec2 uv;varying vec4 tint;
void main(){gl_Position=mvp*vec4(position,1.0);uv=(texture_matrix*vec4(texcoord,0.0,1.0)).xy;tint=color;})";
  const char* fs=R"(precision mediump float;uniform sampler2D diffuse;uniform sampler2D alpha_map;
uniform float has_alpha;uniform float alpha_ref;uniform vec4 material_color;varying vec2 uv;varying vec4 tint;
void main(){vec4 c=texture2D(diffuse,uv)*tint*material_color;
if(has_alpha>0.5)c.a*=texture2D(alpha_map,uv).r;if(c.a<=max(alpha_ref,0.0039))discard;gl_FragColor=c;})";
  GLuint v=shader(GL_VERTEX_SHADER,vs),f=0;
  try{f=shader(GL_FRAGMENT_SHADER,fs);}catch(...){glDeleteShader(v);throw;}
  program=glCreateProgram();glAttachShader(program,v);glAttachShader(program,f);glLinkProgram(program);glDeleteShader(v);glDeleteShader(f);
  GLint ok=0;glGetProgramiv(program,GL_LINK_STATUS,&ok);if(!ok){char log[2048]{};glGetProgramInfoLog(program,sizeof(log),nullptr,log);glDeleteProgram(program);program=0;throw std::runtime_error(log);}
  position=glGetAttribLocation(program,"position");texcoord=glGetAttribLocation(program,"texcoord");color=glGetAttribLocation(program,"color");
  mvp=glGetUniformLocation(program,"mvp");texture_matrix=glGetUniformLocation(program,"texture_matrix");material_color=glGetUniformLocation(program,"material_color");
  has_alpha=glGetUniformLocation(program,"has_alpha");alpha_ref=glGetUniformLocation(program,"alpha_ref");
}
void release(std::vector<Draw>& batches,std::vector<GLuint>& textures){
  for(auto& b:batches){if(b.vertices)glDeleteBuffers(1,&b.vertices);if(b.indices)glDeleteBuffers(1,&b.indices);}
  for(auto t:textures)glDeleteTextures(1,&t);batches.clear();textures.clear();
}
void release_objects(std::vector<ObjectGroup>& groups){std::vector<GLuint> none;for(auto& group:groups)release(group.draws,none);groups.clear();}
std::vector<std::uint8_t> read(AAssetManager* assets,const std::string& name,const std::string& folder="textures"){
  auto path=name;
  if(folder=="textures")std::transform(path.begin(),path.end(),path.begin(),[](unsigned char c){return char(std::tolower(c));});
  const auto relative=folder.empty()?path:folder+"/"+path;
  std::vector<std::uint8_t> override_bytes;std::string mod_error;
  const auto override_status=dh2::mods::read(mod_root,relative,override_bytes,mod_error);
  if(override_status==dh2::mods::Lookup::rejected)throw std::runtime_error(mod_error);
  if(override_status==dh2::mods::Lookup::loaded){__android_log_print(ANDROID_LOG_INFO,"DH2Native","Mod asset loaded | %s | bytes %zu",relative.c_str(),override_bytes.size());return override_bytes;}
  auto* a=AAssetManager_open(assets,relative.c_str(),AASSET_MODE_BUFFER);
  if(!a)throw std::runtime_error("Bundled asset missing: "+folder+"/"+name);
  const auto n=AAsset_getLength64(a);
  if(n<=0||n>32*1024*1024){AAsset_close(a);throw std::runtime_error("Texture exceeds size limit");}
  std::vector<std::uint8_t> bytes(n);std::size_t done=0;
  while(done<bytes.size()){const auto got=AAsset_read(a,bytes.data()+done,bytes.size()-done);if(got<=0){AAsset_close(a);throw std::runtime_error("Short asset read");}done+=got;}
  AAsset_close(a);return bytes;
}
std::unique_ptr<dh2::native::player_skills::Runtime> prince_skills;
void initialize_native_player_skills(AAssetManager* assets,bool restore){
 if(restore&&prince_skills){prince_skills->restore(assets,prince_source_ai.get(),actor_skill_catalogue.get());return;}
 if(!prince_source_ai||!actor_skill_catalogue)throw std::runtime_error("Native Player skill owners missing");
 if(!prince_combat.savegame){
  auto saved=std::make_shared<dh2::data::PlayerSavegameV1>();
  saved->set_character(prince_source_ai->character_identity);
  auto view=dh2::data::property_view(actor_property_rules,prince_combat.properties);
  std::int32_t selector=0;std::string error;
  if(dh2_property_resolve(&view,28,&selector)||!saved->initialize_skills(actor_skill_catalogue->tables->skills(),selector,error))
   throw std::runtime_error("Native Player saved-skill initialization: "+error);
  saved->initialize_faeries();
  prince_combat.savegame=std::move(saved);
 }
 dh2::native::player_skills::Bindings b{};
 b.character=prince_source_ai->character_identity;b.ai=prince_source_ai->ai_identity;
 b.ai_lifetime=prince_source_ai;b.tables=actor_skill_catalogue->tables;b.catalogue_lifetime=actor_skill_catalogue;
 b.source_ai=&prince_source_ai->state;b.declaration=dh2::data::ai_props(actor_ai_tables,prince_combat.properties.resolved[1]);
 prince_combat.object_update_fields.identity=b.character;
 b.dead=&prince_combat.life.dead;b.object=&prince_combat.object_update_fields;b.controller=reinterpret_cast<std::uintptr_t>(&prince_state);
 b.rules=&actor_property_rules;b.properties=&prince_combat.properties;b.classes=&actor_class_tables;b.fields=&actor_character_fields;
 b.shared_property_temp=&skill_property_temp;b.savegame=prince_combat.savegame;
 b.application_singleton=&native_application.identity;b.saved_options=&native_saved_options;
 b.online_identity=reinterpret_cast<std::uintptr_t>(&native_host);b.online=&native_host.online;
 b.mana_exempt_14f0=&prince_combat.mana_exempt_14f0;b.current_difficulty=&native_save_difficulty;
 b.design=&actor_design;b.ai_constants=&actor_skill_catalogue->ai_constants;b.faery_constants=&actor_skill_catalogue->faery_constants;b.coordinator=&prince_character;b.debug=native_debug.get();
 b.assets=assets;b.read=[](AAssetManager* a,const std::string& path){return read(a,path,"");};
 std::string error;auto candidate=dh2::native::player_skills::Runtime::create(std::move(b),error);
 if(!candidate)throw std::runtime_error(error);prince_skills=std::move(candidate);
}
GLuint upload(AAssetManager* assets,const std::string& name,std::map<std::string,GLuint>& cache,std::vector<GLuint>& owned){
  auto found=cache.find(name);if(found!=cache.end())return found->second;
  std::vector<std::uint8_t> rgba;unsigned w=1,h=1;
  if(name.empty())rgba={255,255,255,255};
  else{
    auto raw=read(assets,name);dh2::textures::View view{};
    if(dh2_texture_open(raw.data(),raw.size(),&view)!=dh2::textures::Error::ok)throw std::runtime_error("Texture header rejected: "+name);
    w=view.width;h=view.height;rgba.resize(std::size_t(w)*h*4);
    if(dh2_texture_decode(&view,rgba.data(),rgba.size())!=dh2::textures::Error::ok)throw std::runtime_error("Texture decode rejected: "+name);
  }
  GLint max=0;glGetIntegerv(GL_MAX_TEXTURE_SIZE,&max);if(w>unsigned(max)||h>unsigned(max))throw std::runtime_error("Texture exceeds GPU limit");
  GLuint t=0;glGenTextures(1,&t);owned.push_back(t);glBindTexture(GL_TEXTURE_2D,t);
  glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MIN_FILTER,GL_LINEAR);glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MAG_FILTER,GL_LINEAR);
  // Original UVs wrap beyond [0,1]; fixture sizes are all powers of two.
  glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_WRAP_S,GL_REPEAT);glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_WRAP_T,GL_REPEAT);
  glPixelStorei(GL_UNPACK_ALIGNMENT,1);glTexImage2D(GL_TEXTURE_2D,0,GL_RGBA,w,h,0,GL_RGBA,GL_UNSIGNED_BYTE,rgba.data());check("Model texture upload");
  cache[name]=t;return t;
}
std::array<float,3> cross(const std::array<float,3>& a,const std::array<float,3>& b){return {a[1]*b[2]-a[2]*b[1],a[2]*b[0]-a[0]*b[2],a[0]*b[1]-a[1]*b[0]};}
void normalize(std::array<float,3>& a){float n=std::sqrt(a[0]*a[0]+a[1]*a[1]+a[2]*a[2]);for(float& x:a)x/=n;}
float dot(const std::array<float,3>& a,const std::array<float,3>& b){return a[0]*b[0]+a[1]*b[1]+a[2]*b[2];}
Matrix camera(int width,int height){
  const float aspect=float(width)/height,tan=.41421356f;
  const float distance=radius*1.15f*std::sqrt(1+1/(tan*tan*std::min(1.f,aspect)*std::min(1.f,aspect)))*zoom;
  std::array<float,3> eye{center[0]+distance*std::cos(yaw)*std::cos(pitch),center[1]+distance*std::sin(yaw)*std::cos(pitch),center[2]+distance*std::sin(pitch)};
  std::array<float,3> f{center[0]-eye[0],center[1]-eye[1],center[2]-eye[2]};normalize(f);
  auto s=cross(f,{0,0,1});normalize(s);auto u=cross(s,f);
  Matrix view{s[0],u[0],-f[0],0,s[1],u[1],-f[1],0,s[2],u[2],-f[2],0,-dot(s,eye),-dot(u,eye),dot(f,eye),1};
  const float near=world_mode?50.f:std::max(.01f,distance-radius*1.5f),far=world_mode?12000.f:distance+radius*3;
  Matrix projection{1/(tan*aspect),0,0,0,0,1/tan,0,0,0,0,-(far+near)/(far-near),-1,0,0,-2*far*near/(far-near),0};
  const auto result=dh2::scene::multiply(projection,view);
  if(world_mode){
    // The follow-camera transform remains the development producer. Its real
    // matrix/eye now exercise the recovered full frustum arithmetic; scene
    // registration and Character culling ownership remain separate work.
    std::memcpy(source_camera.matrix.elements,result.data(),sizeof(source_camera.matrix.elements));
    std::memcpy(source_camera.frustum.position,eye.data(),sizeof(source_camera.frustum.position));
    if(dh2::engine_camera::frustum_runtime::set_from(&source_camera.matrix,&source_camera.frustum)!=
       dh2::engine_camera::frustum_runtime::Status::complete)
      throw std::runtime_error("Source camera frustum rejected live matrix");
    const bool resized=source_camera.width!=width||source_camera.height!=height;
    source_camera.width=width;source_camera.height=height;
    if((source_camera.frames++%128)==0||resized){
      std::string input,output;
      const auto append=[](std::string& text,std::uint32_t word){char hex[10];std::snprintf(hex,sizeof(hex)," %08x",word);text+=hex;};
      for(auto word:source_camera.matrix.elements)append(input,word);
      for(auto word:source_camera.frustum.position)append(output,word);
      for(const auto& plane:source_camera.frustum.planes)for(auto word:plane)append(output,word);
      for(auto word:source_camera.frustum.box_min)append(output,word);
      for(auto word:source_camera.frustum.box_max)append(output,word);
      __android_log_print(ANDROID_LOG_INFO,"DH2Native","Source camera frame | %llu | %dx%d | matrix%s | frustum%s",
        static_cast<unsigned long long>(source_camera.frames),width,height,input.c_str(),output.c_str());
    }
  }
  return result;
}
}
void mod_directory(std::string directory){mod_root=std::move(directory);}
void runtime_directory(std::string directory){runtime_root=std::move(directory);}
std::vector<std::uint8_t> read_asset(AAssetManager* assets,const std::string& name){return read(assets,name,"");}
void reset_context(){native_actor_ready=false;clear_actor_world(world_mode||resume_world);search_world.clear();prince_search_projection={};prince_body={};resume_world=resume_world||world_mode;if(world_mode){saved_actors.clear();for(const auto& group:object_groups)for(const auto& actor:group.instances)if(actor.kind==1)saved_actors.push_back(actor);}world_mode=false;move_x=move_y=0;draws.clear();images.clear();object_groups.clear();world_objects.clear();prince_locomotion=dh2::actor::BlendedPlayback{};prince_visual={};prince_attack_clips.clear();prince_animation_bank={};scene_clock=0;inspected_object=-1;current_scene={};player=dh2::animation::Player{};walk_player=dh2::animation::Player{};level={};program=0;enabled=false;}
void deactivate(){
 source_camera={};
 prince_skills.reset();prince_source_ai.reset();source_char_ai.clear();
 // Terminal discard differs from GL recreation: clear every actor copy after
 // retiring timers and tearing down bodies, then release the owning groups.
 std::vector<std::weak_ptr<NativeMonsterInitialization>> retired;
 for(const auto& group:object_groups)for(const auto& actor:group.instances)
  if(actor.native_ai&&actor.native_ai->initialization)retired.push_back(actor.native_ai->initialization);
 for(const auto& actor:saved_actors)
  if(actor.native_ai&&actor.native_ai->initialization)retired.push_back(actor.native_ai->initialization);
 native_actor_ready=false;clear_actor_world();prince_body={};
 crypt_spawn_script.clear();crypt_trigger_state={};saved_actors.clear();
 release_objects(object_groups);release(draws,images);world_objects.clear();
 actor_skill_catalogue.reset();level={};current_scene={};
 enabled=false;world_mode=false;resume_world=false;move_x=move_y=0;
 const auto remaining=std::count_if(retired.begin(),retired.end(),[](const auto& owner){return !owner.expired();});
 __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native terminal world discard | Ghost references %zu | remaining %zu | groups %zu | saved actors %zu | catalogue %u",retired.size(),std::size_t(remaining),object_groups.size(),saved_actors.size(),unsigned(bool(actor_skill_catalogue)));
}
bool active(){return enabled;}
void set_enemy_ai(bool value){enemy_ai_enabled=value;__android_log_print(ANDROID_LOG_INFO,"DH2Native","Enemy AI configured | automatic melee %d",value);}
void orbit(float dx,float dy,float factor){yaw+=dx;pitch=std::clamp(pitch+dy,-1.4f,1.4f);zoom=std::clamp(zoom*factor,.35f,4.f);}
void set_time(int milliseconds){
  frozen_cursor_logged=false;
  // World inspection pauses the complete live actor pipeline at its composed
  // pose. Arbitrary millisecond sampling remains a separate model-preview tool.
  if(world_mode){
   frozen=milliseconds>=0;last_frame=std::chrono::steady_clock::now();
   std::uint64_t pose=14695981039346656037ull;
   auto digest=[&](const float* values,unsigned count){for(unsigned i=0;i<count;++i){std::uint32_t word;std::memcpy(&word,values+i,4);for(unsigned j=0;j<4;++j){pose^=(word>>(j*8))&255;pose*=1099511628211ull;}}};
   for(const auto& node:current_scene.graph){digest(node.translation,3);digest(node.quaternion,4);digest(node.scale,3);digest(node.world.data(),16);}
   const auto body=prince_body.body?prince_body.body->GetPosition():b2Vec2(actor_position[0]*.01f,actor_position[1]*.01f);
   __android_log_print(ANDROID_LOG_INFO,"DH2Native","Prince blended inspection | frozen %u | scene %u | Step %u | actor %u | clip %d | ms %d | body %.6g %.6g | pose %016llx",unsigned(frozen),unsigned(scene_clock),native_physics_steps,native_actor_frames,prince_locomotion.current_clip(),prince_locomotion.current_timeline().current_ms,body.x,body.y,static_cast<unsigned long long>(pose));
   return;
  }
  if(milliseconds<0){epoch=std::chrono::steady_clock::now()-std::chrono::milliseconds(sampled_ms-player.start);frozen=false;}
  else{sampled_ms=std::clamp(milliseconds,player.start,player.end);frozen=true;}
}
static std::string load_scene(const std::uint8_t* bytes,std::size_t size,AAssetManager* assets,bool preserve_level_session){
  std::vector<Draw> candidate;std::vector<GLuint> textures;
  try{
    if(!assets)throw std::runtime_error("Asset manager unavailable");
    dh2::resources::BresView view{};if(dh2_bres_open(&view,bytes,size)!=dh2::resources::BresError::ok)throw std::runtime_error("BRES header rejected");
    dh2::scene::Scene scene;std::string error;if(!dh2::scene::load(view,scene,error))throw std::runtime_error(error);
    dh2::animation::Player candidate_player;
    auto prince=std::find_if(scene.graph.begin(),scene.graph.end(),[](const dh2::scene::Node& n){return n.id=="prince_modular-node";});
    if(prince!=scene.graph.end()){
      // Preview equipment selection is explicit. The game normally chooses
      // modular controllers dynamically; the serialized scene lists a shadow.
      const auto node=unsigned(prince-scene.graph.begin());scene.instances.clear();
      for(unsigned i=0;i<dh2_bres_library_count(&view,dh2::resources::Library::controller);++i){
        dh2::skinning::Skin skin;if(!dh2::skinning::load(view,i,scene,skin,error))throw std::runtime_error(error);
        if(skin.id.find("_default_warrior-mesh-skin")==std::string::npos)continue;
        dh2::assets::Mesh mesh{};dh2_mesh_open(&mesh,&view,skin.geometry);
        dh2::scene::Instance instance{prince->id,node,skin.geometry,prince->world,{}};instance.controller=i;
        for(unsigned j=0;j<mesh.primitives;++j){dh2::assets::Primitive primitive{};dh2_mesh_primitive(&mesh,j,&primitive);
          auto material=std::find_if(scene.materials.begin(),scene.materials.end(),[&](const dh2::scene::Material& m){return m.id==primitive.material;});
          if(material==scene.materials.end())throw std::runtime_error("Unresolved equipment material");instance.materials.push_back(material-scene.materials.begin());}
        scene.instances.push_back(std::move(instance));
      }
      if(scene.instances.size()!=4)throw std::runtime_error("Incomplete warrior equipment preview");
      auto clip=read(assets,"prince_menu_idle_knight.bdae","animations");
      if(!candidate_player.load(clip.data(),clip.size(),scene,error))throw std::runtime_error("Animation load failed: "+error);
      if(!candidate_player.sample(scene,0,error))throw std::runtime_error(error);
    }else if(!candidate_player.load(bytes,size,scene,error))throw std::runtime_error("Animation load failed: "+error);
    if(!program)create_program();std::map<std::string,GLuint> cache;
    float low[3]{INFINITY,INFINITY,INFINITY},high[3]{-INFINITY,-INFINITY,-INFINITY};unsigned total=0,triangles=0;
    for(const auto& instance:scene.instances){
      dh2::assets::Mesh mesh{};if(dh2_mesh_open(&mesh,&view,instance.geometry)!=dh2::assets::Error::ok)throw std::runtime_error("Geometry rejected");
      if(mesh.primitives!=instance.materials.size())throw std::runtime_error("Material binding count differs from primitive count");
      for(unsigned j=0;j<mesh.primitives;++j){
        dh2::assets::Primitive p{};dh2_mesh_primitive(&mesh,j,&p);
        if(p.collada_type||p.index_count%3||mesh.vertices>65536||p.index_count>3000000)throw std::runtime_error("Unsupported primitive topology or size");
        if(total>1000000-mesh.vertices)throw std::runtime_error("Vertex budget exceeded");total+=mesh.vertices;triangles+=p.index_count/3;
        dh2::assets::Attribute a{},uv{},color_attribute{};
        if(dh2_mesh_attribute(&mesh,p.attributes[0],&a)!=dh2::assets::Error::ok||a.components<3)throw std::runtime_error("Missing position attribute");
        const bool have_uv=dh2_mesh_attribute(&mesh,p.attributes[4],&uv)==dh2::assets::Error::ok&&uv.components>=2;
        const bool have_color=dh2_mesh_attribute(&mesh,p.attributes[2],&color_attribute)==dh2::assets::Error::ok;
        Draw d;d.node=instance.node_index;d.material=scene.materials.at(instance.materials[j]);
        if(instance.controller>=0&&!dh2::skinning::load(view,instance.controller,scene,d.skin,error))throw std::runtime_error(error);
        if(d.material.id!=p.material)throw std::runtime_error("Material binding order/symbol mismatch");
        candidate.push_back(std::move(d));auto& batch=candidate.back();
        batch.diffuse=upload(assets,batch.material.diffuse,cache,textures);batch.alpha=upload(assets,batch.material.alpha_map,cache,textures);
        std::vector<Vertex> vertices(mesh.vertices);
        for(unsigned k=0;k<mesh.vertices;++k){auto& vertex=vertices[k];float raw[4]{};dh2_attribute_read(&a,k,raw);
          for(unsigned row=0;row<3;++row){float x=instance.world[12+row];for(unsigned c=0;c<3;++c)x+=instance.world[c*4+row]*raw[c];
            if(!std::isfinite(x))throw std::runtime_error("Nonfinite vertex position");vertex.p[row]=raw[row];
            if(batch.skin.nodes.empty()){low[row]=std::min(low[row],x);high[row]=std::max(high[row],x);}}
          if(have_uv){dh2_attribute_read(&uv,k,raw);std::copy(raw,raw+2,vertex.uv);}else vertex.uv[0]=vertex.uv[1]=0;
          std::fill(vertex.color,vertex.color+4,1);
          if(have_color){dh2_attribute_read(&color_attribute,k,raw);for(unsigned c=0;c<color_attribute.components;++c)vertex.color[c]=raw[c]/(color_attribute.type==1?255.f:1.f);}
        }
        if(!batch.skin.nodes.empty()){
          batch.rest_positions.resize(vertices.size());for(unsigned k=0;k<vertices.size();++k)std::copy(vertices[k].p,vertices[k].p+3,batch.rest_positions[k].begin());
          std::vector<dh2::skinning::Matrix> matrices;std::vector<std::array<float,3>> deformed;
          if(!dh2::skinning::palette(batch.skin,scene,matrices,error)||!dh2::skinning::positions(batch.skin,matrices,batch.rest_positions,deformed,error))throw std::runtime_error(error);
          for(unsigned k=0;k<vertices.size();++k)for(unsigned row=0;row<3;++row){vertices[k].p[row]=deformed[k][row];low[row]=std::min(low[row],deformed[k][row]);high[row]=std::max(high[row],deformed[k][row]);}
          batch.cpu_vertices=vertices;
        }
        std::vector<std::uint16_t> indices(p.index_count);for(unsigned k=0;k<p.index_count;++k){std::uint32_t x;dh2_index_read(&p,k,&x);indices[k]=x;}
        batch.count=p.index_count;glGenBuffers(1,&batch.vertices);glBindBuffer(GL_ARRAY_BUFFER,batch.vertices);glBufferData(GL_ARRAY_BUFFER,vertices.size()*sizeof(Vertex),vertices.data(),batch.skin.nodes.empty()?GL_STATIC_DRAW:GL_DYNAMIC_DRAW);
        glGenBuffers(1,&batch.indices);glBindBuffer(GL_ELEMENT_ARRAY_BUFFER,batch.indices);glBufferData(GL_ELEMENT_ARRAY_BUFFER,indices.size()*2,indices.data(),GL_STATIC_DRAW);check("Mesh buffer upload");
      }
    }
    const float extent[3]{high[0]-low[0],high[1]-low[1],high[2]-low[2]};
    float next_radius=std::sqrt(extent[0]*extent[0]+extent[1]*extent[1]+extent[2]*extent[2])*.5f;
    if(!std::isfinite(next_radius)||next_radius<.001f)throw std::runtime_error("Degenerate scene bounds");
    clear_actor_world(preserve_level_session);release_objects(object_groups);world_objects.clear();inspected_object=-1;release(draws,images);draws=std::move(candidate);images=std::move(textures);radius=next_radius;
    native_actor_ready=false;prince_body={};
    if(!preserve_level_session){crypt_spawn_script.clear();crypt_trigger_state={};}
    world_mode=false;resume_world=false;move_x=move_y=0;
    for(unsigned i=0;i<3;++i)center[i]=(low[i]+high[i])*.5f;
    yaw=-1.57f;pitch=.35f;zoom=1;enabled=true;
    current_scene=std::move(scene);player=std::move(candidate_player);epoch=std::chrono::steady_clock::now();sampled_ms=player.start;frozen=false;animation_failed=false;frozen_cursor_logged=false;
    char report[384];std::snprintf(report,sizeof(report),"3D upload OK | %zu draws | %u triangles | %zu textures\n%u animation tracks | %u skipped | Preview lighting. Drag to orbit.",draws.size(),triangles,images.size(),player.track_count(),player.skipped);
    __android_log_print(ANDROID_LOG_INFO,"DH2Native","%s | nodes %u | skipped nongeometry instances %u | skin draws %zu | segments %u",report,current_scene.nodes,current_scene.ignored_instances,std::count_if(draws.begin(),draws.end(),[](const Draw& d){return !d.skin.nodes.empty();}),player.segment_count());return report;
  }catch(const std::exception& e){release(candidate,textures);__android_log_print(ANDROID_LOG_ERROR,"DH2Native","Model load failed: %s",e.what());return std::string("Model load failed: ")+e.what();}
}
std::string load(const std::uint8_t* bytes,std::size_t size,AAssetManager* assets){return load_scene(bytes,size,assets,false);}
void move_axis(float x,float y){
  if(!std::isfinite(x)||!std::isfinite(y))return;
  move_x=std::clamp(x,-1.f,1.f);move_y=std::clamp(y,-1.f,1.f);float length=std::hypot(move_x,move_y);
  if(length>1){move_x/=length;move_y/=length;}
  if(length>.08f)inspected_object=-1;
  if(world_mode&&length<.01f){
    __android_log_print(ANDROID_LOG_INFO,"DH2Native","Player position %.4f %.4f %.4f | moved %u | blocked %u",actor_position[0],actor_position[1],actor_position[2],movement_steps,blocked_steps);
    __android_log_print(ANDROID_LOG_INFO,"DH2Native","Player facing | angle %.9g | native updates %u",heading,native_heading_updates);
  }
}
void focus_object(int index){
  inspected_object=-1;
  if(!world_mode||index<0||unsigned(index)>=world_objects.size())return;
  inspected_object=index;const auto& object=world_objects[index];
  __android_log_print(ANDROID_LOG_INFO,"DH2Native","Inspect object %d | %s | %s | room %u | position %.4f %.4f %.4f",index,object.model.c_str(),object.name.c_str(),object.room,object.position[0],object.position[1],object.position[2]);
  for(const auto& group:object_groups)for(const auto& actor:group.instances)if(actor.kind==1&&actor.room==object.room&&actor.name==object.name)__android_log_print(ANDROID_LOG_INFO,"DH2Native","Combat actor state | %s | HP %d | MP %d | dead %u | combo %u | state %s | target %d | hits %u",actor.name.c_str(),actor.properties.resolved[36],actor.properties.resolved[41],actor.combat_state.dead,actor.combat_state.combo_hits,actor.state.c_str(),actor.combat_target,combat_hits);
}
std::string set_object_state(int index,const std::string& state){
 if(!world_mode||index<0||unsigned(index)>=world_objects.size())return "Actor state requires a valid object index";
 const auto& target=world_objects[index];
 for(auto& group:object_groups){for(auto& actor:group.instances){if(actor.room==target.room&&actor.name==target.name){
  if(actor.kind!=1)return "Scenery has no character state";
  if(actor.gated_spawn)return "Gated actor requires exact-name SpawnCharacter; its full AI state machine is pending";
  if(actor.combat_state.dead&&state!="Died")return "Dead actor cannot enter a live state";
  if(state!="Idle"&&state!="Walk"&&state!="Attack"&&state!="Died")return "Actor state is not bundled";
  auto* sequence=dh2::data::animation_state(actor_animation_tables,group.animation_table,state);if(!sequence)return "Original actor state is absent";
  std::string error;if(!actor.scheduler.start(actor_animation_tables,sequence-actor_animation_tables.sequences.data(),actor_random,error))return error;
  actor.cursor=0;actor.completions=0;actor.state=state;actor.event_cursor={};actor.animation_events=0;
  __android_log_print(ANDROID_LOG_INFO,"DH2Native","Actor state selected | index %d | %s | %s | state %s | clip %d | layers %zu",index,actor.name.c_str(),actor.model.c_str(),state.c_str(),actor.scheduler.clip().anim,actor.scheduler.frames().size());
  return "Original actor state: "+state;
 }}}
 return "Actor instance is absent";
}
namespace {
dh2::character::factory::SpawnResult request_loaded_character(const std::string& exact_name) {
 using namespace dh2::character;
 if(!world_mode||!native_actor_ready)return factory::SpawnResult::invalid_request;
  std::vector<factory::ActorRef> refs;SpawnOwner* selected=nullptr;
  for(auto& group:object_groups)for(auto& actor:group.instances)if(actor.spawn_owner) {
   auto& owner=*actor.spawn_owner;
   refs.push_back({actor.name.c_str(),&owner.character.state,&owner.facts,&owner.spawn,factory::source_character_registered_states});
   if(actor.name==exact_name)selected=&owner;
  }
  if(selected&&(selected->actor->combat_state.dead||selected->actor->aggro.out_count||selected->actor->aggro.in_count))return factory::SpawnResult::source_state_rejected;
  Services services{selected,SpawnOwner::service};
  return factory::request_spawn_character(refs.data(),refs.size(),exact_name.c_str(),&services);
}
int crypt_script_spawn(void*,const dh2_script_runtime::Event& event) {
 try {
  const auto result=request_loaded_character(event.detail);
  __android_log_print(ANDROID_LOG_INFO,"DH2Native","Crypt script SpawnCharacter | %s | script %d | command %u | time %llu | result %s | synchronous original command service",event.detail,event.script_id,event.program_counter,static_cast<unsigned long long>(event.time_ms),dh2::character::factory::spawn_result_name(result));
  return static_cast<int>(result);
 } catch(const std::exception& error) {
  __android_log_print(ANDROID_LOG_ERROR,"DH2Native","Crypt script Character service failed: %s",error.what());
  return -1;
 }
}
void initialize_crypt_script(AAssetManager* assets,bool restore) {
 if(restore&&crypt_spawn_script.runtime()) {
  __android_log_print(ANDROID_LOG_INFO,"DH2Native","Crypt script restored | activations %u | requests %u | ready %u | running %u | no Spawn replay",crypt_spawn_script.runtime()->trigger_activations,crypt_spawn_script.dispatch_count(),unsigned(crypt_spawn_script.ready()),unsigned(crypt_spawn_script.running()));
  return;
 }
 auto descriptor=read(assets,"crypt-ghost01.dctr","scripts");
 if(descriptor.size()!=44||std::memcmp(descriptor.data(),"DCTR",4))throw std::runtime_error("Crypt trigger descriptor magic/size rejected");
 const auto word=[&](unsigned offset){std::uint32_t value;std::memcpy(&value,descriptor.data()+offset,4);return value;};
 const auto scalar=[&](unsigned offset){float value;std::memcpy(&value,descriptor.data()+offset,4);return value;};
 if(word(4)!=1||word(8)>=level.rooms||word(36)!=1||word(40)!=0)throw std::runtime_error("Crypt trigger descriptor bounded configuration rejected");
 const dh2_zone_contact::Vec3 position{scalar(12),scalar(16),scalar(20)},scale{scalar(24),scalar(28),scalar(32)};
 dh2_crypt_spawn_trigger::Aabb bounds{};
 if(!dh2_crypt_spawn_trigger::make_world_bounds(&dh2_crypt_spawn_trigger::GHOST_AMBUSH_01,&position,&scale,&bounds))throw std::runtime_error("Crypt trigger descriptor world bounds rejected");
 std::vector<dh2_script_runtime::ObjectSeed> seeds;
 for(const auto& group:object_groups)for(const auto& actor:group.instances)if(actor.spawn_owner) {
  dh2_script_runtime::ObjectSeed seed{};
  if(actor.name.size()>=sizeof(seed.name))throw std::runtime_error("Crypt script Character name exceeds adapter bound");
  std::strcpy(seed.name,actor.name.c_str());std::strcpy(seed.gametype,"Character");std::strcpy(seed.ai_state,"Limbus");
  seeds.push_back(seed);
 }
 const auto& source=dh2_crypt_spawn_trigger::GHOST_AMBUSH_01;
 std::string error;
 if(!crypt_spawn_script.load(read(assets,"scripts_pyscriptnames.bin","scripts"),read(assets,"scripts_pyscripts.bin","scripts"),read(assets,"007_crypt_01_pyscriptnames.bin","scripts"),read(assets,"007_crypt_01_pyscripts.bin","scripts"),seeds.data(),seeds.size(),source.trigger_name,source.script_name,source.activation_limit,{nullptr,crypt_script_spawn},error))throw std::runtime_error(error);
 crypt_trigger_position=position;crypt_trigger_scale=scale;crypt_trigger_room=word(8);
 dh2_crypt_spawn_trigger::init_state(&crypt_trigger_state);
 __android_log_print(ANDROID_LOG_INFO,"DH2Native","Crypt script ready | common %u | level %u | script %d | room %u | trigger %.6g %.6g %.6g | source AABB contact | other scripts pending",crypt_spawn_script.runtime()->common_table->script_count,crypt_spawn_script.runtime()->level_table->script_count,crypt_spawn_script.runtime()->trigger_script_id,crypt_trigger_room,position.x,position.y,position.z);
}
void update_crypt_contact() {
 if(!crypt_spawn_script.ready())return;
 const auto* box=prince_runtime.subobjects.absolute_bounds;
 const dh2_crypt_spawn_trigger::PlayerAabb player{{box[0],box[1],box[2],box[3],box[4],box[5]},1};
 // The selected original program never marks/locks a player and this local
 // development session is offline. Full Player/online producers remain unbound.
 const dh2_crypt_spawn_trigger::Frame frame{crypt_trigger_position,crypt_trigger_scale,&player,1,0,0,1,0};
 const auto status=crypt_spawn_script.contact(crypt_trigger_state,frame);
 if(status==dh2_trigger_contact::STATUS_ACTIVATED)__android_log_print(ANDROID_LOG_INFO,"DH2Native","Crypt trigger activated | GhostAmbush01 | count %u | time %llu | player AABB %.6g %.6g %.6g %.6g %.6g %.6g | authored placement",crypt_spawn_script.runtime()->trigger_activations,static_cast<unsigned long long>(crypt_spawn_script.runtime()->time_ms),box[0],box[1],box[2],box[3],box[4],box[5]);
 if(status==dh2_trigger_contact::STATUS_INVALID_ARGUMENT||status==dh2_trigger_contact::STATUS_RUNTIME_ERROR)throw std::runtime_error("Crypt source trigger contact rejected");
}
void advance_crypt_script(unsigned dt_ms) {
 if(!crypt_spawn_script.ready())return;
 const auto before=crypt_spawn_script.runtime()->event_count;
 std::string error;
 if(!crypt_spawn_script.advance(dt_ms,error))throw std::runtime_error(error);
 const auto* runtime=crypt_spawn_script.runtime();
 for(unsigned i=before;i<runtime->event_count;++i) {
  const auto& event=runtime->events[i];
  if(event.type==dh2_script_runtime::EVENT_WAIT_STARTED)__android_log_print(ANDROID_LOG_INFO,"DH2Native","Crypt script Wait | duration %d | time %llu | dt %u | source check then update and return",event.value,static_cast<unsigned long long>(event.time_ms),dt_ms);
  if(event.type==dh2_script_runtime::EVENT_SCRIPT_COMPLETED)__android_log_print(ANDROID_LOG_INFO,"DH2Native","Crypt script completed | %s | time %llu | requests %u",event.detail,static_cast<unsigned long long>(event.time_ms),crypt_spawn_script.dispatch_count());
 }
}
}
std::string spawn_character(const std::string& exact_name) {
 using namespace dh2::character;
 if(!world_mode||!native_actor_ready)return "SpawnCharacter requires a loaded world";
 try {
  const auto result=request_loaded_character(exact_name);
  __android_log_print(ANDROID_LOG_INFO,"DH2Native","SpawnCharacter development request | %s | result %s | original exact-name lookup | independent debug command",exact_name.c_str(),factory::spawn_result_name(result));
  if(result==factory::SpawnResult::requested) {
   for(unsigned i=0;i<world_objects.size();++i)if(world_objects[i].name==exact_name){focus_object(i);break;}
  }
  return std::string("SpawnCharacter: ")+factory::spawn_result_name(result);
 } catch(const std::exception& e) {__android_log_print(ANDROID_LOG_ERROR,"DH2Native","SpawnCharacter failed: %s",e.what());return std::string("SpawnCharacter failed: ")+e.what();}
}
std::string set_combat_target(int index,int target){
 if(!world_mode||index<0||unsigned(index)>=world_objects.size()||target<-2||(target>=0&&unsigned(target)>=world_objects.size())||index==target)return "Combat target indices are invalid";
 const auto& source=world_objects[index];
 if(source.gated_spawn||(target>=0&&world_objects[target].gated_spawn)){
  __android_log_print(ANDROID_LOG_INFO,"DH2Native","Combat target rejected | index %d | target %d | gated Character services pending",index,target);
  return "Gated actor combat services are pending";
 }
 if(target==-2&&prince_combat.life.dead)return "Combat target is dead";
 if(target>=0&&world_objects[target].kind!=1)return "Combat target is scenery";
 for(auto& group:object_groups)for(auto& actor:group.instances)if(actor.room==source.room&&actor.name==source.name){
  if(actor.kind!=1||actor.combat_state.dead)return "Combat source is not a living character";
  if(target>=0){const auto& record=world_objects[target];for(const auto& other_group:object_groups)for(const auto& other:other_group.instances)if(other.room==record.room&&other.name==record.name&&other.combat_state.dead)return "Combat target is dead";}
  actor.combat_target=target;
  __android_log_print(ANDROID_LOG_INFO,"DH2Native","Combat target selected | index %d | %s | target %d | supplied development target",index,actor.name.c_str(),target);
  return target==-1?"Combat target cleared":"Combat target selected";
 }
 return "Combat source is absent";
}
void add_combat_threat(AggroStorage& owner,AggroStorage& target,std::uint64_t owner_id,std::uint64_t target_id,float amount,unsigned facts){
 dh2::data::AggroTable outgoing{owner.outgoing.data(),owner.out_count,unsigned(owner.outgoing.size())},incoming{target.incoming.data(),target.in_count,unsigned(target.incoming.size())};
 std::uint32_t bits;std::memcpy(&bits,&amount,4);const dh2::data::AggroRequest request{&outgoing,&incoming,owner_id,target_id,bits,facts};dh2::data::AggroChange result{};
 if(dh2_aggro_apply(&result,&request,dh2::data::aggro_add)){enabled=false;__android_log_print(ANDROID_LOG_ERROR,"DH2Native","Combat aggression application failed");return;}
 owner.out_count=outgoing.count;target.in_count=incoming.count;
 __android_log_print(ANDROID_LOG_INFO,"DH2Native","Combat aggression | owner %llu | target %llu | amount bits %08x | delta bits %08x | outgoing %u | incoming %u | requests %u | callback services pending",static_cast<unsigned long long>(owner_id),static_cast<unsigned long long>(target_id),bits,result.returned_bits,owner.out_count,target.in_count,result.requests);
}
dh2::data::AiRangeResult actor_player_range(const ObjectActor& actor){
 const auto* npc=dh2::data::ai_props(actor_ai_tables,actor.properties.resolved[1]);const auto* prince=dh2::data::ai_props(actor_ai_tables,prince_combat.properties.resolved[1]);dh2::data::AiRangeResult result{};if(!npc||!prince)return result;
 const dh2::data::AiRangeRequest request{{actor.position[0],actor.position[1],actor.position[2]},{actor_position[0],actor_position[1],actor_position[2]},npc->melee_radius,prince->melee_radius,npc->view_radius};dh2_ai_range(&result,&request);return result;
}
void update_enemy(ObjectActor& actor,int table){
 if(actor.gated_spawn)return; // Full actor-owned AI/FSM integration is pending.
 if(!enemy_ai_enabled||frozen||actor.combat_state.dead)return;
 const auto* props=native_actor_ai_props(actor);if(!native_character_classification(actor,dh2::character_ai_classification::Query::monster)||props->script!="monster")return;
 auto range=actor_player_range(actor);
 if(actor.combat_target==-1&&!prince_combat.life.dead&&dh2::data::ai_enemy(actor_ai_tables,actor.properties.resolved[0],prince_combat.properties.resolved[0],false,true)){
  // Current scene has one hostile candidate. The original collision-query
  // backend/ordering is pending; supply that candidate's distance here.
  float distance;std::memcpy(&distance,&range.distance_bits,4);const float view=actor.aggro.out_count?props->view_radius:props->view_radius_no_aggro;
  if(view*view>distance){actor.combat_target=-2;actor.target_alive=1;actor.target_sight=range.sight;actor.target_seeking=true;
   __android_log_print(ANDROID_LOG_INFO,"DH2Native","Enemy spotted | %s | target Prince | AI %d | faction %d | distance squared bits %08x | view %.9g | original OnEnemySpotted target assignment",actor.name.c_str(),actor.properties.resolved[1],actor.properties.resolved[0],range.distance_bits,double(view));}
 }
 if(actor.combat_target!=-2)return;
 const unsigned facts=dh2::data::ai_target_present|dh2::data::ai_targetable|dh2::data::ai_callback_clears_dead|dh2::data::ai_callback_clears_sight|(prince_combat.life.dead?0u:dh2::data::ai_target_alive)|(range.sight?dh2::data::ai_target_sight:0u)|(range.melee?dh2::data::ai_target_melee_range:0u);
 const dh2::data::AiTargetRequest request{actor.state=="Attack"?5:3,facts,actor.target_alive,actor.target_sight};dh2::data::AiTargetResult result{};
 if(dh2_ai_target_update(&result,&request)){enabled=false;return;}actor.target_alive=result.alive;actor.target_sight=result.sight;
 auto select=[&](const char* name){auto* sequence=dh2::data::animation_state(actor_animation_tables,table,name);std::string error;if(!sequence||!actor.scheduler.start(actor_animation_tables,sequence-actor_animation_tables.sequences.data(),actor_random,error)){enabled=false;__android_log_print(ANDROID_LOG_ERROR,"DH2Native","Enemy controller animation failed");return;}actor.state=name;actor.cursor=0;actor.completions=0;actor.event_cursor={};actor.animation_events=0;};
 if(!result.target_present){actor.combat_target=-1;if(actor.ai_attack){select("Idle");actor.ai_attack=false;}
  __android_log_print(ANDROID_LOG_INFO,"DH2Native","Enemy target cleared | %s | event %u | Prince dead %u | controller stopped | pursuit backend pending",actor.name.c_str(),result.events[result.event_count-1],prince_combat.life.dead);return;}
 if(result.event_count&&result.events[result.event_count-1]==17&&(actor.state!="Attack"||!actor.scheduler.active())){
  select("Attack");actor.ai_attack=true;__android_log_print(ANDROID_LOG_INFO,"DH2Native","Enemy melee selected | %s | target Prince | event 17 | distance squared bits %08x | clip %d | native controller adapter",actor.name.c_str(),range.distance_bits,actor.scheduler.clip().anim);
 }
 // Full pursuit, seeking, attack-delay/FSM and already-attacking target
 // switching remain separate reconstruction work.
}
void apply_actor_to_player(ObjectActor& attacker,const dh2::data::CombatEventAction& action){
 if(prince_combat.life.dead)return;
 if(attacker.ai_attack&&enemy_ai_enabled&&!actor_player_range(attacker).melee)return;
 // The prototype supplies state 3 when standing and 13 while walking.
 // Original SM_IsIdle(false) accepts both; do not suppress its hit reaction
 // merely because movement input is held. Full original FSM producers remain pending.
 const bool idle=dh2_character_state_is_idle(prince_state.current,0)==1;
 dh2::data::CombatantView av{attacker.properties.resolved.data(),-1,-1,0,0,0,5,attacker.combat_state.combo_hits},dv{prince_combat.properties.resolved.data(),-1,-1,0,0,0,prince_state.current,prince_combat.life.combo_hits};
 dh2::data::CombatResult result;dh2::data::MonsterApplication applied;auto ap=dh2::data::property_view(actor_property_rules,attacker.properties),dp=dh2::data::property_view(actor_property_rules,prince_combat.properties);const dh2::data::MonsterApplicationRequest request{&result,&ap,&dp,&attacker.combat_state,&prince_combat.life};
 const unsigned aggro_facts=dh2::data::aggro_owner_player|(attacker.combat_state.dead?dh2::data::aggro_target_dead:0u);
 if(dh2_combat_melee(&result,&av,&dv,&combat_random,action.offhand,0)||dh2_combat_apply_monster_to_player(&applied,&request,idle)){__android_log_print(ANDROID_LOG_ERROR,"DH2Native","Player defender application failed");enabled=false;return;}
 if(applied.hit_called)add_combat_threat(prince_combat.aggro,attacker.aggro,0x100000001ull,attacker.identity,applied.threat,aggro_facts);
 ++combat_hits;++prince_combat.received;
 __android_log_print(ANDROID_LOG_INFO,"DH2Native","Prince damage received | attacker %s | attempt %u | result %d %d %d %d %d %d %u %u %d %d | HP %d %d | dead %u | combo %u | RNG %u %u | statuses %u | low health armed %u | cue %u | checksum %016llx",attacker.name.c_str(),prince_combat.received,result.amount,result.dot_element,result.dot_duration,result.dot_amount,result.hp_leech,result.mp_leech,result.outcomes,result.mask,result.weapon_category,result.element,applied.health.before,applied.health.after,prince_combat.life.dead,attacker.combat_state.combo_hits,combat_random.seed,combat_random.calls,applied.status_requests,prince_combat.life.low_health_armed,applied.health.low_health_cue,static_cast<unsigned long long>(snapshot_checksum(prince_combat.properties.resolved)));
 if(applied.health.low_health_cue)__android_log_print(ANDROID_LOG_INFO,"DH2Native","Player low health request | HP %d | maximum %d | audio pending",applied.health.after,prince_combat.properties.resolved[38]);
 if(applied.status_requests)__android_log_print(ANDROID_LOG_INFO,"DH2Native","Player status services pending | requests %u",applied.status_requests);
 if(applied.health.kill_requested){prince_combat.pending_death=true;prince_combat.death_target=attacker.identity;move_x=move_y=0;if(native_actor_ready)request_prince_death();}
}
void apply_actor_attack(ObjectActor& attacker,const dh2::data::CombatEventAction& action){
 if(action.kind!=dh2::data::CombatEventKind::melee||attacker.combat_state.dead||attacker.gated_spawn)return;
 if(attacker.combat_target==-2){apply_actor_to_player(attacker,action);return;}
 if(attacker.combat_target<0)return;
 const auto& target_record=world_objects.at(attacker.combat_target);ObjectActor* defender=nullptr;
 for(auto& group:object_groups)for(auto& actor:group.instances)if(actor.room==target_record.room&&actor.name==target_record.name)defender=&actor;
 if(!defender||defender->kind!=1||defender->combat_state.dead||defender->gated_spawn)return;
 dh2::data::CombatantView av{attacker.properties.resolved.data(),-1,-1,0,0,0,5,attacker.combat_state.combo_hits},dv{defender->properties.resolved.data(),-1,-1,0,0,0,defender->state=="Attack"?5:-1,defender->combat_state.combo_hits};
 dh2::data::CombatResult result;dh2::data::MonsterApplication applied;
 auto ap=dh2::data::property_view(actor_property_rules,attacker.properties),dp=dh2::data::property_view(actor_property_rules,defender->properties);
 const dh2::data::MonsterApplicationRequest request{&result,&ap,&dp,&attacker.combat_state,&defender->combat_state};
 const unsigned aggro_facts=(defender->combat_state.dead?dh2::data::aggro_owner_dead:0u)|(attacker.combat_state.dead?dh2::data::aggro_target_dead:0u);
 if(dh2_combat_melee(&result,&av,&dv,&combat_random,action.offhand,0)||dh2_combat_apply_monster(&applied,&request)){__android_log_print(ANDROID_LOG_ERROR,"DH2Native","Native combat application failed");enabled=false;return;}
 if(applied.hit_called)add_combat_threat(defender->aggro,attacker.aggro,defender->identity,attacker.identity,applied.threat,aggro_facts);
 ++combat_hits;
 __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native combat hit | %s | target %s | hit %u | result %d %d %d %d %d %d %u %u %d %d | HP %d %d | dead %u | combo %u | RNG %u %u | statuses %u | threat %.9g",attacker.name.c_str(),defender->name.c_str(),combat_hits,result.amount,result.dot_element,result.dot_duration,result.dot_amount,result.hp_leech,result.mp_leech,result.outcomes,result.mask,result.weapon_category,result.element,applied.health.before,applied.health.after,defender->combat_state.dead,attacker.combat_state.combo_hits,combat_random.seed,combat_random.calls,applied.status_requests,double(applied.threat));
 if(applied.status_requests)__android_log_print(ANDROID_LOG_INFO,"DH2Native","Combat status services pending | %s | requests %u",defender->name.c_str(),applied.status_requests);
 if(applied.health.kill_requested){defender->pending_death=true;__android_log_print(ANDROID_LOG_INFO,"DH2Native","Combat death event queued | %s | event 2 | HP %d | dead %u | lifecycle %d",defender->name.c_str(),defender->properties.resolved[36],defender->combat_state.dead,defender->combat_state.lifecycle);}
}
ObjectActor* player_target(int index){
 if(index<0||unsigned(index)>=world_objects.size())return nullptr;
 const auto& record=world_objects[index];
 // The new gated actors own source Spawn/Idle state. Their combat/death
 // services are not connected yet; the legacy NPC death scheduler cannot
 // safely mutate them while that coordinator still owns Idle. This is an
 // explicit development boundary, not the original game's targeting rule.
 if(record.gated_spawn)return nullptr;
 for(auto& group:object_groups)for(auto& actor:group.instances)if(actor.kind==1&&actor.room==record.room&&actor.name==record.name&&!actor.combat_state.dead)return &actor;
 return nullptr;
}
bool player_reach(const ObjectActor& target){
 return actor_player_range(target).melee;
}
std::string player_attack(int supplied_target){
 if(!world_mode||!native_actor_ready||prince_combat.life.dead)return "Player is unavailable";
 if(supplied_target>=0&&unsigned(supplied_target)<world_objects.size()&&world_objects[supplied_target].gated_spawn)
  return "Gated actor combat services are pending";
 if(prince_state.current==5)return "Attack is already in progress";
 int target=supplied_target;float nearest=INFINITY;
 if(target==-1)for(unsigned i=0;i<world_objects.size();++i)if(auto* actor=player_target(i);actor&&player_reach(*actor)){
  const float distance=std::hypot(actor->position[0]-actor_position[0],actor->position[1]-actor_position[1]);if(distance<nearest){nearest=distance;target=i;}
 }
 auto* defender=player_target(target);if(!defender||!player_reach(*defender))return "Walk closer to an enemy";
 prince_combat.target=target;
 const int accepted=prince_event(0xc354,defender->identity);
 if(accepted<0)return "Player attack state request failed";
 if(!accepted)return "Attack is cooling down";
 __android_log_print(ANDROID_LOG_INFO,"DH2Native","Player attack selected | target %d | %s | root %d | clip %d | supplied unarmed equipment | native state %d",target,defender->name.c_str(),prince_state.current_animation,prince_locomotion.current_clip(),prince_state.current);
 return "Attacking";
}
std::array<int,7> player_vitals(){return {prince_combat.properties.resolved[36],prince_combat.properties.resolved[38],prince_combat.properties.resolved[41],prince_combat.properties.resolved[43],int(prince_combat.life.dead),int(prince_combat.life.low_health_armed),prince_state.current};}
namespace {
void player_authored_event(const dh2::animation::TriggeredEvent& event,int clip){
 const auto& frames=prince_locomotion.scheduler.frames();
 if(frames.empty())return;
 const dh2::data::CombatEventContext context{prince_state.current,int(frames.front().step),int(frames.back().step),0,-1};
 dh2::data::CombatEventAction action;
 if(dh2_combat_event_route(&action,&context,event.name))throw std::runtime_error("Player combat route failed");
 __android_log_print(ANDROID_LOG_INFO,"DH2Native","Player animation event | clip %d | name %s | sequence %d | attack step %d | kind %d | lag %d | %s | Step %u | position %.4f %.4f %.4f",clip,event.name,action.sequence_step,action.attack_step,int(action.kind),event.lag_ms,prince_scene_phase?"scene before Step":"synchronous actor replay",native_physics_steps,prince_runtime.subobjects.position[0],prince_runtime.subobjects.position[1],prince_runtime.subobjects.position[2]);
 if(action.kind!=dh2::data::CombatEventKind::melee)return;
 auto* target=player_target(prince_combat.target);if(!target||!player_reach(*target))return;
 dh2::data::CombatantView av{prince_combat.properties.resolved.data(),-1,-1,0,0,0,prince_state.current,prince_combat.life.combo_hits},dv{target->properties.resolved.data(),-1,-1,0,0,0,target->state=="Attack"?5:-1,target->combat_state.combo_hits};
 auto ap=dh2::data::property_view(actor_property_rules,prince_combat.properties),dp=dh2::data::property_view(actor_property_rules,target->properties);
 dh2::data::CombatResult result;dh2::data::MonsterApplication applied;
 const dh2::data::MonsterApplicationRequest request{&result,&ap,&dp,&prince_combat.life,&target->combat_state};
 const unsigned aggro_facts=(target->combat_state.dead?dh2::data::aggro_owner_dead:0u)|(prince_combat.life.dead?dh2::data::aggro_target_dead:0u);
 if(dh2_combat_melee(&result,&av,&dv,&combat_random,action.offhand,0)||dh2_combat_apply_player_to_monster(&applied,&request))throw std::runtime_error("Player combat application failed");
 if(applied.hit_called)add_combat_threat(target->aggro,prince_combat.aggro,target->identity,0x100000001ull,applied.threat,aggro_facts);
 ++combat_hits;++prince_combat.attempts;
 __android_log_print(ANDROID_LOG_INFO,"DH2Native","Prince combat hit | target %s | attempt %u | result %d %d %d %d %d %d %u %u %d %d | HP %d %d | dead %u | combo %u | RNG %u %u | statuses %u",target->name.c_str(),prince_combat.attempts,result.amount,result.dot_element,result.dot_duration,result.dot_amount,result.hp_leech,result.mp_leech,result.outcomes,result.mask,result.weapon_category,result.element,applied.health.before,applied.health.after,target->combat_state.dead,prince_combat.life.combo_hits,combat_random.seed,combat_random.calls,applied.status_requests);
 if(applied.health.kill_requested)target->pending_death=true;
 if(applied.status_requests)__android_log_print(ANDROID_LOG_INFO,"DH2Native","Combat status services pending | %s | requests %u",target->name.c_str(),applied.status_requests);
}
}
namespace {
unsigned actor_virtual_service(void*,unsigned event,float* payload){
 using namespace dh2::subobjects;
 switch(event){
  // The reconstructed scene/body/floor bridge handles physical and position
  // events. The current renderer has no original game camera or auxiliary.
  case camera_get:if(payload)payload[0]=0;return 0;
  case camera_can_move:return 1;
  case visual_update:case visual_apply_rotation:case get_speed:return 1;
  case visual_sync_scaling:{
   std::string error;return prince_visual.update_world(current_scene,error)?1:~0u;
  }
  default:return ~0u;
 }
}
dh2::character::Facts prince_facts(){
 dh2::character::Facts facts{};facts.is_player=1;facts.stance_mask=210;
 // The current development player has no inventory weapon items. Supply the
 // same empty-equip-set predicate results, then execute the original getter.
 const dh2::character::StanceFacts16 equipment{dh2::character::stance_is_player,5,{0,0}};
 if(dh2_character_anim_stance(&facts.stance,&equipment)!=1)throw std::runtime_error("Character stance producer failed");
 if(auto* target=player_target(prince_combat.target))facts.target=target->identity;
 std::copy(prince_runtime.controller.heading.direction,prince_runtime.controller.heading.direction+3,facts.heading);
 facts.walk_threshold=.45f;facts.run_threshold=.85f;
 const float one=1;dh2::move::Speed movement{};
 if(dh2_move_speed(&movement,prince_combat.properties.resolved.data(),&one)||dh2_character_attack_speed(&facts.attack_speed,prince_combat.properties.resolved.data())!=1)throw std::runtime_error("Character property speed failed");
 facts.walk_speed=movement.walk_multiplier;
 auto sequence=[](const char* name){const auto* value=dh2::data::animation_state(actor_animation_tables,prince_combat.animation_table,name);return value?int(value-actor_animation_tables.sequences.data()):-1;};
 facts.idle=sequence("Idle");facts.walk=sequence("Walk");facts.run=sequence("Run");facts.attack_static=sequence("AttackStatic");facts.attack_moving=sequence("Attack");facts.death=sequence("Died");
 if(const auto* ai=dh2::data::ai_props(actor_ai_tables,prince_combat.properties.resolved[1]))facts.attack_delay=std::uint32_t(ai->attack_delay);
 facts.is_at_destination=dh2_nav_is_at_destination(&prince_runtime.controller,&prince_runtime.path)==1;
 facts.following_path=prince_runtime.path.count!=0;facts.has_ranged_weapon=0;
 return facts;
}
void refresh_prince_facts(){prince_character.refresh_facts();}
int prince_look_service(void*,const dh2::character::CharacterControlRequest32* request,
                       dh2::character::CharacterControlResponse16* response){
 using namespace dh2::character;
 if(request->service==control_target_position){
  for(const auto& group:object_groups)for(const auto& target:group.instances)if(target.identity==request->subject){
   // NPC visual target-node/cache ownership remains unfinished. This current
   // native object projection explicitly exposes its own world position.
   std::copy(target.position.begin(),target.position.end(),response->position);return 1;
  }
  return -1;
 }
 if(request->service==control_look_at_point&&request->subject==0x100000001ull){
  LookAtState16 look{{prince_runtime.subobjects.position[0],prince_runtime.subobjects.position[1],prince_runtime.subobjects.position[2]},prince_runtime.rotation.heading_angle};
  if(dh2_character_look_at_point(&look,request->position))return -1;
  if(look.heading_angle!=prince_runtime.rotation.heading_angle){++native_heading_updates;
   __android_log_print(ANDROID_LOG_INFO,"DH2Native","Player attack facing | direction %.9g %.9g | angle %.9g | native updates %u",request->position[0]-look.position[0],request->position[1]-look.position[1],look.heading_angle,native_heading_updates);
  }
  prince_runtime.rotation.heading_angle=prince_runtime.controller.heading.angle=look.heading_angle;
  __android_log_print(ANDROID_LOG_INFO,"DH2Native","Character point facing applied | native LookAt and LookTowards | angle %.9g",look.heading_angle);return 1;
 }
 return -1;
}
void character_service(void*,dh2::character::State* state,const dh2::character::Request* request){
 using namespace dh2::character;std::string error;
 switch(request->service){
 case stop:{
  dh2::move::Policy policy{};dh2_move_policy(&policy,&state->flags);
  if(prince_body.body&&policy.position_from_physics&&dh2_native_body_stop(&prince_body,prince_runtime.subobjects.position))throw std::runtime_error("Character Stop body failed");
  dh2_nav_drop_path(&prince_runtime.path);
  std::copy(prince_runtime.subobjects.position,prince_runtime.subobjects.position+3,prince_runtime.subobjects.destination);
  prince_runtime.controller.path_requested=0;prince_runtime.controller.heading.active=0;
  std::fill(prince_runtime.controller.heading.direction,prince_runtime.controller.heading.direction+3,0);state->heading_active=0;refresh_prince_facts();break;
 }
 case pin:if(prince_body.body&&dh2_native_body_pin(&prince_body))throw std::runtime_error("Character pin failed");break;
 case unpin:if(prince_body.body&&dh2_native_body_unpin(&prince_body))throw std::runtime_error("Character unpin failed");break;
 case set_animation:
  state->current_animation=request->argument[0];
  if(!prince_locomotion.start(actor_animation_tables,state->current_animation,actor_random,prince_attack_clips,prince_visual,current_scene,1,error))throw std::runtime_error(error);
  __android_log_print(ANDROID_LOG_INFO,"DH2Native","Character animation selected | state %d | flags %x | sequence %d | clip %d | %s",state->current,state->flags,state->current_animation,prince_locomotion.current_clip(),prince_scene_phase?"scene callback":"actor state service");
  break;
 case set_speed:
  if(!prince_locomotion.set_speed(request->scalar,error))throw std::runtime_error(error);
  if(state->current==4)__android_log_print(ANDROID_LOG_INFO,"DH2Native","Locomotion clip: %s | original selected clip %d | timeline speed %.9g | authored restart",state->move_type==2?"Run":"Walk",prince_locomotion.current_clip(),prince_locomotion.current_timeline().scale);
  break;
 case stop_loop:prince_locomotion.stop_loop(false);break;
 case start_timer:{
  const auto id=prince_character.start_timer(std::uint32_t(request->argument[0]),request->argument[1],request->argument[2],std::uintptr_t(request->identity));
  if(id<0)throw std::runtime_error("Character timer start failed: "+std::to_string(id));
  __android_log_print(ANDROID_LOG_INFO,"DH2Native","Character timer started | state %d | slot %d | duration %u | repeat %d | event 0x%x | gate %x",state->current,id,std::uint32_t(request->argument[0]),request->argument[1],request->argument[2],state->attack_gate);break;
 }
 case swap_animation:{
  const auto before_root=prince_locomotion.scheduler.frames().empty()?-1:prince_locomotion.scheduler.frames().front().sequence;
  const auto before_clip=prince_locomotion.current_clip();const auto before_ms=prince_locomotion.current_timeline().current_ms;
  if(!prince_locomotion.swap(actor_animation_tables,request->argument[0],request->argument[1],actor_random,prince_attack_clips,prince_visual,current_scene,state->cached_speed,error))throw std::runtime_error(error);
  if(!prince_locomotion.scheduler.frames().empty())state->current_animation=prince_locomotion.scheduler.frames().front().sequence;
  __android_log_print(ANDROID_LOG_INFO,"DH2Native","Character animation swap | state %d | root %d %d | clip %d %d | ms %d %d | desired %d | old %d",state->current,before_root,state->current_animation,before_clip,prince_locomotion.current_clip(),before_ms,prince_locomotion.current_timeline().current_ms,request->argument[0],request->argument[1]);break;
 }
 case look_at:{
  const CharacterControlServices16 services{nullptr,prince_look_service};
  if(request->argument[0]==1){
   const ControllerCommandState32 controller{reinterpret_cast<std::uintptr_t>(&prince_state),0x100000001ull,controller_global_blocked,state->controller_locked,prince_controller_forced,0};
   if(dh2_character_controller_character(&controller,controller_look_object,request->identity,&services)!=1)throw std::runtime_error("Character controller LookAt failed");
  }else if(dh2_character_control(0x100000001ull,controller_look_object,request->identity,&services)!=1)throw std::runtime_error("Character LookAt failed");
  break;
 }
 case set_heading:{
  float direction[3];std::memcpy(direction,request->argument,12);
  if(dh2_nav_set_heading(&prince_runtime.controller.heading,direction,unsigned(request->scalar)))throw std::runtime_error("Character heading failed");
  prince_runtime.rotation.heading_angle=prince_runtime.controller.heading.angle;state->heading_active=prince_runtime.controller.heading.active;refresh_prince_facts();break;
 }
 case set_death_filter:case reset_filter:{
  if(!prince_body.body)break;
  auto* shape=prince_body.body->GetShapeList();if(!shape)throw std::runtime_error("Character shape missing");
  auto filter=prince_initial_filter;
  if(request->service==set_death_filter){filter.groupIndex=std::int16_t(request->argument[0]);filter.categoryBits=std::uint16_t(request->argument[1]);filter.maskBits=std::uint16_t(request->argument[2]);}
  shape->SetFilterData(filter);
  prince_body_owner.contact.primary={filter.groupIndex,filter.categoryBits,filter.maskBits,1};
  actor_world.backend()->Refilter(shape);
  __android_log_print(ANDROID_LOG_INFO,"DH2Native","Character filter applied | state %d | group %d | category %u | mask %u | primary only",state->current,filter.groupIndex,filter.categoryBits,filter.maskBits);break;
 }
 case remove_body:
  actor_world.destroy(prince_body.body);prince_body.pinned=0;
  __android_log_print(ANDROID_LOG_INFO,"DH2Native","Character physical object removed | state %d | source event 22",state->current);break;
 case raise_event:{
  const unsigned event=unsigned(request->argument[0]);
  __android_log_print(ANDROID_LOG_INFO,"DH2Native","Character state event | state %d | event %x | prior %d | flags %x",state->current,event,request->argument[1],state->flags);
  if(event==0x1d)__android_log_print(ANDROID_LOG_INFO,"DH2Native","Player source state | previous %d | current %d | event 0x%x | flags %x | root %d | clip %d | position %.4f %.4f %.4f | Step %u",request->argument[1],state->current,prince_character.event_cause(),state->flags,state->current_animation,prince_locomotion.current_clip(),prince_runtime.subobjects.position[0],prince_runtime.subobjects.position[1],prince_runtime.subobjects.position[2],native_physics_steps);
  if(event==0x3f&&prince_event(event,request->identity)<0)throw std::runtime_error("Character state event failed");
  if((event==0x2a||event==0x2b||event==0x2c)&&prince_event(event,request->identity)<0)throw std::runtime_error("Character state gate event failed");
  break;
 }
 default:{
  const auto bit=std::uint64_t(1)<<request->service;
  if(!(pending_character_services&bit)){pending_character_services|=bit;__android_log_print(ANDROID_LOG_INFO,"DH2Native","Character external service pending | service %u | state %d",request->service,state->current);}
  break;
 }
 }
 prince_flags=state->flags;prince_move_type=state->move_type;walking=state->current==4;
}
int prince_event(unsigned event,std::uint64_t payload){
 return prince_character.event(event,payload);
}
void prince_timer_before(void*,dh2::character::Coordinator&,std::int32_t event,dh2::character::Timer32& timer,std::uint32_t){
 // Bounded native composition forwards ScriptTimer to this same skill VM.
 // Full Player CharAI event/lifecycle routing is still a separate boundary.
 if(event==0x35&&prince_skills)prince_skills->timer(timer.id);
 // Source Character/AI forwarding must reach the machine even when the AI
 // virtual expired callback is suppressed by the controller lock. Full
 // Prince AIS behavior is pending; its optional callback is not fabricated.
 if(event==0x2a&&!prince_state.controller_locked){
  constexpr auto ai_boundary=std::uint64_t(1)<<60;
  if(!(pending_character_services&ai_boundary)){pending_character_services|=ai_boundary;__android_log_print(ANDROID_LOG_INFO,"DH2Native","Character AI expiry service pending | event 0x2a | before state event");}
 }
}
dh2::character::TimerRouting prince_timer_route(void*,dh2::character::Coordinator&,std::int32_t event,dh2::character::Timer32& timer,std::uint32_t){
 using Route=dh2::character::TimerRouting;
 if(event==0x33||event==0x34)return prince_skills&&prince_skills->ai_timer(event,timer)?Route::delivered:Route::failed;
 if(event==0x36){if(!prince_skills)return Route::failed;prince_skills->buff_expired(timer);return Route::delivered;}
 return Route::machine;
}
void prince_timer_after(void*,dh2::character::Coordinator&,std::int32_t event,dh2::character::Timer32& timer,std::uint32_t gate){
 __android_log_print(ANDROID_LOG_INFO,"DH2Native","Character timer expired | slot %u | event 0x%x | elapsed %u | duration %u | gate %x %x | Step %u | before state update",timer.id,unsigned(event),timer.elapsed_ms,timer.duration_ms,gate,prince_state.attack_gate,native_physics_steps);
}
void character_playback_event(void*,dh2::actor::BlendedPlayback&,const dh2::actor::BlendedPlaybackEvent& blended){
 const auto& event=blended.event;
 __android_log_print(ANDROID_LOG_INFO,"DH2Native","Blended character event | event 0x%x | clip %d | slot %u | phase %u | lag %d",event.handoff.event_id,event.clip,blended.slot,event.phase,event.handoff.lag_ms);
 // The full native six-event CharAI/AIS service binding remains unfinished.
 // Preserve synchronous authored damage and the existing FSM close boundary.
 if(event.handoff.event_id==0x28){
  const dh2::animation::TriggeredEvent trigger{event.handoff.lag_ms,event.handoff.payload};player_authored_event(trigger,event.clip);
 }else if(event.handoff.event_id==0x22){
  __android_log_print(ANDROID_LOG_INFO,"DH2Native","Character sequence closed | state %d | event 0x22 | clip %d | Step %u | post Step animator | position %.4f %.4f %.4f",prince_state.current,event.clip,native_physics_steps,prince_runtime.subobjects.position[0],prince_runtime.subobjects.position[1],prince_runtime.subobjects.position[2]);
  if(prince_event(0x22,0)<0)throw std::runtime_error("Character sequence close failed");
 }
}
void request_prince_death(){
 if(!prince_combat.pending_death)return;
 const auto facts=prince_facts();prince_state.animation_override=facts.death;
 const int accepted=prince_event(0xc358,prince_combat.death_target);
 if(accepted<0)throw std::runtime_error("Character death state request failed");
 prince_combat.pending_death=false;
 __android_log_print(ANDROID_LOG_INFO,"DH2Native","Player death animation selected | clip %d | dead %u | lifecycle %d | state %d",prince_locomotion.current_clip(),prince_combat.life.dead,prince_combat.life.lifecycle,prince_state.current);
}
void initialize_gated_characters(AAssetManager* assets) {
 for(auto& group:object_groups)for(auto& actor:group.instances)if(actor.gated_spawn) {
  const bool fresh=!actor.spawn_owner;
  if(fresh)actor.spawn_owner=std::make_shared<SpawnOwner>(actor.identity);
  auto& owner=*actor.spawn_owner;owner.bind(actor,group.animation_table);owner.body_creations=0;
  auto sequence=[&](const char* name){const auto* value=dh2::data::animation_state(actor_animation_tables,group.animation_table,name);return value?int(value-actor_animation_tables.sequences.data()):-1;};
  owner.facts={};owner.facts.idle=sequence("Idle");owner.facts.walk=sequence("Walk");
  owner.facts.run=sequence("Run");owner.facts.attack_moving=sequence("Attack");owner.facts.death=sequence("Died");
  owner.spawn={};owner.spawn.spawn_animation=sequence("Spawn");owner.spawn.visual_present=1;
  owner.spawn.raw_fade_in_argument=float(actor.properties.resolved[210]);
  auto model=read(assets,actor.model,"actors");dh2::resources::BresView view{};std::string error;
  if(dh2_bres_open(&view,model.data(),model.size())!=dh2::resources::BresError::ok)throw std::runtime_error("Spawn model rejected");
  std::vector<dh2::physical::CharacterMeshEntry> entries;
  if(!dh2::physical::character_scene_entries(view,group.resource.rest_scene,entries,error))throw std::runtime_error(error);
  dh2::physical::CharacterMeshBoxInput input{};input.entries=entries.data();input.count=entries.size();
  std::copy(actor.position.begin(),actor.position.end(),input.placement.position);
  std::copy(actor.rotation_degrees.begin(),actor.rotation_degrees.end(),input.placement.rotation_degrees);
  if(dh2_character_visual_scale(input.placement.scale,actor.properties.base.data()+12))throw std::runtime_error("Spawn scale rejected");
  dh2::physical::DecorSceneOutput mesh{};
  if(dh2_character_mesh_box(&mesh,&input))throw std::runtime_error("Spawn mesh bounds rejected");
  dh2::physical::CharacterOwnerBoundsInput bounds_input{};
  std::copy(mesh.mesh_box,mesh.mesh_box+6,bounds_input.mesh_box);
  std::copy(actor.position.begin(),actor.position.end(),bounds_input.position);
  bounds_input.collision_scale=actor.properties.resolved[16];
  dh2::physical::CharacterOwnerBounds bounds{};
  if(dh2_character_owner_bounds(&bounds,&bounds_input))throw std::runtime_error("Spawn owner bounds rejected");
  const auto* ai=dh2::data::ai_props(actor_ai_tables,actor.properties.resolved[1]);
  if(!ai)throw std::runtime_error("Spawn AI type producer absent");
  dh2::physical::CharacterBodyInput body{};body.owner=&owner;body.new_physical=&owner.body;body.character_type=ai->type;
  body.absolute_bounds[0]=bounds.absolute_box[0];body.absolute_bounds[1]=bounds.absolute_box[1];
  body.absolute_bounds[2]=bounds.absolute_box[3];body.absolute_bounds[3]=bounds.absolute_box[4];
  body.position[0]=actor.position[0];body.position[1]=actor.position[1];
  if(dh2_character_body_config(&owner.config,&body)||!owner.config.enabled)throw std::runtime_error("Spawn character body rejected");
  if(fresh) {
   owner.character.state={};actor.state="Limbus";
   if(owner.character.spawn_transition(0)!=1)throw std::runtime_error("Limbus source initialization rejected");
  } else if(owner.character.state.body_present)owner.create_body();
  if(!owner.runtime_ready)owner.initialize_runtime(group,bounds,mesh.effective_scale);
  __android_log_print(ANDROID_LOG_INFO,"DH2Native","Gated character ready | %s | source state %d | presentation visible %u | body %u | Spawn sequence %d | AI type %d | restored %u",actor.name.c_str(),owner.character.state.current,unsigned(owner.source_visible),unsigned(owner.body.body!=nullptr),owner.spawn.spawn_animation,ai->type,unsigned(!fresh));
 }
}
void initialize_native_actor(AAssetManager* assets,bool restore){
 std::string error;float bounds[4];
 const bool restore_without_body=restore&&prince_state.current==12&&!prince_state.body_present;
 if(!level.native_floor||dh2_decor_level_world_bounds(bounds))throw std::runtime_error("Native actor world bounds missing");
 // Teardown belongs to the world replacement boundary as well as Activity
 // reset. Retained Character state never retains a prior world's b2Body*.
 clear_actor_world(restore);actor_world.load(bounds);decor_body_owners.clear();decor_bodies.clear();decor_bodies.reserve(84);
 prince_body={};prince_body_owner.native=&prince_body;
 // Load the original immutable factory pose and the same explicit default
 // warrior modules used by this prototype's equipment renderer.
 auto prince=read(assets,"prince_modular.bdae","models");dh2::resources::BresView view{};
 dh2::scene::Scene factory;
 if(dh2_bres_open(&view,prince.data(),prince.size())!=dh2::resources::BresError::ok||!dh2::scene::load(view,factory,error))throw std::runtime_error(error);
 const auto node=std::find_if(factory.graph.begin(),factory.graph.end(),[](const auto& n){return n.id=="prince_modular-node";});
 if(node==factory.graph.end())throw std::runtime_error("Native player modular node absent");
 factory.instances.clear();
 for(unsigned i=0;i<dh2_bres_library_count(&view,dh2::resources::Library::controller);++i){
  dh2::skinning::Skin skin;if(!dh2::skinning::load(view,i,factory,skin,error))throw std::runtime_error(error);
  if(skin.id.find("_default_warrior-mesh-skin")==std::string::npos)continue;
  dh2::scene::Instance instance{node->id,unsigned(node-factory.graph.begin()),skin.geometry,node->world,{}};instance.controller=i;
  factory.instances.push_back(std::move(instance));
 }
 if(factory.instances.size()!=4)throw std::runtime_error("Native player equipment bounds incomplete");
 std::vector<dh2::physical::CharacterMeshEntry> entries;
 if(!dh2::physical::character_scene_entries(view,factory,entries,error))throw std::runtime_error(error);
 dh2::physical::CharacterMeshBoxInput mesh_input{};mesh_input.entries=entries.data();mesh_input.count=entries.size();
 std::copy(actor_position.begin(),actor_position.end(),mesh_input.placement.position);
 if(dh2_character_visual_scale(mesh_input.placement.scale,prince_combat.properties.base.data()+12))throw std::runtime_error("Original character visual scale rejected");
 dh2::physical::DecorSceneOutput mesh;
 if(dh2_character_mesh_box(&mesh,&mesh_input))throw std::runtime_error("Native player mesh bounds rejected");
 prince_runtime={};std::copy(actor_position.begin(),actor_position.end(),prince_runtime.subobjects.position);
 std::copy(actor_position.begin(),actor_position.end(),prince_runtime.subobjects.destination);
 dh2::physical::CharacterOwnerBoundsInput owner_input{};
 std::copy(mesh.mesh_box,mesh.mesh_box+6,owner_input.mesh_box);std::copy(actor_position.begin(),actor_position.end(),owner_input.position);
 owner_input.collision_scale=prince_combat.properties.resolved[16];
 dh2::physical::CharacterOwnerBounds owner_bounds{};
 if(dh2_character_owner_bounds(&owner_bounds,&owner_input))throw std::runtime_error("Original character owner bounds rejected");
 std::copy(owner_bounds.relative_box,owner_bounds.relative_box+6,prince_runtime.subobjects.local_bounds);
 std::copy(owner_bounds.absolute_box,owner_bounds.absolute_box+6,prince_runtime.subobjects.absolute_bounds);
 prince_runtime.subobjects.rotation=heading;prince_runtime.rotation.rotation[2]=heading;prince_runtime.rotation.heading_angle=heading;
 dh2::physical::CharacterBodyInput input{};input.owner=&prince_runtime;input.new_physical=&prince_body;input.character_type=1;input.is_player=1;
 const auto* box=prince_runtime.subobjects.absolute_bounds;
 input.absolute_bounds[0]=box[0];input.absolute_bounds[1]=box[1];input.absolute_bounds[2]=box[3];input.absolute_bounds[3]=box[4];
 input.position[0]=actor_position[0];input.position[1]=actor_position[1];
 dh2::physical::CharacterBodyConfig config{};
 if(dh2_character_body_config(&config,&input)||!config.enabled)throw std::runtime_error("Native player body definition rejected");
 prince_body_owner.set_filter(config);prince_body_owner.additions=prince_body_owner.results=0;
 prince_body={actor_world.create_character(config,&prince_body_owner.services),config.radius,config.pinned};
 if(!prince_body.body||dh2_native_body_refresh_view(&prince_runtime.body,&prince_body))throw std::runtime_error("Native player body creation failed");
 prince_initial_filter=prince_body.body->GetShapeList()->GetFilterData();
 live_obstacle_entries.assign(256,{});live_obstacle_floors.assign(level.native_floor->records.size()+1,0);
 live_registry={live_obstacle_entries.data(),0,unsigned(live_obstacle_entries.size()),live_obstacle_floors.data(),0,unsigned(live_obstacle_floors.size())};
 live_path_segments.resize(level.native_floor->graph.node_count+1);live_workspace_segments.resize(live_path_segments.size());
 live_workspace_floors.resize(live_obstacle_floors.size());live_workspace_actors.resize(1);
 live_workspace={live_workspace_segments.data(),unsigned(live_workspace_segments.size()),0,live_workspace_actors.data(),1,0,live_workspace_floors.data(),unsigned(live_workspace_floors.size()),0};
 prince_runtime.path.segments=live_path_segments.data();prince_runtime.path.capacity=live_path_segments.size();
 std::copy(actor_position.begin(),actor_position.end(),prince_runtime.path.target);
 dh2_nav_object_defaults(&prince_runtime.object);dh2_nav_motion_policy_defaults(&live_motion_policy);
 const dh2::navigation::ObjectInitRequest init{&level.native_floor->collision_world,&prince_runtime.object,0x100000001ull,{actor_position[0],actor_position[1],actor_position[2]},config.radius*100.f,0,0};
 if(dh2_nav_init_object(&init))throw std::runtime_error("Native player floor initialization failed");
 const dh2::navigation::ProducerFields fields{dh2::navigation::ProducerClass::character,1,config.radius,0,{box[0],box[1]},{box[3],box[4]}};
 const dh2::navigation::ProducerRequest producer{&level.native_floor->collision_world,&live_registry,&prince_runtime.object,0x100000001ull,&fields};
 if(dh2_nav_update_game_object(&producer))throw std::runtime_error("Native player obstacle initialization failed");
 std::copy(prince_runtime.object.motion.position,prince_runtime.object.motion.position+3,prince_runtime.subobjects.previous_position);
 std::copy(prince_runtime.object.motion.position,prince_runtime.object.motion.position+3,prince_runtime.subobjects.position);
 std::copy(prince_runtime.object.motion.position,prince_runtime.object.motion.position+3,actor_position.begin());
 // Activity recreation rebuilds a complete CPU playback session and explicitly
 // restarts its saved sequence below. It does not restore interrupted fades.
 prince_visual=dh2::visual::SceneBinding{};
 if(!prince_visual.bind(current_scene,error))throw std::runtime_error(error);
 prince_locomotion=dh2::actor::BlendedPlayback{};scene_clock=0;
 dh2::animation::RegistrationSet registration;
 for(int id:prince_animation_bank.registration_requests){
  const auto resource=prince_attack_clips.find(id);
  if(resource==prince_attack_clips.end()||!registration.append(id,dh2::data::animation_resource_identity(prince_animation_bank,id),&resource->second,error))throw std::runtime_error("Prince registration failed: "+error);
 }
 const int template_id=prince_animation_bank.template_clip_id;
 if(!registration.set_default(dh2::data::animation_resource_identity(prince_animation_bank,template_id),&prince_attack_clips.at(template_id),error))throw std::runtime_error(error);
 registration.refresh_indices();
 if(!prince_locomotion.compile_dynamic(prince_attack_clips,registration,factory,prince_visual,error))throw std::runtime_error("Prince dynamic compilation failed: "+error);
 __android_log_print(ANDROID_LOG_INFO,"DH2Native","Prince blended bank ready | resources %zu | occurrences %zu | targets %zu | template %d | engine %d | game clip %d",prince_attack_clips.size(),registration.occurrences().size(),prince_locomotion.transform_set().targets().size(),template_id,prince_locomotion.current_engine_clip(),prince_locomotion.current_clip());
 std::copy(actor_position.begin(),actor_position.end(),prince_visual.root.position);
 std::copy(mesh.effective_scale,mesh.effective_scale+3,prince_visual.root.scale);
 const float euler[3]{0,0,heading};if(!prince_visual.set_rotation(euler))throw std::runtime_error("Native player rotation rejected");
 prince_locomotion.observer={nullptr,character_playback_event};
 prince_character.bind({nullptr,[](void*){return prince_facts();},
                         {nullptr,character_service},prince_timer_before,prince_timer_after,nullptr,prince_timer_route});
 if(!restore){
  prince_state={};pending_character_services=0;
  prince_character.reset_timers(0x100000001ull);
 }
 prince_state.body_present=1;
 if(prince_state.current==-1||prince_state.current==3||prince_state.current==4){
  // Development Activity recreation cancels held touch before restoring the
  // world. It supplies Idle through the recovered transition services.
  if(prince_character.transition(3)<0)throw std::runtime_error("Character Idle initialization failed");
 }else if(prince_state.current==5){
  const auto facts=prince_facts();
  if(prince_state.current_animation==facts.attack_moving){if(dh2_native_body_unpin(&prince_body))throw std::runtime_error("Attack body restoration failed");}
  else if(dh2_native_body_pin(&prince_body))throw std::runtime_error("Attack body restoration failed");
 }else if(prince_state.current==12){
  const dh2::character::Request filter{dh2::character::set_death_filter,{0,0x51c,3},0,0,0};
  character_service(nullptr,&prince_state,&filter);
  if(restore_without_body){actor_world.destroy(prince_body.body);prince_state.body_present=0;}
 }
 if(restore&&prince_state.current!=3&&prince_state.current!=4&&prince_state.current_animation>=0){
  if(!prince_locomotion.start(actor_animation_tables,prince_state.current_animation,actor_random,prince_attack_clips,prince_visual,current_scene,prince_state.cached_speed,error))throw std::runtime_error("Restored Prince sequence failed: "+error);
  __android_log_print(ANDROID_LOG_INFO,"DH2Native","Player blended sequence restarted | state %d | sequence %d | clip %d | engine %d | development recreation",prince_state.current,prince_state.current_animation,prince_locomotion.current_clip(),prince_locomotion.current_engine_clip());
 }
 prince_flags=prince_state.flags;prince_move_type=prince_state.move_type;
 for(const auto& group:object_groups){
  if(group.instances.empty()||group.instances.front().kind!=2)continue;
  auto model=read(assets,group.instances.front().model,"actors");dh2::resources::BresView decor_view{};
  if(dh2_bres_open(&decor_view,model.data(),model.size())!=dh2::resources::BresError::ok)throw std::runtime_error("Decor collision model rejected");
  dh2::physical::DecorSceneMarker marker;
  if(!dh2::physical::decor_scene_marker(decor_view,marker,error))throw std::runtime_error(error);
  if(!marker.found)continue;
  for(const auto& instance:group.instances){
   dh2::physical::DecorSceneInput scene_input{};
   std::copy(instance.position.begin(),instance.position.end(),scene_input.position);
   std::copy(instance.rotation_degrees.begin(),instance.rotation_degrees.end(),scene_input.rotation_degrees);
   std::copy(instance.scale.begin(),instance.scale.end(),scene_input.scale);
   std::copy(marker.bounds,marker.bounds+6,scene_input.marker_bounds);std::copy(marker.parent_scale,marker.parent_scale+3,scene_input.marker_parent_scale);
   dh2::physical::DecorSceneOutput scene_output;
   if(dh2_decor_scene(&scene_output,&scene_input))throw std::runtime_error("Decor collision transform rejected");
   auto owner=std::make_unique<BodyOwner>();decor_bodies.push_back({});auto& body=decor_bodies.back();owner->native=&body;
   dh2::physical::DecorBodyInput decor_input{};decor_input.owner=owner.get();decor_input.new_physical=&body;decor_input.visual_present=decor_input.colbox_found=1;
   std::copy(scene_output.mesh_box,scene_output.mesh_box+6,decor_input.mesh_box);std::copy(instance.position.begin(),instance.position.end(),decor_input.position);
   dh2::physical::DecorBodyConfig definition;
   if(dh2_decor_body_config(&definition,&decor_input))throw std::runtime_error("Decor collision body definition rejected");
   owner->set_filter(definition.physical);body={actor_world.create_character(definition.physical,&owner->services),definition.physical.radius,definition.physical.pinned};
   if(!body.body)throw std::runtime_error("Decor collision body creation failed");
   decor_body_owners.push_back(std::move(owner));
  }
 }
 initialize_gated_characters(assets);
 native_actor_ready=true;native_actor_frames=native_physics_steps=0;
 __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native actor ready | genuine bodies %zu | decor colliders %zu | radius %.9g | source bounds %.6g %.6g %.6g %.6g | flags %x | scene then Step then actor",decor_bodies.size()+unsigned(bool(prince_body.body)),decor_bodies.size(),config.radius*100.f,box[0],box[1],box[3],box[4],prince_flags);
}
void advance_native_actor(unsigned dt_ms){
 std::string error;
 if(frozen)return; // Preserve the composed live pose, clocks and gameplay state.
 // Original Level::Update executes ScriptManager before PhysicalWorld and
 // ObjectManager. A contact started below is consumed by the next frame.
 advance_crypt_script(dt_ms);
 request_prince_death();
  scene_clock+=float(dt_ms);
  prince_scene_phase=true;
  if(!prince_locomotion.scene_phase(std::uint32_t(scene_clock),prince_attack_clips,prince_visual,current_scene,error))throw std::runtime_error(error);
  prince_scene_phase=false;
 actor_world.update(dt_ms);++native_physics_steps;
 // This renderer advances the authored timer and FSM subset after the world
 // step. The CharAI frame belongs between these calls; native Ghost AI is not
 // wired yet, so do not report this interim sequence as a complete update.
 if(prince_character.update_timers(dt_ms,0)!=1)throw std::runtime_error("Character timer update failed");
 if(prince_skills)prince_skills->update();
 for(auto& group:object_groups)for(auto& actor:group.instances)if(actor.spawn_owner){
  auto& character=actor.spawn_owner->character;
  if(character.update_timers(dt_ms,0)<0||character.update_state(dt_ms)<0)
   throw std::runtime_error("Gated Character timer/state update failed");
 }
 // Development touch input supplies the original controller facts. State
 // predicates/focus/blur decide eligibility, policy and authored animation.
 const bool input_active=std::hypot(move_x,move_y)>.08f;
 const bool was_heading=prince_state.heading_active!=0;
 if(!prince_state.controller_locked){
  if(input_active){
   const float input[3]{move_x,move_y,0};
   if(dh2_nav_set_heading(&prince_runtime.controller.heading,input,1))throw std::runtime_error("Native input heading rejected");
   prince_runtime.rotation.heading_angle=prince_runtime.controller.heading.angle;
   for(unsigned i=0;i<3;++i)prince_runtime.subobjects.destination[i]=prince_runtime.subobjects.position[i]+input[i]*1000.f;
  }else{
   prince_runtime.controller.heading.active=0;
   std::fill(prince_runtime.controller.heading.direction,prince_runtime.controller.heading.direction+3,0);
  }
  prince_state.heading_active=prince_runtime.controller.heading.active;
  if(input_active&&prince_event(0xc351,0)<0)throw std::runtime_error("Character Move request failed");
  if(prince_state.current==5&&was_heading!=(prince_state.heading_active!=0)&&prince_event(0x1c,0)<0)throw std::runtime_error("Character attack heading event failed");
 }
 if(prince_character.update_state(dt_ms)<0)throw std::runtime_error("Character state update failed");
 prince_flags=prince_state.flags;prince_move_type=prince_state.move_type;walking=prince_state.current==4;
 const float global_speed=(prince_state.current==4||prince_state.current==5)?prince_state.cached_speed:1.f;
 const bool moving=prince_state.current==4;
 const auto extra=prince_locomotion.completion.extra_ms;
 if(!prince_locomotion.animator_phase(actor_animation_tables,actor_random,prince_attack_clips,prince_visual,current_scene,global_speed,extra,error))throw std::runtime_error(error);
 dh2::move::Policy decoded{};dh2_move_policy(&decoded,&prince_flags);
 // Avoidance policy and the original game camera remain explicit integration
 // boundaries. The floor/path/root/body coordinators execute genuine source.
 const dh2::actor::RuntimePolicy policy{{1,0,0,decoded.position_from_physics},1,0,0,0,dh2::actor::base_virtual_speed};
 const dh2::subobjects::Services services{nullptr,actor_virtual_service};
 const dh2::actor::RuntimeRequest request{&prince_runtime,prince_body.body?&prince_body:nullptr,&prince_visual,&current_scene,&level.native_floor->collision_world,&level.native_floor->graph,&live_registry,&live_motion_policy,&live_workspace,nullptr,prince_combat.properties.resolved.data(),&policy,&services,nullptr,0x100000001ull,prince_flags,dt_ms};
 dh2::actor::RuntimeResult result{};
 if(dh2::actor::update_actor(result,request,error))throw std::runtime_error(error);
 const float dx=prince_runtime.subobjects.position[0]-actor_position[0],dy=prince_runtime.subobjects.position[1]-actor_position[1];
 if(moving){if(dx*dx+dy*dy>0.000001f)++movement_steps;else ++blocked_steps;++native_heading_updates;}
 std::copy(prince_runtime.subobjects.position,prince_runtime.subobjects.position+3,actor_position.begin());heading=prince_runtime.subobjects.rotation;
 // TriggerZone contact consumes the updated absolute GameObject bounds.
 update_crypt_contact();
 sync_search_world();
 ++native_actor_frames;
 const auto physical_position=prince_body.body?prince_body.body->GetPosition():b2Vec2(actor_position[0]*.01f,actor_position[1]*.01f);
 if(native_actor_frames==1||native_actor_frames%120==0)__android_log_print(ANDROID_LOG_INFO,"DH2Native","Native actor frame | scene %u | Step %u | actor %u | source phase %u | clip %d | ms %d | replays %u | body %.6g %.6g | contacts %u %u | state %d | body present %d | timeline scale %.9g",prince_locomotion.root_timestamp,native_physics_steps,native_actor_frames,result.phase,prince_locomotion.current_clip(),prince_locomotion.current_timeline().current_ms,prince_locomotion.restarts,physical_position.x,physical_position.y,prince_body_owner.additions,prince_body_owner.results,prince_state.current,int(bool(prince_body.body)),prince_locomotion.current_timeline().scale);
}
}
void initialize_native_monster_scripts(AAssetManager* assets) {
 if(!actor_level_fields_ready||!source_char_ai.ready||!native_actor_ready||!native_debug)
  throw std::runtime_error("Native monster initialization owners unavailable");
 // Bounded already-associated Player/PlayerInfo source reconciliation. The
 // native leaf setter intentionally excludes undefined ARM temporary residue
 // metadata in PlayerInfo::SetCharacterLevel; full replication is pending.
 const dh2::player_manager_host_level::ReconcileState state{&native_host.player,
  prince_character.owner(),reinterpret_cast<std::uintptr_t>(&prince_combat.properties)};
 const dh2::player_manager_host_level::ReconcileServices reconcile{nullptr,
  [](void*,std::uintptr_t identity,std::uint32_t property,std::uint32_t include_bonus,std::int32_t* output)->std::int32_t {
   if(identity!=reinterpret_cast<std::uintptr_t>(&prince_combat.properties)||property!=19||include_bonus)return 1;
   const auto raw=prince_combat.properties.resolved[19];
   const std::uint32_t shifted=(std::uint32_t(raw)>>8)|(raw<0?0xff000000u:0u);
   std::memcpy(output,&shifted,4);return 0;
  },
  [](void*,dh2::player_manager_host_level::PlayerInfoProjection* player,std::int32_t level)->std::int32_t {
   if(player!=&native_host.player)return 1;
   dh2::character_level_member::Result result{};
   return dh2::character_level_member::set_value(player->character_level_member,&native_host.change_serial,level,&result)==dh2::character_level_member::Status::complete?0:1;
  }};
 dh2::player_manager_host_level::ReconcileResult reconciled{};
 if(dh2::player_manager_host_level::reconcile_character_level(&state,&reconcile,&reconciled)!=dh2::player_manager_host_level::ReconcileStatus::complete)
  throw std::runtime_error("Native managed host Level reconciliation failed");
 std::int32_t host_level=0,host_difficulty=0;
 if(native_host_level(&host_level)||native_host_difficulty(&host_difficulty))throw std::runtime_error("Native host source query failed");
 __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native managed host | Level %d | difficulty %d | property reads %u | member writes %u | offline embedded PlayerInfo; full profile/network pending",host_level,host_difficulty,reconciled.property_reads,reconciled.setter_calls);
 const auto common=read(assets,"ai/_commons.luac","scripts"),monster=read(assets,"ai/monster.luac","scripts");
 unsigned initialized=0;
 for(auto& group:object_groups)for(auto& actor:group.instances)if(actor.gated_spawn&&actor.spawn_owner) {
  const auto* props=native_actor_ai_props(actor);
  if(!native_character_classification(actor,dh2::character_ai_classification::Query::monster)||props->script!="monster")continue;
  using Classification=dh2::character_ai_classification::Query;
  __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native Character classification | %s | AI %u | faction %u | type %u | monster %u | player %u | faerie %u | NPC %u | projected death %u | source getters; autonomous frame pending",
   actor.name.c_str(),native_character_classification(actor,Classification::ai_id),
   native_character_classification(actor,Classification::faction_id),native_character_classification(actor,Classification::type),
   native_character_classification(actor,Classification::monster),native_character_classification(actor,Classification::player),
   native_character_classification(actor,Classification::faerie),native_character_classification(actor,Classification::npc),
   native_character_classification(actor,Classification::dead));
  __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native Character zonability | %s | zonable %u | source classification; room enrollment pending",actor.name.c_str(),native_actor_zonability(actor));
  const auto found=source_char_ai.by_character.find(actor.identity);
  if(found==source_char_ai.by_character.end())throw std::runtime_error("Native monster CharAI association missing");
  auto pending=found->second->initialization;
  if(pending&&!pending->initialized)
   throw std::runtime_error("Failed native Ghost initialization requires world teardown");
  const bool retained=pending&&pending->initialized;
  if(retained) {
   if(pending->ai!=found->second||pending->owner!=actor.spawn_owner||
      pending->lifecycle.owner!=actor.identity||!pending->vm.ready()||
      found->second->state.active_ais_1c!=pending->lifecycle.active)
    throw std::runtime_error("Retained native monster VM ownership differs");
  } else {
   pending=std::make_shared<NativeMonsterInitialization>();pending->ai=found->second;pending->owner=actor.spawn_owner;pending->catalogue=actor_skill_catalogue;
   // Attach during callbacks so pending storage and source effects remain owned.
   // A terminal failed world load discards this port candidate during teardown;
   // retrying a partially initialized owner in the same world is unsupported.
   found->second->initialization=pending;
   pending->load({common.data(),common.size()},{monster.data(),monster.size()});
  }
  ++initialized;
  __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native monster initialization | %s | Level %d | HP %d / %d | MP %d / %d | callbacks %u | timers %u | flags %x | same VM published %u | retained %u | paused providers %u | nonempty skills/autonomous frame pending",actor.name.c_str(),actor.properties.base[19],actor.properties.resolved[36],actor.properties.resolved[38],actor.properties.resolved[41],actor.properties.resolved[43],pending->init_calls,pending->timers_started,pending->ais.flags_b8,unsigned(pending->lifecycle.active==pending->lifecycle.pending),unsigned(retained),pending->timer_gates);
  const auto& native_faeries=pending->skills.faery_scripts();
  const auto null_faeries=unsigned(std::count(native_faeries.begin(),native_faeries.end(),std::uintptr_t(0)));
  __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native Ghost skill initialization | %s | phases 12345 | skills %zu | faeries %zu | null faeries %u | post %u | final %u | update slots %u %u | updates %u | arguments %u %u | Debug %u %u | VCB %u | path %s | retained %u | bounded Ghost InitScriptProcess",actor.name.c_str(),pending->skills.skill_scripts().size(),native_faeries.size(),null_faeries,pending->post_calls,pending->final_calls,pending->last_skill_update.skill_slots,pending->last_skill_update.faery_slots,pending->last_skill_update.script_updates,pending->last_skills.arguments_created,pending->last_skills.arguments_destroyed,pending->last_skills.debug_loads,pending->last_skills.debug_queries,pending->last_skills.init_vcb_calls,pending->script_path.c_str(),unsigned(retained));
  __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native Ghost skill vector owner | %s | faery storage %llx | catalogue %llx",actor.name.c_str(),static_cast<unsigned long long>(reinterpret_cast<std::uintptr_t>(native_faeries.data())),static_cast<unsigned long long>(reinterpret_cast<std::uintptr_t>(pending->catalogue.get())));
  __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native monster VM owner | %s | native handle %llx | source active %llx | source pending %llx",actor.name.c_str(),static_cast<unsigned long long>(reinterpret_cast<std::uintptr_t>(&pending->vm)),static_cast<unsigned long long>(pending->lifecycle.active),static_cast<unsigned long long>(pending->lifecycle.pending));
  const auto& timers=pending->owner->character.timers();
  for(const auto id:{pending->lifecycle.timer33,pending->lifecycle.timer34}) {
   if(id<0||std::uint32_t(id)>=timers.count)throw std::runtime_error("Native source timer ID is stale");
   const auto& timer=timers.slots[id];
   if(!timer.active||!timer.paused)throw std::runtime_error("Native unfinished timer provider consumed an event");
   __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native monster timer retained | %s | slot %u | event %x | duration %u | elapsed %u | active %u | paused %u",actor.name.c_str(),timer.id,unsigned(timer.event),timer.duration_ms,timer.elapsed_ms,unsigned(timer.active),unsigned(timer.paused));
  }
 }
 if(initialized!=2)throw std::runtime_error("Native Ghost initialization count differs");
 const auto& counters=native_debug->counters();
 __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native Debug persistence | loaded %u | switches %zu | read opens %llu | read closes %llu | saves %llu | write closes %llu | IO errors %llu | app-private real file",unsigned(native_debug->globals().loaded),native_debug->runtime().switches().size(),static_cast<unsigned long long>(counters.read_opens),static_cast<unsigned long long>(counters.read_closes),static_cast<unsigned long long>(counters.save_completions),static_cast<unsigned long long>(counters.write_closes),static_cast<unsigned long long>(counters.io_errors));
}

std::string debug_character_hit(const std::string& name,std::uint32_t damage) {
 // Debug-only shell receiver supplies this nonlethal integration fixture.
 // The actual reconstructed HitFor health kernel mutates the live sheets;
 // full combat targeting, damage calculation and killed lifecycle are absent.
 if(!world_mode||!native_actor_ready||!damage)return "Debug Character hit rejected";
 for(auto& group:object_groups)for(auto& actor:group.instances)if(actor.name==name) {
  if(!actor.native_ai||!actor.native_ai->initialization||!actor.native_ai->initialization->initialized||
     actor.combat_state.dead||actor.properties.resolved[36]<=0||damage>=std::uint32_t(actor.properties.resolved[36]))
   return "Debug Character hit requires a live initialized monster and nonlethal raw damage";
  auto view=dh2::data::property_view(actor_property_rules,actor.properties);
  const auto facts=dh2::data::health_monster|dh2::data::health_main_player_present|
   (prince_combat.life.dead?dh2::data::health_main_player_dead:0);
  const dh2::data::HealthRequest request{&view,damage,std::uint32_t(facts),0,0};dh2::data::HealthChange change{};
  if(dh2_health_hit(&change,&request)||change.kill_requested||change.lifecycle_write!=-1)return "Debug Character hit kernel failed";
  __android_log_print(ANDROID_LOG_INFO,"DH2Native","Debug native monster damage | %s | raw damage %u | HP before %d | after %d | actual HitFor health kernel; shell fixture",name.c_str(),damage,change.before,change.after);
  return "Nonlethal source health change applied";
 }
 return "Debug Character hit name not found";
}

std::string debug_player_skill_cooldown(std::uint32_t delay){
 if(!world_mode||!native_actor_ready||!prince_skills)return "Player skill cooldown probe rejected";
 return prince_skills->cooldown_probe(delay);
}


std::string debug_player_skill_check(std::uint32_t slot){
 if(!world_mode||!native_actor_ready||!prince_skills)return "Player skill check probe rejected";
 return prince_skills->check_probe(slot);
}
std::string debug_player_mana(std::uint32_t amount){
 if(!world_mode||!native_actor_ready||!prince_skills)return "Player mana probe rejected";
 return prince_skills->mana_probe(amount);
}
std::string debug_player_scalar(std::int32_t value,bool write){
 if(!world_mode||!native_actor_ready||!prince_skills)return "Player scalar probe rejected";
 return prince_skills->scalar_probe(value,write);
}

std::string load_world(const std::uint8_t* descriptor,std::size_t size,AAssetManager* assets){
  std::vector<Draw> environment;std::vector<GLuint> textures;
  std::vector<ObjectGroup> candidate_groups;
  const bool restore=world_mode||resume_world;const auto previous=actor_position;
  const auto previous_heading=heading;
  const auto previous_random=actor_random;
  if(restore&&!object_groups.empty()){saved_actors.clear();for(const auto& group:object_groups)for(const auto& actor:group.instances)if(actor.kind==1)saved_actors.push_back(actor);}
  try{
    if(!restore){prince_skills.reset();prince_source_ai.reset();}
    auto raw=read(assets,"crypt.bdae","worlds");dh2::resources::BresView view{};
    if(dh2_bres_open(&view,raw.data(),raw.size())!=dh2::resources::BresError::ok)throw std::runtime_error("World BRES rejected");
    dh2::world::Level candidate;std::string error;if(!dh2::world::load(view,descriptor,size,candidate,error))throw std::runtime_error(error);
    const auto records_data=read(assets,"character_properties_pyarray.bin","data"),names_data=read(assets,"character_properties_pyarraynames.bin","data"),fields_data=read(assets,"character_properties_pystructnames.bin","data"),model_names=read(assets,"character_models_dictionary_pyarraynames.bin","data"),model_values=read(assets,"character_models_dictionary_pyarray.bin","data");
    dh2::data::CharacterTable character_table;dh2::data::Dictionary model_table;
    if(!dh2::data::load_characters({records_data.data(),records_data.size()},{names_data.data(),names_data.size()},{fields_data.data(),fields_data.size()},character_table,error)||!dh2::data::load_dictionary({model_names.data(),model_names.size()},{model_values.data(),model_values.size()},model_table,error))throw std::runtime_error(error);
    const auto class_data=read(assets,"character_classes_pyarray.bin","data"),class_names=read(assets,"character_classes_pyarraynames.bin","data"),class_schema=read(assets,"character_classes_pystructnames.bin","data");dh2::data::ClassTables class_table;
    if(!dh2::data::load_classes({class_data.data(),class_data.size()},{class_names.data(),class_names.size()},{class_schema.data(),class_schema.size()},class_table,error))throw std::runtime_error(error);
    auto skill_catalogue=std::make_shared<NativeSkillCatalogue>();
    dh2::data::SkillTables decoded_skills;dh2::data::FaeryTables decoded_faeries;
    const auto skill_data=read(assets,"skills_pyarray.bin","data"),skill_names=read(assets,"skills_pyarraynames.bin","data"),skill_schema=read(assets,"skills_pystructnames.bin","data");
    const auto faery_data=read(assets,"faeries_pyarray.bin","data"),faery_names=read(assets,"faeries_pyarraynames.bin","data"),faery_schema=read(assets,"faeries_pystructnames.bin","data");
    if(!dh2::data::load_skill_tables({skill_data.data(),skill_data.size()},{skill_names.data(),skill_names.size()},{skill_schema.data(),skill_schema.size()},decoded_skills,error)||
       !dh2::data::load_faery_tables({faery_data.data(),faery_data.size()},{faery_names.data(),faery_names.size()},{faery_schema.data(),faery_schema.size()},decoded_faeries,error))throw std::runtime_error(error);
    skill_catalogue->tables=dh2::player_skill_tables_adapter::Tables::create(std::move(decoded_skills),std::move(decoded_faeries),error);
    if(!skill_catalogue->tables)throw std::runtime_error(error);
    skill_catalogue->faery_constants_bytes=read(assets,"faeries_pycst.bin","data");
    if(skill_catalogue->faery_constants_bytes.size()>UINT32_MAX||
       dh2_pycst_open(&skill_catalogue->faery_constants,skill_catalogue->faery_constants_bytes.data(),std::uint32_t(skill_catalogue->faery_constants_bytes.size())))throw std::runtime_error("Original Faery constants rejected");
    skill_catalogue->ai_constants_bytes=read(assets,"ai_pycst.bin","data");
    if(skill_catalogue->ai_constants_bytes.size()>UINT32_MAX||
       dh2_pycst_open(&skill_catalogue->ai_constants,skill_catalogue->ai_constants_bytes.data(),std::uint32_t(skill_catalogue->ai_constants_bytes.size())))throw std::runtime_error("Original AI constants rejected");
    __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native skill catalogue | skill lists %zu | skills %zu | faery lists %zu | faeries %zu | shared immutable tables; full skill callbacks pending",skill_catalogue->tables->skills().skill_lists.size(),skill_catalogue->tables->skills().skills.size(),skill_catalogue->tables->faeries().faery_lists.size(),skill_catalogue->tables->faeries().faeries.size());
    auto design_bytes=read(assets,"design_pycst.bin","data");dh2_pycst_view design_view{};
    if(design_bytes.size()>UINT32_MAX||dh2_pycst_open(&design_view,design_bytes.data(),std::uint32_t(design_bytes.size())))throw std::runtime_error("Original design constants rejected");
    if(!native_debug) {
     const auto debug_seed=read(assets,"DebugSwitches.savegame","data");auto backend=std::make_unique<dh2::native::debug_files::Backend>();
     if(!backend->initialize(runtime_root,debug_seed.data(),debug_seed.size(),error))throw std::runtime_error("Native Debug filesystem: "+error);
     native_debug=std::move(backend);
    }
    if(character_table.fields[19]!="Level"||character_table.fields[28]!="SkillTree"||character_table.fields[29]!="FaeryList"||character_table.fields[38]!="Max_HP"||character_table.fields[43]!="Max_MP")throw std::runtime_error("Original class/skill property identifiers differ");
    __android_log_print(ANDROID_LOG_INFO,"DH2Native","Class tables ready | classes %zu | bytes %zu | cached base snapshots",class_table.rows.size(),class_table.data_consumed);
    const auto level_records=read(assets,"levels_pyarray.bin","data"),level_names=read(assets,"levels_pyarraynames.bin","data"),level_schema=read(assets,"levels_pystructnames.bin","data");
    dh2::data::LevelTables level_tables;
    if(!dh2::data::load_levels({level_records.data(),level_records.size()},{level_names.data(),level_names.size()},{level_schema.data(),level_schema.size()},level_tables,error))throw std::runtime_error(error);
    const auto crypt_oid=dh2::data::find_level(level_tables,"GOTHICUS_CRYPT_01");
    if(crypt_oid<0)throw std::runtime_error("Crypt level catalogue row missing");
    const auto& crypt_declaration=level_tables.levels.at(crypt_oid);
    dh2::level_construction_fields::State candidate_level_fields{};
    dh2::level_construction_fields::Result candidate_level_scan{};
    const auto candidate_level_file=crypt_declaration.level_file;
    if(dh2::level_construction_fields::initialize(&level_tables,candidate_level_file,0,&candidate_level_fields,&candidate_level_scan)!=dh2::level_construction_fields::Status::selected || candidate_level_fields.level_list_index_3c!=crypt_oid)
      throw std::runtime_error("Source Level constructor field selection failed");
    __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native level catalogue | fast travel %zu | levels %zu | Crypt row %d | ranges %d %d / %d %d / %d %d | GSLevel ownership pending",level_tables.fast_travel.size(),level_tables.levels.size(),crypt_oid,crypt_declaration.monster_lvl_min,crypt_declaration.monster_lvl_max,crypt_declaration.monster_lvl_min_hard,crypt_declaration.monster_lvl_max_hard,crypt_declaration.monster_lvl_min_nightmare,crypt_declaration.monster_lvl_max_nightmare);
    dh2::data::PropertyRules property_rules;if(!dh2::data::load_property_rules(character_table,property_rules,error))throw std::runtime_error(error);
    dh2::data::AiTables ai_tables;std::array<std::vector<std::uint8_t>,6> ai_data;const char* ai_names[]={"ai_pyarray.bin","ai_pyarraynames.bin","ai_pystructnames.bin","ai_factions_pyarray.bin","ai_factions_pyarraynames.bin","ai_factions_pystructnames.bin"};for(unsigned i=0;i<6;++i)ai_data[i]=read(assets,ai_names[i],"data");
    if(!dh2::data::load_ai({ai_data[0].data(),ai_data[0].size()},{ai_data[1].data(),ai_data[1].size()},{ai_data[2].data(),ai_data[2].size()},{ai_data[3].data(),ai_data[3].size()},{ai_data[4].data(),ai_data[4].size()},{ai_data[5].data(),ai_data[5].size()},ai_tables,error))throw std::runtime_error(error);
    __android_log_print(ANDROID_LOG_INFO,"DH2Native","AI tables ready | configs %zu | factions %zu | automatic melee %d | pursuit and full FSM pending",ai_tables.rows.size(),ai_tables.factions.size(),enemy_ai_enabled);
    __android_log_print(ANDROID_LOG_INFO,"DH2Native","Property rules ready | defaults row 0 | types row 1 | properties 224 | supplied sheets only");
    // Development probe of the packaged native result calculator. Its copied
    // RNG and supplied unarmed sheets never execute hits or mutate actors.
    const auto defender_row=std::find(character_table.names.begin(),character_table.names.end(),"Crypt_Skeleton");
    if(defender_row==character_table.names.end())throw std::runtime_error("Combat probe defender missing");
    dh2::data::PropertyState probe_defender;dh2::data::reset_properties(property_rules,probe_defender,&character_table.rows.at(defender_row-character_table.names.begin()));
    dh2::data::SpawnVitals probe_vitals;
    if(!dh2::data::recalc_properties_with_class(class_table,property_rules,probe_defender,error)||!dh2::data::initialize_spawn_vitals(property_rules,probe_defender,probe_vitals,error))throw std::runtime_error(error);
    const auto animation_data=read(assets,"animations_pyarray.bin","data"),animation_names=read(assets,"animations_pyarraynames.bin","data"),animation_fields=read(assets,"animations_pystructnames.bin","data"),clip_names=read(assets,"animations_dictionary_pyarraynames.bin","data"),clip_values=read(assets,"animations_dictionary_pyarray.bin","data");
    dh2::data::Dictionary clip_table;dh2::data::AnimationTables animation_tables;dh2::data::AnimationRandom animation_random;
    if(!dh2::data::load_dictionary({clip_names.data(),clip_names.size()},{clip_values.data(),clip_values.size()},clip_table,error)||!dh2::data::load_animation_tables({animation_data.data(),animation_data.size()},{animation_names.data(),animation_names.size()},{animation_fields.data(),animation_fields.size()},clip_table,animation_tables,error))throw std::runtime_error(error);
    __android_log_print(ANDROID_LOG_INFO,"DH2Native","Animation tables ready | sequences %zu | characters %zu | clip paths %zu | bytes %zu",animation_tables.sequences.size(),animation_tables.characters.size(),clip_table.values.size(),animation_tables.data_consumed);
    const auto objects=read(assets,"crypt01.dact","worlds");std::vector<dh2::objects::Record> object_records;
    if(!dh2::objects::load_records(objects.data(),objects.size(),candidate.rooms,character_table,model_table,object_records,error))throw std::runtime_error(error);
    auto prince=read(assets,"prince_modular.bdae","models"),idle=read(assets,"prince_idle_shield.bdae","animations"),walk=read(assets,"prince_walk_1hand.bdae","animations");
    dh2::resources::BresView actor_view{};dh2_bres_open(&actor_view,prince.data(),prince.size());dh2::scene::Scene rest;
    if(!dh2::scene::load(actor_view,rest,error))throw std::runtime_error(error);
    dh2::animation::Player candidate_idle,candidate_walk;
    if(!candidate_idle.load(idle.data(),idle.size(),rest,error)||!candidate_walk.load(walk.data(),walk.size(),rest,error))throw std::runtime_error(error);
    const auto knight=std::find(character_table.names.begin(),character_table.names.end(),"KnightPlayerBase");if(knight==character_table.names.end())throw std::runtime_error("Original default player preset missing");
    PlayerCombat fresh_player;dh2::data::reset_properties(property_rules,fresh_player.properties,&character_table.rows.at(knight-character_table.names.begin()));
    fresh_player.aggro.initialize(object_records.size()+1);
    // Player vitals now initialize once through actual AIS InitProcess after
    // publication, with the retained Debug/property providers. The separate
    // development two-pass spawn helper would add another regeneration pass.
    if(!dh2::data::recalc_properties_with_class(class_table,property_rules,fresh_player.properties,error))throw std::runtime_error(error);
    fresh_player.animation_table=fresh_player.properties.resolved[2];
    const auto bank_bytes=read(assets,"prince-animation-bank.bin","data");
    dh2::data::AnimationBank candidate_bank;
    if(!dh2::data::load_animation_bank({bank_bytes.data(),bank_bytes.size()},candidate_bank,error))throw std::runtime_error("Prince metadata rejected: "+error);
    if(candidate_bank.character!="KnightPlayerBase"||int(candidate_bank.animation_table)!=fresh_player.animation_table||candidate_bank.template_clip_id!=1111)throw std::runtime_error("Prince metadata producer does not match player properties");
    std::map<int,dh2::animation::Player> candidate_player_clips;
    for(const auto& resource:candidate_bank.resources){
     dh2::data::AnimationStep ref;ref.anim=resource.clip_id;
     const auto* authored=dh2::data::animation_clip(ref,clip_table);
     if(!authored||*authored!=resource.authored_path||resource.asset.rfind("animations/",0)!=0)throw std::runtime_error("Prince bank dictionary path mismatch");
     const auto raw_clip=read(assets,resource.asset.substr(11),"animations");
     if(raw_clip.size()!=resource.bytes)throw std::runtime_error("Prince bank resource size mismatch");
     auto& playback=candidate_player_clips[resource.clip_id];
     if(!playback.load(raw_clip.data(),raw_clip.size(),rest,error,dh2::animation::MissingTargets::ignore))throw std::runtime_error("Prince bank resource rejected: "+error);
     __android_log_print(ANDROID_LOG_INFO,"DH2Native",resource.clip_id==1023?"Player death track ready | clip %d | tracks %u | unbound %u | attack_mainhand ms %d":"Player attack track ready | clip %d | tracks %u | unbound %u | attack_mainhand ms %d",resource.clip_id,playback.track_count(),playback.unbound,dh2_events_time(&playback.events.view(),"attack_mainhand"));
    }
    if(!program)create_program();std::map<std::string,GLuint> cache;unsigned triangles=0;
    for(const auto& object:object_records){
      int animation_table=-1;if(object.kind==1){const auto* id=dh2::data::property(character_table,object.character,"AnimTable");if(!id)throw std::runtime_error("Monster animation table property missing");animation_table=*id;}
      auto found=std::find_if(candidate_groups.begin(),candidate_groups.end(),[&](const ObjectGroup& group){return group.instances.front().model==object.model&&group.animation_table==animation_table;});
      auto start_actor=[&](ObjectGroup& group){
        group.instances.emplace_back(object);auto& actor=group.instances.back();
        actor.identity=0x100000002ull+(&object-object_records.data());
        if(object.kind!=1)return;
        actor.aggro.initialize(object_records.size()+1);
        const auto character=std::find(character_table.names.begin(),character_table.names.end(),object.character);const auto* class_id=dh2::data::property(character_table,object.character,"ClassID");
        if(character==character_table.names.end()||!class_id)throw std::runtime_error("Original monster class link absent");
        actor.class_id=*class_id;actor.base_class=character_table.rows.at(character-character_table.names.begin());
        if(!dh2::data::apply_class(class_table,actor.class_id,actor.base_class,error))throw std::runtime_error(error);
        __android_log_print(ANDROID_LOG_INFO,"DH2Native","Base class snapshot | %s | character %s | class %d | level raw %d | Max_HP raw %d | Max_MP raw %d | checksum %016llx | cached only",actor.name.c_str(),actor.character.c_str(),actor.class_id,actor.base_class[19],actor.base_class[38],actor.base_class[43],static_cast<unsigned long long>(snapshot_checksum(actor.base_class)));
        dh2::data::reset_properties(property_rules,actor.properties,&character_table.rows.at(character-character_table.names.begin()));
        if(!dh2::data::recalc_properties_with_class(class_table,property_rules,actor.properties,error))throw std::runtime_error(error);
        const auto& resolved=actor.properties.resolved;
        __android_log_print(ANDROID_LOG_INFO,"DH2Native","Resolved properties | %s | character %s | HP raw %d | Max_HP raw %d | MP raw %d | Max_MP raw %d | checksum %016llx | supplied sheets only",actor.name.c_str(),actor.character.c_str(),resolved[36],resolved[38],resolved[41],resolved[43],static_cast<unsigned long long>(snapshot_checksum(resolved)));
        dh2::data::SpawnVitals spawn;if(!dh2::data::initialize_spawn_vitals(property_rules,actor.properties,spawn,error))throw std::runtime_error(error);
        __android_log_print(ANDROID_LOG_INFO,"DH2Native","Spawn vitals | %s | character %s | HP raw %d | Max_HP raw %d | MP raw %d | Max_MP raw %d | first HP add raw %d | first MP add raw %d | second HP add raw %d | second MP add raw %d | checksum %016llx | passes 2",actor.name.c_str(),actor.character.c_str(),resolved[36],resolved[38],resolved[41],resolved[43],spawn.first_hp.raw_add,spawn.first_mp.raw_add,spawn.second_hp.raw_add,spawn.second_mp.raw_add,static_cast<unsigned long long>(snapshot_checksum(resolved)));
        dh2::data::CombatantView probe_attacker{resolved.data(),-1,-1,0,0,0,5,0},probe_target{probe_defender.resolved.data(),-1,-1,0,0,0,5,0};
        dh2::data::CombatRandom probe_random{0xD22026u+unsigned(character-character_table.names.begin())*4,0};
        dh2::data::CombatResult probe_result;
        if(dh2_combat_melee(&probe_result,&probe_attacker,&probe_target,&probe_random,0,0)!=0)throw std::runtime_error("Combat result probe failed");
        __android_log_print(ANDROID_LOG_INFO,"DH2Native","Combat result probe | %s | character %s | amount %d | dot element %d | dot duration %d | dot amount %d | HP leech %d | MP leech %d | outcomes %u | mask %u | category %d | element %d | seed %u | calls %u | validation only",actor.name.c_str(),actor.character.c_str(),probe_result.amount,probe_result.dot_element,probe_result.dot_duration,probe_result.dot_amount,probe_result.hp_leech,probe_result.mp_leech,probe_result.outcomes,probe_result.mask,probe_result.weapon_category,probe_result.element,probe_random.seed,probe_random.calls);
        // Run nonlethal/lethal health writes on independent copies. Kill and
        // lifecycle requests are recorded; live actor HP/state is untouched.
        for(const unsigned damage:{256u,16384u}){
          auto copy=actor.properties;auto health_view=dh2::data::property_view(property_rules,copy);
          const dh2::data::HealthRequest request{&health_view,damage,dh2::data::health_game_present|dh2::data::health_main_player_present,0,1};dh2::data::HealthChange change;
          if(dh2_health_hit(&change,&request)!=0)throw std::runtime_error("Health probe failed");
          __android_log_print(ANDROID_LOG_INFO,"DH2Native","Health probe | %s | character %s | damage %u | add %d | before %d | after %d | kill %u | armed %u | cue %u | lifecycle %d | dead skip %u | validation only",actor.name.c_str(),actor.character.c_str(),damage,change.raw_add,change.before,change.after,change.kill_requested,change.low_health_armed,change.low_health_cue,change.lifecycle_write,change.skipped_dead);
        }
        const auto* state=dh2::data::animation_state(animation_tables,animation_table,"Idle");if(!state)throw std::runtime_error("Monster original idle state missing");
        const int sequence=state-animation_tables.sequences.data();if(!actor.scheduler.start(animation_tables,sequence,animation_random,error))throw std::runtime_error(error);
        const auto* path=dh2::data::animation_clip(actor.scheduler.clip(),clip_table);if(!path)throw std::runtime_error("Monster original idle clip path missing");
        const auto separator=path->find_last_of("/\\");const auto filename=path->substr(separator==std::string::npos?0:separator+1);
        __android_log_print(ANDROID_LOG_INFO,"DH2Native","Original idle selected | %s | table %d | sequence %d | step %u | clip %d | %s | speed %.4f | actor %s",object.model.c_str(),animation_table,sequence,actor.scheduler.frames().back().step,actor.scheduler.clip().anim,filename.c_str(),actor.scheduler.clip().speed,actor.name.c_str());
      };
      if(found!=candidate_groups.end()){start_actor(*found);continue;}
      candidate_groups.emplace_back();auto& group=candidate_groups.back();group.animation_table=animation_table;start_actor(group);
      auto model=read(assets,object.model,"actors");std::vector<std::uint8_t> clip;
      if(object.kind==1){
        const auto* path=dh2::data::animation_clip(group.instances.front().scheduler.clip(),clip_table);const auto separator=path->find_last_of("/\\");clip=read(assets,path->substr(separator==std::string::npos?0:separator+1),"actors");
      }
      if(!dh2::objects::load_resource(model.data(),model.size(),clip.empty()?nullptr:clip.data(),clip.size(),group.resource,error))throw std::runtime_error(object.model+": "+error);
      if(object.kind==1){
        std::set<int> ids;std::function<void(int,unsigned)> collect=[&](int id,unsigned depth){
          if(depth>=3||id<0||unsigned(id)>=animation_tables.sequences.size())throw std::runtime_error("Actor clip bank redirect outside limit");
          for(const auto& step:animation_tables.sequences[id].steps){if(step.redir==1)collect(step.anim,depth+1);else if(step.anim>=0)ids.insert(step.anim);else throw std::runtime_error("Actor clip bank contains an empty clip");}
        };
        for(const auto* state_name:{"Idle","Walk","Attack","Died"}){const auto* state=dh2::data::animation_state(animation_tables,animation_table,state_name);if(!state)throw std::runtime_error("Actor clip bank state missing");collect(state-animation_tables.sequences.data(),0);}
        if(std::any_of(object_records.begin(),object_records.end(),[&](const auto& record){return record.gated_spawn&&record.model==object.model;})) {
          const auto* state=dh2::data::animation_state(animation_tables,animation_table,"Spawn");
          if(!state)throw std::runtime_error("Gated actor Spawn sequence missing");collect(state-animation_tables.sequences.data(),0);
        }
        for(int id:ids){dh2::data::AnimationStep ref;ref.anim=id;const auto* path=dh2::data::animation_clip(ref,clip_table);if(!path)throw std::runtime_error("Actor clip bank path missing");const auto separator=path->find_last_of("/\\");auto raw_clip=read(assets,path->substr(separator==std::string::npos?0:separator+1),"actors");auto& playback=group.clips[id];
          if(!playback.load(raw_clip.data(),raw_clip.size(),group.resource.rest_scene,error,dh2::animation::MissingTargets::ignore)||playback.end<=playback.start)throw std::runtime_error("Actor clip bank: "+error);
          __android_log_print(ANDROID_LOG_INFO,"DH2Native","Actor event track ready | %s | clip %d | groups %u | attack_mainhand ms %d",object.model.c_str(),id,playback.events.view().count,dh2_events_time(&playback.events.view(),"attack_mainhand"));
        }
        __android_log_print(ANDROID_LOG_INFO,"DH2Native","Actor clip bank ready | %s | clips %zu | independent instance clocks",object.model.c_str(),group.clips.size());
      }
      for(const auto& primitive:group.resource.primitives){Draw d;d.node=primitive.node;d.material=group.resource.scene.materials.at(primitive.material);group.draws.push_back(std::move(d));auto& batch=group.draws.back();
        batch.diffuse=upload(assets,batch.material.diffuse,cache,textures);batch.alpha=upload(assets,batch.material.alpha_map,cache,textures);batch.count=primitive.indices.size();
        glGenBuffers(1,&batch.vertices);glBindBuffer(GL_ARRAY_BUFFER,batch.vertices);glBufferData(GL_ARRAY_BUFFER,primitive.vertices.size()*sizeof(Vertex),primitive.vertices.data(),primitive.skin.nodes.empty()?GL_STATIC_DRAW:GL_DYNAMIC_DRAW);
        glGenBuffers(1,&batch.indices);glBindBuffer(GL_ELEMENT_ARRAY_BUFFER,batch.indices);glBufferData(GL_ELEMENT_ARRAY_BUFFER,primitive.indices.size()*2,primitive.indices.data(),GL_STATIC_DRAW);check("Object buffer upload");
      }
      __android_log_print(ANDROID_LOG_INFO,"DH2Native","Object resource %s | primitives %zu | tracks %u | unbound %u | unsupported %u | removed helpers %u",object.model.c_str(),group.draws.size(),group.resource.animation.track_count(),group.resource.animation.unbound,group.resource.animation.skipped,group.resource.removed_helpers);
    }
    for(const auto& instance:candidate.scene.instances){dh2::assets::Mesh mesh{};
      if(dh2_mesh_open(&mesh,&view,instance.geometry)!=dh2::assets::Error::ok||mesh.primitives!=instance.materials.size())throw std::runtime_error("World mesh/binding rejected");
      for(unsigned j=0;j<mesh.primitives;++j){dh2::assets::Primitive p{};dh2_mesh_primitive(&mesh,j,&p);
        if(p.collada_type||p.index_count%3||mesh.vertices>65536)throw std::runtime_error("World topology rejected");
        Draw batch;batch.environment=true;batch.placement=instance.world;batch.material=candidate.scene.materials.at(instance.materials[j]);
        if(batch.material.id!=p.material)throw std::runtime_error("World visual binding differs");
        environment.push_back(std::move(batch));auto& d=environment.back();d.diffuse=upload(assets,d.material.diffuse,cache,textures);d.alpha=upload(assets,d.material.alpha_map,cache,textures);
        dh2::assets::Attribute position_attribute{},uv{},color_attribute{};
        if(dh2_mesh_attribute(&mesh,p.attributes[0],&position_attribute)!=dh2::assets::Error::ok||position_attribute.components<3)throw std::runtime_error("World position missing");
        const bool have_uv=dh2_mesh_attribute(&mesh,p.attributes[4],&uv)==dh2::assets::Error::ok&&uv.components>=2;
        const bool have_color=dh2_mesh_attribute(&mesh,p.attributes[2],&color_attribute)==dh2::assets::Error::ok;
        std::vector<Vertex> vertices(mesh.vertices);for(unsigned k=0;k<mesh.vertices;++k){float v[4]{};dh2_attribute_read(&position_attribute,k,v);std::copy(v,v+3,vertices[k].p);
          if(have_uv){dh2_attribute_read(&uv,k,v);std::copy(v,v+2,vertices[k].uv);}std::fill(vertices[k].color,vertices[k].color+4,1);
          if(have_color){dh2_attribute_read(&color_attribute,k,v);for(unsigned c=0;c<color_attribute.components;++c)vertices[k].color[c]=v[c]/(color_attribute.type==1?255.f:1.f);}}
        std::vector<std::uint16_t> indices(p.index_count);for(unsigned k=0;k<p.index_count;++k){unsigned index;dh2_index_read(&p,k,&index);indices[k]=index;}
        d.count=p.index_count;triangles+=p.index_count/3;glGenBuffers(1,&d.vertices);glBindBuffer(GL_ARRAY_BUFFER,d.vertices);glBufferData(GL_ARRAY_BUFFER,vertices.size()*sizeof(Vertex),vertices.data(),GL_STATIC_DRAW);
        glGenBuffers(1,&d.indices);glBindBuffer(GL_ELEMENT_ARRAY_BUFFER,d.indices);glBufferData(GL_ELEMENT_ARRAY_BUFFER,indices.size()*2,indices.data(),GL_STATIC_DRAW);check("World buffer upload");
      }
    }
    const auto actor_report=load_scene(prince.data(),prince.size(),assets,true);
    if(actor_report.find("Model load failed:")==0)throw std::runtime_error(actor_report);
    environment.insert(environment.end(),std::make_move_iterator(draws.begin()),std::make_move_iterator(draws.end()));draws=std::move(environment);
    images.insert(images.end(),textures.begin(),textures.end());textures.clear();
    object_groups=std::move(candidate_groups);world_objects=std::move(object_records);unsigned monsters=0,decors=0,object_triangles=0,object_draws=0;
    actor_animation_tables=std::move(animation_tables);actor_clip_table=std::move(clip_table);actor_random=restore?previous_random:animation_random;actor_property_rules=property_rules;actor_ai_tables=std::move(ai_tables);
    actor_ai_classification_rows.clear();actor_ai_classification_rows.reserve(actor_ai_tables.rows.size());
    for(const auto& row:actor_ai_tables.rows)actor_ai_classification_rows.push_back({row.flags,row.type});
    actor_ai_classification_table={actor_ai_classification_rows.data(),std::uint32_t(actor_ai_classification_rows.size())};
    actor_level_tables=std::move(level_tables);
    actor_class_tables=std::move(class_table);actor_class_rows.clear();actor_class_rows.reserve(actor_class_tables.rows.size());
    if(!restore||!actor_skill_catalogue)actor_skill_catalogue=std::move(skill_catalogue);
    for(const auto& row:actor_class_tables.rows)actor_class_rows.push_back({row.data(),std::uint32_t(row.size())});
    actor_character_fields=character_table.fields;actor_design_bytes=std::move(design_bytes);
    if(dh2_pycst_open(&actor_design,actor_design_bytes.data(),std::uint32_t(actor_design_bytes.size())))throw std::runtime_error("Retained native design owner rejected");
    native_application={reinterpret_cast<std::uintptr_t>(&native_application),reinterpret_cast<std::uintptr_t>(&actor_design)};
    native_design_binding={native_application.design_manager,&actor_design};
    bool combat_resumed=false;
    if(restore){for(auto& group:object_groups)for(auto& actor:group.instances)if(actor.kind==1){
      auto saved=std::find_if(saved_actors.begin(),saved_actors.end(),[&](const ObjectActor& old){return old.room==actor.room&&old.name==actor.name&&old.model==actor.model;});
      if(saved!=saved_actors.end()){
        if(!group.clips.count(saved->scheduler.clip().anim))throw std::runtime_error("Restored actor clip is not bundled");
        actor=*saved;combat_resumed|=actor.combat_target!=-1||actor.combat_state.dead;
        __android_log_print(ANDROID_LOG_INFO,"DH2Native","Combat actor restored | %s | HP %d | dead %u | combo %u | state %s | cursor %.4f | events %u | aggro %u %u | target %d | AI attack %d",actor.name.c_str(),actor.properties.resolved[36],actor.combat_state.dead,actor.combat_state.combo_hits,actor.state.c_str(),actor.cursor,actor.animation_events,actor.aggro.out_count,actor.aggro.in_count,actor.combat_target,actor.ai_attack);
      }
    }}else{combat_random={0xD22026u,0};combat_hits=0;}
    saved_actors.clear();
    if(!restore)prince_combat=std::move(fresh_player);
    // Detach before replacing the explicit immutable bank owner.
    prince_locomotion=dh2::actor::BlendedPlayback{};
    prince_attack_clips=std::move(candidate_player_clips);prince_animation_bank=std::move(candidate_bank);
    __android_log_print(ANDROID_LOG_INFO,"DH2Native","Player properties | KnightPlayerBase | HP %d | MP %d | checksum %016llx | attempts %u | attacking %d",prince_combat.properties.resolved[36],prince_combat.properties.resolved[41],static_cast<unsigned long long>(snapshot_checksum(prince_combat.properties.resolved)),prince_combat.attempts,int(prince_state.current==5));
    for(const auto& group:object_groups)for(const auto& object:group.instances){monsters+=object.kind==1;decors+=object.kind==2;object_triangles+=group.resource.triangles;object_draws+=group.draws.size();}
    level=std::move(candidate);player=std::move(candidate_idle);walk_player=std::move(candidate_walk);current_scene=std::move(rest);
    actor_position=restore?previous:level.spawn;
    world_mode=true;resume_world=false;walking=false;move_x=move_y=0;heading=restore?previous_heading:0;movement_steps=blocked_steps=0;
    radius=350;yaw=-1.57f;pitch=.75f;zoom=1;object_epoch=epoch=last_frame=std::chrono::steady_clock::now();sampled_ms=0;frozen=false;
    initialize_native_actor(assets,restore);
    actor_level_fields=candidate_level_fields;actor_level_file=candidate_level_file;actor_level_fields_ready=true;
    std::int32_t source_ranges[6]{};
    for(unsigned mode=0;mode<3;++mode){const float difficulty=static_cast<float>(mode);std::uint32_t count=0;
      if(native_current_level_range(&difficulty,source_ranges+2*mode,&count)||count!=2)throw std::runtime_error("Owned native Level range source callback failed");}
    __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native Level fields | ordinal %d | hub %d | random %u | difficulty %d | file %s | source ranges %d %d / %d %d / %d %d | viewport owner; GSLevel stack pending",actor_level_fields.level_list_index_3c,actor_level_fields.hub_40,unsigned(actor_level_fields.is_random_e8),actor_level_fields.difficulty_118,actor_level_file.c_str(),source_ranges[0],source_ranges[1],source_ranges[2],source_ranges[3],source_ranges[4],source_ranges[5]);
    initialize_char_ai_registry();
    initialize_native_player_skills(assets,restore);
    initialize_native_monster_scripts(assets);
    initialize_crypt_script(assets,restore);
    build_search_world();
    char report[256];std::snprintf(report,sizeof(report),"Crypt | %u rooms | %u monsters | %u scenery objects\n%u triangles. Drag the movement control to walk.",level.rooms,monsters,decors,triangles+586+object_triangles);
    __android_log_print(ANDROID_LOG_INFO,"DH2Native","Objects ready | monsters %u | decors %u | resources %zu | instance draws %u | triangles %u | character records %zu | model entries %zu | idle preview only",monsters,decors,object_groups.size(),object_draws,object_triangles,character_table.rows.size(),model_table.values.size());
    if(level.native_floor)__android_log_print(ANDROID_LOG_INFO,"DH2Native","Native floors ready | records %zu | graph nodes %u | graph edges %u | selector collision controls height",level.native_floor->records.size(),level.native_floor->graph.node_count,level.native_floor->graph.edge_count);
    if(level.native_floor&&level.native_floor->sewn)__android_log_print(ANDROID_LOG_INFO,"DH2Native","Native floor links ready | neighbour relations %u | validation references %u | graph-node search ready",level.native_floor->sewing.link_count,level.native_floor->graph.validation_count);
    if(level.native_floor&&level.native_floor->sewn){
      auto& floors=*level.native_floor;const auto& graph=floors.graph;
      std::vector<unsigned> first(floors.records.size()),last(floors.records.size()),path(graph.node_count);unsigned pairs=0,successful=0,segments=0;std::uint64_t digest=0xcbf29ce484222325ull;
      for(unsigned i=0;i<graph.node_count;++i){const auto& node=graph.nodes[i];if(!first[node.floor])first[node.floor]=node.id;last[node.floor]=node.id;}
      const auto append=[&](unsigned value){for(unsigned k=0;k<4;++k){digest^=(value>>(k*8))&255;digest*=0x100000001b3ull;}};
      const auto goal=[](void* target,unsigned id)->unsigned{return id==*static_cast<unsigned*>(target);};const auto valid=[](void*,unsigned)->unsigned{return 1;};
      for(unsigned a=0;a<first.size();++a)for(unsigned b=0;b<last.size();++b){
        unsigned target=last[b];const dh2::navigation::SearchTest test{goal,valid,valid,&target};dh2::navigation::SearchResult result{0,0,0,0,0,0,path.data(),unsigned(path.size()),0};
        if(!first[a]||!target||dh2::floors::search_nodes(floors,first[a],10000,test,result)!=0)throw std::runtime_error("Native graph route probe rejected");
        ++pairs;successful+=result.found!=0;segments+=result.path_count;append(first[a]);append(target);append(result.found);append(result.expanded);append(result.edges_examined);append(result.candidate_relaxations);append(result.non_goal_enqueues);append(result.path_count);
        for(unsigned i=0;i<result.path_count;++i)append(path[i]);
      }
      __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native graph route probe | floor pairs %u | successful %u | segments %u | state %016llx | endpoints and movement pending",pairs,successful,segments,static_cast<unsigned long long>(digest));
      dh2::floors::clear_route_cache(floors);pairs=successful=segments=0;digest=0xcbf29ce484222325ull;unsigned direct=0,graph_routes=0;path.resize(graph.node_count+1);dh2::navigation::RouteObject object{};
      const auto centroid=[](const dh2::collision::Triangle& triangle,float* point){for(unsigned k=0;k<3;++k)point[k]=static_cast<float>((double(triangle.points[0][k])+double(triangle.points[1][k])+double(triangle.points[2][k]))/3.);};
      for(unsigned a=0;a<floors.records.size();++a)for(unsigned b=0;b<floors.records.size();++b){
        float source[3],target[3];centroid(floors.records[a]->triangles.front(),source);centroid(floors.records[b]->triangles.back(),target);
        dh2::navigation::RouteResult result{0,0,0,0,{0,0,0,0,0,0,path.data(),unsigned(path.size()),0}};
        if(dh2::floors::route(floors,source,target,10000,&object,result)!=0)throw std::runtime_error("Native world route probe rejected");
        ++pairs;successful+=result.found!=0;direct+=result.kind==1;graph_routes+=result.kind==2;segments+=result.search.path_count;
        append(a);append(b);append(result.found);append(result.source);append(result.target);append(result.kind);append(result.search.found);append(result.search.expanded);append(result.search.edges_examined);append(result.search.candidate_relaxations);append(result.search.non_goal_enqueues);append(result.search.path_count);
        for(unsigned i=0;i<result.search.path_count;++i)append(path[i]);
      }
      dh2::floors::clear_route_cache(floors);
      __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native world route probe | floor pairs %u | successful %u | direct %u | graph %u | segments %u | state %016llx | smoothing and movement pending",pairs,successful,direct,graph_routes,segments,static_cast<unsigned long long>(digest));
      pairs=successful=segments=0;digest=0xcbf29ce484222325ull;unsigned owned=0;
      std::vector<dh2::navigation::PathSegment> refined(graph.node_count+1);dh2::navigation::PathObject actor{};actor.segments=refined.data();actor.capacity=refined.size();
      const auto append_bytes=[&](const void* raw,unsigned count){const auto* bytes=static_cast<const unsigned char*>(raw);for(unsigned i=0;i<count;++i){digest^=bytes[i];digest*=0x100000001b3ull;}};
      for(unsigned a=0;a<floors.records.size();++a)for(unsigned b=0;b<floors.records.size();++b){
        float target[3];centroid(floors.records[a]->triangles.front(),actor.position);centroid(floors.records[b]->triangles.back(),target);
        dh2::navigation::RouteResult result{0,0,0,0,{0,0,0,0,0,0,path.data(),unsigned(path.size()),0}};
        if(dh2::floors::find_path(floors,actor,target,10000,result)!=0)throw std::runtime_error("Native FindPath probe rejected");
        ++pairs;successful+=result.found!=0;owned+=actor.owned;segments+=actor.count;append(a);append(b);append_bytes(&result,40);append_bytes(path.data(),result.search.path_count*4);
        append_bytes(&actor,68);append(actor.count);append(actor.owned);append_bytes(actor.segments,actor.count*sizeof(dh2::navigation::PathSegment));
      }
      dh2::floors::clear_route_cache(floors);
      __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native FindPath probe | floor pairs %u | successful %u | owned %u | segments %u | state %016llx | position controller pending",pairs,successful,owned,segments,static_cast<unsigned long long>(digest));
      pairs=successful=0;digest=0xcbf29ce484222325ull;unsigned accepted=0,direction_valid=0;
      const dh2::navigation::MotionPolicy policy{1000.f,0};
      for(unsigned a=0;a<floors.records.size();++a)for(unsigned b=0;b<floors.records.size();++b){
        float source[3],target[3],point[3],direction[3];centroid(floors.records[a]->triangles.front(),source);centroid(floors.records[b]->triangles.back(),target);
        for(unsigned k=0;k<3;++k){point[k]=target[k];direction[k]=target[k]-source[k];}point[2]+=36;
        dh2::navigation::MotionObject object{0,8,a,a,{},{}};std::copy(source,source+3,object.position);dh2::navigation::PositionResult result{};
        const dh2::navigation::DirectionRequest request{&floors.collision_world,source,36.f,0,0};unsigned valid=0;
        if(dh2_nav_validate_position(&result,&floors.collision_world,&object,point,&policy)!=0||dh2_nav_validate_direction(&valid,direction,&request)!=0)throw std::runtime_error("Native motion probe rejected");
        ++pairs;successful+=result.valid;accepted+=result.kind==2;direction_valid+=valid;append(a);append(b);append_bytes(&result,24);append_bytes(point,12);append_bytes(&object,40);append(valid);append_bytes(direction,12);
      }
      __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native floor motion probe | floor pairs %u | position valid %u | accepted %u | direction valid %u | state %016llx | controller and dynamic obstacles pending",pairs,successful,accepted,direction_valid,static_cast<unsigned long long>(digest));
      pairs=accepted=0;digest=0xcbf29ce484222325ull;unsigned registered=0,relocated=0;
      for(unsigned a=0;a<floors.records.size();++a)for(unsigned b=0;b<floors.records.size();++b){
        dh2::navigation::NavigationObject object;dh2::navigation::ObstacleEntry entries[2]{};unsigned buckets[2]{};
        dh2::navigation::ObstacleRegistry registry{entries,0,2,buckets,0,2};float source[3],target[3],point[3];
        centroid(floors.records[a]->triangles.front(),source);centroid(floors.records[b]->triangles.back(),target);std::copy(target,target+3,point);point[2]+=36;
        const std::uint64_t key=0x100000001ull+a;
        dh2::navigation::ObjectInitRequest init{&floors.collision_world,&object,17+a,{},36,0,0};std::copy(source,source+3,init.position);
        const dh2::navigation::ObstacleInitRequest obstacle{&floors.collision_world,&registry,&object,key,1,36,1,0};
        const dh2::navigation::ObjectPositionRequest position{&floors.collision_world,&registry,&object,key,point,&policy};dh2::navigation::PositionResult result{};
        if(dh2_nav_object_defaults(&object)||dh2_nav_init_object(&init)||dh2_nav_init_obstacle(&obstacle)||dh2_nav_validate_object_position(&result,&position))throw std::runtime_error("Native obstacle registry probe rejected");
        ++pairs;accepted+=result.kind==2;registered+=registry.count==1;relocated+=result.parent_change!=0;
        append(a);append(b);append_bytes(&result,24);append_bytes(point,12);append_bytes(&object,64);append(registry.floor_count);append(registry.count);
        std::sort(buckets,buckets+registry.floor_count);append_bytes(buckets,registry.floor_count*4);
        for(unsigned floor=0;floor<registry.floor_count;++floor)for(unsigned i=0;i<registry.count;++i)if(entries[i].floor==buckets[floor])append_bytes(&entries[i],16);
      }
      __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native obstacle registry probe | floor pairs %u | accepted %u | registered %u | relocated %u | state %016llx | forces and controller pending",pairs,accepted,registered,relocated,static_cast<unsigned long long>(digest));
      digest=0xcbf29ce484222325ull;unsigned tested_floors=0,contributions=0,adjusted=0,turn_limited=0;
      for(unsigned floor=0;floor<floors.records.size();++floor){
        float source[3];centroid(floors.records[floor]->triangles.front(),source);
        dh2::navigation::AvoidanceActor actors[8]{};std::uint64_t keys[8];dh2::navigation::ObstacleEntry entries[8]{};unsigned buckets[2]{floor,(floor+1)%unsigned(floors.records.size())};
        dh2::navigation::ObstacleRegistry registry{entries,8,8,buckets,2,2};const float offsets[8][2]{{0,0},{30,10},{35,-15},{120,0},{20,5},{25,10},{20,-10},{30,0}};
        for(unsigned i=0;i<8;++i){
          auto& a=actors[i];keys[i]=0x100000001ull+i;dh2_nav_object_defaults(&a.object);const unsigned f=i==7?buckets[1]:floor;
          a.object.motion.room=a.object.motion.floor=f;a.object.motion.object_flags=i==5?8:i==6?4:14;a.object.user=keys[i];a.object.radius=36;a.object.obstacle_weight=1;a.object.obstacle_extent=36;
          for(unsigned k=0;k<3;++k){a.object.motion.position[k]=source[k]+(k<2?offsets[i][k]:0);a.target[k]=source[k]+(k==0?1000:0);a.path_target[k]=source[k]+(k==0?300:0);}a.has_path=1;
          a.physical={1,0,0,1,{std::int16_t(i==0||i==4?-3:0),1,65535,1},{0,0,0,0}};entries[i]={f,0,keys[i]};
        }
        const dh2::navigation::AvoidanceScene scene{&registry,actors,keys,8,0};dh2::navigation::ObstacleForce records[8]{};dh2::navigation::ForceBuffer buffer{records,0,8};const dh2::navigation::AvoidanceRequest request{&scene,keys[0],&buffer};dh2::navigation::ForceResult force{};
        if(dh2_nav_obstacle_force(&force,&request))throw std::runtime_error("Native force probe rejected");
        append(floor);append_bytes(&force,16);append_bytes(records,buffer.count*24);contributions+=force.count;buffer.count=0;float direction[3]{100,0,0};dh2::navigation::AvoidanceResult result{};
        if(dh2_nav_avoid_obstacles(&result,direction,&request))throw std::runtime_error("Native avoidance probe rejected");
        ++tested_floors;adjusted+=result.adjusted;turn_limited+=result.turn_limited;append_bytes(&result,32);append_bytes(direction,12);append_bytes(records,buffer.count*24);append(registry.floor_count);append(registry.count);
        std::sort(buckets,buckets+registry.floor_count);append_bytes(buckets,registry.floor_count*4);for(unsigned f=0;f<registry.floor_count;++f)for(unsigned i=0;i<registry.count;++i)if(entries[i].floor==buckets[f])append_bytes(&entries[i],16);
      }
      __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native avoidance probe | floors %u | force contributions %u | adjusted %u | turn limited %u | state %016llx | actor producers and controller pending",tested_floors,contributions,adjusted,turn_limited,static_cast<unsigned long long>(digest));
      digest=0xcbf29ce484222325ull;unsigned producer_floors=0,producer_registered=0,physical_radius_updates=0;
      for(unsigned floor=0;floor<floors.records.size();++floor){
        float source[3];centroid(floors.records[floor]->triangles.front(),source);
        dh2::navigation::NavigationObject object;dh2_nav_object_defaults(&object);
        object.user=17;object.motion.room=object.motion.floor=floor;object.radius=36;std::copy(source,source+3,object.motion.position);
        dh2::navigation::ObstacleEntry entries[1]{};unsigned buckets[1]{};
        dh2::navigation::ObstacleRegistry registry{entries,0,1,buckets,0,1};
        const dh2::navigation::ProducerFields fields{dh2::navigation::ProducerClass::character,1,.36f,0,{-36,-24},{36,24}};
        const dh2::navigation::ProducerRequest request{&floors.collision_world,&registry,&object,0x100000001ull,&fields};
        if(dh2_nav_update_game_object(&request))throw std::runtime_error("Native actor producer probe rejected");
        ++producer_floors;producer_registered+=bool(object.motion.object_flags&4);physical_radius_updates+=object.radius==36.f;
        append(floor);append_bytes(&object,64);append(registry.floor_count);append(registry.count);append_bytes(buckets,registry.floor_count*4);append_bytes(entries,registry.count*16);
      }
      __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native actor producer probe | floors %u | registered %u | physical radius updates %u | state %016llx | physical construction and controller pending",producer_floors,producer_registered,physical_radius_updates,static_cast<unsigned long long>(digest));
    __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native heading control | player movement and melee facing use recovered source | UpdatePath rotation subobjects and genuine physics active");
    }
    __android_log_print(ANDROID_LOG_INFO,"DH2Native","World ready | rooms %u | visual draws %zu | navigation triangles %zu | idle tracks %u | walk tracks %u | position %.4f %.4f %.4f",level.rooms,draws.size(),level.floor.size(),player.track_count(),walk_player.track_count(),actor_position[0],actor_position[1],actor_position[2]);return std::string(report)+(combat_resumed?"\nNative combat resumed":"");
  }catch(const std::exception& e){deactivate();release_objects(candidate_groups);release(environment,textures);__android_log_print(ANDROID_LOG_ERROR,"DH2Native","World load failed: %s",e.what());return std::string("World load failed: ")+e.what();}
}
void draw(int width,int height){
  if(!enabled||!program)return;
  float frame_dt=0;
  if(world_mode){const auto now=std::chrono::steady_clock::now();
    const auto now_ms=std::uint32_t(std::chrono::duration_cast<std::chrono::milliseconds>(now.time_since_epoch()).count());
    const auto previous_ms=std::uint32_t(std::chrono::duration_cast<std::chrono::milliseconds>(last_frame.time_since_epoch()).count());
    const unsigned dt_ms=now_ms-previous_ms;last_frame=now;
    // The original Application skips updates after a real-time gap >2000ms.
    // Its normal dt is unsigned milliseconds, with one world Step and no cap.
    if(dt_ms<=2000){if(!native_actor_ready)throw std::runtime_error("Native actor runtime is not initialized");advance_native_actor(dt_ms);frame_dt=float(dt_ms)*.001f;}
    const auto& target=inspected_object>=0?world_objects[inspected_object].position:actor_position;
    center[0]=target[0];center[1]=target[1];center[2]=target[2]+90;
  }
  const auto& playback=player;
  if(world_mode)sampled_ms=prince_locomotion.current_timeline().current_ms;
  if(playback.track_count()&&!animation_failed&&!world_mode){
    if(!frozen){const auto elapsed=std::chrono::duration_cast<std::chrono::milliseconds>(std::chrono::steady_clock::now()-epoch).count();sampled_ms=playback.start+elapsed%(playback.end-playback.start);}
    std::string error;if(!playback.sample(current_scene,sampled_ms,error)){animation_failed=true;__android_log_print(ANDROID_LOG_ERROR,"DH2Native","Animation sample failed: %s",error.c_str());}
    if(world_mode&&!prince_visual.update_world(current_scene,error))throw std::runtime_error(error);
  }
  const auto projection=camera(width,height);glUseProgram(program);
  glUniform1i(glGetUniformLocation(program,"diffuse"),0);glUniform1i(glGetUniformLocation(program,"alpha_map"),1);
  glEnable(GL_DEPTH_TEST);glDepthFunc(GL_LEQUAL);glEnable(GL_BLEND);
  glEnableVertexAttribArray(position);glEnableVertexAttribArray(texcoord);glEnableVertexAttribArray(color);
  auto submit=[&](const Draw& b,const Matrix& transform){
    glUniformMatrix4fv(mvp,1,GL_FALSE,transform.data());
    b.material.backface?glEnable(GL_CULL_FACE):glDisable(GL_CULL_FACE);glCullFace(GL_BACK);glFrontFace(GL_CCW);
    glBlendFunc(GL_SRC_ALPHA,b.material.additive?GL_ONE:GL_ONE_MINUS_SRC_ALPHA);glDepthMask(b.material.additive?GL_FALSE:GL_TRUE);
    glUniformMatrix4fv(texture_matrix,1,GL_FALSE,b.material.texture_matrix);glUniform4fv(material_color,1,b.material.color);
    glUniform1f(has_alpha,b.material.alpha_map.empty()?0:1);glUniform1f(alpha_ref,b.material.alpha_ref);
    glActiveTexture(GL_TEXTURE0);glBindTexture(GL_TEXTURE_2D,b.diffuse);glActiveTexture(GL_TEXTURE1);glBindTexture(GL_TEXTURE_2D,b.alpha);
    glBindBuffer(GL_ARRAY_BUFFER,b.vertices);glBindBuffer(GL_ELEMENT_ARRAY_BUFFER,b.indices);
    glVertexAttribPointer(position,3,GL_FLOAT,GL_FALSE,sizeof(Vertex),reinterpret_cast<void*>(offsetof(Vertex,p)));
    glVertexAttribPointer(texcoord,2,GL_FLOAT,GL_FALSE,sizeof(Vertex),reinterpret_cast<void*>(offsetof(Vertex,uv)));
    glVertexAttribPointer(color,4,GL_FLOAT,GL_FALSE,sizeof(Vertex),reinterpret_cast<void*>(offsetof(Vertex,color)));glDrawElements(GL_TRIANGLES,b.count,GL_UNSIGNED_SHORT,nullptr);
  };
  for(auto& b:draws){
    if(!b.skin.nodes.empty()){
      std::string error;std::vector<dh2::skinning::Matrix> matrices;std::vector<std::array<float,3>> deformed;
      if(!dh2::skinning::palette(b.skin,current_scene,matrices,error)||!dh2::skinning::positions(b.skin,matrices,b.rest_positions,deformed,error)){
        __android_log_print(ANDROID_LOG_ERROR,"DH2Native","Skin sample failed: %s",error.c_str());enabled=false;return;}
      for(unsigned k=0;k<b.cpu_vertices.size();++k)std::copy(deformed[k].begin(),deformed[k].end(),b.cpu_vertices[k].p);
      glBindBuffer(GL_ARRAY_BUFFER,b.vertices);glBufferSubData(GL_ARRAY_BUFFER,0,b.cpu_vertices.size()*sizeof(Vertex),b.cpu_vertices.data());
    }
    // Native actor joints already include owner * helper * authored graph.
    const auto transform=b.environment?dh2::scene::multiply(projection,b.placement):b.skin.nodes.empty()?dh2::scene::multiply(projection,current_scene.graph[b.node].world):projection;submit(b,transform);
  }
  if(world_mode)for(auto& group:object_groups){
    std::string error;
    auto render_actor=[&](const ObjectActor& instance,SpawnOwner* owner){for(unsigned i=0;i<group.draws.size();++i){const auto& primitive=group.resource.primitives[i];const auto& batch=group.draws[i];
      const auto& scene=owner?owner->scene:group.resource.scene;
      const auto& vertices=owner?owner->render_vertices.at(i):primitive.vertices;
      if(!primitive.skin.nodes.empty()){
        if(owner){std::vector<dh2::skinning::Matrix> matrices;std::vector<std::array<float,3>> deformed;
          if(!dh2::skinning::palette(primitive.skin,scene,matrices,error)||
             !dh2::skinning::positions(primitive.skin,matrices,primitive.rest_positions,deformed,error))
            throw std::runtime_error("Gated actor skinning failed: "+error);
          for(unsigned k=0;k<vertices.size();++k)std::copy(deformed[k].begin(),deformed[k].end(),owner->render_vertices[i][k].p);
        }
        glBindBuffer(GL_ARRAY_BUFFER,batch.vertices);glBufferSubData(GL_ARRAY_BUFFER,0,vertices.size()*sizeof(Vertex),vertices.data());
      }
      auto transform=owner?projection:dh2::scene::multiply(projection,instance.placement);
      if(primitive.skin.nodes.empty())transform=dh2::scene::multiply(transform,scene.graph[primitive.node].world);submit(batch,transform);
    }};
    if(group.animation_table<0){
      const auto& clip=group.resource.animation;int ms=clip.start;
      if(clip.track_count()){const auto elapsed=std::chrono::duration_cast<std::chrono::milliseconds>(std::chrono::steady_clock::now()-object_epoch).count();ms=frozen?std::clamp(sampled_ms,clip.start,clip.end):clip.start+elapsed%(clip.end-clip.start);}
      if(!dh2::objects::sample(group.resource,ms,error)){__android_log_print(ANDROID_LOG_ERROR,"DH2Native","Object sample failed: %s",error.c_str());enabled=false;return;}
      for(const auto& instance:group.instances)render_actor(instance,nullptr);
    }else for(auto& actor:group.instances){
      if(actor.spawn_owner&&!actor.spawn_owner->source_visible)continue;
      update_enemy(actor,group.animation_table);
      if(actor.pending_death){
        auto* sequence=dh2::data::animation_state(actor_animation_tables,group.animation_table,"Died");
        if(!sequence||!actor.scheduler.start(actor_animation_tables,sequence-actor_animation_tables.sequences.data(),actor_random,error)){__android_log_print(ANDROID_LOG_ERROR,"DH2Native","Combat death animation failed");enabled=false;return;}
        actor.cursor=0;actor.completions=0;actor.state="Died";actor.event_cursor={};actor.animation_events=0;actor.pending_death=false;
        __android_log_print(ANDROID_LOG_INFO,"DH2Native","Combat death animation selected | %s | clip %d | dead %u",actor.name.c_str(),actor.scheduler.clip().anim,actor.combat_state.dead);
      }
      double remaining=frozen?0:frame_dt*1000;unsigned events=0;
      while(!frozen&&actor.scheduler.active()){
        const auto& clip=group.clips.at(actor.scheduler.clip().anim);const double duration=clip.end-clip.start,speed=actor.scheduler.clip().speed,needed=(duration-actor.cursor)/speed;
        struct EventContext{ObjectActor* actor;int clip,ms;};
        auto dispatch_events=[&](double next){
          const int previous=clip.start+int(std::clamp(actor.cursor,0.,duration)),current=clip.start+int(std::clamp(next,0.,duration));EventContext context{&actor,actor.scheduler.clip().anim,current};
          return dh2_events_update(&clip.events.view(),&actor.event_cursor,previous,current,clip.start,clip.end,[](const dh2::animation::TriggeredEvent* event,void* raw){
            auto& context=*static_cast<EventContext*>(raw);auto& actor=*context.actor;++actor.animation_events;
            __android_log_print(ANDROID_LOG_INFO,"DH2Native","Actor animation event | %s | state %s | clip %d | name %s | lag ms %d | time ms %d | count %u",actor.name.c_str(),actor.state.c_str(),context.clip,event->name,event->lag_ms,context.ms,actor.animation_events);
            if(actor.spawn_owner&&actor.spawn_owner->character.state.current==1) {
              const int result=actor.spawn_owner->character.spawn_event(0x28,event->name);
              if(result<0)throw std::runtime_error("Spawn named animation event rejected");
              __android_log_print(ANDROID_LOG_INFO,"DH2Native","Spawn source event | %s | event 0x28 | name %s | result %d | body %u",actor.name.c_str(),event->name,result,unsigned(actor.spawn_owner->body.body!=nullptr));
            }
            // These actors currently have no equipment. CanRangeAttack first
            // checks resolved projectile property 32, then queries inventory.
            // Outer sequence and inner clip steps are distinct original args.
            const auto& frames=actor.scheduler.frames();
            const auto projectile=actor.properties.resolved[32];
            const dh2::data::CombatEventContext combat{actor.state=="Attack"?5:-1,int(frames.front().step),int(frames.back().step),projectile!=-1,projectile};
            dh2::data::CombatEventAction action;
            if(dh2_combat_event_route(&action,&combat,event->name)!=0){__android_log_print(ANDROID_LOG_ERROR,"DH2Native","Actor combat route failed");return;}
            if(action.kind!=dh2::data::CombatEventKind::none)
              __android_log_print(ANDROID_LOG_INFO,"DH2Native","Actor combat action | %s | state %s | clip %d | name %s | kind %d | sequence %d | attack step %d | offhand %d | capability %u | projectile %d | %s",actor.name.c_str(),actor.state.c_str(),context.clip,event->name,int(action.kind),action.sequence_step,action.attack_step,action.offhand,combat.can_range,combat.projectile,actor.combat_target==-1?"execution pending":"native target request");
            apply_actor_attack(actor,action);
          },&context);
        };
        const double next=remaining<needed?actor.cursor+remaining*speed:duration;
        if(!dispatch_events(next)){__android_log_print(ANDROID_LOG_ERROR,"DH2Native","Actor event dispatch failed");enabled=false;return;}
        if(remaining<needed){actor.cursor=next;break;}
        remaining-=std::max(0.,needed);if(++events>64||!actor.scheduler.complete(actor_animation_tables,actor_random,error)){__android_log_print(ANDROID_LOG_ERROR,"DH2Native","Actor completion failed: %s",error.c_str());enabled=false;return;}
        actor.cursor=actor.scheduler.active()?0:duration;actor.event_cursor={};++actor.completions;
        __android_log_print(ANDROID_LOG_INFO,"DH2Native","Actor clip completed | %s | state %s | completions %u | active %d | next clip %d | layers %zu",actor.name.c_str(),actor.state.c_str(),actor.completions,actor.scheduler.active(),actor.scheduler.clip().anim,actor.scheduler.frames().size());
        if(actor.spawn_owner&&actor.spawn_owner->character.state.current==1&&!actor.scheduler.active()) {
          if(actor.spawn_owner->character.event(0x22)!=1)throw std::runtime_error("Spawn finite completion rejected");
          __android_log_print(ANDROID_LOG_INFO,"DH2Native","Spawn source event | %s | event 0x22 | current %d | body %u",actor.name.c_str(),actor.spawn_owner->character.state.current,unsigned(actor.spawn_owner->body.body!=nullptr));
        }
        if(remaining<=0)break;
      }
      const auto& clip=group.clips.at(actor.scheduler.clip().anim);const int ms=frozen?std::clamp(sampled_ms,clip.start,clip.end):clip.start+int(std::clamp(actor.cursor,0.,double(clip.end-clip.start)));
      if(actor.spawn_owner){
        auto& owner=*actor.spawn_owner;
        owner.update_runtime(group.resource,clip,ms,unsigned(std::max(0.f,frame_dt*1000.f)),native_actor_frames);
        sync_search_projection(actor);
        render_actor(actor,&owner);
      }else{
        if(!dh2::objects::sample(group.resource,clip,ms,error)){__android_log_print(ANDROID_LOG_ERROR,"DH2Native","Actor sample failed: %s",error.c_str());enabled=false;return;}
        render_actor(actor,nullptr);
      }
    }
  }
  sync_search_world();
  glDisableVertexAttribArray(position);glDisableVertexAttribArray(texcoord);glDisableVertexAttribArray(color);
  glDepthMask(GL_TRUE);glDisable(GL_BLEND);glDisable(GL_CULL_FACE);glDisable(GL_DEPTH_TEST);glBindBuffer(GL_ELEMENT_ARRAY_BUFFER,0);glBindBuffer(GL_ARRAY_BUFFER,0);
  const auto e=glGetError();if(e!=GL_NO_ERROR)__android_log_print(ANDROID_LOG_ERROR,"DH2Native","Model draw GL error 0x%04x",e);
  else if(player.track_count()&&frozen&&!animation_failed&&!frozen_cursor_logged){
    __android_log_print(ANDROID_LOG_INFO,"DH2Native","Animation frame rendered at %d ms",sampled_ms);frozen_cursor_logged=true;
  }
}
}
