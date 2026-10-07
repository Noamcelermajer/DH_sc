#include "savegame_options_v1.hpp"

namespace dh2::data::savegame_options_v1 {
Status Owner::deliver_record(const char* name,const Definition* definition,std::int32_t value){
    if(!name||!definition)return Status::invalid_argument;
    try{options_.insert_or_assign(std::string(name),Record{definition,value});return Status::complete;}
    catch(...){return Status::storage_failure;}
}
Status Owner::has_option(const char* name,bool* out)const noexcept{
    if(!name||!out)return Status::invalid_argument;
    *out=options_.find(name)!=options_.end();return Status::complete;
}
Status Owner::get_option(const char* name,std::int32_t* out)const noexcept{
    if(!name||!out)return Status::invalid_argument;
    const auto at=options_.find(name);*out=at==options_.end()?-1:at->second.value;return Status::complete;
}
Status Owner::is_option_toggled(const char* name,bool* out)const noexcept{
    if(!name||!out)return Status::invalid_argument;
    const auto at=options_.find(name);
    if(at==options_.end()){*out=false;return Status::complete;}
    const auto* row=at->second.definition;
    if(!row)return Status::missing_definition;
    *out=row->type==0&&at->second.value==row->toggled_value;return Status::complete;
}
Status get_saved_option(const Application* app,const char* key,std::int32_t* out)noexcept{
    if(!app||!app->identity||!app->manager||!key||!out)return Status::invalid_argument;
    const auto* retained=app->manager;bool has=false;
    auto status=retained->has_option(key,&has);if(status!=Status::complete)return status;
    if(!has){*out=0;return Status::complete;}
    return retained->get_option(key,out);
}
Status is_saved_option_on(const Application* app,const char* key,bool* out)noexcept{
    if(!app||!app->identity||!app->manager||!key||!out)return Status::invalid_argument;
    const auto* retained=app->manager;bool has=false;
    auto status=retained->has_option(key,&has);if(status!=Status::complete)return status;
    if(!has){*out=false;return Status::complete;}
    return retained->is_option_toggled(key,out);
}
}
