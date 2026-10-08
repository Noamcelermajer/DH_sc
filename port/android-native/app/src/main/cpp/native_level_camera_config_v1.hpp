#pragma once

#include <cmath>
#include <cstdlib>
#include <string>
#include <string_view>

namespace dh2::native::level_camera_config_v1 {

struct ClipPlanes {
    float near_clip=0.0f;
    float far_clip=0.0f;
};

inline bool xml_space(char c) noexcept {
    return c==' '||c=='\t'||c=='\r'||c=='\n';
}

inline bool xml_name_boundary(char c) noexcept {
    return xml_space(c)||c=='<'||c=='/';
}

inline bool attribute_number(std::string_view xml,std::string_view name,float* out) {
    if(!out||name.empty()||xml.size()>1024*1024)return false;
    std::size_t at=0;
    while((at=xml.find(name,at))!=std::string_view::npos){
        const bool left=at==0||xml_name_boundary(xml[at-1]);
        std::size_t cursor=at+name.size();
        const bool right=cursor==xml.size()||xml_space(xml[cursor])||xml[cursor]=='=';
        if(left&&right){
            while(cursor<xml.size()&&xml_space(xml[cursor]))++cursor;
            if(cursor==xml.size()||xml[cursor++]!='='){at+=name.size();continue;}
            while(cursor<xml.size()&&xml_space(xml[cursor]))++cursor;
            if(cursor==xml.size()||(xml[cursor]!='\''&&xml[cursor]!='"'))return false;
            const char quote=xml[cursor++];
            const auto end=xml.find(quote,cursor);
            if(end==std::string_view::npos||end==cursor||end-cursor>64)return false;
            const std::string text(xml.substr(cursor,end-cursor));
            char* parsed_end=nullptr;
            const float value=std::strtof(text.c_str(),&parsed_end);
            if(parsed_end!=text.c_str()+text.size()||!std::isfinite(value))return false;
            *out=value;
            return true;
        }
        at+=name.size();
    }
    return false;
}

inline bool parse_clip_planes(std::string_view level_config_xml,
                              ClipPlanes* out) noexcept {
    if(!out)return false;
    try {
        ClipPlanes value{};
        if(!attribute_number(level_config_xml,"camera_znear",&value.near_clip)||
           !attribute_number(level_config_xml,"camera_zfar",&value.far_clip)||
           !(value.near_clip>0.0f&&value.far_clip>value.near_clip))return false;
        *out=value;
        return true;
    }catch(...){return false;}
}

} // namespace dh2::native::level_camera_config_v1
