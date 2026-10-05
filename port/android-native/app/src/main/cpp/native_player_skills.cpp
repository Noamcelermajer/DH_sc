#include "native_player_skills.hpp"
#include "player_skill_session_v1.hpp"
#include "player_skill_update_session_v1.hpp"
#include "player_skill_use_session_v1.hpp"
#include "player_skill_cleanup_session_v1.hpp"
#include "character_dead_focus_services_v1.hpp"
#include "animation_tables.hpp"
#include "ai.hpp"
#include "player_skill_property_services_v1.hpp"
#include "player_savegame_v1.hpp"
#include "savegame_options_v1.hpp"
#include "character_mana_services_v1.hpp"
#include "character_current_spell_v1.hpp"
#include "character_player_scalar_services_v1.hpp"
#include "character_equipped_faery_element_v1.hpp"
#include "character_current_equipped_faery_v1.hpp"
#include "character_player_buffs_v1.hpp"
#include "character_skill_cooldown_services.hpp"
#include "character_coordinator.hpp"
#include "player_ais_lifecycle_v1.hpp"
#include "ais_external_init_callbacks.hpp"
#include "player_ai_timer_events_v1.hpp"
#include "native_debug_files.hpp"
#include "mod_assets.hpp"
#include "../../../../../../port/adam-script-runtime/script_game_bindings.h"
extern "C" {
#include "../../../../../../port/pydata-names/names.h"
#include "../../../../../../port/pydata-constants/constants.h"
}
#include <android/log.h>
#include <algorithm>
#include <cmath>
#include <cstring>
#include <cstdio>
#include <map>
#include <stdexcept>

namespace dh2::native::player_skills {
// One native Player AIS/skill owner. Source load and InitProcess drive the same
// Session/preparation/property/Coordinator graph. Full Character InitPost,
// profile/equipment/grants, frame AI and skill activation remain separate.
namespace {
struct InitialVirtuals {void(*init)();void(*post)();void(*final)();};
// Native dispatch identities for the proven inherited initial virtuals. These
// do not represent a complete original Binder or reconstructed C++ vtable.
const InitialVirtuals base_initials{dh2::ais_external_init_callbacks::default_init,
 dh2::ais_external_init_callbacks::default_post,dh2::ais_external_init_callbacks::default_final};
const InitialVirtuals player_initials=base_initials,iphone_initials=base_initials;
}
struct Runtime::Impl {
 Bindings bindings;
 AAssetManager* assets=nullptr;
 dh2::ais_player_init_vcb::State ais{};
 dh2::data::AiProps declaration;
 dh2::player_ais_lifecycle_v1::PlayerFields source_fields{};
 dh2::player_ais_lifecycle_v1::Tables source_tables{};
 dh2::player_skill_session_v1::Session* session_slot=nullptr;
 dh2::character_player_skills_preparation_v3::Owner* preparation_slot=nullptr;
 dh2::player_skill_update_session_v1::Runtime* update_slot=nullptr;
 dh2::player_skill_use_session_v1::Runtime* use_slot=nullptr;
 dh2::character_level_runtime::Runtime vitals;
 dh2::character_level_runtime::DesignBinding design_binding{};
 dh2::character_level_runtime::Storage vitals_storage{};
 std::unique_ptr<dh2::player_ais_lifecycle_v1::Runtime> lifecycle;
 std::unique_ptr<dh2::player_ai_timer_events_v1::Runtime> ai_ticks;
 unsigned regen_ticks=0,dot_ticks=0;
 dh2::player_ais_lifecycle_v1::Result loaded{},initialized_result{};
 dh2::data::PropertyView property_view{};
 std::vector<dh2::data::ClassRow> class_rows;
 std::unique_ptr<dh2::character_player_buffs_v1::Owner> buffs;
 dh2::character_player_buffs_v1::CallbackBindings buff_callbacks{};
 std::unique_ptr<dh2::character_player_skills_preparation_v3::Owner> preparation;
 std::optional<dh2::character_player_skills_preparation_v3::Owner::TimerFieldLease> timer_fields;
 std::unique_ptr<dh2::player_skill_session_v1::Session> session;
 std::unique_ptr<dh2::player_skill_update_session_v1::Runtime> updates;
 std::unique_ptr<dh2::player_skill_use_session_v1::Runtime> uses;
 std::unique_ptr<dh2::player_skill_cleanup_session_v1::Runtime> cleanups;
 std::unique_ptr<dh2::player_ai_death_v1::Runtime> death;
 std::unique_ptr<dh2::character_dead_focus_services_v1::Adapter> focus_services;
 dh2::character::set_target::Services target_services{};
 dh2::player_ai_death_v1::Result died_result{};
 dh2::character_skill_cooldown_services::Services cooldown{};
 dh2::player_skill_property_services_v1::Bindings property_services{};
 dh2::character_mana_services_v1::State mana_state{};
 dh2::character_mana_services_v1::Globals mana_globals{};
 dh2::character_mana_services_v1::Services mana_services{};
 dh2::character_mana_services_v1::CallbackContext mana_callbacks{};
 const dh2::data::PlayerSavegameV1* saved_slot=nullptr;
 dh2::character_faery_selection::Globals faery_globals{};
 dh2::character_faery_selection::Services faery_services{};
 dh2::character_current_spell_v1::SavedBindings spell_saved{};
 dh2::character_current_spell_v1::Bindings spell_callback{};
 dh2::character_equipped_faery_element_v1::Bindings element_callback{};
 dh2::character_current_equipped_faery_v1::Bindings equipped_callback{};
 // LuaScript+0x1c belongs to this AIS and its retained VM. It is a distinct
 // source component, not the Character property sheet or a global dictionary.
 dh2::character_player_scalar_services_v1::IntegerMap script_integers;
 dh2::character_player_scalar_services_v1::State scalar_state{};
 dh2::character_player_scalar_services_v1::Bindings scalar_callbacks{};
 dh2_script_game_bindings timer_bindings{};
 std::map<std::string,std::vector<std::uint8_t>> named_bytes;
 std::map<std::string,dh2_pynames_view> named_views;
 std::vector<std::uint8_t> animation_constants_bytes;
 dh2_pycst_view animation_constants{};
 dh2::character_ai_set_skills_and_spells::Result prepared{};
 dh2::player_skill_update_session_v1::Result updated{};
 unsigned update_attempts=0,timers_started=0,timer_callbacks=0;
 bool update_blocked=false,initialized=false;
 std::string error;
 explicit Impl(Bindings b):bindings(std::move(b)),assets(bindings.assets),declaration(*bindings.declaration){
  // Retain the immutable authored row used by this AIS. GL reload replaces
  // the global AI table backing; it must not invalidate this live borrower.
  bindings.declaration=&declaration;
 }
 ~Impl(){
  // Prevent callbacks to retiring instances. The retained Coordinator remains
  // the sole timer owner; unrelated Character timers are not removed here.
  const auto stop_owned=[&](std::uint32_t id,std::int32_t event,std::uintptr_t ref){
   const auto& timers=bindings.coordinator->timers();
   if(id<timers.count){const auto& timer=timers.slots[id];
    if(timer.active&&timer.id==id&&timer.event==event&&timer.user_ref==ref)
     bindings.coordinator->stop_timer(id);
   }
  };
  if(bindings.source_ai){stop_owned(bindings.source_ai->word_10,0x33,0);stop_owned(bindings.source_ai->word_14,0x34,0);}
  if(timer_fields&&preparation){
   using List=dh2::character_ai_set_skills_and_spells::List;
   for(const auto list:{List::skill,List::faery})
    for(std::uint32_t index=0;index<preparation->slots(list).size();++index){
     dh2::character_player_skills_preparation_v3::Owner::TimerFieldSlot slot{};
     if(timer_fields->slot(bindings.character,list,index,slot)&&slot.field18&&*slot.field18>=0)
      stop_owned(std::uint32_t(*slot.field18),0x35,0);
    }
  }
  if(buffs){dh2::character_player_buffs_v1::Snapshot row{};
   for(std::uint32_t i=0;buffs->snapshot(i,&row);++i){
    const auto& timers=bindings.coordinator->timers();
    if(row.timer>=0&&std::uint32_t(row.timer)<timers.count){
     const auto& timer=timers.slots[row.timer];
     if(timer.active&&timer.id==std::uint32_t(row.timer)&&timer.event==0x36&&timer.user_ref==row.instance)
      bindings.coordinator->stop_timer(std::uint32_t(row.timer));
    }
   }
  }
  death.reset();focus_services.reset();cleanups.reset();ai_ticks.reset();lifecycle.reset();uses.reset();updates.reset();session.reset();
  if(buffs){dh2::character_player_buffs_v1::Result result{};
   if(buffs->retire(&result)!=dh2::character_player_buffs_v1::Status::complete)
    __android_log_print(ANDROID_LOG_ERROR,"DH2Native","Native Player buff retirement provider failed");
  }
  buffs.reset();timer_fields.reset();preparation.reset();
 }
 void refresh_properties(){
  property_view=dh2::data::property_view(*bindings.rules,*bindings.properties);
  if(buffs&&buffs->attach(&property_view)!=dh2::character_player_buffs_v1::Status::complete)
   throw std::runtime_error("Native Player buff property groups lost");
 }
 void refresh_class_rows(){
  // Level reload replaces the catalogue's vector backing. Keep only borrowed
  // descriptors, and rebind them before any retained buff can recalculate.
  class_rows.clear();class_rows.reserve(bindings.classes->rows.size());
  for(const auto& row:bindings.classes->rows)class_rows.push_back({row.data(),std::uint32_t(row.size())});
  design_binding={reinterpret_cast<std::uintptr_t>(bindings.design),bindings.design};
  vitals_storage={bindings.character,reinterpret_cast<std::uintptr_t>(bindings.properties),
   bindings.properties->base.data(),&property_view,class_rows.data(),std::uint32_t(class_rows.size()),
   &design_binding,1,&bindings.debug->globals(),&bindings.debug->services()};
 }
 void log_buffs(const char* phase){
  refresh_properties();
  dh2::character_player_buffs_v1::Snapshot row{};
  for(std::uint32_t i=0;buffs->snapshot(i,&row);++i){
   std::uint64_t hash=14695981039346656037ull;
   for(unsigned p=0;p<224;++p){std::uint32_t word;std::memcpy(&word,&row.sheet[p],4);
    for(unsigned byte=0;byte<4;++byte){hash^=(word>>(byte*8))&255u;hash*=1099511628211ull;}}
   __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native Player buff snapshot | phase %s | count %u | groups %u | id %d | instance %p | timer %d | strength %u | sheet %016llx | same VM/properties/Coordinator",
    phase,buffs->count(),property_view.group_count,row.id,reinterpret_cast<void*>(row.instance),row.timer,row.strength,static_cast<unsigned long long>(hash));
   for(std::uint32_t p=0;p<bindings.fields->size();++p)
    if((*bindings.fields)[p].find("Resistance")!=std::string::npos)
     __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native Player buff property | phase %s | name %s | index %u | buff %d | resolved %d",
      phase,(*bindings.fields)[p].c_str(),p,row.sheet[p],bindings.properties->resolved[p]);
  }
 }
 void log_ai_timers(const char* phase){
  const auto& timers=bindings.coordinator->timers();
  for(const auto event:{0x33,0x34}){
   const auto id=event==0x33?bindings.source_ai->word_10:bindings.source_ai->word_14;
   if(id==UINT32_MAX){
    __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native Player AI timer detached | phase %s | event %x | source id %u | no source timer association",phase,event,id);
    continue;
   }
   if(id>=timers.count)throw std::runtime_error("Native Player AI timer slot unavailable");
   const auto& timer=timers.slots[id];
   if(timer.id!=id||timer.event!=event||timer.user_ref!=0)
    throw std::runtime_error("Native Player AI timer owner differs");
   __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native Player AI timer snapshot | phase %s | event %x | slot %u | duration %u | repeat %d | elapsed %u | active %u | paused %u | ref %zu | delivered %u | HP %d / %d | MP %d / %d",
    phase,event,id,timer.duration_ms,timer.repeat,timer.elapsed_ms,unsigned(timer.active),unsigned(timer.paused),std::size_t(timer.user_ref),
    event==0x33?regen_ticks:dot_ticks,bindings.properties->resolved[36],bindings.properties->resolved[38],bindings.properties->resolved[41],bindings.properties->resolved[43]);
  }
  if(bindings.coordinator->state.current==12){
   __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native Player dead snapshot | phase %s | state %d | HP %d | dead %u | buffs %u | groups %u | update attempts %u | VM %p | AIS %p | source timer33 %u | source timer34 %u",
    phase,bindings.coordinator->state.current,bindings.properties->resolved[36],unsigned(*bindings.dead),buffs->count(),property_view.group_count,update_attempts,static_cast<void*>(session->vm()),reinterpret_cast<void*>(ais.ais),bindings.source_ai->word_10,bindings.source_ai->word_14);
   for(std::uint32_t i=0;i<timers.count;++i){const auto& timer=timers.slots[i];
    __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native Player dead timer | phase %s | slot %u | event %x | active %u | paused %u | elapsed %u | ref %zu",phase,i,unsigned(timer.event),unsigned(timer.active),unsigned(timer.paused),timer.elapsed_ms,std::size_t(timer.user_ref));
   }
  }
 }
 static auto& self(void* raw){return *static_cast<Impl*>(raw);}
 static int target_service(void* raw,const dh2::character::set_target::Request* q,dh2::character::set_target::Response* r){
  auto& s=self(raw);using namespace dh2::character::set_target;
  if(!q||!r||q->ai_identity!=s.bindings.ai)return 1;
  auto& debug=*s.bindings.debug;using Status=dh2::debug_switches::Status;
  if(q->operation==debug_switches_load)return debug.runtime().load(debug.globals(),debug.services())==Status::complete?0:1;
  if(q->operation==debug_switch_lookup){
   const char* key=q->key==trace_target_changes?"IsTracingCharAITarget":q->key==trace_target_details?"isTracingCharAITarget":nullptr;
   if(!key)return 1;std::uint8_t value=0;
   if(debug.runtime().get_switch(key,debug.globals(),debug.services(),value)!=Status::complete)return 1;
   r->word=value;r->reserved=0;return 0;
  }
  // A null death target takes the genuine source branch without these
  // services. Nonnull target/sight providers are not manufactured here.
  return 1;
 }
 static int death_service(void* raw,const dh2::player_ai_death_v1::Request* q,dh2::player_ai_death_v1::Reply* r,std::string& why){
  auto& s=self(raw);using namespace dh2::player_ai_death_v1;
  if(!q||!r||q->ai!=s.bindings.ai||q->character!=s.bindings.character){why="Player death identity differs";return 1;}
  switch(q->operation){
  case Operation::animation_table:{
   const auto value=s.bindings.properties->resolved[2];const auto count=s.bindings.animation_tables->characters.size();
   if(count>UINT32_MAX){why="Player animation table count exceeds source bound";return 1;}
   // Original GetCharAnimTableId60B@3a3228 reads cached property2 and falls
   // back to17. SM_SetDeadState independently validates that returned row.
   r->word=value>=0&&std::uint32_t(value)<count?value:17;r->count=std::uint32_t(count);return 0;
  }
  case Operation::animation_value:{
   const char* key=q->animation==Animation::died?"Died":q->animation==Animation::deadly_great_kb?"DeadlyGreatKB":q->animation==Animation::despawn?"Despawn":"DespawnGreatKB";
   const auto& tables=*s.bindings.animation_tables;
   if(q->row<0||std::uint32_t(q->row)>=tables.characters.size()){why="Player death animation row unavailable";return 1;}
   const auto field=std::find(tables.state_names.begin(),tables.state_names.end(),key);
   if(field==tables.state_names.end()){why="Player death animation field unavailable";return 1;}
   const auto index=std::size_t(field-tables.state_names.begin());
   if(index>=tables.characters[q->row].fields.size()||tables.characters[q->row].fields[index].size()!=1){why="Player death animation scalar unavailable";return 1;}
   r->word=tables.characters[q->row].fields[index][0];return 0;
  }
  case Operation::stance_mask:{
   dh2_pycst_result value{};
   if(!q->group||!q->key||dh2_pycst_get(&s.animation_constants,q->group,std::strlen(q->group),q->key,std::strlen(q->key),&value)||!value.found){why="Player death stance constant unavailable";return 1;}
   r->word=value.value;return 0;
  }
  case Operation::anim_stance:why="Player death reached unbound native inventory stance";return 1;
  case Operation::relations:case Operation::clear_relations:{
   auto& tree=q->direction==Direction::outgoing?s.bindings.source_ai->tree_7c:s.bindings.source_ai->tree_94;
   const auto header=reinterpret_cast<std::uintptr_t>(&tree);
   if(tree.count||tree.parent||tree.left!=header||tree.right!=header){why="Player death reached unbound nonempty source aggro graph";return 1;}
   r->count=0;r->peers=nullptr;return 0;
  }
  case Operation::skill_cleanup:case Operation::spell_cleanup:{
   using List=dh2::character_player_skills_preparation_v3::source::List;
   dh2::player_skill_cleanup_session_v1::Result result{};
   if(!s.cleanups||s.cleanups->cleanup(q->operation==Operation::skill_cleanup?List::skill:List::faery,result,why))return 1;
   __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native Player source cleanup | list %u | examined %u | callbacks %u | completed %u | lua errors %u | same VM/instances; no blanket timer stop",unsigned(result.list),result.examined,result.cleanup_calls,result.completed,result.lua_errors);
   return 0;
  }
  default:why="Player death reached unbound group/AIS/nonempty aggro provider";return 1;
  }
 }
 static int fail(char* message,std::size_t size,const char* name){
  if(message&&size)std::snprintf(message,size,"unresolved native Player skill provider: %s",name?name:"unknown");
  return DH2_SCRIPT_REQUIRED_SERVICE_FAILURE;
 }
 static bool integer(const dh2_script_value& value,std::int32_t& out){
  if(value.type!=DH2_SCRIPT_NUMBER||!std::isfinite(value.number)||value.number<-2147483648.f||value.number>=2147483648.f)return false;
  out=static_cast<std::int32_t>(value.number);return true;
 }
 static void number(dh2_script_value& value,float n){value={};value.type=DH2_SCRIPT_NUMBER;value.number=n;}
 static std::int32_t list_count(void* raw,std::uintptr_t character,std::uint32_t kind,std::uint32_t* out){
  auto& s=self(raw);if(!out||!s.bindings.character||character!=s.bindings.character||kind>1||!s.bindings.tables)return 1;
  s.refresh_properties();
  std::int32_t selector=0;
  if(dh2_property_resolve(&s.property_view,kind?29:28,&selector))return 1;
  const auto* list=kind?s.bindings.tables->faery_list(selector):s.bindings.tables->skill_list(selector);
  if(!list||list->members.size()>UINT32_MAX)return 1;
  *out=std::uint32_t(list->members.size());return 0;
 }
 static std::int32_t slot(void* raw,std::uintptr_t character,std::uint32_t kind,std::uint32_t index,
                        dh2::character_skill_cooldown_services::Slot* out){
  auto& s=self(raw);if(!out||kind>1||!s.timer_fields)return 1;
  dh2::character_player_skills_preparation_v3::Owner::TimerFieldSlot found{};
  const auto list=kind?dh2::character_ai_set_skills_and_spells::List::faery:dh2::character_ai_set_skills_and_spells::List::skill;
  if(!s.timer_fields->slot(character,list,index,found))return 1;
  *out={found.instance,found.field18};return 0;
 }
 static std::int32_t unsupported_number(void*,const dh2_script_value*,float*){return 1;}
 static std::int32_t start_timer(void* raw,std::uintptr_t character,std::uint32_t ms,
                               std::int32_t repeat,std::int32_t event,std::uintptr_t ref){
  auto& s=self(raw);if(!s.bindings.character||character!=s.bindings.character)return -1;
  const auto id=s.bindings.coordinator->start_timer(ms,repeat,event,ref);
  if(id<0)throw std::runtime_error("Player native timer allocation failed");
  if(id>=0)++s.timers_started;
  return id;
 }
 static void stop_timer(void* raw,std::uintptr_t character,std::uint32_t id){
  auto& s=self(raw);
  if(character!=s.bindings.coordinator->owner()||s.bindings.coordinator->stop_timer(id)<0)throw std::runtime_error("Player skill timer stop failed");
 }
 static int buff_service(void* raw,dh2::data::PropertyView* view,
               const dh2::character_player_buffs_v1::Request* q,
               dh2::character_player_buffs_v1::Response* out){
  auto& s=self(raw);if(!q||!out||view!=&s.property_view||q->character!=s.bindings.character)return 1;
  using Op=dh2::character_player_buffs_v1::Operation;
  switch(q->operation){
   case Op::timer_start:
    out->word=s.bindings.coordinator->start_timer(q->duration,q->repeat,q->event,q->subject);
    return out->word< -1?1:0;
   case Op::timer_stop:return s.bindings.coordinator->stop_timer(std::uint32_t(q->id))<0?1:0;
   case Op::timer_time_left:return dh2_character_timer_time_left(&out->elapsed,&out->duration,&s.bindings.coordinator->timers(),std::uint32_t(q->id))==1?0:1;
   case Op::apply_class:{
    std::int32_t* sheet=nullptr;
    if(!s.buffs||!s.buffs->owned_sheet(q->subject,&sheet)||sheet!=q->sheet)return 1;
    return int(dh2_class_apply(s.class_rows.data(),std::uint32_t(s.class_rows.size()),q->id,sheet,view->resolved));
   }
   case Op::recalculate:return int(dh2_class_recalc_base(s.class_rows.data(),std::uint32_t(s.class_rows.size()),s.bindings.properties->base.data(),view));
   case Op::fx_release:return q->subject?1:0;
   // Animated-effect lifetime/render services have not been attached yet.
   // Numeric FX requests must not silently succeed without a real owner.
   case Op::fx_load:case Op::fx_object:case Op::fx_enable:return 1;
  }
  return 1;
 }
 static int resolve(void* raw,const std::string& path,dh2::player_skill_session_v1::Resource& output,std::string& error){
  auto& s=self(raw);
  try{
   if(!s.assets||path.compare(0,5,"data/")||!dh2::mods::valid_path(path))throw std::runtime_error("invalid Player skill asset path");
   auto bytes=s.bindings.read(s.assets,path.substr(5));
   output={path,std::make_shared<const std::vector<std::uint8_t>>(std::move(bytes))};return 0;
  }catch(const std::exception& e){error=e.what();return -1;}
 }
 static std::int32_t faery_constant(void* raw,dh2::character_faery_selection::Character* character,
                   const dh2::character_faery_selection::Request* q,dh2::character_faery_selection::Response* out){
  auto& s=self(raw);if(!character||!q||!out||!s.bindings.character||character->identity!=s.bindings.character)return 1;
  dh2_pycst_result value{};
  if(dh2_pycst_get(s.bindings.faery_constants,q->category,std::strlen(q->category),q->key,std::strlen(q->key),&value)||!value.found)return 1;
  out->word=value.value;return 0;
 }
 static std::int32_t faery_assert(void*,dh2::character_faery_selection::Character*,const dh2::character_faery_selection::Request*){return 1;}
 static std::int32_t mana_service(void* raw,const dh2::character_mana_services_v1::Request* q,
                               dh2::character_mana_services_v1::Reply* out){
  auto& s=self(raw);if(!q||!out)return 1;
  using Operation=dh2::character_mana_services_v1::Operation;
  if(q->operation==Operation::get_online){
   if(!s.bindings.online||!s.bindings.online_identity)return 1;
   out->identity=s.bindings.online_identity;out->word=*s.bindings.online;return 0;
  }
  // Full COnline and ObjectBase::IsRemotelyUpdated are not attached to this
  // offline session. A reached online branch is an explicit missing provider.
  if(q->operation==Operation::is_remotely_updated)return 1;
  if(q->operation==Operation::application_is_saved_option_on){
   if(!s.bindings.application_singleton||q->subject!=*s.bindings.application_singleton||!s.bindings.saved_options)return 1;
   const dh2::data::savegame_options_v1::Application app{q->subject,s.bindings.saved_options};
   bool on=false;
   if(dh2::data::savegame_options_v1::is_saved_option_on(&app,q->text,&on)!=dh2::data::savegame_options_v1::Status::complete)return 1;
   out->word=on?1u:0u;return 0;
  }
  return 1;
 }
 static int native(void* raw,const dh2::player_skill_session_v1::NativeRequest& q,const dh2_script_value* a,std::uint32_t count,
          dh2_script_value* out,std::uint32_t capacity,std::uint32_t* returned,char* text,std::size_t bytes){
  auto& s=self(raw);if(!returned||!s.bindings.character||q.character!=s.bindings.character||(!a&&count))return fail(text,bytes,q.name);
  *returned=0;
  if(q.domain==dh2::player_skill_session_v1::Domain::ais){
   using Fn=dh2::ais_native_bindings::Function;
   if(q.ais_function==Fn::get_int||q.ais_function==Fn::set_int){
    if(q.userdata!=s.ais.ais)return fail(text,bytes,q.name);
    return q.ais_function==Fn::get_int?
     dh2::character_player_scalar_services_v1::get_int(&s.scalar_callbacks,a,count,out,capacity,returned,text,bytes):
     dh2::character_player_scalar_services_v1::set_int(&s.scalar_callbacks,a,count,out,capacity,returned,text,bytes);
   }
   if(q.ais_function==Fn::trace)return dh2_script_game_trace(nullptr,a,count,out,capacity,returned,text,bytes);
   if(q.ais_function==Fn::get_py_struct||q.ais_function==Fn::get_py_oid||q.ais_function==Fn::get_py_cst){
    if(count<2||a[0].type!=DH2_SCRIPT_STRING||a[1].type!=DH2_SCRIPT_STRING||!a[0].text||!a[1].text||!out||!capacity)return fail(text,bytes,q.name);
    std::int32_t value=-1;
    if(q.ais_function==Fn::get_py_struct){
     if(std::strcmp(a[0].text,"CharacterProperties"))return fail(text,bytes,q.name);
     auto it=std::find(s.bindings.fields->begin(),s.bindings.fields->end(),a[1].text);
     if(it!=s.bindings.fields->end())value=std::int32_t(it-s.bindings.fields->begin());
    }else if(q.ais_function==Fn::get_py_oid){
     if(!std::strcmp(a[0].text,"ClassTable")){
      auto it=std::find(s.bindings.classes->names.begin(),s.bindings.classes->names.end(),a[1].text);
      if(it!=s.bindings.classes->names.end())value=std::int32_t(it-s.bindings.classes->names.begin());
     }else if(!std::strcmp(a[0].text,"SkillTable")){
      const auto& rows=s.bindings.tables->skills().skills;
      auto it=std::find_if(rows.begin(),rows.end(),[&](const auto& row){return row.table_name==a[1].text;});
      if(it!=rows.end())value=std::int32_t(it-rows.begin());
     }else if(!std::strcmp(a[0].text,"SkillListTable")){
      const auto& rows=s.bindings.tables->skills().skill_lists;
      auto it=std::find_if(rows.begin(),rows.end(),[&](const auto& row){return row.name==a[1].text;});
      if(it!=rows.end())value=std::int32_t(it-rows.begin());
     }else{
      const auto it=s.named_views.find(a[0].text);
      if(it==s.named_views.end()||a[1].text_bytes>UINT32_MAX||dh2_pynames_get(&it->second,a[1].text,std::uint32_t(a[1].text_bytes),&value))return fail(text,bytes,q.name);
     }
    }else{
     dh2_pycst_result result{};
     if(dh2_pycst_get(s.bindings.design,a[0].text,a[0].text_bytes,a[1].text,a[1].text_bytes,&result))return fail(text,bytes,q.name);
     if(!result.found&&dh2_pycst_get(s.bindings.ai_constants,a[0].text,a[0].text_bytes,a[1].text,a[1].text_bytes,&result))return fail(text,bytes,q.name);
     if(result.found)value=result.value;
    }
    number(out[0],static_cast<float>(value));*returned=1;return 0;
   }
  }else{
   using Fn=dh2::character_native_bindings::Function;
   if(q.character_function==Fn::character_set_skill_cooldown_timer_id)
    return dh2::character_skill_cooldown_services::skill(&s.cooldown,a,count,out,capacity,returned,text,bytes);
   if(q.character_function==Fn::character_set_spell_cooldown_timer_id)
    return dh2::character_skill_cooldown_services::spell(&s.cooldown,a,count,out,capacity,returned,text,bytes);
   if(q.character_function==Fn::character_start_timer)
    return dh2_script_game_start_timer(&s.timer_bindings,a,count,out,capacity,returned,text,bytes);
   if(q.character_function==Fn::character_stop_timer)
    return dh2_script_game_stop_timer(&s.timer_bindings,a,count,out,capacity,returned,text,bytes);
   if(q.character_function==Fn::character_create_buff)
    return dh2::character_player_buffs_v1::create_buff(&s.buff_callbacks,a,count,out,capacity,returned,text,bytes);
   if(q.character_function==Fn::character_remove_buff)
    return dh2::character_player_buffs_v1::remove_buff(&s.buff_callbacks,a,count,out,capacity,returned,text,bytes);
   if(q.character_function==Fn::character_apply_prop_class&&count>1&&a[1].type==DH2_SCRIPT_IDENTITY)
    return dh2::character_player_buffs_v1::apply_buff(&s.buff_callbacks,a,count,out,capacity,returned,text,bytes);
   if(q.character_function==Fn::character_get_prop||q.character_function==Fn::character_set_prop||q.character_function==Fn::character_apply_prop_class||q.character_function==Fn::character_clear_props)
    return dh2::player_skill_property_services_v1::invoke(&s.property_services,q.character,q.character_function,a,count,out,capacity,returned,text,bytes);
   if(q.character_function==Fn::character_get_current_skill_info||q.character_function==Fn::character_get_skill_id_from_oid){
    std::int32_t index=0;
    if(!count)return 0;
    if(a[0].type!=DH2_SCRIPT_NUMBER)return fail(text,bytes,q.name);
    if(!integer(a[0],index)||!out||!capacity||s.bindings.savegame->character()!=q.character)return fail(text,bytes,q.name);
    s.refresh_properties();
    using namespace dh2::player_saved_skill_callbacks_v1;
    const auto value=q.character_function==Fn::character_get_current_skill_info?
     get_current_skill_info(&s.property_view,&s.bindings.tables->skills(),s.bindings.savegame.get(),q.character,index):
     get_skill_id_from_oid(&s.property_view,&s.bindings.tables->skills(),index);
    if(value.disposition==Disposition::no_return)return 0;
    if(value.disposition!=Disposition::append_integer)return fail(text,bytes,q.name);
    number(out[0],static_cast<float>(value.integer));*returned=1;return 0;
   }
   if(q.character_function==Fn::character_get_current_spell_info){
    s.saved_slot=s.bindings.savegame.get();
    return dh2::character_current_spell_v1::current_spell_info_v1(&s.spell_callback,a,count,out,capacity,returned,text,bytes);
   }
   if(q.character_function==Fn::character_get_equipped_faery_element){
    s.saved_slot=s.bindings.savegame.get();
    return dh2::character_equipped_faery_element_v1::equipped_faery_element_v1(&s.element_callback,a,count,out,capacity,returned,text,bytes);
   }
   if(q.character_function==Fn::character_get_current_equipped_faery_id||q.character_function==Fn::character_get_current_equipped_faery_level){
    s.saved_slot=s.bindings.savegame.get();
    return q.character_function==Fn::character_get_current_equipped_faery_id?
     dh2::character_current_equipped_faery_v1::current_equipped_faery_id_v1(&s.equipped_callback,a,count,out,capacity,returned,text,bytes):
     dh2::character_current_equipped_faery_v1::current_equipped_faery_level_v1(&s.equipped_callback,a,count,out,capacity,returned,text,bytes);
   }
   if(q.character_function==Fn::character_has_mana||q.character_function==Fn::character_use_mana){
    s.refresh_properties();
    return q.character_function==Fn::character_has_mana?
     dh2::character_mana_services_v1::has_mana_callback(&s.mana_callbacks,a,count,out,capacity,returned,text,bytes):
     dh2::character_mana_services_v1::use_mana_callback(&s.mana_callbacks,a,count,out,capacity,returned,text,bytes);
   }
  }
  return fail(text,bytes,q.name);
 }
 static int lifecycle_backend(void* raw,const dh2::player_ais_lifecycle_v1::Request* q,std::string& error){
  auto& s=self(raw);
  if(!q||q->character!=s.bindings.character||q->ais!=s.ais.ais){error="Native Player lifecycle identity differs";return 1;}
  if(q->operation==dh2::player_ais_lifecycle_v1::Operation::construct_vm){
   if(q->allocation_bytes!=0xd8||q->skip_bind!=1||s.session){error="Native Player deferred constructor differs";return 1;}
   dh2::player_skill_session_v1::Configuration config{};
   config.character=s.bindings.character;config.ais=&s.ais;config.tables=s.bindings.tables;
   config.debug=&s.bindings.debug->globals();config.debug_services=s.bindings.debug->services();
   config.providers.context=&s;config.providers.resolve=resolve;config.providers.native=native;
   config.providers.faery={&s,faery_constant,faery_assert};
   dh2::player_skill_session_v1::Vm vm(dh2_script_vm_create_deferred(16*1024*1024));
   s.session=dh2::player_skill_session_v1::Session::adopt(std::move(vm),std::move(config),error);
   s.session_slot=s.session.get();
   return s.session&&s.session->stage()==dh2::player_skill_session_v1::Stage::created?0:1;
  }
  if(q->operation!=dh2::player_ais_lifecycle_v1::Operation::configure_skills||!s.session||s.preparation||
     s.bindings.source_ai->active_ais_1c!=s.ais.ais||s.bindings.source_ai->pointer_28!=7){
   error="Native Player source configure prefix differs";return 1;
  }
  s.refresh_properties();
  const dh2::character_player_skills_preparation_v3::Inputs inputs{q->character,s.bindings.source_ai->active_ais_1c,&s.property_view,0};
  s.preparation=dh2::character_player_skills_preparation_v3::Owner::create(s.bindings.tables,inputs,s.session->preparation_services(),error);
  s.preparation_slot=s.preparation.get();
  if(!s.preparation||s.preparation->prepare(&s.prepared)!=dh2::character_ai_set_skills_and_spells::Status::complete){
   error="Player original skill preparation: "+s.session->last_error();return 1;
  }
  s.timer_fields=s.preparation->lease_timer_fields(q->character);
  if(!s.timer_fields){error="Player skill field18 lease unavailable";return 1;}
  s.updates=std::make_unique<dh2::player_skill_update_session_v1::Runtime>(*s.session,*s.preparation,s.bindings.ai,q->character,s.bindings.coordinator->state.current);
  s.uses=std::make_unique<dh2::player_skill_use_session_v1::Runtime>(*s.session,*s.preparation,q->character);
  s.update_slot=s.updates.get();s.use_slot=s.uses.get();return 0;
 }
 void initialize(){
  if(!bindings.character||!bindings.tables||!bindings.debug)throw std::runtime_error("Native Player skill owners missing");
  animation_constants_bytes=bindings.read(assets,"data/animations_pycst.bin");
  if(animation_constants_bytes.size()>UINT32_MAX||dh2_pycst_open(&animation_constants,animation_constants_bytes.data(),std::uint32_t(animation_constants_bytes.size())))
   throw std::runtime_error("Native Player animation constants rejected");
  for(const auto& pair:std::vector<std::pair<std::string,std::string>>{{"AnimatedEffectTable","effects"},{"ProjectileTable","projectiles"}}){
   auto bytes=bindings.read(assets,"data/"+pair.second+"_pyarraynames.bin");
   const auto word=[&](std::size_t at){if(at>bytes.size()||bytes.size()-at<4)throw std::runtime_error("Player names truncated");std::uint32_t n;std::memcpy(&n,bytes.data()+at,4);return n;};
   std::size_t end=4;const auto count=word(0);
   if(count>65536)throw std::runtime_error("Player names count exceeds bound");
   for(std::uint32_t i=0;i<count;++i){const auto n=word(end);end+=4;if(n>bytes.size()-end)throw std::runtime_error("Player names length rejected");end+=n;}
   bytes.resize(end);auto& retained=named_bytes[pair.first];retained=std::move(bytes);
   if(dh2_pynames_open(&named_views[pair.first],retained.data(),std::uint32_t(retained.size())))throw std::runtime_error("Player dictionary names rejected");
  }
  ais={reinterpret_cast<std::uintptr_t>(&source_fields),0};
  source_fields.script.identity=ais.ais;
  source_fields.script.binder_identity=reinterpret_cast<std::uintptr_t>(&session_slot);
  source_fields.script.path_storage_identity=reinterpret_cast<std::uintptr_t>(&session);
  source_tables={reinterpret_cast<std::uintptr_t>(&base_initials),reinterpret_cast<std::uintptr_t>(&player_initials),reinterpret_cast<std::uintptr_t>(&iphone_initials)};
  scalar_state={ais.ais,&script_integers};scalar_callbacks={&scalar_state,nullptr};
  property_services={bindings.character,bindings.rules,bindings.classes,bindings.properties,bindings.shared_property_temp,false};
  mana_state={bindings.character,bindings.mana_exempt_14f0,&property_view};
  mana_globals={bindings.application_singleton,&bindings.debug->globals(),&bindings.debug->services()};
  mana_services={this,mana_service};mana_callbacks={&mana_state,&mana_globals,&mana_services};
  saved_slot=bindings.savegame.get();
  faery_globals={&bindings.tables->source_faeries(),0};
  faery_services={this,faery_constant,faery_assert};
  spell_saved={bindings.character,&saved_slot,bindings.current_difficulty,&bindings.properties->resolved[29],&faery_globals,&faery_services};
  spell_callback={bindings.character,dh2::character_current_spell_v1::saved_services(&spell_saved)};
  element_callback={bindings.character,dh2::character_equipped_faery_element_v1::saved_services(&spell_saved)};
  equipped_callback={bindings.character,dh2::character_current_spell_v1::saved_services(&spell_saved)};
  cooldown={this,bindings.character,list_count,slot,unsupported_number};
  timer_bindings={this,bindings.character,start_timer,stop_timer,0};
  refresh_properties();
  refresh_class_rows();
  buffs=dh2::character_player_buffs_v1::Owner::create({bindings.character,&property_view,{this,buff_service},std::uint32_t(class_rows.size()),UINT32_MAX});
  if(!buffs)throw std::runtime_error("Native Player buff owner rejected current property graph");
  buff_callbacks={buffs.get()};
  dh2::player_ai_timer_events_v1::Bindings tick_bindings{};
  tick_bindings.ai=bindings.source_ai;tick_bindings.coordinator=bindings.coordinator;tick_bindings.object=bindings.object;
  tick_bindings.controller=bindings.controller;tick_bindings.properties=reinterpret_cast<std::uintptr_t>(bindings.properties);
  tick_bindings.view=&property_view;tick_bindings.dead=bindings.dead;
  tick_bindings.debug_globals=&bindings.debug->globals();tick_bindings.debug_services=&bindings.debug->services();
  // Positive DoT combat remains an explicit reached-provider failure until
  // genuine Player F_DotAttack/F_ApplyResult storage is attached. Zero DoT is
  // the real cached-property path, never a forced or fabricated suppression.
  ai_ticks=std::make_unique<dh2::player_ai_timer_events_v1::Runtime>(tick_bindings);
  dh2::player_ais_lifecycle_v1::Bindings life{bindings.source_ai,&source_fields,&ais,&source_tables,&declaration,"Player",
   &session_slot,&preparation_slot,&update_slot,&use_slot,bindings.savegame.get(),bindings.coordinator,
   bindings.dead,bindings.design,&vitals,&vitals_storage,{this,lifecycle_backend}};
  lifecycle=std::make_unique<dh2::player_ais_lifecycle_v1::Runtime>(life);
  // Character profile/equipment/slot-grant integration belongs between these
  // original phases. The Crypt development entry has no such provider yet.
  if(lifecycle->load(&loaded,error)!=dh2::player_ais_lifecycle_v1::Status::complete||bindings.source_ai->pointer_28!=7)
   throw std::runtime_error("Native Player source load: "+error);
  if(lifecycle->initialize_process(1,&initialized_result,error)!=dh2::player_ais_lifecycle_v1::Status::complete)
   throw std::runtime_error("Native Player source InitProcess: "+error);
  if(initialized_result.init_phase_mask!=31||bindings.source_ai->active_ais_1c!=ais.ais||bindings.source_ai->alternate_ais_20!=ais.ais)
   throw std::runtime_error("Native Player completed InitProcess owners differ");
  cleanups=std::make_unique<dh2::player_skill_cleanup_session_v1::Runtime>(&session_slot,*preparation,bindings.character);
  target_services={this,std::int32_t(bindings.ai_tables->rows.size()),target_service};
  dh2::player_ai_death_v1::Bindings death_bindings{};
  death_bindings.ai=bindings.source_ai;death_bindings.coordinator=bindings.coordinator;
  death_bindings.target_owner=bindings.target_owner;death_bindings.target_services=&target_services;
  death_bindings.dead_fields=bindings.dead_fields;death_bindings.group_identity=bindings.group_identity;
  death_bindings.player_ais_identity=ais.ais;death_bindings.backend={this,death_service};
  death=std::make_unique<dh2::player_ai_death_v1::Runtime>(death_bindings);
  dh2::character_dead_focus_services_v1::Bindings focus{};
  focus.character=bindings.character;focus.properties=&property_view;focus.buffs=buffs.get();
  focus.byte415=&bindings.source_ai->targetable_4d;
  focus.self_fx=bindings.self_fx;focus.state_fx=bindings.state_fx;focus.highlight=bindings.highlight_fx;
  focus.debug_globals=&bindings.debug->globals();focus.debug_services=&bindings.debug->services();
  focus.skills=&bindings.tables->skills();focus.preparation=preparation.get();focus.skill_calls=uses.get();
  focus.services={bindings.character_queries_context,bindings.is_player,nullptr};
  focus_services=std::make_unique<dh2::character_dead_focus_services_v1::Adapter>(focus);
  initialized=true;updated=initialized_result.update;++update_attempts;
  __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native Player skill preparation | skills %zu | faeries %zu | loaded paths %zu | declarations %u | flags %x | one VM; Player lifecycle and skill-use providers pending",
   preparation->slots(dh2::character_ai_set_skills_and_spells::List::skill).size(),preparation->slots(dh2::character_ai_set_skills_and_spells::List::faery).size(),session->loaded_path_count(),session->statistics().declarations,ais.flags_b8);
  __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native Player AIS initialized | AI %p | AIS %p | active %p | pending %p | phase %zu | VM %p | init mask %x | HP %d / %d | MP %d / %d | timer33 %u | timer34 %u | one source InitProcess; Character profile/grants/frame/activation pending",
   reinterpret_cast<void*>(bindings.ai),reinterpret_cast<void*>(ais.ais),reinterpret_cast<void*>(bindings.source_ai->active_ais_1c),
   reinterpret_cast<void*>(bindings.source_ai->alternate_ais_20),std::size_t(bindings.source_ai->pointer_28),static_cast<void*>(session->vm()),initialized_result.init_phase_mask,
   bindings.properties->resolved[36],bindings.properties->resolved[38],bindings.properties->resolved[41],bindings.properties->resolved[43],bindings.source_ai->word_10,bindings.source_ai->word_14);
  log_ai_timers("initial");
  log_initial_update();
  __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native Player saved skills ready | owner %p | rows %zu | slot0 level %d | source _InitSkills; starter grant/profile load pending",
   static_cast<void*>(bindings.savegame.get()),bindings.savegame->skills().size(),bindings.savegame->skill_level(0));
  __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native Player saved faeries ready | difficulty %d | selected %d | level %d | rows 5 5 5 | source constructor and _InitFaeries; same save owner",
   *bindings.current_difficulty,bindings.savegame->current_faery(*bindings.current_difficulty),bindings.savegame->faery_level(0,*bindings.current_difficulty));
 }
 void log_initial_update(){
  __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native Player skill update complete | attempt %u | callbacks %u | skill slots %u | faery slots %u | buffs %u | groups %u | one VM/save/property store; source InitProcess complete, activation pending",update_attempts,updated.callbacks,updated.source.skill_slots,updated.source.faery_slots,buffs->count(),property_view.group_count);
  log_buffs("initial");
 }
 void update(){
  if(!initialized||update_blocked||!updates)return;
  refresh_properties();++update_attempts;
  if(updates->update(updated,error)){
   update_blocked=true;
   __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native Player skill update blocked | attempt %u | callbacks %u | VM status %d | %s | source effects retained; remaining providers pending",update_attempts,updated.callbacks,updated.last_lua_status,error.c_str());
  }
 }
 void timer(std::uint32_t id){
  dh2_script_value argument{};std::int32_t signed_id;std::memcpy(&signed_id,&id,4);
  number(argument,static_cast<float>(signed_id));
  const auto discard=[](void*,const dh2_script_first_return_v1*,char*,std::size_t){return 0;};
  const int status=session->call("OnTimer",&argument,1,0,discard,nullptr,error);
  if(status)throw std::runtime_error("Player skill timer callback failed: "+error);
  ++timer_callbacks;
  dh2::character_player_skills_preparation_v3::Owner::TimerFieldSlot found{};
  if(timer_fields->slot(bindings.character,dh2::character_ai_set_skills_and_spells::List::skill,0,found)&&found.field18)
   __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native Player skill timer callback | timer %u | callbacks %u | slot0 field18 %d | same Prince timer store and original Lua callbacks",id,timer_callbacks,*found.field18);
 }
};

std::string Runtime::cooldown_probe(std::uint32_t delay){
 if(!impl_->initialized)return "Player skill initialization incomplete";
 if(!delay||delay>60000)return "Player skill cooldown probe rejected";
 auto& s=*impl_;
 const auto& slots=s.preparation->slots(dh2::character_ai_set_skills_and_spells::List::skill);
 if(slots.empty()||!slots[0])return "Player skill slot0 unavailable";
 const auto* instance=s.preparation->instance(slots[0]);
 dh2::character_player_skills_preparation_v3::Owner::TimerFieldSlot field{};
 if(!instance||!s.timer_fields->slot(s.bindings.character,dh2::character_ai_set_skills_and_spells::List::skill,0,field)||!field.field18||*field.field18!=-1)return "Player skill cooldown already active";
 dh2_script_value arguments[2]{};arguments[0].type=DH2_SCRIPT_STRING;arguments[0].text=instance->script_name;arguments[0].text_bytes=std::strlen(instance->script_name);
 arguments[1].type=DH2_SCRIPT_NUMBER;arguments[1].number=static_cast<float>(instance->skill_index_14);
 const auto discard=[](void*,const dh2_script_first_return_v1*,char*,std::size_t){return 0;};
 if(s.session->call("SetSkill",arguments,2,0,discard,nullptr,s.error))return "Player skill selection failed: "+s.error;
 arguments[0]={};arguments[0].type=DH2_SCRIPT_NUMBER;arguments[0].number=static_cast<float>(delay);
 if(s.session->call("SetSkillCooldown",arguments,1,0,discard,nullptr,s.error))return "Player skill cooldown failed: "+s.error;
 const auto id=*field.field18;const auto& timers=s.bindings.coordinator->timers();
 if(id<0||std::uint32_t(id)>=timers.count||!timers.slots[id].active||timers.slots[id].event!=0x35)return "Player skill cooldown timer publication failed";
 dh2_script_first_return_v1 lua_cooldown{};
 const auto observe=[](void* raw,const dh2_script_first_return_v1* value,char*,std::size_t){*static_cast<dh2_script_first_return_v1*>(raw)=*value;return 0;};
 if(s.session->call("HasSkillCooldown",nullptr,0,0,observe,&lua_cooldown,s.error)||lua_cooldown.type!=DH2_SCRIPT_NUMBER||lua_cooldown.number!=static_cast<float>(id))return "Player skill Lua/native cooldown ID differs";
 __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native Player skill cooldown probe | script %s | slot0 field18 %d | timer %u | duration %u | same Prince timer store; shell fixture, not skill use",instance->script_name,id,timers.slots[id].id,timers.slots[id].duration_ms);
 return "Original skill cooldown callback armed";
}

std::string Runtime::check_probe(std::uint32_t slot){
 if(!impl_->initialized)return "Player skill initialization incomplete";
 auto& s=*impl_;
 using List=dh2::player_skill_use_session_v1::List;
 using Check=dh2::player_skill_use_session_v1::Check;
 const auto& slots=s.preparation->slots(List::skill);
 if(slot>=slots.size()||!slots[slot])return "Player skill check slot unavailable";
 const auto* instance=s.preparation->instance(slots[slot]);
 if(!instance)return "Player skill check instance unavailable";
 dh2::player_skill_use_session_v1::Result usable{},active{};
 // These are two distinct original callers. Each invokes OnSkillCheck once
 // and converts its own return index from that call's complete result vector.
 if(s.uses->check(List::skill,slot,Check::usable,usable,s.error)||
    s.uses->check(List::skill,slot,Check::active,active,s.error)){
  __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native Player skill check blocked | slot %u | %s",slot,s.error.c_str());
  return "Original skill check blocked: "+s.error;
 }
 const auto mana=s.bindings.properties->resolved[41];
 __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native Player skill check probe | script %s | slot %u | saved level %d | usable %u | active %u | usable returns %u | active returns %u | MP %d | SnS_Level %d | temp ManaCost %d | same Prince VM/properties/save; inner caller shell fixture, full activation pending",
  instance->script_name,slot,s.bindings.savegame->skill_level(slot),usable.value,active.value,usable.return_count,active.return_count,mana,
  s.bindings.properties->resolved[172],(*s.bindings.shared_property_temp)[173]);
 return "Original skill check completed";
}

std::string Runtime::mana_probe(std::uint32_t amount){
 if(!impl_->initialized)return "Player skill initialization incomplete";
 auto& s=*impl_;
 // This debug command traverses the same retained Player VM and original
 // native callback wrappers. It spends real MP; it is not a skill activation.
 if(amount>0x7fffffffu)return "Mana probe amount outside source domain";
 dh2_script_value argument{};Impl::number(argument,static_cast<float>(amount));
 dh2_script_first_return_v1 has{},used{};
 const auto capture=[](void* p,const dh2_script_first_return_v1* value,char*,std::size_t){*static_cast<dh2_script_first_return_v1*>(p)=*value;return 0;};
 const auto before=s.bindings.properties->resolved[41];
 if(s.session->call("HasMana",&argument,1,0,capture,&has,s.error)||
    s.session->call("UseMana",&argument,1,0,capture,&used,s.error)||
    has.type!=DH2_SCRIPT_BOOLEAN||used.type!=DH2_SCRIPT_BOOLEAN)return "Original mana callback blocked: "+s.error;
 __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native Player mana probe | amount %u | has %u | used %u | MP before %d | MP after %d | exempt14f0 %u | options %zu | same Prince VM/properties; debug debit, not skill activation",
  amount,has.boolean,used.boolean,before,s.bindings.properties->resolved[41],unsigned(*s.bindings.mana_exempt_14f0),s.bindings.saved_options->size());
 return "Original mana callbacks completed";
}

std::string Runtime::scalar_probe(std::int32_t value,bool write){
 if(!impl_->initialized)return "Player skill initialization incomplete";
 auto& s=*impl_;
 // A debug fixture calls the original globals through this same Player VM.
 // It gives reload tests an observable nonzero entry without altering authored
 // faery cooldown values or loading a second script/VM.
 constexpr const char* key="Native_Dictionary_Probe";
 dh2_script_value arguments[2]{};
 arguments[0].type=DH2_SCRIPT_STRING;arguments[0].text=key;arguments[0].text_bytes=std::strlen(key);
 Impl::number(arguments[1],static_cast<float>(value));
 const auto before=s.script_integers.size();
 const auto discard=[](void*,const dh2_script_first_return_v1*,char*,std::size_t){return 0;};
 if(write&&s.session->call("SetInt",arguments,2,0,discard,nullptr,s.error))return "Original scalar write blocked: "+s.error;
 dh2_script_first_return_v1 observed{};
 const auto capture=[](void* p,const dh2_script_first_return_v1* result,char*,std::size_t){*static_cast<dh2_script_first_return_v1*>(p)=*result;return 0;};
 if(s.session->call("GetInt",arguments,1,0,capture,&observed,s.error)||observed.type!=DH2_SCRIPT_NUMBER)return "Original scalar read blocked: "+s.error;
 __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native Player scalar probe | write %u | input %d | observed %.0f | entries before %zu | entries after %zu | AIS %p | VM %p | same LuaScript dictionary; debug fixture",
  unsigned(write),value,double(observed.number),before,s.script_integers.size(),reinterpret_cast<void*>(s.ais.ais),static_cast<void*>(s.session->vm()));
 return "Original scalar callbacks completed";
}

Runtime::Runtime(std::unique_ptr<Impl> p):impl_(std::move(p)){}
Runtime::~Runtime()=default;
std::unique_ptr<Runtime> Runtime::create(Bindings b,std::string& error){
 if(!b.character||!b.ai||!b.ai_lifetime||!b.source_ai||b.source_ai->identity!=b.ai||b.source_ai->owner_04!=b.character||
    !b.target_owner||!b.dead_fields||!b.group_identity||!b.ai_tables||!b.animation_tables||!b.self_fx||!b.state_fx||!b.highlight_fx||!b.is_player||!b.declaration||b.declaration->script!="__player__"||!b.dead||!b.object||b.object->identity!=b.character||!b.controller||
    !b.tables||!b.catalogue_lifetime||!b.rules||!b.properties||!b.shared_property_temp||!b.savegame||b.savegame->character()!=b.character||!b.savegame->skills_initialized()||!b.application_singleton||!*b.application_singleton||!b.saved_options||!b.online||!b.online_identity||!b.mana_exempt_14f0||!b.current_difficulty||!b.classes||!b.fields||!b.design||!b.ai_constants||!b.faery_constants||!b.coordinator||!b.debug||!b.assets||!b.read||b.coordinator->owner()!=b.character){error="invalid native Player skill owner";return {};}
 std::unique_ptr<Runtime> owner;
 try{owner=std::unique_ptr<Runtime>(new Runtime(std::make_unique<Impl>(std::move(b))));}
 catch(const std::exception& e){error=e.what();return {};}
 auto& p=owner->impl_;
 // Allocate the outer owner before source publication. A later allocation
 // failure must not retire an AIS already borrowed by source_ai.
 try{p->initialize();}
 catch(const std::exception& e){
  p->update_blocked=true;
  // Source publication can precede a required InitProcess failure. Retain the
  // AIS/Session/instances/timers and reached effects until explicit teardown.
  __android_log_print(ANDROID_LOG_ERROR,"DH2Native","Native Player AIS failure retained | phase %zu | active %p | pending %p | VM %p | %s | no automatic initialization retry",
   std::size_t(p->bindings.source_ai->pointer_28),reinterpret_cast<void*>(p->bindings.source_ai->active_ais_1c),
   reinterpret_cast<void*>(p->bindings.source_ai->alternate_ais_20),p->session?static_cast<void*>(p->session->vm()):nullptr,e.what());
  // Diagnostics may allocate too. They cannot retire a published owner when
  // the source failure itself came from exhausted allocation.
  try{p->error=e.what();}catch(...){ }
 }
 try{error=p->error;}catch(...){error.clear();}
 return owner;
}
bool Runtime::initialized()const noexcept{return impl_->initialized;}
void Runtime::update(){impl_->update();}
void Runtime::state_service(std::uint32_t service){
 auto& s=*impl_;if(!s.focus_services)throw std::runtime_error("Native Character cleanup owner unavailable");
 s.refresh_properties();dh2::character_dead_focus_services_v1::Result result{};
 if(s.focus_services->deliver(dh2::character::Service(service),&result,s.error)!=dh2::character_dead_focus_services_v1::Status::complete)
  throw std::runtime_error("Native Character cleanup failed: "+s.error);
 __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native Character cleanup service | service %u | calls %u | sneak %d | byte415 %u | buffs %u | groups %u | same source Character/buff/property owners",service,result.calls,result.sneak,unsigned(s.bindings.source_ai->targetable_4d),s.buffs->count(),s.property_view.group_count);
}
void Runtime::died(std::uintptr_t killer){
 auto& s=*impl_;if(!s.initialized||!s.death)throw std::runtime_error("Player source death owners unavailable");
 s.refresh_properties();s.bindings.target_owner->character_ai_id=s.bindings.properties->resolved[1];
 s.target_services.ai_property_count=std::int32_t(s.bindings.ai_tables->rows.size());
 if(s.death->died(killer,&s.died_result,s.error)!=dh2::player_ai_death_v1::Status::complete)
  throw std::runtime_error("Native Player source death failed: "+s.error);
 __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native Player source death complete | state %d | payload null | target %zu | last target %zu | timer stops %u | timer33 %u | timer34 %u | outgoing %u | incoming %u | skill %u | faery %u | buffs %u | groups %u | VM %p | AIS %p | update attempts %u | HP %d | same retained owners; Character Kill continuation pending",
  s.bindings.coordinator->state.current,std::size_t(s.bindings.source_ai->target_40),std::size_t(s.bindings.source_ai->last_target_44),s.died_result.timer_stops,s.bindings.source_ai->word_10,s.bindings.source_ai->word_14,s.died_result.outgoing_completed,s.died_result.incoming_completed,s.died_result.skill_completed,s.died_result.spell_completed,s.buffs->count(),s.property_view.group_count,static_cast<void*>(s.session->vm()),reinterpret_cast<void*>(s.ais.ais),s.update_attempts,s.bindings.properties->resolved[36]);
 s.log_ai_timers("dead");
}
void Runtime::timer(std::uint32_t id){impl_->timer(id);}
void Runtime::buff_expired(const character::Timer32& timer){
 auto& s=*impl_;s.refresh_properties();dh2::character_player_buffs_v1::Result result{};
 if(s.buffs->expired(&timer,&result)!=dh2::character_player_buffs_v1::Status::complete)
  throw std::runtime_error("Native Player buff expiry provider failed");
}
bool Runtime::ai_timer(std::int32_t event,const character::Timer32& timer){
 auto& s=*impl_;if(!s.ai_ticks||(event!=0x33&&event!=0x34))return false;
 const auto hp_before=s.bindings.properties->resolved[36],mp_before=s.bindings.properties->resolved[41];
 s.refresh_properties();dh2::player_ai_timer_events_v1::Result result{};
 const auto status=s.ai_ticks->deliver(event,&timer,&result,s.error);
 if(status!=dh2::player_ai_timer_events_v1::Status::complete){
  __android_log_print(ANDROID_LOG_ERROR,"DH2Native","Native Player AI timer failed | event %x | slot %u | %s | source effects retained",event,timer.id,s.error.c_str());return false;
 }
 auto& count=event==0x33?s.regen_ticks:s.dot_ticks;++count;
 if(event==0x33||count<=3||count%64==0)
  __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native Player AI timer delivered | event %x | slot %u | count %u | combat %u | remote %u | HP rate %u | MP rate %u | HP %d / %d | MP %d / %d | DoT attacks %u | HP before %d | MP before %d | no extra FSM event",
   event,timer.id,count,result.in_combat,result.remote_word,result.regen.hp_amount,result.regen.mp_amount,
   s.bindings.properties->resolved[36],s.bindings.properties->resolved[38],s.bindings.properties->resolved[41],s.bindings.properties->resolved[43],result.dots.attacks,hp_before,mp_before);
 return true;
}
void Runtime::restore(AAssetManager* assets,const void* ai,const void* catalogue){
 auto& s=*impl_;
 if(s.bindings.ai_lifetime.get()!=ai||s.bindings.catalogue_lifetime.get()!=catalogue)throw std::runtime_error("Retained Player skill owner differs");
 s.assets=assets;
 s.refresh_class_rows();
 s.refresh_properties();if(s.buffs)s.log_buffs("restore");
 if(s.initialized)s.log_ai_timers("restore");
 __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native Player skills retained | VM %p | paths %zu | update attempts %u | timer callbacks %u | no preparation/OnInit replay",s.session?static_cast<void*>(s.session->vm()):nullptr,s.session?s.session->loaded_path_count():0,s.update_attempts,s.timer_callbacks);
 __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native Player AIS retained | initialized %u | AI %p | AIS %p | active %p | pending %p | phase %zu | timer33 %u | timer34 %u | same owner/failure latch; no load/InitProcess replay",
  unsigned(s.initialized),reinterpret_cast<void*>(s.bindings.ai),reinterpret_cast<void*>(s.ais.ais),reinterpret_cast<void*>(s.bindings.source_ai->active_ais_1c),
  reinterpret_cast<void*>(s.bindings.source_ai->alternate_ais_20),std::size_t(s.bindings.source_ai->pointer_28),s.bindings.source_ai->word_10,s.bindings.source_ai->word_14);
}
}
