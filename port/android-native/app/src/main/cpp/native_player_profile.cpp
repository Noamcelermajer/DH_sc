#include "native_player_profile.hpp"
#include "player_profile_filename_v1.hpp"
#include "player_profile_create_v1.hpp"
#include "data.hpp"
#include "level_tables.hpp"
#include "world_map_tables.hpp"
#include "player_saved_level_states_v1.hpp"
#include "player_saved_fast_travel_v1.hpp"
#include "player_saved_inventory_v1.hpp"
#include "native_quest_owner.hpp"
#include "native_quest_cursor.hpp"
#include "properties.hpp"
#include <cstdlib>
#include <cstring>
#include <fstream>
#include <map>
#include <cstdio>
#ifdef _WIN32
#include <io.h>
#ifndef WIN32_LEAN_AND_MEAN
#define WIN32_LEAN_AND_MEAN
#endif
#ifndef NOMINMAX
#define NOMINMAX
#endif
#include <windows.h>
#else
#include <unistd.h>
#endif

namespace dh2::native::player_profile {
namespace {
bool metadata_tag(const char* tag){
 if(!tag)return false;
 for(const char* name:{"PNAM","PLVL","PCLS","PDFL","LNAM","LEPT","LUSP"})
  if(!std::strcmp(tag,name))return true;
 return false;
}
bool read_profile_file(const std::filesystem::path& path,
                       std::vector<std::uint8_t>& bytes,std::string& error){
 std::ifstream file(path,std::ios::binary|std::ios::ate);
 if(!file){error="existing campaign primary unavailable";return false;}
 const auto size=file.tellg();
 if(size<4||size>32*1024*1024){error="existing campaign size outside native span";return false;}
 bytes.resize(static_cast<std::size_t>(size));file.seekg(0);
 if(!file.read(reinterpret_cast<char*>(bytes.data()),std::streamsize(bytes.size()))){error="existing campaign read failed";return false;}
 return true;
}
bool write_synced_file(const std::filesystem::path& path,
                       const std::vector<std::uint8_t>& bytes,std::string& error){
 auto* file=std::fopen(path.string().c_str(),"wb");
 if(!file){error="campaign output open failed";return false;}
 bool okay=std::fwrite(bytes.data(),1,bytes.size(),file)==bytes.size()&&std::fflush(file)==0;
#ifdef _WIN32
 if(okay)okay=::_commit(::_fileno(file))==0;
#else
 if(okay)okay=::fsync(::fileno(file))==0;
#endif
 if(std::fclose(file))okay=false;
 if(!okay)error="campaign output write/flush failed";
 return okay;
}
bool replace_file(const std::filesystem::path& from,
                  const std::filesystem::path& to,std::string& error){
#ifdef _WIN32
 if(::MoveFileExW(from.c_str(),to.c_str(),MOVEFILE_REPLACE_EXISTING|MOVEFILE_WRITE_THROUGH))return true;
 error="campaign output replace failed";return false;
#else
 std::error_code ec;std::filesystem::rename(from,to,ec);
 if(!ec)return true;
 error="campaign output replace failed: "+ec.message();return false;
#endif
}
}
struct Transport::Impl {
 struct Profile {
  data::PlayerProfileIndexV1 index;
  struct Callback {data::PlayerSavegameV1* save=nullptr;bool reader=false,writer=false;};
  std::map<std::string,Callback> callbacks;
 };
 data::PlayerSavegameV1& save;
 data::PlayerSaveProfileV1& profile;
 TransportBindings bindings;
 Receipt receipt;
 std::shared_ptr<Profile> input;
 bool active=false;
 Impl(data::PlayerSavegameV1& saved,data::PlayerSaveProfileV1& canonical):save(saved),profile(canonical){}
 void refresh(){
  receipt.slot=save.slot();receipt.character_class=save.class_id();receipt.level=save.level();
  receipt.source_level_id=save.level_name_fields().level_id;
  receipt.sections=profile.campaign?std::uint32_t(profile.campaign.source_sections().size()):0;
 }
 bool continue_load(const data::PlayerSaveLoadRequestV1& q,data::PlayerSaveLoadResponseV1& response,std::string& error){
  using Op=data::PlayerSaveLoadOpV1;
  if(q.operation==Op::init_quests&&bindings.quests)
   return bindings.quests->initialize(q.argument,error);
  if(q.operation==Op::online){
   if(!bindings.online){error="canonical PlayerManager online byte unavailable";return false;}
   response.flag=*bindings.online!=0;error.clear();return true;
  }
  if(q.operation==Op::hosting_quest_flag){
   if(!bindings.hosting_quest_flag){error="PlayerManager quest-host flag unavailable";return false;}
   response.flag=*bindings.hosting_quest_flag!=0;error.clear();return true;
  }
  if(q.operation==Op::init_skills){
   if(!bindings.skill_tables||!bindings.skill_tree_selector){error="live SkillTables/SkillTree providers unavailable";return false;}
   return save.initialize_skills(*bindings.skill_tables,*bindings.skill_tree_selector,error);
  }
  if(q.operation==Op::init_faeries){save.initialize_faeries();error.clear();return true;}
  if(q.operation==Op::load_section&&q.section&&!std::strcmp(q.section,"SKIL")&&bindings.skill_tables){
   std::size_t consumed=0;
   return save.load_skills(q.profile.campaign.payload(q.section),*bindings.skill_tables,consumed,error)==0;
  }
  if(q.operation==Op::load_section&&q.section&&!std::strcmp(q.section,"FAES")){
   std::size_t consumed=0;bool source_count_mismatch=false;
   const bool loaded=save.load_faeries(q.profile.campaign.payload(q.section),consumed,
                                       source_count_mismatch,error);
   // The source reader returns normally after its count-mismatch boundary;
   // retain that result without inventing a different row count or payload.
   (void)source_count_mismatch;
   return loaded;
  }
  if(q.operation==Op::load_section&&q.section&&!std::strcmp(q.section,"PROP")){
   if(!bindings.property_rules||!bindings.properties){error="live gameplay PropertyRules/PropertyState unavailable";return false;}
   auto view=data::property_view(*bindings.property_rules,*bindings.properties);
   std::size_t consumed=0;
   return save.load_properties(q.profile.campaign.payload(q.section),view,consumed,error);
  }
  if(q.operation==Op::load_section&&q.section&&!std::strcmp(q.section,"FTVL")){
   namespace travel=data::player_saved_fast_travel_v1;
   travel::Runtime reader(&save);travel::Result result;
   return reader.load(q.profile.campaign.payload(q.section),&result,error)==travel::Status::complete;
  }
  if(q.operation==Op::load_section&&q.section&&!std::strcmp(q.section,"GEAR")){
   if(!bindings.inventory||!bindings.item_powers||!bindings.inventory_services_owner||
      !bindings.inventory_services.context||!bindings.inventory_services.invoke||
      !bindings.inventory_services.observe_storage||!bindings.inventory_incoming||
      !bindings.property_rules||!bindings.properties||
      bindings.inventory->character()!=save.character()){
    error="GEAR requires the same Character V4 inventory, item-power, property, effect and incoming-item owners";return false;
   }
   auto property_view=data::property_view(*bindings.property_rules,*bindings.properties);
   player_saved_inventory_v1::Bindings input{
    &save,bindings.inventory,&property_view,&bindings.inventory_services,
    bindings.item_powers,bindings.inventory_incoming};
   player_saved_inventory_v1::Runtime reader(std::move(input));
   player_saved_inventory_v1::Result result{};
   const auto status=reader.load(q.profile.campaign.payload(q.section),&result,error);
   if(status!=player_saved_inventory_v1::Status::complete){
    if(*bindings.inventory_incoming){
     std::string retirement_error;
     if(!bindings.inventory->retire_item(
          data::RetainedItemSlotV4{bindings.inventory_incoming},
          bindings.inventory_services,retirement_error)){
      if(!error.empty())error+="; ";
      error+="GEAR partial Item remains owned because source retirement failed: "+retirement_error;
     }
    }
    if(error.empty())error="Source GEAR reader failed";
    return false;
   }
   if(*bindings.inventory_incoming){
    std::string retirement_error;
    if(!bindings.inventory->retire_item(
         data::RetainedItemSlotV4{bindings.inventory_incoming},
         bindings.inventory_services,retirement_error)){
     error="GEAR reader left an untransferred Item and source retirement failed: "+retirement_error;return false;
    }
    error="GEAR reader returned with an untransferred Item";return false;
   }
   error.clear();return true;
  }
  if(bindings.levels&&bindings.world_map){
   if(q.operation==Op::init_levels){
    data::SavedLevelStateServicesV1 tables{this,
     [](void* raw,data::SavedStateTableV1 kind,std::uint32_t* count,std::string& e){
      const auto& b=static_cast<Impl*>(raw)->bindings;
      const auto size=kind==data::SavedStateTableV1::levels?b.levels->levels.size():b.world_map->locations.size();
      if(size>65536){e="actual level-state table exceeds native bound";return false;}
      *count=std::uint32_t(size);return true;
     },
     [](void* raw,data::SavedStateTableV1 kind,std::uint32_t row,std::int32_t* word,std::string& e){
      const auto& b=static_cast<Impl*>(raw)->bindings;
      if(kind==data::SavedStateTableV1::levels){
       if(row<b.levels->levels.size()){*word=b.levels->levels[row].level_state;return true;}
      }else if(data::read_world_map_default_word(*b.world_map,row,*word))return true;
      e="actual level-state default row unavailable";return false;
     },
     {nullptr,[](void*,std::size_t size,int tag)->void*{return tag==0?std::malloc(size):nullptr;},
       [](void*,void* memory){std::free(memory);}}};
    return save.initialize_level_states(tables,error);
   }
   if(q.operation==Op::load_section&&q.section&&!std::strcmp(q.section,"LVLS")){
    namespace states=data::player_saved_level_states_v1;
    // Valid stores need no assertion global. Reached assertion branches reject
    // explicitly until the genuine global/logger binds; no mode is invented.
    states::TableBindings tables{bindings.levels,bindings.world_map};
    states::Runtime reader({&save,states::table_services(tables)});
    states::Result result;
    return reader.load(q.profile.campaign.payload(q.section),&result,error)==states::Status::complete;
   }
  }
  if(q.operation==Op::load_section&&q.section&&!std::strcmp(q.section,"QEST")&&bindings.quests){
   if(!q.profile.campaign){error="QEST campaign snapshot unavailable";return false;}
   quests::Cursor cursor(q.profile.campaign,"QEST");
   return bindings.quests->load_quests(cursor,error);
  }
  const auto services=bindings.continuation;
  if(!services.owner||!services.invoke){error="campaign reached an unbound gameplay/quest provider";return false;}
  return services.invoke(q,response,error);
 }
 bool invoke(const data::PlayerSaveLoadRequestV1& q,data::PlayerSaveLoadResponseV1& response,std::string& error){
  using Op=data::PlayerSaveLoadOpV1;
  if(q.save!=&save||active){error="campaign Save identity/reentry differs";return false;}
  active=true;struct Guard{Impl& state;~Guard(){state.refresh();state.active=false;}}guard{*this};
  if(q.operation==Op::filename){response.text=data::player_profile_filename_v1(q.argument,false,false);return true;}
  if(q.operation==Op::create_profile){
   if(bindings.directory.empty()||!q.filename||std::filesystem::path(q.filename).filename()!=q.filename){error="invalid campaign directory/filename";return false;}
   std::ifstream file(bindings.directory/q.filename,std::ios::binary|std::ios::ate);
   std::vector<std::uint8_t> bytes;
   if(bindings.create_new){
    if(file||std::filesystem::exists(bindings.directory/q.filename)||std::filesystem::exists((bindings.directory/q.filename).string()+".bak")){error="new campaign slot is already occupied";return false;}
    bytes.assign(4,0);
   }else{
    if(!file){error="campaign primary unavailable; backup/new-character providers required";return false;}
    ++receipt.file_opens;const auto size=file.tellg();
    if(size<4||size>32*1024*1024){error="campaign size outside native span";return false;}
    bytes.resize(static_cast<std::size_t>(size));file.seekg(0);
    if(!file.read(reinterpret_cast<char*>(bytes.data()),std::streamsize(bytes.size()))){error="campaign read failed";return false;}
   }
   auto next=std::make_shared<Profile>();
   if(!next->index.load({bytes.data(),bytes.size()},error))return false;
   input=std::move(next);response.profile={reinterpret_cast<std::uintptr_t>(input.get()),input,input->index.borrow()};
   return true;
  }
  if(q.operation==Op::load_section){
   if(!input||q.profile.identity!=reinterpret_cast<std::uintptr_t>(input.get())||q.profile.owner.get()!=input.get()||!q.section||!q.profile.campaign){error="campaign callback owner differs";return false;}
   // Both source registrations precede the read/no-read branch. Writes remain
   // rejecting thunks until source writer/persistence bodies are connected.
   input->callbacks[q.section]={q.save,q.reader_enabled,q.writer_enabled};
   const auto section=q.profile.campaign.section(q.section);
   if(!q.reader_enabled||!section||!section->size){error.clear();return true;}
   if(!metadata_tag(q.section))return continue_load(q,response,error);
   data::PlayerMetadataServicesV1 services{bindings.characters,this,[](void* raw,std::int32_t value,std::string& e){auto& s=*static_cast<Impl*>(raw);if(!s.bindings.current_difficulty){e="source CurrentDifficulty global unavailable";return false;}*s.bindings.current_difficulty=value;s.receipt.difficulty=value;return true;}};
   std::size_t consumed=0;
   if(!data::load_player_metadata_section_v1(q,services,consumed,error))return false;
   if(consumed)++receipt.field_reads;
   return true;
  }
  return continue_load(q,response,error);
 }
};
Transport::Transport(data::PlayerSavegameV1& save,data::PlayerSaveProfileV1& profile):impl_(std::make_shared<Impl>(save,profile)){
 const auto state=impl_;
 loader_=std::make_unique<data::PlayerSaveLoadOwnerV1>(save,profile,data::PlayerSaveLoadServicesV1{state,[state](const auto& q,auto& response,auto& error){return state->invoke(q,response,error);}});
}
Transport::~Transport()=default;
bool Transport::bind(TransportBindings bindings,std::string& error){
 if(impl_->active){error="cannot rebind campaign transport during delivery";return false;}
 if(bool(bindings.continuation.owner)!=bool(bindings.continuation.invoke)){error="campaign continuation lease and provider disagree";return false;}
 if(bool(bindings.property_rules)!=bool(bindings.properties)){error="gameplay PropertyRules and PropertyState must bind together";return false;}
 if(bool(bindings.levels)!=bool(bindings.world_map)){error="campaign level and WorldMap owners must bind together";return false;}
 if(bindings.quests&&!bindings.quests->owns_save(&impl_->save)){error="Quest factory owner belongs to a different gameplay Save";return false;}
 const bool any_gear_owner=bindings.inventory||bool(bindings.item_powers)||
  bindings.inventory_services.context||bindings.inventory_services.invoke||
  bindings.inventory_services.observe_storage||bindings.inventory_services_owner||
  bindings.inventory_incoming;
 if(any_gear_owner&&(!bindings.inventory||!bindings.item_powers||
     !bindings.inventory_services.context||!bindings.inventory_services.invoke||
     !bindings.inventory_services.observe_storage||!bindings.inventory_services_owner||
     !bindings.inventory_incoming||bindings.inventory->character()!=impl_->save.character())){
  error="GEAR provider bundle must bind the canonical Save Character, V4 inventory, power table, effect lease and incoming Item slot";return false;
 }
 impl_->bindings=std::move(bindings);error.clear();return true;
}
bool Transport::save_all(std::string& error){
 auto& s=*impl_;
 if(s.active||!s.bindings.create_new||!s.bindings.characters||!s.bindings.current_difficulty||!s.input||
    s.profile.identity!=reinterpret_cast<std::uintptr_t>(s.input.get())||s.profile.owner.get()!=s.input.get()||!s.profile.campaign){error="explicit new-profile writer binding required";return false;}
 s.active=true;struct Guard{Impl& state;~Guard(){state.refresh();state.active=false;}}guard{s};
 try{
  std::vector<std::string> writers;
  for(const auto& pair:s.input->callbacks){if(pair.second.save!=&s.save){error="registered writer Save differs";return false;}if(pair.second.writer)writers.push_back(pair.first);}
  if(writers.size()!=7){error="indexed ctor must register all seven metadata writers";return false;}
  std::vector<std::uint8_t> bytes;
  if(!data::serialize_player_metadata_profile_v1(s.profile.campaign,writers,s.save,*s.bindings.characters,s.bindings.current_difficulty,bytes,error))return false;
  // Source saveAll refreshes its cache before opening the output file.
  s.profile.campaign={};
  if(!s.input->index.load({bytes.data(),bytes.size()},error)){s.profile.campaign=s.input->index.borrow();return false;}
  s.profile.campaign=s.input->index.borrow();
  const auto target=s.bindings.directory/data::player_profile_filename_v1(std::uint32_t(s.save.slot()),false,false);
  if(std::filesystem::exists(target)||std::filesystem::exists(target.string()+".bak")){error="new campaign destination became occupied";return false;}
  const auto temporary=std::filesystem::path(target.string()+".creating");
  auto* file=std::fopen(temporary.string().c_str(),"wb");if(!file){error="new campaign temporary open failed";return false;}
  bool okay=std::fwrite(bytes.data(),1,bytes.size(),file)==bytes.size()&&std::fflush(file)==0;
#ifdef _WIN32
  if(okay)okay=::_commit(::_fileno(file))==0;
#else
  if(okay)okay=::fsync(::fileno(file))==0;
#endif
  if(std::fclose(file))okay=false;
  if(!okay){std::filesystem::remove(temporary);error="new campaign durable write failed";return false;}
  if(std::filesystem::exists(target)){std::filesystem::remove(temporary);error="new campaign destination became occupied";return false;}
  std::filesystem::rename(temporary,target);error.clear();return true;
 }catch(...){if(error.empty())error="new campaign persistence adapter threw";return false;}
}
bool Transport::save_existing_metadata(std::string& error){
 auto& s=*impl_;
 if(s.active||s.bindings.create_new||s.bindings.directory.empty()||!s.bindings.characters||
    !s.bindings.current_difficulty||!s.input||s.save.slot()<0||
    s.profile.identity!=reinterpret_cast<std::uintptr_t>(s.input.get())||
    s.profile.owner.get()!=s.input.get()||!s.profile.campaign){
  error="loaded existing metadata Save/index and persistence binding required";return false;
 }
 s.active=true;struct Guard{Impl& state;~Guard(){state.refresh();state.active=false;}}guard{s};
 try{
  std::vector<std::string> writers;
  for(const auto& pair:s.input->callbacks){
   if(pair.second.save!=&s.save){error="registered writer Save differs";return false;}
   if(pair.second.writer){if(!metadata_tag(pair.first.c_str())){error="mask-1 metadata writer set required";return false;}writers.push_back(pair.first);}
  }
  if(writers.size()!=7||s.input->callbacks.size()!=7){error="mask-1 indexed Save must register exactly seven metadata writers";return false;}
  const auto target=s.bindings.directory/data::player_profile_filename_v1(std::uint32_t(s.save.slot()),false,false);
  std::vector<std::uint8_t> previous;
  if(!read_profile_file(target,previous,error))return false;
  {
   const auto prior=s.input->index.borrow();
   if(!prior||previous!=prior.bytes()){error="campaign primary changed since its canonical index was loaded";return false;}
  }
  std::vector<std::uint8_t> next;
  if(!data::serialize_player_metadata_profile_v1(s.profile.campaign,writers,s.save,
       *s.bindings.characters,s.bindings.current_difficulty,next,error))return false;

  // Savegame::saveAll refreshes the same +8 index before it submits its
  // storage job. Preserve that ordering and identity when updating this
  // synchronous native adapter.
  s.profile.campaign={};
  if(!s.input->index.load({next.data(),next.size()},error)){
   s.profile.campaign=s.input->index.borrow();return false;
  }
  s.profile.campaign=s.input->index.borrow();

  const auto backup=std::filesystem::path(target.string()+".bak");
  const auto backup_temp=std::filesystem::path(backup.string()+".saving");
  const auto primary_temp=std::filesystem::path(target.string()+".saving");
  if(!write_synced_file(backup_temp,previous,error)){
   std::error_code ignored;std::filesystem::remove(backup_temp,ignored);return false;
  }
  if(!replace_file(backup_temp,backup,error)){
   std::error_code ignored;std::filesystem::remove(backup_temp,ignored);return false;
  }
  if(!write_synced_file(primary_temp,next,error)){
   std::error_code ignored;std::filesystem::remove(primary_temp,ignored);return false;
  }
  if(!replace_file(primary_temp,target,error)){
   std::error_code ignored;std::filesystem::remove(primary_temp,ignored);return false;
  }
  error.clear();return true;
 }catch(...){if(error.empty())error="existing campaign save adapter threw";return false;}
}
data::PlayerSaveLoadOwnerV1& Transport::loader()noexcept{return *loader_;}
const Receipt& Transport::receipt()const noexcept{impl_->refresh();return impl_->receipt;}

struct Metadata::Impl {
 data::PlayerSavegameV1 metadata;
 data::PlayerSaveProfileV1 profile;
 Transport transport{metadata,profile};
 Receipt receipt;
 std::filesystem::path directory;
 bool active=false;
};
Metadata::Metadata():impl_(new Impl){}
Metadata::~Metadata()=default;
bool Metadata::load(std::int32_t slot,const std::filesystem::path& directory,const data::CharacterTable& characters,std::int32_t& current_difficulty,std::string& error){
 auto& s=*impl_;
 if(s.active||slot<0||directory.empty()){error="invalid/reentrant metadata input";return false;}
 if(s.metadata.slot()!=-1&&(s.metadata.slot()!=slot||s.directory!=directory)){error="metadata owner belongs to another selected slot/directory";return false;}
 // Manage creates +680 through the indexed C1(slot,1,false), whose level
 // default is 1. A blank Save followed by SetSlot would incorrectly retain
 // level0 when a valid profile has no PLVL section. Repeat reads reuse C1.
 if(s.metadata.slot()==-1&&!s.metadata.initialize_new_profile_metadata(slot,error))return false;
 s.directory=directory;s.active=true;s.receipt.loaded=false;
 struct Guard{Impl& state;~Guard(){std::string unused;state.transport.bind({},unused);state.active=false;}}guard{s};
 if(!s.transport.bind({directory,&characters,&current_difficulty,{}},error))return false;
 if(!s.transport.loader().load(1,error)){s.receipt=s.transport.receipt();return false;}
 s.receipt=s.transport.receipt();
 if(!s.metadata.level_name_loaded()||!s.metadata.use_spawn_points_loaded()){error="campaign metadata omitted required initialized fields";return false;}
 s.receipt.loaded=true;
 return true;
}
bool Metadata::save_numeric_request(const data::CharacterTable& characters,
 std::int32_t& current_difficulty,std::string& error){
 auto& s=*impl_;
 if(s.active||!s.receipt.loaded||s.metadata.slot()<0||s.directory.empty()){
  error="loaded NativeStartGame temporary Save required";return false;
 }
 s.active=true;
 struct Guard{Impl& state;~Guard(){std::string ignored;state.transport.bind({},ignored);state.active=false;}}guard{s};
 if(!s.transport.bind({s.directory,&characters,&current_difficulty,{},false},error))return false;
 return s.transport.save_existing_metadata(error);
}
bool Metadata::clear_spawn_point_and_save(std::size_t difficulty,
 const data::CharacterTable& characters,std::int32_t& current_difficulty,std::string& error){
 auto& s=*impl_;
 if(s.active||!s.receipt.loaded||s.metadata.slot()<0||s.directory.empty()){
  error="loaded NativeStartGame temporary Save required";return false;
 }
 s.active=true;
 struct Guard{Impl& state;~Guard(){std::string ignored;state.transport.bind({},ignored);state.active=false;}}guard{s};
 if(!s.transport.bind({s.directory,&characters,&current_difficulty,{},false},error))return false;
 if(!s.metadata.clear_use_spawn_point(difficulty,error))return false;
 return s.transport.save_existing_metadata(error);
}
const Receipt& Metadata::receipt()const noexcept{return impl_->receipt;}
const data::PlayerSavegameV1& Metadata::save()const noexcept{return impl_->metadata;}
std::uintptr_t Metadata::profile_identity()const noexcept{return impl_->profile.identity;}
std::uintptr_t Metadata::save_identity()const noexcept{return reinterpret_cast<std::uintptr_t>(&impl_->metadata);}
}
