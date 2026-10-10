#include "character_physical_component_v1.hpp"

#include <cmath>
#include <iostream>
#include <stdexcept>

using namespace dh2::physical;
using dh2::character_physical_component_v1::Owner;
using dh2::character_physical_component_v1::Status;

namespace {
void require(bool value, const char* message) {
    if (!value) throw std::runtime_error(message);
}
struct CallbackContext { unsigned calls{}; };
unsigned test(void* raw, void*, const Filter*, const Filter*) {
    ++static_cast<CallbackContext*>(raw)->calls;
    return 1;
}
void contact(void* raw, ContactEvent, void*, const float*, unsigned) {
    ++static_cast<CallbackContext*>(raw)->calls;
}
void velocity(void* raw, float* out) {
    ++static_cast<CallbackContext*>(raw)->calls;
    out[0] = out[1] = 0.0f;
}
WorldObject callbacks(CallbackContext& context) {
    return {&context, test, contact, velocity, {0, 0}, 0, 0};
}
CharacterBodyInput faery_input(void* owner) {
    CharacterBodyInput input{};
    input.owner = owner;
    input.new_physical = owner;
    input.character_type = 3;
    input.absolute_bounds[0] = 0;
    input.absolute_bounds[1] = 0;
    input.absolute_bounds[2] = 72;
    input.absolute_bounds[3] = 60;
    input.position[0] = 125;
    input.position[1] = -50;
    return input;
}
}

int main() try {
    NativeWorld world;
    const float bounds[4]{-100, -100, 100, 100};
    world.load(bounds);
    require(world.backend() && world.backend()->GetBodyCount() == 1,
            "PhysicalWorld ground body mismatch");

    CallbackContext context{};
    auto callback_owner = callbacks(context);
    int canonical_game_object = 0;
    const std::uintptr_t game_object_identity =
        reinterpret_cast<std::uintptr_t>(&canonical_game_object);
    const std::uintptr_t character_identity = game_object_identity + 0x100;
    auto input = faery_input(&canonical_game_object);
    Owner owner;

    auto invalid_callbacks = callback_owner;
    invalid_callbacks.contact = nullptr;
    require(owner.create(world, character_identity, game_object_identity,
                         input, invalid_callbacks) == Status::callbacks_incomplete &&
            world.backend()->GetBodyCount() == 1,
            "Incomplete PhysicalObject callback view allocated a body");

    auto wrong_type = input;
    wrong_type.character_type = 4;
    require(owner.create(world, character_identity, game_object_identity,
                         wrong_type, callback_owner) == Status::wrong_source_type &&
            world.backend()->GetBodyCount() == 1,
            "Non-Faery Character config allocated a body");

    require(owner.create(world, character_identity, game_object_identity,
                         input, callback_owner) == Status::complete,
            "Source type-3 physical component creation failed");
    require(owner.created() && owner.character_identity() == character_identity &&
            owner.game_object_identity() == game_object_identity &&
            owner.callbacks() == &callback_owner,
            "Canonical identities or borrowed callbacks were not retained");
    require(world.backend()->GetBodyCount() == 2 && owner.config().po_character &&
            owner.config().pinned && owner.config().shape.kind == 0 &&
            owner.config().shape.category_bits == 0x100 &&
            owner.config().shape.mask_bits == 0,
            "Faery body definition differs from source type-3 policy");
    auto* body = world.backend()->GetBodyList();
    require(body && body->GetUserData() == &callback_owner &&
            body->GetShapeList() &&
            body->GetShapeList()->GetUserData() == &callback_owner &&
            body->IsStatic() && body->GetMass() == 0.0f,
            "Body, shape, or POCharacter pin did not retain source owner policy");

    dh2::character_physical_component_v1::Transform transform{};
    require(owner.observe(&transform) == Status::complete &&
            std::fabs(transform.game_x - 125.0f) < 0.001f &&
            std::fabs(transform.game_y + 50.0f) < 0.001f &&
            std::fabs(transform.radius - 36.0f) < 0.001f,
            "Source GameObject-to-Box2D transform/radius conversion mismatch");
    require(owner.set_position(250.0f, 75.0f) == Status::complete &&
            owner.observe(&transform) == Status::complete &&
            std::fabs(transform.game_x - 250.0f) < 0.001f &&
            std::fabs(transform.game_y - 75.0f) < 0.001f,
            "Physical component position path failed");
    require(owner.set_transform(-25.0f, 12.5f, 0.75f) == Status::complete &&
            owner.observe(&transform) == Status::complete &&
            std::fabs(transform.game_x + 25.0f) < 0.001f &&
            std::fabs(transform.game_y - 12.5f) < 0.001f &&
            std::fabs(transform.angle - 0.75f) < 0.001f,
            "Physical component transform path failed");
    require(owner.destroy() == Status::complete && !owner.created() &&
            !owner.character_identity() && !owner.game_object_identity() &&
            world.backend()->GetBodyCount() == 1 &&
            owner.destroy() == Status::not_created,
            "Physical component teardown did not retire body and identities once");

    require(owner.create(world, character_identity, game_object_identity,
                         input, callback_owner) == Status::complete,
            "Physical component reuse after teardown failed");
    world.clear();
    require(owner.destroy() == Status::world_retired && !owner.created() &&
            !owner.callbacks(),
            "World retirement was confused with body destruction");
    std::cout << "{\"faery_source_config\":true,\"typed_component_lifecycle\":true,"
                 "\"box2d_body_shapes\":true,\"transform\":true,"
                 "\"teardown\":true,\"mismatches\":0}\n";
    return 0;
} catch (const std::exception& error) {
    std::cerr << error.what() << '\n';
    return 1;
}
