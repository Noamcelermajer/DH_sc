#pragma once
#include <android/asset_manager.h>
#include <cstddef>
#include <cstdint>
#include <string>
#include <array>
#include <vector>
#include "data.hpp"
#include "item_presentation_v5.hpp"
#include "loot_entry_selection_v1.hpp"
namespace model_renderer {
using ItemTextServicesFactoryV5 = dh2::data::ItemTextServicesV5 (*)(
 void*,const dh2::data::ItemTable&,const dh2::data::CharacterTable&);
void bind_item_text_services(void*,ItemTextServicesFactoryV5);
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
std::string start_menu_game(std::int32_t,AAssetManager*,std::int32_t debug_level_row=-1);
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
std::string load_world(const std::uint8_t*,std::size_t,AAssetManager*,
                       const std::uint8_t* generated_spawnpoints=nullptr,
                       std::size_t generated_spawnpoints_size=0);
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
// Read-only localization projection of the one live Player Character and its
// associated Save name. Requires the attached world; creates no profile owner.
bool ui_player_identity(std::uintptr_t&,std::string&);
bool ui_player_name(std::uintptr_t,std::string&,std::string&);
struct UiPlayerStatsReadV1 {
 std::string name,class_name;std::int32_t icon{},level{},hp{},hp_bonus{},max_hp{};
 std::int32_t mp{},mp_bonus{},max_mp{},xp{},max_xp{},strength{},dexterity{};
 std::int32_t endurance{},energy{},points{};
};
bool ui_player_stats(std::uintptr_t,UiPlayerStatsReadV1&,std::string&);
struct UiSkillReadV1 {
 std::int32_t id{-1},level{-1},slot{-1},required_level{-1};
 std::int32_t character_level{};
 std::int32_t name_text{-1},description_text{-1},current_text{-1},next_text{-1};
 bool assignable{};std::string icon;
};
struct UiInventoryItemReadV1 {
 std::int32_t id{-1},index{-1},quantity{},slot{-1};std::string name;
 bool equippable{},equipped{},equipped_other_hand{};
};
struct UiEquippedItemReadV1 {
 std::int32_t id{-1},index{-1},power_count{};std::string name;
};
struct UiItemDetailsReadV1 {
 std::int32_t id{-1},index{-1},value{},buy_value{},sell_value{},transmute_property_raw{};
 std::string name,stats,requirements,icon;
 bool stackable{},equippable{};std::vector<std::string> power_descriptions;
};
bool ui_player_skill_slots(std::uintptr_t,std::array<std::int32_t,3>&,std::string&);
bool ui_player_skill_points(std::uintptr_t,std::int32_t&,std::string&);
bool ui_player_skill(std::uintptr_t,std::uint32_t,UiSkillReadV1&,std::string&);
bool ui_player_train_skill(std::uintptr_t,std::uint32_t,bool,std::uint32_t&,std::int32_t&,std::string&);
bool ui_player_equip_skill(std::uintptr_t,std::int32_t slot,std::int32_t skill_index,std::string&);
bool ui_player_active_faery(std::uintptr_t,std::int32_t&,std::int32_t&,std::string&);
bool ui_player_faery_unlocked(std::uintptr_t,std::uint32_t,bool&,std::string&);
bool ui_player_inventory_gold(std::uintptr_t,std::int32_t&,std::string&);
bool ui_player_inventory_slot(std::uintptr_t,std::int32_t,std::vector<UiInventoryItemReadV1>&,std::string&);
bool ui_player_inventory_item_details(std::uintptr_t,std::int32_t,UiItemDetailsReadV1&,std::string&);
bool ui_player_equipped_item(std::uintptr_t,std::int32_t,UiEquippedItemReadV1&,bool&,std::string&);
bool ui_player_equip_item(std::uintptr_t,std::int32_t item_index,std::int32_t equipment_slot,std::string&);
bool ui_player_unequip_item(std::uintptr_t,std::int32_t equipment_slot,std::string&);
bool ui_player_weapon_flags(std::uintptr_t,bool&,bool&,std::string&);
bool ui_player_potions(std::uintptr_t,std::int32_t&,std::int32_t&,std::string&);
struct LootStagingResultV1 {std::size_t first_world_item{},item_count{};};
// Owning GL thread only. Stages powered Loot through the existing Character
// V4 inventory/RNG and its retained Item presentation owner. This does not
// attach a world transform, render a pooled Item, or invoke death handling.
bool stage_world_loot_table(std::int32_t,const dh2::data::LootEntrySelectionContextV1&,
 std::int32_t value_bonus256,std::int32_t power_bonus256,
 std::int32_t requested_power_count,std::int32_t difficulty,
 LootStagingResultV1&,std::string& error);
bool retire_staged_world_loot_item(std::size_t,std::string& error);
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
