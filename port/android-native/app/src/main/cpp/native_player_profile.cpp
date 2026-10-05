#include "native_player_profile.hpp"
#include "player_profile_filename_v1.hpp"
#include "data.hpp"
#include <fstream>
#include <map>

namespace dh2::native::player_profile {
struct Metadata::Impl {
 struct Profile {
  data::PlayerProfileIndexV1 index;
  using Writer=bool(*)(data::PlayerSavegameV1&,std::vector<std::uint8_t>&,std::string&);
  struct Callback {data::PlayerSavegameV1* save=nullptr;bool reader=false;Writer writer=nullptr;};
  std::map<std::string,Callback> callbacks;
 };
 data::PlayerSavegameV1 metadata;
 data::PlayerSaveProfileV1 profile;
 Receipt receipt;
 std::filesystem::path directory;
 const data::CharacterTable* characters=nullptr;
 std::int32_t* current_difficulty=nullptr;
 std::shared_ptr<Profile> input;
 bool active=false;
 bool invoke(const data::PlayerSaveLoadRequestV1& q,data::PlayerSaveLoadResponseV1& response,std::string& error){
  using Op=data::PlayerSaveLoadOpV1;
  if(q.save!=&metadata){error="metadata Save identity differs";return false;}
  if(q.operation==Op::filename){response.text=data::player_profile_filename_v1(q.argument,false,false);return true;}
  if(q.operation==Op::create_profile){
   if(!q.filename||std::filesystem::path(q.filename).filename()!=q.filename){error="invalid campaign filename";return false;}
   std::ifstream file(directory/q.filename,std::ios::binary|std::ios::ate);
   if(!file){error="campaign primary unavailable; backup/new-character providers required";return false;}
   ++receipt.file_opens;const auto size=file.tellg();
   if(size<4||size>32*1024*1024){error="campaign size outside native span";return false;}
   std::vector<std::uint8_t> bytes(static_cast<std::size_t>(size));file.seekg(0);
   if(!file.read(reinterpret_cast<char*>(bytes.data()),std::streamsize(bytes.size()))){error="campaign read failed";return false;}
   auto next=std::make_shared<Profile>();
   if(!next->index.load({bytes.data(),bytes.size()},error))return false;
   input=std::move(next);response.profile={reinterpret_cast<std::uintptr_t>(input.get()),input,input->index.borrow()};
   return true;
  }
  if(q.operation==Op::load_section){
   if(!input||q.profile.identity!=reinterpret_cast<std::uintptr_t>(input.get())||q.profile.owner.get()!=input.get()||!q.section){error="campaign callback owner differs";return false;}
   // Preserve both registrations. This transport supports metadata reads;
   // future source write calls must fail until actual writer bodies bind.
   input->callbacks[q.section]={q.save,q.reader_enabled,q.writer_enabled?+[](data::PlayerSavegameV1&,std::vector<std::uint8_t>&,std::string& e){e="source metadata writer/persistence provider unbound";return false;}:nullptr};
   data::PlayerMetadataServicesV1 services{characters,this,[](void* raw,std::int32_t value,std::string& e){auto& s=*static_cast<Impl*>(raw);if(!s.current_difficulty){e="source CurrentDifficulty global unavailable";return false;}*s.current_difficulty=value;s.receipt.difficulty=value;return true;}};
   std::size_t consumed=0;
   if(!data::load_player_metadata_section_v1(q,services,consumed,error))return false;
   if(consumed)++receipt.field_reads;
   return true;
  }
  error="campaign metadata reached an unbound gameplay/quest/writer provider";return false;
 }
};
Metadata::Metadata():impl_(new Impl){}
Metadata::~Metadata()=default;
bool Metadata::load(std::int32_t slot,const std::filesystem::path& directory,const data::CharacterTable& characters,std::int32_t& current_difficulty,std::string& error){
 auto& s=*impl_;
 if(s.active||slot<0||directory.empty()){error="invalid/reentrant metadata input";return false;}
 if(s.metadata.slot()!=-1&&(s.metadata.slot()!=slot||s.directory!=directory)){error="metadata owner belongs to another selected slot/directory";return false;}
 s.metadata.set_slot(slot);s.directory=directory;s.characters=&characters;s.current_difficulty=&current_difficulty;s.active=true;s.receipt.loaded=false;
 struct Guard{Impl& state;~Guard(){state.active=false;state.characters=nullptr;state.current_difficulty=nullptr;}} guard{s};
 // Services retain an explicit callback lease through this synchronous call.
 auto lease=std::shared_ptr<void>(&s,[](void*){});
 data::PlayerSaveLoadOwnerV1 loader(s.metadata,s.profile,{lease,[&s](const auto& q,auto& response,auto& e){return s.invoke(q,response,e);}});
 if(!loader.load(1,error))return false;
 if(!s.metadata.level_name_loaded()||!s.metadata.use_spawn_points_loaded()){error="campaign metadata omitted required initialized fields";return false;}
 s.receipt.slot=slot;s.receipt.character_class=s.metadata.class_id();s.receipt.level=s.metadata.level();
 s.receipt.source_level_id=s.metadata.level_name_fields().level_id;s.receipt.sections=std::uint32_t(s.profile.campaign.source_sections().size());s.receipt.loaded=true;
 return true;
}
const Receipt& Metadata::receipt()const noexcept{return impl_->receipt;}
const data::PlayerSavegameV1& Metadata::save()const noexcept{return impl_->metadata;}
std::uintptr_t Metadata::profile_identity()const noexcept{return impl_->profile.identity;}
std::uintptr_t Metadata::save_identity()const noexcept{return reinterpret_cast<std::uintptr_t>(&impl_->metadata);}
}
