#pragma once

#include <cstdint>
#include <string>

namespace dh2::character {

// Value copied into the source GameState async queue after a successful item
// transfer. Defaults match the source event constructor's unset identifiers.
struct LootPickupQuestEventV10 {
    std::int32_t objective_type{};
    std::uintptr_t character{};
    std::int32_t network_id{-1};
    std::int32_t subject_id{-1};
    std::int32_t item_id{};
    std::uint8_t flag0{};
    std::uint8_t flag1{};
};

struct LootPickupQuestServicesV10 {
    void* context{};
    bool (*is_player)(void*, std::uintptr_t character, bool& result,
                      std::string& error){};
    // This is the registered gathering-ID list at ItemInventory+0x30, not
    // the current inventory count or the number of copies of the item.
    bool (*registered_gathering_id)(void*, std::uintptr_t character,
                                    std::int32_t item_id, bool& result,
                                    std::string& error){};
    bool (*current_game_state)(void*, std::uintptr_t& game_state,
                               std::string& error){};
    // Preserve the two literal source arguments in their original order.
    bool (*constant)(void*, const char* group, const char* key,
                     std::int32_t& value, std::string& error){};
    // The implementation passes the event by value so this service can own
    // the stack event before the source async call returns.
    bool (*raise_async)(void*, std::uintptr_t game_state,
                        const LootPickupQuestEventV10& event,
                        std::string& error){};
};

// Adapted from AdamCelermajer/DH_sc@11fa5242's
// port/level-world/loot_pickup_quest_tail_v10.{hpp,cpp}. The source path is
// TransferInventoryTo's reached quest tail: player check, registered-list
// membership, current GameState, GatherLoot constant, then copied async event.
bool loot_pickup_quest_tail_v10(std::uintptr_t actual_inventory_character,
                                std::int32_t actual_item_id,
                                const LootPickupQuestServicesV10& services,
                                std::string& error);

}  // namespace dh2::character
