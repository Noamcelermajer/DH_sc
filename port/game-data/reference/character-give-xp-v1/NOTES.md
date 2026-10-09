# Character XP award coordinator — 2026-10-09

This continuation starts at development `7fa5a97f`. It reconstructs
`Character::_GiveXP(int,bool)` at ELF `0x3bf498` (912 bytes) and
`CharProperties::PROPS_GetModifiedXP(int) const` at `0x3de7ec` (40 bytes).
The archival Ghidra export labels them at `0x3cf498` and `0x3ee7ec`;
these addresses include its `0x10000` import base. Tests use ELF addresses.

## Observed instruction behavior

- Fetch Normal's maximum level first. Query unlocked difficulty, use Hard's
  maximum for 1, otherwise query again and use VeryHard's maximum for 2.
  Do not collapse the repeated read: callbacks can change canonical state.
- Reject at the maximum, for nonplayers, network characters, or nonzero
  current-Level `+0x150`. This field is kept as an opaque eligibility gate;
  the port does not infer a gameplay name from its offset.
- A negative amount reaches the original assertion policy. Assertion level 0
  continues; level 1 logs; level 2 faults. This port delegates that policy.
- `OneKillLevelUp` replaces the amount with raw `property34-property33`.
  A current-Level `+0x118` difficulty above the unlocked difficulty then
  overrides that amount with `0x100` (one XP in 24.8 storage).
- Modified XP reads CharProperties `+0xdb8`. It wraps the addition of
  `0x6400`, divides the signed result by 100 toward zero, multiplies by the
  amount keeping the low 32 bits, then arithmetic-shifts by 8. C++ uses
  defined unsigned wrapping and explicit sign extension, including overflow.
- Add the modified amount to raw property33. Load/debug-query tracing.
  Compare fresh property33/34 reads. On equality or excess, reread both and
  call LevelUp once with `(raw33-raw34) ASR 8`; do not loop over levels.
  Reread after LevelUp and clamp only on strict excess of the new threshold.
- When requested, resolve the PlayerInfo and increase statistic type6 using
  the **effective pre-bonus amount** ASR8 and PlayerInfo `+0x670`.
  `_GiveXP` returns success even if the effective/modified amount is zero.

## Implemented and validated

`character_give_xp_v1` is built into `dh2_game_data`. Its services borrow the
canonical Character, properties, constants, Level, PlayerInfo and statistics
owners. The coordinator creates no XP/level/state mirror. Every repeated read
and ordered handoff is explicit. A failed service stops the call and retains
delivered effects; failure behavior is a source safety contract, not an
original ARM error path.

`quest_reward_execution_v1::character_xp` adapts the existing XP reward service
to this coordinator. `XpEffects::services_for` must resolve the exact supplied
Character. This makes the recovered body available to the quest reward caller;
it does not wire an Android Character owner automatically.

The [host report](../../reports/character-give-xp-v1-host.json) records:

- 5,196 original ARM versus C++ arithmetic cases, including signed wrap limits;
- 1,200 whole-function comparisons of return, XP/threshold and ordered service
  calls, including debug policies, caps, difficulty, equality, post-LevelUp
  clamping, statistics and controlled mutations during fresh reads;
- the same 1,200 cases through the quest reward adapter;
- 13,776 injected failure-prefix checks; no UBSan findings.

Original instructions and literal pools are reconstructed byte-for-byte from
the repository's preserved assembly. Exact range SHA-256 values are in the
report. This is **not** a new ELF extraction or a fresh native decompilation.
External property mutations, LevelUp, constants, debug strings, lookup and
statistics remain controlled boundaries. The actual GetModifiedXP instructions
execute within the whole-function ARM replay rather than a mocked formula.

Reproduce from the repository root with Python `unicorn` installed and a C++17
compiler:

```sh
python port/game-data/tests/character_give_xp_v1_differential.py --report port/game-data/reports/character-give-xp-v1-host.json
cmake -S port/game-data -B build/game-data
cmake --build build/game-data --target dh2_game_data
```

## REA use and remaining work

Inspected `morluto/rea` at the revision recorded in `rea-environment.json` and
followed its reconstruction/evidence workflow. REA 6.0.0 CLI doctor/provider
checks ran here. Node works; no Ghidra/Hopper/IDA native engine is configured.
No MCP setup changes or fresh native analysis are claimed. The preserved
assembly was sufficient for this scoped implementation and ARM replay.

Next: reconstruct the actual LevelUp body at `0x3beb88`, bind the existing
canonical property sheets and player statistics to these services, and compose
quest/kill XP into live Character ownership. Then run ARM64 and Android tests.
Player leveling, distribution of kill XP, saves/UI notifications, full
progression and full source gameplay remain unfinished.
