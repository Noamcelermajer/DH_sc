#pragma once
#include <android/asset_manager.h>
#include <cstddef>
#include <cstdint>
#include <string>
#include <array>
#include <vector>
namespace model_renderer {
void mod_directory(std::string);
void runtime_directory(std::string);
std::string profile_slot(int);
bool menu_debug_load(AAssetManager*,std::string&);
bool menu_debug_query(AAssetManager*,const char*,std::string&);
bool create_menu_save_slot(AAssetManager*,const std::string&,const std::string&,std::int32_t&,bool&,std::string&,void*,bool (*)(void*,std::uint32_t*,std::string&));
bool assign_menu_save_slot(std::int32_t slot,std::int32_t ordinal,std::string&);
bool selected_menu_save_slot(std::int32_t&,std::string&);
bool select_menu_preview_slot(std::int32_t,bool,std::string&);
bool request_menu_start(bool,std::int32_t,std::int32_t&,std::string&);
std::string start_menu_game(std::int32_t,AAssetManager*);
std::vector<std::uint8_t> read_asset(AAssetManager*,const std::string&);
void reset_context();
void deactivate();
void unload_game_to_menu();
bool active();
std::string load(const std::uint8_t*,std::size_t,AAssetManager*);
std::string load_menu_background(AAssetManager*);
void draw_menu_background(int width,int height);
bool class_scene_active();
bool class_scene_input_enabled();
std::string load_class_scene(AAssetManager*);
bool select_class_scene(int index,int dt_ms,std::string&);
void draw_class_scene(int width,int height);
std::string load_world(const std::uint8_t*,std::size_t,AAssetManager*);
void move_axis(float x,float y);
void focus_object(int index);
std::string set_object_state(int index,const std::string& state);
std::string spawn_character(const std::string& exact_name);
std::string debug_character_hit(const std::string& exact_name,std::uint32_t raw_damage);
std::string debug_player_skill_cooldown(std::uint32_t delay_ms);
std::string debug_player_skill_check(std::uint32_t slot);
std::string debug_player_mana(std::uint32_t amount);
std::string debug_player_scalar(std::int32_t value,bool write);
std::string debug_player_death();
std::string set_combat_target(int index,int target);
std::string player_attack(int target=-1);
std::array<int,7> player_vitals();
void orbit(float dx,float dy,float zoom);
void set_time(int milliseconds);
void set_enemy_ai(bool);
void draw(int width,int height);
// Owning GL thread only. Synchronously borrows the sole published player's
// cached resolved sheet. The consumer must not retire/replace the world or
// retain the pointer; no property resolution or gameplay update occurs here.
bool with_player_status_sheet(void* context,
 bool (*consume)(void*,const std::int32_t*,std::size_t,std::uintptr_t,std::string&),
 std::string& error);
}
