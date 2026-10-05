#include "../app/src/main/cpp/native_player_profile.hpp"
#include "character_saved_class_v1.hpp"
#include "properties.hpp"
#include <algorithm>
#include <fstream>
#include <iostream>
#include <stdexcept>

using namespace dh2::data;
namespace profile=dh2::native::player_profile;
namespace saved_class=dh2::character_saved_class_v1;
using Raw=std::vector<std::uint8_t>;
namespace {
unsigned checks=0;
void require(bool value){if(!value)throw std::runtime_error("transport check "+std::to_string(checks+1));++checks;}
Raw read(const std::filesystem::path& path){std::ifstream f(path,std::ios::binary);require(bool(f));return Raw(std::istreambuf_iterator<char>(f),{});}
Bytes bytes(const Raw& raw){return {raw.data(),raw.size()};}
void put(Raw& raw,std::uint32_t value){for(unsigned i=0;i<4;++i)raw.push_back(std::uint8_t(value>>(8*i)));}
Raw words(std::initializer_list<std::uint32_t> values){Raw out;for(auto v:values)put(out,v);return out;}
Raw text(const std::string& s){Raw out;put(out,std::uint32_t(s.size()+1));out.insert(out.end(),s.begin(),s.end());out.push_back(0);return out;}
Raw campaign(const std::string& class_name,const Raw& prop){
 const std::vector<std::pair<std::string,Raw>> sections={
  {"PNAM",text("TransportFixture")},{"PLVL",words({17})},{"PCLS",text(class_name)},
  {"PDFL",words({1,2})},{"LNAM",words({0x10002,1,2,3,4,5,6,7,8,9})},
  {"LEPT",words({4,5,6})},{"LUSP",Raw{1,0,1}},{"PROP",prop}};
 Raw out;put(out,std::uint32_t(sections.size()));
 for(const auto& row:sections){put(out,std::uint32_t(row.second.size()));out.insert(out.end(),row.first.begin(),row.first.end());out.insert(out.end(),row.second.begin(),row.second.end());}
 return out;
}
void write(const std::filesystem::path& path,const Raw& raw){std::ofstream f(path,std::ios::binary|std::ios::trunc);require(bool(f));f.write(reinterpret_cast<const char*>(raw.data()),std::streamsize(raw.size()));require(bool(f));}
struct Query {unsigned calls=0;std::uintptr_t character;};
int is_player(void* raw,std::uintptr_t id,std::uint32_t* value,std::string&){auto& q=*static_cast<Query*>(raw);require(id==q.character);++q.calls;*value=1;return 0;}
}
int main(int argc,char** argv){try{
 require(argc==3);const std::filesystem::path cache=argv[1],dir=argv[2];std::filesystem::create_directories(dir);
 auto data=read(cache/"character_properties_pyarray.bin"),names=read(cache/"character_properties_pyarraynames.bin"),fields=read(cache/"character_properties_pystructnames.bin");
 CharacterTable table;std::string error;require(load_characters(bytes(data),bytes(names),bytes(fields),table,error));
 const auto knight=std::find(table.names.begin(),table.names.end(),"KnightPlayerBase");require(knight!=table.names.end());
 const auto id=std::int32_t(knight-table.names.begin());require(id==263);
 PropertyRules rules;require(load_property_rules(table,rules,error));
 Raw prop;put(prop,224);for(unsigned i=0;i<224;++i)put(prop,0x40000000+i);prop.push_back(41);
 const auto primary=dir/"dh2_000.savegame";write(primary,campaign(*knight,prop));
 profile::Metadata preview;std::int32_t difficulty=0;
 require(preview.load(0,dir,table,difficulty,error));require(preview.receipt().loaded&&preview.receipt().field_reads==7&&preview.receipt().file_opens==1);
 require(preview.save().class_id()==id&&preview.save().character()==0&&difficulty==1);
 PlayerSavegameV1 save;const std::uintptr_t character=UINT64_C(0x12345678000000a1);save.set_character(character);save.set_slot(0);
 PlayerSaveProfileV1 canonical;profile::Transport transport(save,canonical);require(transport.bind({dir,&table,&difficulty,{}},error));
 auto* live_save=&save;auto* loader=&transport.loader();std::int16_t class_cache=-1;
 Query query{0,character};saved_class::Runtime runtime({character,&class_cache,nullptr,nullptr,nullptr,&table,nullptr,&live_save,&loader,{&query,is_player}});
 saved_class::Result result;require(runtime.resolve(&result,error)==saved_class::Status::complete);
 require(result.load_calls==1&&result.class_writebacks==1&&class_cache==id&&save.class_id()==id);
 require(&transport.loader().save()==&save&&canonical.identity&&canonical.identity!=preview.profile_identity());
 require(reinterpret_cast<std::uintptr_t>(&save)!=preview.save_identity());
 require(transport.receipt().field_reads==7&&transport.receipt().file_opens==1&&transport.receipt().sections==8);
 require(save.level()==17&&save.level_name_fields().level_id==0x10002&&save.unlocked_difficulty()==2);
 require(runtime.resolve(&result,error)==saved_class::Status::complete&&result.stage==saved_class::Stage::cached&&result.load_calls==0&&query.calls==1);
 require(preview.load(0,dir,table,difficulty,error));require(preview.receipt().field_reads==14&&preview.receipt().file_opens==1);
 require(!preview.load(1,dir,table,difficulty,error));
 // A populated source +8 profile is retained even after SG_SetSlot changes +4.
 save.set_slot(99);class_cache=-1;require(runtime.resolve(&result,error)==saved_class::Status::complete);
 require(transport.receipt().file_opens==1&&transport.receipt().field_reads==14&&save.slot()==99);
 // Execute the selected nonnull-Character PROP reader on the same live sheet.
 PropertyState state;state.saved.fill(-7);state.resolved.fill(-9);auto view=property_view(rules,state);
 unsigned prop_calls=0;auto lease=std::make_shared<int>(1);
 PlayerSaveLoadServicesV1 continuation{lease,[&](const PlayerSaveLoadRequestV1& q,PlayerSaveLoadResponseV1&,std::string& e){
  require(q.save==&save&&q.operation==PlayerSaveLoadOpV1::load_section&&std::string(q.section)=="PROP");
  require(q.profile.identity==canonical.identity&&q.reader_enabled&&q.writer_enabled);
  std::string rebind_error;require(!transport.bind({},rebind_error));require(!rebind_error.empty());
  ++prop_calls;std::size_t consumed=0;return q.save->load_properties(q.profile.campaign.payload(q.section),view,consumed,e);
 }};
 require(transport.bind({dir,&table,&difficulty,continuation},error));require(transport.loader().load(0x20,error));
 require(prop_calls==1&&save.saved_properties_byte_194()==41);
 unsigned stored=0;for(unsigned i=0;i<224;++i){const auto type=rules.types[i]==-1?16u:std::uint32_t(rules.types[i]);
  const auto expected=(type&0x20)?std::int32_t(0x40000000+i):-7;stored+=(type&0x20)!=0;
  require(state.saved[i]==expected&&state.resolved[i]==-9);
 }require(stored>0);
 require(transport.bind({dir,&table,&difficulty,{}},error));require(!transport.loader().load(2,error));
 require(transport.loader().reached_phase()==std::uint32_t(PlayerSaveLoadOpV1::init_levels)+1&&!save.skills_initialized());
 require(!transport.loader().load(4,error));require(transport.loader().reached_phase()==std::uint32_t(PlayerSaveLoadOpV1::online)+1);
 require(!transport.bind({dir,&table,&difficulty,{lease,{}}},error));
 // Slot -1 has the original no-file SG_Load(1) branch and fallback writeback.
 PlayerSavegameV1 blank;blank.set_character(character);PlayerSaveProfileV1 empty;profile::Transport blank_transport(blank,empty);
 auto* blank_save=&blank;auto* blank_loader=&blank_transport.loader();std::int16_t blank_cache=-1;
 saved_class::Runtime fallback({character,&blank_cache,nullptr,nullptr,nullptr,&table,nullptr,&blank_save,&blank_loader,{&query,is_player}});
 require(fallback.resolve(&result,error)==saved_class::Status::complete&&blank_cache==id&&blank.class_id()==id&&result.load_calls==1);
 require(!empty.identity&&blank_transport.receipt().file_opens==0&&blank_loader->delivered_calls()==0);
 // Corrupt or missing primary never publishes an empty/default campaign.
 PlayerSavegameV1 bad;bad.set_slot(1);PlayerSaveProfileV1 bad_profile;profile::Transport rejected(bad,bad_profile);
 require(rejected.bind({dir,&table,&difficulty,{}},error));require(!rejected.loader().load(1,error));require(!bad_profile.identity&&bad.class_id()==-1);
 write(dir/"dh2_001.savegame",words({UINT32_MAX}));require(!rejected.loader().load(1,error));require(!bad_profile.identity&&bad.class_id()==-1);
 write(dir/"dh2_001.savegame",campaign(*knight,prop));require(rejected.loader().load(1,error));
 require(bad_profile.identity&&bad.class_id()==id&&rejected.receipt().file_opens==2);
 std::cout<<"{\"validation\":\"PASS\",\"checks\":"<<checks<<",\"character_class\":"<<id<<",\"saved_properties_written\":"<<stored<<",\"distinct_preview_gameplay_owners\":true,\"source_class_loader_calls\":2,\"scope\":\"selected-library host composition; native startup association and complete InitPost remain unbound\"}\n";
 return 0;
 }catch(const std::exception& e){std::cerr<<e.what()<<'\n';return 1;}}
