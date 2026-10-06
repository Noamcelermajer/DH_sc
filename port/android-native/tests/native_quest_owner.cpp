#include "../app/src/main/cpp/native_quest_owner.hpp"
#include <fstream>
#include <cstdio>
#include <set>
#include <stdexcept>
#include <vector>
namespace d=dh2::data;
namespace n=dh2::native::quests;
namespace t=d::quest_table_bindings_v1;
unsigned checks=0;
void check(bool value){if(!value)throw std::runtime_error("Native Quest owner check "+std::to_string(checks+1));++checks;}
auto read(const std::string& path){
 std::ifstream f(path,std::ios::binary|std::ios::ate);check(bool(f));
 auto bytes=std::make_shared<std::vector<std::uint8_t>>(std::size_t(f.tellg()));f.seekg(0);
 f.read(reinterpret_cast<char*>(bytes->data()),std::streamsize(bytes->size()));check(bool(f));
 return std::shared_ptr<const std::vector<std::uint8_t>>(bytes);
}
void fresh_row_failure_and_retry(const std::shared_ptr<d::PlayerSavegameV1>& save,
 const t::Input& original,const t::View& original_view,const n::Constants& constants){
 auto* const canonical_log0=&save->source_quest_log_b8();
 auto* const canonical_log1=&save->source_quest_log_118();
 // This real row has three objectives. Reject its last selector so the
 // unpublished Quest owns two actual Objective factory allocations already.
 unsigned bad_row=original_view.count();
 for(unsigned row=1;row<original_view.count();++row)
  if(original_view.record(*original_view.row(row))->lists[1].count>1){bad_row=row;break;}
 check(bad_row==47);
 const auto* row=original_view.row(bad_row);const auto* list=original_view.list(*row,1);
 check(list&&list->definition->count==3);const auto bad_index=list->definition->count-1;
 dh2_quest_span target{};std::string error;
 check(original_view.list_record(*list,bad_index,&target,error)&&target.size>=12);
 t::Span original_bytes;check(original_view.bytes(target,&original_bytes,error));
 check(original_bytes.data[0]!=13);
 auto mutated=std::make_shared<std::vector<std::uint8_t>>(original.table.bytes,original.table.bytes+original.table.size);
 const std::weak_ptr<const void> retained_generation=mutated;
 for(unsigned byte=0;byte<4;++byte)(*mutated)[target.offset+byte]=byte?0:13;
 t::Input failed=original;
 check(dh2_quests_open(&failed.table,mutated->data(),std::uint32_t(mutated->size()))==0);failed.packed_owner=mutated;
 t::Owner generations;check(generations.load(failed,error));auto failed_view=generations.borrow();
 dh2_quest_objective rejected{};
 check(failed_view.objective(*failed_view.list(*failed_view.row(bad_row),1),bad_index,&rejected,error)&&rejected.common[0]==13);
 auto failed_owner=std::make_unique<n::Owner>(save,failed_view,constants);
 check(!failed_owner->initialize(0,error));
 check(error.find("difficulty 0 row "+std::to_string(bad_row))!=std::string::npos);
 check(failed_owner->receipt().published[0]==bad_row&&failed_owner->receipt().published[1]==0);
 check(failed_owner->receipt().reinitialized[0]==bad_row&&failed_owner->receipt().destroyed[0]==0);
 check(&save->source_quest_log_b8()==canonical_log0&&&save->source_quest_log_118()==canonical_log1);
 check(canonical_log0->quests[0].size()==64&&canonical_log0->quests[1].empty()&&canonical_log0->quests[2].empty());
 for(unsigned index=0;index<64;++index){
  auto* ref=canonical_log0->quests[0][index];
  if(index>=bad_row){check(ref==nullptr);continue;}
  auto* record=failed_owner->resolve(ref);
  check(ref&&record&&&record->ref==ref&&ref->fields==&record->fields);
  check(record->py_data_68==failed_view.row(index)&&record->fields.row_8==int(index));
  check(record->fields.character_60==save->character());
 }
 for(const auto& vector:canonical_log1->quests)check(vector.empty());
 // A reload publishes a valid generation while the failed owner still needs
 // its old real definitions/names to destroy constructed unpublished children.
 check(generations.load(original,error));const auto retry_view=generations.borrow();
 check(retry_view.row(0)!=failed_view.row(0));
 auto* first=failed_owner->resolve(canonical_log0->quests[0][0]);const auto* old_row=first->py_data_68;
 failed_view={};failed.packed_owner.reset();mutated.reset();
 check(!retained_generation.expired()&&first->py_data_68==old_row);
 check(failed_owner->close(error));
 check(failed_owner->receipt().destroyed[0]==bad_row&&failed_owner->receipt().destroyed[1]==0);
 check(failed_owner->receipt().unpublished_destroyed==1);
 for(auto* log:{canonical_log0,canonical_log1})for(const auto& vector:log->quests)check(vector.empty());
 check(failed_owner->close(error)&&failed_owner->receipt().unpublished_destroyed==1);
 check(!failed_owner->initialize(0,error));check(!retained_generation.expired());
 failed_owner.reset();check(retained_generation.expired());
 // Retry on the same sole Save logs, using the valid retained generation and
 // exactly the same real selected factories; no alternate gameplay providers.
 {n::Owner retry(save,retry_view,constants);check(retry.initialize(0,error)&&retry.initialize(1,error));
  check(retry.receipt().published[0]==192&&retry.receipt().published[1]==192);
  auto* record=retry.resolve(canonical_log0->quests[0][bad_row]);
  check(record&&record->py_data_68==retry_view.row(bad_row)&&record->fields.character_60==save->character());
  check(retry.close(error)&&retry.receipt().destroyed[0]==192&&retry.receipt().destroyed[1]==192&&retry.receipt().unpublished_destroyed==0);}
 for(auto* log:{canonical_log0,canonical_log1})for(const auto& vector:log->quests)check(vector.empty());
}
int main(int argc,char** argv){try{
 check(argc==2);const std::string cache=argv[1];const auto packed=read(cache+"/v2quests_pyarray.bin"),names=read(cache+"/v2quests_pyarraynames.bin"),constants=read(cache+"/v2quests_pycst.bin");
 t::Input input;check(dh2_quests_open(&input.table,packed->data(),std::uint32_t(packed->size()))==0);input.packed_owner=packed;input.names=names->data();input.names_size=names->size();input.names_owner=names;
 t::Owner table;std::string error;check(table.load(input,error));const auto view=table.borrow();check(view.count()==64);
 n::Constants constants_input;check(dh2_pycst_open(&constants_input.view,constants->data(),std::uint32_t(constants->size()))==0);constants_input.owner=constants;
 auto save=std::make_shared<d::PlayerSavegameV1>();save->set_character(UINT64_C(0x12345678000000a1));
 auto owner=std::make_unique<n::Owner>(save,view,constants_input);
 check(owner->initialize(0,error));check(owner->initialize(1,error));
 check(owner->receipt().published[0]==192&&owner->receipt().published[1]==192);
 std::set<std::uintptr_t> identities;std::uint32_t instances=0;
 for(auto* log:{&save->source_quest_log_b8(),&save->source_quest_log_118()}){
  check(log->character_5c==save->character());
  for(unsigned difficulty=0;difficulty<3;++difficulty){
   check(log->quests[difficulty].size()==64&&log->byte_28[difficulty]==0);
   for(unsigned row=0;row<64;++row){
    auto* ref=log->quests[difficulty][row];check(ref&&ref->identity>UINT32_MAX&&identities.insert(ref->identity).second);
    auto* record=owner->resolve(ref);check(record&&&record->ref==ref&&ref->fields==&record->fields);
    const auto* definition=view.record(*view.row(row));
    check(record->fields.character_60==save->character());check(record->fields.row_8==int(row));
    check(record->fields.definition_name_14==reinterpret_cast<std::uintptr_t>(view.definition_name(row)));
    check(record->py_data_68==view.row(row)&&record->state_0==definition->state&&record->word_c==definition->act);
    check(record->difficulty_10==int(difficulty)&&record->action_18&&record->action_1c);
    check(*record->action_18->character_10==save->character()&&*record->action_1c->character_10==save->character());
    check(record->byte_64==0);++instances;
   }
  }
 }
 check(instances==384&&owner->receipt().constant_queries==1608);
 bool rejected=false;try{n::Owner other(save,view,constants_input);}catch(const std::invalid_argument&){rejected=true;}check(rejected);
 check(!owner->initialize(2,error));check(owner->receipt().published[0]==192&&owner->receipt().published[1]==192);
 // No native Compile/marker/action cleanup provider is substituted. ReInit of
 // state2 reaches its real cleanup boundary, fails and retains the same Quest.
 auto* first=owner->resolve(save->source_quest_log_b8().quests[0][0]);const auto* action=first->action_18;
 first->state_0=2;check(!owner->initialize(0,error));check(first->state_0==2&&first->action_18==action);
 first->state_0=view.record(*view.row(0))->state;
 check(owner->close(error));check(owner->receipt().destroyed[0]==192&&owner->receipt().destroyed[1]==192);
 for(auto* log:{&save->source_quest_log_b8(),&save->source_quest_log_118()})for(const auto& vector:log->quests)check(vector.empty());
 check(owner->close(error));check(!owner->initialize(0,error));
 owner.reset();
 // RAII invokes the same complete source destructor closure while the Save
 // and its sole factory/provider context still exist.
 {n::Owner restart(save,view,constants_input);check(restart.initialize(0,error));}
 for(const auto& vector:save->source_quest_log_b8().quests)check(vector.empty());
 fresh_row_failure_and_retry(save,input,view,constants_input);
 n::Constants absent=constants_input;absent.owner.reset();rejected=false;
 try{n::Owner invalid(save,view,absent);}catch(const std::invalid_argument&){rejected=true;}check(rejected);
 std::printf("{\"validation\":\"PASS\",\"checks\":%u,\"actual_quest_instances\":%u,\"constant_queries\":1608,\"same_save_logs\":true,\"genuine_selected_factories\":true,\"explicit_destructor_and_raii\":true,\"fresh_row_failure\":{\"row\":47,\"objective_index\":2,\"published_prefix\":47,\"unpublished_destroyed\":1,\"valid_retry_instances\":384,\"retained_generation_lifetime\":true},\"compile_and_gameplay\":false}\n",checks,instances);return 0;
 }catch(const std::exception& e){std::fprintf(stderr,"%s\n",e.what());return 1;}}
