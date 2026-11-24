// Port addition (CAM1, TRACK-B.md decision 15, not in the original): player-adjustable gameplay camera. Port settings
// (core-platform/port_settings.hpp, file dh2_port.cfg, env DH2_<KEY>, the "!" session dialog):
//   camfov     vertical view in percent of the original (50..200, default 100). 120 shows 20% more world top to bottom
//              (the half-angle tangent is scaled, so the percentage is the visible height, not the angle).
//   camdist    camera distance from the player in percent of the rig's own distance (50..300, default 100).
//   camfollow  how tightly the camera follows, percent of the original damping ratio 0.7 (50..135, default 100; the
//              effective ratio is kept below 0.95 so the spring stays stable). Higher = less trailing behind the player.
//   camlead    look-ahead in the movement direction (0..100, default 0 = the original: off). The followed point moves
//              ahead of the player by its smoothed velocity times camlead/100 * 0.75 s, at most 0.6 x the camera distance.
// All defaults are the original's behaviour, and CameraLevel::Update touches nothing while they are at their defaults.
// Only the level camera (CameraLevel without m_useObjectPosition) is affected; the map cameras are left alone.
#pragma once

#include <cmath>

extern int g_dh2CamFovPercent;     // core-platform/src/port_settings.cpp
extern int g_dh2CamDistPercent;
extern int g_dh2CamFollowPercent;
extern int g_dh2CamLeadPercent;

namespace dh2cam {

// Vertical field of view for a percentage of the visible height (100 = baseFov unchanged).
inline float ScaledFov(float baseFov, int percent) {
    if (percent == 100 || percent <= 0) {
        return baseFov;
    }
    const double t = std::tan(static_cast<double>(baseFov) * 0.5) * (percent / 100.0);
    return static_cast<float>(2.0 * std::atan(t));
}

// Extra camera-node z (same axis and sign as CameraLevel's zoom: +z moves away from the target) for a distance percentage.
inline float ExtraDistanceZ(float defaultTargetDistance, int percent) {
    return (static_cast<float>(percent) / 100.0f - 1.0f) * defaultTargetDistance;
}

// Damping ratio for a follow percentage, clamped to a stable range.
inline float FollowRatio(float baseRatio, int percent) {
    float r = baseRatio * static_cast<float>(percent) / 100.0f;
    if (r < 0.2f) r = 0.2f;
    if (r > 0.95f) r = 0.95f;
    return percent == 100 ? baseRatio : r;
}

// Look-ahead state: the followed point is pushed ahead along the target's smoothed horizontal (x, y) velocity.
struct LeadState {
    bool valid = false;
    float prevX = 0.0f, prevY = 0.0f;
    float velX = 0.0f, velY = 0.0f;  // smoothed, world units per second
    void Reset() { *this = LeadState(); }
};

// Feeds the target's position for this frame (dtSeconds > 0) and returns the offset to add to the followed point.
// A jump longer than `maxDistance` (teleport, level change, respawn) resets the state instead of producing a spike.
inline void UpdateLead(LeadState& s, float x, float y, float dtSeconds, int percent, float maxDistance, float& outX, float& outY) {
    outX = 0.0f;
    outY = 0.0f;
    if (percent <= 0 || dtSeconds <= 0.0f || maxDistance <= 0.0f) {
        s.Reset();
        return;
    }
    if (s.valid) {
        const float dx = x - s.prevX;
        const float dy = y - s.prevY;
        if (dx * dx + dy * dy > maxDistance * maxDistance) {
            s.Reset();
        } else {
            const float k = dtSeconds * 4.0f > 1.0f ? 1.0f : dtSeconds * 4.0f;  // about 0.25 s smoothing
            s.velX += (dx / dtSeconds - s.velX) * k;
            s.velY += (dy / dtSeconds - s.velY) * k;
        }
    }
    s.valid = true;
    s.prevX = x;
    s.prevY = y;
    const float leadTime = static_cast<float>(percent) / 100.0f * 0.75f;
    outX = s.velX * leadTime;
    outY = s.velY * leadTime;
    const float cap = 0.6f * maxDistance;
    const float len = std::sqrt(outX * outX + outY * outY);
    if (len > cap && len > 0.0f) {
        outX *= cap / len;
        outY *= cap / len;
    }
}

}  // namespace dh2cam
