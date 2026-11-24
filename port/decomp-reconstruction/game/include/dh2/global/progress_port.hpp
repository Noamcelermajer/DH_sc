// Port addition (PRG1, TRACK-B.md decision 15, not in the original): opt-in raised level cap, see core-platform/port_settings.hpp
// key "levelcap". The original caps the player at CharacterDesign MaxLevelBNormal / MaxLevelCHard / MaxLevelDVeryHard (50 / 80 /
// 100 in the shipped data) by the unlocked difficulty (Character::LevelUp, Character::_GiveXP). Everything that grows with the
// level is a linear class formula of the Level property in character_classes (Max_XP = 100 x Level, Stat_Points = 2 x Level - 2,
// Skill_Points = Level, Max_HP / damage / ratings base + k x Level), so the curves extrapolate by themselves past the table; no
// per-level array is indexed by the player level. The largest linear term in the data at level 999 is about 5.1e8 raw
// (24.8 fixed point), below the int32 limit, hence the 999 ceiling. Saves keep the level as an int32 (PlayerSavegame +0x30) and
// the network field is 16 bits, so a raised level loads and syncs; with the option off again a character above the original
// cap keeps its level and simply gains no more XP (the original's own test, maxLevel <= level).
#pragma once

extern int g_dh2LevelCap;  // core-platform/src/port_settings.cpp

namespace dh2progress {

constexpr int kMaxLevelCap = 999;

// The level cap the game uses: the original cap of the unlocked difficulty, or the port's raised cap when it is higher.
inline int EffectiveMaxLevel(int originalCap, int setting) {
    if (setting > kMaxLevelCap) {
        setting = kMaxLevelCap;
    }
    return setting > originalCap ? setting : originalCap;
}

}  // namespace dh2progress
