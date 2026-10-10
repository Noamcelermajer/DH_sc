#include "character_physical_component_v1.hpp"
#include "body_transform.hpp"

#include <cmath>

namespace dh2::character_physical_component_v1 {
namespace {
bool live_world(physical::NativeWorld* world, b2World* backend) noexcept {
    return world && backend && world->backend() == backend;
}
bool complete_callbacks(const physical::WorldObject& callbacks) noexcept {
    return callbacks.context && callbacks.test && callbacks.contact &&
           callbacks.velocity && callbacks.reserved == 0;
}
}

Status Owner::create(physical::NativeWorld& world,
                     std::uintptr_t character_identity,
                     std::uintptr_t game_object_identity,
                     const physical::CharacterBodyInput& input,
                     physical::WorldObject& callbacks) noexcept {
    if (!character_identity || !game_object_identity || !input.owner ||
        input.reserved)
        return Status::invalid_argument;
    if (body_.body) return Status::already_created;
    if (!complete_callbacks(callbacks)) return Status::callbacks_incomplete;
    if (!world.backend()) return Status::world_unavailable;

    physical::CharacterBodyConfig config{};
    if (dh2_character_body_config(&config, &input) != 0)
        return Status::invalid_argument;
    if (input.character_type != 3 || !config.enabled || !config.po_character ||
        !config.pinned || config.shape.kind != 0)
        return Status::wrong_source_type;

    b2Body* body = nullptr;
    try {
        body = world.create_character(config, &callbacks);
    } catch (...) {
        return Status::body_creation_failed;
    }
    if (!body) return Status::body_creation_failed;

    world_ = &world;
    backend_ = world.backend();
    callbacks_ = &callbacks;
    body_ = {body, config.radius, config.pinned};
    config_ = config;
    character_identity_ = character_identity;
    game_object_identity_ = game_object_identity;
    return Status::complete;
}

Status Owner::destroy() noexcept {
    if (!body_.body) return Status::not_created;
    if (!live_world(world_, backend_)) {
        // NativeWorld::clear already destroyed its bodies. Retire the borrowed
        // identities without dereferencing a body from the old Box2D instance.
        body_ = {};
        world_ = nullptr;
        backend_ = nullptr;
        callbacks_ = nullptr;
        character_identity_ = game_object_identity_ = 0;
        config_ = {};
        return Status::world_retired;
    }
    try {
        world_->destroy(body_.body);
    } catch (...) {
        return Status::world_unavailable;
    }
    body_ = {};
    world_ = nullptr;
    backend_ = nullptr;
    callbacks_ = nullptr;
    character_identity_ = game_object_identity_ = 0;
    config_ = {};
    return Status::complete;
}

Status Owner::set_position(float x, float y) noexcept {
    if (!body_.body) return Status::not_created;
    if (!live_world(world_, backend_)) return Status::world_retired;
    const float position[2]{x, y};
    const int result = dh2_native_body_set_position(&body_, position);
    return result == 1 ? Status::complete
         : result == 0 ? Status::transform_rejected : Status::invalid_argument;
}

Status Owner::set_transform(float x, float y, float angle) noexcept {
    if (!body_.body) return Status::not_created;
    if (!live_world(world_, backend_)) return Status::world_retired;
    if (!std::isfinite(x) || !std::isfinite(y) || !std::isfinite(angle))
        return Status::invalid_argument;
    const physical::TransformRequest request{{x * 0.01f, y * 0.01f}, angle, 1};
    const int result = dh2_native_body_apply_transform(&body_, &request);
    return result == 1 ? Status::complete
         : result == 0 ? Status::transform_rejected : Status::invalid_argument;
}

Status Owner::observe(Transform* out) const noexcept {
    if (!out) return Status::invalid_argument;
    if (!body_.body) return Status::not_created;
    if (!live_world(world_, backend_)) return Status::world_retired;
    float values[4]{};
    if (dh2_native_body_query(values, &body_) != 0)
        return Status::invalid_argument;
    *out = {values[0], values[1], values[2], values[3]};
    return Status::complete;
}

} // namespace dh2::character_physical_component_v1
