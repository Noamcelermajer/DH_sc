#include "object_manager_runtime_owner_v1.hpp"

#include <algorithm>
#include <iterator>
#include <new>

namespace dh2::object_manager_runtime_owner_v1 {

dh2::game_object_zoning_visibility::GameObject GameObject::zoning_view() noexcept {
    visual_view_.identity = visual_object_2d8;
    visual_view_.owner_identity = identity;
    return {identity,
            is_zonable_target_c4,
            set_updating_target_3c,
            room_zone_2f4,
            visual_object_2d8 ? &visual_view_ : nullptr,
            zoning_enabled_2ee,
            in_zone_2f0,
            visible_80};
}

dh2::room_zone_enrollment::GameObject GameObject::enrollment_view() noexcept {
    return {identity,
            &world_x,
            &world_y,
            &room_zone_2f4,
            &in_room_list_2ef,
            &in_zone_2f0,
            &zoning_enabled_2ee,
            &visual_object_2d8,
            &visible_80};
}

Status Owner::add_object(SourceHandle source_handle, const GameObject& object,
                         GameObject** stored) noexcept {
    if (stored == nullptr || object.identity == 0) return Status::invalid_argument;
    *stored = nullptr;
    if (objects_.find(source_handle) != objects_.end()) {
        return Status::duplicate_source_handle;
    }
    if (find_by_identity(object.identity) != nullptr) return Status::duplicate_identity;

    try {
        GameObject value = object;
        value.source_handle = source_handle;
        value.visual_view_ = {};
        const auto inserted = objects_.emplace(source_handle, value);
        if (!inserted.second) return Status::duplicate_source_handle;
        *stored = &inserted.first->second;
        return Status::ok;
    } catch (const std::bad_alloc&) {
        return Status::allocation_failed;
    } catch (...) {
        return Status::allocation_failed;
    }
}

Status Owner::remove_object(SourceHandle source_handle, bool* removed) noexcept {
    if (removed == nullptr) return Status::invalid_argument;
    *removed = false;
    auto found = objects_.find(source_handle);
    if (found == objects_.end()) return Status::not_found;

    bool no_room_removed = false;
    const Status no_room_status =
        remove_no_room_object(found->second.identity, &no_room_removed);
    (void)no_room_removed;
    if (no_room_status != Status::ok) return no_room_status;
    objects_.erase(found);
    *removed = true;
    return Status::ok;
}

GameObject* Owner::find_by_source_handle(SourceHandle source_handle) noexcept {
    const auto found = objects_.find(source_handle);
    return found == objects_.end() ? nullptr : &found->second;
}

const GameObject* Owner::find_by_source_handle(SourceHandle source_handle) const noexcept {
    const auto found = objects_.find(source_handle);
    return found == objects_.end() ? nullptr : &found->second;
}

GameObject* Owner::find_by_identity(Address identity) noexcept {
    for (auto& item : objects_) {
        if (item.second.identity == identity) return &item.second;
    }
    return nullptr;
}

const GameObject* Owner::find_by_identity(Address identity) const noexcept {
    for (const auto& item : objects_) {
        if (item.second.identity == identity) return &item.second;
    }
    return nullptr;
}

void Owner::reset(Cursor* cursor) const noexcept {
    if (cursor == nullptr) return;
    *cursor = {};
    cursor->finished = objects_.empty();
}

Status Owner::next(Cursor* cursor, GameObject** object) noexcept {
    if (cursor == nullptr || object == nullptr) return Status::invalid_argument;
    *object = nullptr;
    if (cursor->finished) return Status::ok;

    auto found = cursor->started ? objects_.upper_bound(cursor->last_source_handle)
                                 : objects_.begin();
    if (found == objects_.end()) {
        cursor->finished = true;
        return Status::ok;
    }
    cursor->last_source_handle = found->first;
    cursor->started = true;
    *object = &found->second;
    return Status::ok;
}

Status Owner::add_no_room_object(Address identity, bool* added) noexcept {
    if (added == nullptr || identity == 0) return Status::invalid_argument;
    *added = false;
    GameObject* object = find_by_identity(identity);
    if (object == nullptr) return Status::not_found;

    // Source +0x2f8 is the duplicate gate. It is written only after the source
    // has allocated and tail-linked its 12-byte list node.
    if (object->no_room_member_2f8 != 0) return Status::ok;
    try {
        no_room_objects_.push_back(identity);
    } catch (const std::bad_alloc&) {
        return Status::allocation_failed;
    } catch (...) {
        return Status::allocation_failed;
    }
    object->no_room_member_2f8 = 1;
    *added = true;
    return Status::ok;
}

Status Owner::register_player_no_room(Address identity, bool* added) noexcept {
    // PlayerManager::_AddCharacter uses ObjectManager::AddNoRoomObject when
    // RoomZone::AddInitialObject rejects the player. This is a named call path
    // into the same source list authority, not a second Player membership list.
    return add_no_room_object(identity, added);
}

Status Owner::remove_no_room_object(Address identity, bool* removed) noexcept {
    if (removed == nullptr || identity == 0) return Status::invalid_argument;
    *removed = false;
    auto found = std::find(no_room_objects_.begin(), no_room_objects_.end(), identity);
    if (found == no_room_objects_.end()) return Status::ok;

    no_room_objects_.erase(found);
    if (GameObject* object = find_by_identity(identity)) {
        object->no_room_member_2f8 = 0;
    }
    *removed = true;
    return Status::ok;
}

bool Owner::no_room_at(std::size_t index, Address* identity) const noexcept {
    if (identity == nullptr || index >= no_room_objects_.size()) return false;
    auto found = no_room_objects_.begin();
    std::advance(found, static_cast<std::ptrdiff_t>(index));
    *identity = *found;
    return true;
}

} // namespace dh2::object_manager_runtime_owner_v1
