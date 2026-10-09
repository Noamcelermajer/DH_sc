#include "native_quest_owner.hpp"
#include "native_quest_cursor.hpp"
#include "quest_instance_v1.hpp"
#include "quest_condition_factory_v1.hpp"
#include "quest_objective_factory_v1.hpp"
#include "quest_reward_factory_v1.hpp"
#include "quest_objective_payload_v1.hpp"
#include "quest_stream_read_v1.hpp"
#include "fresh_inventory_owned_v4.hpp"
#include "quest_gather_loot_receiver_v1.hpp"
#include <map>
#include <cstring>
#include <stdexcept>
#include <type_traits>
#include <utility>
#include <vector>

namespace dh2::native::quests {
namespace scalar=data::quest_runtime_fields_v1;
namespace logs=data::quest_savegame_v1;
namespace instance=data::quest_instance_v1;
namespace c=data::quest_condition_list_v1;
namespace cf=data::quest_condition_factory_v1;
namespace o=data::quest_objective_list_v1;
namespace of=data::quest_objective_factory_v1;
namespace r=data::quest_reward_list_v1;
namespace rf=data::quest_reward_factory_v1;
namespace {
template<class T>std::int32_t retire(std::map<std::uintptr_t,std::unique_ptr<T>>& arena,T* record,std::uintptr_t identity){
 const auto found=arena.find(identity);
 if(found==arena.end()||found->second.get()!=record)return 1;
 arena.erase(found);return 0;
}
template<class Record>std::int32_t allocate(std::map<std::uintptr_t,std::unique_ptr<Record>>& arena,std::uint32_t bytes,std::uint32_t tag,Record** out){
 if(!out||!bytes||tag)return 1;
 auto record=std::make_unique<Record>(1);const auto identity=reinterpret_cast<std::uintptr_t>(record.get());
 if constexpr(std::is_same_v<Record,of::Record>)record->ref.action.identity=identity;
 else record->ref.identity=identity;
 *out=record.get();return arena.emplace(identity,std::move(record)).second?0:1;
}
template<class Array>std::int32_t allocate_array(std::map<std::uintptr_t,std::unique_ptr<Array>>& arena,std::uint32_t bytes,std::uint32_t tag,Array** out){
 if(!out||tag||bytes%4)return 1;
 auto array=std::make_unique<Array>();array->identity=reinterpret_cast<std::uintptr_t>(array.get());
 array->slots.resize(bytes/4,nullptr);*out=array.get();const auto identity=array->identity;
 return arena.emplace(identity,std::move(array)).second?0:1;
}
bool objective_definition(const of::Record& objective,dh2_quest_objective& value,std::string& error){
 const auto& definition=objective.fields.py_data_c;
 if(definition.stub){
  if(definition.list||!definition.view||!definition.stub->row||
     definition.view.resolve_stub(definition.stub->row->identity+definition.stub->offset)!=definition.stub||
     !definition.stub->definition){error="Invalid retained Objective pydata StubRef";return false;}
  value=*definition.stub->definition;error.clear();return true;
 }
 if(!definition.list||definition.list->kind!=1||
    !definition.view.objective(*definition.list,definition.index,&value,error)){
  if(error.empty())error="Objective has no valid retained quest-table definition";
  return false;
 }
 return true;
}
}
struct Owner::Impl {
 struct Slot {std::unique_ptr<instance::Instance> value;bool constructed=false;};
 std::shared_ptr<data::PlayerSavegameV1> save;
 data::quest_table_bindings_v1::View definitions;
 Constants constants;
 Receipt result;
 std::map<std::uintptr_t,std::unique_ptr<Slot>> slots;
 std::map<std::uintptr_t,std::unique_ptr<cf::Record>> conditions;
 std::map<std::uintptr_t,std::unique_ptr<of::Record>> objectives;
 std::map<std::uintptr_t,std::unique_ptr<rf::Record>> rewards;
 std::map<std::uintptr_t,std::unique_ptr<data::quest_gather_loot_receiver_v1::Binding>> gather_loot;
 std::map<std::uintptr_t,std::unique_ptr<c::Array>> ca;
 std::map<std::uintptr_t,std::unique_ptr<o::Array>> oa;
 std::map<std::uintptr_t,std::unique_ptr<r::Array>> ra;
 cf::Runtime condition_factory;
 of::Runtime objective_factory;
 rf::Runtime reward_factory;
 std::unique_ptr<logs::Runtime> log_runtime[2];
 level_world::current_level_quest_event_v1::Runtime current_level_events;
 Cursor* active_cursor=nullptr;
 bool busy=false,closed=false;
 Impl(std::shared_ptr<data::PlayerSavegameV1> saved,data::quest_table_bindings_v1::View tables,Constants input):
  save(std::move(saved)),definitions(std::move(tables)),constants(std::move(input)),
  condition_factory({this,
   [](void* raw,std::uint32_t bytes,std::uint32_t tag,cf::Record** out){return allocate(static_cast<Impl*>(raw)->conditions,bytes,tag,out);},
   [](void* raw,cf::Record* record){return retire(static_cast<Impl*>(raw)->conditions,record,record->ref.identity);}}),
  objective_factory({this,
   [](void* raw,std::uint32_t bytes,std::uint32_t tag,of::Record** out){return allocate(static_cast<Impl*>(raw)->objectives,bytes,tag,out);},
   [](void* raw,of::Record&,const char* group,const char* name,std::int32_t* out){return static_cast<Impl*>(raw)->constant(group,name,out);},
   [](void* raw,of::Record* record){return retire(static_cast<Impl*>(raw)->objectives,record,record->ref.action.identity);}}),
  reward_factory({this,
   [](void* raw,std::uint32_t bytes,std::uint32_t tag,rf::Record** out){return allocate(static_cast<Impl*>(raw)->rewards,bytes,tag,out);},
   [](void* raw,rf::Record&,const char* group,const char* name,std::int32_t* out){return static_cast<Impl*>(raw)->constant(group,name,out);},
   [](void* raw,rf::Record* record){return retire(static_cast<Impl*>(raw)->rewards,record,record->ref.identity);}}) {
  dh2_pycst_view checked{};
  if(!save||!definitions||!constants.owner||dh2_pycst_open(&checked,constants.view.bytes,constants.view.size))
   throw std::invalid_argument("Actual Save and retained Quest definition/constants owners required");
  for(unsigned log=0;log<2;++log){
   auto& store=log?save->source_quest_log_118():save->source_quest_log_b8();
   for(const auto& vector:store.quests)if(!vector.empty())throw std::invalid_argument("Quest Save logs already have a factory owner");
   log_runtime[log]=std::make_unique<logs::Runtime>(store,log_services());
  }
 }
 std::int32_t constant(const char* group,const char* name,std::int32_t* out){
  if(!group||!name||!out)return 1;
  dh2_pycst_result value{};++result.constant_queries;
  if(dh2_pycst_get(&constants.view,group,std::uint32_t(std::strlen(group)),name,std::uint32_t(std::strlen(name)),&value))return 1;
  *out=value.found?value.value:0;return 0;
 }
 instance::Instance* resolve(const logs::QuestRef* ref){
  if(!ref)return nullptr;
  const auto found=slots.find(ref->identity);
  if(found==slots.end()||!found->second->value||&found->second->value->record().ref!=ref)return nullptr;
  return found->second->value.get();
 }
 instance::Instance* resolve_quest_identity(std::uintptr_t identity){
  const auto found=slots.find(identity);
  if(found==slots.end()||!found->second->value||found->second->value->record().ref.identity!=identity)return nullptr;
  return found->second->value.get();
 }
 of::Record* resolve_objective(o::ObjectiveRef* ref){
  if(!ref||!ref->action.identity)return nullptr;
  const auto found=objectives.find(ref->action.identity);
  if(found==objectives.end()||&found->second->ref!=ref)return nullptr;
  return found->second.get();
 }
 std::int32_t delete_objective(std::uintptr_t identity,const o::ObjectiveRef* expected=nullptr){
  const auto found=objectives.find(identity);
  if(found==objectives.end()||(expected&&&found->second->ref!=expected))return 1;
  of::Result r;return objective_factory.destroy(*found->second,true,&r)==of::Status::complete?0:1;
 }
 static std::int32_t read_stream(void* raw,data::player_saved_quests_v1::StreamRef& stream,
                                void* destination,std::uint64_t requested,std::uint64_t* returned){
  auto& owner=*static_cast<Impl*>(raw);
  return owner.active_cursor&&owner.active_cursor->read(stream,destination,requested,returned)?0:1;
 }
 std::int32_t load_objective(std::uintptr_t identity,data::player_saved_quests_v1::StreamRef* stream,
                            const o::ObjectiveRef* expected=nullptr){
  const auto found=objectives.find(identity);
  if(!active_cursor||!stream||stream!=&active_cursor->stream()||found==objectives.end()||
     (expected&&&found->second->ref!=expected))return 1;
  namespace payload=data::quest_objective_payload_v1;
  payload::Runtime reader(*found->second,{this,read_stream,nullptr,nullptr});
  // On full delivery both transient residues are overwritten. A short read
  // stops at the unbound source assertion policy before publishing scratch.
  payload::ReaderScratch scratch(0,0);payload::Result answer;
  if(reader.load(*stream,scratch,&answer)!=payload::Status::complete)return 1;
  ++result.objective_payloads;return 0;
 }
 instance::Services child_services(){
  instance::Services s;
  s.conditions={this,
   [](void* raw,c::List&,std::uint32_t bytes,std::uint32_t tag,c::Array** out){return allocate_array(static_cast<Impl*>(raw)->ca,bytes,tag,out);},
   [](void* raw,c::List&,std::int32_t kind,c::ConditionRef** out)->std::int32_t{cf::Result r;auto& owner=*static_cast<Impl*>(raw);if(owner.condition_factory.create(kind,&r)!=cf::Status::complete)return 1;*out=&r.record->ref;return 0;},
   [](void* raw,c::List&,c::ConditionRef* ref)->std::int32_t{auto& owner=*static_cast<Impl*>(raw);const auto found=owner.conditions.find(ref->identity);if(found==owner.conditions.end()||&found->second->ref!=ref)return 1;cf::Result r;return owner.condition_factory.destroy(*found->second,true,&r)==cf::Status::complete?0:1;},
   [](void* raw,c::List&,c::Array* array){return retire(static_cast<Impl*>(raw)->ca,array,array->identity);},nullptr};
  s.objectives={this,
   [](void* raw,o::List&,std::uint32_t bytes,std::uint32_t tag,o::Array** out){return allocate_array(static_cast<Impl*>(raw)->oa,bytes,tag,out);},
   [](void* raw,o::List&,const o::Definition&,std::int32_t kind,o::ObjectiveRef** out)->std::int32_t{of::Result r;auto& owner=*static_cast<Impl*>(raw);if(owner.objective_factory.create(kind,&r)!=of::Status::complete)return 1;*out=&r.record->ref;return 0;},
   [](void* raw,o::List&,const o::StreamCall& call)->std::int32_t{
    if(!call.objective||!call.virtual_call||call.function!=0x28||call.encoded_adjustment!=1||
       call.adjusted_target!=call.objective->action.identity)return 1;
    return static_cast<Impl*>(raw)->load_objective(call.adjusted_target,call.stream,call.objective);
   },
   [](void* raw,o::List&,o::ObjectiveRef* ref){return static_cast<Impl*>(raw)->delete_objective(ref->action.identity,ref);},
   [](void* raw,o::List&,o::Array* array){return retire(static_cast<Impl*>(raw)->oa,array,array->identity);}};
  s.rewards={this,
   [](void*,r::List& list)->std::int32_t{list.text_8.reserve(15);return 0;},
   [](void*,r::List& list)->std::int32_t{list.text_8.clear();return 0;},
   [](void* raw,r::List&,std::uint32_t bytes,std::uint32_t tag,r::Array** out){return allocate_array(static_cast<Impl*>(raw)->ra,bytes,tag,out);},
   [](void* raw,r::List&,std::int32_t kind,r::RewardRef** out)->std::int32_t{rf::Result r;auto& owner=*static_cast<Impl*>(raw);if(owner.reward_factory.create(kind,&r)!=rf::Status::complete)return 1;*out=&r.record->ref;return 0;},
   [](void* raw,r::List&,r::RewardRef* ref)->std::int32_t{auto& owner=*static_cast<Impl*>(raw);const auto found=owner.rewards.find(ref->identity);if(found==owner.rewards.end()||&found->second->ref!=ref)return 1;rf::Result r;return owner.reward_factory.destroy(*found->second,true,&r)==rf::Status::complete?0:1;},
   [](void* raw,r::List&,r::Array* array){return retire(static_cast<Impl*>(raw)->ra,array,array->identity);},
   [](void*,r::List& list)->std::int32_t{std::string().swap(list.text_8);return 0;}};
  s.leaves={this,[](void* raw,const scalar::Request& request,scalar::Response*)->std::int32_t{
   auto& owner=*static_cast<Impl*>(raw);
   if(request.operation==scalar::Operation::action_virtual){
    if(request.offset==4)return owner.delete_objective(request.target);
    if(request.offset==0x28)return owner.load_objective(request.target,request.stream);
    return 1;
   }
   if(request.operation==scalar::Operation::read_stream_word){
    if(!owner.active_cursor||request.stream!=&owner.active_cursor->stream()||!request.quest||
       request.destination!=&request.quest->state_0||!owner.resolve(&request.quest->ref))return 1;
    namespace reader=data::quest_stream_read_v1;
    reader::Runtime runtime(*request.stream,{raw,read_stream,nullptr,nullptr});reader::Result answer;
    return runtime.read_quest_signed(&request.quest->state_0,&answer)==reader::Status::complete?0:1;
   }
   return 1;
  }};
  return s;
 }
 logs::Services log_services(){return {this,
  [](void* raw,std::uint32_t* out)->std::int32_t{*out=static_cast<Impl*>(raw)->definitions.count();return 0;},
  [](void* raw,std::uintptr_t* out)->std::int32_t{*out=static_cast<Impl*>(raw)->definitions.rows_identity();return 0;},
  [](void* raw,std::uint32_t bytes,std::uint32_t tag,std::uintptr_t* out)->std::int32_t{
   if(bytes!=0x6c||tag)return 1;
   auto& owner=*static_cast<Impl*>(raw);auto slot=std::make_unique<Slot>();*out=reinterpret_cast<std::uintptr_t>(slot.get());
   return owner.slots.emplace(*out,std::move(slot)).second?0:1;
  },
  [](void* raw,std::uintptr_t identity,std::int32_t difficulty,logs::QuestRef** out)->std::int32_t{
   auto& owner=*static_cast<Impl*>(raw);const auto found=owner.slots.find(identity);if(found==owner.slots.end()||found->second->value)return 1;
   auto& value=found->second->value;value=std::make_unique<instance::Instance>(identity,owner.definitions,owner.child_services());
   scalar::Result r;if(value->construct(difficulty,&r)!=scalar::Status::complete)return 1;
   found->second->constructed=true;*out=&value->record().ref;return 0;
  },
  [](void* raw,logs::QuestRef* ref)->std::int32_t{auto* value=static_cast<Impl*>(raw)->resolve(ref);scalar::Result r;return value&&value->owner_children(&r)==scalar::Status::complete?0:1;},
  [](void* raw,std::uint32_t row,std::uintptr_t* out)->std::int32_t{const auto* name=static_cast<Impl*>(raw)->definitions.definition_name(row);if(!name)return 1;*out=reinterpret_cast<std::uintptr_t>(name);return 0;},
  [](void* raw,logs::QuestRef* ref,std::uintptr_t row)->std::int32_t{auto* value=static_cast<Impl*>(raw)->resolve(ref);scalar::Result r;return value&&value->assign_pydata(row,&r)==scalar::Status::complete?0:1;},
  [](void* raw,logs::QuestRef* ref)->std::int32_t{auto* value=static_cast<Impl*>(raw)->resolve(ref);scalar::Result r;return value&&value->reinit(&r)==scalar::Status::complete?0:1;},
  [](void* raw,logs::QuestRef* ref)->std::int32_t{auto* value=static_cast<Impl*>(raw)->resolve(ref);scalar::Result r;return value&&value->destroy(&r)==scalar::Status::complete?0:1;},
  [](void* raw,std::uintptr_t identity)->std::int32_t{auto& owner=*static_cast<Impl*>(raw);const auto found=owner.slots.find(identity);if(found==owner.slots.end())return 1;owner.slots.erase(found);return 0;}};}
 bool run(unsigned log,bool destruction,std::string& error){
  logs::Result r;const auto status=destruction?log_runtime[log]->destroy(&r):log_runtime[log]->init_quests(&r);
  result.published[log]+=r.published;result.reinitialized[log]+=r.reinitialized;result.destroyed[log]+=r.destroyed;
  if(status!=logs::Status::complete){error="Native Quest source provider failed at operation "+std::to_string(unsigned(r.last_operation))+" difficulty "+std::to_string(r.difficulty)+" row "+std::to_string(r.row);return false;}
  return true;
 }
};
Owner::Owner(std::shared_ptr<data::PlayerSavegameV1> save,data::quest_table_bindings_v1::View definitions,Constants constants):
 impl_(std::make_unique<Impl>(std::move(save),std::move(definitions),std::move(constants))) {}
Owner::~Owner(){std::string error;if(!close(error))std::terminate();}
bool Owner::initialize(std::uint32_t log,std::string& error){
 if(log>1||impl_->busy||impl_->closed){error="Native Quest owner/log unavailable";return false;}
 impl_->busy=true;struct Guard{Impl& owner;~Guard(){owner.busy=false;}}guard{*impl_};error.clear();
 return impl_->run(log,false,error);
}
bool Owner::load_quests(Cursor& cursor,std::string& error){
 if(impl_->busy||impl_->closed){error="Native Quest owner unavailable during payload load";return false;}
 impl_->busy=true;impl_->active_cursor=&cursor;
 struct Guard{Impl& owner;~Guard(){owner.active_cursor=nullptr;owner.busy=false;}}guard{*impl_};error.clear();
 namespace saved=data::player_saved_quests_v1;
 saved::Services services{impl_.get(),[](void* raw,const saved::Request& request,saved::Reply& reply,std::string& failure)->std::int32_t{
  auto& owner=*static_cast<Impl*>(raw);auto* stream=request.stream;
  if(!owner.active_cursor||stream!=&owner.active_cursor->stream())return 1;
  using Op=saved::Operation;
  if(request.operation==Op::tell)return owner.active_cursor->tell(*stream,&reply.position)?0:1;
  if(request.operation==Op::seek)return owner.active_cursor->seek(*stream,request.offset)?0:1;
  if(request.operation==Op::read_unsigned||request.operation==Op::read_signed){
   namespace reader=data::quest_stream_read_v1;
   reader::Runtime runtime(*stream,{raw,Impl::read_stream,nullptr,nullptr});reader::Result answer;
   const auto status=request.operation==Op::read_unsigned?
    runtime.read_unsigned(static_cast<std::uint32_t*>(request.destination),&answer):
    runtime.read_signed(static_cast<std::int32_t*>(request.destination),&answer);
   if(status==reader::Status::complete)return 0;
   failure="Native QEST typed reader failed at operation "+std::to_string(unsigned(answer.last_operation));return 1;
  }
  if(request.operation==Op::quest_data){
   auto* value=owner.resolve(request.quest);scalar::Result answer;
   if(!value||value->load_quest_data(*stream,request.flag,&answer)!=scalar::Status::complete){
    failure="Native QEST Quest payload provider failed";return 1;
   }
   ++owner.result.quest_payloads;return 0;
  }
  failure="Native QEST reached unbound source assertion/logger";return 1;
 }};
 saved::Runtime runtime({impl_->save.get(),&impl_->save->source_quest_log_b8(),
  &impl_->save->source_quest_log_118(),&cursor.stream(),services});saved::Result answer;
 return runtime.load(&answer,error)==saved::Status::complete;
}
bool Owner::attach_current_level_receiver(std::int32_t event_type,
 std::uintptr_t receiver,std::int32_t priority,void* context,
 LevelEventReceiver invoke,std::string& error){
 if(impl_->busy||impl_->closed){error="Native Quest owner unavailable for current-Level receiver attach";return false;}
 bool attached=false;
 const auto status=impl_->current_level_events.attach(event_type,receiver,priority,
  context,invoke,attached,error);
 (void)attached; // Source Attach's result does not alter Objective::isRegistered.
 return status==LevelEventStatus::complete;
}
bool Owner::detach_current_level_receiver(std::int32_t event_type,
 std::uintptr_t receiver,std::string& error){
 if(impl_->busy||impl_->closed){error="Native Quest owner unavailable for current-Level receiver detach";return false;}
 bool detached=false;
 return impl_->current_level_events.detach(event_type,receiver,detached,error)==
  LevelEventStatus::complete;
}
bool Owner::delay_detach_current_level_receiver(std::int32_t event_type,
 std::uintptr_t receiver,std::string& error){
 if(impl_->busy||impl_->closed){error="Native Quest owner unavailable for current-Level delayed detach";return false;}
 bool scheduled=false;
 return impl_->current_level_events.delayed_detach(event_type,receiver,scheduled,error)==
  LevelEventStatus::complete;
}
bool Owner::raise_current_level_event(LevelEvent& event,std::string& error){
 if(impl_->busy||impl_->closed){error="Native Quest owner unavailable for current-Level event delivery";return false;}
 LevelEventResult result{};
 return impl_->current_level_events.raise(event,result,error)==
  LevelEventStatus::complete;
}
bool Owner::flush_current_level_detaches(std::string& error){
 if(impl_->busy||impl_->closed){error="Native Quest owner unavailable for current-Level detach flush";return false;}
 LevelEventResult result{};
 if(impl_->current_level_events.flush_delayed_detaches(result,error)!=LevelEventStatus::complete)return false;
 for(auto at=impl_->gather_loot.begin();at!=impl_->gather_loot.end();){
  const auto& binding=*at->second;
  if(binding.detach_pending&&!binding.inventory_registered)at=impl_->gather_loot.erase(at);
  else ++at;
 }
 return true;
}
bool Owner::register_gather_loot_objective(std::uintptr_t identity,
 data::FreshInventoryOwnedV4& inventory,void* script_context,
 GatherLootStartScript start_script,std::string& error){
 if(impl_->busy||impl_->closed){error="Native Quest owner unavailable for GatherLoot registration";return false;}
 const auto found=impl_->objectives.find(identity);
 if(!identity||found==impl_->objectives.end()||found->second->ref.action.identity!=identity){
  error="GatherLoot Register requires an Objective owned by this native Quest owner";return false;
 }
 auto& objective=*found->second;
 if(objective.compiled_8!=1||objective.dispatch_0!=of::Dispatch::gather_loot){
  error="GatherLoot Register requires the source Objective_GatherLoot::Compile owner to set compiled_8";return false;
 }
 if(objective.fields.character_10!=inventory.character()){
  error="GatherLoot Register requires the canonical inventory of the Objective Character";return false;
 }
 if(const auto prior=impl_->gather_loot.find(identity);prior!=impl_->gather_loot.end()){
  auto& binding=*prior->second;
  if(binding.quantity_context!=&inventory||binding.script_context!=script_context||
     binding.start_script!=start_script||binding.detach_pending){
   error="GatherLoot Objective is already registered with different caller-owned services";return false;
  }
  if(!binding.inventory_registered){
   if(!inventory.register_quest_gathering_item_id(binding.item_id,error))return false;
   binding.inventory_registered=true;
  }
  error.clear();return true;
 }
 dh2_quest_objective definition{};
 if(!objective_definition(objective,definition,error))return false;
 if(definition.common[0]!=objective.fields.type_4){error="GatherLoot Objective type projection differs from its retained pydata selector";return false;}
 // IDA Objective_GatherLoot reads source pydata+36/+40 as item ID/goal;
 // serialized definitions include the vtable word, so these are args[1]/[2].
 const auto item_id=definition.args[1],target=definition.args[2];
 const auto script_id=definition.common[2]; // Objective::SetIsCompleted reads pydata+12.
 if(item_id<0||target<=0){error="GatherLoot item ID/target quantity is outside the recovered source domain";return false;}
 if(script_id>=0&&!start_script){error="GatherLoot completion requires the source ScriptManager::StartScript provider";return false;}
 dh2_pycst_result constant{};
 if(dh2_pycst_get(&impl_->constants.view,"v2QuestObjectiveType",20,"GatherLoot",10,&constant)||!constant.found){
  error="Actual v2QuestObjectiveType.GatherLoot constant unavailable";return false;
 }
 using Gather=data::quest_gather_loot_receiver_v1::Binding;
 auto binding=std::make_unique<Gather>();
 binding->objective=&objective;binding->quantity_context=&inventory;
 binding->item_quantity=[](void* raw,std::int32_t id,bool& found,std::int32_t& quantity,std::string& failure){
  return static_cast<data::FreshInventoryOwnedV4*>(raw)->quest_gathering_item_quantity(id,found,quantity,failure);
 };
 binding->event_type=constant.value;
 binding->item_id=item_id;binding->target_quantity=target;binding->script_id=script_id;
 binding->script_context=script_context;binding->start_script=start_script;
 auto* context=binding.get();
 try{if(!impl_->gather_loot.emplace(identity,std::move(binding)).second){
   error="GatherLoot objective registration raced an existing binding";return false;
  }}catch(const std::exception&){
  error="GatherLoot receiver registration metadata allocation failed";return false;
 }
 bool attached=false;
 const auto status=impl_->current_level_events.attach(constant.value,identity,0,context,
  Gather::receive,attached,error);
 if(status!=LevelEventStatus::complete||!attached){
  impl_->gather_loot.erase(identity);
  if(error.empty())error="GatherLoot EventManager receiver was already attached outside this Owner";
  return false;
 }
 context->attached=true;
 // Source Objective_GatherLoot::Register calls the base EventReceiver first,
 // then adds its item ID to Character::ItemInventory+0x30.
 if(!inventory.register_quest_gathering_item_id(item_id,error))return false;
 context->inventory_registered=true;
 error.clear();return true;
}
bool Owner::unregister_gather_loot_objective(std::uintptr_t identity,std::string& error){
 if(impl_->busy||impl_->closed){error="Native Quest owner unavailable for GatherLoot unregister";return false;}
 const auto found=impl_->gather_loot.find(identity);
 if(found==impl_->gather_loot.end()){error="GatherLoot Objective is not registered by this Owner";return false;}
 auto& binding=*found->second;
 if(!binding.detach_pending){bool scheduled=false;
  if(impl_->current_level_events.delayed_detach(binding.event_type,identity,scheduled,error)!=LevelEventStatus::complete)return false;
  if(!scheduled){error="GatherLoot EventManager receiver disappeared before Objective::Unregister";return false;}
  binding.detach_pending=true;
 }
 if(binding.inventory_registered){
  if(!static_cast<data::FreshInventoryOwnedV4*>(binding.quantity_context)->unregister_quest_gathering_item_id(binding.item_id,error))return false;
  binding.inventory_registered=false;
 }
 error.clear();return true;
}
bool Owner::compile_gather_loot_objectives(std::uintptr_t quest_identity,
 data::FreshInventoryOwnedV4& inventory,std::int32_t current_level_id,
 void* script_context,GatherLootStartScript start_script,std::string& error){
 if(impl_->busy||impl_->closed){error="Native Quest owner unavailable for Objective_GatherLoot::Compile";return false;}
 auto* quest=impl_->resolve_quest_identity(quest_identity);
 if(!quest||inventory.character()!=quest->record().fields.character_60||current_level_id<0){
  error="GatherLoot Compile requires this owner's Quest, its Character inventory, and a live source Level ID";return false;
 }
 auto& list=quest->objectives();
 if(list.count_0<0||(list.count_0>0&&(!list.children_4||std::uint64_t(list.count_0)>list.children_4->slots.size()))){
  error="GatherLoot Compile saw an invalid canonical ObjectiveList backing";return false;
 }
 impl_->busy=true;struct Guard{Impl& owner;~Guard(){owner.busy=false;}}guard{*impl_};
 for(std::uint32_t index=0;index<std::uint32_t(list.count_0);++index){
  auto* objective=impl_->resolve_objective(list.children_4->slots[index]);
  if(!objective){error="GatherLoot Compile could not resolve the canonical Objective factory Record";return false;}
  if(objective->dispatch_0!=of::Dispatch::gather_loot){
   error="Quest Compile reached an Objective kind whose source Compile provider is not wired";return false;
  }
  dh2_quest_objective definition{};
  if(!objective_definition(*objective,definition,error))return false;
  if(definition.common[0]!=objective->fields.type_4){error="GatherLoot Compile found a changed Objective type selector";return false;}
  const auto level_filter=definition.args[0],item_id=definition.args[1],target=definition.args[2];
  if(item_id<=0||target<=0||std::size_t(item_id)>=inventory.table().rows.size()){
   error="Objective_GatherLoot::Compile reached invalid source Loot/target fields";return false;
  }
  if(level_filter!=-1&&level_filter!=current_level_id)continue;
  bool found_item=false;std::int32_t quantity=0;
  if(!inventory.quest_gathering_item_quantity(item_id,found_item,quantity,error))return false;
  if(!data::quest_gather_loot_receiver_v1::compile(*objective,true,item_id,target,
      definition.common[2],found_item,quantity,script_context,start_script,error))return false;
 }
 error.clear();return true;
}
bool Owner::transition_gather_loot_registration(std::uintptr_t quest_identity,
 std::int32_t prior_state,std::int32_t stored_state,
 data::FreshInventoryOwnedV4& inventory,void* script_context,
 GatherLootStartScript start_script,std::string& error){
 if(impl_->busy||impl_->closed){error="Native Quest owner unavailable for Quest::SetState objective-registration step";return false;}
 auto* quest=impl_->resolve_quest_identity(quest_identity);
 if(!quest||quest->record().state_0!=stored_state||stored_state<0||stored_state>13||
    inventory.character()!=quest->record().fields.character_60){
  error="Quest::SetState objective step requires the already-stored canonical Quest state and Character inventory";return false;
 }
 if(prior_state==stored_state&&!quest->record().byte_64){error.clear();return true;}
 if(prior_state==6&&stored_state==6){
  error="Quest::SetState volatile state-6 self-transition needs source delayed-detach/refcount reattach semantics";return false;
 }
 auto& list=quest->objectives();
 if(list.count_0<0||(list.count_0>0&&(!list.children_4||std::uint64_t(list.count_0)>list.children_4->slots.size()))){
  error="Quest::SetState saw an invalid canonical ObjectiveList backing";return false;
 }
 // Quest::SetState stores the new state first. Leaving state 6 unregisters
 // before the switch; entering 6 registers after ExecScript (the caller must
 // run that source script before invoking this substep).
 if(prior_state==6&&stored_state!=6){
  for(std::uint32_t index=0;index<std::uint32_t(list.count_0);++index){
   auto* objective=impl_->resolve_objective(list.children_4->slots[index]);
   if(!objective){error="Quest::SetState could not resolve an Objective during Unregister";return false;}
   if(objective->dispatch_0!=of::Dispatch::gather_loot){
    if(objective->compiled_8){error="ObjectiveList::Unregister requires an unwired non-GatherLoot Objective provider";return false;}
    continue;
   }
   if(impl_->gather_loot.count(objective->ref.action.identity)&&
      !unregister_gather_loot_objective(objective->ref.action.identity,error))return false;
  }
 }
 if(stored_state==6){
  for(std::uint32_t index=0;index<std::uint32_t(list.count_0);++index){
   auto* objective=impl_->resolve_objective(list.children_4->slots[index]);
   if(!objective){error="Quest::SetState could not resolve an Objective during Register";return false;}
   if(!objective->compiled_8)continue; // Objective_EventReceiver::Register is a source no-op when uncompiled.
   if(objective->dispatch_0!=of::Dispatch::gather_loot){
    error="ObjectiveList::Register requires an unwired non-GatherLoot Objective provider";return false;
   }
   if(!register_gather_loot_objective(objective->ref.action.identity,inventory,
                                      script_context,start_script,error))return false;
  }
 }
 error.clear();return true;
}
bool Owner::close(std::string& error){
 if(impl_->closed){error.clear();return true;}
 if(impl_->busy){error="Native Quest owner is executing";return false;}
 impl_->busy=true;struct Guard{Impl& owner;~Guard(){owner.busy=false;}}guard{*impl_};error.clear();
 while(!impl_->gather_loot.empty()){
  const auto found=impl_->gather_loot.begin();const auto identity=found->first;
  // Close is the Objective teardown boundary. Retire each receiver and its
  // inventory list-30 reference before the Objective factory destroys it.
  auto& binding=*found->second;
  if(binding.attached){bool detached=false;
   if(impl_->current_level_events.detach(binding.event_type,identity,detached,error)!=LevelEventStatus::complete)return false;
   if(!detached){error="GatherLoot EventManager receiver disappeared during Owner close";return false;}
   binding.attached=false;
  }
  if(binding.inventory_registered){
   if(!static_cast<data::FreshInventoryOwnedV4*>(binding.quantity_context)->unregister_quest_gathering_item_id(binding.item_id,error))return false;
   binding.inventory_registered=false;
  }
  impl_->gather_loot.erase(found);
 }
 if(!impl_->run(0,true,error)||!impl_->run(1,true,error))return false;
 // InitQuests publishes only after all row providers return. A failed row can
 // therefore own constructed children outside the Save vectors. Close their
 // genuine D1 bodies while all factory/array leases still belong to this context.
 for(auto at=impl_->slots.begin();at!=impl_->slots.end();){
  auto& slot=*at->second;
  if(slot.value&&slot.constructed){
   scalar::Result result;
   if(slot.value->destroy(&result)!=scalar::Status::complete){
    error="Native unpublished Quest cleanup failed at operation "+std::to_string(unsigned(result.last_operation));return false;
   }
   ++impl_->result.unpublished_destroyed;
  }
  at=impl_->slots.erase(at);
 }
 impl_->current_level_events.clear();
 impl_->closed=true;return true;
}
bool Owner::owns_save(const data::PlayerSavegameV1* save) const noexcept{return impl_->save.get()==save;}
const Receipt& Owner::receipt() const noexcept{return impl_->result;}
scalar::Record* Owner::resolve(const logs::QuestRef* ref) noexcept{auto* value=impl_->resolve(ref);return value?&value->record():nullptr;}
}
