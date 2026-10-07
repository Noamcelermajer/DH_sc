#include "../object_manager_init_post_v1.hpp"

#include <cassert>
#include <cstdint>
#include <iostream>
#include <string>
#include <vector>

using namespace dh2::object_manager_init_post_v1;
using dh2::object_manager_runtime_owner_v1::GameObject;
using dh2::object_manager_runtime_owner_v1::Owner;

namespace {

struct Fixture {
    std::vector<std::string> events;
};

std::string object_tag(const GameObject& object) {
    return std::to_string(object.identity);
}

bool load_module(void* context, Address identity) {
    static_cast<Fixture*>(context)->events.push_back(
        "module:" + std::to_string(identity));
    return true;
}

bool object_init_post(void* context, GameObject& object) {
    static_cast<Fixture*>(context)->events.push_back(
        "init:" + object_tag(object));
    return true;
}

bool test_enable_condition(void* context, GameObject& object,
                           bool include_enabled) {
    static_cast<Fixture*>(context)->events.push_back(
        std::string("test-enable:") + (include_enabled ? "true:" : "false:") +
        object_tag(object));
    return !include_enabled;
}

bool clear_post_init_lists(void* context) {
    static_cast<Fixture*>(context)->events.push_back("clear:2c,44,34");
    return true;
}

bool is_room_zone(void* context, const GameObject& object, bool* result) {
    static_cast<Fixture*>(context)->events.push_back(
        "is-room-zone:" + object_tag(object));
    *result = object.identity == 0xB;
    return true;
}

bool append_room_zone(void* context, GameObject& object) {
    static_cast<Fixture*>(context)->events.push_back(
        "append-room-zone:" + object_tag(object));
    return true;
}

bool room_zone_init_object_list(void* context, GameObject& object) {
    static_cast<Fixture*>(context)->events.push_back(
        "room-zone-init-list:" + object_tag(object));
    return true;
}

bool has_additional_init_list(void* context, const GameObject& object,
                              bool* result) {
    static_cast<Fixture*>(context)->events.push_back(
        "v38:" + object_tag(object));
    *result = object.identity == 0xA;
    return true;
}

bool append_additional_init_object(void* context, GameObject& object) {
    static_cast<Fixture*>(context)->events.push_back(
        "append-2c:" + object_tag(object));
    return true;
}

bool active_list_condition_gate(void* context, const GameObject& object,
                                bool* result) {
    static_cast<Fixture*>(context)->events.push_back(
        "condition-gate-ac-a8:" + object_tag(object));
    *result = object.identity != 0xC;
    return true;
}

bool read_active_list_flags(void* context, const GameObject& object,
                            bool* flag_d0, bool* flag_cc) {
    static_cast<Fixture*>(context)->events.push_back(
        "flags-d0-cc:" + object_tag(object));
    *flag_d0 = object.identity == 0xD;
    *flag_cc = true;
    return true;
}

bool append_active_object(void* context, GameObject& object) {
    static_cast<Fixture*>(context)->events.push_back(
        "append-44:" + object_tag(object));
    return true;
}

Services services(Fixture& fixture) {
    return {&fixture, load_module, object_init_post, test_enable_condition,
            clear_post_init_lists, is_room_zone, append_room_zone,
            room_zone_init_object_list, has_additional_init_list,
            append_additional_init_object, active_list_condition_gate,
            read_active_list_flags, append_active_object};
}

GameObject object(Address identity) {
    GameObject result{};
    result.identity = identity;
    return result;
}

void module_and_object_phases_are_resumable_and_ordered() {
    Owner owner;
    GameObject* ignored = nullptr;
    assert(owner.add_object(40, object(0xD), &ignored) ==
           dh2::object_manager_runtime_owner_v1::Status::ok);
    assert(owner.add_object(30, object(0xC), &ignored) ==
           dh2::object_manager_runtime_owner_v1::Status::ok);
    assert(owner.add_object(7, object(0xA), &ignored) ==
           dh2::object_manager_runtime_owner_v1::Status::ok);
    assert(owner.add_object(3, object(0xB), &ignored) ==
           dh2::object_manager_runtime_owner_v1::Status::ok);

    const ModuleRef modules[]{{0x100}, {0x200}};
    State state{};
    assert(begin(&state, &owner, modules, 2) == Status::ok);
    Fixture fixture;
    const auto provider = services(fixture);

    Status status = Status::progress;
    for (unsigned step_index = 0; step_index < 64 && status != Status::complete;
         ++step_index) {
        status = step(&state, &provider);
        assert(status == Status::progress || status == Status::complete);
    }
    assert(status == Status::complete);
    assert(state.phase == Phase::done);
    assert(state.module_load_calls == 2);
    assert(state.object_init_calls == 4);
    assert(state.post_init_object_calls == 4);

    const std::vector<std::string> expected{
        "module:256", "module:512",
        "init:11", "test-enable:false:11",
        "init:10", "test-enable:false:10",
        "init:12", "test-enable:false:12",
        "init:13", "test-enable:false:13",
        "clear:2c,44,34",
        "is-room-zone:11", "append-room-zone:11", "room-zone-init-list:11",
        "condition-gate-ac-a8:11", "flags-d0-cc:11", "append-44:11",
        "is-room-zone:10", "v38:10", "append-2c:10",
        "condition-gate-ac-a8:10", "flags-d0-cc:10", "append-44:10",
        "is-room-zone:12", "v38:12", "condition-gate-ac-a8:12",
        "is-room-zone:13", "v38:13", "condition-gate-ac-a8:13",
        "flags-d0-cc:13"};
    assert(fixture.events == expected);
}

void missing_module_provider_does_not_advance_cursor() {
    Owner owner;
    const ModuleRef modules[]{{0x1234}};
    State state{};
    assert(begin(&state, &owner, modules, 1) == Status::ok);

    assert(step(&state, nullptr) == Status::unsupported_provider);
    assert(state.phase == Phase::load_modules && state.next_module == 0);
    assert(begin(&state, &owner, modules, 1) == Status::invalid_state);
    assert(state.phase == Phase::load_modules && state.next_module == 0);

    Fixture fixture;
    auto provider = services(fixture);
    provider.object_init_post = nullptr;
    assert(step(&state, &provider) == Status::progress);
    assert(state.next_module == 1 && state.module_load_calls == 1);
}

void begin_rejects_invalid_borrowed_module_view() {
    Owner owner;
    State state{};
    const ModuleRef invalid[]{{0}};
    assert(begin(&state, &owner, invalid, 1) == Status::invalid_argument);
    assert(state.phase == Phase::unstarted);
    assert(begin(&state, &owner, nullptr, 1) == Status::invalid_argument);
}

} // namespace

int main() {
    module_and_object_phases_are_resumable_and_ordered();
    missing_module_provider_does_not_advance_cursor();
    begin_rejects_invalid_borrowed_module_view();
    std::cout << "ObjectManager InitPost v1 host checks passed: resumable module, object-init, final-list phases\n";
}
