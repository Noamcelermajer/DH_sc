#include "item_manager_pool_v1.hpp"

#include <algorithm>
#include <new>

namespace dh2::item_manager_pool_v1 {
namespace {
Category* category(Owner* owner, std::int32_t id) noexcept {
    if (!owner) return nullptr;
    const auto it = std::find_if(owner->categories.begin(), owner->categories.end(),
        [id](const Category& value) { return value.audio_visual_id == id; });
    return it == owner->categories.end() ? nullptr : &*it;
}
const Category* category(const Owner* owner, std::int32_t id) noexcept {
    if (!owner) return nullptr;
    const auto it = std::find_if(owner->categories.begin(), owner->categories.end(),
        [id](const Category& value) { return value.audio_visual_id == id; });
    return it == owner->categories.end() ? nullptr : &*it;
}
Slot* slot_for_item(Owner* owner, std::uintptr_t identity) noexcept {
    if (!owner || !identity) return nullptr;
    for (auto& group : owner->categories)
        for (auto& slot : group.slots)
            if (slot.item_identity == identity) return &slot;
    return nullptr;
}
const Slot* slot_for_item(const Owner* owner, std::uintptr_t identity) noexcept {
    if (!owner || !identity) return nullptr;
    for (const auto& group : owner->categories)
        for (const auto& slot : group.slots)
            if (slot.item_identity == identity) return &slot;
    return nullptr;
}
bool plan_matches(const Owner* owner, const SpawnPlan* plan,
                  const Category*& group, const Slot*& slot) noexcept {
    group = category(owner, plan ? plan->audio_visual_id : -1);
    if (!plan || !group || plan->slot_index >= slots_per_category ||
        plan->expected_next_slot != group->next_slot ||
        plan->slot_index != group->next_slot) return false;
    slot = &group->slots[plan->slot_index];
    return (slot->shell_identity == plan->expected_shell_identity ||
            (!plan->expected_shell_identity && slot->shell_identity)) &&
           (slot->item_identity == plan->evicted_item_identity ||
            (!slot->enabled && slot->item_identity == 0));
}
}

Status prepare_spawn(Owner* owner, std::int32_t audio_visual_id,
                     std::uintptr_t item_identity, SpawnPlan* output,
                     std::string& error) {
    if (!owner || audio_visual_id < 0 || !item_identity || !output) {
        error = "ItemManager::Spawn requires AudioVisualID, canonical Item identity and plan";
        return Status::invalid_argument;
    }
    if (slot_for_item(owner, item_identity)) {
        error = "ItemManager::Spawn Item is already active in its pooled ItemObject";
        return Status::identity_conflict;
    }
    try {
        auto* group = category(owner, audio_visual_id);
        if (!group) {
            owner->categories.push_back(Category{});
            group = &owner->categories.back();
            group->audio_visual_id = audio_visual_id;
        }
        const auto index = group->next_slot;
        const auto& slot = group->slots[index];
        *output = {audio_visual_id, index, group->next_slot,
                   slot.shell_identity, slot.enabled ? slot.item_identity : 0};
        error.clear();
        return Status::complete;
    } catch (const std::bad_alloc&) {
        error = "ItemManager::PreCache category allocation failed";
        return Status::allocation_failed;
    } catch (...) {
        error = "ItemManager::PreCache category creation failed";
        return Status::allocation_failed;
    }
}

Status bind_shell(Owner* owner, const SpawnPlan* plan,
                  std::uintptr_t shell_identity, std::string& error) {
    if (!owner || !plan || !shell_identity) {
        error = "ItemManager::PreCache requires a stable pooled ItemObject shell";
        return Status::invalid_argument;
    }
    auto* group = category(owner, plan->audio_visual_id);
    if (!group || plan->slot_index >= slots_per_category ||
        group->next_slot != plan->expected_next_slot ||
        plan->slot_index != group->next_slot) {
        error = "ItemManager::PreCache shell binding uses a stale slot plan";
        return Status::stale_plan;
    }
    auto& slot = group->slots[plan->slot_index];
    if (slot.shell_identity && slot.shell_identity != shell_identity) {
        error = "ItemManager::PreCache attempted to replace a stable pool shell";
        return Status::identity_conflict;
    }
    if (slot.item_identity != plan->evicted_item_identity &&
        (slot.enabled || slot.item_identity != 0)) {
        error = "ItemManager::PreCache shell binding disagrees with active Item";
        return Status::stale_plan;
    }
    slot.shell_identity = shell_identity;
    error.clear();
    return Status::complete;
}

Status de_spawn(Owner* owner, std::uintptr_t shell_identity,
                std::uintptr_t expected_item_identity, std::string& error) {
    if (!owner || !shell_identity) {
        error = "ItemManager::DeSpawn requires its pooled ItemObject identity";
        return Status::invalid_argument;
    }
    for (auto& group : owner->categories) {
        for (auto& slot : group.slots) {
            if (slot.shell_identity != shell_identity) continue;
            if (slot.item_identity != expected_item_identity) {
                error = "ItemManager::DeSpawn Item identity does not match pool slot";
                return Status::identity_conflict;
            }
            slot.enabled = false;
            slot.item_identity = 0;
            slot.pickup_lock_ms = 0;
            error.clear();
            return Status::complete;
        }
    }
    error = "ItemManager::DeSpawn pooled ItemObject shell was not precached";
    return Status::invalid_argument;
}

Status activate(Owner* owner, const SpawnPlan* plan,
                std::uintptr_t shell_identity, std::uintptr_t item_identity,
                std::uint32_t pickup_lock_ms, std::string& error) {
    if (!owner || !plan || !shell_identity || !item_identity) {
        error = "ItemManager::Spawn requires its pooled shell and canonical Item";
        return Status::invalid_argument;
    }
    const Category* const_group{};
    const Slot* const_slot{};
    if (!plan_matches(owner, plan, const_group, const_slot)) {
        error = "ItemManager::Spawn pool slot changed before InitAgain";
        return Status::stale_plan;
    }
    auto* group = category(owner, plan->audio_visual_id);
    auto& slot = group->slots[plan->slot_index];
    if (slot.shell_identity && slot.shell_identity != shell_identity) {
        error = "ItemManager::Spawn shell identity differs from pre-cached object";
        return Status::identity_conflict;
    }
    if (!slot.shell_identity) slot.shell_identity = shell_identity;
    slot.item_identity = item_identity;
    slot.pickup_lock_ms = pickup_lock_ms;
    slot.enabled = true;
    group->next_slot = static_cast<std::uint8_t>(
        (std::size_t(plan->slot_index) + 1) % slots_per_category);
    error.clear();
    return Status::complete;
}

bool set_pickup_lock(Owner* owner, std::uintptr_t item_identity,
                     std::uint32_t milliseconds) noexcept {
    auto* slot = slot_for_item(owner, item_identity);
    if (!slot || !slot->enabled) return false;
    slot->pickup_lock_ms = milliseconds;
    return true;
}
void advance_pickup_locks(Owner* owner, std::uint32_t elapsed_ms) noexcept {
    if (!owner) return;
    for (auto& group : owner->categories)
        for (auto& slot : group.slots)
            if (slot.enabled)
                slot.pickup_lock_ms = slot.pickup_lock_ms <= elapsed_ms
                    ? 0 : slot.pickup_lock_ms - elapsed_ms;
}
bool pickup_locked(const Owner* owner, std::uintptr_t item_identity) noexcept {
    const auto* slot = slot_for_item(owner, item_identity);
    return slot && slot->enabled && slot->pickup_lock_ms != 0;
}
bool enabled(const Owner* owner, std::uintptr_t item_identity) noexcept {
    const auto* slot = slot_for_item(owner, item_identity);
    return slot && slot->enabled;
}
bool passes_disabled_save_gate(const Owner* owner,
                               std::uintptr_t item_identity) noexcept {
    return enabled(owner, item_identity);
}
const Category* find_category(const Owner* owner,
                              std::int32_t audio_visual_id) noexcept {
    return category(owner, audio_visual_id);
}

} // namespace dh2::item_manager_pool_v1
