#include "native_player_skills.hpp"
#include "player_skill_session_v1.hpp"
#include "player_skill_update_session_v1.hpp"
#include "player_skill_use_session_v1.hpp"
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
// Nonempty original Player skill preparation is now attached to the native
// Prince. This bounded VM context does not impersonate a completed Player AIS
// constructor/OnInit/savegame lifecycle. Missing update/buff/combat providers
// stop the attempted update explicitly, while the existing gameplay continues.
struct Runtime::Impl {
 Bindings bindings;
 AAssetManager* assets=nullptr;
 dh2::ais_player_init_vcb::State ais{};
 dh2::data::PropertyView property_view{};
 std::vector<dh2::data::ClassRow> class_rows;
 std::unique_ptr<dh2::character_player_buffs_v1::Owner> buffs;
 dh2::character_player_buffs_v1::CallbackBindings buff_callbacks{};
 std::unique_ptr<dh2::character_player_skills_preparation_v3::Owner> preparation;
 std::optional<dh2::character_player_skills_preparation_v3::Owner::TimerFieldLease> timer_fields;
 std::unique_ptr<dh2::player_skill_session_v1::Session> session;
 std::unique_ptr<dh2::player_skill_update_session_v1::Runtime> updates;
 std::unique_ptr<dh2::player_skill_use_session_v1::Runtime> uses;
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
 dh2::character_ai_set_skills_and_spells::Result prepared{};
 dh2::player_skill_update_session_v1::Result updated{};
 unsigned update_attempts=0,timers_started=0,timer_callbacks=0;
 bool update_blocked=false;
 std::string error;
 explicit Impl(Bindings b):bindings(std::move(b)),assets(bindings.assets){}
 ~Impl(){
  // Prevent callbacks to retiring instances. The retained Coordinator remains
  // the sole timer owner; unrelated Character timers are not removed here.
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
  uses.reset();updates.reset();session.reset();
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
 static auto& self(void* raw){return *static_cast<Impl*>(raw);}
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
 void prepare(){
  if(!bindings.character||!bindings.tables||!bindings.debug)throw std::runtime_error("Native Player skill owners missing");
  for(const auto& pair:std::vector<std::pair<std::string,std::string>>{{"AnimatedEffectTable","effects"},{"ProjectileTable","projectiles"}}){
   auto bytes=bindings.read(assets,"data/"+pair.second+"_pyarraynames.bin");
   const auto word=[&](std::size_t at){if(at>bytes.size()||bytes.size()-at<4)throw std::runtime_error("Player names truncated");std::uint32_t n;std::memcpy(&n,bytes.data()+at,4);return n;};
   std::size_t end=4;const auto count=word(0);
   if(count>65536)throw std::runtime_error("Player names count exceeds bound");
   for(std::uint32_t i=0;i<count;++i){const auto n=word(end);end+=4;if(n>bytes.size()-end)throw std::runtime_error("Player names length rejected");end+=n;}
   bytes.resize(end);auto& retained=named_bytes[pair.first];retained=std::move(bytes);
   if(dh2_pynames_open(&named_views[pair.first],retained.data(),std::uint32_t(retained.size())))throw std::runtime_error("Player dictionary names rejected");
  }
  ais={reinterpret_cast<std::uintptr_t>(this),0};
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
  dh2::player_skill_session_v1::Configuration config{};
  config.character=bindings.character;config.ais=&ais;config.tables=bindings.tables;
  config.debug=&bindings.debug->globals();config.debug_services=bindings.debug->services();
  config.providers.context=this;config.providers.resolve=resolve;config.providers.native=native;
  config.providers.faery={this,faery_constant,faery_assert};
  dh2::player_skill_session_v1::Vm vm(dh2_script_vm_create_deferred(16*1024*1024));
  session=dh2::player_skill_session_v1::Session::adopt(std::move(vm),std::move(config),error);
  if(!session||session->bind_ais_functions(error)||session->bind_character_functions(error))throw std::runtime_error("Player skill source bindings: "+error);
  dh2::player_skill_session_v1::LoadResult common{};
  if(session->load_resolved("data/scripts/ai/_commons.luac",&common,error)||!common.source_success)throw std::runtime_error("Player skill AI commons: "+error);
  refresh_properties();
  const dh2::character_player_skills_preparation_v3::Inputs inputs{bindings.character,ais.ais,&property_view,0};
  preparation=dh2::character_player_skills_preparation_v3::Owner::create(bindings.tables,inputs,session->preparation_services(),error);
  if(!preparation||preparation->prepare(&prepared)!=dh2::character_ai_set_skills_and_spells::Status::complete)
   throw std::runtime_error("Player original skill preparation: "+session->last_error());
  timer_fields=preparation->lease_timer_fields(bindings.character);
  if(!timer_fields)throw std::runtime_error("Player skill field18 lease unavailable");
  updates=std::make_unique<dh2::player_skill_update_session_v1::Runtime>(*session,*preparation,bindings.ai,bindings.character,bindings.coordinator->state.current);
  uses=std::make_unique<dh2::player_skill_use_session_v1::Runtime>(*session,*preparation,bindings.character);
  __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native Player skill preparation | skills %zu | faeries %zu | loaded paths %zu | declarations %u | flags %x | one VM; Player lifecycle and skill-use providers pending",
   preparation->slots(dh2::character_ai_set_skills_and_spells::List::skill).size(),preparation->slots(dh2::character_ai_set_skills_and_spells::List::faery).size(),session->loaded_path_count(),session->statistics().declarations,ais.flags_b8);
  __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native Player saved skills ready | owner %p | rows %zu | slot0 level %d | source _InitSkills; starter grant/profile load pending",
   static_cast<void*>(bindings.savegame.get()),bindings.savegame->skills().size(),bindings.savegame->skill_level(0));
  __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native Player saved faeries ready | difficulty %d | selected %d | level %d | rows 5 5 5 | source constructor and _InitFaeries; same save owner",
   *bindings.current_difficulty,bindings.savegame->current_faery(*bindings.current_difficulty),bindings.savegame->faery_level(0,*bindings.current_difficulty));
 }
 void update(){
  if(update_blocked||!updates)return;
  refresh_properties();++update_attempts;
  if(updates->update(updated,error)){
   update_blocked=true;
   __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native Player skill update blocked | attempt %u | callbacks %u | VM status %d | %s | source effects retained; remaining providers pending",update_attempts,updated.callbacks,updated.last_lua_status,error.c_str());
  }else if(update_attempts==1){
   __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native Player skill update complete | attempt %u | callbacks %u | skill slots %u | faery slots %u | buffs %u | groups %u | one VM/save/property store; full Player AIS and activation pending",update_attempts,updated.callbacks,updated.source.skill_slots,updated.source.faery_slots,buffs->count(),property_view.group_count);
   log_buffs("initial");
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
 if(!b.character||!b.ai||!b.ai_lifetime||!b.tables||!b.catalogue_lifetime||!b.rules||!b.properties||!b.shared_property_temp||!b.savegame||b.savegame->character()!=b.character||!b.savegame->skills_initialized()||!b.application_singleton||!*b.application_singleton||!b.saved_options||!b.online||!b.online_identity||!b.mana_exempt_14f0||!b.current_difficulty||!b.classes||!b.fields||!b.design||!b.ai_constants||!b.faery_constants||!b.coordinator||!b.debug||!b.assets||!b.read||b.coordinator->owner()!=b.character){error="invalid native Player skill owner";return {};}
 try{auto p=std::make_unique<Impl>(std::move(b));p->prepare();return std::unique_ptr<Runtime>(new Runtime(std::move(p)));}
 catch(const std::exception& e){error=e.what();return {};}
}
void Runtime::update(){impl_->update();}
void Runtime::timer(std::uint32_t id){impl_->timer(id);}
void Runtime::buff_expired(const character::Timer32& timer){
 auto& s=*impl_;s.refresh_properties();dh2::character_player_buffs_v1::Result result{};
 if(s.buffs->expired(&timer,&result)!=dh2::character_player_buffs_v1::Status::complete)
  throw std::runtime_error("Native Player buff expiry provider failed");
}
void Runtime::restore(AAssetManager* assets,const void* ai,const void* catalogue){
 auto& s=*impl_;
 if(s.bindings.ai_lifetime.get()!=ai||s.bindings.catalogue_lifetime.get()!=catalogue)throw std::runtime_error("Retained Player skill owner differs");
 s.assets=assets;
 s.refresh_class_rows();
 s.log_buffs("restore");
 __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native Player skills retained | VM %p | paths %zu | update attempts %u | timer callbacks %u | no preparation/OnInit replay",static_cast<void*>(s.session->vm()),s.session->loaded_path_count(),s.update_attempts,s.timer_callbacks);
}
}
