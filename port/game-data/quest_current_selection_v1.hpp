#pragma once
#include "player_savegame_v1.hpp"
#include <cstdint>
#include <cstddef>
#include <string>

namespace dh2::data::quest_current_selection_v1 {
inline bool is_current(const PlayerSavegameV1& save,std::int32_t difficulty,
                       std::int32_t quest_id) noexcept {
    if(difficulty<0||difficulty>=3)return false;
    // Character::SG_GetCurrentQuest reads QuestSavegame +0x2c, the same field
    // that SG_SetCurrentQuest writes. word_38 is a distinct QEST field.
    return save.source_quest_log_b8().word_2c[std::size_t(difficulty)]==quest_id;
}
inline bool set(PlayerSavegameV1& save,bool online,std::int32_t difficulty,
                std::int32_t quest_id,std::string& error) {
    if(online){error="Online Quest selection is unavailable";return false;}
    if(difficulty<0||difficulty>=3){error="Quest difficulty is outside the source Save range";return false;}
    save.source_quest_log_b8().word_2c[std::size_t(difficulty)]=quest_id;
    error.clear();return true;
}

// The native UI adapter persists this completed mutation through the same
// PlayerSavegame transport. A rejected source setter must not reach SG_Save.
template<class Persist>
inline bool set_and_persist(PlayerSavegameV1& save,bool online,
                            std::int32_t difficulty,std::int32_t quest_id,
                            Persist&& persist,std::string& error) {
    if(online){error="Online Quest selection is unavailable";return false;}
    if(difficulty<0||difficulty>=3){error="Quest difficulty is outside the source Save range";return false;}
    if(save.source_quest_log_b8().word_2c[std::size_t(difficulty)]==quest_id){
        error.clear();return true;
    }
    if(!set(save,online,difficulty,quest_id,error))return false;
    return persist(save,error);
}
}
