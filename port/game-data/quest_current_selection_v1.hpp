#pragma once
#include "player_savegame_v1.hpp"
#include <cstdint>
#include <cstddef>
#include <string>

namespace dh2::data::quest_current_selection_v1 {
inline bool set(PlayerSavegameV1& save,bool online,std::int32_t difficulty,
                std::int32_t quest_id,std::string& error) {
    if(online){error="Online Quest selection is unavailable";return false;}
    if(difficulty<0||difficulty>=3){error="Quest difficulty is outside the source Save range";return false;}
    save.source_quest_log_b8().word_2c[std::size_t(difficulty)]=quest_id;
    error.clear();return true;
}
}
