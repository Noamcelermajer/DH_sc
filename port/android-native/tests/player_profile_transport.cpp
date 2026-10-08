#include "../app/src/main/cpp/native_player_profile.hpp"
#include "character_saved_class_v1.hpp"
#include "properties.hpp"
#include "level_tables.hpp"
#include "world_map_tables.hpp"
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
void check(bool value,int line){if(!value)throw std::runtime_error("transport check "+std::to_string(checks+1)+" at line "+std::to_string(line));++checks;}
#define require(...) check((__VA_ARGS__),__LINE__)
Raw read(const std::filesystem::path& path){std::ifstream f(path,std::ios::binary);require(bool(f));return Raw(std::istreambuf_iterator<char>(f),{});}
Bytes bytes(const Raw& raw){return {raw.data(),raw.size()};}
void put(Raw& raw,std::uint32_t value){for(unsigned i=0;i<4;++i)raw.push_back(std::uint8_t(value>>(8*i)));}
Raw words(std::initializer_list<std::uint32_t> values){Raw out;for(auto v:values)put(out,v);return out;}
Raw text(const std::string& s){Raw out;put(out,std::uint32_t(s.size()+1));out.insert(out.end(),s.begin(),s.end());out.push_back(0);return out;}
Raw campaign(const std::string& class_name,const Raw& prop,bool include_level=true){
 std::vector<std::pair<std::string,Raw>> sections={
  {"PNAM",text("TransportFixture")},{"PLVL",words({17})},{"PCLS",text(class_name)},
  {"PDFL",words({1,2})},{"LNAM",words({0x10002,1,2,3,4,5,6,7,8,9})},
  {"LEPT",words({4,5,6})},{"LUSP",Raw{1,0,1}},{"PROP",prop}};
 if(!include_level)sections.erase(sections.begin()+1);
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
 // Metadata follows indexed C1 defaults when the optional PLVL reader has
 // no payload; it does not borrow the blank gameplay Save's level0.
 write(dir/"dh2_002.savegame",campaign(*knight,prop,false));
 profile::Metadata no_level;
 require(no_level.load(2,dir,table,difficulty,error));
 require(no_level.save().level()==1&&no_level.receipt().level==1);
 require(no_level.save().class_id()==id&&no_level.save().character()==0);
 require(no_level.load(2,dir,table,difficulty,error));
 require(no_level.save().level()==1&&no_level.receipt().file_opens==1);
 // NativeStartGame's optional numeric SG_Save and mandatory LUSP SG_Save
 // reuse this same loaded Save/+8 index and retain each prior primary as .bak.
 const auto start_dir=dir/"native-start-save";std::filesystem::create_directories(start_dir);
 const auto start_primary=start_dir/"dh2_006.savegame";
 const auto start_original=campaign(*knight,prop);write(start_primary,start_original);
 profile::Metadata start_save;
 require(start_save.load(6,start_dir,table,difficulty,error));
 const auto start_save_id=start_save.save_identity(),start_profile_id=start_save.profile_identity();
 require(start_save.save().use_spawn_points()==std::array<std::uint8_t,3>{{1,0,1}});
 difficulty=2;
 const auto numeric_saved=start_save.save_numeric_request(table,difficulty,error);
 if(!numeric_saved)std::cerr<<"NativeStartGame numeric save: "<<error<<'\n';
 require(numeric_saved);
 require(start_save.save_identity()==start_save_id&&start_save.profile_identity()==start_profile_id);
 const auto after_numeric_save=read(start_primary);
 require(read(start_primary.string()+".bak")==start_original);
 const auto start_saved=start_save.clear_spawn_point_and_save(2,table,difficulty,error);
 if(!start_saved)std::cerr<<"NativeStartGame save: "<<error<<'\n';
 require(start_saved);
 require(start_save.save_identity()==start_save_id&&start_save.profile_identity()==start_profile_id);
 require(start_save.save().use_spawn_points()==std::array<std::uint8_t,3>{{1,0,0}});
 require(read(start_primary.string()+".bak")==after_numeric_save);
 PlayerProfileIndexV1 start_index;const auto start_updated=read(start_primary);
 require(start_index.load(bytes(start_updated),error));
 const auto updated_spawn=start_index.borrow().payload("LUSP");
 require(updated_spawn.size==3&&updated_spawn.data[0]==1&&updated_spawn.data[1]==0&&updated_spawn.data[2]==0);
 const auto kept_properties=start_index.borrow().payload("PROP");
 require(kept_properties.size==prop.size()&&std::equal(prop.begin(),prop.end(),kept_properties.data));
 profile::Metadata start_reload;
 require(start_reload.load(6,start_dir,table,difficulty,error));
 require(start_reload.save().use_spawn_points()==std::array<std::uint8_t,3>{{1,0,0}});
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
 // PROP binds the same live Save profile and PlayerCombat PropertyState.
 // The transport builds a short-lived PropertyView only for this delivery;
 // its generic continuation must not become a competing property owner.
 PropertyState state;state.saved.fill(-7);state.resolved.fill(-9);
 unsigned generic_calls=0;auto lease=std::make_shared<int>(1);
 PlayerSaveLoadServicesV1 continuation{lease,[&](const PlayerSaveLoadRequestV1&,PlayerSaveLoadResponseV1&,std::string&){
  ++generic_calls;return false;
 }};
 profile::TransportBindings property_bindings{dir,&table,&difficulty,continuation};
 property_bindings.property_rules=&rules;property_bindings.properties=&state;
 require(transport.bind(std::move(property_bindings),error));require(transport.loader().load(0x20,error));
 require(generic_calls==0&&save.saved_properties_byte_194()==41);
 require(&transport.loader().save()==&save&&canonical.identity&&canonical.campaign);
 unsigned stored=0;for(unsigned i=0;i<224;++i){const auto type=rules.types[i]==-1?16u:std::uint32_t(rules.types[i]);
  const auto expected=(type&0x20)?std::int32_t(0x40000000+i):-7;stored+=(type&0x20)!=0;
  require(state.saved[i]==expected&&state.resolved[i]==-9);
 }require(stored>0);
 // This gameplay-bound Transport has the seven metadata writers plus the
 // reached PROP writer. Its metadata-only persistence API must reject the
 // gameplay profile before touching the primary; it is not NativeSaveGame.
 const auto primary_before_gameplay_save=read(primary);
 const auto gameplay_slot_before_save=save.slot();save.set_slot(0);
 require(!transport.save_existing_metadata(error));
 require(error=="mask-1 metadata writer set required");
 require(read(primary)==primary_before_gameplay_save);
 save.set_slot(gameplay_slot_before_save);
 profile::TransportBindings incomplete{dir,&table,&difficulty,{}};incomplete.property_rules=&rules;
 require(!transport.bind(std::move(incomplete),error)&&error.find("must bind together")!=std::string::npos);
 write(dir/"dh2_005.savegame",campaign(*knight,prop));
 PlayerSavegameV1 missing_save;missing_save.set_slot(5);missing_save.set_character(character);
 PlayerSaveProfileV1 missing_profile;profile::Transport missing_transport(missing_save,missing_profile);
 require(missing_transport.bind({dir,&table,&difficulty,continuation},error));
 require(!missing_transport.loader().load(0x20,error));
 require(error=="live gameplay PropertyRules/PropertyState unavailable"&&generic_calls==0);
 require(transport.bind({dir,&table,&difficulty,{}},error));require(!transport.loader().load(2,error));
 require(transport.loader().reached_phase()==std::uint32_t(PlayerSaveLoadOpV1::init_levels)+1&&!save.skills_initialized());
 require(!transport.loader().load(4,error));require(transport.loader().reached_phase()==std::uint32_t(PlayerSaveLoadOpV1::online)+1);
 require(!transport.bind({dir,&table,&difficulty,{lease,{}}},error));
 // Actual table bindings advance source SG_Load2 to the missing skill provider,
 // retaining the genuine six arrays. SG_Load4 then consumes LVLS into those
 // same arrays and stops at the still-unbound online provider.
 LevelTables levels;WorldMapTables world_map;
 auto level_data=read(cache/"levels_pyarray.bin"),level_names=read(cache/"levels_pyarraynames.bin"),level_fields=read(cache/"levels_pystructnames.bin");
 auto map_data=read(cache/"worldmap_pyarray.bin"),map_names=read(cache/"worldmap_pyarraynames.bin"),map_fields=read(cache/"worldmap_pystructnames.bin");
 require(load_levels(bytes(level_data),bytes(level_names),bytes(level_fields),levels,error));
 require(load_world_map(bytes(map_data),bytes(map_names),bytes(map_fields),world_map,error));
 require(levels.levels.size()==51&&world_map.locations.size()==13);
 require(!transport.bind({dir,&table,&difficulty,{},false,&levels,nullptr},error));
 Raw lvls;
 for(unsigned kind=0;kind<2;++kind)for(unsigned d=0;d<3;++d){
  put(lvls,2);auto name=text(kind?world_map.locations.front().name:levels.levels.front().name);
  lvls.insert(lvls.end(),name.begin(),name.end());put(lvls,kind?2u:1u);
  name=text("UnknownModdedLevel");lvls.insert(lvls.end(),name.begin(),name.end());put(lvls,UINT32_MAX);
 }
 Raw level_campaign;put(level_campaign,2);put(level_campaign,std::uint32_t(lvls.size()));
 level_campaign.insert(level_campaign.end(),{'L','V','L','S'});level_campaign.insert(level_campaign.end(),lvls.begin(),lvls.end());
 Raw travel;for(const auto& value:{std::string("1"),std::string("100000000000000000000000000000001"),std::string("101")}){
  auto field=text(value);travel.insert(travel.end(),field.begin(),field.end());
 }
 put(level_campaign,std::uint32_t(travel.size()));level_campaign.insert(level_campaign.end(),{'F','T','V','L'});
 level_campaign.insert(level_campaign.end(),travel.begin(),travel.end());
 write(dir/"dh2_003.savegame",level_campaign);
 PlayerSavegameV1 saved_levels;saved_levels.set_slot(3);PlayerSaveProfileV1 level_profile;
 profile::Transport levels_transport(saved_levels,level_profile);
 require(levels_transport.bind({dir,&table,&difficulty,{},false,&levels,&world_map},error));
 require(!levels_transport.loader().load(2,error));
 require(levels_transport.loader().reached_phase()==std::uint32_t(PlayerSaveLoadOpV1::init_skills)+1);
 require(!saved_levels.skills_initialized()&&level_profile.identity);
 std::array<const std::int32_t*,6> arrays{};unsigned defaults=0;
 for(unsigned d=0;d<3;++d){
  auto* a=saved_levels.source_level_states(d);auto* b=saved_levels.source_world_map_states(d);
  require(a->count==51&&b->count==13&&a->words&&b->words);
  arrays[d*2]=a->words;arrays[d*2+1]=b->words;
  for(unsigned row=0;row<a->count;++row){require(a->words[row]==levels.levels[row].level_state);++defaults;}
  for(unsigned row=0;row<b->count;++row){require(b->words[row]==world_map.locations[row].state);++defaults;}
 }
 require(defaults==192);
 require(!levels_transport.loader().load(4,error));
 require(levels_transport.loader().reached_phase()==std::uint32_t(PlayerSaveLoadOpV1::online)+1);
 for(unsigned d=0;d<3;++d){
  auto* a=saved_levels.source_level_states(d);auto* b=saved_levels.source_world_map_states(d);
  require(a->words==arrays[d*2]&&b->words==arrays[d*2+1]);
  require(a->words[0]==1&&b->words[0]==2);
 }
 require(levels_transport.receipt().file_opens==1);
 std::uint8_t offline_status=0;
 // Declared host-only source-global fixture: online=false. All file/section
 // readers still execute production code. This synthetic profile has no
 // inventory/quest/skill payload; successful mask4 is not a gameplay proof.
 require(levels_transport.bind({dir,&table,&difficulty,{},false,&levels,&world_map,{},&offline_status},error));
 require(levels_transport.loader().load(4,error));
 require(*saved_levels.source_fast_travel_bits(0)==std::array<std::uint32_t,2>{{1,0}});
 require(*saved_levels.source_fast_travel_bits(1)==std::array<std::uint32_t,2>{{1,1}});
 require(*saved_levels.source_fast_travel_bits(2)==std::array<std::uint32_t,2>{{5,0}});
 require(levels_transport.bind({dir,&table,&difficulty,{},false,&levels,&world_map},error));
 require(!levels_transport.loader().load(2,error));
 require(saved_levels.source_level_states(0)->words[0]==1&&saved_levels.source_world_map_states(0)->words[0]==2);
 require(levels_transport.bind({},error));
 require(!levels_transport.loader().load(4,error));
 require(levels_transport.loader().reached_phase()==std::uint32_t(PlayerSaveLoadOpV1::load_section)+1);
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
 // A failed typed PROP read keeps the words already delivered into the same
 // saved sheet. The enclosing mask load does not roll this prefix back.
 Raw truncated_prop;put(truncated_prop,224);for(unsigned i=0;i<224;++i)put(truncated_prop,0x50000000+i);
 write(dir/"dh2_004.savegame",campaign(*knight,truncated_prop));
 PlayerSavegameV1 partial_save;partial_save.set_slot(4);partial_save.set_character(character);
 PlayerSaveProfileV1 partial_profile;profile::Transport partial_transport(partial_save,partial_profile);
 PropertyState partial_state;partial_state.saved.fill(-11);partial_state.resolved.fill(-13);
 profile::TransportBindings partial_bindings{dir,&table,&difficulty,{}};
 partial_bindings.property_rules=&rules;partial_bindings.properties=&partial_state;
 require(partial_transport.bind(std::move(partial_bindings),error));
 require(!partial_transport.loader().load(0x20,error));
 require(error=="truncated source PROP byte194"&&partial_profile.identity&&partial_profile.campaign);
 require(&partial_transport.loader().save()==&partial_save&&partial_save.slot()==4&&partial_save.character()==character);
 unsigned partial_stored=0;for(unsigned i=0;i<224;++i){const auto type=rules.types[i]==-1?16u:std::uint32_t(rules.types[i]);
  const auto expected=(type&0x20)?std::int32_t(0x50000000+i):-11;partial_stored+=(type&0x20)!=0;
  require(partial_state.saved[i]==expected&&partial_state.resolved[i]==-13);
 }require(partial_stored==stored&&partial_save.saved_properties_byte_194()==0);
 std::cout<<"{\"validation\":\"PASS\",\"checks\":"<<checks<<",\"character_class\":"<<id<<",\"saved_properties_written\":"<<stored<<",\"saved_level_defaults\":"<<defaults<<",\"same_six_saved_arrays\":true,\"distinct_preview_gameplay_owners\":true,\"source_class_loader_calls\":2,\"scope\":\"selected-library host composition; native startup association and complete InitPost remain unbound\"}\n";
 return 0;
 }catch(const std::exception& e){std::cerr<<e.what()<<'\n';return 1;}}
