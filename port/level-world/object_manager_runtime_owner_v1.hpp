#pragma once

#include "game_object_zoning_visibility.hpp"
#include "room_zone_enrollment.hpp"

#include <cstddef>
#include <cstdint>
#include <list>
#include <map>

namespace dh2::object_manager_runtime_owner_v1 {

using Address = std::uintptr_t;
using SourceHandle = std::int32_t;

static_assert(sizeof(SourceHandle) == 4, "source ObjectHandle key is ARM32 int");

// Canonical owned GameObject projection. These fields are the source-backed
// GameObject facts used by the existing zoning and RoomZone enrollment kernels.
// The projection is not an overlay on the original ARM32 object.
struct GameObject {
    Address identity{};
    SourceHandle source_handle{};
    Address is_zonable_target_c4{};
    Address set_updating_target_3c{};
    Address room_zone_2f4{};
    Address visual_object_2d8{};
    float world_x{};
    float world_y{};
    std::uint8_t in_room_list_2ef{};
    std::uint8_t zoning_enabled_2ee{1};
    std::uint8_t in_zone_2f0{};
    std::uint8_t visible_80{1};
    std::uint8_t no_room_member_2f8{};

    dh2::game_object_zoning_visibility::GameObject zoning_view() noexcept;
    dh2::room_zone_enrollment::GameObject enrollment_view() noexcept;

private:
    friend class Owner;
    dh2::game_object_zoning_visibility::VisualObject visual_view_{};
};

enum class Status : std::uint8_t {
    ok,
    invalid_argument,
    duplicate_source_handle,
    duplicate_identity,
    not_found,
    allocation_failed
};

// The source ObjectManager stores ObjectListItem values in std::map<int,...>.
// GetObjectByName assigns the signed key from the manager's +0x4c counter and
// ObjectManager::Add fills that keyed item after duplicate-name resolution.
// InitObjectList and GetObjectsByType walk the tree in ascending signed-key
// order. This API models only that successful keyed registration; it does not
// implement name lookup, factory creation, ObjectHandle resolution, or removal
// from CharacterList. Map node addresses stay stable across unrelated inserts;
// erasing the object ends all borrowed-view lifetimes.
class Owner {
public:
    Owner() = default;
    Owner(const Owner&) = delete;
    Owner& operator=(const Owner&) = delete;
    Owner(Owner&&) = delete;
    Owner& operator=(Owner&&) = delete;

    Status add_object(SourceHandle source_handle, const GameObject& object,
                      GameObject** stored) noexcept;
    Status remove_object(SourceHandle source_handle, bool* removed) noexcept;

    GameObject* find_by_source_handle(SourceHandle source_handle) noexcept;
    const GameObject* find_by_source_handle(SourceHandle source_handle) const noexcept;
    GameObject* find_by_identity(Address identity) noexcept;
    const GameObject* find_by_identity(Address identity) const noexcept;

    // Each call returns the next live entry in the exact signed-key order used
    // by ObjectManager::InitPost/RoomZone::InitObjectList and GetObjectsByType.
    // The cursor stores only the last source key, so unrelated map insertions
    // do not invalidate it. Mutating/removing the current entry during a source
    // traversal is outside this bounded adapter contract.
    struct Cursor {
        SourceHandle last_source_handle{};
        bool started{};
        bool finished{};
    };
    void reset(Cursor* cursor) const noexcept;
    Status next(Cursor* cursor, GameObject** object) noexcept;

    // ObjectManager+0x88 no-room list. It is separate from the map traversal,
    // RoomZone member lists, and ObjectManager+0x60 CharacterList.
    Status add_no_room_object(Address identity, bool* added) noexcept;
    Status register_player_no_room(Address identity, bool* added) noexcept;
    Status remove_no_room_object(Address identity, bool* removed) noexcept;

    std::size_t object_count() const noexcept { return objects_.size(); }
    std::size_t no_room_count() const noexcept { return no_room_objects_.size(); }
    bool no_room_at(std::size_t index, Address* identity) const noexcept;

private:
    using ObjectMap = std::map<SourceHandle, GameObject, std::less<SourceHandle>>;
    ObjectMap objects_;
    // Source AddNoRoomObject tail-inserts a GameObject*; RemoveNoRoomObject
    // removes the first equal pointer. Keep that list order independently.
    std::list<Address> no_room_objects_;
};

} // namespace dh2::object_manager_runtime_owner_v1
