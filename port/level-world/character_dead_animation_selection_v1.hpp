#pragma once

#include "character_anim_table_resolver_v1.hpp"
#include "character_ai_classification.hpp"
#include "character_stance.hpp"

#include <cstdint>
#include <cstring>
#include <string>

extern "C" {
#include "../pydata-constants/constants.h"
}

namespace dh2::character_dead_animation_selection_v1 {

struct Request {
    character_anim_table_resolver_v1::CharacterView character{};
    const data::AnimationTables* tables = nullptr;
    const dh2_pycst_view* constants = nullptr;
    character_ai_classification::State* classification = nullptr;
    const character_ai_classification::Services* classification_services = nullptr;
    // These are independent source reads: AI_SetDead/SM_SetDeadState may
    // observe a changed flag before choosing the despawn variant.
    std::uint8_t great_knockback_for_death = 0;
    std::uint8_t great_knockback_for_despawn = 0;
};

struct Result {
    std::int32_t table_id = 17;
    std::uint32_t table_count = 0;
    std::uint32_t row_valid = 0;
    std::int32_t death_animation = -1;
    std::int32_t despawn_animation = -1;
    std::uint32_t mask_queries = 0;
    std::uint32_t stance_queries = 0;
};

enum class Status : std::uint32_t {
    complete,
    invalid_argument,
    invalid_source_fact,
};

namespace detail {
inline bool constant(const dh2_pycst_view* view, const char* group,
                     const char* key, std::int32_t& value) noexcept {
    if (!view || !view->bytes || !group || !key) return false;
    dh2_pycst_result found{};
    if (dh2_pycst_get(view, group, static_cast<std::uint32_t>(std::strlen(group)),
                      key, static_cast<std::uint32_t>(std::strlen(key)), &found) ||
        !found.found) return false;
    value = found.value;
    return true;
}

inline bool row_scalar(const data::CharacterAnimations& row,
                       std::size_t field, std::int32_t& value) noexcept {
    if (field >= row.fields.size() || row.fields[field].size() != 1) return false;
    value = row.fields[field][0];
    return true;
}

inline std::int32_t wrap_add(std::int32_t value, std::int32_t stance) noexcept {
    const auto bits = static_cast<std::uint32_t>(value) +
                      static_cast<std::uint32_t>(stance);
    std::int32_t result = 0;
    std::memcpy(&result, &bits, sizeof(result));
    return result;
}
} // namespace detail

// Reads the same cached CharAnimTable row and source fields used by
// SM_SetDeadState: DeadlyGreatKB +0x10 (field 4), Despawn +0x14 (field 5),
// DespawnGreatKB +0x18 (field 6), and Died +0x1c (field 7). The caller must
// supply two fresh great-knockback observations. Stance is reached only when
// the selected bit is present in AnimStancedAnim/SL__LIST_IPHONE. This slice
// accepts only a source-verified Monster/Ghost, whose exact GetAnimStance
// branch uses no equipment and returns the non-player stance (zero).
inline Status select(const Request* request, Result* output) noexcept {
    if (!request || !output || !request->character.identity ||
        !request->character.properties || !request->tables ||
        !request->constants)
        return Status::invalid_argument;

    character_anim_table_resolver_v1::Result table{};
    const auto table_status = character_anim_table_resolver_v1::resolve(
        &request->character, request->tables, &table);
    if (table_status == character_anim_table_resolver_v1::Status::invalid_argument)
        return Status::invalid_argument;
    if (table_status != character_anim_table_resolver_v1::Status::complete)
        return Status::invalid_source_fact;

    Result result{};
    result.table_id = table.table_id;
    result.table_count = table.table_count;
    if (!table.row) {
        *output = result;
        return Status::complete;
    }
    result.row_valid = 1;

    const auto choose = [&](std::size_t field,
                            std::uint32_t mask, std::int32_t& animation,
                            Result& partial) -> Status {
        if (!detail::row_scalar(*table.row, field, animation))
            return Status::invalid_source_fact;
        std::int32_t source_mask = 0;
        if (!detail::constant(request->constants, "AnimStancedAnim",
                              "SL__LIST_IPHONE", source_mask))
            return Status::invalid_source_fact;
        ++partial.mask_queries;
        if ((static_cast<std::uint32_t>(source_mask) & mask) == 0)
            return Status::complete;

        if (!request->classification || !request->classification_services ||
            request->classification->character != request->character.identity)
            return Status::invalid_source_fact;
        character_ai_classification::Result classification{};
        if (character_ai_classification::query(
                character_ai_classification::Query::monster,
                request->classification, request->classification_services,
                &classification) != character_ai_classification::Status::complete ||
            classification.word != 1)
            return Status::invalid_source_fact;

        std::int32_t stance_count = 0;
        if (!detail::constant(request->constants, "AnimStances",
                              "COUNT_IPHONE", stance_count))
            return Status::invalid_source_fact;
        character::StanceFacts16 facts{};
        facts.count = stance_count;
        std::int32_t stance = 0;
        if (dh2_character_anim_stance(&stance, &facts) != 1)
            return Status::invalid_source_fact;
        ++partial.stance_queries;
        animation = detail::wrap_add(animation, stance);
        return Status::complete;
    };

    const bool death_great = request->great_knockback_for_death != 0;
    auto status = choose(death_great ? 4u : 7u,
                         death_great ? 0x20000u : 0x8000u,
                         result.death_animation, result);
    if (status != Status::complete) {
        *output = result;
        return status;
    }

    const bool despawn_great = request->great_knockback_for_despawn != 0;
    status = choose(despawn_great ? 6u : 5u,
                    despawn_great ? 0x40000u : 0x10000u,
                    result.despawn_animation, result);
    *output = result;
    return status;
}

} // namespace dh2::character_dead_animation_selection_v1
