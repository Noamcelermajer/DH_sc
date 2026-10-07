#include "../object_manager_runtime_owner_v1.hpp"

#include <cassert>
#include <cstdint>
#include <iostream>

using namespace dh2::object_manager_runtime_owner_v1;

namespace {

GameObject object(Address identity) {
    GameObject value{};
    value.identity = identity;
    value.is_zonable_target_c4 = 0x100;
    value.set_updating_target_3c = 0x200;
    value.room_zone_2f4 = 0x300;
    value.visual_object_2d8 = identity + 0x10;
    value.world_x = 12.5f;
    value.world_y = -4.25f;
    value.in_room_list_2ef = 1;
    value.zoning_enabled_2ee = 1;
    value.in_zone_2f0 = 0;
    value.visible_80 = 1;
    return value;
}

void ordered_map_and_stable_identity() {
    Owner owner;
    GameObject* first_inserted = nullptr;
    const Address high_identity = sizeof(Address) >= 8
        ? static_cast<Address>(0x100000001ull) : static_cast<Address>(0x10001u);
    const Address same_low_bits = sizeof(Address) >= 8
        ? static_cast<Address>(0x200000001ull) : static_cast<Address>(0x20001u);

    assert(owner.add_object(21, object(high_identity), &first_inserted) == Status::ok);
    assert(first_inserted && first_inserted->source_handle == 21);
    assert(owner.add_object(-3, object(same_low_bits), nullptr) == Status::invalid_argument);
    GameObject* negative = nullptr;
    assert(owner.add_object(-3, object(same_low_bits), &negative) == Status::ok);
    assert(negative && negative->identity == same_low_bits);
    assert(owner.add_object(7, object(0x300), &negative) == Status::ok);
    assert(owner.find_by_identity(high_identity) == first_inserted);

    Owner::Cursor cursor{};
    owner.reset(&cursor);
    GameObject* current = nullptr;
    assert(owner.next(&cursor, &current) == Status::ok && current->source_handle == -3);
    assert(owner.next(&cursor, &current) == Status::ok && current->source_handle == 7);
    assert(owner.next(&cursor, &current) == Status::ok && current->source_handle == 21);
    assert(owner.next(&cursor, &current) == Status::ok && current == nullptr);
    assert(owner.next(&cursor, &current) == Status::ok && current == nullptr);

    assert(owner.add_object(22, object(high_identity + 1), &negative) == Status::ok);
    assert(owner.find_by_identity(high_identity) == first_inserted);
    owner.reset(&cursor);
    assert(owner.next(&cursor, &current) == Status::ok && current->source_handle == -3);
    assert(owner.next(&cursor, &current) == Status::ok && current->source_handle == 7);
    assert(owner.next(&cursor, &current) == Status::ok && current->source_handle == 21);
    assert(owner.next(&cursor, &current) == Status::ok && current->source_handle == 22);

    assert(owner.add_object(21, object(0x400), &negative) == Status::duplicate_source_handle);
    assert(owner.add_object(23, object(high_identity), &negative) == Status::duplicate_identity);
}

void canonical_views() {
    Owner owner;
    GameObject* value = nullptr;
    assert(owner.add_object(4, object(0x12345678), &value) == Status::ok);

    auto zoning = value->zoning_view();
    assert(zoning.identity == value->identity);
    assert(zoning.is_zonable_target_c4 == value->is_zonable_target_c4);
    assert(zoning.set_updating_target_3c == value->set_updating_target_3c);
    assert(zoning.room_zone_2f4 == value->room_zone_2f4);
    assert(zoning.visual_2d8 && zoning.visual_2d8->identity == value->visual_object_2d8);
    assert(zoning.visual_2d8->owner_identity == value->identity);

    auto enrollment = value->enrollment_view();
    assert(enrollment.identity == value->identity);
    assert(enrollment.world_x && *enrollment.world_x == 12.5f);
    assert(enrollment.world_y && *enrollment.world_y == -4.25f);
    assert(enrollment.room_zone && *enrollment.room_zone == value->room_zone_2f4);
    assert(enrollment.in_room_list && *enrollment.in_room_list == 1);
    assert(enrollment.visual_object && *enrollment.visual_object == value->visual_object_2d8);

    *enrollment.room_zone = 0x87654321;
    *enrollment.in_zone = 1;
    assert(value->room_zone_2f4 == 0x87654321);
    assert(value->in_zone_2f0 == 1);

    value->visual_object_2d8 = 0;
    assert(value->zoning_view().visual_2d8 == nullptr);
}

void no_room_list_and_player_path() {
    Owner owner;
    GameObject* regular = nullptr;
    GameObject* player = nullptr;
    assert(owner.add_object(1, object(0x1001), &regular) == Status::ok);
    assert(owner.add_object(2, object(0x1002), &player) == Status::ok);

    // PlayerManager's fallback registers the player in the same +0x88 owner;
    // this owner leaves RoomZone and +0x2ef membership to their own source path.
    player->room_zone_2f4 = 0x5000;
    player->in_room_list_2ef = 0;
    bool added = false;
    assert(owner.register_player_no_room(player->identity, &added) == Status::ok);
    assert(added && player->no_room_member_2f8 == 1);
    assert(player->room_zone_2f4 == 0x5000 && player->in_room_list_2ef == 0);

    assert(owner.add_no_room_object(regular->identity, &added) == Status::ok && added);
    assert(owner.add_no_room_object(regular->identity, &added) == Status::ok && !added);
    assert(owner.no_room_count() == 2);
    Address member = 0;
    assert(owner.no_room_at(0, &member) && member == player->identity);
    assert(owner.no_room_at(1, &member) && member == regular->identity);
    assert(!owner.no_room_at(2, &member));

    bool removed = false;
    assert(owner.remove_no_room_object(player->identity, &removed) == Status::ok && removed);
    assert(player->no_room_member_2f8 == 0 && owner.no_room_count() == 1);
    assert(owner.remove_object(1, &removed) == Status::ok && removed);
    assert(owner.find_by_identity(regular->identity) == nullptr);
    assert(owner.no_room_count() == 0);
    assert(owner.find_by_identity(player->identity) == player);
}

} // namespace

int main() {
    ordered_map_and_stable_identity();
    canonical_views();
    no_room_list_and_player_path();
    std::cout << "ObjectManager runtime owner v1 host checks passed\n";
}
