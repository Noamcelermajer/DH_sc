#pragma once
#include <cstdint>
#include <cstddef>

namespace dh2::ui {
// Inventory click callbacks carry a Player identity while the UI projects
// ItemIndex values from one authoritative V4 owner. Equipment services must
// borrow that same owner and all callbacks must resolve to its Character.
inline bool inventory_click_binding_v1(const void* active_inventory,
                                       const void* service_inventory,
                                       std::uintptr_t inventory_character,
                                       std::uintptr_t callback_character) noexcept {
 return active_inventory&&active_inventory==service_inventory&&
        inventory_character&&inventory_character==callback_character;
}
inline bool inventory_click_item_index_v1(std::int32_t visible_item_index,
                                          std::size_t inventory_size,
                                          std::uint32_t& owner_item_index) noexcept {
 if(visible_item_index<0||std::size_t(visible_item_index)>=inventory_size)return false;
 owner_item_index=std::uint32_t(visible_item_index);
 return true;
}
// NativeInvGetItemsListForSlot treats EquipmentSlots::Count (the valuable
// items list) as equippable for both its ItemEquippable row field and the
// SortByEquipability comparator, regardless of ItemInstance requirements.
inline bool inventory_click_item_equippable_v1(bool valuable_list,
                                                bool item_can_equip) noexcept {
 return valuable_list||item_can_equip;
}
struct InventoryEquipCallV1 {
 std::int32_t player_index{};
 std::int32_t item_index{};
 std::int32_t equipment_slot{};
};
// The authored SWF pushes [playerIndex, ItemIndex, EquipmentSlot] before
// ActionCallFunction. gameswf::fn_call::arg(0) addresses the last pushed
// argument, so NativeInvEquipItem's callback sees [slot, ItemIndex, player].
inline InventoryEquipCallV1 inventory_click_equip_call_v1(
        std::int32_t callback_arg0,std::int32_t callback_arg1,
        std::int32_t callback_arg2) noexcept {
 return {callback_arg2,callback_arg1,callback_arg0};
}
}
