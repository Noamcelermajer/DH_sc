// Reuse the genuine decoded-table/retained-VM fixture. The spell level below
// is an explicit host service, not evidence of native Save/faery completion.
#define main existing_player_session_main
#include "../../level-world/tests/player_skill_session_v1.cpp"
#undef main

int native_spell_fixture(void* p,const s::NativeRequest& q,const dh2_script_value* a,
 std::uint32_t n,dh2_script_value* out,std::uint32_t cap,std::uint32_t* returned,char* error,std::size_t size){
 if(q.domain==s::Domain::character && q.character_function==dh2::character_native_bindings::Function::character_get_current_spell_info){
  result(out,cap,returned,0);return 0;
 }
 return Fixture::native(p,q,a,n,out,cap,returned,error,size);
}
void configure(Fixture& f,Catalogue& cat){
 f.session.reset();s::Configuration c;c.character=CHAR;c.ais=&f.ais;c.tables=cat.tables;
 c.providers.context=&f;c.providers.resolve=Fixture::resolve;c.providers.native=native_spell_fixture;
 std::string error;f.session=s::Session::adopt(s::Vm(dh2_script_vm_create_deferred(8*1024*1024)),std::move(c),error);
 check(bool(f.session),error.c_str());
 check(!f.session->bind_ais_functions(error)&&!f.session->bind_character_functions(error),error.c_str());
}
int main(int argc,char** argv){try{
 check(argc==3,"cache and temporary directory required");Catalogue cat(argv[1]);
 Fixture f(argv[1],std::filesystem::path(argv[2])/"first",cat,"KnightPlayerBase",false);
 Fixture other(argv[1],std::filesystem::path(argv[2])/"second",cat,"KnightPlayerBase",false);
 configure(f,cat);configure(other,cat);f.common();other.common();
 auto* original=f.session->vm();s::LoadResult loaded{};Return r;
 f.overlay("fixture/integers","function seed() SetInt('Faery_Cooldown',777); SetInt('Alias16038',91) end; "
  "function retained() return GetInt('Faery_Cooldown'),GetInt('Alias16275') end; "
  "function unsupported() local ok=pcall(function() SetInt(1.5,2) end); return ok end");
 check(!f.load("fixture/integers",loaded)&&!f.call("seed",{},r),"integer seed failed");
 check(!f.call("retained",{},r)&&r.number==777,"session integer was not retained");
 check(!f.call("retained",{},r,1)&&r.number==91,"source hash collision behavior changed");
 other.overlay("fixture/isolation","function isolated() return GetInt('Faery_Cooldown') end");
 check(!other.load("fixture/isolation",loaded)&&!other.call("isolated",{},r)&&r.number==0,"integer map leaked between characters");
 check(!f.load("data/scripts/skills/_commons.luac",loaded),"skill common load failed");
 dh2_script_value id{};id.type=3;id.number=0;unsigned updates=0;
 for(const char* name:{"faerie_rocky","faerie_hotty","faerie_wetty","faerie_windy"}){
  std::string skill=name;check(!f.call("DeclareSkill",{f.string(skill),id},r),"declare failed");
  check(!f.load("data/scripts/skills/"+skill+".luac",loaded),"unchanged faery script load failed");
  check(!f.call("SetSkill",{f.string(skill),id},r),"select failed");
  check(!f.call("OnSkillUpdate",{},r)&&r.count==0,"original elemental faery update failed");++updates;
 }
 check(f.session->vm()==original,"integer integration replaced owning VM");
 check(!f.call("retained",{},r)&&r.number==777,"script loads reset the private map");
 const auto epoch=dh2_script_vm_required_failure_epoch(original);
 check(f.call("unsupported",{},r)==-5&&!r.boolean&&dh2_script_vm_required_failure_epoch(original)==epoch+1,
  "caught unsupported projection was accepted as success");
 f.overlay("fixture/close","gc=newproxy(true); getmetatable(gc).__gc=function() SetInt('closed',81); assert(GetInt('closed')==81); Trace('close integer owner live') end");
 check(!f.load("fixture/close",loaded),"close fixture failed");auto calls=f.native_names.size();f.session.reset();
 check(f.native_names.size()==calls+1&&f.native_names.back()=="Trace","integer receiver died before VM finalizer");
 std::cout<<"{\"validation\":\"PASS\",\"unchanged_elemental_faery_updates\":"<<updates
  <<",\"spell_level_service\":\"host_fixture\",\"single_VM\":true,\"private_map_isolation\":true,\"caught_missing_service_guard\":true,\"native_device_verified\":false}\n";
 return 0;
}catch(const std::exception& e){std::cerr<<e.what()<<'\n';return 1;}}
