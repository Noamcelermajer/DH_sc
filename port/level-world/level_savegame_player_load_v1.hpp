#pragma once

#include "character_runtime_factory_v1.hpp"
#include "level_savegame_object_manager_v1.hpp"

#include <array>
#include <cstddef>
#include <cstdint>
#include <string>
#include <vector>

namespace dh2::level_savegame_player_load_v1 {

namespace manager = object_manager_runtime_owner_v1;
namespace factory = character_runtime_factory_v1;
namespace save = level_savegame_owner_v1;

// Decoded source fields from Character::Deserialize. Arrays retain exact bytes
// so float bit patterns and the source GameObject payload are not normalized.
struct PlayerState {
    std::uint8_t object_base_flag_80{};
    std::uint8_t object_base_flag_8a{};
    std::int32_t game_object_word_270{};
    std::int32_t state_machine_state{};
    std::array<std::uint8_t, 12> position{};
    std::array<std::uint8_t, 12> target_position{};
    std::uint8_t dead{};
    std::array<std::uint8_t, 12> vector_1306{};
    std::array<std::uint8_t, 12> vector_1309{};
    std::uint8_t has_ai_tail{};
    std::int32_t ai_word_36{};
    std::uint8_t ai_flag_40{};
    std::uint8_t ai_flag_41{};
};

struct CommitServices {
    void* context{};
    // Read-only preflight: confirms every destination field has a canonical
    // mutable owner and the identity still matches before any mutation.
    bool (*prepare_player)(void*, const factory::Record&,
                           const PlayerState&, std::string&){};
    // Must be all-or-nothing: false means no destination field was changed.
    // This seam intentionally does not emulate Character::Deserialize's
    // incremental writes in an unsafe partial native projection.
    bool (*commit_player_atomically)(void*, const factory::Record&,
                                     const PlayerState&, std::string&){};
};

enum class Status : std::uint8_t {
    loaded, invalid_argument, malformed_save, unsupported_record,
    manager_failed, identity_mismatch, provider_unavailable,
    provider_failed, commit_failed
};

struct Result {
    std::uint32_t sections{};
    std::uint32_t object_rows{};
    std::uint32_t player_rows{};
    std::int32_t source_handle{};
    std::uintptr_t identity{};
    std::uint32_t payload_bytes{};
};

// Bounded LevelSavegame file reader for the current player-only slice. It
// accepts the source INFO+OBJS layout, but applies only a unique existing
// PlayerCharacter_0 factory row. All records are parsed and checked before
// the prepare/commit callbacks can run. Unsupported rows fail closed.
Status load_player(const std::uint8_t* image, std::size_t image_size,
                   manager::Owner&, const factory::Owner&,
                   const level_savegame_object_manager_v1::FactsServices*,
                   const CommitServices*, Result*, std::string& error);

} // namespace dh2::level_savegame_player_load_v1
