#pragma once

#include "../game-data/class_tables.hpp"
#include "../game-data/properties.hpp"
#include "../adam-script-runtime/script_runtime.h"
#include "character_native_bindings.hpp"

#include <cstddef>
#include <cstdint>

namespace dh2::player_skill_property_services_v1 {

// A borrowed projection of the one live Character property owner and the
// process-wide CharProperties::s_temp sheet. Neither storage is owned here.
// `state` and `rules` must remain stable through the synchronous callback;
// `shared_temp` must be shared by every Character skill VM using this source
// global, and must not alias any PropertyState sheet.
struct Bindings {
    std::uintptr_t character = 0;
    const data::PropertyRules* rules = nullptr;
    const data::ClassTables* classes = nullptr;
    data::PropertyState* state = nullptr;
    data::PropertySheet* shared_temp = nullptr;
    bool busy = false;
};

// Four property callbacks are implemented for the source skill path. GetProp
// accepts every schema-valid property ID; SetProp and ApplyPropClass remain
// bounded to recovered runtime skill fields/classes. The original external
// identity-sheet path is deliberately unsupported; it is not modeled by
// substituting the player's sheet or the global temporary sheet.
// Returns zero on the supported source path and
// DH2_SCRIPT_REQUIRED_SERVICE_FAILURE for malformed/unavailable dependencies.
// `returned` is set to zero before validation; output values are written only
// after a successful GetProp.
int invoke(Bindings*, std::uintptr_t character,
           character_native_bindings::Function,
           const dh2_script_value* arguments, std::uint32_t argument_count,
           dh2_script_value* results, std::uint32_t result_capacity,
           std::uint32_t* result_count,
           char* error_text, std::size_t error_capacity) noexcept;

} // namespace dh2::player_skill_property_services_v1
