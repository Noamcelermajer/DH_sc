#pragma once

#include <array>
#include <cstddef>
#include <cstdint>
#include <string>
#include <vector>

namespace dh2::item_manager_pool_v1 {

constexpr std::size_t slots_per_category = 5;

struct Slot {
    std::uintptr_t shell_identity{};
    std::uintptr_t item_identity{};
    std::uint32_t pickup_lock_ms{};
    bool enabled{};
};

struct Category {
    std::int32_t audio_visual_id{-1};
    std::array<Slot, slots_per_category> slots{};
    std::uint8_t next_slot{};
};

struct Owner {
    std::vector<Category> categories;
};

struct SpawnPlan {
    std::int32_t audio_visual_id{-1};
    std::uint8_t slot_index{};
    std::uint8_t expected_next_slot{};
    std::uintptr_t expected_shell_identity{};
    std::uintptr_t evicted_item_identity{};
};

enum class Status : std::uint8_t {
    complete, invalid_argument, identity_conflict, stale_plan, allocation_failed
};

// ItemManager::PreCache makes five ItemObject shells per AudioVisualID.
// Spawn uses the Item row's +0x54 AudioVisualID and rotates those five slots.
// Prepare is side-effect free so its caller can retire an evicted Item from
// the canonical V4 inventory before committing the source DeSpawn/InitAgain.
Status prepare_spawn(Owner*, std::int32_t audio_visual_id,
                     std::uintptr_t item_identity, SpawnPlan*,
                     std::string& error);
Status bind_shell(Owner*, const SpawnPlan*, std::uintptr_t shell_identity,
                  std::string& error);
Status de_spawn(Owner*, std::uintptr_t shell_identity,
                std::uintptr_t expected_item_identity,
                std::string& error);
Status activate(Owner*, const SpawnPlan*, std::uintptr_t shell_identity,
                std::uintptr_t item_identity, std::uint32_t pickup_lock_ms,
                std::string& error);

bool set_pickup_lock(Owner*, std::uintptr_t item_identity,
                     std::uint32_t milliseconds) noexcept;
void advance_pickup_locks(Owner*, std::uint32_t elapsed_ms) noexcept;
bool pickup_locked(const Owner*, std::uintptr_t item_identity) noexcept;
bool enabled(const Owner*, std::uintptr_t item_identity) noexcept;
// This is specifically the source GameObject::Disabled gate in
// ObjectManager::IsObjectSerializable, not the full ObjectManager predicate.
bool passes_disabled_save_gate(const Owner*, std::uintptr_t item_identity) noexcept;
const Category* find_category(const Owner*, std::int32_t audio_visual_id) noexcept;

} // namespace dh2::item_manager_pool_v1
