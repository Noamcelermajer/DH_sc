// Test for the PRG1 port options (core-platform/port_settings.hpp): the raised level cap (game/include/dh2/global/progress_port.hpp),
// the HUD customise centre test (game/include/dh2/global/hud_keep_port.hpp), and the settings keys behind them: levelcap / alertbtn /
// hudkeep defaults and ranges, and the hudpos.* keys of the kept HUD layout (negative stage pixels, round trip through dh2_port.cfg).
#include <cstdio>
#include <cstdlib>
#include <string>

#include "core-platform/port_settings.hpp"
#include "dh2/global/hud_keep_port.hpp"
#include "dh2/global/progress_port.hpp"

extern int g_dh2AlertButtonMode;

namespace {
int g_failures = 0;
void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}
}  // namespace

int main() {
    // Defaults: the original cap, the always-shown bubble, the kept layout.
    Check(g_dh2LevelCap == 0, "levelcap default 0");
    Check(g_dh2AlertButtonMode == 0, "alertbtn default 0");
    Check(g_dh2HudKeepLayout == 1, "hudkeep default 1");

    // The cap: 0 keeps every original value; a raised cap applies on every difficulty; never lower than the original; at most 999.
    Check(dh2progress::EffectiveMaxLevel(50, 0) == 50, "normal original");
    Check(dh2progress::EffectiveMaxLevel(80, 0) == 80, "hard original");
    Check(dh2progress::EffectiveMaxLevel(100, 0) == 100, "very hard original");
    Check(dh2progress::EffectiveMaxLevel(50, 500) == 500, "normal raised");
    Check(dh2progress::EffectiveMaxLevel(100, 999) == 999, "very hard raised");
    Check(dh2progress::EffectiveMaxLevel(100, 60) == 100, "a cap below the original does not lower it");
    Check(dh2progress::EffectiveMaxLevel(100, 5000) == 999, "ceiling 999");
    // The class formulas at the ceiling (character_classes: Max_XP = 100 x Level, raw 24.8) stay inside int32.
    Check(static_cast<long long>(25600) * dh2progress::kMaxLevelCap < 0x7fffffffLL, "Max_XP raw at 999 fits");
    Check((2560000LL + 512000LL * dh2progress::kMaxLevelCap) < 0x7fffffffLL, "largest linear class term at 999 fits");

    // Centre test: inside, on the edge, outside on each side.
    Check(dh2hudkeep::CentreInside(100, 100, 0, 0, 9600, 6400), "inside");
    Check(dh2hudkeep::CentreInside(0, 6400, 0, 0, 9600, 6400), "edge counts as inside");
    Check(!dh2hudkeep::CentreInside(-1, 100, 0, 0, 9600, 6400), "left of the stage");
    Check(!dh2hudkeep::CentreInside(9601, 100, 0, 0, 9600, 6400), "right of the stage");
    Check(!dh2hudkeep::CentreInside(100, -5, 0, 0, 9600, 6400), "above the stage");
    Check(!dh2hudkeep::CentreInside(100, 6401, 0, 0, 9600, 6400), "below the stage");

    // Settings: ranges, and the hudpos keys round-tripping through the file (the file is written at each Set).
    const char* tmp = std::getenv("TEMP");
    const std::string path = std::string(tmp != nullptr ? tmp : ".") + "/dh2_prg1_test.cfg";
    std::remove(path.c_str());
#if defined(_WIN32)
    _putenv_s("DH2_PORT_CFG", path.c_str());
#else
    setenv("DH2_PORT_CFG", path.c_str(), 1);
#endif
    dh2port::Load();
    dh2port::Set("levelcap", 5000);
    Check(dh2port::Get("levelcap", -1) == 999, "levelcap clamped to 999");
    dh2port::Set("alertbtn", 7);
    Check(dh2port::Get("alertbtn", -1) == 2, "alertbtn clamped to 2");
    dh2port::Set("hudpos.0.3.x", -120);
    dh2port::Set("hudpos.0.3.y", 1500);
    dh2port::Set("hudpos.0.saved", 1);
    dh2port::Set("hudelem.0.3", 900);
    Check(dh2port::Get("hudpos.0.3.x", 0) == -120, "hudpos keeps a negative value");
    Check(dh2port::Get("hudpos.0.3.y", 0) == 1500, "hudpos keeps a value past 400");
    Check(dh2port::Get("hudelem.0.3", 0) == 400, "other dynamic keys stay 0..400");
    Check(dh2port::Apply(), "Apply reports the change");
    Check(g_dh2LevelCap == 999 && g_dh2AlertButtonMode == 2, "applied globals");
    // A file written by another agent's newer build may hold keys this build does not know: kept, not fatal.
    if (std::FILE* f = std::fopen(path.c_str(), "a")) {
        std::fputs("some.future.key=3\nnot a setting line\n", f);
        std::fclose(f);
    }
    dh2port::Load();
    Check(dh2port::Get("hudpos.0.3.x", 0) == -120 && dh2port::Get("hudpos.0.3.y", 0) == 1500, "hudpos read back from the file");
    Check(dh2port::Get("hudpos.0.saved", 0) == 1, "saved flag read back");
    Check(dh2port::Get("levelcap", -1) == 999 && g_dh2LevelCap == 999, "levelcap read back and applied at load");
    Check(dh2port::Get("some.future.key", -1) == 3, "unknown key kept");
    std::remove(path.c_str());

    if (g_failures == 0) {
        std::printf("progress_port_test: OK\n");
    }
    return g_failures == 0 ? 0 : 1;
}
