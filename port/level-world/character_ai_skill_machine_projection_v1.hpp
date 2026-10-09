#pragma once

#include "character_ai_skill_commands_v1.hpp"
#include "character_coordinator.hpp"

#include <cstdint>

namespace dh2::character_ai_skill_machine_projection_v1 {

// Logical source projection of Character+0x4fc's CharStateMachine. It borrows
// the single Coordinator state ID and owns only the three additional machine
// fields consumed by AI_BeginSkill/SM_SetSkillState. It is not another FSM.
// The animation receiver is supplied by the existing host animation owner;
// this layer does not invent an identity for it.
class Projection final {
    std::int32_t animation_28_ = -1;
    std::uint32_t skill_index_54_ = 0;
    std::uint8_t moving_58_ = 0;
    character_skill_state_queries::Machine state_query_{};
    character_ai_skill_commands_v1::Machine machine_{};
    character_ai_skill_commands_v1::Character character_{};

public:
    Projection(character::Coordinator&, std::uintptr_t character_identity,
               std::uintptr_t animation_owner_identity);
    Projection(const Projection&) = delete;
    Projection& operator=(const Projection&) = delete;
    Projection(Projection&&) = delete;
    Projection& operator=(Projection&&) = delete;

    // Pointers are stable until this projection or its Coordinator is retired.
    // The command kernel's current-state query reads Coordinator::state.current
    // afresh; AI writes remain in the one projected source-machine field set.
    character_ai_skill_commands_v1::Character* character() noexcept {
        return &character_;
    }
    character_ai_skill_commands_v1::Machine* machine() noexcept {
        return &machine_;
    }
    const character_skill_state_queries::Machine* state_query() const noexcept {
        return &state_query_;
    }
};

} // namespace dh2::character_ai_skill_machine_projection_v1
