#include "native_player_skills.hpp"
#include "player_skill_session_v1.hpp"
#include "player_skill_update_session_v1.hpp"
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
 std::unique_ptr<dh2::character_player_skills_preparation_v3::Owner> preparation;
 std::optional<dh2::character_player_skills_preparation_v3::Owner::TimerFieldLease> timer_fields;
 std::unique_ptr<dh2::player_skill_session_v1::Session> session;
 std::unique_ptr<dh2::player_skill_update_session_v1::Runtime> updates;
 dh2::character_skill_cooldown_services::Services cooldown{};
 dh2_script_game_bindings timer_bindings{};
 std::map<std::string,std::vector<std::uint8_t>> named_bytes;
 std::map<std::string,dh2_pynames_view> named_views;
 dh2::character_ai_set_skills_and_spells::Result prepared{};
 dh2::player_skill_update_session_v1::Result updated{};
 unsigned update_attempts=0,timers_started=0,timer_callbacks=0;
 bool update_blocked=false;
 std::string error;
 explicit Impl(Bindings b):bindings(std::move(b)),assets(bindings.assets){}
 ~Impl(){updates.reset();session.reset();timer_fields.reset();preparation.reset();}
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
  s.property_view=dh2::data::property_view(*s.bindings.rules,*s.bindings.properties);
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
 static int native(void* raw,const dh2::player_skill_session_v1::NativeRequest& q,const dh2_script_value* a,std::uint32_t count,
          dh2_script_value* out,std::uint32_t capacity,std::uint32_t* returned,char* text,std::size_t bytes){
  auto& s=self(raw);if(!returned||!s.bindings.character||q.character!=s.bindings.character||(!a&&count))return fail(text,bytes,q.name);
  *returned=0;
  if(q.domain==dh2::player_skill_session_v1::Domain::ais){
   using Fn=dh2::ais_native_bindings::Function;
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
     }else{
      const auto it=s.named_views.find(a[0].text);
      if(it==s.named_views.end()||a[1].text_bytes>UINT32_MAX||dh2_pynames_get(&it->second,a[1].text,std::uint32_t(a[1].text_bytes),&value))return fail(text,bytes,q.name);
     }
    }else{
     dh2_pycst_result result{};
     if(dh2_pycst_get(s.bindings.design,a[0].text,a[0].text_bytes,a[1].text,a[1].text_bytes,&result))return fail(text,bytes,q.name);
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
   if(q.character_function==Fn::character_get_prop){
    std::int32_t id=0,value=0;
    if(!count||!integer(a[0],id)||!out||!capacity||(count>1&&a[1].type==DH2_SCRIPT_BOOLEAN&&a[1].boolean))return fail(text,bytes,q.name);
    s.property_view=dh2::data::property_view(*s.bindings.rules,*s.bindings.properties);
    if(dh2_property_resolve(&s.property_view,id,&value))return fail(text,bytes,q.name);
    number(out[0],static_cast<float>(value));*returned=1;return 0;
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
  cooldown={this,bindings.character,list_count,slot,unsupported_number};
  timer_bindings={this,bindings.character,start_timer,stop_timer,0};
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
  property_view=dh2::data::property_view(*bindings.rules,*bindings.properties);
  const dh2::character_player_skills_preparation_v3::Inputs inputs{bindings.character,ais.ais,&property_view,0};
  preparation=dh2::character_player_skills_preparation_v3::Owner::create(bindings.tables,inputs,session->preparation_services(),error);
  if(!preparation||preparation->prepare(&prepared)!=dh2::character_ai_set_skills_and_spells::Status::complete)
   throw std::runtime_error("Player original skill preparation: "+session->last_error());
  timer_fields=preparation->lease_timer_fields(bindings.character);
  if(!timer_fields)throw std::runtime_error("Player skill field18 lease unavailable");
  updates=std::make_unique<dh2::player_skill_update_session_v1::Runtime>(*session,*preparation,bindings.ai,bindings.character,bindings.coordinator->state.current);
  __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native Player skill preparation | skills %zu | faeries %zu | loaded paths %zu | declarations %u | flags %x | one VM; Player lifecycle and skill-use providers pending",
   preparation->slots(dh2::character_ai_set_skills_and_spells::List::skill).size(),preparation->slots(dh2::character_ai_set_skills_and_spells::List::faery).size(),session->loaded_path_count(),session->statistics().declarations,ais.flags_b8);
 }
 void update(){
  if(update_blocked||!updates)return;
  property_view=dh2::data::property_view(*bindings.rules,*bindings.properties);++update_attempts;
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

Runtime::Runtime(std::unique_ptr<Impl> p):impl_(std::move(p)){}
Runtime::~Runtime()=default;
std::unique_ptr<Runtime> Runtime::create(Bindings b,std::string& error){
 if(!b.character||!b.ai||!b.ai_lifetime||!b.tables||!b.catalogue_lifetime||!b.rules||!b.properties||!b.classes||!b.fields||!b.design||!b.faery_constants||!b.coordinator||!b.debug||!b.assets||!b.read||b.coordinator->owner()!=b.character){error="invalid native Player skill owner";return {};}
 try{auto p=std::make_unique<Impl>(std::move(b));p->prepare();return std::unique_ptr<Runtime>(new Runtime(std::move(p)));}
 catch(const std::exception& e){error=e.what();return {};}
}
void Runtime::update(){impl_->update();}
void Runtime::timer(std::uint32_t id){impl_->timer(id);}
void Runtime::restore(AAssetManager* assets,const void* ai,const void* catalogue){
 auto& s=*impl_;
 if(s.bindings.ai_lifetime.get()!=ai||s.bindings.catalogue_lifetime.get()!=catalogue)throw std::runtime_error("Retained Player skill owner differs");
 s.assets=assets;
 __android_log_print(ANDROID_LOG_INFO,"DH2Native","Native Player skills retained | VM %p | paths %zu | update attempts %u | timer callbacks %u | no preparation/OnInit replay",static_cast<void*>(s.session->vm()),s.session->loaded_path_count(),s.update_attempts,s.timer_callbacks);
}
}
