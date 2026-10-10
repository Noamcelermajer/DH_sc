#pragma once

#include <chrono>

namespace dh2::ui {

// The authored HUD can poll skill usability less often than cooldown frames.
// A successful skill-button action invalidates this cache so the next HUD
// projection rechecks the same retained Player script immediately.
class GameplayHudUsableRefreshV1 {
public:
    using Clock = std::chrono::steady_clock;
    using TimePoint = Clock::time_point;

    bool due(TimePoint now) const noexcept {
        return last_refresh_.time_since_epoch().count() == 0 ||
               now - last_refresh_ >= std::chrono::milliseconds(500);
    }
    void refreshed(TimePoint now) noexcept { last_refresh_ = now; }
    void invalidate() noexcept { last_refresh_ = {}; }

private:
    TimePoint last_refresh_{};
};

} // namespace dh2::ui
