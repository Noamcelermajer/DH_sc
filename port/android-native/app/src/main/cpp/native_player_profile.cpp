#include "native_player_profile.hpp"
#include "player_profile_filename_v1.hpp"
#include "player_profile_create_v1.hpp"
#include "data.hpp"
#include <cstring>
#include <fstream>
#include <map>
#include <cstdio>
#ifdef _WIN32
#include <io.h>
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
 s.metadata.set_slot(slot);s.directory=directory;s.active=true;s.receipt.loaded=false;
 struct Guard{Impl& state;~Guard(){std::string unused;state.transport.bind({},unused);state.active=false;}}guard{s};
 if(!s.transport.bind({directory,&characters,&current_difficulty,{}},error))return false;
 if(!s.transport.loader().load(1,error)){s.receipt=s.transport.receipt();return false;}
 s.receipt=s.transport.receipt();
 if(!s.metadata.level_name_loaded()||!s.metadata.use_spawn_points_loaded()){error="campaign metadata omitted required initialized fields";return false;}
 s.receipt.loaded=true;
 return true;
}
const Receipt& Metadata::receipt()const noexcept{return impl_->receipt;}
const data::PlayerSavegameV1& Metadata::save()const noexcept{return impl_->metadata;}
std::uintptr_t Metadata::profile_identity()const noexcept{return impl_->profile.identity;}
std::uintptr_t Metadata::save_identity()const noexcept{return reinterpret_cast<std::uintptr_t>(&impl_->metadata);}
}
