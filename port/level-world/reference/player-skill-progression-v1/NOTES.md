Original: `CanIncrementSkill` 0x3bc9ec/100B, `IsSkillAvailable` 0x3bca50/52B, `_InitSkillsSlots` 0x3b3a90/112B, `IncSkill` 0x3bcc58/820B; pinned ELF hash and byte ranges are in `original-functions.json`.

This adapter uses the sole `PlayerSavegameV1` plus live `PropertyView` and `SkillTables`. The two predicates are instruction-compared with `GetLevel` and `GetCharSkill` as typed fixtures. `_InitSkillsSlots` and `IncSkill` retain slot switching, debug, design, property, update and recalculation calls as explicit providers. No level-1 grant or complete InitPost/profile lifecycle is claimed.
