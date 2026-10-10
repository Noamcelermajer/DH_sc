#pragma once

#include "native_body.hpp"
#include "physical_world.hpp"

#include <cstdint>

namespace dh2::character_physical_component_v1 {

// Typed semantic counterpart for the source POCharacter/POFaerie physical
// component. It deliberately does not allocate an ARM32 object or fabricate
// the original vtable. The canonical Character/GameObject and WorldObject
// callback owner stay externally owned; this owner retains only its Box2D body.
enum class Status : std::uint8_t {
    complete,
    invalid_argument,
    wrong_source_type,
    callbacks_incomplete,
    world_unavailable,
    already_created,
    body_creation_failed,
    not_created,
    world_retired,
    transform_rejected,
};

struct Transform {
    float game_x{};
    float game_y{};
    float angle{};
    float radius{};
};

class Owner final {
public:
    Owner() = default;
    Owner(const Owner&) = delete;
    Owner& operator=(const Owner&) = delete;
    Owner(Owner&&) = delete;
    Owner& operator=(Owner&&) = delete;

    // The source input is used directly to derive the exact type-3 definition.
    // `game_object_identity` and `character_identity` are canonical borrowed
    // identities, never pointers to a locally fabricated source object.
    Status create(physical::NativeWorld&, std::uintptr_t character_identity,
                  std::uintptr_t game_object_identity,
                  const physical::CharacterBodyInput&,
                  physical::WorldObject& callbacks) noexcept;
    Status destroy() noexcept;
    Status set_position(float game_x, float game_y) noexcept;
    Status set_transform(float game_x, float game_y, float angle) noexcept;
    Status observe(Transform*) const noexcept;

    bool created() const noexcept { return body_.body != nullptr; }
    std::uintptr_t character_identity() const noexcept { return character_identity_; }
    std::uintptr_t game_object_identity() const noexcept { return game_object_identity_; }
    physical::WorldObject* callbacks() const noexcept { return callbacks_; }
    const physical::CharacterBodyConfig& config() const noexcept { return config_; }

private:
    physical::NativeWorld* world_{};
    b2World* backend_{};
    physical::WorldObject* callbacks_{};
    physical::NativeBody body_{};
    physical::CharacterBodyConfig config_{};
    std::uintptr_t character_identity_{};
    std::uintptr_t game_object_identity_{};
};

} // namespace dh2::character_physical_component_v1
