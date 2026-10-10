#pragma once

#include "native_character_list.hpp"
#include "native_quest_owner.hpp"
#include "../../../../../../port/level-world/character_oid_cache_v1.hpp"
#include "../../../../../../port/level-world/object_manager_runtime_owner_v1.hpp"

#include <cstdint>
#include <limits>
#include <string>

namespace dh2::native::current_level_character_population_v1 {

namespace list = dh2::character::aggro::object_manager_list;
namespace aggro = dh2::character::aggro_search;
using ObjectManager = dh2::object_manager_runtime_owner_v1::Owner;
using OidCache = dh2::character_oid_cache_v1::Owner;

// The original HasEnemyOfTypeLoaded walks the Level ObjectManager's flat
// CharacterList without player, faction, dead, or room filters. SafeGetCharPropsId
// is delegated to the canonical Character/property owner for each identity.
// A caller may set roster_complete only after its Level population owner has
// completed every source Character add/load path; the current Crypt projection
// does not yet provide that proof and must leave it false.
struct Bindings {
    void* context{};
    const list::Owner* characters{};
    const ObjectManager* object_manager{};
    const OidCache* oid_cache{};
    std::uintptr_t event_owner_identity{};
    std::uintptr_t level_identity{};
    std::int32_t level_id{-1};
    std::size_t expected_character_count{};
    std::uint32_t character_table_size{};
    std::uint64_t oid_cache_generation{};
    bool roster_complete{};
    bool (*safe_get_character_property_id)(void*, std::uintptr_t event_owner,
        std::uintptr_t level_identity, std::uintptr_t character_identity,
        std::int32_t* property_id, std::string& error){};
};

class Provider final {
    Bindings bindings_{};
    bool busy_{};

    bool query(std::uintptr_t expected_event_owner,
               std::uintptr_t expected_level_identity,
               std::int32_t property_id,
               quests::ClearEnemiesPopulationSnapshotV1& snapshot,
               std::string& error) {
        if (busy_) { error = "Current-Level Character population provider is reentrant"; return false; }
        struct Guard { bool& value; explicit Guard(bool& v):value(v){value=true;} ~Guard(){value=false;} } guard{busy_};
        snapshot = {};
        const auto& b = bindings_;
        if (!b.characters || !b.object_manager || !b.oid_cache ||
            !b.safe_get_character_property_id || !b.event_owner_identity ||
            !b.level_identity || b.level_id < 0 || !b.character_table_size) {
            error = "Current-Level Character population bindings are incomplete"; return false;
        }
        if (expected_event_owner != b.event_owner_identity ||
            expected_level_identity != b.level_identity ||
            b.oid_cache->level_identity() != b.level_identity ||
            !b.oid_cache_generation ||
            b.oid_cache->generation() != b.oid_cache_generation ||
            b.oid_cache->character_table_size() != b.character_table_size) {
            error = "Current-Level Character population owner is stale"; return false;
        }
        if (property_id < 0 ||
            static_cast<std::uint32_t>(property_id) >= b.character_table_size) {
            error = "Current-Level Character property selector is outside CharacterTable"; return false;
        }
        if (!b.roster_complete) {
            error = "Current-Level Character roster is not source-complete"; return false;
        }
        if (!list::validate(b.characters) ||
            b.characters->character_count != b.expected_character_count) {
            error = "Current-Level CharacterList is malformed or incomplete"; return false;
        }

        std::int64_t matches = 0;
        std::size_t visited = 0;
        auto* node = b.characters->sentinel.next;
        while (node != &b.characters->sentinel) {
            if (!node || visited >= b.expected_character_count || !node->character) {
                error = "Current-Level CharacterList contains a stale Character"; return false;
            }
            auto* character = static_cast<aggro::Character*>(node->character);
            if (!character->identity || !character->object ||
                character->object->identity != character->identity) {
                error = "Current-Level Character has an incomplete canonical projection"; return false;
            }
            const auto* object = b.object_manager->find_by_identity(character->identity);
            if (!object || object->identity != character->identity) {
                error = "Current-Level Character is absent from its ObjectManager"; return false;
            }
            std::int32_t resolved_property_id = -1;
            try {
                if (!b.safe_get_character_property_id(b.context,
                        b.event_owner_identity, b.level_identity, character->identity,
                        &resolved_property_id, error)) {
                    if (error.empty()) error = "SafeGetCharPropsId failed for a listed Character";
                    return false;
                }
            } catch (...) {
                error = "SafeGetCharPropsId provider threw for a listed Character"; return false;
            }
            if (resolved_property_id < -1 || resolved_property_id >= static_cast<std::int32_t>(b.character_table_size)) {
                error = "SafeGetCharPropsId returned an invalid CharacterTable row"; return false;
            }
            if (resolved_property_id == property_id) ++matches;
            ++visited;
            node = node->next;
        }
        if (visited != b.expected_character_count) {
            error = "Current-Level CharacterList changed during population query"; return false;
        }

        // Original HasEnemyOfTypeLoaded consults the Level OID cache only when
        // no loaded Character matched the requested property row.
        if (matches == 0) {
            if (property_id >= 0 &&
                static_cast<std::uint32_t>(property_id) < b.character_table_size) {
                dh2::character_oid_cache_v1::Result cached{};
                const auto status = b.oid_cache->count(
                    static_cast<std::uint32_t>(property_id), &cached);
                if (status != dh2::character_oid_cache_v1::Status::complete) {
                    error = "Current-Level Character OID cache query failed"; return false;
                }
                matches = cached.value;
            }
        }
        if (matches > std::numeric_limits<std::int32_t>::max()) {
            error = "Current-Level Character population exceeds source count range"; return false;
        }
        snapshot.event_owner_identity = b.event_owner_identity;
        snapshot.level_identity = b.level_identity;
        snapshot.level_id = b.level_id;
        snapshot.loaded_match_count = static_cast<std::int32_t>(matches);
        error.clear();
        return true;
    }

    static bool read_callback(void* context, std::uintptr_t expected_event_owner,
                              std::uintptr_t expected_level_identity,
                              std::int32_t property_id,
                              quests::ClearEnemiesPopulationSnapshotV1& snapshot,
                              std::string& error) {
        if (!context) { error = "Current-Level Character population provider is absent"; return false; }
        return static_cast<Provider*>(context)->query(expected_event_owner,
            expected_level_identity, property_id, snapshot, error);
    }

public:
    explicit Provider(Bindings bindings) noexcept : bindings_(bindings) {}
    Provider(const Provider&) = delete;
    Provider& operator=(const Provider&) = delete;

    quests::ClearEnemiesPopulationServicesV1 services() noexcept {
        return {this, &read_callback, bindings_.level_identity};
    }
};

} // namespace dh2::native::current_level_character_population_v1
