#pragma once

#include "skill_tables.hpp"

#include <array>
#include <cstddef>
#include <cstdint>
#include <map>
#include <string>
#include <vector>

namespace dh2::data {

struct PropertyView;

struct SavedSkill8V1 {
    std::int32_t id{};
    std::uint16_t level{};
    std::uint8_t flag{};
    std::uint8_t reserved{};
};

struct PlayerProfileSpan24V1 {
    const std::uint8_t* data{};
    std::uint32_t size{};
    std::uint32_t cursor{};
    std::uint32_t reserved0{};
    std::uint32_t reserved1{};
};

struct SavedSkillsView16V1 {
    SavedSkill8V1* rows{};
    std::uint32_t count{};
    std::uint32_t reserved{};
};

struct SavedSkillsLoadServices32V1 {
    void* context{};
    std::int32_t (*skill_id)(void*, const std::uint8_t*, std::uint32_t){};
    std::uint32_t* (*slot_value)(void*, std::uint32_t set, std::int32_t key){};
    void (*read_observer)(void*, std::uint32_t bytes){};
};

static_assert(sizeof(SavedSkill8V1) == 8);
static_assert(sizeof(PlayerProfileSpan24V1) == 24);
static_assert(sizeof(SavedSkillsView16V1) == 16);
static_assert(sizeof(SavedSkillsLoadServices32V1) == 32);

struct SavedSkillUpdateServicesV1 {
    void* context{};
    bool (*update_skills)(void*, std::uintptr_t character, std::string&){};
};

struct SavedFaery4V1 {
    std::uint8_t state{};
    std::uint8_t reserved{};
    std::uint16_t level{};
};

static_assert(sizeof(SavedFaery4V1) == 4);

// The one source-owned PlayerSavegame projection. It owns saved fields only;
// Character properties, SkillTables, inventory and profile-file orchestration
// remain borrowed owners at their original boundaries.
class PlayerSavegameV1 {
public:
    PlayerSavegameV1() = default;
    PlayerSavegameV1(const PlayerSavegameV1&) = delete;
    PlayerSavegameV1& operator=(const PlayerSavegameV1&) = delete;

    void set_character(std::uintptr_t identity) noexcept { character_ = identity; }
    void set_slot(std::int32_t slot) noexcept { slot_ = slot; }

    // Mirrors Character::GetCharSkillListId's row-3 fallback, then the
    // PlayerSavegame::_InitSkills ownership boundary. Values begin at zero.
    bool initialize_skills(const SkillTables& tables,
                           std::int32_t live_skill_tree_selector,
                           std::string& error);
    // The original body receives this list from Character::GetCharSkillList.
    // Kept as a narrow boundary for direct instruction-derived fixtures.
    bool initialize_skills_from_character_list(
        const std::vector<std::int32_t>& selected_ids, std::string& error);

    // Reads only the original named Skills payload. No outer SG_Load/profile
    // lifecycle, disk I/O, or property/inventory copies are performed here.
    int load_skills(Bytes bytes, const SkillTables& tables,
                    std::size_t& consumed, std::string& error);
    bool load_name(Bytes bytes, std::size_t& consumed, std::string& error);
    bool load_level(Bytes bytes, std::size_t& consumed, std::string& error);
    bool load_class(Bytes bytes, const std::vector<std::string>& class_names,
                    std::size_t& consumed, std::string& error);

    bool set_skill_level(std::uint32_t row, std::int32_t level,
                         std::string& error);
    bool set_skill_in_slot(std::int32_t slot, std::uint32_t row,
                           const SavedSkillUpdateServicesV1& services,
                           std::string& error);
    std::int32_t skill_id(std::uint32_t row) const noexcept;
    std::int32_t skill_level(std::uint32_t row) const noexcept;
    std::int32_t skill_in_slot(std::int32_t slot) const noexcept;
    std::int32_t skill_slot(std::uint32_t row) const noexcept;

    void initialize_faeries() noexcept;
    bool load_current_faery(Bytes bytes, std::size_t& consumed,
                            std::string& error);
    bool load_faeries(Bytes bytes, std::size_t& consumed,
                      bool& source_count_mismatch, std::string& error);
    bool load_difficulty(Bytes bytes, void* context,
                         bool (*store_selected)(void*, std::int32_t,
                                                std::string&),
                         std::size_t& consumed, std::string& error);
    bool set_faery_level(std::uint32_t id, std::int32_t value,
                         std::uint32_t difficulty, std::string& error);
    bool set_faery_state(std::uint32_t id, std::int32_t value,
                         std::uint32_t difficulty, std::string& error);
    std::int32_t faery_level(std::uint32_t id,
                             std::uint32_t difficulty) const noexcept;
    std::int32_t current_faery(std::uint32_t difficulty) const noexcept;

    bool skills_initialized() const noexcept { return skills_initialized_; }
    bool has_skill_slots() const noexcept { return !slots_[0].empty(); }
    const std::vector<SavedSkill8V1>& skills() const noexcept { return skills_; }
    const std::array<std::map<std::int32_t, std::uint32_t>, 2>&
    skill_slots() const noexcept { return slots_; }
    const std::array<std::array<SavedFaery4V1, 5>, 3>& faeries() const noexcept {
        return faeries_;
    }
    const std::array<bool, 3>& faeries_initialized() const noexcept {
        return faeries_initialized_;
    }
    const std::array<std::int32_t, 3>& current_faeries() const noexcept {
        return current_faery_;
    }
    std::int32_t unlocked_difficulty() const noexcept { return unlocked_difficulty_; }
    std::int32_t slot() const noexcept { return slot_; }
    std::int32_t level() const noexcept { return level_; }
    std::int32_t class_id() const noexcept { return class_; }
    const std::string& name() const noexcept { return name_; }
    std::uintptr_t character() const noexcept { return character_; }

private:
    std::int32_t slot_{-1};
    std::int32_t level_{};
    std::int32_t class_{-1};
    std::string name_;
    std::uintptr_t character_{};
    bool skills_initialized_{};
    std::vector<SavedSkill8V1> skills_;
    std::array<std::map<std::int32_t, std::uint32_t>, 2> slots_;
    std::array<std::array<SavedFaery4V1, 5>, 3> faeries_{};
    std::array<bool, 3> faeries_initialized_{};
    std::array<std::int32_t, 3> current_faery_{};
    std::int32_t unlocked_difficulty_{};
};

}  // namespace dh2::data

namespace dh2::player_saved_skill_callbacks_v1 {

enum class Disposition : std::uint32_t {
    append_integer,
    no_return,
    source_assertion_boundary,
    owner_mismatch,
    missing_projection,
};

struct Result {
    Disposition disposition{Disposition::missing_projection};
    std::int32_t integer{};
};

// Synchronous read-only projections of Character::_GetSkillIDFromOID and
// Character::_GetCurrentSkillInfo__. `properties`, `tables`, and `savegame`
// are borrowed; the adapter never copies or stores them. Selector property 28
// is the source SkillTree value and is read live for each invocation.
Result get_skill_id_from_oid(const data::PropertyView* properties,
                             const data::SkillTables* tables,
                             std::int32_t object_id) noexcept;
Result get_current_skill_info(const data::PropertyView* properties,
                              const data::SkillTables* tables,
                              const data::PlayerSavegameV1* savegame,
                              std::uintptr_t character_identity,
                              std::int32_t skill_list_index) noexcept;

}  // namespace dh2::player_saved_skill_callbacks_v1

extern "C" {
// This preserves the bounded source section reader. Status 0 is success,
// -1 malformed native input, -2 truncated bytes, -3 required service failure.
int dh2_player_skills_v1_load(dh2::data::SavedSkillsView16V1*,
                              dh2::data::PlayerProfileSpan24V1*,
                              const dh2::data::SavedSkillsLoadServices32V1*) noexcept;
int dh2_saved_skill_v1_level(const dh2::data::SavedSkillsView16V1*,
                             std::uint32_t) noexcept;
int dh2_saved_skill_v1_set_level(dh2::data::SavedSkillsView16V1*,
                                 std::uint32_t, std::int32_t) noexcept;
}
