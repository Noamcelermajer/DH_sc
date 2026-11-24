// Port addition (PRG1, port option "hudkeep", core-platform/port_settings.hpp): the one geometric test of the HUD customise
// page. The original has none (see HUDControls::OnEvent); the port refuses a drag step only when an element's centre would
// leave the stage, so overlapping elements and elements partly past the edge stay allowed.
#pragma once

extern int g_dh2HudKeepLayout;  // core-platform/src/port_settings.cpp

namespace dh2hudkeep {

// True when (x, y) lies inside the rectangle [x0, x1] x [y0, y1] (edges count as inside).
inline bool CentreInside(float x, float y, float x0, float y0, float x1, float y1) {
    return x >= x0 && x <= x1 && y >= y0 && y <= y1;
}

}  // namespace dh2hudkeep
