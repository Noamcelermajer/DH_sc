#include "model_renderer.hpp"
#include "character_menu_stats_owner_v1.hpp"
#include "character_menu_reload_v1.hpp"
#include "character_menu_inventory_order_v1.hpp"
#include "original_menu_viewport_v1.hpp"
#include "frustum_runtime.hpp"
#include "mod_assets.hpp"
#include "scene.hpp"
#include "textures.hpp"
#include "animation.hpp"
#include "skinning.hpp"
#include "modular_skin_catalog.hpp"
#include "visual_skin_owner_v6.hpp"
#include "world.hpp"
#include "../../../../../../port/level-world/crypt_module_bounds_registry_v1.hpp"
#include "../../../../../../port/level-world/crypt_room_zone_owner_v1.hpp"
#include "../../../../../../port/level-world/crypt_room_zone_manager_bridge_v1.hpp"
#include "../../../../../../port/level-world/object_manager_runtime_owner_v1.hpp"
#include "../../../../../../port/level-world/crypt_generated_spawnpoints_v1.hpp"
#include "../../../../../../port/level-world/crypt_generated_source_dact_v1.hpp"
#include "../../../../../../port/level-world/crypt_generated_mvp_v1.hpp"
#include "../../../../../level-world/player_skill_progression_v1.hpp"
#include "../../../../../../port/level-world/source_handle_ledger_v1.hpp"
#include "../../../../../../port/random-level/crypt_module_catalog_v1.hpp"
#include "../../../../../../port/random-level/crypt_level_generator_v1.hpp"
#include "objects.hpp"
#include "animation_tables.hpp"
#include "animation_scheduler.hpp"
#include "animation_bank.hpp"
#include "class_tables.hpp"
#include "class_preview_setup.hpp"
#include "skill_tables.hpp"
#include "loot_tables_v2.hpp"
#include "item_audiovisual_table_v1.hpp"
#include "item_power_tables_v5.hpp"
#include "loot_power_resources_v7.hpp"
#include "fresh_inventory_owned_v4.hpp"
#include "../../../../../game-data/player_add_loot_v1.hpp"
#include "../../../../../level-world/player_initial_equipment_v1.hpp"
#include "../../../../../level-world/loot_pickup_quest_tail_v10.hpp"
#include "character_inventory_selection_v1.hpp"
#include "player_savegame_v1.hpp"
#include "quest_current_selection_v1.hpp"
#include "player_saved_skill_slots_v1.hpp"
#include "savegame_options_v1.hpp"
#include "level_tables.hpp"
#include "world_map_tables.hpp"
#include "quest_table_bindings_v1.hpp"
#include "native_quest_owner.hpp"
#include "level_construction_fields.hpp"
#include "lua_script_level_queries.hpp"
#include "properties.hpp"
#include "vitals.hpp"
#include "combat_events.hpp"
#include "combat_result.hpp"
#include "melee_pipeline.hpp"
#include "../../../../../game-data/player_equipment_queries_live_v1.hpp"
#include "../../../../../game-data/player_equipment_live_services_v1.hpp"
#include "health.hpp"
#include "combat_application.hpp"
#include "ai.hpp"
#include "aggro.hpp"
#include "navigation_objects.hpp"
#include "navigation_avoidance.hpp"
#include "navigation_producers.hpp"
#include "navigation_heading.hpp"
#include "native_camera_input_v1.hpp"
#include "native_level_camera_config_v1.hpp"
#include "native_character_controller_v1.hpp"
#include "native_character_stop.hpp"
#include "native_camera_crypt_frame_v1.hpp"
#include "../../../../../../port/level-world/camera_level_runtime_v1.hpp"
#include "player_camera_rig_v1.hpp"
#include "actor_runtime.hpp"
#include "actor_blended_playback.hpp"
#include "../../../../../../port/level-world/player_root_motion_policy_v1.hpp"
#include "actor_scene_retention_v1.hpp"
#include "physical_world.hpp"
#include "character_scene.hpp"
#include "character_state.hpp"
#include "character_timers.hpp"
#include "character_coordinator.hpp"
#include "native_player_character_owner_v1.hpp"
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
#include "native_ghost_script_queries.hpp"
#include "native_player_skills.hpp"
#include "object_update_culling.hpp"
#include "character_ai_update_all_skills.hpp"
#include "character_skill_state_queries.hpp"
#include "../../../../../player-info-level/player_manager_host_level.hpp"
#include "../../../../../player-info-level/player_locality_v1.hpp"
#include "native_player_profile.hpp"
#include "native_start_game_plan_v1.hpp"
#include "native_menu_runtime.hpp"
#include "../../../../../../port/level-world/source_random_lifecycle_v1.hpp"
#include "character_saved_class_v1.hpp"
#include "character_gameplay_save_v1.hpp"
#include "../../../../../player-info-level/player_local_selection_v1.hpp"
#include "../../../../../player-info-level/player_info_record_v1.hpp"
#include "../../../../../player-info-level/player_info_activity_v1.hpp"
#include "../../../../../player-info-level/player_manager_friendly_v1.hpp"
#include "../../../../../player-info-level/player_metadata_prepare_v1.hpp"
#include "../../../../../player-info-level/player_offline_registry_v1.hpp"
#include "navigation_producers.hpp"
#include <GLES2/gl2.h>
#include <android/log.h>
#include <algorithm>
#include <array>
#include <cmath>
#include <cstdio>
#include <cstdlib>
#include <map>
#include <optional>
#include <limits>
#include <memory>
#include <set>
#include <unordered_map>
#include <functional>
#include <stdexcept>
#include <vector>
#include <chrono>
#include <cctype>
#include <cstring>
#include <string_view>
#include <sys/time.h>

namespace model_renderer {
namespace {
using Matrix=std::array<float,16>;
bool original_real_time_ms(std::uint32_t& result) noexcept {
 timeval now{};
 if(gettimeofday(&now,nullptr)!=0)return false;
 const auto milliseconds=static_cast<std::uint64_t>(now.tv_sec)*1000u+
                         static_cast<std::uint64_t>(now.tv_usec)/1000u;
 result=static_cast<std::uint32_t>(milliseconds);return true;
}
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
void* item_text_services_context=nullptr;
model_renderer::ItemTextServicesFactoryV5 item_text_services_factory=nullptr;
struct Draw{GLuint vertices=0,indices=0,diffuse=0,alpha=0;GLsizei count=0;unsigned node=0;dh2::scene::Material material;
 dh2::skinning::Skin skin;std::vector<Vertex> cpu_vertices;std::vector<std::array<float,3>> rest_positions;
 bool environment=false;Matrix placement{};};
std::vector<Draw> draws;std::vector<GLuint> images;GLuint program=0;
struct PlayerEquipmentNativeV1;
std::unique_ptr<PlayerEquipmentNativeV1> player_equipment_native;
std::vector<Draw> equipment_draws;std::vector<GLuint> equipment_images;
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
 dh2::data::PropertySheet base_class{};int class_id=-1;std::int32_t loot_table_id=-1;
 dh2::data::PropertyState properties;
 dh2::animation::EventCursor event_cursor;unsigned animation_events=0;
 dh2::data::CombatActorState combat_state;int combat_target=-1;bool pending_death=false;
 // Direct source Monster MoveTo state. Each actor owns its route, route
 // scratch, PFObject projection and controller; it never borrows Prince or
 // another actor's navigation storage.
 dh2::navigation::NavigationObject direct_nav_object{};
 dh2::navigation::PathObject direct_path{};
 dh2::navigation::PathController direct_controller{};
 std::vector<dh2::navigation::PathSegment> direct_route_storage,direct_route_scratch;
 dh2::character::PathToState40 direct_move_to{};
 dh2::character::PathToServices16 direct_path_services{};
 std::uint64_t direct_path_identity=0;
 std::uint8_t direct_source_moving=0;
 bool direct_path_ready=false;
 bool loot_dropped=false,loot_retry_pending=false,kill_credit_attempted=false;unsigned loot_retry_delay_frames=0;
 std::uint64_t loot_killer_identity=0;
 std::vector<dh2::data::ItemInstanceV1*> loot_rollback_items;
 AggroStorage aggro;std::uint64_t identity=0;unsigned target_alive=0,target_sight=0;bool target_seeking=false,ai_attack=false;
 SearchObjectProjection search_projection{};
 std::shared_ptr<SpawnOwner> spawn_owner;
 std::shared_ptr<NativeCharAIProjection> native_ai;
 std::string source_root_node_id;
 std::string source_visual_path;
 bool packaged_actor_asset=false;
 std::uint32_t source_module_index=std::numeric_limits<std::uint32_t>::max();
 std::uint32_t source_record=std::numeric_limits<std::uint32_t>::max();
 std::int32_t source_handle=-1;
 unsigned visual_root=std::numeric_limits<unsigned>::max();
 // Live source GameObject zoning fields for the bounded Crypt actor adapter.
 // The RoomZone identity is an opaque port token, never a native pointer.
 std::uintptr_t room_zone_2f4=0;
 std::uintptr_t visual_object_2d8=0;
 std::uint8_t in_room_list_2ef=0,zoning_enabled_2ee=1,in_zone_2f0=0,visible_80=1;
 bool source_room_zone_managed=false,source_updates_enabled=false,renderer_visible=true;
 ObjectActor(const dh2::objects::Record& r):Record(r){}
};
struct ObjectGroup{dh2::objects::Resource resource;std::vector<Draw> draws;std::vector<ObjectActor> instances;std::map<int,dh2::animation::Player> clips;int animation_table=-1;};
struct MvpRenderInstance {
 std::uint32_t module_index=0,source_record=0;
 std::int32_t source_handle=-1;
 std::string name,xrefobject,dae_path,source_path;
 std::array<float,3> position{},rotation_degrees{},scale{1,1,1};
 bool packaged_actor_asset=false;
};
bool item_node_below(const dh2::objects::Resource&,unsigned,unsigned);
std::uint64_t snapshot_checksum(const dh2::data::PropertySheet& sheet){
 std::uint64_t result=14695981039346656037ull;for(auto value:sheet)for(unsigned i=0;i<4;++i){result^=(std::uint32_t(value)>>(8*i))&255;result*=1099511628211ull;}return result;
}
std::vector<ObjectGroup> object_groups;
// Owned source module-root bounds for the active Crypt layout. This prepares
// the source RoomZone boundary but is not itself a RoomZone or membership owner.
dh2::crypt_module_bounds_registry_v1::Owner active_crypt_module_bounds;
struct NativeCryptRoomRuntime {
 using Manager=dh2::object_manager_runtime_owner_v1::Owner;
 using ZoneOwner=dh2::crypt_room_zone_owner_v1::Owner;
 using Address=std::uintptr_t;
 Manager manager;
 ZoneOwner zones;
 dh2::crypt_module_bounds_registry_v1::Owner* module_owner=nullptr;
 std::unordered_map<Address,ObjectActor*> actors;
 std::vector<ObjectActor*> actor_records;
 std::vector<dh2::object_manager_runtime_owner_v1::SourceHandle> source_handles;
 Address player_identity=0;
 std::uint32_t enrolled_characters=0;

 bool initialize(dh2::crypt_module_bounds_registry_v1::Owner&,
                 const std::vector<ObjectActor*>&,Address,
                 const dh2::world::source_handle_ledger_v1::Ledger*,
                 std::string&);
 bool clear() noexcept;
 static std::int32_t initialize_zone_position(void*,
     const dh2::module_room_zone_bounds::Request*);
 static std::int32_t enroll_service(void*,
     const dh2::room_zone_enrollment::Request*,std::uint32_t*);
 static std::int32_t transition_service(void*,
     const dh2::crypt_room_zone_owner_v1::TransitionRequest*,std::uint32_t*);
 bool update_frustum(const std::array<float,3>& player_position);
};
std::unique_ptr<NativeCryptRoomRuntime> active_crypt_room_runtime;
std::vector<ObjectActor> saved_actors;
// Stable borrowed projection of the source Character +0x14e8 association.
// The Save and its LoadOwner remain owned by PlayerCombat; this object owns
// only the SaveRef slot that Character::SG_Load dereferences.
struct NativePlayerSaveAssociation {
 dh2::character_gameplay_save_v1::SaveRef save_ref{};
 dh2::character_gameplay_save_v1::SaveRef* save_14e8=nullptr;
 std::unique_ptr<dh2::character_gameplay_save_v1::Runtime> runtime;
 std::uintptr_t character_identity=0,save_identity=0,loader_identity=0;
 std::uintptr_t mask4_profile_identity=0;
 unsigned mask4_transport_requests=0;
 unsigned mask2_calls=0,mask4_calls=0;
 bool mask2_loaded=false,mask4_loaded=false;

 bool bind(std::uintptr_t character,dh2::data::PlayerSavegameV1& save,
           dh2::data::PlayerSaveLoadOwnerV1& loader,std::string& error){
  if(runtime){error="Player Save association is already bound";return false;}
  character_identity=character;save_identity=reinterpret_cast<std::uintptr_t>(&save);
  loader_identity=reinterpret_cast<std::uintptr_t>(&loader);
  save_ref=dh2::character_gameplay_save_v1::borrow_save(save_identity,save,&loader);
  if(!character_identity||!save_ref.identity||save_ref.save!=&save||save_ref.loader!=&loader){
   error="Player Save association does not borrow the canonical Save and LoadOwner";return false;
  }
  save_14e8=&save_ref;
  try{
   runtime=std::make_unique<dh2::character_gameplay_save_v1::Runtime>(
       dh2::character_gameplay_save_v1::Character{character_identity,&save_14e8});
  }catch(const std::exception& exception){error=exception.what();return false;}
  error.clear();return true;
 }
 bool same_owners(std::uintptr_t character,const dh2::data::PlayerSavegameV1& save,
                  const dh2::data::PlayerSaveLoadOwnerV1& loader)const noexcept{
  return runtime&&character_identity==character&&save_identity==reinterpret_cast<std::uintptr_t>(&save)&&
         loader_identity==reinterpret_cast<std::uintptr_t>(&loader)&&save_ref.save==&save&&
         save_ref.loader==&loader&&save_14e8==&save_ref;
 }
 bool load_mask2_once(std::string& error){
  if(!runtime||mask2_calls){error="source SG_Load(2) association is missing or already called";return false;}
  ++mask2_calls;dh2::character_gameplay_save_v1::Result result{};
  if(runtime->load(2,&result,error)!=dh2::character_gameplay_save_v1::Status::complete)return false;
  if(result.captured_character!=character_identity||result.captured_save!=save_identity||
     result.mask!=2||result.load_calls!=1){error="source SG_Load(2) used a different Character, Save, or mask";return false;}
  mask2_loaded=true;error.clear();return true;
 }
 bool load_mask4_once(std::string& error){
  if(!runtime||!mask2_loaded||mask4_calls){error="source SG_Load(4) requires the initialized Save association and one earlier SG_Load(2)";return false;}
  if(!save_ref.loader){error="source SG_Load(4) has no retained LoadOwner";return false;}
  ++mask4_calls;dh2::character_gameplay_save_v1::Result result{};
  const auto status=runtime->load(4,&result,error);
  mask4_profile_identity=save_ref.loader->profile().identity;
  mask4_transport_requests=save_ref.loader->delivered_calls();
  if(status!=dh2::character_gameplay_save_v1::Status::complete)return false;
  if(result.captured_character!=character_identity||result.captured_save!=save_identity||
     result.mask!=4||result.load_calls!=1){error="source SG_Load(4) used a different Character, Save, or mask";return false;}
  if(!mask4_profile_identity||mask4_transport_requests<9){error="source SG_Load(4) did not dispatch its bound profile section requests";return false;}
  mask4_loaded=true;error.clear();return true;
 }
};
struct PlayerCombat {
 dh2::data::PropertyState properties;dh2::data::CombatActorState life;
 std::shared_ptr<dh2::data::LootTablesV2> inventory_loot_tables;
 std::shared_ptr<dh2::data::ItemAudioVisualTableV1> item_audio_visuals;
 std::shared_ptr<dh2::data::ItemPowerTablesV5> item_power_tables;
 std::shared_ptr<dh2::data::LootPowerResourcesV7> loot_power_resources;
 std::unique_ptr<dh2::data::LootPowerCreationV7> loot_power_creation;
 // Borrows OriginalUiSession's one loaded StringManager cache and this
 // Character/Item generation; later loot uses the same item text semantics.
 dh2::data::ItemTextServicesV5 item_text;
 std::unique_ptr<dh2::data::ItemPresentationOwnerV5> item_presentation;
 // Keep the presentation authority alive through V4 item retirement.
 std::unique_ptr<dh2::data::FreshInventoryOwnedV4> inventory;
 // GEAR's temporary constructor slot is borrowed by the source reader. Its
 // effects use the same retained NativeLootAdapter as the active V4 inventory.
 std::unique_ptr<dh2::data::ItemInstanceV1> saved_inventory_incoming;
 dh2::data::OwnedInventoryServicesV4 save_inventory_services{};
 std::shared_ptr<void> save_inventory_services_owner;
 std::shared_ptr<dh2::data::PlayerSavegameV1> savegame;
 std::shared_ptr<dh2::data::PlayerSaveProfileV1> save_profile;
 std::shared_ptr<const dh2::data::CharacterTable> profile_characters;
 std::shared_ptr<dh2::native::player_profile::Transport> save_transport;
 std::shared_ptr<dh2::native::quests::Owner> quests;
 std::shared_ptr<NativePlayerSaveAssociation> source_save_association;
 std::int16_t property_cache=-1,template_cache=-1;
 std::int32_t character_class=-1;
 std::int32_t player_class_id=-1;
 int animation_table=-1,target=-1;unsigned attempts=0,received=0;
 bool pending_death=false;std::uint64_t death_target=0;
 AggroStorage aggro;
 // Source Character constructor zeros +14f0. UseMana reads this separate
 // exemption byte; it is unrelated to the movement type at +53c.
 std::uint8_t mana_exempt_14f0=0;
 // ObjectBase C1/C2 source stores +110=-1 and +118=0. These live fields,
 // shared by regen/remote predicates, are not an inferred online flag.
 dh2::object_update_culling::Object object_update_fields{0,UINT32_MAX,0,0,{0,0}};
 // Source Character C1/C2 initializes marker14d0 and FX1484/148c/14a0
 // to0. These are the actual retained Character fields, not fake providers.
 dh2::character::set_target::OwnerFacts target_owner{};
 dh2::player_ai_death_v1::DeadFields dead_fields{};
 std::uintptr_t self_fx_1484=0,state_fx_148c=0,highlight_fx_14a0=0;
};
PlayerCombat prince_combat;
std::int32_t requested_player_class=-1;
std::int32_t menu_gameplay_slot=-1;
struct PendingMenuStart {std::int32_t slot=-1;bool has_numeric_difficulty=false;std::int32_t requested_difficulty=0;bool valid=false;};
struct RuntimeLevelAssets {
 std::int32_t row=-1;std::string name="GOTHICUS_CRYPT_01",level_file="007_crypt_01.rule.xml";
 std::string descriptor="crypt01.dwld",bres="crypt.bdae",spawns="crypt01.spwn",objects="crypt01.dact";
 float camera_near_clip=0.0f,camera_far_clip=0.0f;
 // Source LevelConfig projection + authored idle rig and bounded per-frame
 // CameraLevel/CameraTarget follow/zoom composition; animation/input providers
 // remain separate.
 bool source_player_camera_enabled=false;
 // Application::LoadLevel's chosen local seed is distinct from Random's
 // process-global GSInit state and seeds a fresh RandomGenerator per level.
 std::uint32_t source_load_seed=0,source_load_synchronized_seed=0;
 bool development_layout=true;
 bool generated_crypt_layout=false;
 std::string generated_crypt_source_xml;
 std::vector<dh2::random_level::CryptGeneratedModuleSummaryV1> generated_crypt_modules;
 std::shared_ptr<dh2::world::source_handle_ledger_v1::Ledger>
     generated_crypt_handle_ledger;
 std::shared_ptr<dh2::random_level::CryptRuleDocumentV1> crypt_rules;
 std::shared_ptr<dh2::random_level::CryptModuleAssetBytesV1> crypt_asset_bytes;
 std::shared_ptr<dh2::random_level::CryptModuleCatalogueV1> crypt_catalogue;
};
struct GeneratedWorldPayload {
 std::vector<std::uint8_t> dwld_v1;
 std::vector<std::uint8_t> spwn_v1;
};
PendingMenuStart pending_menu_start;
std::optional<dh2::data::NativeStartGamePlanV1> active_native_start_plan;
RuntimeLevelAssets active_level_assets;
// MenuMainMenu's preview selection is separate from PlayerInfo::saveSlot664.
// The original Character/plane producer has not been reconstructed here.
struct MenuPreviewSelection {std::int32_t slot=-1;std::uintptr_t character=0,plane=0;} menu_preview_selection;
SearchObjectProjection prince_search_projection{};
struct NativeMonsterInitialization;
struct NativeCharAIProjection {
 std::uintptr_t character_identity=0,ai_identity=0;
 dh2::character_ai_initialization::State state{};
 dh2::character_ai_initialization::Result constructor_result{};
 // Full-width form of constructor-initialized GroupInfo+34. Native group
 // production is still unbound; nonnull death dispatch fails explicitly.
 std::uintptr_t group_identity=0;
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

std::int32_t NativeCryptRoomRuntime::initialize_zone_position(
        void*,const dh2::module_room_zone_bounds::Request* request) {
 if(!request||request->operation!=dh2::module_room_zone_bounds::Operation::set_position||
    !request->room_zone||!request->update_position)return 1;
 // The selected native renderer has no native Zone allocation. The portable
 // RoomZone owner applies the verified SetPosition/AABB field composition.
 return 0;
}

std::int32_t NativeCryptRoomRuntime::enroll_service(
        void* context,const dh2::room_zone_enrollment::Request* request,
        std::uint32_t* value) {
 auto* self=static_cast<NativeCryptRoomRuntime*>(context);
 if(!self||!request||!value)return 1;
 if(request->object==self->player_identity&&
    request->operation==dh2::room_zone_enrollment::Operation::is_zonable) {
  *value=0; // Character::IsZonable rejects Player before reading position.
  return 0;
 }
 const auto found=self->actors.find(request->object);
 if(found==self->actors.end()||!found->second)return 1;
 auto& actor=*found->second;
 switch(request->operation) {
 case dh2::room_zone_enrollment::Operation::is_zonable:
  try {*value=native_actor_zonability(actor);return 0;}catch(...){return 1;}
 case dh2::room_zone_enrollment::Operation::remove_from_room:
 case dh2::room_zone_enrollment::Operation::append_to_room:
  // The RoomZone owner wraps this callback and commits the member-node change
  // only after it succeeds, preserving the source callback/list order.
  return request->room_zone?0:1;
 case dh2::room_zone_enrollment::Operation::sync_visibility:
  if(request->auxiliary!=actor.visual_object_2d8)return 1;
  try {
   const bool zonable=native_actor_zonability(actor);
   actor.renderer_visible=actor.visible_80!=0&&
       !(zonable&&actor.zoning_enabled_2ee&&actor.in_zone_2f0==0);
  } catch(...) { return 1; }
  return 0;
 case dh2::room_zone_enrollment::Operation::zone_state_callback:
  actor.source_updates_enabled=request->value!=0;
  return 0;
 }
 return 1;
}

std::int32_t NativeCryptRoomRuntime::transition_service(
        void* context,const dh2::crypt_room_zone_owner_v1::TransitionRequest* request,
        std::uint32_t* value) {
 auto* self=static_cast<NativeCryptRoomRuntime*>(context);
 if(!self||!request||!request->room_zone)return 1;
 using Operation=dh2::crypt_room_zone_owner_v1::TransitionOperation;
 if(request->operation==Operation::query_module_visited||
    request->operation==Operation::set_module_visited) {
  if(!self->module_owner)return 1;
  auto found=std::find_if(self->module_owner->modules.begin(),
      self->module_owner->modules.end(),[&](const auto& module){
       return module.module_index==request->module_index;
      });
  if(found==self->module_owner->modules.end())return 1;
  if(request->operation==Operation::query_module_visited) {
   if(!value)return 1;
   *value=found->visited;return 0;
  }
  found->visited=1;return 0;
 }
 if(request->operation==Operation::zone_entered||
    request->operation==Operation::zone_exited) {
  const auto found=self->manager.find_by_identity(request->actor);
  if(!found)return 1;
  auto object=found->enrollment_view();
  const dh2::room_zone_enrollment::Services services{
      self,&NativeCryptRoomRuntime::enroll_service};
  dh2::room_zone_enrollment::Result result{};
  const auto status=request->operation==Operation::zone_entered
      ?dh2::room_zone_enrollment::zone_entered(&object,&services,&result)
      :dh2::room_zone_enrollment::zone_exited(&object,&services,&result);
  return status==dh2::room_zone_enrollment::Status::complete?0:1;
 }
 if(request->actor)return 1;
 bool changed=false;
 if(request->operation==Operation::add_room_object) {
  return self->manager.add_room_object(request->room_zone,&changed)==
             dh2::object_manager_runtime_owner_v1::Status::ok&&changed?0:1;
 }
 if(request->operation==Operation::remove_room_object) {
  return self->manager.remove_room_object(request->room_zone,&changed)==
             dh2::object_manager_runtime_owner_v1::Status::ok?0:1;
 }
 return 1;
}

bool NativeCryptRoomRuntime::update_frustum(
        const std::array<float,3>& player_position) {
 std::uint32_t planes[6][4]{};
 for(unsigned plane=0;plane<6;++plane)
  for(unsigned component=0;component<4;++component)
   planes[plane][component]=source_camera.frustum.planes[plane][component];
 const dh2::crypt_room_zone_owner_v1::UpdateServices services{
     this,&NativeCryptRoomRuntime::transition_service};
 dh2::crypt_room_zone_owner_v1::UpdateResult result{};
 const auto status=zones.update_frustum(planes,player_position.data(),&services,&result);
 if(status!=dh2::crypt_room_zone_owner_v1::Status::complete) {
  __android_log_print(ANDROID_LOG_ERROR,"DH2Native",
      "Crypt RoomZone frustum update failed | status %s | module %u | operation %u",
      dh2::crypt_room_zone_owner_v1::status_name(status),result.failed_module_index,
      unsigned(result.failed_operation));
  return false;
 }
 manager.reset_visible_room_zone_count();
 for(std::uint32_t i=0;i<result.zones_visible;++i)manager.add_visible_room_zone();
 return true;
}

bool NativeCryptRoomRuntime::initialize(
        dh2::crypt_module_bounds_registry_v1::Owner& module_bounds,
        const std::vector<ObjectActor*>& ordered_actors,Address player,
        const dh2::world::source_handle_ledger_v1::Ledger* source_ledger,
        std::string& error) {
 error.clear();
 if(module_bounds.modules.empty()||!player||!source_ledger||
    source_ledger->entries.empty()||source_ledger->first_source_handle!=4||
    source_ledger->initial_top_level_handle_offset!=
        1+module_bounds.modules.size()) {
  error="Crypt RoomZone inputs are incomplete";return false;
 }
 try {
  module_owner=&module_bounds;
  player_identity=player;
  actors.reserve(ordered_actors.size());
  actor_records.reserve(ordered_actors.size());
  source_handles.reserve(ordered_actors.size()+1);
  for(auto* actor:ordered_actors) {
   if(!actor||actor->kind!=1||actor->identity==player_identity)continue;
   if(!actor->identity||actors.find(actor->identity)!=actors.end()) {
    error="Crypt RoomZone actor identity is invalid or duplicated";
    clear();return false;
   }
   if(actor->source_handle<0||actor->source_module_index>=module_bounds.modules.size()||
      actor->source_record==std::numeric_limits<std::uint32_t>::max()) {
    error="Crypt RoomZone actor lacks retained ObjectManager source provenance";
    clear();return false;
   }
   actor_records.push_back(actor);
   actor->room_zone_2f4=0;actor->in_room_list_2ef=0;
   actor->zoning_enabled_2ee=1;actor->in_zone_2f0=0;actor->visible_80=1;
   actor->visual_object_2d8=actor->identity; // opaque renderer adapter token
   actor->source_room_zone_managed=true;actor->source_updates_enabled=false;
   actor->renderer_visible=true;
   dh2::object_manager_runtime_owner_v1::GameObject projection{};
   projection.identity=actor->identity;
   projection.world_x=actor->position[0];projection.world_y=actor->position[1];
   projection.zoning_enabled_2ee=actor->zoning_enabled_2ee;
   projection.visible_80=actor->visible_80;
   projection.visual_object_2d8=actor->visual_object_2d8;
   projection.bind_live_fields({&actor->position[0],&actor->position[1],
       &actor->room_zone_2f4,&actor->in_room_list_2ef,&actor->zoning_enabled_2ee,
       &actor->in_zone_2f0,&actor->visual_object_2d8,&actor->visible_80});
   dh2::object_manager_runtime_owner_v1::GameObject* stored=nullptr;
   const auto add_status=manager.add_object(actor->source_handle,projection,&stored);
   if(add_status!=dh2::object_manager_runtime_owner_v1::Status::ok||!stored) {
    error="Crypt ObjectManager actor projection failed";clear();return false;
   }
   source_handles.push_back(actor->source_handle);
   actors.emplace(actor->identity,actor);
  }

  // PlayerManager keeps the player in ObjectManager's +0x60 map and the
  // distinct +0x88 no-room list. RoomZone's Character override rejects it.
  // MenuCharacterSelect::Show creates the preview Player as handle 3 after
  // the MainMenu flush and its LightPoint/AnimatedDecor allocations. The
  // same ObjectManager survives the traced Start Game path into Level::Load.
  constexpr auto player_handle=
      dh2::object_manager_runtime_owner_v1::SourceHandle{3};
  dh2::object_manager_runtime_owner_v1::GameObject player_projection{};
  player_projection.identity=player_identity;
  dh2::object_manager_runtime_owner_v1::GameObject* stored_player=nullptr;
  if(manager.add_object(player_handle,player_projection,&stored_player)!=
       dh2::object_manager_runtime_owner_v1::Status::ok||!stored_player) {
   error="Crypt ObjectManager player projection failed";clear();return false;
  }
  source_handles.push_back(player_handle);
  bool player_added=false;
  if(manager.register_player_no_room(player_identity,&player_added)!=
       dh2::object_manager_runtime_owner_v1::Status::ok||!player_added) {
   error="Crypt Player no-room registration failed";clear();return false;
  }

  const dh2::module_room_zone_bounds::Services position_services{
      this,&NativeCryptRoomRuntime::initialize_zone_position};
  const dh2::room_zone_enrollment::Services enrollment_services{
      this,&NativeCryptRoomRuntime::enroll_service};
  dh2::crypt_room_zone_manager_bridge_v1::Result result{};
  const auto status=dh2::crypt_room_zone_manager_bridge_v1::initialize_object_lists(
      module_bounds,zones,manager,&position_services,&enrollment_services,&result);
  if(status!=dh2::crypt_room_zone_manager_bridge_v1::Status::complete) {
   error="Crypt RoomZone ObjectManager enrollment failed: ";
   error+=dh2::crypt_room_zone_manager_bridge_v1::status_name(status);
   clear();return false;
  }
  for(const auto& item:actors)if(item.second&&item.second->in_room_list_2ef)
   ++enrolled_characters;
  __android_log_print(ANDROID_LOG_INFO,"DH2Native",
      "Crypt RoomZone initial enrollment | modules %zu | materialized Characters %zu | enrolled %u | player no-room %u | deferred MGP objects absent",
      zones.zone_count(),actors.size(),enrolled_characters,unsigned(player_added));
  return true;
 } catch(const std::exception& exception) {
  error=std::string("Crypt RoomZone runtime failed: ")+exception.what();
 } catch(...) {
  error="Crypt RoomZone runtime failed";
 }
 clear();
 return false;
}

bool NativeCryptRoomRuntime::clear() noexcept {
 for(std::size_t index=0;index<zones.zone_count();++index) {
  dh2::crypt_room_zone_owner_v1::ZoneView zone{};
  while(zones.zone_at(index,&zone)&&zone.member_count) {
   const auto identity=zone.members[0];
   const auto status=zones.forget_source_unlinked_actor(zone.module_index,identity);
   if(status!=dh2::crypt_room_zone_owner_v1::Status::complete)return false;
   const auto actor=actors.find(identity);
   if(actor!=actors.end()&&actor->second) {
    actor->second->room_zone_2f4=0;actor->second->in_room_list_2ef=0;
    actor->second->in_zone_2f0=0;actor->second->source_updates_enabled=false;
   }
  }
  if(zones.zone_at(index,&zone)) {
   bool removed=false;
   if(manager.remove_room_object(zone.identity,&removed)!=
       dh2::object_manager_runtime_owner_v1::Status::ok)return false;
  }
 }
 if(zones.clear()!=dh2::crypt_room_zone_owner_v1::Status::complete)return false;
 for(auto* actor:actor_records)if(actor) {
  actor->source_room_zone_managed=false;
  actor->room_zone_2f4=0;actor->in_room_list_2ef=0;
  actor->in_zone_2f0=0;actor->source_updates_enabled=false;
  actor->renderer_visible=true;
 }
 bool removed=false;
 if(player_identity) {
  if(manager.remove_no_room_object(player_identity,&removed)!=
       dh2::object_manager_runtime_owner_v1::Status::ok)return false;
 }
 for(const auto handle:source_handles) {
  if(manager.remove_object(handle,&removed)!=
       dh2::object_manager_runtime_owner_v1::Status::ok)return false;
 }
 actors.clear();actor_records.clear();source_handles.clear();player_identity=0;
 enrolled_characters=0;module_owner=nullptr;
 return true;
}

std::map<int,dh2::animation::Player> prince_attack_clips;
dh2::data::AnimationBank prince_animation_bank;
dh2::data::PropertyRules actor_property_rules;
// Original CharProperties::s_temp is shared process storage, borrowed by every
// skill callback. ClearProps(true) seeds it from the current Character owner.
dh2::data::PropertySheet skill_property_temp{};
dh2::data::LevelTables actor_level_tables;
dh2::data::WorldMapTables actor_world_map_tables;
dh2::data::quest_table_bindings_v1::Owner actor_quest_tables;
dh2::native::quests::Constants actor_quest_constants;
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
// Source PlayerSavegame::m_difficultyLevel starts at word0; metadata PDFL
// writes this same static global. It is separate from the Level difficulty.
std::int32_t native_save_difficulty=0;
dh2::character_level_runtime::DesignBinding native_design_binding{};
std::unique_ptr<dh2::native::debug_files::Backend> native_debug;

struct NativeHostPlayer {
 struct MetadataEntry {
  dh2::native::player_profile::Metadata owner;
  dh2::player_metadata_prepare_v1::SaveRef source{owner.save_identity(),&owner.save()};
 };
 // Storage outlives the record factory and all registered/fallback records.
 // Record+680 refers to the actual Save, not a separately copied receipt.
 std::map<std::uintptr_t,std::unique_ptr<MetadataEntry>> metadata_owners;
 std::uint64_t change_serial=0;
 // One factory/counter and full stable backing for the source manager+8
 // fallback. Registered gameplay records will borrow this same factory.
 dh2::player_info_record_v1::Factory record_factory{&change_serial,
  {nullptr,[](void*,std::size_t size,int)->void* {return std::malloc(size);},
   [](void*,void* value) {std::free(value);}}, {}, this,
  [](void* raw,std::uintptr_t identity) {return static_cast<NativeHostPlayer*>(raw)->delete_metadata(identity);}};
 dh2::player_info_record_v1::Record fallback;
 dh2::character_level_member::IntMember& level_member=fallback.at(0x310)->header;
 dh2::player_manager_host_level::PlayerInfoProjection player{};
 dh2::player_manager_host_level::PlayerRegistry registry{};
 dh2::input_manager_v1::Manager input{};
 std::unique_ptr<dh2::player_offline_registry_v1::Owner> registry_owner;
 std::uintptr_t& character_660=fallback.character_660;
 std::int32_t& member_1a0=fallback.at(0x180)->header.value;
 dh2::player_locality_v1::MatchingLocalFields matching_fields{};
 dh2::player_locality_v1::Matching matching{};
 dh2::player_locality_v1::Matching* matching_singleton=nullptr;
 std::int32_t matching_provider=1;
 std::int32_t& save_slot_664=fallback.save_slot_664;
 std::int32_t last_slot_8=-1;
 dh2::player_local_selection_v1::SavegameManager save_manager{reinterpret_cast<std::uintptr_t>(&save_manager),&last_slot_8};
 int metadata_slot=-1;
 dh2::native::player_profile::Metadata* metadata=nullptr;
 dh2::player_info_record_v1::Record* metadata_record=nullptr;
 const dh2::data::CharacterTable* metadata_characters=nullptr;
 const std::filesystem::path* metadata_directory=nullptr;
 std::int32_t* metadata_difficulty=nullptr;
 std::string metadata_error;
 // Explicit normal-name development domain of the extracted Manage path.
 // Original Debug/device-name and multiplayer GameState ownership is pending.
 std::uint8_t debug_name_11=0,game_state_name_28=0;
 std::uint8_t online=0; // Explicit offline development session; no network owner.
 NativeHostPlayer() {
   if(record_factory.construct_record(fallback)!=dh2::player_info_record_v1::Status::complete)
    throw std::runtime_error("Native full PlayerInfo fallback construction failed");
   player={reinterpret_cast<std::uintptr_t>(&player),-1,&level_member};
   registry={reinterpret_cast<std::uintptr_t>(&registry),nullptr,0,&player};
   dh2::input_manager_v1::construct_win32(input,{});
   registry_owner=std::make_unique<dh2::player_offline_registry_v1::Owner>(registry,record_factory,fallback,input);
   dh2::player_locality_v1::construct_matching_local_fields(matching_fields);
   matching={reinterpret_cast<std::uintptr_t>(&matching),&matching_fields.active_c};
   matching_singleton=&matching;
 }
 static std::int32_t read_online(void* raw,std::uint8_t* value) {
  *value=static_cast<NativeHostPlayer*>(raw)->online;return 0;
 }
 dh2::player_manager_host_level::Services services() {
   return {this,read_online,nullptr,nullptr,nullptr,nullptr,nullptr,nullptr};
 }
 dh2::player_info_record_v1::Status delete_metadata(std::uintptr_t identity) {
  const auto found=metadata_owners.find(identity);
  if(found==metadata_owners.end())return dh2::player_info_record_v1::Status::missing_provider;
  if(metadata==&found->second->owner){metadata=nullptr;metadata_record=nullptr;}
  metadata_owners.erase(found);return dh2::player_info_record_v1::Status::complete;
 }
 void select_metadata_slot(int slot) {
  if(metadata_slot==slot)return;
  // The development menu may replace a selected session before the complete
  // original PlayerManager teardown is connected. Retire its real native Save
  // through the same deleting provider before clearing the borrowed +680.
  if(metadata_record){
   auto* record=metadata_record;const auto identity=record->loading_info_680;
   if(!identity||delete_metadata(identity)!=dh2::player_info_record_v1::Status::complete)
    throw std::runtime_error("Native selected metadata retirement failed");
   record->loading_info_680=0;
  }else if(metadata){
   if(delete_metadata(metadata->save_identity())!=dh2::player_info_record_v1::Status::complete)
    throw std::runtime_error("Native preview metadata retirement failed");
  }
  metadata_slot=slot;
 }
 void load_metadata_preview(const std::filesystem::path& directory,const dh2::data::CharacterTable& characters,std::int32_t& difficulty) {
  // Retain the existing explicit profile_slot diagnostic import. It never
  // registers or associates a gameplay PlayerInfo; normal menu Start uses
  // prepare_metadata below with the actual assigned canonical record.
  if(!metadata){
   auto entry=std::make_unique<MetadataEntry>();const auto identity=entry->source.identity;
   const auto inserted=metadata_owners.emplace(identity,std::move(entry));
   if(!inserted.second)throw std::runtime_error("Native preview metadata identity already owned");
   metadata=&inserted.first->second->owner;
  }
  if(!metadata->load(metadata_slot,directory,characters,difficulty,metadata_error))
   throw std::runtime_error("Campaign metadata import failed: "+metadata_error);
 }
 void prepare_metadata(const std::filesystem::path& directory,const dh2::data::CharacterTable& characters,std::int32_t& difficulty) {
  using namespace dh2::player_metadata_prepare_v1;
  auto queries=locality_services();
  dh2::player_manager_friendly_v1::Services friendly{&queries,this,
   [](void* raw,dh2::player_manager_host_level::PlayerInfoProjection* selected,std::int32_t* value)->int {
    auto* record=static_cast<NativeHostPlayer*>(raw)->record_for(selected);if(!record)return 1;
    *value=record->internal_id_670;return 0;
   }};
  dh2::player_manager_friendly_v1::Result count{},selected{};
  if(dh2::player_manager_friendly_v1::get_num_players(&registry,&friendly,&count)!=dh2::player_manager_friendly_v1::Status::complete||count.value<1||
     dh2::player_manager_friendly_v1::get_player(&registry,&friendly,0,0,&selected)!=dh2::player_manager_friendly_v1::Status::complete)
   throw std::runtime_error("Native friendly player selection failed");
  auto* record=record_for(selected.player);
  if(!record||record->save_slot_664!=metadata_slot)throw std::runtime_error("Native metadata selected slot differs from actual PlayerInfo");
  metadata_characters=&characters;metadata_directory=&directory;metadata_difficulty=&difficulty;metadata_error.clear();
  struct Guard{NativeHostPlayer& owner;~Guard(){owner.metadata_characters=nullptr;owner.metadata_directory=nullptr;owner.metadata_difficulty=nullptr;}}guard{*this};
  Services services{};services.context=this;
  services.is_active=[](void* raw,Record* selected,std::int32_t* value)->int {
   bool active=false;const dh2::player_info_activity_v1::Services query{raw,read_online};
   if(dh2::player_info_activity_v1::player_is_active(*selected,query,&active)!=dh2::netstruct_members_v1::Status::complete)return 1;
   *value=active;return 0;
  };
  services.allocate_save=[](void* raw,std::uint32_t bytes,std::uint32_t tag,std::uintptr_t* value)->int {
   if(bytes!=0x198||tag!=0)return 1;
   auto& owner=*static_cast<NativeHostPlayer*>(raw);auto entry=std::make_unique<MetadataEntry>();
   *value=entry->source.identity;return owner.metadata_owners.emplace(*value,std::move(entry)).second?0:1;
  };
  services.construct_indexed_save=[](void* raw,std::uintptr_t identity,std::uint32_t slot,std::int32_t mask,bool skip,SaveRef** value)->int {
   auto& owner=*static_cast<NativeHostPlayer*>(raw);const auto found=owner.metadata_owners.find(identity);
   if(found==owner.metadata_owners.end()||mask!=1||skip||slot>INT32_MAX||!owner.metadata_characters||!owner.metadata_directory||!owner.metadata_difficulty)return 1;
   auto& entry=*found->second;
   if(!entry.owner.load(std::int32_t(slot),*owner.metadata_directory,*owner.metadata_characters,*owner.metadata_difficulty,owner.metadata_error))return 1;
   *value=&entry.source;return 0;
  };
  services.save_by_identity=[](void* raw,std::uintptr_t identity,SaveRef** value)->int {
   auto& owner=*static_cast<NativeHostPlayer*>(raw);const auto found=owner.metadata_owners.find(identity);
   if(found==owner.metadata_owners.end())return 1;
   *value=&found->second->source;return 0;
  };
  services.debug_name_11=[](void* raw,std::uint8_t* value)->int {*value=static_cast<NativeHostPlayer*>(raw)->debug_name_11;return 0;};
  services.game_state_name_28=[](void* raw,std::uint8_t* value)->int {*value=static_cast<NativeHostPlayer*>(raw)->game_state_name_28;return 0;};
  Runtime runtime(*record,services);Result result{};
  const auto status=runtime.prepare({},&result);
  // A later provider/setter failure retains the source +680 publication.
  // Keep that real lease reachable for explicit selected-session retirement.
  // No rollback or implicit retry is added to the source Prepare caller.
  if(record->loading_info_680){
   const auto found=metadata_owners.find(record->loading_info_680);
   if(found==metadata_owners.end())throw std::runtime_error("Native managed metadata Save owner missing");
   metadata=&found->second->owner;metadata_record=record;
  }
  if(status!=Status::complete||result.disposition!=Disposition::prepared)
   throw std::runtime_error("Native managed metadata preparation failed: "+metadata_error);
  __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native managed metadata | players %d | slot %d | published680 %u | name setters %u | class setters %u | level setters %u | Save %zu | Character660 %zu | bounded normal offline Manage path; spawn/InitPost pending",
   count.value,record->save_slot_664,result.published_save_writes,result.name_setters,result.class_setters,result.level_setters,
   std::size_t(record->loading_info_680),std::size_t(record->character_660));
 }
 dh2::player_info_record_v1::Record* record_for(dh2::player_manager_host_level::PlayerInfoProjection* selected) {
  return registry_owner->record(selected);
 }
 dh2::player_info_record_v1::Record* record_by_identity(std::uintptr_t identity) {
  if(identity==player.identity)return &fallback;
  for(unsigned i=0;i<registry.entry_count;++i)if(registry.entries[i]->identity==identity)return record_for(registry.entries[i]);
  return nullptr;
 }
 dh2::player_manager_host_level::PlayerInfoProjection* host_projection() {
  auto s=services();dh2::player_manager_host_level::PlayerInfoProjection* selected=nullptr;dh2::player_manager_host_level::Result result{};
  if(dh2::player_manager_host_level::get_player_by_internal_id(&registry,&s,0,0,&selected,&result)!=dh2::player_manager_host_level::Status::complete)
   throw std::runtime_error("Native hosting player lookup failed");
  return selected;
 }
 void register_controllers() {
  auto queries=locality_services();auto delivery=registry_owner->services(queries);
  dh2::player_offline_registration_v1::Runtime runtime(registry,delivery);dh2::player_offline_registration_v1::Result result{};
  if(runtime.check_local_controllers(&result)!=dh2::player_offline_registration_v1::Status::complete)
   throw std::runtime_error("Native offline controller registration failed");
  __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native offline registration | entries %u | added %u | controllers %u | renumber %u | counter %llu | before authored slot assignment; Character association pending",
   registry.entry_count,result.added_players,result.controllers_examined,result.renumber_calls,static_cast<unsigned long long>(change_serial));
 }
 dh2::player_locality_v1::Services locality_services() {
   using namespace dh2::player_locality_v1;
   Services out{};out.context=this;out.online=read_online;
   out.internal_id_player=[](void* raw,const Registry* registry,int id,unsigned flag,PlayerInfo** selected)->std::int32_t {
    auto& self=*static_cast<NativeHostPlayer*>(raw);if(registry!=&self.registry)return 1;
    auto services=self.services();dh2::player_manager_host_level::Result result{};
    return dh2::player_manager_host_level::get_player_by_internal_id(registry,&services,id,flag,selected,&result)==dh2::player_manager_host_level::Status::complete?0:1;
   };
   out.acquire_matching=[](void* raw,Matching** value)->std::int32_t {
    auto& self=*static_cast<NativeHostPlayer*>(raw);
    const MatchingState state{&self.matching_singleton,&self.matching_provider};MatchingResult result{};
    if(get_matching(&state,nullptr,&result)!=Status::complete||result.matching!=&self.matching)return 1;
    *value=result.matching;return 0;
   };
   out.character_660=[](void* raw,PlayerInfo* selected,std::uintptr_t* value)->std::int32_t {
    auto* record=static_cast<NativeHostPlayer*>(raw)->record_for(selected);if(!record)return 1;
    *value=record->character_660;return 0;
   };
   out.member_1a0=[](void* raw,PlayerInfo* selected,std::int32_t* value)->std::int32_t {
    auto* record=static_cast<NativeHostPlayer*>(raw)->record_for(selected);if(!record)return 1;
    *value=record->at(0x180)->header.value;return 0;
   };
   out.matching_member_id=[](void* raw,Matching* selected,std::int32_t* value)->std::int32_t {
    auto& self=*static_cast<NativeHostPlayer*>(raw);if(selected!=&self.matching)return 1;
    *value=local_member_id(self.matching_fields);return 0;
   };
   out.matching_server_member_id=[](void* raw,Matching* selected,std::int32_t* value)->std::int32_t {
    auto& self=*static_cast<NativeHostPlayer*>(raw);if(selected!=&self.matching)return 1;
    *value=local_server_member_id(self.matching_fields);return 0;
   };
   out.player_virtual_is_local=[](void* raw,PlayerInfo* selected,std::int32_t* value)->std::int32_t {
    auto& self=*static_cast<NativeHostPlayer*>(raw);if(!self.record_for(selected))return 1;
    const auto services=self.locality_services();Result result{};
    if(cnet_player_is_local(selected,&services,&result)!=Status::complete)return 1;
    *value=result.value;return 0;
   };
   // Online/NetStruct and registration services are required when reached;
   // the bounded offline query owner supplies none of those continuations.
   return out;
 }
} native_host;
// Per-call forwarding context shared by powered-loot effects and the older
// V4 inventory callbacks. It borrows the loaded UI StringManager callbacks and
// the retained presentation owner; it owns no VM, Item, inventory or RNG.
struct NativeLootAdapterV1 {
 dh2::data::ItemTextServicesV5 upstream_text;
 dh2::data::ItemPresentationOwnerV5* presentation{};

 dh2::data::ItemTextServicesV5 text_services() {
  return {this,forward_metadata,forward_text};
 }
 dh2::data::OwnedInventoryServicesV4 inventory_services() {
  return {this,invoke_inventory,observe_storage,false,after_world_pickup};
 }
 static bool pickup_is_player(void*,std::uintptr_t character,bool& result,std::string& error) {
  if(!prince_combat.inventory){error="Canonical Character inventory unavailable for pickup IsPlayer";return false;}
  auto* record=native_host.record_for(native_host.host_projection());
  result=character==prince_combat.inventory->character()&&record&&record->character_660==character;
  error.clear();return true;
 }
 static bool pickup_registered_gathering_id(void*,std::uintptr_t character,
     std::int32_t item_id,bool& result,std::string& error) {
  if(!prince_combat.inventory){
   error="Canonical Character inventory unavailable for GatherLoot list30";return false;
  }
  if(character!=prince_combat.inventory->character()){
   error="GatherLoot list30 query used a different Character inventory owner";return false;
  }
  return prince_combat.inventory->has_quest_gathering_item_id(item_id,result,error);
 }
 static bool pickup_quest_constant(void*,const char* group,const char* key,
     std::int32_t& value,std::string& error) {
  if(!group||!key||std::strcmp(group,"v2QuestObjectiveType")||std::strcmp(key,"GatherLoot")){
   error="Pickup quest requested a constant outside the recovered GatherLoot key";return false;
  }
  dh2_pycst_result result{};
  if(!actor_quest_constants.view.bytes||dh2_pycst_get(&actor_quest_constants.view,
       group,std::uint32_t(std::strlen(group)),key,std::uint32_t(std::strlen(key)),&result)||!result.found){
   error="Actual v2QuestObjectiveType.GatherLoot constant unavailable";return false;
  }
  value=result.value;error.clear();return true;
 }
 static bool after_world_pickup(void* raw,std::uintptr_t character,std::int32_t item_id,
     std::string& error) {
  // ItemInventory+0x30 is queried from this Character's canonical V4 owner.
  // IDA 0x3ffa68 confirms TransferInventoryTo checks list30 after AddItemInstance.
  // GSLevel/current-Level and its RaiseAsync owner are still not constructed.
  const dh2::character::LootPickupQuestServicesV10 services{
   raw,pickup_is_player,pickup_registered_gathering_id,nullptr,
   pickup_quest_constant,nullptr};
  return dh2::character::loot_pickup_quest_tail_v10(character,item_id,services,error);
 }
 static const dh2::data::Item* forward_metadata(void* raw,
     const dh2::data::ItemInstanceV1& item,std::string& error) {
  auto& self=*static_cast<NativeLootAdapterV1*>(raw);
  if(!self.upstream_text.metadata){error="Original Item metadata/text callback unavailable";return nullptr;}
  return self.upstream_text.metadata(self.upstream_text.context,item,error);
 }
 static bool forward_text(void* raw,dh2::data::ItemInstanceV1& item,
     const dh2::data::ItemTextRequestV5& request,
     dh2::data::ItemTextResponseV5& response,std::string& output,
     std::string& error) {
  auto& self=*static_cast<NativeLootAdapterV1*>(raw);
  if(!self.upstream_text.invoke){error="Original StringManager text callback unavailable";return false;}
  return self.upstream_text.invoke(self.upstream_text.context,item,request,response,output,error);
 }
 static bool invoke_inventory(void* raw,dh2::data::FreshInventoryOwnedV4& inventory,
     const dh2::data::OwnedInventoryRequestV4& request,
     dh2::data::OwnedInventoryResponseV4& response,std::string& error) {
  auto& self=*static_cast<NativeLootAdapterV1*>(raw);
  if(&inventory!=prince_combat.inventory.get()){error="Powered-loot callback used a different V4 inventory owner";return false;}
  using Operation=dh2::data::OwnedInventoryOperationV4;
  response={};
  switch(request.operation){
   case Operation::debug_load:
    if(!native_debug){error="Shared native DebugSwitches owner unavailable";return false;}
    if(native_debug->runtime().load(native_debug->globals(),native_debug->services())!=dh2::debug_switches::Status::complete){error="Shared native DebugSwitches load failed";return false;}
    error.clear();return true;
   case Operation::debug_query:
    if(!native_debug||!request.name){error="Shared DebugSwitches query requires its owner and key";return false;}
    {std::uint8_t value=0;if(native_debug->runtime().get_switch(request.name,native_debug->globals(),native_debug->services(),value)!=dh2::debug_switches::Status::complete){error="Shared native DebugSwitches query failed";return false;}response.value=value;error.clear();return true;}
   case Operation::current_player:
    if(request.argument==1&&request.index==0){response.value=native_save_difficulty;error.clear();return true;}
    if(request.argument!=0||request.index!=0){error="Unsupported native current-player loot query";return false;}
    {auto* record=native_host.record_for(native_host.host_projection());if(!record||!record->character_660||record->character_660!=inventory.character()){error="Native current PlayerInfo does not own the staged-loot Character";return false;}response.identity=record->character_660;error.clear();return true;}
   case Operation::player_count:
    {auto queries=native_host.locality_services();dh2::player_manager_friendly_v1::Services services{&queries,&native_host,
      [](void* context,dh2::player_manager_friendly_v1::PlayerInfo* player,std::int32_t* value)->std::int32_t {
       auto* record=static_cast<NativeHostPlayer*>(context)->record_for(player);if(!record)return 1;*value=record->internal_id_670;return 0;
      }};dh2::player_manager_friendly_v1::Result result{};
     if(dh2::player_manager_friendly_v1::get_num_players(&native_host.registry,&services,&result)!=dh2::player_manager_friendly_v1::Status::complete){error="Native PlayerManager player-count query failed";return false;}
     response.value=result.value;error.clear();return true;}
   case Operation::gold_notifications:
    // AddGold's source notification tail is an achievement-manager boundary.
    // The offline reconstruction has no achievements owner yet; preserve the
    // actual gold mutation and let the inventory/UI action finish.
    error.clear();return true;
   case Operation::update_name:
    if(!request.item){error="Item name update has no live Item";return false;}
    return dh2::data::item_update_name_v5(*request.item,self.text_services(),error);
   case Operation::update_stats:
    if(!request.item){error="Item stats update has no live Item";return false;}
    return dh2::data::item_update_stats_v5(*request.item,self.text_services(),error);
   case Operation::update_requirements:
    if(!request.item){error="Item requirements update has no live Item";return false;}
    return dh2::data::item_update_requirements_v5(*request.item,self.text_services(),error);
   case Operation::add_power:
    if(!request.item||!self.presentation||request.index>std::uint32_t(INT32_MAX)){error="Item AddPower owner, identity, or mode is invalid";return false;}
    return self.presentation->add_power(*request.item,request.argument,std::int32_t(request.index),self.text_services(),error);
   default:
    error="Unsupported required native powered-loot inventory operation";return false;
  }
 }
 static void observe_storage(void* raw,dh2::data::FreshInventoryOwnedV4& inventory,
     const dh2::data::OwnedInventoryRequestV4& request) {
  if(&inventory!=prince_combat.inventory.get())throw std::runtime_error("Item retirement used a different V4 inventory owner");
  if(request.operation!=dh2::data::OwnedInventoryOperationV4::destroy_item)return;
  auto& self=*static_cast<NativeLootAdapterV1*>(raw);
  if(!request.item||!self.presentation)throw std::runtime_error("Native Item retirement lacks its live item/presentation owner");
  std::string error;if(!self.presentation->forget(*request.item,error))
   throw std::runtime_error(error.empty()?"Native Item presentation retirement failed":error);
 }
};
// The viewport owns the bounded Level constructor fields. Its normal-difficulty
// development argument is explicit; the original GSLevel/save stack is pending.
dh2::level_construction_fields::State actor_level_fields{-1,-1,0,{0,0,0},0};
std::string actor_level_file;
bool actor_level_fields_ready=false;
std::int32_t actor_level_kill_loot_gate=0;

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
  auto* record=native_host.record_by_identity(player_identity);if(!record||offset!=0x330)return 1;
  *output=record->at(0x310)->header.value;return 0;
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
float authored_hud_direction[3]{};bool authored_hud_command_active=false,authored_hud_stop_pending=false;
dh2::native::crypt_camera_frame_v1::ForwardAnchorState prince_camera_anchor{};
dh2::camera_level_runtime_v1::Owner source_camera_level_owner{};
dh2::camera_level_runtime_v1::ZoomInput source_camera_zoom_input{};
bool source_camera_level_owner_ready=false;
std::string source_camera_level_owner_key;
dh2::camera_level_runtime_v1::Vec3 source_camera_level_root_position{};
dh2::camera_level_runtime_v1::Vec3 source_camera_level_pan_offset{};
void reset_source_camera_level_runtime(){
 source_camera_zoom_input.clear_camera();
 source_camera_level_owner=dh2::camera_level_runtime_v1::Owner{};
 source_camera_level_owner_ready=false;
 source_camera_level_owner_key.clear();
 source_camera_level_root_position={};
 source_camera_level_pan_offset={};
}
std::unique_ptr<dh2::player_camera_rig_v1::Rig> player_camera_rig;
AAssetManager* player_camera_asset_manager=nullptr;
bool player_camera_rig_load_attempted=false;
std::string player_camera_rig_asset;
float player_camera_rig_default_target_distance=0.0f;
std::chrono::steady_clock::time_point player_camera_rig_epoch;
float player_camera_input_yaw=dh2::native::crypt_camera_frame_v1::kInputYawRadians;
float player_camera_input_pitch=dh2::native::crypt_camera_frame_v1::input_pitch_radians();
dh2::character::crypt_scripts::SpawnSession crypt_spawn_script;
dh2_crypt_spawn_trigger::State crypt_trigger_state{};
dh2_zone_contact::Vec3 crypt_trigger_position{},crypt_trigger_scale{};
unsigned crypt_trigger_room=0;
unsigned movement_steps=0,blocked_steps=0;
unsigned authored_hud_command_trace_count=0,authored_hud_controller_trace_count=0,
         authored_hud_actor_trace_count=0;
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
dh2::actor_scene_retention_v1::Snapshot prince_retained_pose;
dh2::character::NativePlayerCharacterOwnerV1 prince_character;
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
 struct NativeWorldItem* world_item=nullptr;
 bool is_player=false;
 unsigned additions=0,results=0;
 explicit BodyOwner(bool player=false):is_player(player){services.context=this;services.test=test;services.contact=collision;services.velocity=velocity;}
 static unsigned test(void* a,void* b,const dh2::physical::Filter*,const dh2::physical::Filter*){
  return dh2_nav_can_collide(&static_cast<BodyOwner*>(a)->contact,&static_cast<BodyOwner*>(b)->contact)==1;
 }
 static void collision(void*,dh2::physical::ContactEvent,void*,const float*,unsigned);
 static void velocity(void* a,float* xy){
  const auto* n=static_cast<BodyOwner*>(a)->native;
  if(n&&n->body){const auto v=n->body->GetLinearVelocity();xy[0]=v.x*100.f;xy[1]=v.y*100.f;}
  else xy[0]=xy[1]=0;
 }
 void set_filter(const dh2::physical::CharacterBodyConfig& c){
  contact={1,0,1,1,{std::int16_t(c.shape.group_index),std::uint16_t(c.shape.category_bits),std::uint16_t(c.shape.mask_bits),1},{}};
 }
};
struct NativeWorldItem {
 dh2::data::ItemInstanceV1* item=nullptr;
 std::int32_t audio_visual_id=-1;
 unsigned visual_root=UINT32_MAX;
 std::array<float,3> position{};
 dh2::physical::NativeBody body{};
 BodyOwner body_owner;
 std::uint32_t player_pickup_lock_ms=0;
 bool pending_interact=false;
 explicit NativeWorldItem(dh2::data::ItemInstanceV1* value):item(value){body_owner.native=&body;body_owner.world_item=this;}
};
BodyOwner prince_body_owner{true};
std::vector<std::unique_ptr<NativeWorldItem>> native_world_items;
dh2::objects::Resource itemdrops_resource;
std::vector<Draw> itemdrops_draws;
std::map<std::string,unsigned> itemdrop_roots;
bool itemdrops_ready=false;
void destroy_native_world_item_bodies();
void clear_native_world_item_resources();
bool drop_actor_loot(ObjectActor&,std::uint64_t killer_identity,std::string&);
bool ensure_native_world_items(std::string&);
void update_native_world_items_after_step(std::uint32_t);
void BodyOwner::collision(void* raw,dh2::physical::ContactEvent event,void* other,
                          const float*,unsigned) {
 auto& owner=*static_cast<BodyOwner*>(raw);
 owner.additions+=event==dh2::physical::ContactEvent::add;
 owner.results+=event==dh2::physical::ContactEvent::result;
 if((event!=dh2::physical::ContactEvent::add&&
     event!=dh2::physical::ContactEvent::persist)||!owner.world_item||!other)return;
 const auto& peer=*static_cast<BodyOwner*>(other);
 if(peer.is_player&&!owner.world_item->player_pickup_lock_ms&&
    !prince_combat.life.dead&&
    (prince_state.current==4||prince_state.current==19))
  owner.world_item->pending_interact=true;
}
void destroy_native_world_item_bodies() {
 for(auto& value:native_world_items){
  if(value->body.body){
   const auto point=value->body.body->GetPosition();
   value->position[0]=point.x*100.f;value->position[1]=point.y*100.f;
   if(actor_world.backend())actor_world.destroy(value->body.body);else value->body.body=nullptr;
  }
  value->body={};value->body_owner.native=&value->body;
 }
}
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
 // Stable offline ObjectBase fields used by Character::IsRemotelyUpdated.
 // ObjectBase C1/C2 establish +0x110=-1 and +0x118=0; online mutation is
 // deliberately unsupported by this native actor owner.
 dh2::object_update_culling::Object remote_object{};
 dh2::character::CharacterControlServices16 control_services{};
 dh2::physical::CharacterOwnerBounds owner_bounds{};
 float visual_scale[3]{1,1,1};
 int sampled_clip=-1;
 bool runtime_ready=false;
 unsigned body_creations=0;
 unsigned idle_updates=0;
 bool source_enabled=true,source_visible=true;
 explicit SpawnOwner(std::uint64_t id):character(id) {
  body_owner.native=&body;
  remote_object={std::uintptr_t(id),UINT32_MAX,0,0,{0,0}};
 }
 static void service(void*,dh2::character::State*,const dh2::character::Request*);
 static int controller_service(void*,const dh2::character::CharacterControlRequest32*,
                               dh2::character::CharacterControlResponse16*);
 void initialize_runtime(const ObjectGroup&,const dh2::physical::CharacterOwnerBounds&,
                         const float* scale);
 void register_runtime_object();
 void update_runtime(const dh2::objects::Resource&,const dh2::animation::Player&,
                     int animation_ms,unsigned dt_ms,unsigned frame);
 int request_path(const float* target);
 static int find_path(void*,const dh2::character::PathToRequest32*,std::uint32_t*);
 void bind(ObjectActor& owner,int table) {
  if(!owner.identity||remote_object.identity!=owner.identity||
     remote_object.remote_word_110!=UINT32_MAX||remote_object.remote_byte_118!=0)
   throw std::runtime_error("Ghost offline ObjectBase remote projection differs");
  actor=&owner;animation_table=table;
  control_services={this,controller_service};
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
 destroy_native_world_item_bodies();
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
 construct(prince_character.identity(),0x300000001ull,&prince_source_ai);
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
 NativeMonsterInitialization(){lifecycle.timer33=lifecycle.timer34=-1;}
 void retire_timers() noexcept {
  if(!owner)return;
  for(auto* timer:{&lifecycle.timer33,&lifecycle.timer34})if(*timer>=0){
   const auto id=*timer;const auto status=owner->character.stop_timer(std::uint32_t(id));
   __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native Ghost timer retired before VM close | event %x | slot %d | status %d",timer==&lifecycle.timer33?0x33:0x34,id,status);
   if(status>=0)*timer=-1;
  }
 }
 ~NativeMonsterInitialization(){retire_timers();}
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
 static std::int32_t get_state(void* raw,std::uintptr_t id,std::int32_t* output) {
  if(!raw)return 1;
  auto& s=self(raw);if(!s.subject(id)||s.owner->character.owner()!=id)return 1;
  const dh2::native::ghost_script_queries::Binding binding{
   s.owner->character.owner(),&s.owner->character.state.current,&s.owner->runtime.path.count};
  return std::int32_t(dh2::native::ghost_script_queries::get_state(&binding,id,output));
 }
 static std::int32_t has_path(void* raw,std::uintptr_t id,std::uint32_t* output) {
  if(!raw)return 1;
  auto& s=self(raw);if(!s.subject(id)||s.owner->character.owner()!=id)return 1;
  const dh2::native::ghost_script_queries::Binding binding{
   s.owner->character.owner(),&s.owner->character.state.current,&s.owner->runtime.path.count};
  return std::int32_t(dh2::native::ghost_script_queries::has_path(&binding,id,output));
 }
 // Script movement commands remain unbound until genuine actor AI services bind.
 static std::int32_t unbound_command(void*,std::uintptr_t,std::uintptr_t) {return 1;}
 dh2::monster_external_script::Services script_services() {
  return {this,ai->character_identity,structure,property,constant,has_target,get_target,get_state,has_path,
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
    if(timer<0)throw std::runtime_error("Native AI timer allocation failed");
    // CharAI::OnInit stores the returned Character timer IDs in CharAI+0x10
    // (AI_Tick / event 0x33) and +0x14 (DoT_Tick / event 0x34). AI_SetDead
    // stops these exact fields before it clears them, so keep this projection
    // on the same timer owner as ScriptLifecycleState64 and SpawnOwner.
    if(request->argument1==0x33)s.ai->state.word_10=std::uint32_t(timer);
    else if(request->argument1==0x34)s.ai->state.word_14=std::uint32_t(timer);
    else throw std::runtime_error("Native AI timer event has no CharAI field mapping");
    reply->word=std::uint32_t(timer);++s.timers_started;break;
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
  if(lifecycle.timer33<0||lifecycle.timer34<0||
     ai->state.word_10!=std::uint32_t(lifecycle.timer33)||
     ai->state.word_14!=std::uint32_t(lifecycle.timer34))
   throw std::runtime_error("Native Ghost CharAI timer fields do not reference the source timer owner");
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
   script.retire_timers();
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
int SpawnOwner::controller_service(void* context,
        const dh2::character::CharacterControlRequest32* request,
        dh2::character::CharacterControlResponse16* response) {
 using namespace dh2::character;
 if(!context||!request||!response)return -1;
 auto& owner=*static_cast<SpawnOwner*>(context);
 *response={};
 // This is the exact native offline constructor projection. Network packet
 // loading and online Character::Update can change these source fields, so
 // refuse the query if this app ever exposes an online owner.
 if(!owner.actor||request->service!=control_is_remotely_updated||
    request->argument||request->reserved||request->subject!=owner.actor->identity||
    owner.remote_object.identity!=owner.actor->identity||native_host.online!=0)
  return -1;
 dh2::object_update_culling::RemoteResult remote{};
 if(dh2::object_update_culling::is_remotely_updated(&owner.remote_object,&remote)!=
    dh2::object_update_culling::Status::complete)return -1;
 response->word=remote.raw;
 return 1;
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
 // Preserve the actor's canonical source zoning bytes. +0x2ef/+0x2f4 are
 // initial RoomZone membership; +0x2f0 is the separate active/update state.
 object.character_2ee=actor.zoning_enabled_2ee;
 object.character_2f0=actor.in_zone_2f0;
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
  object.identity=prince_character.identity();
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

std::vector<ObjectActor*> ordered_world_actors() {
 std::vector<ObjectActor*> actors(world_objects.size(),nullptr);
 for(auto& group:object_groups)for(auto& actor:group.instances) {
  if(actor.identity<0x100000002ull)continue;
  const auto index=std::size_t(actor.identity-0x100000002ull);
  if(index>=actors.size()||actors[index])
   throw std::runtime_error("Native actor identity order differs from the DACT records");
  actors[index]=&actor;
 }
 return actors;
}

void initialize_active_crypt_room_zones() {
 if(active_crypt_module_bounds.modules.empty())return;
 auto ordered=ordered_world_actors();
 std::vector<ObjectActor*> direct_characters;
 direct_characters.reserve(ordered.size());
 for(std::size_t i=0;i<ordered.size();++i) {
  if(!ordered[i]||world_objects[i].room>=level.rooms)
   throw std::runtime_error("Crypt RoomZone DACT order differs from the loaded world");
  if(ordered[i]->kind==1)direct_characters.push_back(ordered[i]);
 }
 auto candidate=std::make_unique<NativeCryptRoomRuntime>();
 std::string error;
 if(!candidate->initialize(active_crypt_module_bounds,direct_characters,
                           prince_character.identity(),
                           active_level_assets.generated_crypt_handle_ledger.get(),
                           error))
  throw std::runtime_error(error.empty()?"Crypt RoomZone initialization failed":error);
 active_crypt_room_runtime=std::move(candidate);
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
 auto actors=ordered_world_actors();
 // A distinct owned flat Character list supplies the actual aggro iterator
 // shape. This native enrollment follows created Character projections;
 // complete ObjectManager name/map/factory registration remains separate.
 sync_prince_search_projection();
 bool appended=false;
 if(native_characters.enroll_after_add(&prince_search_projection.character,false,&appended)!=
      dh2::native::character_list::Owner::Status::ok || !appended)
  throw std::runtime_error("Native player Character-list enrollment failed");
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
GLint position,texcoord,color,mvp,texture_matrix,material_color,has_alpha,alpha_ref,original_alpha_blue;
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
uniform float has_alpha;uniform float alpha_ref;uniform float original_alpha_blue;uniform vec4 material_color;varying vec2 uv;varying vec4 tint;
void main(){vec4 c=texture2D(diffuse,uv)*tint*material_color;
if(has_alpha>0.5){if(original_alpha_blue>0.5)c.a=texture2D(alpha_map,uv).b;else c.a*=texture2D(alpha_map,uv).r;}if(c.a<=max(alpha_ref,0.0039))discard;gl_FragColor=c;})";
  GLuint v=shader(GL_VERTEX_SHADER,vs),f=0;
  try{f=shader(GL_FRAGMENT_SHADER,fs);}catch(...){glDeleteShader(v);throw;}
  program=glCreateProgram();glAttachShader(program,v);glAttachShader(program,f);glLinkProgram(program);glDeleteShader(v);glDeleteShader(f);
  GLint ok=0;glGetProgramiv(program,GL_LINK_STATUS,&ok);if(!ok){char log[2048]{};glGetProgramInfoLog(program,sizeof(log),nullptr,log);glDeleteProgram(program);program=0;throw std::runtime_error(log);}
  position=glGetAttribLocation(program,"position");texcoord=glGetAttribLocation(program,"texcoord");color=glGetAttribLocation(program,"color");
  mvp=glGetUniformLocation(program,"mvp");texture_matrix=glGetUniformLocation(program,"texture_matrix");material_color=glGetUniformLocation(program,"material_color");
  has_alpha=glGetUniformLocation(program,"has_alpha");alpha_ref=glGetUniformLocation(program,"alpha_ref");
  original_alpha_blue=glGetUniformLocation(program,"original_alpha_blue");
}
void release(std::vector<Draw>& batches,std::vector<GLuint>& textures){
  for(auto& b:batches){if(b.vertices)glDeleteBuffers(1,&b.vertices);if(b.indices)glDeleteBuffers(1,&b.indices);}
  for(auto t:textures)glDeleteTextures(1,&t);batches.clear();textures.clear();
}
void release_objects(std::vector<ObjectGroup>& groups){std::vector<GLuint> none;for(auto& group:groups)release(group.draws,none);groups.clear();}
void clear_native_world_item_resources(){
 std::vector<GLuint> shared_textures;release(itemdrops_draws,shared_textures);
 itemdrops_resource={};itemdrop_roots.clear();itemdrops_ready=false;
}
std::vector<std::uint8_t> read(AAssetManager* assets,const std::string& name,const std::string& folder="textures"){
  auto path=name;
  if(folder=="textures")std::transform(path.begin(),path.end(),path.begin(),[](unsigned char c){return char(std::tolower(c));});
  const auto relative=folder.empty()?path:folder+"/"+path;
  std::vector<std::uint8_t> override_bytes;std::string mod_error;
  const auto override_status=dh2::mods::read(mod_root,relative,override_bytes,mod_error);
  if(override_status==dh2::mods::Lookup::rejected)throw std::runtime_error(mod_error);
  if(override_status==dh2::mods::Lookup::loaded){__android_log_print(ANDROID_LOG_INFO,"DH2Native","Mod asset loaded | %s | bytes %zu",relative.c_str(),override_bytes.size());return override_bytes;}
  auto* a=AAssetManager_open(assets,relative.c_str(),AASSET_MODE_BUFFER);
  if(!a&&folder=="actors"&&path.rfind("data/3d/",0)==0){
    const auto original_relative="original-cache/"+path;
    a=AAssetManager_open(assets,original_relative.c_str(),AASSET_MODE_BUFFER);
    if(a)__android_log_print(ANDROID_LOG_INFO,"DH2Native","Original-cache actor resource | %s",path.c_str());
  }
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
  prince_combat.savegame=std::make_shared<dh2::data::PlayerSavegameV1>();
  prince_combat.savegame->set_character(prince_source_ai->character_identity);
 }
 if(!prince_combat.savegame->skills_initialized()){
  const auto& saved=prince_combat.savegame;
  auto view=dh2::data::property_view(actor_property_rules,prince_combat.properties);
  std::int32_t selector=0;std::string error;
  if(dh2_property_resolve(&view,28,&selector)||!saved->initialize_skills(actor_skill_catalogue->tables->skills(),selector,error))
   throw std::runtime_error("Native Player saved-skill initialization: "+error);
  saved->initialize_faeries();
 }
 dh2::native::player_skills::Bindings b{};
 b.character=prince_source_ai->character_identity;b.ai=prince_source_ai->ai_identity;
 b.ai_lifetime=prince_source_ai;b.tables=actor_skill_catalogue->tables;b.catalogue_lifetime=actor_skill_catalogue;
 b.source_ai=&prince_source_ai->state;b.declaration=dh2::data::ai_props(actor_ai_tables,prince_combat.properties.resolved[1]);
 prince_combat.target_owner.identity=b.character;
 prince_combat.target_owner.character_ai_id=prince_combat.properties.resolved[1];
 b.target_owner=&prince_combat.target_owner;b.dead_fields=&prince_combat.dead_fields;
 b.group_identity=&prince_source_ai->group_identity;
 b.ai_tables=&actor_ai_tables;b.animation_tables=&actor_animation_tables;
 b.self_fx=&prince_combat.self_fx_1484;b.state_fx=&prince_combat.state_fx_148c;b.highlight_fx=&prince_combat.highlight_fx_14a0;
 b.is_player=[](void*,std::uintptr_t identity,std::uint32_t* out,std::string& error)->int {
  using namespace dh2::character_ai_classification;
  if(identity!=prince_character.owner()||!out){error="Character cleanup classification identity differs";return 1;}
  // The retained authored Player row has type1. Source IsPlayer takes that
  // branch without needing the unbound type0 Character name producer.
  State state{identity,prince_combat.properties.resolved[1],prince_combat.properties.resolved[0],nullptr,std::uint8_t(prince_combat.life.dead)};
  const Services services{nullptr,native_classification_service};Result result{};
  if(query(Query::player,&state,&services,&result)!=Status::complete){error="Character cleanup source IsPlayer failed";return 1;}
  *out=result.word;return 0;
 };
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
struct PlayerEquipmentNativeV1 {
 struct PartIdentity {
  std::shared_ptr<const void> retention;
  const dh2::skinning::VisualGeometryV6* geometry{};
  const std::vector<dh2::scene::Material>* material_table{};
  const std::vector<std::uint32_t>* materials{};
  std::int32_t category{-1},module{-1},weapon_slot{};
  std::uint64_t pose_revision{};
 };
 AAssetManager* assets{};
 dh2::skinning::VisualSkinResourcesV6 resources;
 std::unique_ptr<dh2::skinning::VisualSkinOwnerV6> visual;
 dh2::data::PropertyView properties{};
 std::uintptr_t visual_identity{};
 NativeLootAdapterV1 inventory_adapter{};
 dh2::data::EquipmentLiveHooksV1 hooks{};
 std::unique_ptr<dh2::data::PlayerEquipmentLiveServicesV1> services;
 dh2::data::OwnedInventoryServicesV4 live_services{};
 std::vector<PartIdentity> parts;
 std::vector<std::size_t> draw_part;

 static dh2::skinning::VisualAssetResultV6 read_weapon(
     void* raw,const char* uri,std::vector<std::uint8_t>& bytes,std::string& error){
  auto& self=*static_cast<PlayerEquipmentNativeV1*>(raw);
  if(!self.assets||!uri){error="Live equipment asset request is incomplete";return dh2::skinning::VisualAssetResultV6::failed;}
  try{bytes=read(self.assets,uri,"actors");error.clear();return dh2::skinning::VisualAssetResultV6::found;}
  catch(const std::exception& x){
   const std::string message=x.what();
   if(message.rfind("Bundled asset missing: actors/",0)==0){error.clear();return dh2::skinning::VisualAssetResultV6::missing;}
   error=message;return dh2::skinning::VisualAssetResultV6::failed;
  }
 }
 static bool validate_binding(void* raw,dh2::data::FreshInventoryOwnedV4& inventory,
     dh2::data::PropertyView& view,std::string& error){
  auto& self=*static_cast<PlayerEquipmentNativeV1*>(raw);
  if(!world_mode||&inventory!=prince_combat.inventory.get()||
     &view!=&self.properties||!self.visual||
     self.visual_identity!=self.visual->identity()){
   error="Equipment action is detached from the live Player, Scene, or V6 renderer";return false;
  }
  const std::vector<dh2::skinning::VisualDrawViewV32>* views{};
  if(!self.visual->draw_views(views,error)||!views)return false;
  error.clear();return true;
 }
 static bool world_query(void* raw,dh2::data::EquipmentWorldQueryV1 query,
     std::uintptr_t character,std::uintptr_t& identity,std::int32_t& value,
     std::string& error){
  auto& self=*static_cast<PlayerEquipmentNativeV1*>(raw);identity=0;value=0;
  if(!prince_combat.inventory||character!=prince_combat.inventory->character()){
   error="Equipment world query crossed the canonical Player Character";return false;
  }
  using Q=dh2::data::EquipmentWorldQueryV1;
  switch(query){
   case Q::online:value=native_host.online?1:0;error.clear();return true;
   case Q::remotely_updated:
    if(native_host.online){error="Remote equipment ownership is not implemented by the offline host";return false;}
    value=0;error.clear();return true;
   case Q::current_player:{
    dh2::data::OwnedInventoryResponseV4 response{};
    const dh2::data::OwnedInventoryRequestV4 request{
      dh2::data::OwnedInventoryOperationV4::current_player,0x31f594,nullptr,nullptr,0,0};
    if(!NativeLootAdapterV1::invoke_inventory(&self.inventory_adapter,*prince_combat.inventory,
                                               request,response,error))return false;
    identity=response.identity;error.clear();return true;
   }
   case Q::current_difficulty:{
    dh2::data::OwnedInventoryResponseV4 response{};
    const dh2::data::OwnedInventoryRequestV4 request{
      dh2::data::OwnedInventoryOperationV4::current_player,0x31f594,nullptr,nullptr,1,0};
    if(!NativeLootAdapterV1::invoke_inventory(&self.inventory_adapter,*prince_combat.inventory,
                                               request,response,error))return false;
    value=response.value;error.clear();return true;
   }
   case Q::player_count:{
    dh2::data::OwnedInventoryResponseV4 response{};
    const dh2::data::OwnedInventoryRequestV4 request{
      dh2::data::OwnedInventoryOperationV4::player_count,0x4043a8,nullptr,nullptr,0,0};
    if(!NativeLootAdapterV1::invoke_inventory(&self.inventory_adapter,*prince_combat.inventory,
                                               request,response,error))return false;
    value=response.value;error.clear();return true;
   }
   case Q::online_player_record:
    error="Online PlayerInfo record lookup is outside the offline equipment owner";return false;
  }
  error="Unknown source equipment world query";return false;
 }
 static bool debug_gear(void* raw,dh2::data::FreshInventoryOwnedV4& inventory,
     const dh2::data::GearSkinRequestV5& request,std::int32_t& result,
     std::string& error){
  auto& self=*static_cast<PlayerEquipmentNativeV1*>(raw);
  if(&inventory!=prince_combat.inventory.get()){
   error="V6 gear Debug callback used a different V4 inventory";return false;
  }
  using G=dh2::data::GearSkinOperationV5;using O=dh2::data::OwnedInventoryOperationV4;
  O operation;
  if(request.operation==G::debug_load)operation=O::debug_load;
  else if(request.operation==G::debug_query)operation=O::debug_query;
  else{error="V6 gear Debug adapter received a non-Debug operation";return false;}
  dh2::data::OwnedInventoryResponseV4 response{};
  const dh2::data::OwnedInventoryRequestV4 native_request{
      operation,request.operation==G::debug_load?0x337888u:0x337a88u,
      nullptr,request.name,0,0};
  if(!NativeLootAdapterV1::invoke_inventory(&self.inventory_adapter,inventory,
                                             native_request,response,error))return false;
  result=response.value;error.clear();return true;
 }
 static int initial_equipment_backend(void* raw,
     const dh2::player_initial_equipment_v1::Request* request,
     dh2::player_initial_equipment_v1::Reply* reply,std::string& error){
  auto& self=*static_cast<PlayerEquipmentNativeV1*>(raw);
  using Operation=dh2::player_initial_equipment_v1::Operation;
  if(!request||!reply||!prince_combat.inventory||
     request->character!=prince_combat.inventory->character()||
     request->inventory!=prince_combat.inventory.get()||
     request->equipment_services!=&self.live_services){
   error="Initial equipment request is detached from the live Character/V4/equipment owners";return 1;
  }
  *reply={};
  if(request->operation==Operation::online){reply->word=native_host.online?1u:0u;error.clear();return 0;}
  if(request->operation==Operation::online_player_record){
   error="Online InitEquipment requires the unavailable live PlayerInfo record provider";return 1;
  }
  if(request->operation!=Operation::add_loot){error="Unknown source InitEquipment operation";return 1;}
  if(!prince_combat.loot_power_creation||!prince_combat.item_power_tables||
     !prince_combat.item_presentation||!prince_combat.inventory_loot_tables){
   error="Initial equipment requires retained source loot, item power, presentation, and inventory owners";return 1;
  }
  if(request->arguments[1]!=0||request->arguments[2]!=0||
     request->arguments[3]!=-1||request->arguments[4]!=0){
   error="Initial equipment AddLoot arguments differ from Character::_InitEquipment";return 1;
  }
  auto inventory_services=self.inventory_adapter.inventory_services();
  dh2::data::OwnedInventoryResponseV4 response{};
  const dh2::data::OwnedInventoryRequestV4 count_request{
   dh2::data::OwnedInventoryOperationV4::player_count,0x4043a8,nullptr,nullptr,0,0};
  if(!NativeLootAdapterV1::invoke_inventory(&self.inventory_adapter,
      *prince_combat.inventory,count_request,response,error))return 1;
  if(response.value!=1){error="Initial equipment requires the recovered single-player class-count projection";return 1;}
  dh2::data::LootEntrySelectionContextV1 selection{};
  if(!prince_combat.profile_characters||prince_combat.character_class<0||
     std::size_t(prince_combat.character_class)>=prince_combat.profile_characters->names.size()){
   error="Initial equipment has no retained Character row for class-count selection";return 1;
  }
  const auto& source_class_name=prince_combat.profile_characters->names[std::size_t(prince_combat.character_class)];
  if(source_class_name=="KnightPlayerBase")selection.player_counts.warrior=1;
  else if(source_class_name=="RoguePlayerBase")selection.player_counts.rogue=1;
  else if(source_class_name=="MagePlayerBase")selection.player_counts.mage=1;
  else{error="Initial equipment has no source class-count mapping for "+source_class_name;return 1;}
  const dh2::data::OwnedInventoryRequestV4 debug_load{
   dh2::data::OwnedInventoryOperationV4::debug_load,0x337888,nullptr,nullptr,0,0};
  if(!NativeLootAdapterV1::invoke_inventory(&self.inventory_adapter,
      *prince_combat.inventory,debug_load,response,error))return 1;
  const dh2::data::OwnedInventoryRequestV4 infinite_loot{
   dh2::data::OwnedInventoryOperationV4::debug_query,0x337a88,nullptr,"InfiniteLootDrops",0,0};
  if(!NativeLootAdapterV1::invoke_inventory(&self.inventory_adapter,
      *prince_combat.inventory,infinite_loot,response,error))return 1;
  selection.infinite_loot_drops=response.value!=0;
  std::unique_ptr<dh2::data::ItemInstanceV1> pending;
  const dh2::data::ItemTextServicesV5 text=self.inventory_adapter.text_services();
  const dh2::data::player_add_loot_v1::Bindings add_bindings{
   request->character,prince_combat.inventory.get(),
   prince_combat.properties.resolved.data()+9,&selection,native_save_difficulty,
   {&pending},&inventory_services,prince_combat.loot_power_creation.get(),
   prince_combat.item_power_tables->borrow(),text};
  const dh2::data::player_add_loot_v1::Request add_request{
   request->character,{request->arguments[0],request->arguments[1],
    request->arguments[2],request->arguments[3],request->arguments[4]}};
  dh2::data::player_add_loot_v1::Result add_result{};
  const auto status=dh2::data::player_add_loot_v1::invoke(
      add_bindings,add_request,&add_result,error);
  if(status!=dh2::data::player_add_loot_v1::Status::complete||pending){
   if(pending){std::string retirement_error;
    if(!prince_combat.inventory->retire_item({&pending},inventory_services,retirement_error))
     error+=(error.empty()?"":"; ")+std::string("pending initial Item retirement failed: ")+retirement_error;
   }
   if(error.empty())error="Source ItemInventory::AddLoot did not complete";
   return 1;
  }
  error.clear();return 0;
 }
 bool initialize(AAssetManager* manager,const std::vector<std::uint8_t>& bres,
                 std::string& error){
  assets=manager;
  if(!assets||!prince_combat.inventory||!prince_combat.item_power_tables||
     !prince_combat.item_presentation||actor_class_rows.empty()){
   error="Equipment owner requires the canonical V4, V5 presentation/power tables, and class rows";return false;
  }
  inventory_adapter={prince_combat.item_text,prince_combat.item_presentation.get()};
  if(!resources.load(bres,error))return false;
  visual=std::make_unique<dh2::skinning::VisualSkinOwnerV6>(resources.borrow(),current_scene,
      dh2::skinning::VisualAssetServicesV6{this,read_weapon});
  if(!visual->initialize(error))return false;
  visual_identity=visual->identity();
  properties=dh2::data::property_view(actor_property_rules,prince_combat.properties);
  hooks.context=this;hooks.validate_binding=validate_binding;
  hooks.world={this,world_query};hooks.visual=&visual_identity;
  hooks.skin=visual->gear_services({this,debug_gear});
  hooks.required=inventory_adapter.inventory_services();
  services=std::make_unique<dh2::data::PlayerEquipmentLiveServicesV1>(
      *prince_combat.inventory,properties,actor_class_rows.data(),
      std::uint32_t(actor_class_rows.size()),prince_combat.item_power_tables->borrow(),hooks);
  live_services=services->services();
  error.clear();return true;
 }
 bool initialize_source_initial_equipment(std::string& error){
  if(!services||!prince_combat.inventory){error="Initial equipment requires the live equipment/V4 owners";return false;}
  const dh2::player_initial_equipment_v1::Bindings bindings{
   prince_combat.inventory->character(),prince_combat.inventory.get(),&properties,
   &live_services,{this,initial_equipment_backend}};
  try{
   dh2::player_initial_equipment_v1::Runtime runtime(bindings);
   dh2::player_initial_equipment_v1::Result result{};
   if(runtime.initialize(&result,error)!=dh2::player_initial_equipment_v1::Status::complete){
    if(error.empty())error="Character::_InitEquipment continuation failed";return false;
   }
   __android_log_print(ANDROID_LOG_INFO,"DH2Native",
    "Source Character::_InitEquipment | decision %u | loot %d | added %zu | auto-equip calls %u | canonical V4 inventory | native InitPost continuation",
    unsigned(result.decision),result.loot,
    prince_combat.inventory->items().size(),result.auto_equip_calls);
  }catch(const std::exception& exception){error=exception.what();return false;}
  if(!services->refresh(false,error))return false;
  error.clear();return true;
 }
 bool sync_draws(const std::vector<dh2::skinning::VisualDrawViewV32>& views){
  bool rebuild=views.size()!=parts.size();
  for(std::size_t i=0;i<views.size();++i){const auto& part=views[i];
   if(!part.positions||!part.retention||!part.geometry||!part.material_table||!part.materials||
      part.positions->size()!=part.geometry->positions.size()||part.positions->empty())
    throw std::runtime_error("V6 equipment draw snapshot backing is incomplete");
   if(!rebuild){const auto& old=parts[i];rebuild=part.geometry!=old.geometry||
      part.material_table!=old.material_table||part.materials!=old.materials||
      part.category!=old.category||part.module!=old.module||part.weapon_slot!=old.weapon_slot;}
  }
  if(rebuild){
   std::vector<Draw> next;std::vector<GLuint> textures;
   std::vector<std::size_t> mapping;std::map<std::string,GLuint> cache;std::size_t total=0;
   try{
    for(std::size_t i=0;i<views.size();++i){const auto& part=views[i];const auto& geometry=*part.geometry;
     if(geometry.primitives.size()!=part.materials->size()||geometry.positions.size()>65536)
      throw std::runtime_error("V6 equipment material/topology count is invalid");
     for(std::size_t j=0;j<geometry.primitives.size();++j){const auto& primitive=geometry.primitives[j];
      if(primitive.collada_type||primitive.indices.size()%3||primitive.indices.size()>3000000||
         total>1000000-geometry.positions.size())
       throw std::runtime_error("V6 equipment triangle/vertex budget exceeded");
      total+=geometry.positions.size();const auto material=part.materials->at(j);
      if(material>=part.material_table->size()||part.material_table->at(material).id!=primitive.material_symbol)
       throw std::runtime_error("V6 equipment primitive material binding differs");
      auto attribute=[&](unsigned slot)->const dh2::skinning::VisualAttributeV6*{
       const auto index=primitive.attributes.at(slot);if(index<0)return nullptr;
       if(std::size_t(index)>=geometry.attributes.size())throw std::runtime_error("V6 equipment attribute index exceeds geometry");
       const auto& value=geometry.attributes[std::size_t(index)];
       if(!value.components||value.components>4||value.values.size()!=geometry.positions.size()*value.components)
        throw std::runtime_error("V6 equipment attribute stream is incomplete");
       return &value;
      };
      const auto* uv=attribute(4);const auto* color_stream=attribute(2);
      if(uv&&uv->components<2)throw std::runtime_error("V6 equipment UV stream has fewer than two components");
      std::vector<Vertex> vertices(geometry.positions.size());
      for(std::size_t k=0;k<vertices.size();++k){auto& vertex=vertices[k];
       std::copy(part.positions->at(k).begin(),part.positions->at(k).end(),vertex.p);
       if(uv)std::copy_n(uv->values.data()+k*uv->components,2,vertex.uv);
       std::fill(vertex.color,vertex.color+4,1.f);
       if(color_stream)for(unsigned c=0;c<color_stream->components;++c)
        vertex.color[c]=color_stream->values[k*color_stream->components+c]/(color_stream->type==1?255.f:1.f);
      }
      std::vector<std::uint16_t> indices;indices.reserve(primitive.indices.size());
      for(auto index:primitive.indices){
       if(index>=vertices.size()||index>65535)
        throw std::runtime_error("V6 equipment index exceeds GLES2 bounds");
       indices.push_back(static_cast<std::uint16_t>(index));}
      next.emplace_back();auto& draw=next.back();draw.material=part.material_table->at(material);
      draw.placement=part.world;draw.environment=true;draw.count=static_cast<GLsizei>(indices.size());
      draw.cpu_vertices=std::move(vertices);mapping.push_back(i);
      draw.diffuse=upload(assets,draw.material.diffuse,cache,textures);
      draw.alpha=upload(assets,draw.material.alpha_map,cache,textures);
      glGenBuffers(1,&draw.vertices);glBindBuffer(GL_ARRAY_BUFFER,draw.vertices);
      glBufferData(GL_ARRAY_BUFFER,draw.cpu_vertices.size()*sizeof(Vertex),draw.cpu_vertices.data(),GL_DYNAMIC_DRAW);
      glGenBuffers(1,&draw.indices);glBindBuffer(GL_ELEMENT_ARRAY_BUFFER,draw.indices);
      glBufferData(GL_ELEMENT_ARRAY_BUFFER,indices.size()*sizeof(std::uint16_t),indices.data(),GL_STATIC_DRAW);
      check("V6 player equipment buffer upload");
     }
    }
   }catch(...){release(next,textures);throw;}
   release(equipment_draws,equipment_images);equipment_draws=std::move(next);
   equipment_images=std::move(textures);draw_part=std::move(mapping);
  }else{
   for(std::size_t i=0;i<equipment_draws.size();++i){auto& draw=equipment_draws[i];
    const auto& part=views.at(draw_part.at(i));
    if(draw.cpu_vertices.size()!=part.positions->size())
     throw std::runtime_error("V6 equipment pose size differs from retained mesh");
    draw.placement=part.world;
    if(part.pose_revision==parts.at(draw_part.at(i)).pose_revision)continue;
    for(std::size_t k=0;k<part.positions->size();++k)
     std::copy(part.positions->at(k).begin(),part.positions->at(k).end(),draw.cpu_vertices[k].p);
    glBindBuffer(GL_ARRAY_BUFFER,draw.vertices);
    glBufferSubData(GL_ARRAY_BUFFER,0,draw.cpu_vertices.size()*sizeof(Vertex),draw.cpu_vertices.data());
   }
  }
  parts.resize(views.size());
  for(std::size_t i=0;i<views.size();++i){const auto& view=views[i];auto& part=parts[i];
   part.retention=view.retention;part.geometry=view.geometry;part.material_table=view.material_table;
   part.materials=view.materials;part.category=view.category;part.module=view.module;
   part.weapon_slot=view.weapon_slot;part.pose_revision=view.pose_revision;
  }
  return true;
 }
};
void clear_player_equipment_native(bool gl_context){
 if(gl_context)release(equipment_draws,equipment_images);
 else{equipment_draws.clear();equipment_images.clear();}
 if(player_equipment_native){player_equipment_native->services.reset();player_equipment_native->visual.reset();}
 player_equipment_native.reset();
}
bool initialize_player_equipment_native(AAssetManager* assets,
    const std::vector<std::uint8_t>& prince,std::string& error){
 clear_player_equipment_native(true);auto owner=std::make_unique<PlayerEquipmentNativeV1>();
 if(!owner->initialize(assets,prince,error)){owner->services.reset();owner->visual.reset();return false;}
 if(!owner->initialize_source_initial_equipment(error)){owner->services.reset();owner->visual.reset();return false;}
 player_equipment_native=std::move(owner);
 __android_log_print(ANDROID_LOG_INFO,"DH2Native",
    "Native player equipment connected | visual %016llx | canonical V4 %016llx | views %zu",
    static_cast<unsigned long long>(player_equipment_native->visual_identity),
    static_cast<unsigned long long>(reinterpret_cast<std::uintptr_t>(prince_combat.inventory.get())),
    player_equipment_native->parts.size());return true;
}
std::array<float,3> cross(const std::array<float,3>& a,const std::array<float,3>& b){return {a[1]*b[2]-a[2]*b[1],a[2]*b[0]-a[0]*b[2],a[0]*b[1]-a[1]*b[0]};}
void normalize(std::array<float,3>& a){float n=std::sqrt(a[0]*a[0]+a[1]*a[1]+a[2]*a[2]);for(float& x:a)x/=n;}
float dot(const std::array<float,3>& a,const std::array<float,3>& b){return a[0]*b[0]+a[1]*b[1]+a[2]*b[2];}
void swamp_default_camera_basis(float& camera_yaw,float& camera_pitch){
  // LevelConfig::InitPost defaults an empty camera_file to CameraTests.bdae;
  // its PlayerCamera_Default node has this authored eye offset from its target.
  // Convert the BDAE's renderer-space XYZ into camera()'s orbit convention.
  if(dh2::native::camera_input_v1::orbit_from_eye_offset(
       dh2::native::camera_input_v1::kSwampDefaultCameraEyeOffset,
       &camera_yaw,&camera_pitch))
    throw std::runtime_error("CameraTests default camera basis rejected");
}
Matrix camera(int width,int height){
  const float aspect=float(width)/height;
  float tan=.41421356f;
  const bool source_swamp_camera=world_mode&&
      dh2::native::crypt_camera_frame_v1::source_swamp_static_camera_fallback_ready(
          active_level_assets.name,active_level_assets.level_file,
          active_level_assets.camera_near_clip>0.0f&&
          active_level_assets.camera_far_clip>active_level_assets.camera_near_clip);
  if(source_swamp_camera)
    tan=std::tan(dh2::native::level_camera_config_v1::kVerticalFovRadians*0.5f);
  std::array<float,3> target{center[0],center[1],center[2]};
  if(world_mode){
    // Level::_LoadCamera targets the local Player; CameraTarget::GetTargetPosition
    // resolves that GameObject's camera anchor. Follow the already source-updated
    // AnchorForward target while retaining this level's generic fallback optics.
    const dh2::native::crypt_camera_frame_v1::Vec3 actor_target{
        actor_position[0],actor_position[1],actor_position[2]};
    const auto anchor=dh2::native::crypt_camera_frame_v1::forward_anchor_target(
        &prince_camera_anchor,actor_target);
    target={anchor[0],anchor[1],anchor[2]};
  }
  float distance=radius*1.15f*std::sqrt(1+1/(tan*tan*std::min(1.f,aspect)*std::min(1.f,aspect)))*zoom;
  if(source_swamp_camera){
    float source_distance=0.0f,source_yaw=0.0f,source_pitch=0.0f;
    if(dh2::native::camera_input_v1::orbit_from_eye_offset(
         dh2::native::camera_input_v1::kSwampDefaultCameraEyeOffset,
         &source_yaw,&source_pitch,&source_distance))
      throw std::runtime_error("CameraTests default camera distance rejected");
    (void)source_yaw;(void)source_pitch;
    // The fallback orbit already uses CameraTests' authored azimuth/elevation.
    // Preserve its authored eye-target distance instead of the development
    // scene-radius zoom, which places the camera only about one third as far.
    distance=source_distance*zoom;
  }
  std::array<float,3> eye{target[0]+distance*std::cos(yaw)*std::cos(pitch),target[1]+distance*std::sin(yaw)*std::cos(pitch),target[2]+distance*std::sin(pitch)};
  std::array<float,3> f{target[0]-eye[0],target[1]-eye[1],target[2]-eye[2]};normalize(f);
  auto s=cross(f,{0,0,1});normalize(s);auto u=cross(s,f);
  Matrix view{s[0],u[0],-f[0],0,s[1],u[1],-f[1],0,s[2],u[2],-f[2],0,-dot(s,eye),-dot(u,eye),dot(f,eye),1};
  const float near=source_swamp_camera?active_level_assets.camera_near_clip:
      world_mode?50.f:std::max(.01f,distance-radius*1.5f);
  const float far=source_swamp_camera?active_level_assets.camera_far_clip:
      world_mode?12000.f:distance+radius*3;
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
bool ensure_player_camera_rig(const RuntimeLevelAssets& level){
 const bool swamp_default=dh2::native::crypt_camera_frame_v1::
     verified_swamp_default_camera_route(level.name,level.level_file);
 const std::string camera_path=swamp_default?
     "data/3d/camera/cameratests.bdae":"data/3d/camera/playercamera.bdae";
 if(player_camera_rig&&player_camera_rig_asset==camera_path)return true;
 if(player_camera_rig_load_attempted&&player_camera_rig_asset==camera_path)return false;
 player_camera_rig.reset();player_camera_rig_asset=camera_path;
 player_camera_rig_default_target_distance=0.0f;
 player_camera_rig_load_attempted=false;
 if(!player_camera_asset_manager)return false;
 player_camera_rig_load_attempted=true;
 try{
  const auto camera_scene=read(player_camera_asset_manager,camera_path,"actors");
  const auto idle_animation=read(player_camera_asset_manager,
      "data/3d/camera/animations/common/camera_idle.bdae","actors");
  auto candidate=std::make_unique<dh2::player_camera_rig_v1::Rig>();
  std::string error;
  if(!candidate->load({camera_scene.data(),camera_scene.size(),
                       idle_animation.data(),idle_animation.size()},error))
   throw std::runtime_error("Authored player camera rig rejected: "+error);
  dh2::player_camera_rig_v1::Pose initial{};
  if(!candidate->sample(candidate->animation_start(),&initial,error))
   throw std::runtime_error("Authored player camera initial pose rejected: "+error);
  const dh2::native::crypt_camera_frame_v1::Vec3 eye_offset{
      initial.camera[12]-initial.target[12],
      initial.camera[13]-initial.target[13],
      initial.camera[14]-initial.target[14]};
  player_camera_rig_default_target_distance=std::hypot(
      std::hypot(eye_offset[0],eye_offset[1]),eye_offset[2]);
  if(!std::isfinite(player_camera_rig_default_target_distance)||
     player_camera_rig_default_target_distance<=0.0f)
   throw std::runtime_error("Authored camera rig has no finite camera-to-target distance");
  player_camera_input_yaw=std::atan2(eye_offset[1],eye_offset[0]);
  player_camera_input_pitch=std::atan2(eye_offset[2],std::hypot(eye_offset[0],eye_offset[1]));
  player_camera_rig_epoch=std::chrono::steady_clock::now();
  player_camera_rig=std::move(candidate);
  __android_log_print(ANDROID_LOG_INFO,"DH2Native",
      "Authored gameplay camera rig loaded | level %s | asset %s | tracks %u | clip %d..%d | BRES fov/aspect/clips %.4f/%.4f/%.0f..%.0f | runtime FOV from Level::_LoadCamera | eye %.3f %.3f %.3f | target %.3f %.3f %.3f",
      level.name.c_str(),camera_path.c_str(),
      player_camera_rig->track_count(),player_camera_rig->animation_start(),
      player_camera_rig->animation_end(),player_camera_rig->projection().source_fov_value,
      player_camera_rig->projection().aspect_ratio,player_camera_rig->projection().near_clip,
      player_camera_rig->projection().far_clip,initial.camera[12],initial.camera[13],initial.camera[14],
      initial.target[12],initial.target[13],initial.target[14]);
  return true;
 }catch(const std::exception& error){
  __android_log_print(ANDROID_LOG_ERROR,"DH2Native","Shared authored player camera rig unavailable: %s",error.what());
  return false;
 }
}
bool sample_player_camera_rig(dh2::player_camera_rig_v1::Pose& pose){
 if(!ensure_player_camera_rig(active_level_assets))return false;
 const auto start=player_camera_rig->animation_start();
 const auto duration=std::max(1,player_camera_rig->animation_end()-start);
 const auto elapsed=std::chrono::duration_cast<std::chrono::milliseconds>(
     std::chrono::steady_clock::now()-player_camera_rig_epoch).count();
 const auto offset=static_cast<std::int32_t>(elapsed%duration);
 std::string error;
 if(!player_camera_rig->sample(start+offset,&pose,error)){
  __android_log_print(ANDROID_LOG_ERROR,"DH2Native","Authored gameplay camera sample failed: %s",error.c_str());
  return false;
 }
 return true;
}
Matrix source_player_camera(int width,int height,std::uint32_t dt_ms){
 using namespace dh2::native::crypt_camera_frame_v1;
 using namespace dh2::camera_level_runtime_v1;
 Frame frame{};
 dh2::player_camera_rig_v1::Pose pose{};
 if(!sample_player_camera_rig(pose)){
  static bool warned=false;
  if(!warned){
   __android_log_print(ANDROID_LOG_WARN,"DH2Native",
      "Authored camera rig sample unavailable; keeping gameplay on the level camera fallback");
   warned=true;
  }
  return camera(width,height);
 }
 const dh2::native::crypt_camera_frame_v1::Vec3 authored_target_offset{
     pose.target[12],pose.target[13],pose.target[14]};
 const dh2::native::crypt_camera_frame_v1::Vec3 authored_eye_offset{
     pose.camera[12]-pose.target[12],pose.camera[13]-pose.target[13],
     pose.camera[14]-pose.target[14]};
 const dh2::native::crypt_camera_frame_v1::Vec3 authored_up{
     pose.up_vector[12]-pose.camera[12],pose.up_vector[13]-pose.camera[13],
     pose.up_vector[14]-pose.camera[14]};
 player_camera_input_yaw=std::atan2(authored_eye_offset[1],authored_eye_offset[0]);
 player_camera_input_pitch=std::atan2(authored_eye_offset[2],
     std::hypot(authored_eye_offset[0],authored_eye_offset[1]));
 const auto camera_key=active_level_assets.name+"\n"+active_level_assets.level_file;
 if(source_camera_level_owner_key!=camera_key){
  source_camera_zoom_input.clear_camera();
 source_camera_level_owner=Owner{};source_camera_level_owner_ready=false;
  source_camera_level_root_position={};source_camera_level_pan_offset={};source_camera_level_owner_key=camera_key;
 }
 const dh2::native::crypt_camera_frame_v1::Vec3 actor_target{
     actor_position[0],actor_position[1],actor_position[2]};
 const auto actor_anchor=forward_anchor_target(&prince_camera_anchor,actor_target);
 GameObjectSample target_object{};
 target_object.identity=reinterpret_cast<std::uintptr_t>(&prince_character);
 target_object.present=true;
 target_object.object_position={actor_target[0],actor_target[1],actor_target[2]};
 target_object.custom_anchor_present=prince_camera_anchor.has_target;
 target_object.custom_anchor_plus_12={actor_anchor[0],actor_anchor[1],actor_anchor[2]};
 if(!source_camera_level_owner_ready){
  if(!source_camera_level_owner.set_target(&target_object,0,nullptr))
   throw std::runtime_error("Source CameraTarget rejected the live Player owner");
  if(!std::isfinite(player_camera_rig_default_target_distance)||
     player_camera_rig_default_target_distance<=0.0f)
   throw std::runtime_error("Source CameraLevel default target distance is unavailable");
  source_camera_level_owner.set_default_target_distance(player_camera_rig_default_target_distance);
  // The authored gameplay UI stage is 480x320. ZoomHandler uses the larger
  // source viewport count as its inverse sensitivity; gestures are converted
  // to this same logical stage before reaching this provider.
  if(!source_camera_zoom_input.set_camera(&source_camera_level_owner,{480,320}))
   throw std::runtime_error("Source ZoomHandler could not bind the active CameraLevel owner");
  source_camera_level_root_position={actor_anchor[0],actor_anchor[1],actor_anchor[2]};
  source_camera_level_owner_ready=true;
 }
 FrameInput camera_input{};
 camera_input.active_camera=true;camera_input.camera_node_present=true;
 camera_input.target_cam_node_present=true;camera_input.target_game_object_present=true;
 camera_input.target=target_object;
 camera_input.dt_ms=static_cast<std::int32_t>(std::min<std::uint32_t>(dt_ms,2000));
 camera_input.camera_world_position=source_camera_level_root_position;
 camera_input.animated_target_cam_offset=source_camera_level_pan_offset;
 // SWAMP DesignSettingsTable row 0 bounds are source-checked: normal zoom
 // 0..0.35 and alternate/minimap zoom -1.5..0.5.
 camera_input.normal_design_min_zoom=0.0f;
 camera_input.normal_design_max_zoom=0.35f;
 camera_input.alternate_design_min_zoom=-1.5f;
 camera_input.alternate_design_max_zoom=0.5f;
 FrameOutput camera_output{};
 const auto camera_status=source_camera_level_owner.update(camera_input,&camera_output);
 if(camera_status!=Status::transition_position_written&&
    camera_status!=Status::follow_position_written)
  throw std::runtime_error("Source CameraLevel/CameraTarget follow update rejected its live providers");
 source_camera_level_root_position=camera_output.camera_world_position;
 const dh2::native::crypt_camera_frame_v1::Vec3 target{
     camera_output.camera_world_position.x,
     camera_output.camera_world_position.y,
     camera_output.camera_world_position.z};
 if(!build_player_frame(target,width,height,&frame,kVerticalFovRadians,
           active_level_assets.camera_near_clip,active_level_assets.camera_far_clip,
           authored_eye_offset,authored_up,authored_target_offset,
           camera_output.target_cam_local_position.z))
  throw std::runtime_error("Source gameplay camera frame rejected LevelConfig/viewport/actor");
 std::memcpy(source_camera.matrix.elements,frame.view_projection.data(),sizeof(source_camera.matrix.elements));
 std::memcpy(source_camera.frustum.position,frame.eye.data(),sizeof(source_camera.frustum.position));
 if(dh2::engine_camera::frustum_runtime::set_from(&source_camera.matrix,&source_camera.frustum)!=
    dh2::engine_camera::frustum_runtime::Status::complete)
  throw std::runtime_error("Source gameplay camera frustum rejected live frame");
 const bool resized=source_camera.width!=width||source_camera.height!=height;
 source_camera.width=width;source_camera.height=height;
 if((source_camera.frames++%128)==0||resized){
  __android_log_print(ANDROID_LOG_INFO,"DH2Native",
    "Source gameplay camera frame | %s | %dx%d | eye %.4f %.4f %.4f | target %.4f %.4f %.4f | camera-root %.4f %.4f %.4f | fov %.9g aspect %.9g near %.0f far %.0f | input yaw %.6g pitch %.6g | authored idle rig + CameraTarget follow/damping",
    active_level_assets.name.c_str(),
    width,height,frame.eye[0],frame.eye[1],frame.eye[2],frame.target[0],frame.target[1],frame.target[2],
    target[0],target[1],target[2],kVerticalFovRadians,frame.aspect,active_level_assets.camera_near_clip,
    active_level_assets.camera_far_clip,frame.input_yaw,frame.input_pitch);
 }
 return frame.view_projection;
}
bool load_source_level_camera_clip_planes(AAssetManager* assets,
    RuntimeLevelAssets& level,std::string& error){
 using dh2::native::level_camera_config_v1::ClipPlanes;
 std::vector<std::uint8_t> bytes;
 std::string_view xml;
 std::string source_path;
 try{
  if(level.generated_crypt_layout&&!level.generated_crypt_source_xml.empty()){
   xml=level.generated_crypt_source_xml;
   source_path="generated Crypt LevelConfig";
  }else if(level.name=="SWAMP"&&level.level_file=="001_swamp.mlx"){
   bytes=read(assets,"data/scene/001_swamp.mlx","original-cache");
   xml={reinterpret_cast<const char*>(bytes.data()),bytes.size()};
   source_path="data/scene/001_swamp.mlx";
  }else if(level.name=="GOTHICUS_CRYPT_01"&&level.level_file=="007_crypt_01.rule.xml"){
   bytes=read(assets,"007_crypt_01.rule.xml","worlds");
   xml={reinterpret_cast<const char*>(bytes.data()),bytes.size()};
   source_path="007_crypt_01.rule.xml";
  }else{
   error="No source LevelConfig camera clip fields for "+level.name+" / "+level.level_file;
   return false;
  }
  ClipPlanes planes{};
  if(!dh2::native::level_camera_config_v1::parse_clip_planes(xml,&planes)){
   error="Source LevelConfig camera clip fields rejected in "+source_path;
   return false;
  }
  level.camera_near_clip=planes.near_clip;
  level.camera_far_clip=planes.far_clip;
  error.clear();
  return true;
 }catch(const std::exception& failure){
  error="Source LevelConfig camera read failed for "+level.name+": "+failure.what();
  return false;
 }
}
#include "model_menu_scene_v69.hpp"
}
void bind_item_text_services(void* context,ItemTextServicesFactoryV5 factory){
 item_text_services_context=context;item_text_services_factory=factory;
}
void mod_directory(std::string directory){mod_root=std::move(directory);}
void runtime_directory(std::string directory){runtime_root=std::move(directory);if(!native_application.identity)native_application.identity=reinterpret_cast<std::uintptr_t>(&native_application);}
std::string profile_slot(int slot){
 if(slot < -1)return "Campaign metadata slot rejected";
 native_host.select_metadata_slot(slot);
 return "Campaign metadata slot selected";
}
bool menu_debug_load(AAssetManager* assets,std::string& error){
 if(!native_debug){
  try{const auto seed=read(assets,"DebugSwitches.savegame","data");auto backend=std::make_unique<dh2::native::debug_files::Backend>();
   if(!backend->initialize(runtime_root,seed.data(),seed.size(),error))return false;native_debug=std::move(backend);
  }catch(const std::exception& e){error=e.what();return false;}
 }
 if(native_debug->runtime().load(native_debug->globals(),native_debug->services())!=dh2::debug_switches::Status::complete){error="Shared DebugSwitches load failed";return false;}
 error.clear();return true;
}
bool menu_debug_query(AAssetManager* assets,const char* key,std::string& error){
 if(!key){error="DebugSwitches key unavailable";return false;}
 if(!native_debug&&!menu_debug_load(assets,error))return false;
 std::uint8_t value=0;
 if(native_debug->runtime().get_switch(key,native_debug->globals(),native_debug->services(),value)!=dh2::debug_switches::Status::complete){error="Shared DebugSwitches query failed";return false;}
 error.clear();return true;
}
bool create_menu_save_slot(AAssetManager* assets,const std::string& name,const std::string& class_name,std::int32_t& slot,bool& published,std::string& error,void* count_context,bool (*count)(void*,std::uint32_t*,std::string&)){
 return dh2::native::menu::create_profile(assets,runtime_root,&native_save_difficulty,&native_host.online,count_context,count,name,class_name,slot,published,error);
}
static dh2::player_local_selection_v1::Services menu_selection_services(dh2::player_locality_v1::Services& queries){
 using namespace dh2::player_local_selection_v1;
 queries=native_host.locality_services();
 queries.internal_id_player=[](void* raw,const Registry* registry,std::int32_t id,std::uint32_t flag,PlayerInfo** out)->std::int32_t {
  auto& self=*static_cast<NativeHostPlayer*>(raw);if(registry!=&self.registry)return 1;
  auto services=self.services();dh2::player_manager_host_level::Result result{};
  return dh2::player_manager_host_level::get_player_by_internal_id(registry,&services,id,flag,out,&result)==dh2::player_manager_host_level::Status::complete?0:1;
 };
 Services s{};s.context=&native_host;s.queries=&queries;
 s.application=[](void*,std::uintptr_t* out)->std::int32_t{if(!native_application.identity)return 1;*out=native_application.identity;return 0;};
 s.savegame_manager_4c=[](void* raw,std::uintptr_t app,SavegameManager** out)->std::int32_t{if(app!=native_application.identity)return 1;*out=&static_cast<NativeHostPlayer*>(raw)->save_manager;return 0;};
 s.player_manager_40=[](void* raw,std::uintptr_t app,const Registry** out)->std::int32_t{if(app!=native_application.identity)return 1;*out=&static_cast<NativeHostPlayer*>(raw)->registry;return 0;};
 s.local_controller_66c=[](void* raw,PlayerInfo* p,std::uint8_t* out)->std::int32_t{auto* record=static_cast<NativeHostPlayer*>(raw)->record_for(p);if(!record)return 1;*out=record->local_66c;return 0;};
 s.internal_id_670=[](void* raw,PlayerInfo* p,std::int32_t* out)->std::int32_t{auto* record=static_cast<NativeHostPlayer*>(raw)->record_for(p);if(!record)return 1;*out=record->internal_id_670;return 0;};
 s.save_slot_664=[](void* raw,PlayerInfo* p,std::int32_t** out)->std::int32_t{auto* record=static_cast<NativeHostPlayer*>(raw)->record_for(p);if(!record)return 1;*out=&record->save_slot_664;return 0;};
 return s;
}
bool assign_menu_save_slot(std::int32_t slot,std::int32_t ordinal,std::string& error){
 native_host.register_controllers();
 dh2::player_locality_v1::Services queries;auto services=menu_selection_services(queries);dh2::player_local_selection_v1::Result result{};
 if(dh2::player_local_selection_v1::assign_save_slot_to_player(&services,slot,ordinal,&result)!=dh2::player_local_selection_v1::Status::complete){error="Source save-slot assignment failed";return false;}
 __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native menu slot assigned | slot %d | ordinal %d | manager stores %u | player stores %u | Character association pending",slot,ordinal,result.last_slot_writes,result.player_slot_writes);error.clear();return true;
}
bool selected_menu_save_slot(std::int32_t& slot,std::string& error){
 dh2::player_locality_v1::Services queries;auto services=menu_selection_services(queries);dh2::player_local_selection_v1::Result result{};
 if(dh2::player_local_selection_v1::get_local_player(&native_host.registry,&services,0,0,&result)!=dh2::player_local_selection_v1::Status::complete){error="Source local-player selection failed";return false;}
 std::int32_t* value=nullptr;if(services.save_slot_664(services.context,result.player,&value)||!value||*value<0){error="Start Game has no assigned save slot";return false;}
 slot=*value;error.clear();return true;
}
bool select_menu_preview_slot(std::int32_t slot,bool force,std::string& error){
 if(menu_preview_selection.slot==slot&&!force){error.clear();return true;}
 // The source DestroyCharacter null check and SetupCharacter null-plane gate
 // are reached. The background mesh is not a fabricated Character owner.
 if(menu_preview_selection.character||menu_preview_selection.plane){error="Source menu avatar owner requires reconstruction";return false;}
 menu_preview_selection.slot=slot;
 __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native menu preview selection | slot %d | force %d | avatar producer pending",slot,force);
 error.clear();return true;
}
namespace {
bool crypt_safe_asset_basename(std::string_view value,std::string_view extension){
 if(value.size()<=extension.size()||value.substr(value.size()-extension.size())!=extension||
    value.find("..")!=std::string_view::npos)return false;
 const auto stem=value.substr(0,value.size()-extension.size());
 if(stem.empty()||stem.find('.')!=std::string_view::npos)return false;
 for(const auto ch:value){
  const bool allowed=(ch>='a'&&ch<='z')||(ch>='A'&&ch<='Z')||
      (ch>='0'&&ch<='9')||ch=='_'||ch=='-'||ch=='.';
  if(!allowed)return false;
 }
 return true;
}

bool crypt_safe_asset_directory(std::string_view value){
 if(value.empty()||value.front()=='/'||value.back()=='/'||
    value.find("..")!=std::string_view::npos||value.find('\\')!=std::string_view::npos)
  return false;
 bool previous_slash=false;
 for(const auto ch:value){
  const bool slash=ch=='/';
  const bool allowed=slash||(ch>='a'&&ch<='z')||(ch>='A'&&ch<='Z')||
      (ch>='0'&&ch<='9')||ch=='_'||ch=='-';
  if(!allowed||(slash&&previous_slash))return false;
  previous_slash=slash;
 }
 return true;
}

bool load_crypt_rule_assets(AAssetManager* assets,
    std::shared_ptr<dh2::random_level::CryptRuleDocumentV1>& rules,
    std::shared_ptr<dh2::random_level::CryptModuleAssetBytesV1>& source_bytes,
    std::shared_ptr<dh2::random_level::CryptModuleCatalogueV1>& catalogue,
    std::string& error){
 using namespace dh2::random_level;
 try{
  const auto rule_bytes=read(assets,"007_crypt_01.rule.xml","worlds");
  const std::string_view rule_xml(reinterpret_cast<const char*>(rule_bytes.data()),rule_bytes.size());
  const auto parsed=parse_crypt_rule_v1(rule_xml);
  if(!parsed){error="Crypt rule parse failed: "+parsed.error;return false;}
  if(!crypt_safe_asset_directory(parsed.document->folder)){
   error="Crypt rule has an unsafe source module folder";return false;
  }
  const std::string module_root=parsed.document->folder+"/";
  auto bytes=std::make_shared<CryptModuleAssetBytesV1>();
  const auto read_source=[&](const std::string& relative,std::string& output)->bool{
   const auto value=read(assets,relative,"original-cache");
   if(value.empty()){error="Crypt source asset is empty: "+relative;return false;}
   output.assign(reinterpret_cast<const char*>(value.data()),value.size());
   return true;
  };
  if(!read_source(module_root+"mgx/mgxlist.txt",bytes->mgx_list))return false;
  std::set<std::string> module_names,gameplay_names,visual_names;
  for(std::size_t cursor=0;cursor<=bytes->mgx_list.size();){
   const auto end=bytes->mgx_list.find('\n',cursor);
   auto line=std::string_view(bytes->mgx_list).substr(
       cursor,end==std::string::npos?bytes->mgx_list.size()-cursor:end-cursor);
   while(!line.empty()&&std::isspace(static_cast<unsigned char>(line.front())))line.remove_prefix(1);
   while(!line.empty()&&std::isspace(static_cast<unsigned char>(line.back())))line.remove_suffix(1);
   if(!line.empty()){
    if(!crypt_safe_asset_basename(line,".mgx")){
     error="Crypt mgxlist contains an unsafe module filename";return false;
    }
    std::string name(line.substr(0,line.size()-4));module_names.insert(std::move(name));
   }
   if(end==std::string::npos)break;
   cursor=end+1;
  }
  for(const auto& list:parsed.document->lists){
   for(const auto& entry:list.entries){
    if(!crypt_safe_asset_basename(entry.name+".mgx",".mgx")||
       !crypt_safe_asset_basename(entry.gameplay,".mgp")||
       !crypt_safe_asset_basename(entry.visual,".mvp")){
     error="Crypt rule contains an unsafe gameplay or visual filename";return false;
    }
    module_names.insert(entry.name);
    gameplay_names.insert(entry.gameplay);
    visual_names.insert(entry.visual);
   }
  }
  const auto read_module_files=[&](const std::set<std::string>& names,
      const char* directory,const char* extension,
      std::map<std::string,std::string>& output)->bool{
   for(const auto& name:names){
    const std::string suffix(extension);
    const bool has_suffix=name.size()>=suffix.size()&&
        name.compare(name.size()-suffix.size(),suffix.size(),suffix)==0;
    const auto filename=has_suffix?name:name+suffix;
    std::string contents;
    if(!read_source(module_root+directory+"/"+filename,contents))return false;
    output.emplace(filename,std::move(contents));
   }
   return true;
  };
  if(!read_module_files(module_names,"mgx",".mgx",bytes->mgx)||
     !read_module_files(module_names,"mvx",".mvx",bytes->mvx)||
     !read_module_files(gameplay_names,"mgp",".mgp",bytes->mgp)||
     !read_module_files(visual_names,"mvp",".mvp",bytes->mvp))return false;

  auto checked=std::make_shared<CryptModuleCatalogueV1>(
      build_crypt_module_catalogue_from_bytes_v1(*parsed.document,*bytes));
  if(!checked->catalogue_issues.empty()||checked->unresolved_candidate_count()!=0){
   error="Crypt source asset catalogue is incomplete";
   for(const auto& issue:checked->catalogue_issues)error+="; "+issue;
   for(const auto& [key,asset]:checked->assets_by_exact_key){
    for(const auto& issue:asset.issues)error+="; "+key.name+": "+issue;
   }
   return false;
  }
  auto owned_rules=std::make_shared<CryptRuleDocumentV1>(*parsed.document);
  rules=std::move(owned_rules);source_bytes=std::move(bytes);catalogue=std::move(checked);
  error.clear();return true;
 }catch(const std::exception& exception){
  error=std::string("Crypt source asset loading failed: ")+exception.what();return false;
 }
}

bool build_generated_crypt_mgp_views(
    const RuntimeLevelAssets& runtime,
    std::vector<dh2::world::GeneratedMgpView>& views,
    std::vector<std::string>& source_paths,std::string& error){
 views.clear();source_paths.clear();
 if(!runtime.crypt_rules||!runtime.crypt_asset_bytes||
    runtime.generated_crypt_modules.empty()){
  error="Generated Crypt module inputs are unavailable";return false;
 }
 try{
  views.reserve(runtime.generated_crypt_modules.size());
  source_paths.reserve(runtime.generated_crypt_modules.size());
  for(const auto& module:runtime.generated_crypt_modules){
   const auto found=runtime.crypt_asset_bytes->mgp.find(module.gameplay);
   if(found==runtime.crypt_asset_bytes->mgp.end()||found->second.empty()){
    error="Generated Crypt MGP is missing: "+module.gameplay;return false;
   }
   source_paths.push_back(runtime.crypt_rules->folder+"/mgp/"+module.gameplay);
   const auto& bytes=found->second;
   views.push_back({source_paths.back().c_str(),
       reinterpret_cast<const std::uint8_t*>(bytes.data()),bytes.size()});
  }
  error.clear();return true;
 }catch(const std::exception& exception){
  views.clear();source_paths.clear();error=exception.what();return false;
 }
}

bool build_generated_crypt_mvp_views(
    const RuntimeLevelAssets& runtime,
    std::vector<dh2::world::GeneratedCryptMvpFileV1>& views,
    std::vector<std::string>& source_paths,std::string& error){
 views.clear();source_paths.clear();
 if(!runtime.crypt_rules||!runtime.crypt_asset_bytes||
    runtime.generated_crypt_modules.empty()){
  error="Generated Crypt visual inputs are unavailable";return false;
 }
 try{
  views.reserve(runtime.generated_crypt_modules.size());
  source_paths.reserve(runtime.generated_crypt_modules.size());
  for(const auto& module:runtime.generated_crypt_modules){
   const auto found=runtime.crypt_asset_bytes->mvp.find(module.visual);
   if(found==runtime.crypt_asset_bytes->mvp.end()||found->second.empty()){
    error="Generated Crypt MVP is missing: "+module.visual;return false;
   }
   source_paths.push_back(runtime.crypt_rules->folder+"/mvp/"+module.visual);
   const auto& bytes=found->second;
   views.push_back({source_paths.back().c_str(),
       reinterpret_cast<const std::uint8_t*>(bytes.data()),bytes.size()});
  }
  error.clear();return true;
 }catch(const std::exception& exception){
  views.clear();source_paths.clear();error=exception.what();return false;
 }
}

bool build_generated_crypt_handle_ledger(
    RuntimeLevelAssets& runtime,std::string& error){
 using namespace dh2::world;
 using namespace dh2::world::source_handle_ledger_v1;
 if(!runtime.crypt_rules||!runtime.crypt_asset_bytes||
    runtime.generated_crypt_modules.empty()||
    runtime.generated_crypt_source_xml.empty()){
  error="Generated Crypt ObjectManager inputs are unavailable";return false;
 }
 try{
  struct AssetRef {
   std::uint32_t module_index;
   ModuleFileKind kind;
   const std::string* bytes;
  };
  std::vector<std::string> paths;
  std::vector<AssetRef> refs;
  paths.reserve(runtime.generated_crypt_modules.size()*2);
  refs.reserve(runtime.generated_crypt_modules.size()*2);
  for(std::size_t index=0;index<runtime.generated_crypt_modules.size();++index){
   const auto& module=runtime.generated_crypt_modules[index];
   const auto mgp=runtime.crypt_asset_bytes->mgp.find(module.gameplay);
   const auto mvp=runtime.crypt_asset_bytes->mvp.find(module.visual);
   if(mgp==runtime.crypt_asset_bytes->mgp.end()||mgp->second.empty()||
      mvp==runtime.crypt_asset_bytes->mvp.end()||mvp->second.empty()){
    error="Generated Crypt ObjectManager file is missing: "+module.gameplay+
          " / "+module.visual;return false;
   }
   const auto module_index=static_cast<std::uint32_t>(index);
   paths.push_back(runtime.crypt_rules->folder+"/mgp/"+module.gameplay);
   refs.push_back({module_index,ModuleFileKind::mgp,&mgp->second});
   paths.push_back(runtime.crypt_rules->folder+"/mvp/"+module.visual);
   refs.push_back({module_index,ModuleFileKind::mvp,&mvp->second});
  }
  std::vector<OrderedModuleFile> files;
  files.reserve(refs.size());
  for(std::size_t index=0;index<refs.size();++index){
   const auto& ref=refs[index];const auto& path=paths[index];
   files.push_back({ref.module_index,ref.kind,path.c_str(),
       reinterpret_cast<const std::uint8_t*>(ref.bytes->data()),
       ref.bytes->size()});
  }
  auto ledger=std::make_shared<Ledger>();
  // IDA: the normal character-select path flushes the source manager, then
  // spawns LightPoint, AnimatedDecor and Player (handles 1-3) before LoadFile.
  // The generated LevelConfig therefore starts at handle 4; every later root
  // record follows in XML order.
  constexpr std::uint32_t first_source_handle=4;
  const auto root_offset=static_cast<std::uint32_t>(
      1+runtime.generated_crypt_modules.size());
  const auto& xml=runtime.generated_crypt_source_xml;
  const auto status=source_handle_ledger_v1::build(
      reinterpret_cast<const std::uint8_t*>(xml.data()),xml.size(),
      runtime.name.c_str(),"data/scene/generated_crypt.mlx",
      files.data(),files.size(),first_source_handle,root_offset,*ledger,error);
  if(status!=source_handle_ledger_v1::Status::ok){
   error="Generated Crypt ObjectManager order rejected: "+error;return false;
  }
  runtime.generated_crypt_handle_ledger=std::move(ledger);
  error.clear();return true;
 }catch(const std::exception& exception){
  error=std::string("Generated Crypt ObjectManager ledger failed: ")+exception.what();
  return false;
 }
}

bool compile_generated_crypt_spawnpoint(
    const RuntimeLevelAssets& runtime,std::int32_t entrypoint,
    std::vector<std::uint8_t>& output,std::string& error){
 output.clear();
 std::vector<dh2::world::GeneratedMgpView> views;
 std::vector<std::string> source_paths;
 if(!build_generated_crypt_mgp_views(runtime,views,source_paths,error))return false;
 const auto& xml=runtime.generated_crypt_source_xml;
 if(xml.empty()){error="Generated Crypt Level XML is empty";return false;}
 return dh2::world::compile_generated_spawnpoint_v1(
     reinterpret_cast<const std::uint8_t*>(xml.data()),xml.size(),
     "GOTHICUS_CRYPT_01","data/scene/generated_crypt.mlx",
     views.data(),views.size(),entrypoint,output,error);
}

bool prepare_native_menu_start(std::int32_t slot,const PendingMenuStart& menu,
    AAssetManager* assets,std::int32_t debug_level_row,dh2::data::NativeStartGamePlanV1& plan,
    RuntimeLevelAssets& runtime,GeneratedWorldPayload& payload,std::string& error){
 auto character_data=read(assets,"character_properties_pyarray.bin","data");
 auto character_names=read(assets,"character_properties_pyarraynames.bin","data");
 auto character_schema=read(assets,"character_properties_pystructnames.bin","data");
 dh2::data::CharacterTable characters;
 if(!dh2::data::load_characters({character_data.data(),character_data.size()},
      {character_names.data(),character_names.size()},
      {character_schema.data(),character_schema.size()},characters,error))return false;
 auto level_data=read(assets,"levels_pyarray.bin","data");
 auto level_names=read(assets,"levels_pyarraynames.bin","data");
 auto level_schema=read(assets,"levels_pystructnames.bin","data");
 dh2::data::LevelTables levels;
 if(!dh2::data::load_levels({level_data.data(),level_data.size()},
      {level_names.data(),level_names.size()},
      {level_schema.data(),level_schema.size()},levels,error))return false;
 // NativeStartGame falls back to DesignSettingsTable.members[0]+0x24 only
 // when the selected LNAM row is -1. The packed table starts with a count,
 // followed by 43-word (172-byte) DesignSettings records.
 const auto design=read(assets,"design_pyarray.bin","original-cache/data/pydata");
 if(design.size()<4+172){error="Original DesignSettings table is truncated";return false;}
 const auto read_u32=[](const std::uint8_t* p){return std::uint32_t(p[0])|
      (std::uint32_t(p[1])<<8)|(std::uint32_t(p[2])<<16)|(std::uint32_t(p[3])<<24);};
 const auto design_count=read_u32(design.data());
 if(!design_count||design_count>4096||design.size()<4+std::uint64_t(design_count)*172){
  error="Original DesignSettings row count is invalid";return false;
 }
 std::int32_t initial_level_row=0;const auto initial_bits=read_u32(design.data()+4+0x24);
 std::memcpy(&initial_level_row,&initial_bits,sizeof(initial_level_row));
 dh2::native::player_profile::Metadata temporary_save;
 if(!temporary_save.load(slot,runtime_root,characters,native_save_difficulty,error))return false;
 const auto& source_save=temporary_save.save();
 dh2::data::NativeStartGameSaveViewV1 save;
 save.slot=source_save.slot();save.unlocked_difficulty=source_save.unlocked_difficulty();
 save.level_rows=source_save.level_name_fields().word50;
 save.entry_points=source_save.level_entry_points();
 save.use_spawn_points=source_save.use_spawn_points();
 if(debug_level_row!=-1){
  if(debug_level_row!=23){error="Only source Crypt row 23 is available as a debug launch override";return false;}
  for(auto& row:save.level_rows)row=debug_level_row;
  __android_log_print(ANDROID_LOG_INFO,"DH2Native","Transient debug LevelList override | row %d | campaign save unchanged",debug_level_row);
 }
 dh2::data::NativeStartGameRequestV1 request;
 request.current_difficulty=native_save_difficulty;
 request.has_numeric_difficulty=menu.has_numeric_difficulty;
 request.requested_difficulty=menu.requested_difficulty;
 request.online=native_host.online!=0;request.local_player_hosting=false;
 request.initial_level_row=initial_level_row;
 if(!dh2::data::resolve_native_start_game_plan_v1(levels,save,request,plan,error))return false;
 if(!plan.should_launch){error="NativeStartGame source state rejected the launch";return false;}
 if(plan.save_after_numeric_request){
  // NativeStartGame updates the process difficulty only when the requested
  // row is unlocked, but reaches this first SG_Save for every numeric input.
  native_save_difficulty=plan.difficulty_for_level;
  if(!temporary_save.save_numeric_request(characters,native_save_difficulty,error))return false;
  __android_log_print(ANDROID_LOG_INFO,"DH2Native",
    "NativeStartGame numeric SG_Save | slot %d | difficulty %d | same temporary Save/index",
    slot,native_save_difficulty);
 }
 const auto saved_seed=static_cast<std::uint32_t>(
     source_save.level_name_fields().word5c[std::size_t(plan.difficulty_for_level)]);
 bool dont_use_player_seed=false;
 if(saved_seed!=0){
  if(!menu_debug_load(assets,error))return false;
  std::uint8_t value=0;
  if(native_debug->runtime().get_switch("DontUsePlayerSeed",native_debug->globals(),
       native_debug->services(),value)!=dh2::debug_switches::Status::complete){
   error="Source DontUsePlayerSeed query failed";return false;
  }
  dont_use_player_seed=value!=0;
 }
 std::uint32_t real_time_seed=0;
 if(saved_seed==0||dont_use_player_seed){
  if(!original_real_time_ms(real_time_seed)){
   error="Original Application::LoadLevel seed clock read failed";return false;
  }
 }
 const auto application_seed=dh2::data::resolve_application_load_seed_v1(
     saved_seed,dont_use_player_seed,real_time_seed);
 if(plan.clear_saved_spawn_flag_before_load){
  if(plan.saved_spawn_flag_row_to_clear<0||plan.saved_spawn_flag_row_to_clear>=3){
   error="NativeStartGame selected LUSP row is outside the three source difficulties";return false;
  }
  if(!temporary_save.clear_spawn_point_and_save(
       std::size_t(plan.saved_spawn_flag_row_to_clear),characters,
       native_save_difficulty,error))return false;
  __android_log_print(ANDROID_LOG_INFO,"DH2Native",
    "NativeStartGame cleared LUSP and SG_Save | slot %d | row %d | offline load spawn %u | same temporary Save/index",
    slot,plan.saved_spawn_flag_row_to_clear,unsigned(plan.load_spawn_flag));
 }
 runtime={};runtime.row=plan.level_row;runtime.name=plan.level_name;runtime.level_file=plan.level_file;
 runtime.source_load_seed=application_seed.ordinary_seed;
 runtime.source_load_synchronized_seed=application_seed.synchronized_seed;
 if(plan.level_row==41&&plan.level_name=="SWAMP"&&plan.level_file=="001_swamp.mlx"){
  runtime.descriptor="001_swamp.dwld";runtime.bres="data/3d/modules/swamp/swamp.bdae";
  runtime.spawns="001_swamp.spwn";runtime.objects="001_swamp.dact";runtime.development_layout=false;
  payload.dwld_v1=read(assets,runtime.descriptor,"worlds");
 }else if(plan.level_row==23&&plan.level_name=="GOTHICUS_CRYPT_01"&&
          plan.level_file=="007_crypt_01.rule.xml"){
  runtime.descriptor="generated-crypt.dwld";runtime.bres="crypt.bdae";
  runtime.spawns="generated-crypt.spwn";runtime.objects="generated-crypt.dact";
  if(!load_crypt_rule_assets(assets,runtime.crypt_rules,
      runtime.crypt_asset_bytes,runtime.crypt_catalogue,error))return false;
  auto generated=dh2::random_level::generate_crypt_level_v1(
      *runtime.crypt_rules,*runtime.crypt_catalogue,runtime.source_load_seed);
  if(generated.status!=dh2::random_level::CryptLevelGeneratorStatusV1::success){
   error="Source Crypt generation failed: "+generated.message;return false;
  }
  runtime.generated_crypt_layout=true;runtime.development_layout=false;
  runtime.generated_crypt_source_xml=std::move(generated.layout.source_level_xml);
  runtime.generated_crypt_modules=std::move(generated.modules);
  if(!build_generated_crypt_handle_ledger(runtime,error)){
   error="Generated Crypt ObjectManager ledger failed: "+error;return false;
  }
  payload.dwld_v1=std::move(generated.layout.dwld_v1);
  if(!compile_generated_crypt_spawnpoint(runtime,plan.entry_point,
       payload.spwn_v1,error)){
   error="Generated Crypt SpawnPoint compile failed: "+error;return false;
  }
  __android_log_print(ANDROID_LOG_INFO,"DH2Native",
    "Source Crypt generated | seed %u | modules %zu | Step rows %zu | candidates %zu | rollbacks %zu | spawn entrypoint %d | rule entries %zu | exact tuples %zu | MGX/MVX %zu/%zu | MGP/MVP %zu/%zu",
    runtime.source_load_seed,runtime.generated_crypt_modules.size(),
    generated.generation_result.rows_tried,
    generated.generation_result.one_step_candidates_tried,
    generated.generation_result.row_rollbacks,plan.entry_point,
    runtime.crypt_catalogue->rule_candidates.size(),
    runtime.crypt_catalogue->assets_by_exact_key.size(),
    runtime.crypt_asset_bytes->mgx.size(),runtime.crypt_asset_bytes->mvx.size(),
    runtime.crypt_asset_bytes->mgp.size(),runtime.crypt_asset_bytes->mvp.size());
 }else{
  error="Selected LevelList row has no native source loader yet: row "+
      std::to_string(plan.level_row)+" ("+plan.level_name+" / "+plan.level_file+")";return false;
 }
 error.clear();return true;
}
}

bool request_menu_start(bool numeric,std::int32_t requested,std::int32_t& slot,std::string& error){
 // The authored button has already called the real NativeAssign service.
 // Preserve its numeric argument until the source plan reads the same slot's
 // canonical metadata Save. Difficulty unlock and raw LoadLevel argument are
 // separate source decisions handled by NativeStartGamePlanV1.
 if(!selected_menu_save_slot(slot,error))return false;
 pending_menu_start={slot,numeric,requested,true};
 __android_log_print(ANDROID_LOG_INFO,"DH2Native","Authored NativeStartGame request accepted | slot %d | numeric %d | requested difficulty %d | source LevelList resolution pending",slot,numeric,requested);
 return true;
}
std::string start_menu_game(std::int32_t slot,AAssetManager* assets,std::int32_t debug_level_row){
 std::string error;std::int32_t assigned=-1;
 if(!selected_menu_save_slot(assigned,error))return error;
 if(assigned!=slot)return "Start Game selected slot differs";
 try{
  native_host.select_metadata_slot(assigned);
  const PendingMenuStart request=pending_menu_start.valid&&pending_menu_start.slot==assigned
      ?pending_menu_start:PendingMenuStart{assigned,false,0,true};
  dh2::data::NativeStartGamePlanV1 plan;RuntimeLevelAssets runtime;
  GeneratedWorldPayload payload;
  if(!prepare_native_menu_start(assigned,request,assets,debug_level_row,plan,runtime,payload,error))
   return "Start Game failed: "+error;
  pending_menu_start={};active_native_start_plan=plan;active_level_assets=std::move(runtime);
  menu_gameplay_slot=assigned;
  __android_log_print(ANDROID_LOG_INFO,"DH2Native","NativeStartGame plan | slot %d | row %d | %s | source file %s | entry %d | spawn %u | raw seed args %u/%u | resolved local seed %u/%u | current difficulty %d | raw load difficulty %d | metadata SG_Save effects complete before native world load | layout %s",
   plan.slot,plan.level_row,plan.level_name.c_str(),plan.level_file.c_str(),plan.entry_point,
   unsigned(plan.load_spawn_flag),plan.seed,plan.synchronized_seed,active_level_assets.source_load_seed,
   active_level_assets.source_load_synchronized_seed,plan.difficulty_for_level,plan.requested_difficulty_for_load,
   active_level_assets.generated_crypt_layout?"source-generated":
    active_level_assets.development_layout?"development":"source-authored-static");
  const auto result=load_world(payload.dwld_v1.data(),payload.dwld_v1.size(),assets,
      payload.spwn_v1.empty()?nullptr:payload.spwn_v1.data(),payload.spwn_v1.size());
  if(result.rfind("World load failed:",0)==0){deactivate();menu_gameplay_slot=-1;active_native_start_plan.reset();active_level_assets=RuntimeLevelAssets{};}
  return result;
 }catch(const std::exception& e){pending_menu_start={};return std::string("Start Game failed: ")+e.what();}
}
std::vector<std::uint8_t> read_asset(AAssetManager* assets,const std::string& name){return read(assets,name,"");}
std::int32_t ui_current_level_name_id() noexcept {
 if(!world_mode)return -1;
 // IDA MenuCharMenu_Map::ShowLevelName (0x45335c) uses current Level+0x3c
 // as a LevelList index and reads row+0x24. The decoded row exposes that
 // source field as level_name_id.
 std::int32_t row=active_level_assets.row;
 if(row==-1)row=0;
 if(row<0||std::size_t(row)>=actor_level_tables.levels.size())return -1;
 return actor_level_tables.levels[std::size_t(row)].level_name_id;
}
void reset_context(){
 // EGL has already replaced the context. Forget its old GPU names before a
 // fallible CPU snapshot; deleting those names here could affect the new context.
 program=0;enabled=false;native_actor_ready=false;draws.clear();images.clear();
 // These preview GPU names belonged to the replaced EGL context as well.
 class_preview_actors.clear();menu_background=false;class_scene=false;
 for(auto& group:object_groups)group.draws.clear();
 // The previous EGL context is gone; forget item GPU names without deleting them.
 itemdrops_draws.clear();itemdrops_resource={};itemdrop_roots.clear();itemdrops_ready=false;
 const bool retain=world_mode||resume_world;
 if(world_mode){
  std::string error;
  if(!prince_retained_pose.capture(prince_locomotion,prince_attack_clips,prince_visual,current_scene,error))
   throw std::runtime_error("Player scene retention failed: "+error);
  saved_actors.clear();
  for(const auto& group:object_groups)for(const auto& actor:group.instances)if(actor.kind==1){
   auto saved=actor;saved.room_zone_2f4=0;saved.visual_object_2d8=0;
   saved.in_room_list_2ef=0;saved.zoning_enabled_2ee=1;saved.in_zone_2f0=0;
   saved.visible_80=1;saved.source_room_zone_managed=false;
   saved.source_updates_enabled=false;saved.renderer_visible=true;
   saved_actors.push_back(std::move(saved));
  }
}
if(active_crypt_room_runtime){
 if(!active_crypt_room_runtime->clear())
  throw std::runtime_error("Crypt RoomZone owner retirement failed during EGL reset");
 active_crypt_room_runtime.reset();
}
 native_actor_ready=false;clear_actor_world(retain);search_world.clear();prince_search_projection={};prince_body={};
 clear_player_equipment_native(false);
 resume_world=retain;world_mode=false;move_x=move_y=0;draws.clear();images.clear();object_groups.clear();world_objects.clear();
 if(!retain){
  prince_retained_pose.clear();prince_locomotion=dh2::actor::BlendedPlayback{};
  prince_visual={};prince_attack_clips.clear();prince_animation_bank={};scene_clock=0;
 }
 inspected_object=-1;current_scene={};player=dh2::animation::Player{};walk_player=dh2::animation::Player{};level={};program=0;enabled=false;
}
void deactivate(){
 clear_player_equipment_native(true);
 player_camera_rig.reset();player_camera_asset_manager=nullptr;player_camera_rig_load_attempted=false;player_camera_rig_asset.clear();player_camera_rig_default_target_distance=0.0f;
 source_camera={};
 release_class_previews();menu_background=false;class_scene=false;
 if(active_crypt_room_runtime){
  if(!active_crypt_room_runtime->clear())
   __android_log_print(ANDROID_LOG_ERROR,"DH2Native","Crypt RoomZone owner retirement failed");
  active_crypt_room_runtime.reset();
 }
 std::string player_owner_error;
 if(!prince_character.unbind_session(player_owner_error))
  __android_log_print(ANDROID_LOG_ERROR,"DH2Native","Native player Character retirement failed: %s",player_owner_error.c_str());
 prince_combat.source_save_association.reset(); // Drop borrowed +14e8/Save/LoadOwner before their owners.
  prince_skills.reset();prince_source_ai.reset();
 if(prince_combat.quests){
  std::string error;
  if(!prince_combat.quests->close(error))throw std::runtime_error(error);
  const auto receipt=prince_combat.quests->receipt();
  __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native Quest terminal discard | destroyed b8 %u | log118 %u | source log vectors empty",receipt.destroyed[0],receipt.destroyed[1]);
  prince_combat.quests.reset();
 }
 prince_combat.save_transport.reset();prince_combat.save_profile.reset();
 prince_combat.profile_characters.reset();prince_combat.savegame.reset();
 actor_quest_tables={};actor_quest_constants={};
 // Terminal discard differs from GL recreation: clear every actor copy after
 // retiring timers and tearing down bodies, then release the owning groups.
 std::vector<std::weak_ptr<NativeMonsterInitialization>> retired;
 for(const auto& group:object_groups)for(const auto& actor:group.instances)
  if(actor.native_ai&&actor.native_ai->initialization)retired.push_back(actor.native_ai->initialization);
 for(const auto& actor:saved_actors)
  if(actor.native_ai&&actor.native_ai->initialization)retired.push_back(actor.native_ai->initialization);
 native_actor_ready=false;clear_actor_world();prince_body={};
 native_world_items.clear();clear_native_world_item_resources();
 active_crypt_module_bounds={};
 crypt_spawn_script.clear();crypt_trigger_state={};saved_actors.clear();
 release_objects(object_groups);release(draws,images);world_objects.clear();
 actor_skill_catalogue.reset();level={};current_scene={};
 prince_retained_pose.clear();prince_locomotion=dh2::actor::BlendedPlayback{};
 prince_visual={};prince_attack_clips.clear();prince_animation_bank={};scene_clock=0;
 active_native_start_plan.reset();pending_menu_start={};active_level_assets=RuntimeLevelAssets{};
 enabled=false;world_mode=false;resume_world=false;move_x=move_y=0;authored_hud_direction[0]=authored_hud_direction[1]=authored_hud_direction[2]=0;authored_hud_command_active=authored_hud_stop_pending=false;prince_camera_anchor={};reset_source_camera_level_runtime();
 const auto remaining=std::count_if(retired.begin(),retired.end(),[](const auto& owner){return !owner.expired();});
 __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native terminal world discard | Ghost references %zu | remaining %zu | groups %zu | saved actors %zu | catalogue %u",retired.size(),std::size_t(remaining),object_groups.size(),saved_actors.size(),unsigned(bool(actor_skill_catalogue)));
}
void unload_game_to_menu(){
 deactivate();
 std::uint32_t seed=0;
 if(!original_real_time_ms(seed)){
  __android_log_print(ANDROID_LOG_ERROR,"DH2Native","Source Random Level::Unload clock read failed");
  return;
 }
 dh2::random_lifecycle::seed_from_level_unload(seed);
 const auto& random=dh2::random_lifecycle::process_state();
 __android_log_print(ANDROID_LOG_INFO,"DH2Native","Source Random Level::Unload | seed %u | sync %u | counters %u/%u",
   random.seeds[0],random.seeds[1],random.counters[0],random.counters[1]);
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
   // Development evidence only. Hash semantic playback fields and cached
   // contributions without sampling or advancing the retained source owner.
   std::uint64_t playback_hash=14695981039346656037ull;
   auto word=[&](std::uint32_t value){for(unsigned i=0;i<4;++i){playback_hash^=(value>>(i*8))&255;playback_hash*=1099511628211ull;}};
   auto floats=[&](const float* values,unsigned count){for(unsigned i=0;i<count;++i){std::uint32_t value;std::memcpy(&value,values+i,4);word(value);}};
   auto delta=[&](const dh2::visual::Delta& value){word(value.timestamp);floats(value.previous,3);floats(value.value,3);};
   const auto& blend=prince_locomotion.blend;
   word(blend.current);word(blend.previous);word(blend.duration);word(blend.remaining);floats(&blend.reciprocal,1);word(blend.last_time);floats(blend.weights,2);
   for(const auto& slot:prince_locomotion.slots){
    const auto& time=slot.timeline;
    word(time.current_ms);word(time.start_ms);word(time.end_ms);word(time.loop);
    floats(&time.frame_seconds,1);floats(&time.start_seconds,1);floats(&time.length_seconds,1);
    floats(&time.last_seconds,1);floats(&time.current_seconds,1);floats(&time.scale,1);
    word(time.library_present);word(time.clip_index);word(time.ended);word(time.initialized);
    word(slot.event_cursor.last_entry);delta(slot.root_history);word(slot.clip_id);word(slot.compiled_clip);
    word(std::uint32_t(slot.generation));word(std::uint32_t(slot.generation>>32));word(std::uint32_t(slot.key_cursors.size()));
    for(auto key:slot.key_cursors)word(key);
   }
   for(const auto& frame:prince_locomotion.scheduler.frames()){word(frame.sequence);word(frame.loops);word(frame.step);}
   word(prince_locomotion.scheduler.active());word(prince_locomotion.applicator_completion.extra_ms);word(prince_locomotion.applicator_completion.pending);
   word(prince_locomotion.completion.extra_ms);word(prince_locomotion.completion.pending);delta(prince_locomotion.aggregate);
   word(prince_locomotion.root_timestamp);word(prince_locomotion.completions);word(prince_locomotion.restarts);word(prince_locomotion.sequence_closed);
   word(prince_locomotion.displacement);word(prince_locomotion.stop_requested);word(prince_locomotion.last_event_lag);
   for(auto enabled:prince_locomotion.target_enabled)word(enabled);
   for(std::size_t target=0;target<prince_locomotion.transform_set().targets().size();++target){const auto& values=prince_locomotion.values(target);floats(values.data(),unsigned(values.size()));}
   word(actor_random.seed);word(actor_random.calls);
   __android_log_print(ANDROID_LOG_INFO,"DH2Native","Prince retained animation inspection | state %d | frozen %u | scene %u | clip %d | engine %d | ms %d | playback %016llx | pose %016llx",
    prince_state.current,unsigned(frozen),unsigned(scene_clock),prince_locomotion.current_clip(),prince_locomotion.current_engine_clip(),prince_locomotion.current_timeline().current_ms,static_cast<unsigned long long>(playback_hash),static_cast<unsigned long long>(pose));
   return;
  }
  if(milliseconds<0){epoch=std::chrono::steady_clock::now()-std::chrono::milliseconds(sampled_ms-player.start);frozen=false;}
  else{sampled_ms=std::clamp(milliseconds,player.start,player.end);frozen=true;}
}
static std::string load_scene(const std::uint8_t* bytes,std::size_t size,AAssetManager* assets,bool preserve_level_session,
                              const dh2::data::FreshInventoryOwnedV4* equipment=nullptr){
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
      const char* visual_class="warrior";const char* idle_class="knight";
      if(preserve_level_session&&requested_player_class==325){visual_class="rogue";idle_class="rogue";}
      else if(preserve_level_session&&requested_player_class==290){visual_class="mage";idle_class="mage";}
      dh2::skinning::ModularSkinCatalog catalog;
      if(!dh2::skinning::load_modular_skin_catalog(bytes,size,catalog,error))
        throw std::runtime_error("Prince modular catalog: "+error);
      struct BodySlot {const char* category;std::uint32_t slot;};
      static constexpr BodySlot body_slots[]={{"MC_Feet",3},{"MC_Hands",4},
                                               {"MC_Head",8},{"MC_Torso",0}};
      std::vector<const dh2::skinning::ModularSkinModule*> selected;
      selected.reserve(sizeof(body_slots)/sizeof(body_slots[0]));
      for(const auto& body:body_slots){
        const dh2::skinning::ModularSkinModule* module=nullptr;bool placeholder=false;
        if(equipment){
          const auto* slot=equipment->equipment()[0][body.slot];
          if(slot&&!slot->item)throw std::runtime_error("Equipped body slot has no canonical ItemInstance");
          const auto* item=slot?dh2::data::item(equipment->table(),slot->item->id):nullptr;
          if(slot&&!item)throw std::runtime_error("Equipped body item is absent from the canonical ItemTable");
          if(!dh2::skinning::resolve_modular_skin(catalog,body.category,
              item?item->name:std::string{},slot!=nullptr,module,placeholder,error))
            throw std::runtime_error("Canonical equipped skin: "+error);
        }else{
          const auto name=std::string(body.category)+"_default_"+visual_class;
          module=dh2::skinning::find_modular_skin(catalog,body.category,name);
          if(!module)throw std::runtime_error("Class starter skin is absent from Prince modular catalog: "+name);
        }
        if(!module)throw std::runtime_error("Prince modular selection returned no controller");
        selected.push_back(module);
        __android_log_print(ANDROID_LOG_INFO,"DH2Native",
          "Prince body skin selected | category %s | module %s | controller %u | V4 %u | placeholder %u",
          body.category,module->item_name.c_str(),module->controller_index,unsigned(equipment!=nullptr),unsigned(placeholder));
      }
      std::sort(selected.begin(),selected.end(),[](const auto* a,const auto* b){
        return a->controller_index<b->controller_index;
      });
      for(const auto* module:selected){
        dh2::skinning::Skin skin;
        if(!dh2::skinning::load(view,module->controller_index,scene,skin,error))throw std::runtime_error(error);
        if(skin.id!=module->controller)throw std::runtime_error("Prince modular catalog/controller identity differs");
        dh2::assets::Mesh mesh{};dh2_mesh_open(&mesh,&view,skin.geometry);
        dh2::scene::Instance instance{prince->id,node,skin.geometry,prince->world,{}};
        instance.controller=static_cast<std::int32_t>(module->controller_index);
        for(unsigned j=0;j<mesh.primitives;++j){dh2::assets::Primitive primitive{};dh2_mesh_primitive(&mesh,j,&primitive);
          auto material=std::find_if(scene.materials.begin(),scene.materials.end(),[&](const dh2::scene::Material& m){return m.id==primitive.material;});
          if(material==scene.materials.end())throw std::runtime_error("Unresolved equipment material");instance.materials.push_back(material-scene.materials.begin());}
        scene.instances.push_back(std::move(instance));
      }
      if(scene.instances.size()!=4)throw std::runtime_error(std::string("Incomplete ")+visual_class+" equipment preview");
      auto clip=read(assets,std::string("prince_menu_idle_")+idle_class+".bdae","animations");
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
    // A standalone model ends the world, including saved actor copies and
    // retained script/CPU Player owners. Candidate GPU resources remain local.
    if(preserve_level_session)clear_actor_world(true);else deactivate();
    release_class_previews();menu_background=false;class_scene=false;
    release_objects(object_groups);world_objects.clear();inspected_object=-1;release(draws,images);draws=std::move(candidate);images=std::move(textures);radius=next_radius;
    if(!preserve_level_session){
      __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native Player preview owners retired | bank %zu | retained pose %u | skill owner %u | AI owner %u",
       prince_attack_clips.size(),unsigned(!prince_retained_pose.empty()),unsigned(bool(prince_skills)),unsigned(bool(prince_source_ai)));
    }
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
bool camera_pinch_zoom(float previous_distance,float current_distance){
 if(!world_mode||!active_level_assets.source_player_camera_enabled||
    !source_camera_level_owner_ready)return false;
 return source_camera_zoom_input.pinch_zoom(previous_distance,current_distance);
}
bool camera_touch_pan(std::int32_t delta_x,std::int32_t delta_y){
 if(!world_mode||!active_level_assets.source_player_camera_enabled||
    !source_camera_level_owner_ready)return false;
 return source_camera_zoom_input.touch_pan(delta_x,delta_y,
     &source_camera_level_pan_offset,true);
}
bool authored_hud_command(const float* direction,bool stop,std::string& error){
 if(stop){authored_hud_command_active=false;authored_hud_stop_pending=true;authored_hud_direction[0]=authored_hud_direction[1]=authored_hud_direction[2]=0;move_x=move_y=0;error.clear();return true;}
 if(!direction||!std::isfinite(direction[0])||!std::isfinite(direction[1])||!std::isfinite(direction[2])){
  error="Authored joystick HeadTowards vector is absent or nonfinite";return false;
 }
 if(!world_mode||!native_actor_ready){error="Authored joystick command requires the active native Player world";return false;}
 std::copy(direction,direction+3,authored_hud_direction);authored_hud_command_active=true;authored_hud_stop_pending=false;error.clear();
 if(authored_hud_command_trace_count<8){++authored_hud_command_trace_count;__android_log_print(ANDROID_LOG_INFO,"DH2Native","Authored joystick HeadTowards accepted | command %u | direction %.6g %.6g %.6g | state %d | flags %x | controller locked %u",authored_hud_command_trace_count,direction[0],direction[1],direction[2],prince_state.current,prince_state.flags,unsigned(prince_state.controller_locked));}
 return true;
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
struct CombatAggroBeforeHit {
 AggroStorage* owner;
 AggroStorage* target;
 std::uint64_t owner_id,target_id;
 unsigned facts;
};
void add_combat_threat_before_hit(void* context,float amount){
 auto* request=static_cast<CombatAggroBeforeHit*>(context);
 if(request&&request->owner&&request->target)add_combat_threat(*request->owner,*request->target,request->owner_id,request->target_id,amount,request->facts);
}
dh2::data::AiRangeResult actor_player_range(const ObjectActor& actor){
 const auto* npc=dh2::data::ai_props(actor_ai_tables,actor.properties.resolved[1]);const auto* prince=dh2::data::ai_props(actor_ai_tables,prince_combat.properties.resolved[1]);dh2::data::AiRangeResult result{};if(!npc||!prince)return result;
 const dh2::data::AiRangeRequest request{{actor.position[0],actor.position[1],actor.position[2]},{actor_position[0],actor_position[1],actor_position[2]},npc->melee_radius,prince->melee_radius,npc->view_radius};dh2_ai_range(&result,&request);return result;
}
int direct_monster_find_path(void* raw,const dh2::character::PathToRequest32* request,
                             std::uint32_t* found){
 if(!raw||!request||!found||!level.native_floor)return 1;
 auto& actor=*static_cast<ObjectActor*>(raw);
 if(!actor.direct_path_ready||actor.direct_path_identity!=actor.identity||
    request->owner!=actor.identity||request->reserved||request->reserved1||
    request->limit>100000)return 1;
 actor.direct_path.segments=actor.direct_route_storage.data();
 actor.direct_path.capacity=std::uint32_t(actor.direct_route_storage.size());
 dh2::navigation::RouteResult route{};
 const int status=dh2::floors::find_path(*level.native_floor,actor.direct_path,
                                          request->target,request->limit,route);
 if(status)return 1;
 *found=route.found;
 actor.direct_move_to.path_nonempty=actor.direct_path.count!=0;
 std::memcpy(actor.direct_move_to.path_target,request->target,
             sizeof(actor.direct_move_to.path_target));
 return 0;
}
bool initialize_direct_monster_path(ObjectActor& actor){
 if(!level.native_floor||!actor.identity||!level.native_floor->sewn)return false;
 if(actor.direct_path_ready&&actor.direct_path_identity==actor.identity){
  actor.direct_path.segments=actor.direct_route_storage.data();
  actor.direct_path.capacity=std::uint32_t(actor.direct_route_storage.size());
  actor.direct_path_services={&actor,direct_monster_find_path};
  return true;
 }
 const auto capacity=level.native_floor->graph.node_count+1;
 if(!capacity)return false;
 actor.direct_route_storage.assign(capacity,{});
 actor.direct_route_scratch.assign(capacity,{});
 if(dh2_nav_object_defaults(&actor.direct_nav_object))return false;
 const dh2::navigation::ObjectInitRequest init{
  &level.native_floor->collision_world,&actor.direct_nav_object,actor.identity,
  {actor.position[0],actor.position[1],actor.position[2]},1.f,0,0};
 if(dh2_nav_init_object(&init))return false;
 actor.direct_path={};actor.direct_path.segments=actor.direct_route_storage.data();
 actor.direct_path.capacity=std::uint32_t(actor.direct_route_storage.size());
 actor.direct_path.route.flags=actor.direct_nav_object.motion.flags;
 actor.direct_path.route.radius=actor.direct_nav_object.radius;
 std::copy(actor.position.begin(),actor.position.end(),actor.direct_path.position);
 std::copy(actor.position.begin(),actor.position.end(),actor.direct_path.target);
 actor.direct_controller={};
 std::copy(actor.position.begin(),actor.position.end(),actor.direct_controller.position);
 std::copy(actor.position.begin(),actor.position.end(),actor.direct_controller.destination);
 actor.direct_move_to={actor.identity,0,0,30,0,
  {actor.position[0],actor.position[1],actor.position[2]},0};
 actor.direct_path_services={&actor,direct_monster_find_path};
 actor.direct_source_moving=0;actor.direct_path_identity=actor.identity;
 actor.direct_path_ready=true;
 return true;
}
bool direct_monster_move_to(ObjectActor& actor,const float* target){
 if(!target||!initialize_direct_monster_path(actor))return false;
 actor.direct_path.segments=actor.direct_route_storage.data();
 actor.direct_move_to.path_nonempty=actor.direct_path.count!=0;
 dh2::character::PathToResult16 result{};
 if(dh2_character_path_to(&result,&actor.direct_move_to,target,
                           &actor.direct_path_services)!=0)return false;
 return result.requested&&result.find_result!=0&&actor.direct_path.count!=0;
}
void stop_direct_monster_path(ObjectActor& actor){
 if(!actor.direct_path_ready)return;
 actor.direct_path.segments=actor.direct_route_storage.data();
 actor.direct_path.capacity=std::uint32_t(actor.direct_route_storage.size());
 if(actor.direct_path.count)dh2_nav_drop_path(&actor.direct_path);
 actor.direct_move_to.path_nonempty=0;actor.direct_source_moving=0;
 for(unsigned i=0;i<3;++i){
  actor.direct_path.position[i]=actor.position[i];
  actor.direct_path.target[i]=actor.position[i];
  actor.direct_controller.position[i]=actor.position[i];
  actor.direct_controller.destination[i]=actor.position[i];
 }
 actor.direct_controller.path_requested=0;
 actor.direct_nav_object.motion.position[0]=actor.position[0];
 actor.direct_nav_object.motion.position[1]=actor.position[1];
 actor.direct_nav_object.motion.position[2]=actor.position[2];
}
bool advance_direct_monster_path(ObjectActor& actor,unsigned dt_ms){
 if(!dt_ms||!actor.direct_path_ready||!level.native_floor||!actor.direct_path.count||
    actor.combat_state.dead||actor.state=="Attack")return false;
 auto& path=actor.direct_path;path.segments=actor.direct_route_storage.data();
 path.capacity=std::uint32_t(actor.direct_route_storage.size());
 std::copy(actor.position.begin(),actor.position.end(),path.position);
 std::copy(actor.position.begin(),actor.position.end(),actor.direct_controller.position);
 std::copy(actor.position.begin(),actor.position.end(),actor.direct_nav_object.motion.position);
 const dh2::navigation::ControllerPolicy policy{1,0,0,0};
 dh2::navigation::ControllerWorkspace workspace{
  actor.direct_route_scratch.data(),std::uint32_t(actor.direct_route_scratch.size()),0,
  nullptr,0,0,nullptr,0,0};
 const dh2::navigation::ControllerRequest request{
  &actor.direct_controller,&path,&actor.direct_nav_object,
  &level.native_floor->collision_world,&level.native_floor->graph,nullptr,&policy,
  &workspace,actor.identity,&actor.direct_source_moving};
 dh2::navigation::ControllerResult result{};
 if(dh2_nav_update_path(&result,&request)!=0)return false;
 actor.direct_move_to.path_nonempty=path.count!=0;
 if(!path.count||!result.move.active)return false;
 const float dx=actor.direct_controller.destination[0]-actor.position[0];
 const float dy=actor.direct_controller.destination[1]-actor.position[1];
 const float distance=std::sqrt(dx*dx+dy*dy);
 if(!(distance>0.001f)||!std::isfinite(distance))return false;
 // GameObject::GetSpeed returns 4.0 source units per second. World poses in
 // this renderer are centimeters, hence the bounded 400-unit/s route step.
 const float step=dh2::actor::base_virtual_speed*100.f*float(dt_ms)*0.001f;
 const float fraction=std::min(1.f,step/distance);
 float candidate[3]{actor.position[0]+dx*fraction,
                    actor.position[1]+dy*fraction,actor.position[2]};
 const float before_x=actor.direct_controller.destination[0]-actor.position[0];
 const float before_y=actor.direct_controller.destination[1]-actor.position[1];
 const float after_x=actor.direct_controller.destination[0]-candidate[0];
 const float after_y=actor.direct_controller.destination[1]-candidate[1];
 if(!(after_x*after_x+after_y*after_y<before_x*before_x+before_y*before_y))return false;
 auto accepted_object=actor.direct_nav_object;
 dh2::navigation::PositionResult accepted{};
 if(dh2_nav_validate_position(&accepted,&level.native_floor->collision_world,
      &accepted_object.motion,candidate,&live_motion_policy)!=0||accepted.kind!=2)return false;
 actor.direct_nav_object=accepted_object;
 std::copy(candidate,candidate+3,actor.position.begin());
 std::copy(candidate,candidate+3,path.position);
 std::copy(candidate,candidate+3,actor.direct_controller.position);
 actor.placement[12]=candidate[0];actor.placement[13]=candidate[1];
 actor.placement[14]=candidate[2];
 return true;
}
void update_enemy(ObjectActor& actor,int table,unsigned dt_ms){
 if(actor.source_room_zone_managed&&!actor.source_updates_enabled)return;
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
 if(!result.target_present){actor.combat_target=-1;actor.target_seeking=false;stop_direct_monster_path(actor);if(actor.ai_attack||actor.state=="Walk"){select("Idle");actor.ai_attack=false;}
  __android_log_print(ANDROID_LOG_INFO,"DH2Native","Enemy target cleared | %s | event %u | Prince dead %u | actor-owned route stopped",actor.name.c_str(),result.event_count?result.events[result.event_count-1]:0,prince_combat.life.dead);return;}
 const auto* events=result.events;
 const auto* event_end=events+std::min<std::uint32_t>(result.event_count,3);
 const bool target_out_of_range=std::find(events,event_end,14)!=event_end;
 const bool idle_or_attacking=actor.state=="Idle"||actor.state=="Walk"||actor.state=="Attack";
 if(target_out_of_range&&actor.target_seeking&&idle_or_attacking){
  // Source uses GameObject::GetInteractionSpot here. That provider is not
  // projected yet, so the native Player target position is the explicit fallback.
  const float target_position[]{actor_position[0],actor_position[1],actor_position[2]};
  if(!direct_monster_move_to(actor,target_position))
   __android_log_print(ANDROID_LOG_WARN,"DH2Native","Monster MoveTo path unavailable | %s | event 14 | target %.6g %.6g %.6g",actor.name.c_str(),target_position[0],target_position[1],target_position[2]);
 }
 if(result.event_count&&result.events[result.event_count-1]==17&&(actor.state!="Attack"||!actor.scheduler.active())){
  stop_direct_monster_path(actor);select("Attack");actor.ai_attack=true;__android_log_print(ANDROID_LOG_INFO,"DH2Native","Enemy melee selected | %s | target Prince | event 17 | distance squared bits %08x | clip %d | native controller adapter",actor.name.c_str(),range.distance_bits,actor.scheduler.clip().anim);
 }
 if(advance_direct_monster_path(actor,dt_ms)){
  if(actor.state!="Walk")select("Walk");
 }else if(actor.state=="Walk"&&actor.direct_path_ready&&!actor.direct_path.count){
  select("Idle");
 }
 // Character body/velocity, animation-driven locomotion, interaction-spot,
 // obstacle-avoidance and full Character FSM providers remain unsupported.
}
void apply_actor_to_player(ObjectActor& attacker,const dh2::data::CombatEventAction& action){
 if(prince_combat.life.dead)return;
 if(attacker.ai_attack&&enemy_ai_enabled&&!actor_player_range(attacker).melee)return;
 // The prototype supplies state 3 when standing and 13 while walking.
 // Original SM_IsIdle(false) accepts both; do not suppress its hit reaction
 // merely because movement input is held. Full original FSM producers remain pending.
 const bool idle=dh2_character_state_is_idle(prince_state.current,0)==1;
 auto ap=dh2::data::property_view(actor_property_rules,attacker.properties),dp=dh2::data::property_view(actor_property_rules,prince_combat.properties);
 dh2::data::melee_pipeline::Owner source_attacker{&ap,&attacker.combat_state,-1,-1,0,0,0,5};
 dh2::data::melee_pipeline::Owner source_player{&dp,&prince_combat.life,-1,-1,0,0,0,prince_state.current};
 const unsigned aggro_facts=dh2::data::aggro_owner_player|(attacker.combat_state.dead?dh2::data::aggro_target_dead:0u);
 CombatAggroBeforeHit aggro{&prince_combat.aggro,&attacker.aggro,prince_character.identity(),attacker.identity,aggro_facts};
 const dh2::data::melee_pipeline::Request request{
     &source_attacker, &source_player, &combat_random,
     static_cast<std::uint32_t>(action.offhand),
     static_cast<std::uint32_t>(idle),
     &add_combat_threat_before_hit, &aggro};
 dh2::data::melee_pipeline::Exchange exchange;
 if(dh2::data::melee_pipeline::monster_to_player(&request,&exchange)!=dh2::data::melee_pipeline::Status::complete){__android_log_print(ANDROID_LOG_ERROR,"DH2Native","Player defender application failed");enabled=false;return;}
 auto& result=exchange.result;auto& applied=exchange.application;
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
 const unsigned aggro_facts=(defender->combat_state.dead?dh2::data::aggro_owner_dead:0u)|(attacker.combat_state.dead?dh2::data::aggro_target_dead:0u);
 CombatAggroBeforeHit aggro{&defender->aggro,&attacker.aggro,defender->identity,attacker.identity,aggro_facts};
 const dh2::data::MonsterApplicationRequest request{&result,&ap,&dp,&attacker.combat_state,&defender->combat_state,&add_combat_threat_before_hit,&aggro};
 if(dh2_combat_melee(&result,&av,&dv,&combat_random,action.offhand,0)||dh2_combat_apply_monster(&applied,&request)){__android_log_print(ANDROID_LOG_ERROR,"DH2Native","Native combat application failed");enabled=false;return;}
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
int clear_kill_selection_projection(void* raw,std::uintptr_t victim){
 auto* actor=static_cast<ObjectActor*>(raw);
 if(!actor||actor->identity!=victim)return 1;
 const int selected=prince_combat.target;
 if(selected>=0&&std::size_t(selected)<world_objects.size()&&
    std::uint64_t(selected)+0x100000002ull==victim)
  prince_combat.target=-1;
 return 0;
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
 __android_log_print(ANDROID_LOG_INFO,"DH2Native","Player attack selected | target %d | %s | root %d | clip %d | canonical V4 equipment | native state %d",target,defender->name.c_str(),prince_state.current_animation,prince_locomotion.current_clip(),prince_state.current);
 return "Attacking";
}
std::array<int,7> player_vitals(){return {prince_combat.properties.resolved[36],prince_combat.properties.resolved[38],prince_combat.properties.resolved[41],prince_combat.properties.resolved[43],int(prince_combat.life.dead),int(prince_combat.life.low_health_armed),prince_state.current};}
bool ui_player_identity(std::uintptr_t& identity,std::string& error){
 if(!world_mode||!prince_source_ai||!prince_source_ai->character_identity||
    !prince_combat.savegame||prince_combat.savegame->character()!=prince_source_ai->character_identity){
  error="Gameplay UI requires the current Character and its associated Save";return false;
 }
 identity=prince_source_ai->character_identity;error.clear();return true;
}
bool ui_player_controller_allowed(std::uintptr_t character,bool& allowed,std::string& error){
 std::uintptr_t current=0;if(!ui_player_identity(current,error))return false;
 if(character!=current){error="Authored joystick controller gate requires the attached Player Character";return false;}
 allowed=prince_controller_forced||(!controller_global_blocked&&!prince_state.controller_locked);
 error.clear();return true;
}
bool ui_player_class_specialization_text_ids(std::uintptr_t identity,
 std::array<std::int32_t,4>& text_ids,std::string& error){
 std::uintptr_t current=0;
 if(!ui_player_identity(current,error))return false;
 if(identity!=current||!prince_combat.profile_characters||
    prince_combat.savegame->character()!=identity||
    prince_combat.character_class!=prince_combat.savegame->class_id()){
  error="Class specialization lookup requires the active Player, Save, and Character table row";return false;
 }
 return dh2::data::possible_class_specialization_text_ids(
     *prince_combat.profile_characters,prince_combat.savegame->class_id(),text_ids,error);
}
bool ui_player_name(std::uintptr_t identity,std::string& name,std::string& error){
 std::uintptr_t current=0;
 if(!ui_player_identity(current,error))return false;
 if(identity!=current){error="Gameplay UI name query crossed the active Player Character owner";return false;}
 name=prince_combat.savegame->name();error.clear();return true;
}
namespace {
struct UiPlayerReloadContext {
 std::uintptr_t character{};
 void* menu_context{};
 model_renderer::UiPlayerReloadMenuServiceV1 menu_service{};
 std::string error;
};
int ui_player_reload_service(void* raw,const dh2::ui::MenuReloadRequest32V1* request,
                             dh2::ui::MenuReloadResponse16V1* response){
 if(!raw||!request||!response)return -1;
 auto& context=*static_cast<UiPlayerReloadContext*>(raw);*response={};context.error.clear();
 if(request->service!=dh2::ui::reload_spec_prompt_v1&&request->subject!=context.character){
  context.error="NativeReloadSkills crossed the authoritative Player Character identity";return -1;
 }
 if(!prince_skills||!prince_skills->initialized()||!prince_combat.savegame||
    prince_combat.savegame->character()!=context.character){
  context.error="NativeReloadSkills same-Player Save/skill owner is unavailable";return -1;
 }
 switch(request->service){
 case dh2::ui::reload_remove_buffs_v1:
  if(!prince_skills->remove_all_buffs(context.error))return -1;
  return 0;
 case dh2::ui::reload_saved_skills_v1:
  if(!prince_combat.save_transport||
     &prince_combat.save_transport->loader().save()!=prince_combat.savegame.get()||
     !prince_combat.save_transport->loader().load(std::int32_t(request->argument),context.error))return -1;
  return 0;
 case dh2::ui::reload_skill_instances_v1:
  if(!prince_combat.save_transport||
     !prince_skills->reload_skill_instances(prince_combat.save_transport->loader(),context.error))return -1;
  return 0;
 case dh2::ui::reload_update_skills_v1:
  if(!prince_skills->update_after_source_skill_inputs_changed(context.error))return -1;
  return 0;
 case dh2::ui::reload_recalculate_v1:
  if(!prince_skills->recalculate_properties(request->argument==1,context.error))return -1;
  return 0;
 case dh2::ui::reload_check_items_v1:
  if(!player_equipment_native||!player_equipment_native->services||
     !player_equipment_native->services->check_item_requirements(context.error)){
   if(context.error.empty())context.error="same-player Character::CheckItems owner unavailable";
   return -1;
  }
  return 0;
 case dh2::ui::reload_saved_level_v1:
  response->value=prince_combat.savegame->level();return 0;
 case dh2::ui::reload_saved_class_v1:
  response->value=prince_combat.savegame->class_id();return 0;
 case dh2::ui::reload_menu_fx_v1:
 case dh2::ui::reload_spec_prompt_v1:
  if(!context.menu_service){context.error="current character-menu movie service is unavailable";return -1;}
  return context.menu_service(context.menu_context,request->service,request->argument,
      request->subject,request->path,request->callback,response->identity,
      response->value,context.error);
 default:
  context.error="unknown NativeReloadSkills source service";return -1;
 }
}
}
bool ui_player_reload_skills(std::uintptr_t character,void* menu_context,
                             UiPlayerReloadMenuServiceV1 menu_service,
                             UiPlayerReloadResultV1& output,std::string& error){
 output={};std::uintptr_t current=0;
 if(!ui_player_identity(current,error)||character!=current||!prince_skills||
    !prince_skills->initialized()||!prince_combat.save_transport||
    !prince_combat.inventory||prince_combat.inventory->character()!=character||
    !prince_combat.savegame||
    &prince_combat.save_transport->loader().save()!=prince_combat.savegame.get()){
  if(error.empty())error="NativeReloadSkills requires the active same-Character Save, inventory, and Player Runtime";
  return false;
 }
 UiPlayerReloadContext context{character,menu_context,menu_service,{}};
 const dh2::ui::MenuReloadServices16V1 services{&context,ui_player_reload_service};
 dh2::ui::MenuReloadResult16V1 result{};
 const auto status=dh2_character_menu_reload_v1(&result,character,&services);
 output={result.phase,result.calls,result.specialization};
 if(status==1){error.clear();return true;}
 error=context.error.empty()?"NativeReloadSkills stopped at source phase "+
     std::to_string(result.phase):context.error;
 return false;
}
bool ui_player_stats(std::uintptr_t identity,UiPlayerStatsReadV1& out,std::string& error){
 std::uintptr_t current=0;if(!ui_player_identity(current,error))return false;
 if(identity!=current||!prince_combat.profile_characters||prince_combat.character_class<0||
    std::size_t(prince_combat.character_class)>=prince_combat.profile_characters->names.size()||
    !prince_combat.inventory||prince_combat.inventory->character()!=identity){
  error="Character stats require the active Character, Save, selected class row and its canonical inventory";return false;
 }
 auto fixed_int=[](std::int32_t raw){
  return raw>=0?raw/256:-static_cast<std::int32_t>((-std::int64_t(raw)+255)/256);
 };
 auto property_int=[&](std::size_t index){return fixed_int(prince_combat.properties.resolved[index]);};
 auto signed_add=[](std::int32_t a,std::int32_t b){
  const std::uint32_t raw=std::uint32_t(a)+std::uint32_t(b);std::int32_t result;
  std::memcpy(&result,&raw,sizeof(result));return result;
 };
 auto raw_property=[](std::size_t index){return prince_combat.properties.resolved[index];};
 auto property_view=dh2::data::property_view(actor_property_rules,prince_combat.properties);
 dh2::data::PlayerEquipmentQueriesLiveV1 equipment(*prince_combat.inventory,property_view);
 dh2::data::CombatantView combat{};
 if(!equipment.combat_view(combat,error))return false;
 dh2::data::EquipmentWeaponFacts12V1 weapon_facts{};
 if(!equipment.facts(weapon_facts,error))return false;
 std::int32_t main_damage_bonus=0,off_damage_bonus=0;
 if(dh2_combat_bonus(&combat,0,&main_damage_bonus)||dh2_combat_bonus(&combat,1,&off_damage_bonus)){
  error="Character stats weapon damage bonus projection failed";return false;
 }
 bool two_handed=false;if(!prince_combat.inventory->has_two_hander(false,two_handed,error))return false;
 UiPlayerStatsReadV1 value;value.name=prince_combat.savegame->name();
 value.class_name=prince_combat.profile_characters->names[std::size_t(prince_combat.character_class)];
 switch(prince_combat.player_class_id){
  case 0x122:case 0x123:case 0x124:value.icon=3;break;
  case 0x145:case 0x146:case 0x147:value.icon=2;break;
  default:value.icon=1;break;
 }
 value.level=property_int(19);value.hp=property_int(36);value.hp_bonus=property_int(37);
 value.max_hp=property_int(38);value.mp=property_int(41);value.mp_bonus=property_int(42);
 value.max_mp=property_int(43);value.xp=property_int(33);value.max_xp=property_int(34);
 value.strength=property_int(149);value.dexterity=property_int(150);
 value.endurance=property_int(151);value.energy=property_int(152);value.points=property_int(148);
 const auto attack_bonus=combat.main_damage_class<0?0:
     fixed_int(signed_add(raw_property(51+std::size_t(combat.main_damage_class)),
                          combat.dual_wield?raw_property(58):0));
 const auto critical_bonus=combat.main_damage_class<0?0:
     property_int(63+1+std::size_t(combat.main_damage_class));
 value.rating_attack=signed_add(property_int(50),attack_bonus);
 value.rating_critical=signed_add(property_int(63),critical_bonus);
 value.rating_defense=property_int(59);value.rating_dodge=property_int(60);
 value.rating_block=property_int(61);
 value.resistance_fire=property_int(74);value.resistance_earth=property_int(77);
 value.resistance_water=property_int(75);value.resistance_air=property_int(78);
 value.resistance_lightning=property_int(76);
 value.damage_min_main_hand=signed_add(property_int(79),fixed_int(main_damage_bonus));
 value.damage_max_main_hand=signed_add(property_int(80),fixed_int(main_damage_bonus));
 value.damage_elemental_min_main_hand=property_int(95);
 value.damage_elemental_max_main_hand=property_int(96);
 value.damage_elemental_type_main_hand=property_int(97);
 value.damage_min_off_hand=signed_add(property_int(81),fixed_int(off_damage_bonus));
 value.damage_max_off_hand=signed_add(property_int(82),fixed_int(off_damage_bonus));
 value.damage_elemental_min_off_hand=property_int(98);
 value.damage_elemental_max_off_hand=property_int(99);
 value.damage_elemental_type_off_hand=property_int(100);
 value.damage_fire_min_main_hand=property_int(101);value.damage_fire_max_main_hand=property_int(102);
 value.damage_water_min_main_hand=property_int(105);value.damage_water_max_main_hand=property_int(106);
 value.damage_lightning_min_main_hand=property_int(109);value.damage_lightning_max_main_hand=property_int(110);
 value.damage_air_min_main_hand=property_int(117);value.damage_air_max_main_hand=property_int(118);
 value.damage_earth_min_main_hand=property_int(113);value.damage_earth_max_main_hand=property_int(114);
 value.is_weapon_two_handed=two_handed;
 value.has_off_hand_weapon=(weapon_facts.flags&dh2::data::weapon_dual)!=0;
 value.has_staff=(weapon_facts.flags&dh2::data::weapon_staff)!=0;
 value.has_bow=(weapon_facts.flags&dh2::data::weapon_bow)!=0;
 value.menu_average_melee_to_hit=property_int(207);value.physical_armor=property_int(71);
 value.spell_rating_dodge=property_int(164);value.menu_melee_damage_reduction=property_int(209);
 value.spell_rating_critical=property_int(165);value.menu_average_spell_to_hit=property_int(208);
 value.spell_damage_bonus_fire=property_int(166);value.spell_damage_bonus_earth=property_int(169);
 value.spell_damage_bonus_water=property_int(167);value.spell_damage_bonus_air=property_int(170);
 value.spell_damage_bonus_lightning=property_int(168);
 value.regen_hp=property_int(39);value.regen_mp=property_int(44);
 value.leech_hp=property_int(132);value.leech_mp=property_int(133);
 value.special_loot_gold_multiplier=property_int(195);
 value.special_loot_magical_chance=property_int(196);value.stun_resist_chance=property_int(138);
 out=std::move(value);error.clear();return true;
}
bool ui_player_assign_stat(std::uintptr_t identity,std::uint32_t stat,std::string& error){
 std::uintptr_t current=0;if(!ui_player_identity(current,error))return false;
 if(identity!=current||!prince_combat.profile_characters||
    prince_combat.character_class<0||
    std::size_t(prince_combat.character_class)>=prince_combat.profile_characters->rows.size()||
    actor_class_rows.empty()||!native_debug){
  error="Stat assignment requires the active Player, selected Character row, class formulas and DebugSwitches owner";return false;
 }
 auto view=dh2::data::property_view(actor_property_rules,prince_combat.properties);
 dh2::ui::CharacterMenuStatGraphV1 graph{
  &prince_combat.properties,&view,prince_combat.profile_characters.get(),
  actor_class_rows.data(),std::uint32_t(actor_class_rows.size()),
  prince_combat.character_class,{}, {}};
 graph.debug_load=[](std::string& callback_error){
  if(!native_debug){callback_error="Shared native DebugSwitches owner unavailable";return false;}
  if(native_debug->runtime().load(native_debug->globals(),native_debug->services())!=
     dh2::debug_switches::Status::complete){callback_error="Shared native DebugSwitches load failed";return false;}
  return true;
 };
 graph.debug_query=[](const char* key,bool& result,std::string& callback_error){
  if(!native_debug||!key){callback_error="Shared DebugSwitches query requires its owner and key";return false;}
  std::uint8_t value=0;
  if(native_debug->runtime().get_switch(key,native_debug->globals(),native_debug->services(),value)!=
     dh2::debug_switches::Status::complete){callback_error="Shared native DebugSwitches query failed";return false;}
  result=value!=0;return true;
 };
 return dh2::ui::character_menu_assign_stat_v1(graph,stat,error);
}
bool ui_player_skill_slots(std::uintptr_t identity,std::array<std::int32_t,3>& slots,std::string& error){
 std::uintptr_t current=0;if(!ui_player_identity(current,error))return false;
 if(identity!=current||!prince_combat.savegame||!prince_combat.savegame->skills_initialized()){
  error="Gameplay skill-slot read requires the active Character's initialized Save";return false;
 }
 for(std::int32_t i=0;i<3;++i)slots[std::size_t(i)]=prince_combat.savegame->skill_in_slot(i);
 error.clear();return true;
}
bool ui_player_set_current_quest(std::uintptr_t identity,std::int32_t quest_id,std::string& error){
 std::uintptr_t current=0;if(!ui_player_identity(current,error))return false;
 if(identity!=current||!prince_combat.savegame||prince_combat.savegame->character()!=identity){
  error="Current Quest selection requires the active Character's canonical Save";return false;
 }
 if(native_host.online){error="Online Quest selection is unavailable in this offline host";return false;}
 return dh2::data::quest_current_selection_v1::set(*prince_combat.savegame,
     false,native_save_difficulty,quest_id,error);
}
bool ui_player_save_game(std::uintptr_t identity,std::string& error){
 std::uintptr_t current=0;if(!ui_player_identity(current,error))return false;
 if(identity!=current||!prince_combat.savegame||prince_combat.savegame->character()!=identity||
    !prince_combat.save_transport||
    &prince_combat.save_transport->loader().save()!=prince_combat.savegame.get()){
  error="NativeSaveGame requires the active Character's canonical Save/profile transport";return false;
 }
 return prince_combat.save_transport->save_gameplay(error);
}
bool ui_player_skill_points(std::uintptr_t identity,std::int32_t& points,std::string& error){
 std::uintptr_t current=0;if(!ui_player_identity(current,error))return false;
 if(identity!=current){error="Gameplay skill-point read crossed the active Player Character owner";return false;}
 const auto raw=prince_combat.properties.resolved[157];
 points=raw>=0?raw/256:-static_cast<std::int32_t>((-std::int64_t(raw)+255)/256);
 error.clear();return true;
}
bool ui_player_train_skill(std::uintptr_t identity,std::uint32_t skill_index,bool test_only,
                           std::uint32_t& source_return,std::int32_t& points,std::string& error){
 std::uintptr_t current=0;if(!ui_player_identity(current,error))return false;
 if(identity!=current||!prince_combat.inventory||!prince_skills||!prince_skills->initialized()||
    !prince_combat.savegame||!prince_combat.savegame->skills_initialized()){
  error="Skill training requires the active Save, Player UpdateSkills owner and canonical V4 inventory";return false;
 }
 if(!prince_skills->train_skill(skill_index,test_only,*prince_combat.inventory,source_return,error))return false;
 const auto raw=prince_combat.properties.resolved[157];
 points=raw>=0?raw/256:-static_cast<std::int32_t>((-std::int64_t(raw)+255)/256);
 error.clear();return true;
}
bool ui_player_skill(std::uintptr_t identity,std::uint32_t index,UiSkillReadV1& out,std::string& error){
 std::uintptr_t current=0;if(!ui_player_identity(current,error))return false;
 if(identity!=current||!prince_combat.savegame||!prince_combat.savegame->skills_initialized()||
    !actor_skill_catalogue||!actor_skill_catalogue->tables||native_save_difficulty<0||native_save_difficulty>2){
  error="Gameplay skill-detail read requires the active Save and decoded SkillTables";return false;
 }
 const auto& tables=actor_skill_catalogue->tables->skills();
 auto selector=prince_combat.properties.resolved[28];
 if(selector<0||std::size_t(selector)>=tables.skill_lists.size())selector=3;
 if(std::size_t(selector)>=tables.skill_lists.size()||index>=tables.skill_lists[std::size_t(selector)].members.size()){
  error="Selected Character SkillTree has no requested skill row";return false;
 }
 const auto id=tables.skill_lists[std::size_t(selector)].members[index];
 const auto& rows=tables.skills;
 if(id<0||std::size_t(id)>=rows.size()){
  error="Selected Character SkillTree row is outside the decoded SkillTable";return false;
 }
 const auto& row=rows[std::size_t(id)];UiSkillReadV1 value;
 value.id=id;value.level=index<prince_combat.savegame->skills().size()?prince_combat.savegame->skill_level(index):-1;
 value.slot=prince_combat.savegame->skill_slot(index);value.required_level=row.level;
 const auto raw_level=prince_combat.properties.resolved[19];
 value.character_level=raw_level>=0?raw_level/256:-static_cast<std::int32_t>((-std::int64_t(raw_level)+255)/256);
 value.name_text=row.skill_name;value.description_text=row.skill_description;
 value.current_text=row.skill_curr_level;value.next_text=row.skill_next_level;
 // NativeGetSkillDetails calls SG_GetGameDifficultyUnlocked for the maximum
 // skill level constants, which is distinct from the selected Save difficulty
 // used by SG_GetCurrentFaerieId.
 value.difficulty=prince_combat.savegame->unlocked_difficulty();
 value.faerie_dependent_text=row.fairie_dependant_text;
 const auto property_view=dh2::data::property_view(actor_property_rules,prince_combat.properties);
 const auto increment=dh2::player_skill_progression_v1::can_increment_skill(
     &property_view,&tables,prince_combat.savegame.get(),identity,index);
 if(increment.status!=dh2::player_skill_progression_v1::PredicateStatus::evaluated){
  error="Character::CanIncrementSkill did not produce a source-backed UI result";return false;
 }
 value.can_increment=increment.value!=0;
 if(row.fairie_dependant_text){
  const auto& faery_tables=actor_skill_catalogue->tables->faeries();
  auto faery_list=prince_combat.properties.resolved[29];
  if(faery_list<0||std::size_t(faery_list)>=faery_tables.faery_lists.size())faery_list=0;
  if(std::size_t(faery_list)>=faery_tables.faery_lists.size()){
   error="Character::GetCharFaeryListId fallback row is unavailable";return false;
  }
  const auto current_faery=prince_combat.savegame->current_faery(std::uint32_t(native_save_difficulty));
  const auto& members=faery_tables.faery_lists[std::size_t(faery_list)].members;
  if(current_faery<0||std::size_t(current_faery)>=members.size()){
   error="Character::GetCharFaery source index is outside the selected FaeryList";return false;
  }
  const auto faery_row=members[std::size_t(current_faery)];
  if(faery_row<0||std::size_t(faery_row)>=faery_tables.faeries.size()){
   error="Character::GetCharFaery selected row is outside the decoded FaeryTable";return false;
  }
  // NativeGetSkillDetails reads FaeryTable+8 when FairieDependantText is set.
  // The serialized table's third source field is ModelFile at this offset.
  value.faerie_text_offset=faery_tables.faeries[std::size_t(faery_row)].model_file;
 }
 value.assignable=row.skill_assignable;value.icon=row.skill_icon;out=std::move(value);error.clear();return true;
}
bool ui_player_skill_display_properties(std::uintptr_t identity,std::uint32_t index,
                                       std::int32_t level,std::vector<std::int32_t>& out,
                                       std::string& error){
 std::uintptr_t current=0;if(!ui_player_identity(current,error))return false;
 if(identity!=current||!prince_combat.savegame||!prince_combat.savegame->skills_initialized()||
    !actor_skill_catalogue||!actor_skill_catalogue->tables||!prince_skills||!prince_skills->initialized()){
  error="Skill detail projection requires the active Save, decoded SkillTables and canonical Player skill VM";return false;
 }
 const auto& tables=actor_skill_catalogue->tables->skills();
 auto selector=prince_combat.properties.resolved[28];
 if(selector<0||std::size_t(selector)>=tables.skill_lists.size())selector=3;
 if(std::size_t(selector)>=tables.skill_lists.size()||index>=tables.skill_lists[std::size_t(selector)].members.size()){
  error="Selected Character SkillTree has no requested SkillInfo slot";return false;
 }
 const auto row_id=tables.skill_lists[std::size_t(selector)].members[index];
 if(row_id<0||std::size_t(row_id)>=tables.skills.size()){
  error="Selected Character SkillTree SkillInfo row is outside the decoded SkillTable";return false;
 }
 std::vector<std::int32_t> shared_temp;
 const auto status=prince_skills->skill_info(index,level,shared_temp,error);
 if(status<0)return false;
 out.clear();
 // Source Lua errors/null prepared instances leave the shared temp sheet as-is;
 // there is no formatted property payload for this level in that case.
 if(status>0){error.clear();return true;}
 const auto& display_props=tables.skills[std::size_t(row_id)].display_props;
 out.reserve(display_props.size());
 for(const auto property:display_props){
  if(property<0||std::size_t(property)>=shared_temp.size()){
   error="Skill DisplayProps index is outside the shared Character property temp sheet";return false;
  }
  out.push_back(shared_temp[std::size_t(property)]);
 }
 error.clear();return true;
}
bool ui_player_equip_skill(std::uintptr_t identity,std::int32_t slot,std::int32_t skill_index,std::string& error){
 std::uintptr_t current=0;if(!ui_player_identity(current,error))return false;
 if(identity!=current||!prince_combat.savegame||!prince_combat.inventory||
    !actor_skill_catalogue||!actor_skill_catalogue->tables||!prince_skills||
    !prince_skills->initialized()||!prince_combat.savegame->skills_initialized()){
  error="Skill assignment requires the active Character, initialized Save, V4 inventory and Player UpdateSkills owner";return false;
 }
 if(slot<0||slot>=3||skill_index<0){error="Skill assignment slot or skill index is outside the source UI domain";return false;}
 const auto& tables=actor_skill_catalogue->tables->skills();
 auto selector=prince_combat.properties.resolved[28];
 if(selector<0||std::size_t(selector)>=tables.skill_lists.size())selector=3;
 if(std::size_t(selector)>=tables.skill_lists.size()||
    std::size_t(skill_index)>=tables.skill_lists[std::size_t(selector)].members.size()||
    std::size_t(skill_index)>=prince_combat.savegame->skills().size()){
  error="Character::IsSkillEquippable index is outside the active SkillTree and Save rows";return false;
 }
 const auto row_id=tables.skill_lists[std::size_t(selector)].members[std::size_t(skill_index)];
 if(row_id<0||std::size_t(row_id)>=tables.skills.size()||
    prince_combat.savegame->skills()[std::size_t(skill_index)].id!=row_id){
  error="Active SkillTree row does not match the canonical Save skill row";return false;
 }
 const auto& row=tables.skills[std::size_t(row_id)];
 const auto raw_level=prince_combat.properties.resolved[19];
 const auto character_level=raw_level>=0?raw_level/256:
  -static_cast<std::int32_t>((-std::int64_t(raw_level)+255)/256);
 // Character::IsSkillEquippable: IsSkillAvailable (level gate), authored
 // Skill+0x48 != -1 (SkillAssignable), then SG_GetSkillLevel(index) > 0.
 if(character_level<row.level||!row.skill_assignable||
    prince_combat.savegame->skill_level(std::uint32_t(skill_index))<=0){
  error="Character::IsSkillEquippable rejected this skill";return false;
 }
 struct UpdateContext {std::uintptr_t character;dh2::native::player_skills::Runtime* skills;};
 UpdateContext update{current,prince_skills.get()};
 const dh2::data::SavedSkillUpdateServicesV1 services{&update,
  [](void* raw,std::uintptr_t character,std::string& callback_error)->bool{
   const auto& context=*static_cast<UpdateContext*>(raw);
   if(character!=context.character||!context.skills||!context.skills->initialized()){
    callback_error="Character::UpdateSkills owner differs from the active Player";return false;
   }
   return context.skills->update_after_saved_skill_slot_write(callback_error);
  }};
 dh2::player_saved_skill_slots_v1::BoundSlotsV1 saved_slots(*prince_combat.savegame,*prince_combat.inventory);
 if(saved_slots.set_skill_in_slot(slot,std::uint32_t(skill_index),services,error)!=
    dh2::player_saved_skill_slots_v1::Status::ok)return false;
 error.clear();return true;
}
bool ui_player_active_faery(std::uintptr_t identity,std::int32_t& id,std::int32_t& level,std::string& error){
 std::uintptr_t current=0;if(!ui_player_identity(current,error))return false;
 if(identity!=current||native_save_difficulty<0||native_save_difficulty>2){
  error="Gameplay faery read requires the active Save and selected difficulty";return false;
 }
 id=prince_combat.savegame->current_faery(std::uint32_t(native_save_difficulty));
 level=id>=0?prince_combat.savegame->faery_level(std::uint32_t(id),std::uint32_t(native_save_difficulty)):-1;
 error.clear();return true;
}
bool ui_player_set_active_faery(std::uintptr_t identity,std::uint32_t id,std::string& error){
 std::uintptr_t current=0;if(!ui_player_identity(current,error))return false;
 if(identity!=current||native_save_difficulty<0||native_save_difficulty>2||
    !prince_combat.savegame||!prince_combat.savegame->faeries_initialized()[std::size_t(native_save_difficulty)]||
    !prince_skills||!prince_skills->initialized()){
  error="Faery selection requires the active Save, difficulty and retained Player skill owner";return false;
 }
 const auto difficulty=std::uint32_t(native_save_difficulty);
 // Character::ChangeFaery asserts that the row is in range, mutates the
 // difficulty-specific Save first, and then calls CharAI::UpdateAllSkills.
 // The fixed Save row is five entries, established by source _InitFaeries.
 if(!prince_combat.savegame->set_current_faery(id,difficulty,error))return false;
 if(!prince_skills->update_after_source_skill_inputs_changed(error))return false;
 error.clear();return true;
}
bool ui_player_faery_unlocked(std::uintptr_t identity,std::uint32_t id,bool& unlocked,std::string& error){
 std::uintptr_t current=0;if(!ui_player_identity(current,error))return false;
 if(identity!=current||native_save_difficulty<0||native_save_difficulty>2||id>=5||!native_debug){
  error="Gameplay faery unlock read requires its active Save, difficulty and DebugSwitches owner";return false;
 }
 if(!prince_combat.savegame->faeries_initialized()[std::size_t(native_save_difficulty)]){
  error="Gameplay faery state is not initialized in the active Save";return false;
 }
 if(native_debug->runtime().load(native_debug->globals(),native_debug->services())!=dh2::debug_switches::Status::complete){
  error="Shared native DebugSwitches load failed for faery query";return false;
 }
 std::uint8_t all=0;
 if(native_debug->runtime().get_switch("UnlockAllFaeries",native_debug->globals(),native_debug->services(),all)!=dh2::debug_switches::Status::complete){
  error="Shared native UnlockAllFaeries query failed";return false;
 }
 unlocked=all!=0||prince_combat.savegame->faeries()[std::size_t(native_save_difficulty)][id].state==1;
 error.clear();return true;
}
bool ui_player_inventory_gold(std::uintptr_t identity,std::int32_t& gold,std::string& error){
 std::uintptr_t current=0;if(!ui_player_identity(current,error))return false;
 if(identity!=current||!prince_combat.inventory){error="Gameplay inventory gold read requires the active V4 inventory";return false;}
 gold=prince_combat.inventory->gold();error.clear();return true;
}
namespace {
// Ported from Adam's character_menu_item_equippable_v1, which models
// ItemInstance::IsEquippableBy. The live native host is explicitly offline;
// online/remote ownership remains unsupported rather than guessed here.
bool inventory_item_equippable_by_player(const dh2::data::ItemRecord164& item,
                                         bool& result,std::string& error){
 if(native_host.online){error="ItemInstance::IsEquippableBy online/remote query is unavailable in this offline host";return false;}
 const auto* actors=prince_combat.profile_characters.get();
 const auto saved_class=prince_combat.character_class;
 if(!actors||saved_class<0||std::size_t(saved_class)>=actors->names.size()||
    std::size_t(saved_class)>=actors->rows.size()){
  error="ItemInstance::IsEquippableBy requires the active saved class row";return false;
 }
 auto required_class=saved_class;
 const auto class_requirement=item.words[34];
 if(class_requirement>=1&&class_requirement<=9){
  static constexpr const char* names[]={"KnightPlayerBase","KnightPlayerBase_Berserker",
   "KnightPlayerBase_Paladin","RoguePlayerBase","RoguePlayerBase_Assassin",
   "RoguePlayerBase_Archer","MagePlayerBase","MagePlayerBase_Necromancer",
   "MagePlayerBase_Illusionist"};
  const auto at=std::find(actors->names.begin(),actors->names.end(),names[class_requirement-1]);
  if(at==actors->names.end()){
   error="ItemInstance::IsEquippableBy class requirement is absent from the active cache";return false;
  }
  required_class=std::int32_t(at-actors->names.begin());
 }
 const auto fixed=[](std::int32_t value){
  const auto bits=std::uint32_t(value)<<8;std::int32_t result;std::memcpy(&result,&bits,sizeof(result));return result;
 };
 if(prince_combat.properties.resolved[19]<fixed(item.words[29])){result=false;error.clear();return true;}
 for(unsigned i=0;i<4;++i){
  const auto a=std::uint32_t(prince_combat.properties.resolved[149+i]);
  const auto b=std::uint32_t(prince_combat.properties.resolved[153+i]);
  const auto sum=a+b;std::int32_t attribute;std::memcpy(&attribute,&sum,sizeof(attribute));
  if(attribute<fixed(item.words[30+i])){result=false;error.clear();return true;}
 }
 result=saved_class==required_class;error.clear();return true;
}
}
bool ui_player_inventory_slot(std::uintptr_t identity,std::int32_t requested,std::vector<UiInventoryItemReadV1>& out,std::string& error){
 std::uintptr_t current=0;if(!ui_player_identity(current,error))return false;
 if(identity!=current||!prince_combat.inventory){error="Gameplay inventory list requires the active V4 inventory";return false;}
 if(requested<0||requested>9){error="Gameplay inventory slot is outside the recovered EquipmentSlots range";return false;}
 std::vector<UiInventoryItemReadV1> rows;const auto& items=prince_combat.inventory->items();
 rows.reserve(items.size());
 for(std::size_t index=0;index<items.size();++index){
  const auto* slot=items[index].get();if(!slot||!slot->item)continue;
  const auto* definition=dh2::data::item(prince_combat.inventory->table(),slot->item->id);
  if(!definition){error="Gameplay inventory item has no decoded ItemTable row";return false;}
  const auto item_slot=definition->record.words[26];
  if(!dh2::data::inventory_slot_matches_v1(definition->record,
       prince_combat.properties.resolved,std::uint32_t(requested)))continue;
  bool equipped=false;
  if(!prince_combat.inventory->is_equipped(std::uint32_t(index),equipped,error))return false;
  UiInventoryItemReadV1 value;value.id=slot->item->id;value.index=std::int32_t(index);
  value.quantity=slot->item->signed_quantity();value.slot=item_slot;
  value.name=slot->item->name.empty()?definition->name:slot->item->name;value.equipped=equipped;
  value.equippable=false;
  if(requested!=9&&!inventory_item_equippable_by_player(definition->record,value.equippable,error))return false;
  const auto set=std::size_t(prince_combat.inventory->current_equipment());
  const auto& equipment=prince_combat.inventory->equipment();
  const auto paired=requested==1?2:requested==2?1:requested==5?6:requested==6?5:-1;
  if(paired>=0&&set<equipment.size()&&std::size_t(paired)<equipment[set].size())
   value.equipped_other_hand=equipment[set][std::size_t(paired)]==slot;
  rows.push_back(std::move(value));
 }
 out=std::move(rows);error.clear();return true;
}
namespace {
std::int32_t menu_transmute_value(std::int32_t item_value,std::int32_t raw_bonus,
                                  std::uint32_t multiplier_bits);
}
bool ui_player_inventory_item_details(std::uintptr_t identity,std::int32_t requested,
                                      std::uint32_t transmute_multiplier,
                                      UiItemDetailsReadV1& out,std::string& error){
 std::uintptr_t current=0;if(!ui_player_identity(current,error))return false;
 if(identity!=current||!prince_combat.inventory||!prince_combat.item_presentation){
  error="Inventory detail read requires the active V4 inventory and retained ItemPresentation owner";return false;
 }
 const auto& items=prince_combat.inventory->items();
 if(requested<0||std::size_t(requested)>=items.size()||!items[std::size_t(requested)]||
    !items[std::size_t(requested)]->item){error="Inventory detail index has no live V4 Item";return false;}
 const auto& instance=*items[std::size_t(requested)]->item;
 const auto* definition=dh2::data::item(prince_combat.inventory->table(),instance.id);
 if(!definition){error="Inventory detail Item has no decoded ItemTable row";return false;}
 UiItemDetailsReadV1 value;
 value.id=instance.id;value.index=requested;value.value=instance.value;
 // Standard inventory detail (no Merchant argument): source merchant
 // percentages are zero and buy/sell values clamp to one.
 value.buy_value=1;value.sell_value=1;
 value.transmute_property_raw=prince_combat.properties.resolved[197];
 value.transmute_value=menu_transmute_value(instance.value,value.transmute_property_raw,
                                             transmute_multiplier);
 value.name=instance.name.empty()?definition->name:instance.name;
 value.stats=instance.description;value.requirements=instance.requirements;
 value.icon=definition->icon_name;
 value.stackable=(static_cast<std::uint32_t>(definition->record.words[7])&0xffu)!=0;
 if(!inventory_item_equippable_by_player(definition->record,value.equippable,error))return false;
 if(!prince_combat.inventory->is_equipped(std::uint32_t(requested),value.equipped,error))return false;
 const auto set=std::size_t(prince_combat.inventory->current_equipment());
 const auto& equipment=prince_combat.inventory->equipment();
 const auto item_slot=definition->record.words[26];
 const auto paired=item_slot==1?2:item_slot==2?1:item_slot==5?6:item_slot==6?5:-1;
 if(paired>=0&&set<equipment.size()&&std::size_t(paired)<equipment[set].size())
  value.equipped_other_hand=equipment[set][std::size_t(paired)]==items[std::size_t(requested)].get();
 if(!instance.powers.empty()){
  const auto* powers=prince_combat.item_presentation->powers(instance);
  if(!powers||powers->size()!=instance.powers.size()){
   error="Inventory Item power descriptions are absent from the retained V5 presentation owner";return false;
  }
  value.power_descriptions.reserve(powers->size());
  for(std::size_t i=0;i<powers->size();++i){
   if((*powers)[i].id!=instance.powers[i]){error="Inventory Item power presentation diverged from authoritative V4 Item IDs";return false;}
   value.power_descriptions.push_back((*powers)[i].description);
  }
 }
 out=std::move(value);error.clear();return true;
}
namespace {
std::int32_t menu_signed_word(std::uint32_t value){std::int32_t out;std::memcpy(&out,&value,sizeof(out));return out;}
std::int32_t menu_mul32(std::int32_t a,std::int32_t b){
 return menu_signed_word(std::uint32_t(a)*std::uint32_t(b));
}
std::int32_t menu_asr32(std::int32_t value,unsigned shift){
 const auto bits=std::uint32_t(value);
 return menu_signed_word((bits>>shift)|(value<0?(~0u<<(32-shift)):0u));
}
std::int32_t menu_transmute_value(std::int32_t item_value,std::int32_t raw_bonus,
                                 std::uint32_t multiplier_bits){
 const auto multiplier=menu_signed_word(multiplier_bits);
 const auto bonus=menu_signed_word(std::uint32_t(raw_bonus)+256u);
 const auto fixed_value=menu_signed_word(std::uint32_t(item_value)<<8);
 const auto product=menu_mul32(fixed_value,bonus);
 const auto scaled=menu_asr32(product,8);
 const auto result=menu_asr32(menu_mul32(multiplier,scaled),16);
 return result<1?1:result;
}
}
bool ui_player_transmute_item(std::uintptr_t identity,std::int32_t requested,
                              std::uint32_t multiplier,std::string& error){
 std::uintptr_t current=0;if(!ui_player_identity(current,error))return false;
 if(identity!=current||!prince_combat.inventory||!prince_combat.item_presentation||
    !player_equipment_native||!player_equipment_native->services||
    &player_equipment_native->services->inventory()!=prince_combat.inventory.get()||
    prince_combat.inventory->character()!=identity){
  error="Inventory transmute requires the active Player, canonical V4 Item graph and V6-backed equipment services";return false;
 }
 auto& inventory=*prince_combat.inventory;
 const auto index=std::uint32_t(requested); // NativeInvTransmuteItem forwards source ToInt to unsigned ItemIndex.
 if(index>=inventory.items().size()||!inventory.items()[index]||!inventory.items()[index]->item){
  error="NativeInvTransmuteItem source Item slot is unavailable";return false;
 }
 auto& item=*inventory.items()[index]->item;
 const auto value=menu_transmute_value(item.value,prince_combat.properties.resolved[197],multiplier);
 auto services=player_equipment_native->inventory_adapter.inventory_services();
 try{
  if(item.signed_quantity()>1){
   if(!inventory.add_quantity_to_item(item,-1,error))return false;
  }else if(!inventory.remove_inventory_item(index,services,error))return false;
  if(!inventory.add_gold(value,services,error))return false;
 }catch(const std::exception& failure){error=failure.what();return false;}
 auto& view=player_equipment_native->properties;
 if(dh2_property_add(&view,213,256)){
  error="Source transmute counter property 213 rejected its increment";return false;
 }
 if(!player_equipment_native->services->skin_only(error))return false;
 error.clear();return true;
}
bool ui_player_equipped_item(std::uintptr_t identity,std::int32_t requested,UiEquippedItemReadV1& out,bool& present,std::string& error){
 std::uintptr_t current=0;if(!ui_player_identity(current,error))return false;
 if(identity!=current||!prince_combat.inventory){error="Equipped inventory read requires the active V4 inventory";return false;}
 if(requested<0||requested>=9){error="Equipped inventory slot is outside EquipmentSlots::Count";return false;}
 const auto selected=prince_combat.inventory->current_equipment();
 if(selected<0||selected>=2){error="Selected equipment set is outside the source domain";return false;}
 const auto* owned=prince_combat.inventory->equipment()[std::size_t(selected)][std::size_t(requested)];
 present=owned!=nullptr;if(!owned){error.clear();return true;}
 if(!owned->item){error="Equipped inventory slot has no retained Item instance";return false;}
 std::int32_t index=-1;
 const auto& items=prince_combat.inventory->items();
 for(std::size_t i=0;i<items.size();++i)if(items[i].get()==owned){index=static_cast<std::int32_t>(i);break;}
 if(index<0){error="Equipped Item is absent from the authoritative V4 item vector";return false;}
 const auto* definition=dh2::data::item(prince_combat.inventory->table(),owned->item->id);
 if(!definition){error="Equipped Item has no decoded ItemTable row";return false;}
 out={owned->item->id,index,static_cast<std::int32_t>(owned->item->powers.size()),
      owned->item->name.empty()?definition->name:owned->item->name};
 error.clear();return true;
}
bool ui_player_equip_item(std::uintptr_t identity,std::int32_t item_index,
                          std::int32_t equipment_slot,std::string& error){
 std::uintptr_t current=0;if(!ui_player_identity(current,error))return false;
 if(identity!=current||!player_equipment_native||!player_equipment_native->services||
    !prince_combat.inventory||!prince_combat.item_power_tables){
  error="Inventory equip requires the active canonical V4 and V6-backed equipment services";return false;
 }
 if(item_index<0||std::size_t(item_index)>=prince_combat.inventory->items().size()||
    equipment_slot<0||equipment_slot>=9){
  error="Inventory equip index or EquipmentSlots value is outside the source domain";return false;
 }
 if(!player_equipment_native->services->equip(std::uint32_t(equipment_slot),
       std::uint32_t(item_index),error))return false;
 error.clear();return true;
}
bool ui_player_auto_equip(std::uintptr_t identity,std::int32_t item_index,
                          std::int32_t& result,std::string& error){
 std::uintptr_t current=0;if(!ui_player_identity(current,error))return false;
 if(identity!=current||!player_equipment_native||!player_equipment_native->services||
    !prince_combat.inventory||!prince_combat.item_power_tables||
    &player_equipment_native->services->inventory()!=prince_combat.inventory.get()||
    prince_combat.inventory->character()!=identity){
  error="Inventory auto-equip requires the active canonical V4 and V6-backed equipment services";return false;
 }
 if(item_index<0||std::size_t(item_index)>=prince_combat.inventory->items().size()){
  error="Inventory auto-equip index is outside the source Item vector";return false;
 }
 if(!player_equipment_native->services->auto_equip(std::uint32_t(item_index),result,error))return false;
 error.clear();return true;
}
bool ui_player_auto_equip_slot(std::uintptr_t identity,std::int32_t equipment_slot,
                               std::string& error){
 std::uintptr_t current=0;if(!ui_player_identity(current,error))return false;
 if(identity!=current||!player_equipment_native||!player_equipment_native->services||
    !prince_combat.inventory||!prince_combat.item_power_tables||
    &player_equipment_native->services->inventory()!=prince_combat.inventory.get()||
    prince_combat.inventory->character()!=identity){
  error="Inventory slot auto-equip requires the active canonical V4 and V6-backed equipment services";return false;
 }
 if(equipment_slot!=-1&&(equipment_slot<0||equipment_slot>=9)){
  error="Inventory slot auto-equip expects -1 or an EquipmentSlots value from 0 through 8";return false;
 }
 auto& inventory=*prince_combat.inventory;
 auto& equipment=*player_equipment_native->services;
 auto auto_slot=[&](std::uint32_t slot){
  struct Candidate {std::uint32_t index;const dh2::data::ItemInstanceV1* item;const dh2::data::ItemRecord164* row;};
  std::vector<Candidate> candidates;
  for(std::size_t i=0;i<inventory.items().size();++i){
   const auto* cell=inventory.items()[i].get();if(!cell||!cell->item)continue;
   const auto* definition=dh2::data::item(inventory.table(),cell->item->id);
   if(!definition){error="Source automatic-slot ItemTable metadata unavailable";return false;}
   if(dh2::ui::character_menu_slot_candidate_v1(*cell->item,definition->record,
       prince_combat.properties.resolved,slot))
    candidates.push_back({static_cast<std::uint32_t>(i),cell->item.get(),&definition->record});
  }
  std::sort(candidates.begin(),candidates.end(),[](const Candidate& a,const Candidate& b){
   return dh2::ui::character_menu_item_value_less_v1(*a.item,*a.row,*b.item,*b.row,
       prince_combat.character_class);
  });
  for(const auto& candidate:candidates){
   bool available=false;
   if(!inventory_item_equippable_by_player(*candidate.row,available,error))return false;
   if(!available)continue;
   bool already_equipped=false;
   if(!inventory.is_equipped(candidate.index,already_equipped,error))return false;
   if(already_equipped)continue;
   return equipment.equip(slot,candidate.index,error);
  }
  const auto set=slot==1||slot==2?inventory.current_equipment():0;
  if(inventory.equipment()[std::size_t(set)][slot]){
   error="Source empty automatic-slot continuation projection mismatch";return false;
  }
  // Adam's source query owner reaches the normal unequip action for an empty
  // slot, preserving the same Character refresh/effect path as a real equip.
  return equipment.unequip(slot,error);
 };
 if(equipment_slot>=0){
  if(!equipment.unequip(std::uint32_t(equipment_slot),error))return false;
  if(!auto_slot(std::uint32_t(equipment_slot)))return false;
  error.clear();return true;
 }
 for(std::uint32_t slot=0;slot<9;++slot)
  if(!equipment.unequip(slot,error))return false;
 for(std::uint32_t cursor=9;cursor>0;--cursor)
  if(!auto_slot(cursor-1))return false;
 for(std::uint32_t cursor=9;cursor>0;--cursor){
  const auto slot=cursor-1;
  const auto set=slot==1||slot==2?inventory.current_equipment():0;
  if(!inventory.equipment()[std::size_t(set)][slot]&&slot!=1&&slot!=2&&
     !auto_slot(slot))return false;
 }
 error.clear();return true;
}
bool ui_player_unequip_item(std::uintptr_t identity,std::int32_t equipment_slot,
                            std::string& error){
 std::uintptr_t current=0;if(!ui_player_identity(current,error))return false;
 if(identity!=current||!player_equipment_native||!player_equipment_native->services||
    !prince_combat.inventory){
  error="Inventory unequip requires the active canonical V4 and V6-backed equipment services";return false;
 }
 if(equipment_slot<0||equipment_slot>=9){
  error="Inventory unequip slot is outside the source EquipmentSlots range";return false;
 }
 if(!player_equipment_native->services->unequip(std::uint32_t(equipment_slot),error))return false;
 error.clear();return true;
}
bool ui_player_swap_equipment(std::uintptr_t identity,std::string& error){
 std::uintptr_t current=0;if(!ui_player_identity(current,error))return false;
 if(identity!=current||!player_equipment_native||!player_equipment_native->services||
    !prince_combat.inventory||!prince_combat.item_power_tables||
    &player_equipment_native->services->inventory()!=prince_combat.inventory.get()||
    prince_combat.inventory->character()!=identity){
  error="Inventory set swap requires the active canonical V4 and V6-backed equipment services";return false;
 }
 if(!player_equipment_native->services->swap(error))return false;
 error.clear();return true;
}
bool ui_player_weapon_flags(std::uintptr_t identity,bool& offhand,bool& two_handed,std::string& error){
 std::uintptr_t current=0;if(!ui_player_identity(current,error))return false;
 if(identity!=current||!prince_combat.inventory){error="Weapon flags require the active V4 inventory";return false;}
 const auto selected=prince_combat.inventory->current_equipment();
 if(selected<0||selected>=2){error="Selected equipment set is outside the source domain";return false;}
 const auto* off=prince_combat.inventory->equipment()[std::size_t(selected)][2];
 offhand=false;
 if(off){
  if(!off->item){error="Offhand slot has no retained Item instance";return false;}
  const auto* row=dh2::data::item(prince_combat.inventory->table(),off->item->id);
  if(!row){error="Offhand Item has no decoded ItemTable row";return false;}
  offhand=row->record.words[22]!=6;
 }
 if(!prince_combat.inventory->has_two_hander(false,two_handed,error))return false;
 error.clear();return true;
}
bool ui_player_potions(std::uintptr_t identity,std::int32_t& count,std::int32_t& capacity,std::string& error){
 std::uintptr_t current=0;if(!ui_player_identity(current,error))return false;
 if(identity!=current||!prince_combat.inventory){error="Potion read requires the active V4 inventory";return false;}
 count=prince_combat.inventory->num_potions();
 const auto bits=static_cast<std::uint32_t>(prince_combat.properties.resolved[194]);
 std::uint32_t shifted=(bits>>8)|((bits&0x80000000u)?0xff000000u:0u);
 std::int32_t signed_capacity=0;std::memcpy(&signed_capacity,&shifted,sizeof(signed_capacity));
 capacity=static_cast<std::int8_t>(static_cast<std::uint8_t>(std::max(0,signed_capacity)));
 error.clear();return true;
}
bool ui_player_use_potion(std::uintptr_t identity,std::string& error){
 std::uintptr_t current=0;if(!ui_player_identity(current,error))return false;
 if(identity!=current||!prince_combat.inventory||
    prince_combat.inventory->character()!=identity||!player_equipment_native||
    !player_equipment_native->services){
  error="Potion command requires the active Character, canonical V4 inventory and inventory services";return false;
 }
 // NativeUsePotion tests HasPotion before reading either percentage.
 const auto* initial_potion=prince_combat.inventory->potion();
 if(!initial_potion||initial_potion->signed_quantity()<=0){error.clear();return true;}
 // NativeUsePotion calls GetHPPercent/GetMPPercent and dispatches only when
 // either ratio is below 1.0. These source properties are raw 8.8 values, so
 // converting both operands to float preserves the original comparison.
 const auto fixed_float=[](std::int32_t raw){return float(raw)/256.f;};
 const float hp_percent=fixed_float(prince_combat.properties.resolved[36])/
                        fixed_float(prince_combat.properties.resolved[38]);
 const float mp_percent=fixed_float(prince_combat.properties.resolved[41])/
                        fixed_float(prince_combat.properties.resolved[43]);
 if(!(hp_percent<1.f||mp_percent<1.f)){error.clear();return true;}

 // v2Controller::Cmd_UsePotion at 0x4056b0: forced bypasses both checks;
 // otherwise global s_blocked and the per-controller locked byte veto dispatch.
 if(!prince_controller_forced&&(controller_global_blocked||prince_state.controller_locked)){
  error.clear();return true;
 }
 // Character::Ctrl_UsePotion checks IsDead before HasPotion, then consumes the
 // exact ItemInventory potion through RemoveOnePotion.
 if(prince_combat.life.dead){error.clear();return true;}
 auto* potion=prince_combat.inventory->potion();
 if(!potion||potion->signed_quantity()<=0){error.clear();return true;}
 if(!prince_combat.inventory->remove_one_potion(
       player_equipment_native->live_services,error))return false;

 // The Player branch increments Character property 219 before its optional
 // TrophyManager search for "use_100_potions". Preserve that counter on this
 // same owner. The achievement award itself remains an explicit seam because
 // this runtime has no canonical TrophyManager provider.
 auto property_view=dh2::data::property_view(actor_property_rules,prince_combat.properties);
 if(dh2_property_add(&property_view,219,1)){
  error="Potion consumed but Character property 219 update failed";return false;
 }
 if(prince_combat.properties.resolved[219]>99)
  __android_log_print(ANDROID_LOG_WARN,"DH2Native","Potion achievement seam | source trophy use_100_potions is eligible; no canonical TrophyManager provider is attached");

 // Character::Ctrl_UsePotion calls RegenHP(-1), then RegenMP(-1), after the
 // removal and Player achievement prefix. The existing vitals kernel owns the
 // fill-to-maximum arithmetic and mutates this Character's PropertyState.
 dh2::data::VitalsChange hp_change{},mp_change{};
 if(dh2_vitals_regen(&property_view,0,-1,&hp_change)){
  error="Potion consumed and property 219 updated, but source HP regeneration failed";return false;
 }
 if(dh2_vitals_regen(&property_view,1,-1,&mp_change)){
  error="Potion consumed and HP regenerated, but source MP regeneration failed";return false;
 }
 __android_log_print(ANDROID_LOG_INFO,"DH2Native","Character::Ctrl_UsePotion source prefix | remaining %d | HP %d -> %d | MP %d -> %d | trophy manager unavailable",
  prince_combat.inventory->num_potions(),hp_change.before,hp_change.after,mp_change.before,mp_change.after);
 error.clear();return true;
}
bool ui_player_hud_projection(std::uintptr_t identity,bool refresh_usable,
                              UiPlayerHudProjectionV1& out,std::string& error){
 std::uintptr_t current=0;if(!ui_player_identity(current,error))return false;
 if(identity!=current||!prince_combat.inventory||
    prince_combat.inventory->character()!=identity||!prince_combat.savegame||
    prince_combat.savegame->character()!=identity||!prince_combat.savegame->skills_initialized()||
    native_save_difficulty<0||native_save_difficulty>2||!prince_skills||
    !prince_skills->initialized()){
  error="Gameplay HUD projection requires the active Character, Save, V4 inventory and V3 skill owner";return false;
 }
 UiPlayerHudProjectionV1 value=out;
 const bool identity_changed=value.character!=identity;
 value.character=identity;value.class_id=prince_combat.savegame->class_id();
 std::array<std::int32_t,3> slots{};
 for(std::int32_t i=0;i<3;++i){
  slots[std::size_t(i)]=prince_combat.savegame->skill_in_slot(i);
  if(slots[std::size_t(i)] < -1){error="Saved HUD skill slot is outside the source empty-or-index domain";return false;}
 }
 const auto faery=prince_combat.savegame->current_faery(std::uint32_t(native_save_difficulty));
 if(faery < -1){error="Saved HUD faery is outside the source empty-or-index domain";return false;}
 const bool refresh=refresh_usable||identity_changed||value.skill_slots!=slots||value.faery_id!=faery;
 value.skill_slots=slots;value.faery_id=faery;
 auto percent=[](float fraction)->std::int32_t{
  if(!std::isfinite(fraction))return 0;
  volatile float raw=fraction*100.f;
  if(raw>=2147483648.f)return std::numeric_limits<std::int32_t>::max();
  if(raw<=-2147483648.f)return std::numeric_limits<std::int32_t>::min();
  return static_cast<std::int32_t>(raw);
 };
 for(std::size_t slot=0;slot<slots.size();++slot){
  auto& cooldown=value.infos[8+slot*2];auto& usable=value.infos[9+slot*2];
  if(slots[slot]<0){cooldown=0;usable=0;continue;}
  std::uint32_t source_usable=refresh?0u:static_cast<std::uint32_t>(usable!=0);
  float fraction=0.f;
  if(!prince_skills->hud_info(false,std::uint32_t(slots[slot]),refresh,
       source_usable,fraction,error))return false;
  cooldown=percent(fraction);
  if(refresh)usable=source_usable?1:0;
 }
 if(faery<0){value.infos[6]=0;value.infos[7]=0;}
 else{
  bool unlocked=false;
  if(!ui_player_faery_unlocked(identity,std::uint32_t(faery),unlocked,error))return false;
  if(!unlocked){value.infos[6]=0;value.infos[7]=0;}
  else{
   std::uint32_t source_usable=refresh?0u:static_cast<std::uint32_t>(value.infos[7]!=0);
   float fraction=0.f;
   if(!prince_skills->hud_info(true,std::uint32_t(faery),refresh,
        source_usable,fraction,error))return false;
   value.infos[6]=percent(fraction);
   if(refresh)value.infos[7]=(prince_state.current==6||prince_state.current==7)?0:(source_usable?1:0);
  }
 }
 value.infos[14]=prince_combat.inventory->num_potions();
 // Native HudManager tests Character property 148 for its level-up marker.
 value.infos[15]=prince_combat.properties.resolved[148];
 out=value;error.clear();return true;
}
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
 auto ap=dh2::data::property_view(actor_property_rules,prince_combat.properties),dp=dh2::data::property_view(actor_property_rules,target->properties);
 dh2::data::CombatantView av{prince_combat.properties.resolved.data(),-1,-1,0,0,0,prince_state.current,prince_combat.life.combo_hits},dv{target->properties.resolved.data(),-1,-1,0,0,0,target->state=="Attack"?5:-1,target->combat_state.combo_hits};
 if(!prince_combat.inventory)throw std::runtime_error("Player combat has no canonical V4 inventory");
 dh2::data::PlayerEquipmentQueriesLiveV1 equipment(*prince_combat.inventory,ap);std::string equipment_error;
 if(!equipment.combat_view(av,equipment_error))throw std::runtime_error("Player combat equipment query failed: "+equipment_error);
 dh2::data::CombatResult result;dh2::data::MonsterApplication applied;
 const unsigned aggro_facts=(target->combat_state.dead?dh2::data::aggro_owner_dead:0u)|(prince_combat.life.dead?dh2::data::aggro_target_dead:0u);
 CombatAggroBeforeHit aggro{&target->aggro,&prince_combat.aggro,target->identity,prince_character.identity(),aggro_facts};
 const dh2::data::MonsterApplicationRequest request{&result,&ap,&dp,&prince_combat.life,&target->combat_state,&add_combat_threat_before_hit,&aggro};
 if(dh2_combat_melee(&result,&av,&dv,&combat_random,action.offhand,0)||dh2_combat_apply_player_to_monster(&applied,&request))throw std::runtime_error("Player combat application failed");
 ++combat_hits;++prince_combat.attempts;
 __android_log_print(ANDROID_LOG_INFO,"DH2Native","Prince combat hit | target %s | attempt %u | result %d %d %d %d %d %d %u %u %d %d | HP %d %d | dead %u | combo %u | RNG %u %u | statuses %u",target->name.c_str(),prince_combat.attempts,result.amount,result.dot_element,result.dot_duration,result.dot_amount,result.hp_leech,result.mp_leech,result.outcomes,result.mask,result.weapon_category,result.element,applied.health.before,applied.health.after,target->combat_state.dead,prince_combat.life.combo_hits,combat_random.seed,combat_random.calls,applied.status_requests);
 if(applied.health.kill_requested){
  target->pending_death=true;
  target->loot_killer_identity=prince_character.identity();
  target->loot_retry_pending=true;target->loot_retry_delay_frames=0;
  std::string loot_error;
  if(drop_actor_loot(*target,target->loot_killer_identity,loot_error))target->loot_retry_pending=false;
  else{
   target->loot_retry_delay_frames=30;
   __android_log_print(ANDROID_LOG_ERROR,"DH2Native","Source death loot continuation failed | %s | %s",target->name.c_str(),loot_error.c_str());
  }
  // Character::Kill continues after this first DropLoot attempt regardless
  // of staging success. This one-shot flag is per victim; loot retries below
  // never replay RaiseEvent(4), target clearing, or Player property credit.
  if(!target->kill_credit_attempted){
   target->kill_credit_attempted=true;
   dh2::data::AggroTable outgoing{
    target->aggro.outgoing.empty()?nullptr:target->aggro.outgoing.data(),
    target->aggro.out_count,std::uint32_t(target->aggro.outgoing.size())};
   dh2::player_enemy_kill_credit_v1::Result credit_result{};
   std::string credit_error;
   const auto credit_status=prince_skills?
    prince_skills->credit_enemy_kill(target->identity,prince_character.identity(),0,
     outgoing,prince_controller_forced,controller_global_blocked,target,
     clear_kill_selection_projection,&credit_result,credit_error):
    dh2::player_enemy_kill_credit_v1::Status::invalid_argument;
   if(credit_status==dh2::player_enemy_kill_credit_v1::Status::complete){
    __android_log_print(credit_result.event4_status||credit_result.target_projection_status?ANDROID_LOG_WARN:ANDROID_LOG_INFO,
     "DH2Native","Character::Kill Player credit | victim %s | event4 reached %u status %d | direct target clear %u | selection projection %d | props23 %u props24 %u | controller forced %u | kill force 0 | same Player AIS/VM/Coordinator/PropertyView",
     target->name.c_str(),credit_result.event4_reached,credit_result.event4_status,
     credit_result.target_cleared,credit_result.target_projection_status,
     credit_result.property23_added,credit_result.property24_added,prince_controller_forced);
   }else{
    __android_log_print(credit_status==dh2::player_enemy_kill_credit_v1::Status::ineligible_aggro?ANDROID_LOG_INFO:ANDROID_LOG_ERROR,
     "DH2Native","Character::Kill Player credit not completed | victim %s | status %u | aggro recipients %u | %s | one-shot; loot retries will not replay it",
     target->name.c_str(),unsigned(credit_status),outgoing.count,credit_error.c_str());
   }
  }
 }
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
 if(!prince_combat.inventory)throw std::runtime_error("Player actor facts have no canonical V4 inventory");
 const auto properties=dh2::data::property_view(actor_property_rules,prince_combat.properties);
 dh2::data::PlayerEquipmentQueriesLiveV1 equipment_queries(*prince_combat.inventory,properties);
 dh2::data::EquipmentWeaponFacts12V1 weapon_facts{};std::string equipment_error;
 if(!equipment_queries.facts(weapon_facts,equipment_error))
  throw std::runtime_error("Player actor equipment query failed: "+equipment_error);
 std::uint32_t predicates=dh2::character::stance_is_player;
 if(weapon_facts.flags&dh2::data::weapon_staff)predicates|=dh2::character::stance_has_staff;
 if(weapon_facts.flags&dh2::data::weapon_bow)predicates|=dh2::character::stance_has_bow;
 if(weapon_facts.flags&dh2::data::weapon_dual)predicates|=dh2::character::stance_dual_wielding;
 if(weapon_facts.flags&dh2::data::weapon_two_effective)predicates|=dh2::character::stance_has_two_hander;
 if(weapon_facts.flags&dh2::data::weapon_main)predicates|=dh2::character::stance_has_main_hand;
 const dh2::character::StanceFacts16 equipment{predicates,5,{0,0}};
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
 facts.following_path=prince_runtime.path.count!=0;
 facts.has_ranged_weapon=std::uint32_t(weapon_facts.flags&dh2::data::weapon_ranged)!=0;
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
 if(request->service==control_look_at_point&&request->subject==prince_character.identity()){
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
 case dead_focus_prelude:case remove_highlight:case cancel_sneaking:case disable_state_fx:case disable_self_fx:case remove_buffs:
  if(!prince_skills)throw std::runtime_error("Character cleanup requires native Player owner");
  prince_skills->state_service(request->service);break;
 case stop:{
  dh2::move::Policy policy{};dh2_move_policy(&policy,&state->flags);
  if(dh2_nav_drop_path(&prince_runtime.path))throw std::runtime_error("Character Stop path release failed");
  std::copy(prince_runtime.subobjects.position,prince_runtime.subobjects.position+3,prince_runtime.subobjects.destination);
  prince_character.stop_game_object_moving();
  prince_runtime.controller.path_requested=0;prince_runtime.controller.heading.active=0;
  std::fill(prince_runtime.controller.heading.direction,prince_runtime.controller.heading.direction+3,0);
  std::fill(prince_runtime.subobjects.heading,prince_runtime.subobjects.heading+3,0);
  state->heading_active=0;refresh_prince_facts();
  if(prince_body.body&&policy.position_from_physics&&dh2_native_body_stop(&prince_body,prince_runtime.subobjects.position))throw std::runtime_error("Character Stop body failed");
  break;
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
    const ControllerCommandState32 controller{reinterpret_cast<std::uintptr_t>(&prince_state),prince_character.identity(),controller_global_blocked,state->controller_locked,prince_controller_forced,0};
   if(dh2_character_controller_character(&controller,controller_look_object,request->identity,&services)!=1)throw std::runtime_error("Character controller LookAt failed");
   }else if(dh2_character_control(prince_character.identity(),controller_look_object,request->identity,&services)!=1)throw std::runtime_error("Character LookAt failed");
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
 case enable_collisions:{
  if(prince_body.body){
   auto* shape=prince_body.body->GetShapeList();if(!shape)throw std::runtime_error("Character collision shape missing");
   shape->SetFilterData(prince_initial_filter);
   prince_body_owner.contact.primary={prince_initial_filter.groupIndex,prince_initial_filter.categoryBits,prince_initial_filter.maskBits,1};
   actor_world.backend()->Refilter(shape);
  }
  if(level.native_floor&&prince_runtime.object.user){
   const auto* box=prince_runtime.subobjects.absolute_bounds;
   const dh2::navigation::ProducerFields fields{dh2::navigation::ProducerClass::character,
       std::uint32_t(prince_body.body!=nullptr),prince_body.radius,0,
       {box[0],box[1]},{box[3],box[4]}};
   const dh2::navigation::ProducerRequest producer{&level.native_floor->collision_world,
       &live_registry,&prince_runtime.object,prince_character.identity(),&fields};
   if(dh2_nav_update_game_object(&producer))throw std::runtime_error("Character collision obstacle restore failed");
  }
  break;
 }
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
int prince_controller_stop_game_object(void*){
 std::uint8_t heading_active=std::uint8_t(prince_runtime.controller.heading.active);
 const auto body_identity=prince_body.body?reinterpret_cast<std::uintptr_t>(&prince_body):0;
 const dh2::native_character_stop::LiveView view{prince_character.identity(),&prince_character,
     &prince_runtime,prince_character.game_object_moving_storage(),&heading_active,
     body_identity,prince_body.body?&prince_body:nullptr};
 dh2::native_character_stop::Result result{};
 if(dh2_native_character_stop(&view,&result)!=0)return -1;
 prince_runtime.controller.heading.active=heading_active;
 if(!heading_active)std::fill(prince_runtime.controller.heading.direction,
     prince_runtime.controller.heading.direction+3,0.0f);
 prince_state.heading_active=heading_active;refresh_prince_facts();return 0;
}
int prince_controller_raise_character_event(void*,std::uint32_t event){
 if(event==0){
  const int before=prince_state.current;const std::uint32_t flags_before=prince_state.flags;
  const int result=prince_event(0xc351,0);
  if(authored_hud_controller_trace_count<8){++authored_hud_controller_trace_count;__android_log_print(ANDROID_LOG_INFO,"DH2Native","Authored joystick move event | trace %u | source event 0xc351 | result %d | state %d -> %d | flags %x -> %x",authored_hud_controller_trace_count,result,before,prince_state.current,flags_before,prince_state.flags);}
  return result<0?-1:0;
 }
 if(event==63){
  const dh2::character::Request enable{dh2::character::enable_collisions,{0,0,0},0,0,0};
  character_service(nullptr,&prince_state,&enable);
  return prince_event(0x3f,0)<0?-1:0;
 }
 return -1;
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
 if(!prince_skills)throw std::runtime_error("Player source death owner unavailable");
 // A reached failure keeps its prefix. Consume this one callback request;
 // the frame must not replay OnDied against a partially completed owner.
 prince_combat.pending_death=false;
 prince_skills->died(prince_combat.death_target);
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
 prince_runtime={};prince_character.stop_game_object_moving();std::copy(actor_position.begin(),actor_position.end(),prince_runtime.subobjects.position);
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
  const dh2::navigation::ObjectInitRequest init{&level.native_floor->collision_world,&prince_runtime.object,prince_character.identity(),{actor_position[0],actor_position[1],actor_position[2]},config.radius*100.f,0,0};
 if(dh2_nav_init_object(&init))throw std::runtime_error("Native player floor initialization failed");
 const dh2::navigation::ProducerFields fields{dh2::navigation::ProducerClass::character,1,config.radius,0,{box[0],box[1]},{box[3],box[4]}};
  const dh2::navigation::ProducerRequest producer{&level.native_floor->collision_world,&live_registry,&prince_runtime.object,prince_character.identity(),&fields};
 if(dh2_nav_update_game_object(&producer))throw std::runtime_error("Native player obstacle initialization failed");
 std::copy(prince_runtime.object.motion.position,prince_runtime.object.motion.position+3,prince_runtime.subobjects.previous_position);
 std::copy(prince_runtime.object.motion.position,prince_runtime.object.motion.position+3,prince_runtime.subobjects.position);
 std::copy(prince_runtime.object.motion.position,prince_runtime.object.motion.position+3,actor_position.begin());
 // GPU/world recreation retains the original CPU playback and immutable bank.
 // Restore the last rendered pose without a time/fade/event/root-motion pass.
 if(restore){
  if(prince_retained_pose.empty()||!prince_retained_pose.restore(prince_locomotion,prince_attack_clips,prince_visual,current_scene,error))
   throw std::runtime_error("Retained Prince scene restoration failed: "+error);
 }else{
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
 }
 prince_locomotion.observer={nullptr,character_playback_event};
 prince_character.bind({nullptr,[](void*){return prince_facts();},
                         {nullptr,character_service},prince_timer_before,prince_timer_after,nullptr,prince_timer_route});
 if(!restore){
  prince_state={};pending_character_services=0;
  prince_character.reset_timers(prince_character.identity());
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
 if(restore){
  prince_retained_pose.clear();
  __android_log_print(ANDROID_LOG_INFO,"DH2Native","Player blended playback retained | state %d | sequence %d | clip %d | engine %d | scene %u | ms %d | replays %u | completion %u | same CPU bank, cursors, fade and root history",
   prince_state.current,prince_state.current_animation,prince_locomotion.current_clip(),prince_locomotion.current_engine_clip(),unsigned(scene_clock),prince_locomotion.current_timeline().current_ms,prince_locomotion.restarts,prince_locomotion.completions);
 }
 prince_flags=prince_state.flags;prince_move_type=prince_state.move_type;
 for(const auto& group:object_groups){
  if(group.instances.empty()||group.instances.front().kind!=2)continue;
  const auto& decor=group.instances.front();
  const auto separator=decor.model.find_last_of("/\\");
  const auto model_name=decor.packaged_actor_asset
    ?decor.model.substr(separator==std::string::npos?0:separator+1):decor.model;
  auto model=read(assets,model_name,"actors");dh2::resources::BresView decor_view{};
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
 // Character::Move's recovered flags select position-from-visual. Feed that
 // policy into the existing animation root-delta owner before its scene phase.
 dh2::actor::player_root_motion_policy_v1::Projection root_motion{};
 if(dh2::actor::player_root_motion_policy_v1::project(&root_motion,prince_state.flags)!=
    dh2::actor::player_root_motion_policy_v1::Status::complete)
  throw std::runtime_error("Player root-motion policy projection failed");
 prince_locomotion.displacement=root_motion.displacement;
  scene_clock+=float(dt_ms);
  prince_scene_phase=true;
  if(!prince_locomotion.scene_phase(std::uint32_t(scene_clock),prince_attack_clips,prince_visual,current_scene,error))throw std::runtime_error(error);
  prince_scene_phase=false;
 actor_world.update(dt_ms);++native_physics_steps;
 update_native_world_items_after_step(dt_ms);
 // This renderer advances the authored timer and FSM subset after the world
 // step. The CharAI frame belongs between these calls; native Ghost AI is not
 // wired yet, so do not report this interim sequence as a complete update.
 if(prince_character.update_timers(dt_ms,0)!=1)throw std::runtime_error("Character timer update failed");
 // UpdateAllSkills is invoked by source initialization/progression callers,
 // not CharAI::Update or virtual OnUpdate. InitProcess already performs the
 // original update once; an unconditional renderer-frame call recreated
 // buffs and repeated callbacks. Full CharAI/AIS frame providers stay open.
 for(auto& group:object_groups)for(auto& actor:group.instances)if(actor.spawn_owner){
  // ObjectManager::Update only dispatches zonable Characters after the
  // RoomZone callback has enabled their source +0x3c update membership.
  // Keep their timer/FSM clocks behind that same active-room gate; the player
  // uses the separate no-room update path and is handled above.
  if(actor.source_room_zone_managed&&!actor.source_updates_enabled)continue;
  auto& character=actor.spawn_owner->character;
  if(character.update_timers(dt_ms,0)<0||character.update_state(dt_ms)<0)
   throw std::runtime_error("Gated Character timer/state update failed");
 }
 // Direct serialized Monsters have no SpawnOwner coordinator. Run their
 // existing target/event adapter and actor-owned MoveTo route once per
 // gameplay tick, outside the render traversal.
 for(auto& group:object_groups){
  if(group.animation_table<0)continue;
  for(auto& actor:group.instances)if(actor.kind==1)
   update_enemy(actor,group.animation_table,dt_ms);
 }
 // Development touch input supplies the original controller facts. State
 // predicates/focus/blur decide eligibility, policy and authored animation.
 // The inspection stick follows HUDControls::OnEvent/Update's fixed screen
 // basis and radial magnitude. Authored HUD commands already supply the
 // source heading and bypass this conversion.
 float input[3]{move_x,move_y,0};bool input_active=false;
 const bool authored_stop=authored_hud_stop_pending;authored_hud_stop_pending=false;
 if(authored_stop){input[0]=input[1]=input[2]=0;input_active=false;}
 else if(authored_hud_command_active){
  std::copy(authored_hud_direction,authored_hud_direction+3,input);input_active=true;
 }else if(dh2::native::camera_input_v1::map_hud_touch_input(input,&input_active))
  throw std::runtime_error("Native HUD touch input rejected");
 const bool was_heading=prince_state.heading_active!=0;
 const int state_before_heading=prince_state.current;
 const std::uint32_t flags_before_heading=prince_state.flags;
 bool using_skill=false,casting=false;
 if(input_active){
  const dh2::character_skill_state_queries::Machine machine{&prince_state.current};
  dh2::character_skill_state_queries::Result query{};
  if(dh2::character_skill_state_queries::is_using_skill(&machine,&query)!=dh2::character_skill_state_queries::Status::complete)
   throw std::runtime_error("Character skill input gate query failed");
  using_skill=query.value!=0;
  if(!using_skill){
   if(dh2::character_skill_state_queries::is_casting(&machine,&query)!=dh2::character_skill_state_queries::Status::complete)
    throw std::runtime_error("Character cast input gate query failed");
   casting=query.value!=0;
  }
 }
 const dh2::native::character_controller_v1::Services controller_services{
     nullptr,prince_controller_raise_character_event,prince_controller_stop_game_object};
 dh2::native::character_controller_v1::Outcome controller_outcome{};
 if(dh2::native::character_controller_v1::dispatch_head_towards(
      &prince_runtime.controller.heading,&prince_runtime.rotation.heading_angle,input,
      input_active,!prince_state.controller_locked,using_skill,casting,
      &controller_services,&controller_outcome)!=
      dh2::native::character_controller_v1::Status::complete)
  throw std::runtime_error("Native Character HeadTowards dispatch failed");
 prince_state.heading_active=prince_runtime.controller.heading.active;
 if(prince_state.current==5&&was_heading!=(prince_state.heading_active!=0)&&prince_event(0x1c,0)<0)
  throw std::runtime_error("Character attack heading event failed");
 if(prince_character.update_state(dt_ms)<0)throw std::runtime_error("Character state update failed");
 prince_flags=prince_state.flags;prince_move_type=prince_state.move_type;walking=prince_state.current==4;
 if(authored_hud_command_active&&authored_hud_actor_trace_count<12)
  __android_log_print(ANDROID_LOG_INFO,"DH2Native","Authored joystick controller frame | input %.6g %.6g %.6g | allowed %u | skill %u | casting %u | state %d -> %d | flags %x -> %x | heading %u | gate %.6g %.6g %.6g",
   input[0],input[1],input[2],unsigned(!prince_state.controller_locked),unsigned(using_skill),unsigned(casting),
   state_before_heading,prince_state.current,flags_before_heading,prince_state.flags,
   unsigned(prince_runtime.controller.heading.active),prince_runtime.controller.heading.direction[0],
   prince_runtime.controller.heading.direction[1],prince_runtime.controller.heading.direction[2]);
 const float global_speed=(prince_state.current==4||prince_state.current==5)?prince_state.cached_speed:1.f;
 const bool moving=prince_state.current==4;
 const auto extra=prince_locomotion.completion.extra_ms;
 if(!prince_locomotion.animator_phase(actor_animation_tables,actor_random,prince_attack_clips,prince_visual,current_scene,global_speed,extra,error))throw std::runtime_error(error);
 dh2::move::Policy decoded{};dh2_move_policy(&decoded,&prince_flags);
 // Avoidance policy and the original game camera remain explicit integration
 // boundaries. The floor/path/root/body coordinators execute genuine source.
 const dh2::actor::RuntimePolicy policy{{1,0,0,decoded.position_from_physics},1,0,0,0,dh2::actor::base_virtual_speed};
 const dh2::subobjects::Services services{nullptr,actor_virtual_service};
 const dh2::actor::RuntimeRequest request{&prince_runtime,prince_body.body?&prince_body:nullptr,&prince_visual,&current_scene,&level.native_floor->collision_world,&level.native_floor->graph,&live_registry,&live_motion_policy,&live_workspace,nullptr,prince_combat.properties.resolved.data(),&policy,&services,nullptr,prince_character.identity(),prince_flags,dt_ms,prince_character.game_object_moving_storage()};
 const auto authored_actor_position_before=actor_position;
 dh2::actor::RuntimeResult result{};
 if(dh2::actor::update_actor(result,request,error))throw std::runtime_error(error);
 prince_state.heading_active=prince_runtime.controller.heading.active;
 const float dx=prince_runtime.subobjects.position[0]-actor_position[0],dy=prince_runtime.subobjects.position[1]-actor_position[1];
 if(moving){if(dx*dx+dy*dy>0.000001f)++movement_steps;else ++blocked_steps;++native_heading_updates;}
 if((authored_hud_command_active||authored_hud_stop_pending||moving)&&authored_hud_actor_trace_count<12){
  ++authored_hud_actor_trace_count;
  __android_log_print(ANDROID_LOG_INFO,"DH2Native","Authored joystick actor update | trace %u | input %.6g %.6g %.6g | state %d | flags %x | controller locked %u | before %.6g %.6g %.6g | after %.6g %.6g %.6g | delta %.6g %.6g | result phase %u",
   authored_hud_actor_trace_count,input[0],input[1],input[2],prince_state.current,prince_state.flags,
   unsigned(prince_state.controller_locked),authored_actor_position_before[0],authored_actor_position_before[1],
   authored_actor_position_before[2],prince_runtime.subobjects.position[0],prince_runtime.subobjects.position[1],
   prince_runtime.subobjects.position[2],dx,dy,unsigned(result.phase));
 }
 std::copy(prince_runtime.subobjects.position,prince_runtime.subobjects.position+3,actor_position.begin());heading=prince_runtime.subobjects.rotation;
 const dh2::native::crypt_camera_frame_v1::Vec3 source_position{
     actor_position[0],actor_position[1],actor_position[2]};
 const dh2::native::crypt_camera_frame_v1::Vec3 source_heading{
     prince_runtime.subobjects.heading[0],prince_runtime.subobjects.heading[1],
     prince_runtime.subobjects.heading[2]};
 const dh2::native::crypt_camera_frame_v1::Vec3 actor_look_at{
     std::sin(heading),-std::cos(heading),0.0f};
 if(!dh2::native::crypt_camera_frame_v1::update_forward_anchor(
      &prince_camera_anchor,source_position,source_heading,actor_look_at,
      prince_state.heading_active!=0,prince_state.current==4,prince_state.current==5))
  throw std::runtime_error("Source player camera anchor rejected runtime state");
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
 {
  using namespace dh2::player_locality_v1;
  const auto services=native_host.locality_services();Result locality{},absent{};
  if(is_local_player(&native_host.registry,&services,prince_character.owner(),&locality)!=Status::complete||
     is_local_player(&native_host.registry,&services,0,&absent)!=Status::complete)
   throw std::runtime_error("Native Player locality query failed");
  __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native Player locality | route %u | registered %u | local %d | selected fallback %u | Character660 %zu | member1a0 %d | matching member %d | matching server %d | active %u | null result %d | null calls %u | source queries on bounded fields; profile/registration/NetStruct pending",
   unsigned(locality.route),unsigned(locality.registered),locality.value,unsigned(locality.player==&native_host.player),std::size_t(native_host.character_660),native_host.member_1a0,native_host.matching_fields.member_3638,native_host.matching_fields.server_member_363c,unsigned(native_host.matching_fields.active_c),absent.value,absent.service_calls);
 }
 if(native_host.metadata&&native_host.metadata->receipt().loaded){
  const auto metadata=native_host.metadata->save_identity();
  const auto gameplay=reinterpret_cast<std::uintptr_t>(prince_combat.savegame.get());
  if(!gameplay||metadata==gameplay||native_host.metadata->save().character()!=0||prince_combat.savegame->character()!=prince_character.owner())throw std::runtime_error("Native metadata/gameplay Save ownership differs");
  __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native campaign Save owners | metadata %zu | gameplay %zu | metadata slot %d | gameplay slot %d | gameplay Character %zu | distinct source roles; managed association/mask4 pending",std::size_t(metadata),std::size_t(gameplay),native_host.metadata->save().slot(),prince_combat.savegame->slot(),std::size_t(prince_combat.savegame->character()));
 }
 // The development Crypt continuation now publishes its reconstructed 64-bit
 // owner after Save/property construction. This does not execute _AddCharacter.
 auto* host_projection=native_host.host_projection();
 auto* host_record=native_host.record_for(host_projection);
 if(!host_record)throw std::runtime_error("Native hosting PlayerInfo backing missing");
 auto* bound_properties=prince_character.properties_for(host_record->character_660);
 if(host_record->character_660!=prince_character.identity()||
    bound_properties!=&prince_combat.properties||
    prince_character.save_for(host_record->character_660)!=prince_combat.savegame.get())
  throw std::runtime_error("Native PlayerInfo Character does not resolve the live Character owners");
 const dh2::player_manager_host_level::ReconcileState state{host_projection,
  host_record->character_660,reinterpret_cast<std::uintptr_t>(bound_properties)};
 const dh2::player_manager_host_level::ReconcileServices reconcile{nullptr,
  [](void*,std::uintptr_t identity,std::uint32_t property,std::uint32_t include_bonus,std::int32_t* output)->std::int32_t {
   const auto* properties=prince_character.properties_for(prince_character.identity());
   if(!properties||identity!=reinterpret_cast<std::uintptr_t>(properties)||property!=19||include_bonus)return 1;
   const auto raw=properties->resolved[19];
   const std::uint32_t shifted=(std::uint32_t(raw)>>8)|(raw<0?0xff000000u:0u);
   std::memcpy(output,&shifted,4);return 0;
  },
  [](void*,dh2::player_manager_host_level::PlayerInfoProjection* player,std::int32_t level)->std::int32_t {
   auto* record=native_host.record_for(player);if(!record)return 1;
   return dh2::player_info_record_v1::set_character_scalar(*record,0x310,level,0)==dh2::player_info_record_v1::Status::complete?0:1;
  }};
 dh2::player_manager_host_level::ReconcileResult reconciled{};
 const auto reconcile_status=dh2::player_manager_host_level::reconcile_character_level(&state,&reconcile,&reconciled);
 if(reconcile_status!=dh2::player_manager_host_level::ReconcileStatus::complete&&reconcile_status!=dh2::player_manager_host_level::ReconcileStatus::skipped_unbound_character)
  throw std::runtime_error("Native managed host Level reconciliation failed");
 std::int32_t host_level=0,host_difficulty=0;
 if(native_host_level(&host_level)||native_host_difficulty(&host_difficulty))throw std::runtime_error("Native host source query failed");
  __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native managed host | Level %d | difficulty %d | property reads %u | member writes %u | skipped unbound %u | reconstructed Character owner bound; _AddCharacter not invoked",host_level,host_difficulty,reconciled.property_reads,reconciled.setter_calls,unsigned(reconcile_status==dh2::player_manager_host_level::ReconcileStatus::skipped_unbound_character));
  __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native full PlayerInfo | fields %u | factory %u | level %d | class %d | Character660 %zu | slot664 %d | counter %llu | canonical registered owner",
  host_record->base.network.count,unsigned(native_host.record_factory.registered()),host_record->at(0x310)->header.value,host_record->at(0x360)->header.value,
  std::size_t(host_record->character_660),host_record->save_slot_664,static_cast<unsigned long long>(native_host.change_serial));
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
 // The development Crypt fixture historically supplied exactly two eligible
 // Ghosts. NativeStartGame can select other source-authored levels (including
 // the initial SWAMP row), whose valid actor set is different or still empty;
 // each eligible owner is checked above, so a Crypt-only count must not abort
 // an otherwise valid level load.
 __android_log_print(ANDROID_LOG_INFO,"DH2Native",
     "Native Ghost initialization census | initialized %u | level row %d | source-level actor set",
     initialized,active_level_assets.row);
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
std::string debug_player_death(){
 if(!world_mode||!native_actor_ready||!prince_skills||!prince_skills->initialized()||prince_combat.life.dead)return "Player death fixture rejected";
 // Shell-only lifecycle fixture: a forced raw CombatResult goes through the
 // existing source F_ApplyResult health/Kill prefix. It is not authored hit
 // calculation, Player Kill trophies/online continuation or a campaign test.
 try{
  ObjectActor* attacker=nullptr;
  for(auto& group:object_groups)for(auto& actor:group.instances)if(!attacker&&actor.kind==1&&!actor.combat_state.dead&&actor.properties.resolved[36]>0)attacker=&actor;
  if(!attacker)return "Player death fixture has no live source attacker";
  auto attack=dh2::data::property_view(actor_property_rules,attacker->properties);
  auto defend=dh2::data::property_view(actor_property_rules,prince_combat.properties);
  dh2::data::CombatResult result{};result.amount=prince_combat.properties.resolved[36];
  dh2::data::MonsterApplication applied{};
  dh2::data::MonsterApplicationRequest request{&result,&attack,&defend,&attacker->combat_state,&prince_combat.life};
  if(dh2_combat_apply_monster_to_player(&applied,&request,unsigned(dh2_character_state_is_idle(prince_state.current,0)))||!applied.health.kill_requested||!prince_combat.life.dead||prince_combat.properties.resolved[36]!=0)
   throw std::runtime_error("Player fatal source health prefix failed");
  __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native Player death fixture | raw damage %d | HP before %d | HP after %d | dead %u | killer %zu | actual health/Kill prefix; full Kill continuation pending",result.amount,applied.health.before,applied.health.after,prince_combat.life.dead,std::size_t(attacker->identity));
  prince_combat.pending_death=true;prince_combat.death_target=attacker->identity;move_x=move_y=0;
  request_prince_death();return "Source AI death cleanup completed; full Kill continuation pending";
 }catch(const std::exception& e){
  __android_log_print(ANDROID_LOG_ERROR,"DH2Native","Native Player death fixture failed | %s | reached effects retained",e.what());return std::string("Player death fixture failed: ")+e.what();
 }
}

std::string load_world(const std::uint8_t* descriptor,std::size_t size,AAssetManager* assets,
                       const std::uint8_t* generated_spawnpoints,
                       std::size_t generated_spawnpoints_size){
  player_camera_asset_manager=assets;
  std::vector<Draw> environment;std::vector<GLuint> textures;
  RuntimeLevelAssets level_assets=active_level_assets;
  if(!active_native_start_plan&&descriptor){
    const auto swamp_descriptor=read(assets,"001_swamp.dwld","worlds");
  if(size==swamp_descriptor.size()&&std::equal(swamp_descriptor.begin(),swamp_descriptor.end(),descriptor)){
      level_assets.row=41;level_assets.name="SWAMP";level_assets.level_file="001_swamp.mlx";
      level_assets.descriptor="001_swamp.dwld";level_assets.bres="data/3d/modules/swamp/swamp.bdae";
      level_assets.spawns="001_swamp.spwn";level_assets.objects="001_swamp.dact";level_assets.development_layout=false;
      active_level_assets=level_assets;
    }
  }
  const bool source_static_level=!level_assets.development_layout&&level_assets.name=="SWAMP";
  dh2::objects::Resource candidate_itemdrops;
  std::vector<Draw> candidate_itemdrop_draws;
  std::map<std::string,unsigned> candidate_itemdrop_roots;
  std::vector<ObjectGroup> candidate_groups;
  dh2::crypt_module_bounds_registry_v1::Owner candidate_crypt_module_bounds;
  const bool restore=world_mode||resume_world;const auto previous=actor_position;
  const auto previous_heading=heading;float source_spawn_heading=0;
  const auto previous_random=actor_random;
  const bool previous_frozen=frozen;
  if(restore&&!object_groups.empty()){saved_actors.clear();for(const auto& group:object_groups)for(const auto& actor:group.instances)if(actor.kind==1)saved_actors.push_back(actor);}
  try{
    std::string camera_config_error;
    const bool source_clip_planes_loaded=
        load_source_level_camera_clip_planes(assets,level_assets,camera_config_error);
    const bool source_camera_route=dh2::native::crypt_camera_frame_v1::
        verified_crypt_route(level_assets.name,level_assets.level_file)||
        dh2::native::crypt_camera_frame_v1::verified_swamp_default_camera_route(
            level_assets.name,level_assets.level_file);
    const bool authored_camera_rig_loaded=source_clip_planes_loaded&&source_camera_route&&
        ensure_player_camera_rig(level_assets);
    level_assets.source_player_camera_enabled=
        dh2::native::crypt_camera_frame_v1::source_camera_rig_route_ready(
            level_assets.name,level_assets.level_file,source_clip_planes_loaded,
            authored_camera_rig_loaded);
    if(level_assets.source_player_camera_enabled){
      __android_log_print(ANDROID_LOG_INFO,"DH2Native",
        "Source gameplay camera projection + idle rig | %s / %s | near %.0f far %.0f | CameraLevel dynamics pending | source rig %u",
        level_assets.name.c_str(),level_assets.level_file.c_str(),
        level_assets.camera_near_clip,level_assets.camera_far_clip,
        unsigned(level_assets.source_player_camera_enabled));
    }else if(source_clip_planes_loaded){
      __android_log_print(ANDROID_LOG_WARN,"DH2Native",
        "Source gameplay camera not enabled; route has no verified LevelConfig projection/authored rig | %s / %s | preserving existing camera path",
        level_assets.name.c_str(),level_assets.level_file.c_str());
    }else{
      __android_log_print(ANDROID_LOG_WARN,"DH2Native",
        "Source player camera not enabled; preserving existing camera path | %s / %s | %s",
        level_assets.name.c_str(),level_assets.level_file.c_str(),camera_config_error.c_str());
    }
    active_level_assets.camera_near_clip=level_assets.camera_near_clip;
    active_level_assets.camera_far_clip=level_assets.camera_far_clip;
    active_level_assets.source_player_camera_enabled=
        level_assets.source_player_camera_enabled;
    if(!restore){
      std::uint32_t seed=0;
      if(!original_real_time_ms(seed))throw std::runtime_error("Original Random clock read failed");
      dh2::random_lifecycle::seed_from_gsinit_update(seed);
      const auto& random=dh2::random_lifecycle::process_state();
      __android_log_print(ANDROID_LOG_INFO,"DH2Native","Source Random GSInit::Update | seed %u | sync %u | counters %u/%u",
        random.seeds[0],random.seeds[1],random.counters[0],random.counters[1]);
    }
    std::string retention_error;
    if(world_mode&&!prince_retained_pose.capture(prince_locomotion,prince_attack_clips,prince_visual,current_scene,retention_error))
      throw std::runtime_error("Player scene retention failed: "+retention_error);
    // The V6 renderer borrows current_scene. Retire it after pose capture and
    // before load_scene/world publication replaces that Scene's graph.
    clear_player_equipment_native(true);
    if(!restore){prince_skills.reset();prince_source_ai.reset();}
    std::vector<std::uint8_t> source_mlx_bytes,source_layout_bytes,source_spawn_bytes;
    std::vector<dh2::world::GeneratedMgpView> generated_crypt_mgps;
    std::vector<std::string> generated_crypt_mgp_paths;
    std::vector<dh2::world::GeneratedCryptMvpFileV1> generated_crypt_mvps;
    std::vector<std::string> generated_crypt_mvp_paths;
    std::vector<dh2::world::GeneratedCryptAnimatedDecorV1>
        generated_crypt_animated_decors;
    std::size_t generated_crypt_deferred_mvp_count=0;
    if(generated_spawnpoints||generated_spawnpoints_size){
      if(!generated_spawnpoints||!generated_spawnpoints_size||
         generated_spawnpoints_size>16+512*144)
        throw std::runtime_error("Generated SPWN payload is incomplete or exceeds the runtime limit");
      source_spawn_bytes.assign(generated_spawnpoints,
                                generated_spawnpoints+generated_spawnpoints_size);
    }
    std::vector<std::vector<std::uint8_t>> source_mgp_bytes;
    std::vector<dh2::world::SourceMgpView> source_mgps;
    std::vector<std::vector<std::uint8_t>> source_mvp_bytes;
    std::vector<dh2::world::SourceMvpView> source_mvps;
    std::vector<dh2::world::SourceMvpDecor> source_mvp_decors;
    std::vector<MvpRenderInstance> mvp_render_instances;
    const std::uint8_t* selected_descriptor=descriptor;std::size_t selected_descriptor_size=size;
    if(level_assets.generated_crypt_layout){
      const auto& xml=level_assets.generated_crypt_source_xml;
      source_mlx_bytes.assign(xml.begin(),xml.end());
      std::string generated_mgp_error;
      if(!build_generated_crypt_mgp_views(level_assets,generated_crypt_mgps,
           generated_crypt_mgp_paths,generated_mgp_error))
        throw std::runtime_error("Generated Crypt MGP inputs rejected: "+generated_mgp_error);
      if(!build_generated_crypt_mvp_views(level_assets,generated_crypt_mvps,
           generated_crypt_mvp_paths,generated_mgp_error))
        throw std::runtime_error("Generated Crypt MVP inputs rejected: "+generated_mgp_error);
    }else if(source_static_level){
      std::string source_layout_error;
      source_mlx_bytes=read(assets,"data/scene/001_swamp.mlx","original-cache");
      static constexpr std::array<const char*,9> source_mgp_paths={
        "data/3d/modules/swamp/mgp/obj_4of4_brdwalk_sw_00.mgp",
        "data/3d/modules/swamp/mgp/obj_3of4_brdwalk_sw_00.mgp",
        "data/3d/modules/swamp/mgp/obj_1of4_brdwalk_nse_00.mgp",
        "data/3d/modules/swamp/mgp/corner_ruin_ws_00.mgp",
        "data/3d/modules/swamp/mgp/merchantcamp_ruins_swe_00.mgp",
        "data/3d/modules/swamp/mgp/corner_brdwalk_se_00.mgp",
        "data/3d/modules/swamp/mgp/deadend_brdwalk_w_00.mgp",
        "data/3d/modules/swamp/mgp/bossroom_ruins_ns_.mgp",
        "data/3d/modules/swamp/mgp/obj_2of4_brdwalk_sw_00.mgp"};
      static constexpr std::array<const char*,9> source_mvp_paths={
        "data/3d/modules/swamp/mvp/obj_4of4_brdwalk_sw_00.mvp",
        "data/3d/modules/swamp/mvp/obj_3of4_brdwalk_sw_00.mvp",
        "data/3d/modules/swamp/mvp/obj_1of4_brdwalk_nse_00.mvp",
        "data/3d/modules/swamp/mvp/corner_ruin_ws_00.mvp",
        "data/3d/modules/swamp/mvp/merchantcamp_ruins_swe_00.mvp",
        "data/3d/modules/swamp/mvp/corner_brdwalk_se_00.mvp",
        "data/3d/modules/swamp/mvp/deadend_brdwalk_w_00.mvp",
        "data/3d/modules/swamp/mvp/bossroom_ruins_ns_.mvp",
        "data/3d/modules/swamp/mvp/obj_2of4_brdwalk_sw_00.mvp"};
      source_mgp_bytes.reserve(source_mgp_paths.size());
      source_mgps.reserve(source_mgp_paths.size());
      for(const auto* path:source_mgp_paths){
        source_mgp_bytes.push_back(read(assets,path,"original-cache"));
        const auto& bytes=source_mgp_bytes.back();
        source_mgps.push_back({path,bytes.data(),bytes.size()});
      }
      source_mvp_bytes.reserve(source_mvp_paths.size());
      source_mvps.reserve(source_mvp_paths.size());
      for(const auto* path:source_mvp_paths){
        source_mvp_bytes.push_back(read(assets,path,"original-cache"));
        const auto& bytes=source_mvp_bytes.back();
        source_mvps.push_back({path,bytes.data(),bytes.size()});
      }
      if(!dh2::world::compile_source_spawnpoints(source_mlx_bytes.data(),source_mlx_bytes.size(),source_mgps.data(),
          source_mgps.size(),source_spawn_bytes,source_layout_error))
        throw std::runtime_error("Original source MGP SpawnPoint import rejected: "+source_layout_error);
      const auto entrypoint=active_native_start_plan?active_native_start_plan->entry_point:0;
      if(!dh2::world::compile_source_layout(source_mlx_bytes.data(),source_mlx_bytes.size(),source_spawn_bytes.data(),
          source_spawn_bytes.size(),entrypoint,source_layout_bytes,source_layout_error))
        throw std::runtime_error("Original source MLX layout rejected: "+source_layout_error);
      selected_descriptor=source_layout_bytes.data();selected_descriptor_size=source_layout_bytes.size();
      __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native source MLX/MGP imported | row %d | %s | modules %u | supported SpawnPoints %u | selected entrypoint %d | source object factories remain separate",
        level_assets.row,level_assets.level_file.c_str(),selected_descriptor_size>=12?unsigned(selected_descriptor[8]|(unsigned(selected_descriptor[9])<<8)|(unsigned(selected_descriptor[10])<<16)|(unsigned(selected_descriptor[11])<<24)):0,unsigned(source_spawn_bytes.size()>=16?(source_spawn_bytes.size()-16)/144:0),entrypoint);
    }
    auto raw=read(assets,level_assets.bres,source_static_level?"original-cache":"worlds");dh2::resources::BresView view{};
    if(dh2_bres_open(&view,raw.data(),raw.size())!=dh2::resources::BresError::ok)throw std::runtime_error("World BRES rejected");
    dh2::world::Level candidate;std::string error;
    const bool validate_descriptor_spawn=!level_assets.generated_crypt_layout||source_spawn_bytes.empty();
    if(!dh2::world::load(view,selected_descriptor,selected_descriptor_size,candidate,error,validate_descriptor_spawn))throw std::runtime_error(error);
    if(level_assets.name=="GOTHICUS_CRYPT_01"&&
       (level_assets.generated_crypt_layout||level_assets.development_layout)){
     std::vector<std::uint8_t> backup_mlx;
     const auto* source_mlx=&source_mlx_bytes;
     if(!level_assets.generated_crypt_layout){
      backup_mlx=read(assets,"x07_crypt_backup.mlx","worlds");
      source_mlx=&backup_mlx;
     }
     const char* source_path=level_assets.generated_crypt_layout
       ?"data/scene/generated_crypt.mlx":"worlds/x07_crypt_backup.mlx";
     dh2::crypt_module_bounds_registry_v1::Result bounds_result{};
     const auto bounds_status=dh2::crypt_module_bounds_registry_v1::build_from_assets(
       "GOTHICUS_CRYPT_01",source_path,
       source_mlx->data(),source_mlx->size(),raw.data(),raw.size(),
       &candidate_crypt_module_bounds,&bounds_result);
     if(bounds_status!=dh2::crypt_module_bounds_registry_v1::Status::complete||
        candidate.rooms!=bounds_result.module_count)
      throw std::runtime_error("Crypt source module bounds differ from active DWLD room order");
     if(level_assets.generated_crypt_layout){
      if(bounds_result.module_count!=level_assets.generated_crypt_modules.size())
       throw std::runtime_error("Generated Crypt module bounds differ from generated module count");
      for(std::size_t i=0;i<candidate_crypt_module_bounds.modules.size();++i){
       const auto& bounded=candidate_crypt_module_bounds.modules[i];
       const auto& generated=level_assets.generated_crypt_modules[i];
       const auto expected_name=generated.block_name+"_"+std::to_string(i);
       const auto expected_root=generated.xrefobject+"-node";
       if(bounded.module_index!=i||bounded.module_name!=expected_name||
          bounded.root_id!=expected_root)
        throw std::runtime_error("Generated Crypt Module identity/order differs from DWLD");
      }
     }else if(bounds_result.module_count!=8){
      throw std::runtime_error("Crypt backup bounds differ from the eight-room development layout");
     }
     __android_log_print(ANDROID_LOG_INFO,"DH2Native",
       "%s Crypt module bounds ready | modules %u | scene nodes %llu | geometry %llu | draw buffers %llu | actor/RoomZone binding pending",
       level_assets.generated_crypt_layout?"Generated":"Backup",
       bounds_result.module_count,
       static_cast<unsigned long long>(bounds_result.scene_nodes),
       static_cast<unsigned long long>(bounds_result.geometry_instances),
       static_cast<unsigned long long>(bounds_result.draw_buffers));
     for(const auto& module:candidate_crypt_module_bounds.modules)
      __android_log_print(ANDROID_LOG_INFO,"DH2Native",
       "Crypt module root bounds | index %u | %s | root %s | min %.3f %.3f %.3f | max %.3f %.3f %.3f",
       module.module_index,module.module_name.c_str(),module.root_id.c_str(),
       module.bounds.minimum[0],module.bounds.minimum[1],module.bounds.minimum[2],
       module.bounds.maximum[0],module.bounds.maximum[1],module.bounds.maximum[2]);
    }
    if(!restore){
      if(source_spawn_bytes.empty())source_spawn_bytes=read(assets,level_assets.spawns,"worlds");
      const auto& spawn_bytes=source_spawn_bytes;std::vector<dh2::world::EntryPoint> entrypoints;
      if(!dh2::world::load_entrypoints(spawn_bytes.data(),spawn_bytes.size(),candidate.rooms,entrypoints,error))throw std::runtime_error(error);
      dh2::world::SpawnSelection start;
      const auto entrypoint=active_native_start_plan?active_native_start_plan->entry_point:0;
      if(!dh2::world::select_entrypoint(candidate,entrypoints,entrypoint,start,error))throw std::runtime_error(error);
      candidate.spawn=start.position;
      source_spawn_heading=start.rotation_degrees[2]*0.01745329251994329577f;
      __android_log_print(ANDROID_LOG_INFO,"DH2Native","Source SpawnPoint selected | ID %d | %s | room %u | floor snapped %u | source xyz %.4f %.4f %.4f | start xyz %.4f %.4f %.4f | source rotation z %.4f deg",
        start.source.id,start.source.name.c_str(),start.source.room,unsigned(start.floor_snapped),start.source.world.position[0],start.source.world.position[1],start.source.world.position[2],start.position[0],start.position[1],start.position[2],start.rotation_degrees[2]);
    }
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
    const auto map_records=read(assets,"worldmap_pyarray.bin","data"),map_names=read(assets,"worldmap_pyarraynames.bin","data"),map_schema=read(assets,"worldmap_pystructnames.bin","data");
    dh2::data::WorldMapTables world_map_tables;
    if(!dh2::data::load_world_map({map_records.data(),map_records.size()},{map_names.data(),map_names.size()},{map_schema.data(),map_schema.size()},world_map_tables,error))throw std::runtime_error(error);
    __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native WorldMap catalogue | locations %zu | lockers %zu | distinct from FastTravelList; gameplay Save state loader pending",world_map_tables.locations.size(),world_map_tables.lockers.size());
    // One immutable definition generation. Future Quest factories retain its
    // View while they borrow row/list/stub controls; reload cannot retire them.
    // No Quest instances, Lua import or successful empty children are created.
    using QuestInput=dh2::data::quest_table_bindings_v1::Input;
    auto quest_records=std::make_shared<const std::vector<std::uint8_t>>(read(assets,"v2quests_pyarray.bin","data"));
    auto quest_names=std::make_shared<const std::vector<std::uint8_t>>(read(assets,"v2quests_pyarraynames.bin","data"));
    QuestInput quest_input;
    if(dh2_quests_open(&quest_input.table,quest_records->data(),std::uint32_t(quest_records->size())))throw std::runtime_error("Native original quest catalogue decode failed");
    quest_input.packed_owner=quest_records;quest_input.names=quest_names->data();quest_input.names_size=quest_names->size();quest_input.names_owner=quest_names;
    dh2::data::quest_table_bindings_v1::Owner quest_tables;
    if(!quest_tables.load(quest_input,error))throw std::runtime_error(error);
    auto quest_constants_bytes=std::make_shared<const std::vector<std::uint8_t>>(read(assets,"v2quests_pycst.bin","data"));
    dh2::native::quests::Constants quest_constants;
    if(dh2_pycst_open(&quest_constants.view,quest_constants_bytes->data(),std::uint32_t(quest_constants_bytes->size())))throw std::runtime_error("Native original quest constants rejected");
    quest_constants.owner=quest_constants_bytes;
    __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native Quest catalogue | definitions %u | immutable table and constants generation",quest_tables.borrow().count());
    const auto selected_level_row=level_assets.row>=0?level_assets.row:
      dh2::data::find_level(level_tables,"GOTHICUS_CRYPT_01");
    if(selected_level_row<0||std::size_t(selected_level_row)>=level_tables.levels.size())
      throw std::runtime_error("Selected level catalogue row missing");
    const auto& selected_declaration=level_tables.levels.at(std::size_t(selected_level_row));
    dh2::level_construction_fields::State candidate_level_fields{};
    dh2::level_construction_fields::Result candidate_level_scan{};
    const auto candidate_level_file=level_assets.level_file.empty()?selected_declaration.level_file:level_assets.level_file;
    const auto candidate_level_difficulty=active_native_start_plan?
      active_native_start_plan->requested_difficulty_for_load:0;
    if(dh2::level_construction_fields::initialize(&level_tables,candidate_level_file,candidate_level_difficulty,&candidate_level_fields,&candidate_level_scan)!=dh2::level_construction_fields::Status::selected || candidate_level_fields.level_list_index_3c!=selected_level_row)
      throw std::runtime_error("Source Level constructor field selection failed");
    __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native level catalogue | fast travel %zu | levels %zu | selected %s row %d | ranges %d %d / %d %d / %d %d | GSLevel ownership pending",level_tables.fast_travel.size(),level_tables.levels.size(),selected_declaration.name.c_str(),selected_level_row,selected_declaration.monster_lvl_min,selected_declaration.monster_lvl_max,selected_declaration.monster_lvl_min_hard,selected_declaration.monster_lvl_max_hard,selected_declaration.monster_lvl_min_nightmare,selected_declaration.monster_lvl_max_nightmare);
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
    if(dh2::native::crypt_camera_frame_v1::verified_swamp_default_camera_route(
          level_assets.name,level_assets.level_file)){
     // LevelConfig::DeclareProperties defaults camera_animset to "Default"
     // (IDA 0x3f4c04); camera_name is the separate PlayerCamera_Default node.
     // Bind the renderer's already-sampled CameraTests rig to that real table
     // row, rather than silently assuming a camera_idle file with matching
     // spelling is the selected source animation.
     const auto camera_set=std::find(animation_tables.camera_names.begin(),
         animation_tables.camera_names.end(),"Default");
     if(camera_set==animation_tables.camera_names.end())
      throw std::runtime_error("SWAMP source camera animset Default is absent");
     const auto camera_set_index=static_cast<std::size_t>(
         camera_set-animation_tables.camera_names.begin());
     if(camera_set_index!=0||camera_set_index>=animation_tables.cameras.size())
      throw std::runtime_error("SWAMP source camera animset Default row changed");
     const auto idle_id=animation_tables.cameras[camera_set_index].idle;
     if(idle_id<0||static_cast<std::size_t>(idle_id)>=clip_table.values.size())
      throw std::runtime_error("SWAMP source camera Default idle animation is invalid");
     std::string idle_path=clip_table.values[static_cast<std::size_t>(idle_id)];
     std::transform(idle_path.begin(),idle_path.end(),idle_path.begin(),
         [](unsigned char c){return static_cast<char>(std::tolower(c));});
      if(idle_path!="data/3d/camera/animations/common/camera_idle.bdae")
       throw std::runtime_error("SWAMP source camera Default idle animation changed");
      const bool camera_tests_rig_bound=player_camera_rig&&
         player_camera_rig_asset=="data/3d/camera/cameratests.bdae"&&
         player_camera_rig->track_count()>0;

     // DesignSettingsTable's runtime row is 176 bytes (vptr + 43 packed
     // fields; IDA read 0x4b3cd0). The cache row omits the vptr, so these
     // packed field indices supply the four exact HandleZoom limits at
     // CameraLevel::HandleZoom 0x410218.
     const auto design=read(assets,"design_pyarray.bin","original-cache/data/pydata");
     const auto read_u32=[](const std::uint8_t* p){return std::uint32_t(p[0])|
         (std::uint32_t(p[1])<<8)|(std::uint32_t(p[2])<<16)|
         (std::uint32_t(p[3])<<24);};
     if(design.size()<4+43*4||read_u32(design.data())!=1)
      throw std::runtime_error("SWAMP source camera DesignSettings row is unavailable");
     const auto read_design_float=[&](std::size_t field){
      float value=0.0f;const auto bits=read_u32(design.data()+4+field*4);
      std::memcpy(&value,&bits,sizeof(value));return value;
     };
     const float mini_map_max=read_design_float(17),mini_map_min=read_design_float(18);
     const float zoom_max=read_design_float(41),zoom_min=read_design_float(42);
     if(!std::isfinite(mini_map_min)||!std::isfinite(mini_map_max)||
        !std::isfinite(zoom_min)||!std::isfinite(zoom_max)||
        mini_map_min>mini_map_max||zoom_min>zoom_max)
      throw std::runtime_error("SWAMP source camera DesignSettings zoom bounds are invalid");
     if(camera_tests_rig_bound){
      __android_log_print(ANDROID_LOG_INFO,"DH2Native",
         "SWAMP source camera binding | CameraTests / PlayerCamera_Default | CamAnimSet Default row %zu | idle %d %s | normal zoom %.3f..%.3f | alternate zoom %.3f..%.3f | rig tracks %u | ZoomHandler state remains separate",
         camera_set_index,idle_id,clip_table.values[static_cast<std::size_t>(idle_id)].c_str(),
         zoom_min,zoom_max,mini_map_min,mini_map_max,player_camera_rig->track_count());
     }else{
      __android_log_print(ANDROID_LOG_WARN,"DH2Native",
         "SWAMP CameraTests rig asset unavailable; source idle and zoom tables verified; using source-derived fallback camera optics");
     }
    }
    __android_log_print(ANDROID_LOG_INFO,"DH2Native","Animation tables ready | sequences %zu | characters %zu | clip paths %zu | bytes %zu",animation_tables.sequences.size(),animation_tables.characters.size(),clip_table.values.size(),animation_tables.data_consumed);
    std::vector<dh2::objects::Record> object_records;
    std::vector<dh2::world::GeneratedCryptActorHandleV1>
        generated_crypt_actor_sources;
    if(!level_assets.objects.empty()){
     std::vector<std::uint8_t> source_object_bytes;
     if(level_assets.generated_crypt_layout){
      std::size_t actor_count=0,deferred_count=0;
      if(!level_assets.generated_crypt_handle_ledger)
       throw std::runtime_error("Generated Crypt source handle ledger is unavailable");
      if(!dh2::world::compile_generated_crypt_dact_v1(
          source_mlx_bytes.data(),source_mlx_bytes.size(),
          "GOTHICUS_CRYPT_01","data/scene/generated_crypt.mlx",
          generated_crypt_mgps.data(),generated_crypt_mgps.size(),
          character_table,model_table,*level_assets.generated_crypt_handle_ledger,
          generated_crypt_actor_sources,source_object_bytes,actor_count,
          deferred_count,error))
       throw std::runtime_error("Generated Crypt MGP actor import rejected: "+error);
      __android_log_print(ANDROID_LOG_INFO,"DH2Native",
       "Generated Crypt MGP actors imported | DACT bytes %zu | source-owned direct Monsters %zu | source/deferred records %zu | duplicate manager candidates omitted",
       source_object_bytes.size(),actor_count,deferred_count);
     }else if(source_static_level){
      if(!dh2::world::compile_source_dact(source_mlx_bytes.data(),source_mlx_bytes.size(),source_mgps.data(),source_mgps.size(),character_table,model_table,source_object_bytes,error))
       throw std::runtime_error("Original source MGP actor import rejected: "+error);
      __android_log_print(ANDROID_LOG_INFO,"DH2Native","Source MGP direct actors imported | DACT bytes %zu | supported records 5 | scripted/conditional actors deferred",source_object_bytes.size());
     }else source_object_bytes=read(assets,level_assets.objects,"worlds");
     if(!dh2::objects::load_records(source_object_bytes.data(),source_object_bytes.size(),candidate.rooms,character_table,model_table,object_records,error))throw std::runtime_error(error);
    }
    if(source_static_level){
     if(!dh2::world::compile_source_mvp(source_mlx_bytes.data(),source_mlx_bytes.size(),source_mvps.data(),source_mvps.size(),source_mvp_decors,error))
      throw std::runtime_error("Original source MVP decor import rejected: "+error);
     __android_log_print(ANDROID_LOG_INFO,"DH2Native","Source MVP static decor imported | records %zu | shared prop_swamp_corpses.bdae | conditional/animated objects deferred",source_mvp_decors.size());
     for(const auto& decor:source_mvp_decors){
      MvpRenderInstance instance{};instance.module_index=decor.module_index;
      instance.source_record=decor.source_record;instance.name=decor.name;
      instance.xrefobject=decor.xrefobject;instance.dae_path=decor.dae_path;
      instance.source_path=decor.source_path;
      for(unsigned axis=0;axis<3;++axis){
       instance.position[axis]=decor.world.position[axis];
       instance.rotation_degrees[axis]=decor.world.rotation_degrees[axis];
       instance.scale[axis]=decor.world.scale[axis];
      }
      mvp_render_instances.push_back(std::move(instance));
     }
    }
    if(level_assets.generated_crypt_layout){
     if(!level_assets.generated_crypt_handle_ledger)
      throw std::runtime_error("Generated Crypt source handle ledger is unavailable");
     if(!dh2::world::compile_generated_crypt_animated_decor_v1(
          source_mlx_bytes.data(),source_mlx_bytes.size(),
          "GOTHICUS_CRYPT_01","data/scene/generated_crypt.mlx",
          generated_crypt_mvps.data(),generated_crypt_mvps.size(),
          *level_assets.generated_crypt_handle_ledger,
          generated_crypt_animated_decors,generated_crypt_deferred_mvp_count,
          error))
      throw std::runtime_error("Generated Crypt MVP import rejected: "+error);
     for(const auto& decor:generated_crypt_animated_decors){
      MvpRenderInstance instance{};instance.module_index=decor.module_index;
      instance.source_record=decor.source_record;
      instance.source_handle=decor.source_handle;instance.name=decor.name;
      instance.xrefobject=decor.xrefobject;instance.dae_path=decor.dae_path;
      instance.source_path=decor.source_path;instance.packaged_actor_asset=true;
      for(unsigned axis=0;axis<3;++axis){
       instance.position[axis]=decor.world_transform[axis];
       instance.rotation_degrees[axis]=decor.world_transform[3+axis];
       instance.scale[axis]=decor.world_transform[6+axis];
      }
      mvp_render_instances.push_back(std::move(instance));
     }
     __android_log_print(ANDROID_LOG_INFO,"DH2Native",
       "Generated Crypt MVP AnimatedDecor imported | retained %zu | duplicate/conditional/scripted candidates deferred %zu | idle rest pose",
       generated_crypt_animated_decors.size(),generated_crypt_deferred_mvp_count);
    }
    auto prince=read(assets,"prince_modular.bdae","models"),idle=read(assets,"prince_idle_shield.bdae","animations"),walk=read(assets,"prince_walk_1hand.bdae","animations");
    dh2::resources::BresView actor_view{};dh2_bres_open(&actor_view,prince.data(),prince.size());dh2::scene::Scene rest;
    if(!dh2::scene::load(actor_view,rest,error))throw std::runtime_error(error);
    dh2::animation::Player candidate_idle,candidate_walk;
    if(!candidate_idle.load(idle.data(),idle.size(),rest,error)||!candidate_walk.load(walk.data(),walk.size(),rest,error))throw std::runtime_error(error);
    if(native_host.metadata_slot>=0){
     if(menu_gameplay_slot>=0)native_host.prepare_metadata(runtime_root,character_table,native_save_difficulty);
     else native_host.load_metadata_preview(runtime_root,character_table,native_save_difficulty);
     if(menu_gameplay_slot>=0&&active_native_start_plan)
      native_save_difficulty=active_native_start_plan->difficulty_for_level;
     const auto& receipt=native_host.metadata->receipt();
     __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native campaign metadata | slot %d | class %d | level %d | difficulty %d | level ID %u | sections %u | reads %u | file opens %u | Save %zu | profile %zu | source mask1; spawn/InitPost/mask4/writes pending",receipt.slot,receipt.character_class,receipt.level,receipt.difficulty,receipt.source_level_id,receipt.sections,receipt.field_reads,receipt.file_opens,std::size_t(native_host.metadata->save_identity()),std::size_t(native_host.metadata->profile_identity()));
    }
    PlayerCombat fresh_player;
    if(!restore){
     const auto loot_records=read(assets,"loot_table_pyarray.bin","data");
     const auto loot_names=read(assets,"loot_table_pyarraynames.bin","data");
     const auto loot_schema=read(assets,"loot_table_pystructnames.bin","data");
     fresh_player.inventory_loot_tables=std::make_shared<dh2::data::LootTablesV2>();
     if(!fresh_player.inventory_loot_tables->load(
           {loot_records.data(),loot_records.size()},
           {loot_names.data(),loot_names.size()},
           {loot_schema.data(),loot_schema.size()},error))
      throw std::runtime_error("Native gameplay LootTable resources rejected: "+error);
     const auto visual_records=read(assets,"loot_audiovisual_pyarray.bin","data");
     const auto visual_names=read(assets,"loot_audiovisual_pyarraynames.bin","data");
     const auto visual_schema=read(assets,"loot_audiovisual_pystructnames.bin","data");
     fresh_player.item_audio_visuals=std::make_shared<dh2::data::ItemAudioVisualTableV1>();
     if(!fresh_player.item_audio_visuals->load(
          {visual_records.data(),visual_records.size()},
          {visual_names.data(),visual_names.size()},
          {visual_schema.data(),visual_schema.size()},error))
      throw std::runtime_error("Native ItemAudioVisual resources rejected: "+error);
     const char* power_files[]={
      "item_powers_pyarray.bin","item_powers_pyarraynames.bin","item_powers_pystructnames.bin",
      "item_powers_monopoly_pyarray.bin","item_powers_monopoly_pyarraynames.bin","item_powers_monopoly_pystructnames.bin"};
     std::array<std::vector<std::uint8_t>,6> power_bytes;
     for(std::size_t i=0;i<power_bytes.size();++i)
      power_bytes[i]=read(assets,power_files[i],"original-cache/data/pydata");
     fresh_player.item_power_tables=std::make_shared<dh2::data::ItemPowerTablesV5>();
     if(!fresh_player.item_power_tables->load(
          {power_bytes[0].data(),power_bytes[0].size()},
          {power_bytes[1].data(),power_bytes[1].size()},
          {power_bytes[2].data(),power_bytes[2].size()},error))
      throw std::runtime_error("Native ItemPower resources rejected: "+error);
     const auto loot_borrow=fresh_player.inventory_loot_tables->borrow();
     dh2::data::Bytes quantities{};
     if(!dh2::data::select_source_quantity_array_v7(
          {loot_records.data(),loot_records.size()},
          {loot_names.data(),loot_names.size()},loot_borrow.consumed(),quantities,error))
      throw std::runtime_error("Native NumProbArray resources rejected: "+error);
     dh2::data::LootPowerInputsV7 power_input{
      {power_bytes[0].data(),power_bytes[0].size()},
      {power_bytes[1].data(),power_bytes[1].size()},
      {power_bytes[2].data(),power_bytes[2].size()},
      {power_bytes[3].data(),power_bytes[3].size()},
      {power_bytes[4].data(),power_bytes[4].size()},
      {power_bytes[5].data(),power_bytes[5].size()},
      quantities,
      {loot_names.data(),loot_names.size()},{loot_schema.data(),loot_schema.size()}};
     fresh_player.loot_power_resources=std::make_shared<dh2::data::LootPowerResourcesV7>();
     if(!fresh_player.loot_power_resources->load(power_input,
          fresh_player.item_power_tables->borrow(),error))
      throw std::runtime_error("Native powered-loot resources rejected: "+error);
    }
    fresh_player.savegame=std::make_shared<dh2::data::PlayerSavegameV1>();
    fresh_player.savegame->set_character(prince_character.owner());
    fresh_player.savegame->set_slot(menu_gameplay_slot);
    if(!restore){
     fresh_player.quests=std::make_shared<dh2::native::quests::Owner>(fresh_player.savegame,quest_tables.borrow(),quest_constants);
    }else if(!prince_combat.quests)throw std::runtime_error("Retained native quest factory owner missing");
    fresh_player.save_profile=std::make_shared<dh2::data::PlayerSaveProfileV1>();
    fresh_player.profile_characters=std::make_shared<dh2::data::CharacterTable>(character_table);
    if(!restore&&item_text_services_factory){
      const auto tables=fresh_player.inventory_loot_tables->borrow();
      fresh_player.item_text=item_text_services_factory(item_text_services_context,
          tables.items(),*fresh_player.profile_characters);
      __android_log_print(ANDROID_LOG_INFO,"DH2Native",
          "Native Item text services bound | Item rows %zu | Character rows %zu | one retained StringManager owner",
          tables.items().rows.size(),fresh_player.profile_characters->rows.size());
    }else if(!restore){
      __android_log_print(ANDROID_LOG_WARN,"DH2Native",
          "Native Item text services unavailable | loot item text calls will fail explicitly");
    }
    if(!restore){
      fresh_player.item_presentation=std::make_unique<dh2::data::ItemPresentationOwnerV5>(
          fresh_player.item_power_tables->borrow());
      fresh_player.loot_power_creation=std::make_unique<dh2::data::LootPowerCreationV7>(
          fresh_player.loot_power_resources->borrow(),
          dh2::random_lifecycle::inventory_random_service());
      __android_log_print(ANDROID_LOG_INFO,"DH2Native",
          "Native powered-loot resources retained | power rows %zu | loot power lists %zu | shared process RNG",
          fresh_player.item_power_tables->borrow().rows().size(),
          fresh_player.loot_power_resources->borrow().lists().size());
    }
    fresh_player.save_transport=std::make_shared<dh2::native::player_profile::Transport>(*fresh_player.savegame,*fresh_player.save_profile);
    if(!fresh_player.save_transport->bind({runtime_root,fresh_player.profile_characters.get(),&native_save_difficulty,{},false,&actor_level_tables,&actor_world_map_tables,fresh_player.quests,&native_host.online},error))throw std::runtime_error(error);
    auto* gameplay_save=fresh_player.savegame.get();auto* gameplay_loader=&fresh_player.save_transport->loader();
    struct ClassificationBacking {const dh2::data::AiTables& tables;std::vector<dh2::character_ai_classification::AiRow> rows;dh2::character_ai_classification::AiTable table;};
    ClassificationBacking classification{ai_tables,{}, {}};
    for(const auto& row:ai_tables.rows)classification.rows.push_back({row.flags,row.type});
    classification.table={classification.rows.data(),std::uint32_t(classification.rows.size())};
    dh2::character_saved_class_v1::Bindings saved_class{};
    saved_class.character=prince_character.owner();saved_class.property_cache=&fresh_player.property_cache;saved_class.template_cache=&fresh_player.template_cache;
    saved_class.characters=&character_table;saved_class.current_savegame=&gameplay_save;saved_class.current_loader=&gameplay_loader;
    saved_class.random=&dh2::random_lifecycle::process_state();
    saved_class.services={&classification,[](void* context,std::uintptr_t character,std::uint32_t* value,std::string& failure)->int {
     using namespace dh2::character_ai_classification;auto& backing=*static_cast<ClassificationBacking*>(context);
     // Native development factory supplies the original _AddCharacter name
     // form. Uninitialized cached AI/faction words follow the source getters.
     State state{character,-1,-1,"PlayerCharacter_0",0};
     Services services{&backing,[](void* raw,State*,const Request* q,Response* r)->std::int32_t {
      auto& b=*static_cast<ClassificationBacking*>(raw);
      switch(q->operation){case Operation::ai_count:r->count=std::int32_t(b.tables.rows.size());return 0;
       case Operation::faction_count:r->count=std::int32_t(b.tables.factions.size());return 0;
       case Operation::ai_table:r->table=&b.table;return 0;
       case Operation::find_player_name:if(!q->name)return 1;r->match=std::strstr(q->name,"PlayerCharacter");return 0;}
      return 1;
     }};Result result{};
     if(query(Query::player,&state,&services,&result)!=Status::complete){failure="Source startup IsPlayer query failed";return 1;}
     *value=result.word;return 0;
    }};
    dh2::character_saved_class_v1::Runtime class_owner(saved_class);dh2::character_saved_class_v1::Result class_result;
    if(class_owner.resolve(&class_result,error)!=dh2::character_saved_class_v1::Status::complete||class_result.value<0||std::size_t(class_result.value)>=character_table.rows.size())throw std::runtime_error("Gameplay class load failed: "+error);
    fresh_player.character_class=class_result.value;
    const auto* selected_player_class_id=dh2::data::property(
        character_table,character_table.names.at(std::size_t(fresh_player.character_class)),"ClassID");
    if(!selected_player_class_id)throw std::runtime_error("Selected Player Character ClassID is absent");
    fresh_player.player_class_id=*selected_player_class_id;
    if(restore&&prince_combat.character_class!=fresh_player.character_class)throw std::runtime_error("Retained gameplay class differs from its saved profile");
    if(restore&&prince_combat.player_class_id!=fresh_player.player_class_id)throw std::runtime_error("Retained Player ClassID differs from its saved profile");
    requested_player_class=fresh_player.player_class_id;
    __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native gameplay class | slot %d | class %d | preset %s | player queries %u | mask1 calls %u | publications %u | own Save %zu | profile %zu",menu_gameplay_slot,class_result.value,character_table.names.at(class_result.value).c_str(),class_result.player_queries,class_result.load_calls,class_result.property_publications,std::size_t(gameplay_save),std::size_t(fresh_player.save_profile->identity));
    dh2::data::reset_properties(property_rules,fresh_player.properties,&character_table.rows.at(fresh_player.character_class));
    fresh_player.aggro.initialize(object_records.size()+1);
    // Player vitals now initialize once through actual AIS InitProcess after
    // publication, with the retained Debug/property providers. The separate
    // development two-pass spawn helper would add another regeneration pass.
    if(!dh2::data::recalc_properties_with_class(class_table,property_rules,fresh_player.properties,error))throw std::runtime_error(error);
    fresh_player.animation_table=fresh_player.properties.resolved[2];
    __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native gameplay property cache | class %d | animation table %d | max HP %d | max MP %d",fresh_player.character_class,fresh_player.animation_table,fresh_player.properties.resolved[38],fresh_player.properties.resolved[43]);
    const auto bank_bytes=read(assets,"prince-animation-bank.bin","data");
    dh2::data::AnimationBank candidate_bank;
    if(!dh2::data::load_animation_bank({bank_bytes.data(),bank_bytes.size()},candidate_bank,error))throw std::runtime_error("Prince metadata rejected: "+error);
    // This existing Prince resource bank is shared by the three class tables.
    // Its Knight registration receipt remains unchanged; class selection owns
    // the live sequence table. Each reached authored clip is checked below.
    if(candidate_bank.character!="KnightPlayerBase"||fresh_player.animation_table<48||fresh_player.animation_table>50||candidate_bank.template_clip_id!=1111)throw std::runtime_error("Prince metadata producer does not match player properties");
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
      const auto dact_index=static_cast<std::size_t>(
          &object-object_records.data());
      int animation_table=-1;if(object.kind==1){const auto* id=dh2::data::property(character_table,object.character,"AnimTable");if(!id)throw std::runtime_error("Monster animation table property missing");animation_table=*id;}
      auto found=std::find_if(candidate_groups.begin(),candidate_groups.end(),[&](const ObjectGroup& group){return group.instances.front().model==object.model&&group.animation_table==animation_table;});
      auto start_actor=[&](ObjectGroup& group){
        group.instances.emplace_back(object);auto& actor=group.instances.back();
        actor.identity=0x100000002ull+(&object-object_records.data());
        if(object.kind!=1)return;
        if(level_assets.generated_crypt_layout){
          if(dact_index>=generated_crypt_actor_sources.size())
            throw std::runtime_error("Generated Crypt DACT actor provenance is truncated");
          const auto& source=generated_crypt_actor_sources[dact_index];
          if(source.dact_record!=dact_index||source.name!=object.name||
             source.source_handle<0)
            throw std::runtime_error("Generated Crypt DACT actor provenance differs from source handle ledger");
          actor.source_module_index=source.module_index;
          actor.source_record=source.source_record;
          actor.source_handle=source.source_handle;
        }
        actor.aggro.initialize(object_records.size()+1);
        const auto character=std::find(character_table.names.begin(),character_table.names.end(),object.character);const auto* class_id=dh2::data::property(character_table,object.character,"ClassID");const auto* loot_table_id=dh2::data::property(character_table,object.character,"Loot");
        if(character==character_table.names.end()||!class_id)throw std::runtime_error("Original monster class link absent");
        actor.class_id=*class_id;actor.loot_table_id=loot_table_id?*loot_table_id:-1;actor.base_class=character_table.rows.at(character-character_table.names.begin());
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
    for(const auto& mvp:mvp_render_instances){
      dh2::objects::Record record{};record.kind=2;record.room=mvp.module_index;
      record.name=mvp.name;record.model=mvp.dae_path;
      record.position=mvp.position;record.rotation_degrees=mvp.rotation_degrees;
      record.scale=mvp.scale;
      const float half=3.14159265358979323846f/360.f;
      const float x=record.rotation_degrees[0]*half,y=record.rotation_degrees[1]*half,z=record.rotation_degrees[2]*half;
      const float sx=std::sin(x),cx=std::cos(x),sy=std::sin(y),cy=std::cos(y),sz=std::sin(z),cz=std::cos(z);
      const float quaternion[]{sx*cy*cz-cx*sy*sz,cx*sy*cz+sx*cy*sz,cx*cy*sz-sx*sy*cz,cx*cy*cz+sx*sy*sz};
      dh2_node_matrix(record.placement.data(),record.position.data(),quaternion,record.scale.data());
      for(const auto value:record.placement)if(!std::isfinite(value))throw std::runtime_error("Source MVP placement is not finite");

      auto found=std::find_if(candidate_groups.begin(),candidate_groups.end(),[&](const ObjectGroup& group){
        return group.animation_table<0&&!group.instances.empty()&&group.instances.front().model==record.model;
      });
      if(found==candidate_groups.end()){
        candidate_groups.emplace_back();found=std::prev(candidate_groups.end());
        found->animation_table=-1;
        const auto separator=record.model.find_last_of("/\\");
        const auto resource_name=mvp.packaged_actor_asset
          ?record.model.substr(separator==std::string::npos?0:separator+1)
          :record.model;
        const auto model=read(assets,resource_name,
            mvp.packaged_actor_asset?"actors":"original-cache");
        if(!dh2::objects::load_resource(model.data(),model.size(),nullptr,0,found->resource,error))
          throw std::runtime_error("Source MVP BDAE rejected: "+error);
        for(const auto& primitive:found->resource.primitives){
          Draw draw;draw.node=primitive.node;draw.material=found->resource.scene.materials.at(primitive.material);
          draw.skin=primitive.skin;draw.cpu_vertices=primitive.vertices;draw.rest_positions=primitive.rest_positions;
          draw.count=GLsizei(primitive.indices.size());found->draws.push_back(std::move(draw));auto& batch=found->draws.back();
          batch.diffuse=upload(assets,batch.material.diffuse,cache,textures);batch.alpha=upload(assets,batch.material.alpha_map,cache,textures);
          glGenBuffers(1,&batch.vertices);glBindBuffer(GL_ARRAY_BUFFER,batch.vertices);
          glBufferData(GL_ARRAY_BUFFER,primitive.vertices.size()*sizeof(Vertex),primitive.vertices.data(),
                       primitive.skin.nodes.empty()?GL_STATIC_DRAW:GL_DYNAMIC_DRAW);
          glGenBuffers(1,&batch.indices);glBindBuffer(GL_ELEMENT_ARRAY_BUFFER,batch.indices);
          glBufferData(GL_ELEMENT_ARRAY_BUFFER,primitive.indices.size()*sizeof(std::uint16_t),primitive.indices.data(),GL_STATIC_DRAW);
          check("Source MVP decor buffer upload");
        }
      }

      const auto root_id=mvp.xrefobject+"-node";
      const auto root_matches=std::count_if(found->resource.scene.graph.begin(),found->resource.scene.graph.end(),
        [&](const auto& node){return node.id==root_id;});
      if(root_matches!=1)throw std::runtime_error("Source MVP xrefobject root is absent or ambiguous: "+root_id);
      const auto root=std::find_if(found->resource.scene.graph.begin(),found->resource.scene.graph.end(),
        [&](const auto& node){return node.id==root_id;});
      const auto root_index=static_cast<unsigned>(root-found->resource.scene.graph.begin());
      if(std::none_of(found->resource.primitives.begin(),found->resource.primitives.end(),
          [&](const auto& primitive){return item_node_below(found->resource,primitive.node,root_index);}))
        throw std::runtime_error("Source MVP xrefobject root has no renderable primitive: "+root_id);
      ObjectActor instance(record);instance.identity=0;instance.source_root_node_id=root_id;
      instance.source_module_index=mvp.module_index;instance.source_record=mvp.source_record;
      instance.source_handle=mvp.source_handle;instance.source_visual_path=mvp.dae_path;
      instance.packaged_actor_asset=mvp.packaged_actor_asset;
      instance.visual_root=root_index;found->instances.push_back(std::move(instance));
    }
     auto itemdrops_bytes=read(assets,"itemdrops.bdae","actors");
     if(!dh2::objects::load_resource(itemdrops_bytes.data(),itemdrops_bytes.size(),
                                     nullptr,0,candidate_itemdrops,error))
      throw std::runtime_error("Original itemdrops.bdae rejected: "+error);
     const auto audio_visual_owner=restore?prince_combat.item_audio_visuals:fresh_player.item_audio_visuals;
     if(!audio_visual_owner)throw std::runtime_error("Native ItemAudioVisual owner is unavailable");
     const auto visual_rows=audio_visual_owner->borrow().rows();
     auto below_item_visual=[&](unsigned node,unsigned root){
      unsigned depth=0;
      while(node<candidate_itemdrops.scene.graph.size()&&depth++<candidate_itemdrops.scene.graph.size()){
       if(node==root)return true;
       const auto parent=candidate_itemdrops.scene.graph[node].parent;
       if(parent<0)return false;
       node=unsigned(parent);
      }
      return false;
     };
     for(const auto& row:visual_rows){
      const auto matches=std::count_if(candidate_itemdrops.scene.graph.begin(),candidate_itemdrops.scene.graph.end(),
       [&](const auto& node){return node.id==row.visual||node.name==row.visual;});
      if(matches!=1)throw std::runtime_error("ItemAudioVisual selector is not unique in itemdrops.bdae: "+row.visual);
      const auto root=std::find_if(candidate_itemdrops.scene.graph.begin(),candidate_itemdrops.scene.graph.end(),
       [&](const auto& node){return node.id==row.visual||node.name==row.visual;});
      if(root==candidate_itemdrops.scene.graph.end())
       throw std::runtime_error("ItemAudioVisual selector is absent from itemdrops.bdae: "+row.visual);
      const auto index=unsigned(root-candidate_itemdrops.scene.graph.begin());
      if(std::none_of(candidate_itemdrops.primitives.begin(),candidate_itemdrops.primitives.end(),
          [&](const auto& primitive){return below_item_visual(primitive.node,index);}))
       throw std::runtime_error("ItemAudioVisual selector has no renderable BDAE primitive: "+row.visual);
      candidate_itemdrop_roots.emplace(row.visual,index);
     }
     candidate_itemdrop_draws.reserve(candidate_itemdrops.primitives.size());
     for(const auto& primitive:candidate_itemdrops.primitives){
      candidate_itemdrop_draws.emplace_back();auto& batch=candidate_itemdrop_draws.back();
      batch.node=primitive.node;batch.material=candidate_itemdrops.scene.materials.at(primitive.material);
      batch.skin=primitive.skin;batch.cpu_vertices=primitive.vertices;batch.rest_positions=primitive.rest_positions;
      batch.count=GLsizei(primitive.indices.size());batch.diffuse=upload(assets,batch.material.diffuse,cache,textures);
      batch.alpha=upload(assets,batch.material.alpha_map,cache,textures);
      glGenBuffers(1,&batch.vertices);glBindBuffer(GL_ARRAY_BUFFER,batch.vertices);
      glBufferData(GL_ARRAY_BUFFER,primitive.vertices.size()*sizeof(Vertex),primitive.vertices.data(),
                   primitive.skin.nodes.empty()?GL_STATIC_DRAW:GL_DYNAMIC_DRAW);
      glGenBuffers(1,&batch.indices);glBindBuffer(GL_ELEMENT_ARRAY_BUFFER,batch.indices);
      glBufferData(GL_ELEMENT_ARRAY_BUFFER,primitive.indices.size()*sizeof(std::uint16_t),
                   primitive.indices.data(),GL_STATIC_DRAW);check("Item drop buffer upload");
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
    const auto actor_report=load_scene(prince.data(),prince.size(),assets,true,
      restore?prince_combat.inventory.get():nullptr);
    if(actor_report.find("Model load failed:")==0)throw std::runtime_error(actor_report);
    environment.insert(environment.end(),std::make_move_iterator(draws.begin()),std::make_move_iterator(draws.end()));draws=std::move(environment);
    images.insert(images.end(),textures.begin(),textures.end());textures.clear();
    {std::vector<GLuint> shared_textures;release(itemdrops_draws,shared_textures);}
    itemdrops_resource=std::move(candidate_itemdrops);
    itemdrops_draws=std::move(candidate_itemdrop_draws);
    itemdrop_roots=std::move(candidate_itemdrop_roots);itemdrops_ready=true;
    // This runtime borrows ObjectActor fields. Retire it while the old groups
    // still own those actors, before publishing their replacements.
    if(active_crypt_room_runtime){
      if(!active_crypt_room_runtime->clear())
        throw std::runtime_error("Crypt RoomZone owner retirement failed before world replacement");
      active_crypt_room_runtime.reset();
    }
    object_groups=std::move(candidate_groups);world_objects=std::move(object_records);unsigned monsters=0,decors=0,object_triangles=0,object_draws=0;
    if(!restore){actor_animation_tables=std::move(animation_tables);actor_clip_table=std::move(clip_table);}
    actor_random=restore?previous_random:animation_random;actor_property_rules=property_rules;actor_ai_tables=std::move(ai_tables);
    actor_ai_classification_rows.clear();actor_ai_classification_rows.reserve(actor_ai_tables.rows.size());
    for(const auto& row:actor_ai_tables.rows)actor_ai_classification_rows.push_back({row.flags,row.type});
    actor_ai_classification_table={actor_ai_classification_rows.data(),std::uint32_t(actor_ai_classification_rows.size())};
    actor_level_tables=std::move(level_tables);
    actor_quest_tables=std::move(quest_tables);
    actor_quest_constants=std::move(quest_constants);
    actor_world_map_tables=std::move(world_map_tables);
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
    if(!restore){
      if(prince_combat.saved_inventory_incoming){
        std::string retirement_error;
        if(!prince_combat.inventory||!prince_combat.save_inventory_services.invoke||
           !prince_combat.inventory->retire_item(
             dh2::data::RetainedItemSlotV4{&prince_combat.saved_inventory_incoming},
             prince_combat.save_inventory_services,retirement_error))
          throw std::runtime_error("Previous GEAR load left a retained Item that could not be retired: "+retirement_error);
      }
      destroy_native_world_item_bodies();native_world_items.clear();prince_combat=std::move(fresh_player);
    }
    auto* selected_record=native_host.record_for(native_host.host_projection());
    if(!selected_record||!prince_combat.savegame)
      throw std::runtime_error("Native registered PlayerInfo or gameplay Save owner unavailable");
    std::int8_t native_potion_capacity=0;
    if(!prince_character.bind_session(&selected_record->character_660,
         *prince_combat.savegame,prince_combat.properties,
         restore?prince_combat.inventory.get():nullptr,error))
      throw std::runtime_error("Native reconstructed Character owner bind: "+error);
    if(!restore){
      if(!prince_combat.inventory_loot_tables)
        throw std::runtime_error("Native Character V4 inventory has no retained LootTable snapshot");
      const auto property_bits=static_cast<std::uint32_t>(prince_combat.properties.resolved[194]);
      const auto capacity_bits=(property_bits>>8)|
          ((property_bits&0x80000000u)?0xff000000u:0u);
      std::int32_t potion_capacity=0;
      std::memcpy(&potion_capacity,&capacity_bits,sizeof(potion_capacity));
      if(potion_capacity<0)potion_capacity=0;
      native_potion_capacity=static_cast<std::int8_t>(
          static_cast<std::uint8_t>(potion_capacity));
      prince_combat.inventory=std::make_unique<dh2::data::FreshInventoryOwnedV4>(
          prince_character.identity(),prince_combat.inventory_loot_tables->borrow(),
          dh2::random_lifecycle::inventory_random_service(),native_potion_capacity,
          prince_combat.properties);
      if(!prince_character.bind_inventory(*prince_combat.inventory,error))
        throw std::runtime_error("Native reconstructed Character inventory bind: "+error);
    }else if(!prince_combat.inventory||
             prince_character.inventory_for(prince_character.identity())!=prince_combat.inventory.get()){
      throw std::runtime_error("Retained Character inventory owner differs after Activity resume");
    }
    if(!restore){
      auto saved_inventory_adapter=std::make_shared<NativeLootAdapterV1>(
          NativeLootAdapterV1{prince_combat.item_text,prince_combat.item_presentation.get()});
      prince_combat.save_inventory_services_owner=saved_inventory_adapter;
      prince_combat.save_inventory_services=saved_inventory_adapter->inventory_services();
      dh2::native::player_profile::TransportBindings gameplay_bindings{runtime_root,
       prince_combat.profile_characters.get(),&native_save_difficulty,{},false,
       &actor_level_tables,&actor_world_map_tables,prince_combat.quests,&native_host.online};
      gameplay_bindings.skill_tables=&actor_skill_catalogue->tables->skills();
      gameplay_bindings.skill_tree_selector=&prince_combat.properties.resolved[28];
      gameplay_bindings.property_rules=&actor_property_rules;
      gameplay_bindings.properties=&prince_combat.properties;
      gameplay_bindings.inventory=prince_combat.inventory.get();
      gameplay_bindings.item_powers=prince_combat.item_power_tables->borrow();
      gameplay_bindings.inventory_services=prince_combat.save_inventory_services;
      gameplay_bindings.inventory_services_owner=prince_combat.save_inventory_services_owner;
      gameplay_bindings.inventory_incoming=&prince_combat.saved_inventory_incoming;
      if(!prince_combat.save_transport->bind(std::move(gameplay_bindings),error))
        throw std::runtime_error("Native Player Save provider rebind: "+error);
      __android_log_print(ANDROID_LOG_INFO,"DH2Native",
       "Native Character owner bound | object %zu | Coordinator %zu | Save %zu | properties %zu | inventory %zu | item rows %zu | loot rows %zu | item count %zu | equipment set %d | potion capacity %d | same V4 Character owner; development continuation",
       std::size_t(prince_character.identity()),std::size_t(prince_character.owner()),
       std::size_t(prince_combat.savegame.get()),std::size_t(&prince_combat.properties),
       std::size_t(prince_combat.inventory.get()),
       prince_combat.inventory->table().rows.size(),
       prince_combat.inventory_loot_tables->borrow().loots().size(),
       prince_combat.inventory->items().size(),
       prince_combat.inventory->current_equipment(),int(native_potion_capacity));
      auto association=std::make_shared<NativePlayerSaveAssociation>();
      if(!association->bind(prince_character.owner(),*prince_combat.savegame,
                            prince_combat.save_transport->loader(),error))
       throw std::runtime_error("Native Player Save association: "+error);
      if(!association->load_mask2_once(error))
       throw std::runtime_error("Native Player source SG_Load(2): "+error);
      if(!association->load_mask4_once(error))
       throw std::runtime_error("Native Player source SG_Load(4): "+error);
      prince_combat.source_save_association=std::move(association);
    }else{
      const auto& association=prince_combat.source_save_association;
      if(!association||!association->same_owners(prince_character.owner(),
          *prince_combat.savegame,prince_combat.save_transport->loader())||
         association->mask2_calls!=1||!association->mask2_loaded||
         association->mask4_calls!=1||!association->mask4_loaded)
       throw std::runtime_error("Retained Player Save association/mask2/mask4 state differs");
    }
    const auto& source_save_association=*prince_combat.source_save_association;
    if(prince_combat.savegame->character()!=prince_character.owner()||
       prince_combat.savegame->source_quest_log_118().character_5c!=prince_character.owner()||
       prince_combat.savegame->source_quest_log_b8().character_5c!=prince_character.owner()||
       source_save_association.mask2_calls!=1||!source_save_association.mask2_loaded||
       source_save_association.mask4_calls!=1||!source_save_association.mask4_loaded)
     throw std::runtime_error("Native Player mask2/mask4 Save/embedded Quest identities differ");
    __android_log_print(ANDROID_LOG_INFO,"DH2Native",
     "Native Player Save masks 2+4 | Character %zu | Save %zu | loader %zu | Quest118 %zu | QuestB8 %zu | calls %u/%u | retained %u | profile %zu | mask4 requests %u | GEAR items %zu | gold %d | InitPost effects/GEAR save writer/persistence pending",
     std::size_t(source_save_association.character_identity),
     std::size_t(source_save_association.save_identity),
     std::size_t(source_save_association.loader_identity),
     std::size_t(prince_combat.savegame->source_quest_log_118().character_5c),
     std::size_t(prince_combat.savegame->source_quest_log_b8().character_5c),
     source_save_association.mask2_calls,source_save_association.mask4_calls,unsigned(restore),
     std::size_t(source_save_association.mask4_profile_identity),
     source_save_association.mask4_transport_requests,
     prince_combat.inventory?prince_combat.inventory->items().size():0,
     prince_combat.inventory?prince_combat.inventory->gold():0);
    const auto& quest_receipt=prince_combat.quests->receipt();
    __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native Quest startup | Save %zu | Character %zu | log b8 %u | log118 %u | constants %u | retained %u | Compile and quest gameplay pending",std::size_t(prince_combat.savegame.get()),std::size_t(prince_combat.savegame->character()),quest_receipt.published[0],quest_receipt.published[1],quest_receipt.constant_queries,unsigned(restore));
    if(!restore){
      // Only a new world/session replaces the explicit immutable bank owner.
      prince_retained_pose.clear();prince_locomotion=dh2::actor::BlendedPlayback{};
      prince_attack_clips=std::move(candidate_player_clips);prince_animation_bank=std::move(candidate_bank);
    }
    __android_log_print(ANDROID_LOG_INFO,"DH2Native","Player properties | %s | HP %d | MP %d | checksum %016llx | attempts %u | attacking %d",character_table.names.at(prince_combat.character_class).c_str(),prince_combat.properties.resolved[36],prince_combat.properties.resolved[41],static_cast<unsigned long long>(snapshot_checksum(prince_combat.properties.resolved)),prince_combat.attempts,int(prince_state.current==5));
    for(const auto& group:object_groups)for(const auto& object:group.instances){
      monsters+=object.kind==1;decors+=object.kind==2;
      for(std::size_t i=0;i<group.draws.size();++i){
        const auto& primitive=group.resource.primitives[i];
        if(object.visual_root!=std::numeric_limits<unsigned>::max()&&
           !item_node_below(group.resource,primitive.node,object.visual_root))continue;
        object_triangles+=primitive.indices.size()/3;++object_draws;
      }
    }
    level=std::move(candidate);player=std::move(candidate_idle);walk_player=std::move(candidate_walk);current_scene=std::move(rest);
    active_crypt_module_bounds=std::move(candidate_crypt_module_bounds);
    actor_position=restore?previous:level.spawn;prince_camera_anchor={};reset_source_camera_level_runtime();
    world_mode=true;resume_world=false;walking=false;move_x=move_y=0;authored_hud_direction[0]=authored_hud_direction[1]=authored_hud_direction[2]=0;authored_hud_command_active=authored_hud_stop_pending=false;heading=restore?previous_heading:source_spawn_heading;movement_steps=blocked_steps=0;
    radius=350;yaw=-1.57f;pitch=.75f;
    if(level_assets.name=="SWAMP"&&level_assets.level_file=="001_swamp.mlx"&&
       !level_assets.source_player_camera_enabled)
      swamp_default_camera_basis(yaw,pitch);
    zoom=1;object_epoch=epoch=last_frame=std::chrono::steady_clock::now();sampled_ms=0;frozen=restore?previous_frozen:false;
    if(!initialize_player_equipment_native(assets,prince,error))
      throw std::runtime_error("Native player equipment initialization: "+error);
    initialize_native_actor(assets,restore);
    initialize_active_crypt_room_zones();
    if(!ensure_native_world_items(error))throw std::runtime_error("World item runtime restore failed: "+error);
    actor_level_fields=candidate_level_fields;actor_level_file=candidate_level_file;actor_level_fields_ready=true;
    actor_level_kill_loot_gate=0; // Both source Level constructors initialize +0x150 to zero; no setter is currently bound.
    std::int32_t source_ranges[6]{};
    for(unsigned mode=0;mode<3;++mode){const float difficulty=static_cast<float>(mode);std::uint32_t count=0;
      if(native_current_level_range(&difficulty,source_ranges+2*mode,&count)||count!=2)throw std::runtime_error("Owned native Level range source callback failed");}
    __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native Level fields | ordinal %d | hub %d | random %u | difficulty %d | file %s | source ranges %d %d / %d %d / %d %d | viewport owner; GSLevel stack pending",actor_level_fields.level_list_index_3c,actor_level_fields.hub_40,unsigned(actor_level_fields.is_random_e8),actor_level_fields.difficulty_118,actor_level_file.c_str(),source_ranges[0],source_ranges[1],source_ranges[2],source_ranges[3],source_ranges[4],source_ranges[5]);
    initialize_char_ai_registry();
    initialize_native_player_skills(assets,restore);
    initialize_native_monster_scripts(assets);
    if(level_assets.name=="GOTHICUS_CRYPT_01"){
      if(level_assets.generated_crypt_layout){
       crypt_spawn_script.clear();crypt_trigger_state={};
       __android_log_print(ANDROID_LOG_INFO,"DH2Native","Generated Crypt source TriggerZone objects deferred | development GhostAmbush01 descriptor not applied");
      }else initialize_crypt_script(assets,restore);
    }
    build_search_world();
    const char* display_level=level_assets.name=="GOTHICUS_CRYPT_01"?"Crypt":level_assets.name.c_str();
    char report[256];std::snprintf(report,sizeof(report),"%s | %u rooms | %u monsters | %u scenery objects\n%u triangles. Drag the movement control to walk.",display_level,level.rooms,monsters,decors,triangles+586+object_triangles);
    __android_log_print(ANDROID_LOG_INFO,"DH2Native","Objects ready | monsters %u | decors %u | resources %zu | instance draws %u | triangles %u | character records %zu | model entries %zu | idle preview only",monsters,decors,object_groups.size(),object_draws,object_triangles,character_table.rows.size(),model_table.values.size());
    if(level.native_floor)__android_log_print(ANDROID_LOG_INFO,"DH2Native","Native floors ready | records %zu | graph nodes %u | graph edges %u | selector collision controls height",level.native_floor->records.size(),level.native_floor->graph.node_count,level.native_floor->graph.edge_count);
    if(level.native_floor&&level.native_floor->sewn)__android_log_print(ANDROID_LOG_INFO,"DH2Native","Native floor links ready | neighbour relations %u | validation references %u | graph-node search ready",level.native_floor->sewing.link_count,level.native_floor->graph.validation_count);
    // Exhaustive route, collision, and avoidance probes are retained for
    // device diagnostics but are not part of world construction. Run them
    // only in explicit diagnostic builds; the production path uses the same
    // selected libraries through gameplay owners and focused host tests.
#if defined(DH2_ENABLE_NATIVE_NAV_PROBES)
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
#endif
    __android_log_print(ANDROID_LOG_INFO,"DH2Native","World ready | rooms %u | visual draws %zu | navigation triangles %zu | idle tracks %u | walk tracks %u | position %.4f %.4f %.4f",level.rooms,draws.size(),level.floor.size(),player.track_count(),walk_player.track_count(),actor_position[0],actor_position[1],actor_position[2]);return std::string(report)+(combat_resumed?"\nNative combat resumed":"");
  }catch(const std::exception& e){{std::vector<GLuint> no_textures;release(candidate_itemdrop_draws,no_textures);}deactivate();release_objects(candidate_groups);release(environment,textures);__android_log_print(ANDROID_LOG_ERROR,"DH2Native","World load failed: %s",e.what());return std::string("World load failed: ")+e.what();}
}
bool stage_world_loot_table(std::int32_t loot_table_id,
    const dh2::data::LootEntrySelectionContextV1& selection,
    std::int32_t value_bonus256,std::int32_t power_bonus256,
    std::int32_t requested_power_count,std::int32_t difficulty,
    LootStagingResultV1& result,std::string& error) {
 result={};
 if(!world_mode||!prince_combat.inventory||!prince_combat.inventory_loot_tables){
  error="Native Character V4 inventory is not active";return false;
 }
 if(!prince_combat.item_power_tables||!prince_combat.loot_power_resources||
    !prince_combat.loot_power_creation||!prince_combat.item_presentation){
  error="Native powered-loot owners are not retained";return false;
 }
 result.first_world_item=prince_combat.inventory->world_items().size();
 if(loot_table_id<0){error.clear();return true;}
 if(std::size_t(loot_table_id)>=prince_combat.inventory_loot_tables->borrow().loots().size()){
  error="Source Loot property ID is outside the retained LootTable";return false;
 }
 NativeLootAdapterV1 adapter{prince_combat.item_text,prince_combat.item_presentation.get()};
 const auto services=adapter.inventory_services();
 dh2::data::OwnedLootEffectsV7 effects;
 effects.creation=prince_combat.loot_power_creation.get();
 effects.powers=prince_combat.item_power_tables->borrow();
 effects.text=adapter.text_services();
 effects.value_bonus256=value_bonus256;effects.power_bonus256=power_bonus256;
 effects.requested_power_count=requested_power_count;effects.difficulty=difficulty;
 std::unique_ptr<dh2::data::ItemInstanceV1> pending;
 bool ok=false;
 try{
  ok=prince_combat.inventory->add_world_loot_table(loot_table_id,selection,
      {&pending},services,effects,error);
 }catch(const std::exception& exception){error=exception.what();}
 catch(...){error="Native powered Loot staging callback threw";}
 if(pending){
  std::string retirement_error;
  if(!prince_combat.inventory->retire_item({&pending},services,retirement_error)){
   if(error.empty())error="Retained staged Item retirement failed: "+retirement_error;
   else error+="; retained staged Item retirement failed: "+retirement_error;
   return false;
  }
 }
 const auto after=prince_combat.inventory->world_items().size();
 result.item_count=after>=result.first_world_item?after-result.first_world_item:0;
 if(!ok){if(error.empty())error="Native Character V4 Loot staging failed";return false;}
 error.clear();return true;
}

namespace {
bool item_node_below(const dh2::objects::Resource& resource,unsigned node,unsigned root) {
 unsigned depth=0;
 while(node<resource.scene.graph.size()&&depth++<resource.scene.graph.size()){
  if(node==root)return true;
  const auto parent=resource.scene.graph[node].parent;
  if(parent<0)return false;
  node=unsigned(parent);
 }
 return false;
}
bool item_visual_radius(unsigned root,float& radius,std::string& error) {
 float min_x=std::numeric_limits<float>::infinity(),min_y=min_x;
 float max_x=-min_x,max_y=-min_x;
 for(const auto& batch:itemdrops_draws){
  if(!item_node_below(itemdrops_resource,batch.node,root))continue;
  if(batch.node>=itemdrops_resource.scene.graph.size())continue;
  const auto& matrix=itemdrops_resource.scene.graph[batch.node].world;
  for(const auto& vertex:batch.cpu_vertices){
   const float x=matrix[0]*vertex.p[0]+matrix[4]*vertex.p[1]+matrix[8]*vertex.p[2]+matrix[12];
   const float y=matrix[1]*vertex.p[0]+matrix[5]*vertex.p[1]+matrix[9]*vertex.p[2]+matrix[13];
   if(!std::isfinite(x)||!std::isfinite(y)){error="Non-finite item visual bounds";return false;}
   min_x=std::min(min_x,x);max_x=std::max(max_x,x);
   min_y=std::min(min_y,y);max_y=std::max(max_y,y);
  }
 }
 if(!std::isfinite(min_x)||!std::isfinite(min_y)){
  error="Item visual has no bounded geometry";return false;
 }
 radius=std::max(max_x-min_x,max_y-min_y)*.005f;
 if(!std::isfinite(radius)||radius<=0.f||radius>10.f){
  error="Item visual bounds produced an invalid source-unit sensor radius";return false;
 }
 error.clear();return true;
}
bool create_item_sensor(NativeWorldItem& item,std::string& error) {
 if(!item.item||!prince_combat.inventory||!prince_combat.item_audio_visuals||
    !itemdrops_ready||!actor_world.backend()){
  error="Native V4 Item, AudioVisual table, BDAE or world owner unavailable";return false;
 }
 const auto* row=dh2::data::item(prince_combat.inventory->table(),item.item->id);
 if(!row){error="World Item ID is outside the retained ItemTable";return false;}
 // ItemRecord's retained schema stores AudioVisualID at word 21; word 24 is
 // BaseProp. Keep this lookup tied to the original item row, not loot IDs.
 const auto audio_visual_id=row->record.words[21];
 const auto audio_visual=prince_combat.item_audio_visuals->borrow().get(audio_visual_id);
 if(!audio_visual){error="Item AudioVisualID is outside the retained original table";return false;}
 const auto root=itemdrop_roots.find(audio_visual->visual);
 if(root==itemdrop_roots.end()){error="Item AudioVisual selector is absent from itemdrops.bdae";return false;}
 item.audio_visual_id=audio_visual_id;item.visual_root=root->second;
 float radius=0.f;
 if(!item_visual_radius(item.visual_root,radius,error))return false;
 b2BodyDef definition;definition.userData=&item.body_owner.services;
 definition.position.Set(item.position[0]*.01f,item.position[1]*.01f);
 definition.allowSleep=true;definition.fixedRotation=true;
 auto* body=actor_world.create(&definition);
 if(!body){error="Original ItemObject sensor body creation failed";return false;}
 b2CircleDef circle;circle.radius=radius;circle.isSensor=true;
 circle.friction=1.f;circle.restitution=0.f;circle.density=11.24f;
 circle.filter.groupIndex=-3;circle.filter.categoryBits=0x40;circle.filter.maskBits=4;
 circle.userData=&item.body_owner.services;
 if(!body->CreateShape(&circle)){actor_world.destroy(body);error="Original ItemObject circle sensor creation failed";return false;}
 body->SetMassFromShapes();
 item.body={body,radius,false};item.body_owner.native=&item.body;
 item.body_owner.contact={1,0,1,1,{-3,0x40,4,1},{}};
 error.clear();return true;
}
void destroy_item_projection(std::size_t index) {
 if(index>=native_world_items.size())return;
 auto& item=*native_world_items[index];
 if(item.body.body&&actor_world.backend())actor_world.destroy(item.body.body);
 item.body={};
 native_world_items.erase(native_world_items.begin()+std::ptrdiff_t(index));
}
bool project_world_item(dh2::data::ItemInstanceV1* source,
                        const std::array<float,3>& position,std::string& error) {
 if(!source){error="V4 world Item has no live ItemInstance";return false;}
 auto found=std::find_if(native_world_items.begin(),native_world_items.end(),
  [&](const auto& item){return item->item==source;});
 if(found!=native_world_items.end()){
  auto& item=**found;item.position=position;
  if(!item.body.body)return create_item_sensor(item,error);
  error.clear();return true;
 }
 auto item=std::make_unique<NativeWorldItem>(source);item->position=position;
 auto* stable=item.get();native_world_items.push_back(std::move(item));
 if(!create_item_sensor(*stable,error)){native_world_items.pop_back();return false;}
 return true;
}
bool ensure_native_world_items(std::string& error) {
 if(!world_mode||!prince_combat.inventory||!itemdrops_ready){
  error="Native V4 inventory, active world and item visual owner are required";return false;
 }
 const auto& items=prince_combat.inventory->world_items();
 for(std::size_t i=0;i<native_world_items.size();){
  const auto* pointer=native_world_items[i]->item;
  const bool live=std::any_of(items.begin(),items.end(),[&](const auto& slot){
   return slot&&slot->item.get()==pointer;
  });
  if(!live){destroy_item_projection(i);continue;}
  if(!native_world_items[i]->body.body&&
     !create_item_sensor(*native_world_items[i],error))return false;
  ++i;
 }
 for(const auto& slot:items){
  if(!slot||!slot->item)continue;
  const auto found=std::find_if(native_world_items.begin(),native_world_items.end(),
   [&](const auto& item){return item->item==slot->item.get();});
  if(found!=native_world_items.end())continue;
  if(!project_world_item(slot->item.get(),actor_position,error))return false;
 }
 error.clear();return true;
}
bool source_drop_position(const ObjectActor& victim,std::array<float,3>& out,
                          std::string& error) {
 std::array<float,3> center=victim.position;
 if(victim.spawn_owner&&victim.spawn_owner->body.body){
  const auto point=victim.spawn_owner->body.body->GetPosition();
  center[0]=point.x*100.f;center[1]=point.y*100.f;
 }
 const std::array<float,3> killer{actor_position[0],actor_position[1],actor_position[2]};
 std::array<float,3> direction{killer[0]-center[0],killer[1]-center[1],killer[2]-center[2]};
 const float length=std::sqrt(direction[0]*direction[0]+direction[1]*direction[1]+direction[2]*direction[2]);
 if(length>0.f)for(auto& component:direction)component/=length;
 auto random=dh2::random_lifecycle::inventory_random_service();
 std::int32_t distance=0,lateral=0;
 if(!random.next||!random.next(random.context,200,0,distance,error)||
    !random.next(random.context,300,0,lateral,error)){
  if(error.empty())error="Source process RNG unavailable for ItemObject drop position";
  return false;
 }
 const float forward=float(distance+150),side=float(lateral-150);
 // _GetRandomDropPos normalizes killer-victim, advances 150..349 units,
 // then applies a perpendicular -150..149-unit spread on the same process RNG.
 out={center[0]+direction[0]*forward-direction[1]*side,
      center[1]+direction[1]*forward+direction[0]*side,
      center[2]+direction[2]*forward};
 error.clear();return true;
}
bool drop_actor_loot(ObjectActor& victim,std::uint64_t killer_identity,std::string& error) {
 if(victim.loot_dropped){error.clear();return true;}
 auto& rollback_items=victim.loot_rollback_items;
 auto cleanup_rollback_items=[&](){
  if(rollback_items.empty()){error.clear();return true;}
  if(!world_mode||!prince_combat.inventory){error="Partial-loot cleanup owner is unavailable";return false;}
  NativeLootAdapterV1 rollback_adapter{prince_combat.item_text,prince_combat.item_presentation.get()};
  const auto rollback_services=rollback_adapter.inventory_services();
  for(auto it=rollback_items.begin();it!=rollback_items.end();){
   const auto& items=prince_combat.inventory->world_items();
   const auto found=std::find_if(items.begin(),items.end(),[&](const auto& slot){
    return slot&&slot->item.get()==*it;
   });
   if(found==items.end()){it=rollback_items.erase(it);continue;}
   const auto index=std::size_t(found-items.begin());
   const auto projection=std::find_if(native_world_items.begin(),native_world_items.end(),
    [&](const auto& current){return current->item==*it;});
   if(projection!=native_world_items.end())
    destroy_item_projection(std::size_t(projection-native_world_items.begin()));
   std::string retirement_error;
   if(!prince_combat.inventory->retire_world_item(index,rollback_services,retirement_error)){
    error="Pending partial-loot cleanup failed: "+retirement_error;return false;
   }
   it=rollback_items.erase(it);
  }
  error.clear();return true;
 };
 if(!cleanup_rollback_items())return false;
 if(!world_mode){error="Native world is not active for death loot";return false;}
 if(!actor_level_fields_ready){error="Native Level loot fields are not ready";return false;}
 // IDA's Character::Kill reaches DropLoot(victim,killer) only after its
 // IsDead/HP-zero prefix. This Android slice currently supports the live
 // Prince as killer; keep that identity attached to the episode so retries
 // cannot silently turn into a victim-only loot callback.
 if(victim.kind!=1||!victim.identity||!victim.combat_state.dead||
    victim.properties.resolved[36]!=0){
  error="Source DropLoot requires a dead Character with zero cached HP";return false;
 }
 if(!killer_identity||killer_identity!=prince_character.identity()||
    victim.identity==killer_identity||prince_combat.life.dead){
  __android_log_print(ANDROID_LOG_INFO,"DH2Native",
   "Source DropLootTable skipped | %s | unsupported/non-live player killer | killer %llu",
   victim.name.c_str(),static_cast<unsigned long long>(killer_identity));
  victim.loot_dropped=true;error.clear();return true;
 }
 if(actor_level_kill_loot_gate!=0||prince_combat.life.dead||victim.loot_table_id<0){
  victim.loot_dropped=true;error.clear();return true;
 }
 if(!prince_combat.inventory){error="Source Character V4 inventory is unavailable";return false;}
 NativeLootAdapterV1 adapter{prince_combat.item_text,prince_combat.item_presentation.get()};
 const auto services=adapter.inventory_services();
 auto rollback_appended=[&](std::size_t first,std::string& rollback_error){
  while(prince_combat.inventory->world_items().size()>first){
   const auto index=prince_combat.inventory->world_items().size()-1;
   const auto& slot=prince_combat.inventory->world_items()[index];
   auto* item=slot&&slot->item?slot->item.get():nullptr;
   if(!item){rollback_error="Appended source loot slot is empty";return false;}
   const auto projection=std::find_if(native_world_items.begin(),native_world_items.end(),
    [&](const auto& current){return current->item==item;});
   if(projection!=native_world_items.end())
    destroy_item_projection(std::size_t(projection-native_world_items.begin()));
   std::string retirement_error;
   if(!prince_combat.inventory->retire_world_item(index,services,retirement_error)){
    const auto& items=prince_combat.inventory->world_items();
    std::vector<dh2::data::ItemInstanceV1*> pending;
    for(std::size_t i=first;i<items.size();++i)if(items[i]&&items[i]->item){
     auto* remaining=items[i]->item.get();
     pending.push_back(remaining);
    }
    for(auto* remaining:pending){
     const auto remaining_projection=std::find_if(native_world_items.begin(),native_world_items.end(),
      [&](const auto& current){return current->item==remaining;});
     if(remaining_projection!=native_world_items.end())
      destroy_item_projection(std::size_t(remaining_projection-native_world_items.begin()));
     if(std::find(rollback_items.begin(),rollback_items.end(),remaining)==rollback_items.end())
      rollback_items.push_back(remaining);
    }
    rollback_error=retirement_error;return false;
   }
  }
  rollback_error.clear();return true;
 };
 auto call=[&](dh2::data::OwnedInventoryOperationV4 operation,const char* name,
               dh2::data::OwnedInventoryResponseV4& response){
  const dh2::data::OwnedInventoryRequestV4 request{operation,0x3ecba0,nullptr,name,0,0};
  return NativeLootAdapterV1::invoke_inventory(&adapter,*prince_combat.inventory,
                                                request,response,error);
 };
 dh2::data::OwnedInventoryResponseV4 response{};
 if(!call(dh2::data::OwnedInventoryOperationV4::player_count,nullptr,response))return false;
 if(response.value!=1){
  __android_log_print(ANDROID_LOG_WARN,"DH2Native","Source death loot skipped | unsupported PlayerManager roster %d",response.value);
  victim.loot_dropped=true;error.clear();return true;
 }
 dh2::data::LootEntrySelectionContextV1 selection{};
 switch(prince_combat.player_class_id){
  case 263:selection.player_counts.warrior=1;break;
  case 290:selection.player_counts.mage=1;break;
  case 325:selection.player_counts.rogue=1;break;
  default:
   __android_log_print(ANDROID_LOG_WARN,"DH2Native","Source death loot skipped | unsupported ClassID %d",prince_combat.player_class_id);
   victim.loot_dropped=true;error.clear();return true;
 }
 response={};
 if(!call(dh2::data::OwnedInventoryOperationV4::debug_load,nullptr,response))return false;
 response={};
 if(!call(dh2::data::OwnedInventoryOperationV4::debug_query,"InfiniteLootDrops",response))return false;
 selection.infinite_loot_drops=response.value!=0;
 const auto first_world_item=prince_combat.inventory->world_items().size();
 LootStagingResultV1 staged{};
 if(!stage_world_loot_table(victim.loot_table_id,selection,
      prince_combat.properties.resolved[195],prince_combat.properties.resolved[196],
      -1,actor_level_fields.difficulty_118,staged,error)){
  const auto stage_error=error;
  std::string rollback_error;
  if(!rollback_appended(first_world_item,rollback_error))
   error=stage_error+"; partial loot cleanup deferred: "+rollback_error;
  else error=stage_error;
  return false;
 }
 const auto& items=prince_combat.inventory->world_items();
 for(std::size_t i=staged.first_world_item;i<items.size();++i){
  if(!items[i]||!items[i]->item){error="Source loot stage published an empty world slot";break;}
  std::array<float,3> position{};
  if(!source_drop_position(victim,position,error)||
     !project_world_item(items[i]->item.get(),position,error))break;
 }
 if(!error.empty()){
  const auto projection_error=error;
  std::string rollback_error;
  if(!rollback_appended(first_world_item,rollback_error))
   error=projection_error+"; staged Item cleanup deferred: "+rollback_error;
  else error=projection_error;
  return false;
 }
 __android_log_print(ANDROID_LOG_INFO,"DH2Native",
  "Source enemy death loot staged | %s | Loot %d | items %zu | killer %llu | ClassID %d | InfiniteLootDrops %u | guarded Player Kill episode; V4 owner and MoveOn sensor",
  victim.name.c_str(),victim.loot_table_id,staged.item_count,
  static_cast<unsigned long long>(killer_identity),prince_combat.player_class_id,
  unsigned(selection.infinite_loot_drops));
 victim.loot_dropped=true;error.clear();return true;
}
void update_native_world_items_after_step(std::uint32_t dt_ms) {
 for(auto& group:object_groups)for(auto& actor:group.instances)if(actor.loot_retry_pending){
  if(actor.loot_retry_delay_frames){--actor.loot_retry_delay_frames;continue;}
  std::string error;
  if(drop_actor_loot(actor,actor.loot_killer_identity,error)){actor.loot_retry_pending=false;actor.loot_retry_delay_frames=0;}
  else actor.loot_retry_delay_frames=30;
 }
 if(!prince_combat.inventory)return;
 for(auto& item:native_world_items){
  if(item->player_pickup_lock_ms<=dt_ms)item->player_pickup_lock_ms=0;
  else item->player_pickup_lock_ms-=dt_ms;
 }
 for(auto& item:native_world_items)if(item->body.body){
  const auto point=item->body.body->GetPosition();
  item->position[0]=point.x*100.f;item->position[1]=point.y*100.f;
 }
 for(std::size_t i=0;i<native_world_items.size();){
  auto& projection=*native_world_items[i];
  if(!projection.pending_interact){++i;continue;}
  projection.pending_interact=false;
  auto* tracked=projection.item;
  const auto tracked_id=tracked?tracked->id:-1;
  const auto& items=prince_combat.inventory->world_items();
  const auto found=std::find_if(items.begin(),items.end(),[&](const auto& slot){
   return slot&&slot->item.get()==tracked;
  });
  if(found==items.end()){destroy_item_projection(i);continue;}
  const auto index=std::size_t(found-items.begin());
  NativeLootAdapterV1 adapter{prince_combat.item_text,prince_combat.item_presentation.get()};
  std::int32_t inventory_index=-1;std::string error;
  const bool accepted=prince_combat.inventory->pickup_world_item(
      index,inventory_index,adapter.inventory_services(),error);
  const auto& after=prince_combat.inventory->world_items();
  const bool still_world=std::any_of(after.begin(),after.end(),[&](const auto& slot){
   return slot&&slot->item.get()==tracked;
  });
  if(!still_world){
   __android_log_print(ANDROID_LOG_INFO,"DH2Native",
    "Source MoveOn ItemObject::Interact accepted | Item %d | inventory index %d | V4 wallet/equipment/potion",
    tracked_id,inventory_index);
   destroy_item_projection(i);continue;
  }
  if(!accepted)
   __android_log_print(ANDROID_LOG_INFO,"DH2Native",
    "Source MoveOn ItemObject::Interact retained world Item | Item %d | %s",
    tracked_id,error.c_str());
  ++i;
 }
}
} // namespace

bool ui_player_drop_inventory_item(std::uintptr_t identity,std::int32_t item_index,
                                   std::string& error) {
 // NativeInvDropItem (IDA 0x43cfb4) transfers one Item then reaches
 // DropInventory (0x3ec974); its player-scatter and five-second lock are
 // supplied below through the existing world projection and inventory RNG.
 std::uintptr_t current=0;
 if(!ui_player_identity(current,error))return false;
 if(identity!=current||!world_mode||!native_actor_ready||!prince_combat.inventory){
  error="Inventory drop requires the active offline Player and canonical V4 inventory";
  return false;
 }
 if(item_index<0){error="Inventory drop index is negative";return false;}
 if(!ensure_native_world_items(error))return false;

 struct DropContext { std::uintptr_t character; } context{identity};
 const auto is_online=[](void*,bool& online,std::string& message){
  online=native_host.online!=0;message.clear();return true;
 };
 const auto spawn_and_lock=[](void* raw,dh2::data::FreshInventoryOwnedV4& owner,
       std::size_t world_index,dh2::data::ItemInstanceV1* item,
       std::string& message){
  if(!raw){message="Inventory drop has no retained Player context";return false;}
  auto& drop=*static_cast<DropContext*>(raw);
  if(drop.character!=prince_character.identity()||
     !prince_combat.inventory||&owner!=prince_combat.inventory.get()||
     world_index>=owner.world_items().size()||!item||
     !owner.world_items()[world_index]||owner.world_items()[world_index]->item.get()!=item){
   message="Inventory drop crossed the active Character, V4 owner or transferred Item";
   return false;
  }
  auto random=dh2::random_lifecycle::inventory_random_service();
  std::int32_t x=0,y=0;
  if(!random.next||!random.next(random.context,500,0,x,message)||
     !random.next(random.context,500,0,y,message)){
   if(message.empty())message="Source process RNG unavailable for player Item drop";
   return false;
  }
  const std::array<float,3> position{
      actor_position[0]+float(x-250),actor_position[1]+float(y-250),actor_position[2]};
  if(!project_world_item(item,position,message))return false;
  const auto projected=std::find_if(native_world_items.begin(),native_world_items.end(),
      [item](const auto& value){return value&&value->item==item;});
  if(projected==native_world_items.end()){
   message="Source ItemManager spawn has no matching native world projection";return false;
  }
  // ItemObject::DropInventory writes the source 5000 ms lock and local player
  // ID to the spawned Item. The current runtime is a single-player host, so
  // this local owner timer represents that exact player-scoped lock.
  (*projected)->player_pickup_lock_ms=5000;
  message.clear();return true;
 };
 NativeLootAdapterV1 adapter{prince_combat.item_text,
                             prince_combat.item_presentation.get()};
 const dh2::data::OfflineWorldItemDropServicesV4 drop_services{
     &context,is_online,spawn_and_lock};
 std::int32_t world_index=-1;
 const bool dropped=prince_combat.inventory->drop_inventory_item_offline(
     static_cast<std::uint32_t>(item_index),adapter.inventory_services(),
     drop_services,world_index,error);
 if(dropped){
  __android_log_print(ANDROID_LOG_INFO,"DH2Native",
      "Source NativeInvDropItem completed | inventory index %d | world item %d | player pickup lock 5000 ms",
      item_index,world_index);
 }
 return dropped;
}

bool retire_staged_world_loot_item(std::size_t index,std::string& error) {
 if(!world_mode||!prince_combat.inventory||!prince_combat.item_presentation){
  error="Native Character V4 world-item owner is not active";return false;
 }
 NativeLootAdapterV1 adapter{prince_combat.item_text,prince_combat.item_presentation.get()};
 return prince_combat.inventory->retire_world_item(index,adapter.inventory_services(),error);
}
void draw(int width,int height){
  if(!enabled||!program)return;
  float frame_dt=0;
  unsigned frame_dt_ms=0;
  if(world_mode){const auto now=std::chrono::steady_clock::now();
    const auto now_ms=std::uint32_t(std::chrono::duration_cast<std::chrono::milliseconds>(now.time_since_epoch()).count());
    const auto previous_ms=std::uint32_t(std::chrono::duration_cast<std::chrono::milliseconds>(last_frame.time_since_epoch()).count());
    const unsigned dt_ms=now_ms-previous_ms;last_frame=now;
    // The original Application skips updates after a real-time gap >2000ms.
    // Its normal dt is unsigned milliseconds, with one world Step and no cap.
    if(dt_ms<=2000){if(!native_actor_ready)throw std::runtime_error("Native actor runtime is not initialized");advance_native_actor(dt_ms);frame_dt_ms=dt_ms;frame_dt=float(dt_ms)*.001f;}
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
  if(class_scene&&animation_failed)throw std::runtime_error("Class scene animation sampling failed");
  const auto projection=class_scene?class_camera(width,height):menu_background?menu_camera(width,height):
      world_mode&&active_level_assets.source_player_camera_enabled&&player_camera_rig?
        source_player_camera(width,height,frame_dt_ms):camera(width,height);glUseProgram(program);
  if(world_mode&&active_crypt_room_runtime&&
     !active_crypt_room_runtime->update_frustum(actor_position))
    throw std::runtime_error("Source RoomZone frustum transition failed");
  glUniform1i(glGetUniformLocation(program,"diffuse"),0);glUniform1i(glGetUniformLocation(program,"alpha_map"),1);
  glEnable(GL_DEPTH_TEST);glDepthFunc(GL_LEQUAL);glEnable(GL_BLEND);
  glEnableVertexAttribArray(position);glEnableVertexAttribArray(texcoord);glEnableVertexAttribArray(color);
  auto submit=[&](const Draw& b,const Matrix& transform){
    glUniformMatrix4fv(mvp,1,GL_FALSE,transform.data());
    b.material.backface?glEnable(GL_CULL_FACE):glDisable(GL_CULL_FACE);glCullFace(GL_BACK);glFrontFace(GL_CCW);
    glBlendFunc(GL_SRC_ALPHA,b.material.additive?GL_ONE:GL_ONE_MINUS_SRC_ALPHA);glDepthMask(b.material.additive?GL_FALSE:GL_TRUE);
    glUniformMatrix4fv(texture_matrix,1,GL_FALSE,b.material.texture_matrix);glUniform4fv(material_color,1,b.material.color);
    glUniform1f(has_alpha,b.material.alpha_map.empty()?0:1);glUniform1f(alpha_ref,b.material.alpha_ref);
    const bool blue=b.material.effect_file=="GL_Diffuse_L1_VC_iPhone.bdae"&&
      b.material.gles2_technique=="L1_Vc_Al_----_----_----_----";
    glUniform1f(original_alpha_blue,blue?1:0);
    glActiveTexture(GL_TEXTURE0);glBindTexture(GL_TEXTURE_2D,b.diffuse);glActiveTexture(GL_TEXTURE1);glBindTexture(GL_TEXTURE_2D,b.alpha);
    glBindBuffer(GL_ARRAY_BUFFER,b.vertices);glBindBuffer(GL_ELEMENT_ARRAY_BUFFER,b.indices);
    glVertexAttribPointer(position,3,GL_FLOAT,GL_FALSE,sizeof(Vertex),reinterpret_cast<void*>(offsetof(Vertex,p)));
    glVertexAttribPointer(texcoord,2,GL_FLOAT,GL_FALSE,sizeof(Vertex),reinterpret_cast<void*>(offsetof(Vertex,uv)));
    glVertexAttribPointer(color,4,GL_FLOAT,GL_FALSE,sizeof(Vertex),reinterpret_cast<void*>(offsetof(Vertex,color)));glDrawElements(GL_TRIANGLES,b.count,GL_UNSIGNED_SHORT,nullptr);
  };
  if(world_mode&&player_equipment_native){
    const std::vector<dh2::skinning::VisualDrawViewV32>* views{};std::string error;
    if(!player_equipment_native->visual->draw_views(views,error)||!views)
      throw std::runtime_error("V6 live player draw views failed: "+error);
    player_equipment_native->sync_draws(*views);
  }
  for(auto& b:draws){
    if(world_mode&&player_equipment_native&&!b.environment)continue;
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
  if(world_mode&&player_equipment_native)
    for(const auto& b:equipment_draws)submit(b,dh2::scene::multiply(projection,b.placement));
  if(class_scene)for(auto& actor:class_preview_actors){
   auto& resource=actor.resource;const auto& clip=resource.animation;std::string error;
   const auto ms=clip.start+int(actor.sample_elapsed%unsigned(clip.end-clip.start));
   if(!dh2::objects::sample(resource,ms,error))throw std::runtime_error("Class body animation failed: "+error);
   Matrix placement=current_scene.graph.at(actor.anchor).world;
   for(unsigned column=0;column<3;++column)for(unsigned row=0;row<4;++row)placement[column*4+row]*=actor.scale[column];
   const auto owner_projection=dh2::scene::multiply(projection,placement);
   for(unsigned i=0;i<actor.draws.size();++i){const auto& primitive=resource.primitives[i];const auto& batch=actor.draws[i];
    glBindBuffer(GL_ARRAY_BUFFER,batch.vertices);glBufferSubData(GL_ARRAY_BUFFER,0,primitive.vertices.size()*sizeof(Vertex),primitive.vertices.data());
    const auto transform=primitive.skin.nodes.empty()?dh2::scene::multiply(owner_projection,resource.scene.graph.at(primitive.node).world):owner_projection;
    submit(batch,transform);
   }
  }
  if(world_mode)for(auto& group:object_groups){
    std::string error;
    auto render_actor=[&](const ObjectActor& instance,SpawnOwner* owner){for(unsigned i=0;i<group.draws.size();++i){const auto& primitive=group.resource.primitives[i];const auto& batch=group.draws[i];
      if(instance.visual_root!=std::numeric_limits<unsigned>::max()&&
         !item_node_below(group.resource,primitive.node,instance.visual_root))continue;
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
      if(actor.source_room_zone_managed&&!actor.renderer_visible)continue;
      if(actor.source_room_zone_managed&&!actor.source_updates_enabled){
        // ObjectManager's source +0x3c callback removes an inactive Character
        // from updates; retain its last authored pose. RoomZone planes currently
        // come from the development orbit camera.
        if(actor.spawn_owner){render_actor(actor,actor.spawn_owner.get());}
        else{
          const auto& clip=group.clips.at(actor.scheduler.clip().anim);
          const int ms=frozen?std::clamp(sampled_ms,clip.start,clip.end):
            clip.start+int(std::clamp(actor.cursor,0.,double(clip.end-clip.start)));
          if(!dh2::objects::sample(group.resource,clip,ms,error)){
            __android_log_print(ANDROID_LOG_ERROR,"DH2Native","Inactive Character pose failed: %s",error.c_str());enabled=false;return;
          }
          render_actor(actor,nullptr);
        }
        continue;
      }
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
  if(world_mode&&itemdrops_ready){
   for(auto& batch:itemdrops_draws)if(!batch.skin.nodes.empty()){
    std::string error;std::vector<dh2::skinning::Matrix> matrices;
    std::vector<std::array<float,3>> deformed;
    if(!dh2::skinning::palette(batch.skin,itemdrops_resource.scene,matrices,error)||
       !dh2::skinning::positions(batch.skin,matrices,batch.rest_positions,deformed,error))
     throw std::runtime_error("Item drop skin pose failed: "+error);
    for(unsigned k=0;k<batch.cpu_vertices.size();++k)
     std::copy(deformed[k].begin(),deformed[k].end(),batch.cpu_vertices[k].p);
    glBindBuffer(GL_ARRAY_BUFFER,batch.vertices);
    glBufferSubData(GL_ARRAY_BUFFER,0,batch.cpu_vertices.size()*sizeof(Vertex),batch.cpu_vertices.data());
   }
   for(const auto& item:native_world_items){
    if(!item->item||item->visual_root>=itemdrops_resource.scene.graph.size())continue;
    Matrix placement{};placement[0]=placement[5]=placement[10]=placement[15]=1.f;
    placement[12]=item->position[0];placement[13]=item->position[1];placement[14]=item->position[2];
    const auto placed=dh2::scene::multiply(projection,placement);
    for(const auto& batch:itemdrops_draws){
     if(!item_node_below(itemdrops_resource,batch.node,item->visual_root))continue;
     const auto transform=batch.skin.nodes.empty()
       ?dh2::scene::multiply(placed,itemdrops_resource.scene.graph[batch.node].world):placed;
     submit(batch,transform);
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
bool with_player_status_sheet(void* context,
 bool (*consume)(void*,const std::int32_t*,std::size_t,std::uintptr_t,std::string&),
 std::string& error){
 const auto character=prince_character.owner();
 if(!consume||!enabled||!world_mode||!native_actor_ready||!character||
    !prince_source_ai||!prince_skills||!prince_skills->initialized()||
    prince_source_ai->character_identity!=character||prince_source_ai->state.owner_04!=character){
  error="Published Player status owner unavailable";return false;
 }
 // Health, mana and XP are the current cached source words in the SAME sheet
 // used by combat, regeneration and skills. Death does not retire this owner.
 error.clear();
 try{return consume(context,prince_combat.properties.resolved.data(),
                    prince_combat.properties.resolved.size(),character,error);}
 catch(const std::exception& failure){error=failure.what();return false;}
 catch(...){error="Player status consumer threw";return false;}
}
}
