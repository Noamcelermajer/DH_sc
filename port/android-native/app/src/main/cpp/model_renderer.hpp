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
std::vector<std::uint8_t> read_asset(AAssetManager*,const std::string&);
void reset_context();
void deactivate();
bool active();
std::string load(const std::uint8_t*,std::size_t,AAssetManager*);
std::string load_world(const std::uint8_t*,std::size_t,AAssetManager*);
void move_axis(float x,float y);
void focus_object(int index);
std::string set_object_state(int index,const std::string& state);
std::string spawn_character(const std::string& exact_name);
std::string debug_character_hit(const std::string& exact_name,std::uint32_t raw_damage);
std::string debug_player_skill_cooldown(std::uint32_t delay_ms);
std::string debug_player_skill_check(std::uint32_t slot);
std::string set_combat_target(int index,int target);
std::string player_attack(int target=-1);
std::array<int,7> player_vitals();
void orbit(float dx,float dy,float zoom);
void set_time(int milliseconds);
void set_enemy_ai(bool);
void draw(int width,int height);
}
