#include "character_ai_skill_machine_projection_v1.hpp"

#include <stdexcept>

namespace dh2::character_ai_skill_machine_projection_v1 {

Projection::Projection(character::Coordinator& coordinator,
                       std::uintptr_t character_identity,
                       std::uintptr_t animation_owner_identity)
    {
    if (!character_identity || character_identity != coordinator.owner() ||
        !animation_owner_identity)
        throw std::invalid_argument(
            "Skill machine projection requires the same Character owner and an animation owner");

    // IDA: CharStateMachine::CharStateMachine (0x3c1ac4) initializes the
    // selected-animation field at +0x28 to -1 and the +0x54/+0x58 fields to 0.
    // SM_SetSkillState (0x3c6670) writes those exact fields before event 0xc355.
    // SM_GetState (0x3c01ac) reads the installed state's first word through
    // machine+0x20; this port maps that read to the Coordinator's sole state ID.
    state_query_.current_state_id = &coordinator.state.current;
    machine_.identity = reinterpret_cast<std::uintptr_t>(&machine_);
    machine_.owner_04 = character_identity;
    machine_.state_query = &state_query_;
    machine_.animation_28 = &animation_28_;
    machine_.skill_index_54 = &skill_index_54_;
    machine_.moving_58 = &moving_58_;
    character_.identity = character_identity;
    character_.skill_machine_4fc = &machine_;
    // Character+0x49c is the CharAnimator receiver used by AI_EndSkill's
    // StopLoop branch (0x3d8474). Require the host to provide its identity.
    character_.stop_skill_loop_receiver_49c = animation_owner_identity;
}

} // namespace dh2::character_ai_skill_machine_projection_v1
