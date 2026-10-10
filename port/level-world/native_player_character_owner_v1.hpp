#pragma once

#include "character_coordinator.hpp"
#include "../game-data/fresh_inventory_owned_v4.hpp"
#include "../game-data/item_presentation_v5.hpp"
#include "../game-data/player_savegame_v1.hpp"
#include <cstdint>
#include <string>

namespace dh2::character {

// Native 64-bit Character object for the rebuilt runtime. This deliberately
// does not reproduce the original ARM object layout: it owns the existing
// Coordinator and resolves the one live Save/property/inventory state by its
// stable native identity.
class NativePlayerCharacterOwnerV1 final : public Coordinator {
    std::uintptr_t* player_character_660_ = nullptr;
    data::PlayerSavegameV1* save_ = nullptr;
    data::PropertyState* properties_ = nullptr;
    data::FreshInventoryOwnedV4* inventory_ = nullptr;
    // Typed projection of GameObject+0x1b4. GameObject::UpdatePath owns its
    // transitions; this is not a byte overlay on the ARM32 Character object.
    std::uint8_t game_object_moving_ = 0;
    // Character+0x412: OOI interaction intent. UseOOI/ForceUseOOI set it;
    // skill/cast focus and target-range callbacks clear it. It is separate
    // from both GameObject movement and Coordinator flags.
    std::uint8_t ooi_intent_412_ = 0;

public:
    NativePlayerCharacterOwnerV1();
    NativePlayerCharacterOwnerV1(const NativePlayerCharacterOwnerV1&) = delete;
    NativePlayerCharacterOwnerV1& operator=(const NativePlayerCharacterOwnerV1&) = delete;

    std::uintptr_t identity() const noexcept {
        return reinterpret_cast<std::uintptr_t>(this);
    }

    std::uint8_t* game_object_moving_storage() noexcept {
        return &game_object_moving_;
    }
    std::uint8_t game_object_moving() const noexcept {
        return game_object_moving_;
    }
    // Called after the synchronous DropPath and destination copy in Stop.
    void stop_game_object_moving() noexcept { game_object_moving_ = 0; }
    std::uint8_t* ooi_intent_storage() noexcept { return &ooi_intent_412_; }
    std::uint8_t ooi_intent() const noexcept { return ooi_intent_412_; }

    // Publication occurs only after these existing owners are ready. Inventory
    // is optional while its production Android owner is still disconnected.
    bool bind_session(std::uintptr_t* player_character_660,
                      data::PlayerSavegameV1& save,
                      data::PropertyState& properties,
                      data::FreshInventoryOwnedV4* inventory,
                      std::string& error);
    // Attach the already-created authoritative inventory after source Save/
    // property setup, without clearing and republishing Character660. Exactly
    // one inventory may be adopted, and it must borrow these same owners.
    bool bind_inventory(data::FreshInventoryOwnedV4& inventory,
                        std::string& error);
    bool unbind_session(std::string& error);
    bool matches_session(const std::uintptr_t* player_character_660,
                         const data::PlayerSavegameV1& save,
                         const data::PropertyState& properties,
                         const data::FreshInventoryOwnedV4* inventory) const noexcept;

    data::PlayerSavegameV1* save_for(std::uintptr_t character) const noexcept;
    data::PropertyState* properties_for(std::uintptr_t character) const noexcept;
    data::FreshInventoryOwnedV4* inventory_for(std::uintptr_t character) const noexcept;
    // SavegameManager::SetLanguage's Character::UpdateInventoryLocalization
    // player branch. Resolves only this published Character's one V4 inventory
    // and refreshes its same V5 presentation records; it is not a Level walk.
    bool update_inventory_localization(
        std::uintptr_t character,
        data::ItemPresentationOwnerV5& presentation,
        const data::ItemTextServicesV5& text,
        std::string& error) const;
};

static_assert(sizeof(std::uintptr_t) == 8,
              "Native player Character owner requires a 64-bit runtime");

} // namespace dh2::character
