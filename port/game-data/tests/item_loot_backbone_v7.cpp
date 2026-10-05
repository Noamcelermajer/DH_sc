// Replays Adam's pinned original-derived cases and composes the new modules
// with our selected V4/V5 library. Text/debug services are explicit fixtures.
#include "../loot_power_creation_v7.hpp"
#include "../fresh_inventory_owned_v4.hpp"
extern "C" {
#include "../../random/random.h"
}
#include <array>
#include <cstring>
#include <fstream>
#include <iostream>
#include <stdexcept>
using namespace dh2::data;
using Raw=std::vector<std::uint8_t>;
static unsigned checks;
static void ck(bool okay,const std::string& why="check failed") {
 ++checks;if(!okay)throw std::runtime_error(why+" at check "+std::to_string(checks));
}
static Raw file(const std::string& p){std::ifstream f(p,std::ios::binary);ck(bool(f),p);return {std::istreambuf_iterator<char>(f),{}};}
static Bytes bytes(const Raw& r){return {r.data(),r.size()};}
static void word(Raw& b,std::uint32_t x){auto* p=reinterpret_cast<const std::uint8_t*>(&x);b.insert(b.end(),p,p+4);}
struct Reader {
 const Raw& b;std::size_t at{};
 std::uint32_t u(){ck(at<=b.size()&&b.size()-at>=4,"truncated fixture");std::uint32_t n;std::memcpy(&n,b.data()+at,4);at+=4;return n;}
 Raw block(){auto n=u();ck(at<=b.size()&&n<=b.size()-at);Raw r(b.begin()+at,b.begin()+at+n);at+=n;return r;}
};
extern "C" std::uint32_t dh2_loot_power_creation_fixture_v7(const std::uint8_t*,std::uint8_t*);
struct Random {
 dh2_random_state live{};unsigned draws{};bool fail{},throws{};
 explicit Random(std::uint32_t seed=1,std::uint32_t calls=0):live{{seed,0x98765432u},{calls,37}}{}
 static bool next(void* p,std::int32_t bound,std::uint32_t stream,std::int32_t& out,std::string& error){
  auto& r=*static_cast<Random*>(p);ck(stream==0,"unexpected source RNG stream");
  out=dh2_random_next(&r.live,std::uint32_t(bound),stream);++r.draws;
  if(r.throws)throw std::runtime_error("declared RNG throw after draw");
  if(r.fail){error="declared RNG failure after draw";return false;}return true;
 }
 InventoryRandomServiceV4 service(){return {this,next};}
};
struct Context {
 const ItemTable* items{};ItemPresentationOwnerV5* presentation{};LootPowerCreationV7* creation{};
 bool fail_append{},empty_append{},reenter{},fail_text{},forget_reentry{};unsigned debug{},appends{};
 static const Item* metadata(void* p,const ItemInstanceV1& i,std::string& error){
  auto& c=*static_cast<Context*>(p);auto* found=item(*c.items,i.id);if(!found)error="actual item metadata missing";return found;
 }
 static bool text(void* p,ItemInstanceV1& i,const ItemTextRequestV5& q,ItemTextResponseV5& r,std::string& out,std::string& error){
  auto& c=*static_cast<Context*>(p);if(c.fail_text){error="declared text failure";return false;}
  if(c.forget_reentry){c.forget_reentry=false;std::string nested;ck(!c.presentation->forget(i,nested)&&nested.find("reentry")!=std::string::npos);}
  // Controlled service transport; this does not implement localization or
  // source varargs. Original text arithmetic is exercised by separate gold.
  switch(q.operation){
   case ItemTextOperationV5::constant:r.value=17;return true;
   case ItemTextOperationV5::integer_string:if(q.value==-1){error="required null description continuation";return false;}r.text="OID"+std::to_string(q.value);return true;
   case ItemTextOperationV5::class_name:r.value=q.value;return true;
   case ItemTextOperationV5::parse_varargs:case ItemTextOperationV5::parse_ex:
    out+=q.input?q.input:"";for(unsigned j=0;j<q.count;++j)out+=":"+std::to_string(q.arguments[j].integer);return true;
  }error="required formatter fixture unavailable";return false;
 }
 ItemTextServicesV5 text_service(){return {this,metadata,text};}
 static bool power(void* p,const LootPowerRequestV7& q,std::int32_t& result,std::string& error){
  auto& c=*static_cast<Context*>(p);
  if(q.operation!=LootPowerOperationV7::add_power){++c.debug;result=0;return true;}
  ++c.appends;if(c.fail_append){error="declared append failure";return false;}if(c.empty_append)return true;
  if(c.reenter){c.reenter=false;LootEntry32V2 entry{};entry.words[1]=0;std::string nested;ck(!c.creation->add_powers(entry,*q.item,0,0,0,{p,power},nested)&&nested.find("reentry")!=std::string::npos);}
  return c.presentation->add_power(*q.item,q.power,q.difficulty,c.text_service(),error);
 }
 static void observe(void* p,FreshInventoryOwnedV4&,const OwnedInventoryRequestV4& q){if(q.operation==OwnedInventoryOperationV4::destroy_item){std::string error;if(!static_cast<Context*>(p)->presentation->forget(*q.item,error))throw std::runtime_error(error);}}
 static bool inventory(void* p,FreshInventoryOwnedV4&,const OwnedInventoryRequestV4& q,OwnedInventoryResponseV4& response,std::string& error){
  auto& c=*static_cast<Context*>(p);auto text=c.text_service();
  switch(q.operation){
   case OwnedInventoryOperationV4::update_name:return item_update_name_v5(*q.item,text,error);
   case OwnedInventoryOperationV4::update_stats:return item_update_stats_v5(*q.item,text,error);
   case OwnedInventoryOperationV4::update_requirements:return item_update_requirements_v5(*q.item,text,error);
   case OwnedInventoryOperationV4::debug_load:case OwnedInventoryOperationV4::debug_query:++c.debug;response.value=0;return true;
   case OwnedInventoryOperationV4::destroy_item:return c.presentation->forget(*q.item,error);
   default:error="required inventory continuation unavailable";return false;
  }
 }
};
int main(int argc,char** argv){try{
 ck(argc==3,"expected golden fixture and canonical pydata directory");std::string error;
 const char* names[]={"item_powers_pyarray.bin","item_powers_pyarraynames.bin","item_powers_pystructnames.bin","item_powers_monopoly_pyarray.bin","item_powers_monopoly_pyarraynames.bin","item_powers_monopoly_pystructnames.bin","loot_table_pyarray.bin","loot_table_pyarraynames.bin","loot_table_pystructnames.bin"};
 std::array<Raw,9> raw;for(unsigned i=0;i<9;++i)raw[i]=file(std::string(argv[2])+"/"+names[i]);
 ck(raw[6].size()==284104,"unexpected canonical quantity section");Raw quantities(raw[6].begin()+283108,raw[6].end());
 LootPowerInputsV7 input{bytes(raw[0]),bytes(raw[1]),bytes(raw[2]),bytes(raw[3]),bytes(raw[4]),bytes(raw[5]),bytes(quantities),bytes(raw[7]),bytes(raw[8])};
 ItemPowerTablesV5 definitions;ck(definitions.load(input.powers,input.power_names,input.power_schema,error),error);
 LootPowerResourcesV7 resources;ck(resources.load(input,definitions.borrow(),error),error);auto pinned=resources.borrow();
 ck(pinned.lists().size()==121&&pinned.quantities().size()==39&&pinned.powers().rows().size()==937);
 ck(&pinned.powers().rows()==&definitions.borrow().rows(),"duplicated power authority");
 auto gold=file(argv[1]);Reader r{gold};ck(r.u()==0x3756504c);auto count=r.u();unsigned weighted=0,quantity=0,values=0;
 while(count--){auto command=r.block(),expected=r.block();Reader c{command};auto op=c.u();auto seed=c.u(),calls=c.u(),n=c.u();LootRandom8V2 fixture{seed,calls};Random live(seed,calls);auto service=live.service();std::int32_t legacy=0,actual=0;int a=-1,b=-1;
  if(op==0){std::vector<LootPowerChoiceV7> rows(n);for(auto& row:rows){row.power=static_cast<std::int32_t>(c.u());auto w=c.u();std::memcpy(&row.probability,&w,1);}std::uint32_t x=0,y=0;a=dh2_loot_power_select_v7(&x,&fixture,rows.data(),n);b=loot_power_select_v7(&y,service,rows.data(),n,error);std::memcpy(&legacy,&x,4);std::memcpy(&actual,&y,4);++weighted;}
  else if(op==1){auto bonus=static_cast<std::int32_t>(c.u());std::vector<LootQuantityChoiceV7> rows(n);for(auto& row:rows){auto w=c.u();std::memcpy(&row,&w,4);}a=dh2_loot_quantity_v7(&legacy,&fixture,rows.data(),n,bonus);b=loot_quantity_v7(&actual,service,rows.data(),n,bonus,error);++quantity;}
  else{ck(op==2);auto bonus=static_cast<std::int32_t>(c.u());ItemRecord164 record{};for(auto& w:record.words)w=static_cast<std::int32_t>(c.u());std::vector<LootPowerGold8V7> powers(n);for(auto& p:powers){p.multiplier=static_cast<std::int32_t>(c.u());p.bonus=static_cast<std::int32_t>(c.u());}a=dh2_loot_item_value_v7(&legacy,&fixture,&record,powers.data(),n,bonus);b=loot_value_v7(&actual,service,&record,powers.data(),n,bonus,error);++values;}
  ck(a==0&&b==0&&legacy==actual&&c.at==command.size(),error);Raw observed;word(observed,std::uint32_t(actual));word(observed,live.live.seeds[0]);word(observed,live.live.counters[0]);ck(observed==expected,"original RNG/value comparison failed");ck(fixture.seed==live.live.seeds[0]&&fixture.calls==live.live.counters[0]);ck(live.live.seeds[1]==0x98765432u&&live.live.counters[1]==37,"other RNG stream changed");
 }
 auto cases=r.u();Raw commands,expected;word(commands,cases);for(unsigned i=0;i<cases;++i){auto command=r.block(),result=r.block();commands.insert(commands.end(),command.begin(),command.end());word(expected,result.size());expected.insert(expected.end(),result.begin(),result.end());}ck(r.at==gold.size());
 Raw fixture;for(unsigned i=0;i<9;++i){const auto& data=i==6?quantities:raw[i];word(fixture,data.size());fixture.insert(fixture.end(),data.begin(),data.end());}fixture.insert(fixture.end(),commands.begin(),commands.end());Raw output(expected.size()+1024);auto size=dh2_loot_power_creation_fixture_v7(fixture.data(),output.data());ck(size==expected.size());output.resize(size);ck(output==expected,"original coordinator comparison failed");
 LootTablesV2 loots;ck(loots.load(bytes(raw[6]),input.loot_names,input.loot_schema,error),error);
 Random random;auto random_service=random.service();LootPowerCreationV7 creation(pinned,random_service);ItemPresentationOwnerV5 presentation(definitions.borrow());Context context{&loots.borrow().items(),&presentation,&creation};
 PropertyState properties;FreshInventoryOwnedV4 inventory(0x100000001,loots.borrow(),random_service,12,properties);ck(inventory.properties()==&properties);
 OwnedInventoryServicesV4 effects{&context,Context::inventory,Context::observe};LootPowerServicesV7 power_services{&context,Context::power};unsigned stored=0;
 // This explicit source-field fixture permits independent 121x3 creation
 // cases without substituting inventory fullness behaviour.
 inventory.project_unlimited(true);
 for(unsigned id=0;id<pinned.lists().size();++id)for(int difficulty=0;difficulty<3;++difficulty){
  std::unique_ptr<ItemInstanceV1> item;ck(inventory.create_item(664,1,RetainedItemSlotV4{&item},effects,error),error);auto* identity=item.get();LootEntry32V2 entry{};entry.words[1]=id;
  ck(creation.add_powers(entry,*item,0,1,difficulty,power_services,error),error);ck(loot_item_value_v7(*item,inventory.table(),definitions.borrow(),random_service,0,context.text_service(),error),error);
  ck(!item->name.empty());auto* powers=presentation.powers(*item);ck(powers&&powers->size()==item->powers.size());for(const auto& power:*powers)ck(!power.description.empty());
  std::int32_t index=-1;ck(inventory.add_item(item,true,false,index,effects,error),error);ck(!item&&index>=0&&inventory.items().at(index)->item.get()==identity);++stored;
 }
 ck(random.draws>0&&random.live.seeds[1]==0x98765432u&&random.live.counters[1]==37);
 unsigned guards=0;ItemInstanceV1 sample;sample.id=664;LootEntry32V2 entry{};entry.words[1]=0;
 context.empty_append=true;ck(!creation.add_powers(entry,sample,0,1,0,power_services,error)&&sample.powers.empty()&&error.find("append one")!=std::string::npos);context.empty_append=false;++guards;
 context.fail_append=true;ck(!creation.add_powers(entry,sample,0,1,0,power_services,error)&&sample.powers.empty());context.fail_append=false;++guards;
 context.reenter=true;context.forget_reentry=true;ck(creation.add_powers(entry,sample,0,1,0,power_services,error),error);ck(!sample.powers.empty());++guards;ck(presentation.forget(sample,error));sample.powers.clear();
 context.fail_text=true;ck(!creation.add_powers(entry,sample,0,1,0,power_services,error)&&sample.powers.size()==1&&presentation.powers(sample)->size()==1);context.fail_text=false;++guards;ck(presentation.forget(sample,error));sample.powers.clear();
 sample.value=-123;ck(!loot_item_value_v7(sample,inventory.table(),definitions.borrow(),random_service,0,{},error)&&sample.value!=-123);++guards;
 std::int32_t sentinel=42;auto before=random.draws;ck(loot_quantity_v7(&sentinel,random_service,nullptr,0,0,error)==-2&&sentinel==42&&before==random.draws);++guards;
 LootQuantityChoiceV7 row{1,100};random.fail=true;error.clear();ck(loot_quantity_v7(&sentinel,random_service,&row,1,0,error)==-2&&sentinel==42&&random.draws==before+1&&error=="declared RNG failure after draw");random.fail=false;++guards;
 random.throws=true;error.clear();ck(loot_quantity_v7(&sentinel,random_service,&row,1,0,error)==-2&&sentinel==42&&random.draws==before+2&&error.find("threw")!=std::string::npos);random.throws=false;++guards;
 inventory.project_unlimited(false);std::unique_ptr<ItemInstanceV1> full;ck(inventory.create_item(664,1,RetainedItemSlotV4{&full},effects,error),error);auto* identity=full.get();std::int32_t index=-1;ck(!inventory.add_item(full,true,false,index,effects,error)&&!full&&inventory.items().back()->item.get()==identity&&error=="required inventory continuation unavailable");++guards;
 for(const auto& slot:inventory.items())ck(presentation.forget(*slot->item,error));resources=LootPowerResourcesV7{};definitions=ItemPowerTablesV5{};for(auto& data:raw)data.clear();quantities.clear();ck(creation.resources().lists().size()==121&&pinned.powers().rows().size()==937);
 std::cout<<"{\"validation\":\"PASS\",\"weighted_original_cases\":"<<weighted<<",\"quantity_original_cases\":"<<quantity<<",\"value_original_cases\":"<<values<<",\"coordinator_original_cases\":"<<cases<<",\"same_inventory_powered_items\":"<<stored<<",\"borrowed_rng_draws\":"<<random.draws<<",\"required_prefix_guards\":"<<guards<<",\"checks\":"<<checks<<",\"mismatches\":0,\"same_live_properties_rng\":true,\"text_debug_services_are_fixtures\":true,\"native_gameplay\":false,\"full_AddLoot\":false}\n";return 0;
 }catch(const std::exception& e){std::cerr<<e.what()<<'\n';return 1;}}
