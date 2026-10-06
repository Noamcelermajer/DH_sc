#include "native_quest_owner.hpp"
#include "quest_instance_v1.hpp"
#include "quest_condition_factory_v1.hpp"
#include "quest_objective_factory_v1.hpp"
#include "quest_reward_factory_v1.hpp"
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
 std::map<std::uintptr_t,std::unique_ptr<c::Array>> ca;
 std::map<std::uintptr_t,std::unique_ptr<o::Array>> oa;
 std::map<std::uintptr_t,std::unique_ptr<r::Array>> ra;
 cf::Runtime condition_factory;
 of::Runtime objective_factory;
 rf::Runtime reward_factory;
 std::unique_ptr<logs::Runtime> log_runtime[2];
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
 std::int32_t delete_objective(std::uintptr_t identity,const o::ObjectiveRef* expected=nullptr){
  const auto found=objectives.find(identity);
  if(found==objectives.end()||(expected&&&found->second->ref!=expected))return 1;
  of::Result r;return objective_factory.destroy(*found->second,true,&r)==of::Status::complete?0:1;
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
   [](void* raw,o::List&,const o::Definition&,std::int32_t kind,o::ObjectiveRef** out)->std::int32_t{of::Result r;auto& owner=*static_cast<Impl*>(raw);if(owner.objective_factory.create(kind,&r)!=of::Status::complete)return 1;*out=&r.record->ref;return 0;},nullptr,
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
   if(request.operation!=scalar::Operation::action_virtual||request.offset!=4)return 1;
   return static_cast<Impl*>(raw)->delete_objective(request.target);
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
bool Owner::close(std::string& error){
 if(impl_->closed){error.clear();return true;}
 if(impl_->busy){error="Native Quest owner is executing";return false;}
 impl_->busy=true;struct Guard{Impl& owner;~Guard(){owner.busy=false;}}guard{*impl_};error.clear();
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
 impl_->closed=true;return true;
}
const Receipt& Owner::receipt() const noexcept{return impl_->result;}
scalar::Record* Owner::resolve(const logs::QuestRef* ref) noexcept{auto* value=impl_->resolve(ref);return value?&value->record():nullptr;}
}
