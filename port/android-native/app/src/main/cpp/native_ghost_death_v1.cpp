#include "native_ghost_death_v1.hpp"

#include "../../../../../../port/level-world/character_anim_table_resolver_v1.hpp"
#include "../../../../../../port/level-world/character_stance.hpp"

#include <algorithm>
#include <cstring>

namespace dh2::native::ghost_death {
namespace {

const char* animation_name(player_ai_death_v1::Animation animation) {
    using player_ai_death_v1::Animation;
    switch (animation) {
    case Animation::died: return "Died";
    case Animation::deadly_great_kb: return "DeadlyGreatKB";
    case Animation::despawn: return "Despawn";
    case Animation::despawn_great_kb: return "DespawnGreatKB";
    }
    return nullptr;
}

bool get_constant(const dh2_pycst_view* constants, const char* group,
                  const char* key, std::int32_t& value) {
    if (!constants || !group || !key) return false;
    dh2_pycst_result result{};
    if (dh2_pycst_get(constants, group,
                      static_cast<std::uint32_t>(std::strlen(group)), key,
                      static_cast<std::uint32_t>(std::strlen(key)), &result) ||
        !result.found)
        return false;
    value = result.value;
    return true;
}

int fail(std::string& error, const char* message) {
    if (error.empty()) error = message;
    return 1;
}

} // namespace

int invoke(void* raw, const player_ai_death_v1::Request* request,
           player_ai_death_v1::Reply* reply, std::string& error) {
    if (!raw || !request || !reply)
        return fail(error, "Ghost death provider received invalid arguments");
    const auto& bindings = *static_cast<const Bindings*>(raw);
    if (!bindings.ai || !bindings.character || request->ai != bindings.ai ||
        request->character != bindings.character)
        return fail(error, "Ghost death provider identity differs from retained owners");

    using player_ai_death_v1::Operation;
    switch (request->operation) {
    case Operation::animation_table: {
        if (!bindings.properties || !bindings.animations)
            return fail(error, "Ghost death animation owners are unavailable");
        character_anim_table_resolver_v1::Result result{};
        const character_anim_table_resolver_v1::CharacterView character{
            bindings.character, bindings.properties};
        const auto status = character_anim_table_resolver_v1::resolve(
            &character, bindings.animations, &result);
        if (status != character_anim_table_resolver_v1::Status::complete)
            return fail(error, "Ghost death animation table lookup failed");
        reply->word = result.table_id;
        reply->count = result.table_count;
        return 0;
    }
    case Operation::animation_value: {
        if (!bindings.animations || request->row < 0 ||
            static_cast<std::size_t>(request->row) >= bindings.animations->characters.size())
            return fail(error, "Ghost death animation row is unavailable");
        const char* name = animation_name(request->animation);
        if (!name) return fail(error, "Ghost death animation selector is invalid");
        const auto found = std::find(bindings.animations->state_names.begin(),
                                     bindings.animations->state_names.end(), name);
        if (found == bindings.animations->state_names.end())
            return fail(error, "Ghost death animation field is unavailable");
        const auto field = static_cast<std::size_t>(
            found - bindings.animations->state_names.begin());
        const auto& row = bindings.animations->characters[
            static_cast<std::size_t>(request->row)];
        if (field >= row.fields.size() || row.fields[field].size() != 1)
            return fail(error, "Ghost death animation field is not scalar");
        reply->word = static_cast<std::uint32_t>(row.fields[field][0]);
        return 0;
    }
    case Operation::stance_mask: {
        if (!request->group || !request->key ||
            std::strcmp(request->group, "AnimStancedAnim") ||
            std::strcmp(request->key, "SL__LIST_IPHONE") || !bindings.constants)
            return fail(error, "Ghost death stance-mask source key is unavailable");
        std::int32_t value = 0;
        if (!get_constant(bindings.constants, request->group, request->key, value))
            return fail(error, "Ghost death stance-mask constant is unavailable");
        reply->word = static_cast<std::uint32_t>(value);
        return 0;
    }
    case Operation::anim_stance: {
        if (!bindings.classification || !bindings.classification_services ||
            bindings.classification->character != bindings.character)
            return fail(error, "Ghost death Character classification is unavailable");
        character_ai_classification::Result classification{};
        if (character_ai_classification::query(
                character_ai_classification::Query::monster,
                bindings.classification, bindings.classification_services,
                &classification) != character_ai_classification::Status::complete ||
            classification.word != 1)
            return fail(error, "Ghost death stance requires the source Monster branch");
        std::int32_t count = 0;
        if (!get_constant(bindings.constants, "AnimStances", "COUNT_IPHONE", count))
            return fail(error, "Ghost death stance count is unavailable");
        character::StanceFacts16 facts{};
        facts.count = count;
        std::int32_t stance = 0;
        if (dh2_character_anim_stance(&stance, &facts) != 1)
            return fail(error, "Ghost death Monster stance lookup failed");
        reply->word = static_cast<std::uint32_t>(stance);
        return 0;
    }
    case Operation::skill_cleanup:
    case Operation::spell_cleanup: {
        if (!bindings.skills)
            return fail(error, "Ghost death skill owner is unavailable");
        const auto list = request->operation == Operation::skill_cleanup
            ? character_ai_set_skills_and_spells::List::skill
            : character_ai_set_skills_and_spells::List::faery;
        ghost_skills::DeathCleanupResult result{};
        const auto status = bindings.skills->cleanup_death_list(list, result);
        if (status != ghost_skills::Status::complete || !result.completed)
            return fail(error, "Ghost death reached an unsupported skill cleanup entry");
        reply->count = result.slots_examined;
        return 0;
    }
    default:
        return fail(error, "Ghost death provider does not own this operation");
    }
}

} // namespace dh2::native::ghost_death
