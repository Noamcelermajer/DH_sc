#pragma once
#include <android/asset_manager.h>
#include <memory>
#include <string>
#include <cstdint>
#include "item_presentation_v5.hpp"

namespace dh2::android_ui {
// Synchronous borrowed source services. Creation publishes a result only after
// the original caller reaches persistence; invalid class is success/no-result.
// The real authored Start button calls Assign before NativeStartGame. The
// latter invokes an explicit development Crypt continuation over the actual
// assigned owner; the full original NativeStartGame Save/Level body is open.
// World loading occurs only after the GL owner's menu delivery unwinds.
struct FrontRuntimeServices {
    void* context{};
    bool (*create_save_slot)(void*,const std::string& name,const std::string& character,
                            std::int32_t& slot,bool& publish_result,std::string&){};
    bool (*assign_save_slot)(void*,std::int32_t slot,std::int32_t ordinal,std::string&){};
    bool (*eabi_integer)(void*,double,std::int32_t&,std::string&){};
    bool (*request_start_game)(void*,bool has_numeric_difficulty,std::int32_t requested_difficulty,
                               std::int32_t& selected_slot,std::string&){};
    // Borrow the sole native DebugSwitches owner, including its fresh source
    // load/query effects. The frontend never constructs another debug map.
    bool (*debug_load)(void*,std::string&){};
    bool (*debug_query)(void*,const char* key,std::string&){};
    bool (*change_preview_slot)(void*,std::int32_t slot,bool force,std::string&){};
};
// Retained authored HUD owner. Movie/font/texture CPU state survives GL
// recreation; the connected status view borrows actual world properties.
class OriginalUiSession {
public:
    OriginalUiSession();
    ~OriginalUiSession();
    OriginalUiSession(const OriginalUiSession&)=delete;
    OriginalUiSession& operator=(const OriginalUiSession&)=delete;
    bool initialize(AAssetManager*,std::string&);
    void bind_front_runtime(const FrontRuntimeServices&);
    bool consume_launch_request(std::int32_t& slot);
    bool game_difficulty_count(std::uint32_t& count,std::string&);
    bool load_front_screen(const std::string& private_directory,const std::string& screen,std::string&);
    bool load_health_panel(const std::string& private_directory,std::string&);
    bool attach_player(const std::string& private_directory,std::string&);
    bool render_player(int width,int height,const std::int32_t*,std::size_t,
                       std::uintptr_t character,std::string&);
    bool render(int width,int height,std::string&);
    std::string consume_menu_sound(); // GL owner thread; drains one source request
    std::string consume_menu_audio(); // GL owner -> Android audio control delivery
    bool debug_menu_sound(const std::string& probe,std::string&);
    // Returns a descriptor which borrows this session's live StringManager
    // cache and the supplied immutable Item/Character tables. The returned
    // context remains valid until this session is destroyed or rebound.
    data::ItemTextServicesV5 item_text_services(const data::ItemTable&,
                                               const data::CharacterTable&) noexcept;
    bool touch(float x,float y,int action,std::string&);
    bool active() const;
    bool overlays_player() const;
    void deactivate();
private:
    struct Impl;
    std::unique_ptr<Impl> impl_;
};
}
