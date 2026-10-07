#include "loot_pickup_quest_tail_v10.hpp"

namespace dh2::character {
namespace {

bool missing_service(std::string& error, const char* message) {
    if (error.empty()) error = message;
    return false;
}

}  // namespace

bool loot_pickup_quest_tail_v10(std::uintptr_t character, std::int32_t item,
                                const LootPickupQuestServicesV10& services,
                                std::string& error) {
    error.clear();
    if (!character) return true;

    bool player{};
    if (!services.is_player)
        return missing_service(error, "Required actual pickup destination IsPlayer");
    if (!services.is_player(services.context, character, player, error))
        return missing_service(error, "Required actual pickup destination IsPlayer");
    if (!player) return true;

    bool registered{};
    if (!services.registered_gathering_id)
        return missing_service(error, "Required SAME inventory gathering-ID list30");
    if (!services.registered_gathering_id(services.context, character, item,
                                          registered, error))
        return missing_service(error, "Required SAME inventory gathering-ID list30");
    if (!registered) return true;

    std::uintptr_t game_state{};
    if (!services.current_game_state)
        return missing_service(error, "Required actual Application current GS for pickup quest");
    if (!services.current_game_state(services.context, game_state, error))
        return missing_service(error, "Required actual Application current GS for pickup quest");
    if (!game_state) return true;

    LootPickupQuestEventV10 event{};
    event.character = character;
    event.item_id = item;
    if (!services.constant)
        return missing_service(error, "Required actual GatherLoot quest constant");
    if (!services.constant(services.context, "v2QuestObjectiveType", "GatherLoot",
                           event.objective_type, error))
        return missing_service(error, "Required actual GatherLoot quest constant");

    if (!services.raise_async)
        return missing_service(error, "Required actual GS pickup quest AsyncCall");
    if (!services.raise_async(services.context, game_state, event, error))
        return missing_service(error, "Required actual GS pickup quest AsyncCall");
    return true;
}

}  // namespace dh2::character
