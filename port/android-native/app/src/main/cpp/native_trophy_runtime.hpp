#pragma once

#include "../../../../../../port/game-data/trophy_manager_owner_v1.hpp"

namespace dh2::native::trophies {

// Process-wide native TrophyManager state. Android asset loading and any file
// storage live in the caller; this owner only binds the source TrophyTable to
// one manager and intentionally remains memory-only until a save path is
// proven.
class OwnerV1 {
    data::TrophyManagerOwnerV1 manager_;
public:
    bool initialize(data::Bytes records, data::Bytes names, data::Bytes fields,
                    std::string& error);
    bool initialized() const noexcept { return manager_.initialized(); }
    data::TrophyManagerOwnerV1* manager() noexcept {
        return initialized() ? &manager_ : nullptr;
    }
    const data::TrophyManagerOwnerV1* manager() const noexcept {
        return initialized() ? &manager_ : nullptr;
    }
    static constexpr bool persistence_available = false;
};

} // namespace dh2::native::trophies
