# Other-branch findings — 2026-10-05

Compared current `bbc1e78` with engine branch `e6da25b`.

- **Useful:** camera/frustum producers, GLES pass-state mapping, corrected mesh-cache ownership, and BRES reader/block research. Imported 23 evidence/tool files.
- **Already retained:** Noam main/continuation branches. Adam native-textures remains at the imported baseline.
- **Source fixes:** corrected five audio chunk tags; recovered camera planes, culling and visibility callers. Host tests pass; native wiring remains open. The reader-context helper is still untested.
- **New Adam main `c3ae7973`:** player/HUD, skill/loot owners, menu and loader snapshots. Reused GFNT/viewport source: 8,532/5,200 host comparisons pass with sanitizers. Native skill/loot integration and full enemy pursuit remain open. [Import pins](../reports/branch-audit-2026-10-05/adam-ui-source-import.json).
- **DH2Work:** newer commits add seven startup/roadmap documents; no newer game/engine source changes in that delta.

Verification: 1,733 recorded ELF hashes match (1,430 distinct ranges). All 2,901 historical BDAE rows and 2,577,206 fixup classifications reproduce locally. The local directory's three extra BDAEs are listed separately. Five Python bytecode files were excluded. These are research checks, not completed gameplay.

[Import ledger](../reports/branch-audit-2026-10-05/selective-import.json) · [ELF checks](../reports/branch-audit-2026-10-05/engine-branch-evidence.json) · [Corpus replay](../reports/branch-audit-2026-10-05/resource-corpus-replay.json) · [Project checklist](PROJECT-CHECKLIST.md)

## Adam reconciliation at `c3ae797`

Both repositories refreshed; local camera checkpoint is `41e75b7`. Read the three-session checkpoint and player/UI, item-effects, and player-skills/loot milestones. Those staged snapshots and historical receipts do not validate our selected build.

| Contribution | Decision | Concrete boundary |
|---|---|---|
| GFNT/viewport subset | Already present | Fifteen imported files; current host gates already pass. |
| Property/class/timer kernels | Already present | Equivalent after newline normalization; retain our selected owners. |
| `fresh_inventory_owned_v4` | Adapted; host tested | All 144 owner cases pass with borrowed Character properties and the existing RNG core; 676 draws and 3,584 property aliases checked. Legacy save/inventory owner excluded. |
| `player_equipment_v3` | Superseded | V4 supplies the authoritative equip/remove operations; selecting both would duplicate ownership. |
| `item_gear_properties_v5`, `item_power_tables_v5` | Imported; host/actual ARM64 kernel tested | APK library matches original on 4,037 gear cases and 937 power rows/1,224 properties. Fresh gold matches public fixtures; older parser receipts remain historical. |
| `player_gear_effects_v5` | Adapted; host tested | Same V4 properties; six freshly replayed original-ELF cases/112 steps match. Text/debug are fixtures; skin only exercises null Visual. |
| `item_presentation_v5` | Deferred | Require genuine localization and one AddPower/destruction path on V4 items. |
| `character_player_skills_v3` owner/session | Incompatible wholesale | Its owner contracts would overlap our Prince/VM/property/timer/frame owners. Reuse individual callers through adapters. |
| Skill preparation/selection/update/state queries | Already present/adapted | Retain our verified callers and table views; the preparation adapter still uses controlled providers. |
| Player callback membership | Adapted; host/ARM tested | Reuses Default and one selected Lua core; native player activation remains open. |
| Skill cooldown callbacks | Adapted; host/ARM tested | Borrow existing slot/timer fields and the selected Lua core; 545 ARM cases match. Nontrivial numbers require a provider; native dispatch remains open. |
| Buff/use/session dependencies | Deferred adapters | Preserve the existing properties, timers and frame owner; no second update loop. |
| `loot_power_resources_v7` | Imported; host tested | Pins the same V5 power rows; 121 power and 39 quantity lists, 13 guards. |
| `loot_power_creation_v7` | Deferred runtime | Adapt RNG and real text/AddPower services first; not the complete AddLoot/drop/pickup caller. |
| Menu `verified-v39` | Deferred live | Tested partial SWF front screen; missing navigation/save/world lifecycle. Bridge UI as a gameplay-state consumer. |
| Menu `current-source` delta | Deferred | New loading art lacks an exact tested APK receipt. |
| Level-loader snapshot | Useful research | TinyXML/inventory probe; every factory is unimplemented. Inferred aliases are not verified loader behavior. |

The live renderer still has separate combat/animation RNG projections. The shared two-stream core and borrowed Ghost input are selected prerequisites, not a unified live application RNG. Consolidate those producers before powered-loot activation. Lua gameplay and GameSWF AVM1 are separate runtimes; preserve source-required AVM1 player/history lifetimes without duplicating the GameSWF core.

Next live milestone: one Prince owner loads nonempty skills, dispatches a real skill/cooldown through the existing frame/timers, damages an enemy, and delivers loot to the same inventory. Full pursuit, skill effects, presentation and pickup remain disconnected.

Current evidence: [six selected game-data suites](../reports/branch-audit-2026-10-05/adam-integrated-host.json), [Player/cooldown/shared-VM host and ARM reports, Android compilation and live regression](../reports/branch-audit-2026-10-05/adam-reconciliation-validation.json). Both ABIs contain all nine reused module groups; API37/16 KiB Crypt ambush/reload/rotation passes and nine live camera snapshots match original ARM. This preserves existing gameplay; it does not activate native player skills or loot pickup.
