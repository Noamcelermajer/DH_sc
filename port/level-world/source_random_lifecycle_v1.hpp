#pragma once

#include <cstdint>

extern "C" {
#include "../random/random.h"
}

namespace dh2::random_lifecycle {

// The one process-wide ordinary/synchronized stream pair. The selected owner
// stores it once; consumers borrow this same object for source RNG operations.
dh2_random_state& process_state() noexcept;

// GSInit::Update state 13 and Level::Unload both read Timer::getRealTime(),
// write that value to the ordinary seed, and clear the synchronized seed.
// The two source debug counters are not touched by either reseed.
void seed_from_gsinit_update(std::uint32_t real_time_ms) noexcept;
void seed_from_level_unload(std::uint32_t real_time_ms) noexcept;

}  // namespace dh2::random_lifecycle
