#include "../player_skill_use_session_v1.hpp"
#define main retained_session_fixture_main
#include "player_skill_session_v1.cpp"
#undef main

namespace u=dh2::player_skill_use_session_v1;
struct Probe {u::Runtime* runtime;unsigned calls=0;};
int probe(void* raw,const dh2_script_value*,std::uint32_t,dh2_script_value*,std::uint32_t,
          std::uint32_t* returned,char*,std::size_t) noexcept {try{
    auto& p=*static_cast<Probe*>(raw);u::Result out{};out.value=99;auto before=out;std::string error="sentinel";
    check(p.runtime->check(u::List::skill,7,u::Check::usable,out,error)==-1 && !std::memcmp(&out,&before,sizeof(out)) && error=="sentinel","same Runtime check reentry changed output");
    check(p.runtime->invoke(u::List::skill,7,u::Callback::pre,out,error)==-1 && !std::memcmp(&out,&before,sizeof(out)) && error=="sentinel","same Runtime use reentry changed output");
    ++p.calls;*returned=0;return 0;
}catch(...){return DH2_SCRIPT_REQUIRED_SERVICE_FAILURE;}
}
int actual_constants(void* raw,const dh2_script_value* args,std::uint32_t count,dh2_script_value* out,
                     std::uint32_t cap,std::uint32_t* returned,char*,std::size_t) noexcept {try{
    auto& f=*static_cast<Fixture*>(raw);check(count==2,"source constants arity");const auto category=text(args[0]),key=text(args[1]);
    const auto& input=category=="AIStates" || category.rfind("AITargetList_",0)==0?f.catalogue.ai_constants:f.catalogue.design;
    dh2_pycst_view view{};dh2_pycst_result value{};
    check(!dh2_pycst_open(&view,input.data(),std::uint32_t(input.size())) && !dh2_pycst_get(&view,category.data(),std::uint32_t(category.size()),key.data(),std::uint32_t(key.size()),&value)&&value.found,"actual constant missing");
    result(out,cap,returned,float(value.value));return 0;
}catch(...){return DH2_SCRIPT_REQUIRED_SERVICE_FAILURE;}
}
void prepare(Fixture& f){f.common();p::source::Result result{};check(f.owner->prepare(&result)==p::source::Status::complete,"actual source preparation failed");
    // Real parser service fixture adds the AI constants namespace needed by
    // Bashdown. This changes no original script bytes or property/timer store.
    check(!dh2_script_vm_bind_source_values(f.session->vm(),"GetPyCst",actual_constants,&f),"actual constant provider binding failed");}
void fixture_load(Fixture& f,const std::string& source){
    static unsigned count=0;auto path="fixture/use/"+std::to_string(count++);f.overlay(path.c_str(),source);s::LoadResult r{};check(!f.load(path,r)&&r.source_success,"callback fixture load failed");
}
float global(Fixture& f,const char* name){dh2_script_value v{};check(!dh2_script_vm_get_global(f.session->vm(),name,&v)&&v.type==DH2_SCRIPT_NUMBER,"missing fixture counter");return v.number;}
int oracle_case(int argc,char** argv){
    check(argc==10,"oracle requires cache temp phase set-error set-count call-error count type");
    auto phase=std::stoi(argv[4]),set_error=std::stoi(argv[5]),set_count=std::stoi(argv[6]),call_error=std::stoi(argv[7]),count=std::stoi(argv[8]),type=std::stoi(argv[9]);
    Catalogue cat(argv[2]);Fixture f(argv[2],std::filesystem::path(argv[3])/"oracle",cat,"KnightPlayerBase");prepare(f);
    std::string result=type==0?"nil":type==1?"false":type==2?"true":type==3?"0":type==4?"-0":type==5?"0/0":type==6?"''":"'0'";
    std::string set="function SetSkill() set_calls=(set_calls or 0)+1; "+std::string(set_error?"error('set'); ":"")+std::string(set_count?"return 1,2":"")+" end; ";
    std::string body=call_error?"error('callback')":count?"return "+result+(count==2?",false":""):"";
    fixture_load(f,set+"function OnPreSkill() "+body+" end; OnSkill=OnPreSkill; OnPostSkill=OnPreSkill;");
    u::Runtime runtime(*f.session,*f.owner,CHAR);u::Result r{};std::string error;
    check(!runtime.invoke(u::List::skill,0,static_cast<u::Callback>(phase),r,error),"oracle fixture failed");
    std::cout<<"{\"value\":"<<r.value<<",\"calls\":"<<r.call_count<<",\"erased\":"<<r.erased<<",\"destroyed\":"<<r.destroyed<<",\"retained\":"<<runtime.retained_failed_returns()<<"}\n";
    f.session.reset();return 0;
}
int main(int argc,char** argv){try{
    if(argc>1 && std::string(argv[1])=="--oracle")return oracle_case(argc,argv);
    check(argc==3,"cache and real Debug directory required");Catalogue cat(argv[1]);Fixture f(argv[1],std::filesystem::path(argv[2])/"actual",cat,"KnightPlayerBase");prepare(f);
    u::Runtime runtime(*f.session,*f.owner,CHAR);u::Result r{};std::string error;unsigned actual=0,protocol=0,guards=0;
    const auto vm=f.session->vm();
    {
        dh2::ais_player_init_vcb::State alternate_ais{AIS+0x100,0xffffffff};
        s::Configuration config;config.character=CHAR+0x100;config.ais=&alternate_ais;config.tables=cat.tables;
        auto foreign=s::Session::adopt(s::Vm(dh2_script_vm_create_deferred(1024*1024)),std::move(config),error);
        check(bool(foreign),"foreign ownership fixture adoption failed");
        bool rejected=false;try{u::Runtime mismatched(*foreign,*f.owner,CHAR);}catch(const std::invalid_argument&){rejected=true;}
        check(rejected && foreign->stage()==s::Stage::created && foreign->character_identity()==CHAR+0x100 && f.session->vm()==vm,
              "Runtime accepted another Character's retained VM");++guards;
    }
    check(!runtime.check(u::List::skill,7,u::Check::usable,r,error)&&!r.value&&r.source_check.destroyed&&r.call_count==2,"authored passive usable differs");++actual;
    check(!runtime.check(u::List::skill,7,u::Check::active,r,error)&&r.value&&r.source_check.value_count==2&&r.call_count==2,"authored passive active lost second return");++actual;
    check(runtime.check(u::List::skill,0,u::Check::usable,r,error)==-1&&r.last_lua_status==-5&&!r.destroyed&&f.native_names.back()=="HasMana","uninitialized Bashdown mana accepted");++actual;
    check(runtime.invoke(u::List::skill,0,u::Callback::pre,r,error)==-1&&r.last_lua_status==-5&&!r.destroyed&&f.native_names.back()=="SetTargetListCharacterFilter","unbound source target filtering accepted");++actual;
    check(!runtime.invoke(u::List::skill,0,u::Callback::use,r,error)&&r.value&&r.decision==u::Decision::empty_success&&r.destroyed,"authored initial nil-target use differs");++actual;
    check(runtime.invoke(u::List::skill,0,u::Callback::post,r,error)==-1&&r.last_lua_status==-5&&!r.destroyed&&f.native_names.back()=="ClearTarget","unbound post target clear accepted");++actual;
    check(runtime.retained_failed_returns()==3,"failed source returns unexpectedly destroyed");

    fixture_load(f,"set_calls=0; check_calls=0; function SetSkill() set_calls=set_calls+1; return 'old',false end; function OnSkillCheck() check_calls=check_calls+1; return false,true,'third' end; function OnPreSkill() return '' end; function OnSkill() return 0 end; function OnPostSkill() error('post effect retained') end;");
    check(!runtime.check(u::List::skill,0,u::Check::usable,r,error)&&!r.value&&r.erased&&r.return_count==3,"all source returns/erase usable differs");++protocol;
    check(!runtime.check(u::List::skill,0,u::Check::active,r,error)&&r.value&&r.source_check.value_count==3,"active check projected wrong return");++protocol;
    check(global(f,"check_calls")==2&&global(f,"set_calls")==2,"checks replayed to inspect second return");++protocol;
    check(!runtime.invoke(u::List::skill,0,u::Callback::pre,r,error)&&r.value&&r.erased&&r.destroyed,"source empty string getBool was generic false");++protocol;
    check(!runtime.invoke(u::List::skill,0,u::Callback::use,r,error)&&!r.value&&r.decision==u::Decision::converted&&r.destroyed,"source number0 getBool differs");++protocol;
    check(!runtime.invoke(u::List::skill,0,u::Callback::post,r,error)&&r.last_lua_status>0&&r.destroyed&&r.decision==u::Decision::post_discard,"normal Post error skipped source destroy");++protocol;
    fixture_load(f,"function OnPreSkill() return end; function OnSkill() return -0 end; function OnSkillCheck() return 0/0, '' end");
    check(!runtime.invoke(u::List::skill,0,u::Callback::pre,r,error)&&r.value&&r.decision==u::Decision::empty_success,"Pre empty return is false");++protocol;
    check(!runtime.invoke(u::List::skill,0,u::Callback::use,r,error)&&!r.value,"source signed zero was true");++protocol;
    check(!runtime.check(u::List::skill,0,u::Check::usable,r,error)&&r.value,"source NaN was false");++protocol;
    check(!runtime.check(u::List::skill,0,u::Check::active,r,error)&&r.value,"source string temporary Lua bool differs");++protocol;
    fixture_load(f,"function SetSkill() set_effect=23; error('set') end; function OnPreSkill() error('unreached') end");
    check(!runtime.invoke(u::List::skill,0,u::Callback::pre,r,error)&&!r.value&&r.call_count==1&&r.destroyed&&r.decision==u::Decision::set_skill_error&&global(f,"set_effect")==23,"normal SetSkill failure lost effects/cleanup");++protocol;
    fixture_load(f,"function SetSkill() end; function OnPreSkill() pre_effect=31; error({}) end");
    auto failures=runtime.retained_failed_returns();check(runtime.invoke(u::List::skill,0,u::Callback::pre,r,error)==-1&&r.last_lua_status==-4&&!r.destroyed&&runtime.retained_failed_returns()==failures+1&&global(f,"pre_effect")==31,"unsupported error lost effects/prefix");++protocol;
    fixture_load(f,"function OnPreSkill() pcall(function() GetHostPlayer() end); return true end");
    failures=runtime.retained_failed_returns();check(runtime.invoke(u::List::skill,0,u::Callback::pre,r,error)==-1&&r.last_lua_status==-5&&!r.destroyed&&runtime.retained_failed_returns()==failures+1&&r.return_count==1,"caught required failure became success");++protocol;
    Probe controls{&runtime};check(!dh2_script_vm_bind(f.session->vm(),"fixture_reentry",probe,&controls),"probe binding failed");
    fixture_load(f,"function OnPreSkill() fixture_reentry(); return false end");check(!runtime.invoke(u::List::skill,0,u::Callback::pre,r,error)&&!r.value&&controls.calls==1,"Runtime reentry was accepted");guards+=2;
    r.value=99;auto before=r;error="sentinel";
    check(runtime.check(u::List::skill,0,static_cast<u::Check>(9),r,error)==-1&&!std::memcmp(&r,&before,sizeof(r))&&error=="sentinel","invalid check mutated output");++guards;
    check(runtime.invoke(u::List::skill,0,static_cast<u::Callback>(9),r,error)==-1&&!std::memcmp(&r,&before,sizeof(r))&&error=="sentinel","invalid callback mutated output");++guards;
    check(runtime.invoke(u::List::skill,15,u::Callback::use,r,error)==-1&&!std::memcmp(&r,&before,sizeof(r)),"source null slot manufactured use");++guards;
    const auto id=f.session->vm();
    check(runtime.invoke(u::List::skill,0,u::Callback::pre,*reinterpret_cast<u::Result*>(f.session.get()),error)==-1&&f.session->vm()==id,"Result aliases retained VM wrapper");++guards;
    check(runtime.invoke(u::List::skill,0,u::Callback::pre,*reinterpret_cast<u::Result*>(&runtime),error)==-1,"Result aliases Runtime wrapper");++guards;
    check(runtime.invoke(u::List::skill,0,u::Callback::pre,*reinterpret_cast<u::Result*>(f.owner.get()),error)==-1&&f.owner->state().owner==CHAR,"Result aliases prepared Owner");++guards;
    check(f.session->vm()==vm,"skill invocation replaced Player VM");
    f.session.reset(); // Close probe's Lua closure before borrowed Runtime/context.
    std::cout<<"{\"validation\":\"PASS\",\"actual_script_cases\":"<<actual<<",\"protocol_cases\":"<<protocol<<",\"guards\":"<<guards<<",\"same_vm\":true,\"Bashdown_target_mana_combat_complete\":false,\"FSM_activation\":false}\n";return 0;
}catch(const std::exception& e){std::cerr<<e.what()<<'\n';return 1;}}
