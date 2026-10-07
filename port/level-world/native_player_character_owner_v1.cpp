#include "native_player_character_owner_v1.hpp"
#include <stdexcept>

namespace dh2::character {

NativePlayerCharacterOwnerV1::NativePlayerCharacterOwnerV1()
    : Coordinator(reinterpret_cast<std::uintptr_t>(this)) {
    if (Coordinator::owner() != identity())
        throw std::logic_error("Native player Character and Coordinator identities differ");
}

bool NativePlayerCharacterOwnerV1::bind_session(
        std::uintptr_t* player_character_660,
        data::PlayerSavegameV1& save,
        data::PropertyState& properties,
        data::FreshInventoryOwnedV4* inventory,
        std::string& error) {
    const auto id = identity();
    if (!player_character_660 ||
        reinterpret_cast<std::uintptr_t>(player_character_660) % alignof(std::uintptr_t) ||
        Coordinator::owner() != id || save.character() != id) {
        error = "Native Character publication requires its canonical PlayerInfo and Save identities";
        return false;
    }
    if (inventory && (inventory->character() != id || inventory->properties() != &properties)) {
        error = "Native Character inventory does not borrow its canonical identity and properties";
        return false;
    }
    if (player_character_660_ && !matches_session(player_character_660_, *save_, *properties_, inventory_)) {
        error = "Native Character already has a different live session";
        return false;
    }
    if (player_character_660_ &&
        !matches_session(player_character_660, save, properties, inventory)) {
        error = "Native Character rebind changed an authoritative owner";
        return false;
    }
    if (*player_character_660 && *player_character_660 != id) {
        error = "PlayerInfo Character660 already belongs to another Character";
        return false;
    }
    player_character_660_ = player_character_660;
    save_ = &save;
    properties_ = &properties;
    inventory_ = inventory;
    *player_character_660_ = id;
    error.clear();
    return true;
}

bool NativePlayerCharacterOwnerV1::bind_inventory(
        data::FreshInventoryOwnedV4& inventory,
        std::string& error) {
    const auto id = identity();
    if (!player_character_660_ || !save_ || !properties_ ||
        Coordinator::owner() != id || *player_character_660_ != id ||
        save_->character() != id) {
        error = "Native inventory attachment requires the published canonical Character, Save and properties";
        return false;
    }
    if (inventory.character() != id || inventory.properties() != properties_) {
        error = "Native inventory does not borrow the Character's canonical identity and properties";
        return false;
    }
    if (inventory_ == &inventory) {
        error.clear();
        return true;
    }
    if (inventory_) {
        error = "Native Character already owns a different live inventory";
        return false;
    }
    inventory_ = &inventory;
    error.clear();
    return true;
}

bool NativePlayerCharacterOwnerV1::unbind_session(std::string& error) {
    if (!player_character_660_) {
        error.clear();
        return true;
    }
    const bool association_matches = *player_character_660_ == identity();
    if (association_matches) *player_character_660_ = 0;
    player_character_660_ = nullptr;
    save_ = nullptr;
    properties_ = nullptr;
    inventory_ = nullptr;
    if (!association_matches) {
        error = "PlayerInfo Character660 changed before native Character retirement";
        return false;
    }
    error.clear();
    return true;
}

bool NativePlayerCharacterOwnerV1::matches_session(
        const std::uintptr_t* player_character_660,
        const data::PlayerSavegameV1& save,
        const data::PropertyState& properties,
        const data::FreshInventoryOwnedV4* inventory) const noexcept {
    return player_character_660_ == player_character_660 && save_ == &save &&
           properties_ == &properties && inventory_ == inventory &&
           player_character_660 && *player_character_660 == identity() &&
           save.character() == identity() &&
           (!inventory || (inventory->character() == identity() &&
                           inventory->properties() == &properties));
}

data::PlayerSavegameV1* NativePlayerCharacterOwnerV1::save_for(
        std::uintptr_t character) const noexcept {
    return character == identity() ? save_ : nullptr;
}

data::PropertyState* NativePlayerCharacterOwnerV1::properties_for(
        std::uintptr_t character) const noexcept {
    return character == identity() ? properties_ : nullptr;
}

data::FreshInventoryOwnedV4* NativePlayerCharacterOwnerV1::inventory_for(
        std::uintptr_t character) const noexcept {
    return character == identity() ? inventory_ : nullptr;
}

} // namespace dh2::character
