#pragma once
#include <cstdint>

namespace dh2::data::character_give_xp_v1 {
enum class Operation : std::uint32_t {
    constant, difficulty_unlocked, property_int, is_player, is_network,
    level_restricted, assert_nonnegative, debug_load, debug_switch,
    property_raw, level_difficulty, xp_bonus_raw, property_add_raw,
    level_up, property_set_raw, player_index, increase_stat
};
struct Request {
    Operation operation{};
    std::int32_t argument{}, value{}, extra{};
};
struct Services {
    void* context{};
    // Borrow the actual Character/properties/current Level. Reads are repeated
    // after callbacks; this coordinator owns no copied progression state.
    bool (*invoke)(void*, const Request&, std::int32_t*){};
};
enum class Status : std::uint32_t { complete, service_unavailable, service_failed };
struct Result {
    Status status{Status::complete};
    bool granted{};
    std::int32_t effective_amount{}, modified_amount{};
    std::uint32_t calls{};
    Operation last_operation{Operation::constant};
};
// Original 32-bit wrap, signed /100 truncation, low-product and ASR #8.
std::int32_t modified_xp(std::int32_t amount, std::int32_t bonus_raw);
// Character::_GiveXP at ELF 0x3bf498. Constant arguments 0/1/2 select
// MaxLevelBNormal/MaxLevelCHard/MaxLevelDVeryHard. Debug arguments 0/1
// select OneKillLevelUp/isTracingChar_Stats. Assertion handling belongs to
// the supplied service; original assert level 2 deliberately faults.
Result give_xp(Services, std::int32_t amount, bool record_stat);
}
