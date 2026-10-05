#pragma once
#include "localization.hpp"
#include "hud_text_format_v1.hpp"
namespace gameswf {struct fn_call;}
namespace dh2::ui {
struct SwfMenuLaunchServicesV1 {
 void* context{};
 bool (*create)(void*,const std::string&,const std::string&,std::int32_t&,bool&,std::string&){};
 bool (*assign)(void*,std::int32_t,std::int32_t,std::string&){};
 bool (*eabi_integer)(void*,double,std::int32_t&,std::string&){};
 // The provider owns fresh MenuMainMenu singleton acquisition and the
 // ChangeCharacterToDisplay continuation over its canonical preview slot.
 bool (*change_preview_slot)(void*,std::int32_t,bool force,std::string&){};
 // Declared development continuation, invoked by the real authored
 // NativeStartGame action after its preceding Assign call has returned.
 // This does not implement NativeStartGame's original Level/Save body.
 bool (*request_start_game)(void*,bool has_numeric_difficulty,std::int32_t requested_difficulty,std::string&){};
};
// Source NativeCreateSaveSlot: argc2; name then class string conversion;
// mandatory complete source creation provider; publish actual persisted slot
// only when that caller reports its reached result store.
bool swf_menu_create_save_slot_v1(const gameswf::fn_call&,const SwfMenuLaunchServicesV1&,std::string&);
// Source NativeAssignSaveSlotToPlayer has no argc test. A native <2 guard is
// explicit. Extra args ignored. Convert arg0 number/EABI, then arg1 number;
// check first negative before the second EABI. AS result is never written.
bool swf_menu_assign_save_slot_v1(const gameswf::fn_call&,const SwfMenuLaunchServicesV1&,std::string&);
// NativeSetSaveSlotIDToMainMenu: arg0 number/EABI first; optional arg1 bool
// only if argc>1, then the borrowed singleton/preview dispatch. No result store
// or negative-slot gate. Native argc<1 is an explicit unsafe-caller guard.
bool swf_menu_preview_save_slot_v1(const gameswf::fn_call&,const SwfMenuLaunchServicesV1&,std::string&);
// Partial AS gateway only: classify the original argc1/is_number argument,
// convert a finite numeric request through borrowed EABI, then dispatch the
// explicitly declared development continuation. AS result remains untouched.
bool swf_menu_start_game_development_v1(const gameswf::fn_call&,const SwfMenuLaunchServicesV1&,std::string&);
// NativeGetParsedString: exactly string+actual AS array, fresh indexed reads,
// actual tags and source numeric conversions, then existing parseEx kernel.
// Reuses the same Localization cache; no second StringManager authority.
bool swf_menu_parsed_string_v1(const gameswf::fn_call&,Localization&,
 const LocalizationServices&,const HudTextServicesV1&,const SwfMenuLaunchServicesV1&,std::string&);
}
