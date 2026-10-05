# Dungeon Hunter 2 — project completion checklist

Updated: 2026-10-05. Branch: `reconstruction/android17-irrlicht-rebuild-2026-10-03`.

**Goal:** a complete, source-built native Android game, preserving original
gameplay/content and providing documented fan modding. **The game is unfinished.**

**Latest published tested build:** [download the camera APK](https://github.com/Noamcelermajer/DH_sc/releases/download/native-camera-frustum-2026-10-05/crypt-source-camera-culling.apk).
Source ref: `native-camera-frustum-2026-10-05` at `41e75b7`.
APK: 25,219,583 bytes; SHA-256 `80ed755e81ed8ddbcd30093999c094e40cc160b98f312f8ba36f18635794fbff`.
Matching source: [download ZIP](https://github.com/Noamcelermajer/DH_sc/releases/download/native-camera-frustum-2026-10-05/crypt-source-camera-culling-reviewed-source.zip); SHA-256 `8fcde7c2f770428cfc8d9426b94dd408c42bff791d5e38d212333a2054ec2c6b`.

## How to read this checklist

- `[x]` means the specific stated task is verified. Its scope matters: a tested
  source function does not establish a finished gameplay system.
- `[ ]` means required work remains, including work implemented locally but
  still awaiting integration or its final test.
- Source components and live gameplay have separate sections. All known
  completion requirements are listed; new defects discovered during playtests
  should be added here.
- Checkbox totals and source size are not a game-completion percentage.

## Overview by system

These counts refer to the scoped tasks below. Checked source components can
still require live gameplay integration. All final completion gates remain open.

| System | Verified tasks | Remaining tasks |
|---|---:|---:|
| Inputs, Adam's work and research | 11 | 3 |
| Native Android build and setup | 8 | 4 |
| Rendering, resources and animation | 13 | 6 |
| World, physics, navigation and factories | 15 | 8 |
| Character properties, equipment and state | 15 | 5 |
| Lua, skills and enemy AI | 39 | 13 |
| Combat, death, loot and progression | 6 | 7 |
| Quests, campaign, UI, audio and saves | 3 | 9 |
| Fan modding and source delivery | 3 | 6 |
| Final completion gates | 0 | 9 |
| **Total scoped tasks** | **113** | **70** |

Latest local gate: [player services](../reports/reconstruction-2026-10-05/player-services/validation.json). Five new adapters are selected in both Android libraries: saved slots, progression, initial grants, equipment services and Player AIS lifecycle. Selected-host/original tests pass; their native binding remains open. APK `3a850b12...` passes Android17/16KiB all13 unchanged updates, Celest resistance and retention, dictionary/MP/cooldowns and Crypt ambush/recreation. Full skill activation, live inventory/loot and autonomous pursuit remain open. [Reconciliation and estimate](COMBINED-RECONSTRUCTION-STATUS.md#latest-adam-reconciliation).

Evidence and Adam comparison: [combined status](COMBINED-RECONSTRUCTION-STATUS.md).
Latest source/build/test scope: [source frame ownership checkpoint](SOURCE-FRAME-OWNERSHIP-CHECKPOINT-2026-10-05.md).
Its newer local APK passes the Crypt regression on Android 17/16 KiB; the
published download above retains its original release identity.

## 1. Inputs, Adam's work and research tracking

- [x] Locate the local APK and complete cache; verify the complete cache inventory.
- [x] Recover original symbols, assembly, decompiler exports and Android glue.
- [x] Recover 219 original plaintext Lua scripts and preserve baseline bytes.
- [x] Pin Adam's baseline `45c5348e` and updated main `c3ae7973`; preserve import attribution.
- [x] Reconcile latest Adam `791e961b` code and milestone documents with our selected libraries; preserve compatible reuse and identify duplicate-owner/deferred work.
- [x] Import Adam's seven core modules and script runtime, preserving attribution.
- [x] Reconcile incompatible scene, world, triangle and exported-symbol interfaces
  so the imported modules can link with the existing reconstruction.
- [x] Publish the comparison of our work with Adam's work in the combined status.
- [x] Publish original-address ledgers: Adam's 1,455 addresses and the current
  551-range extension (376 additional unique addresses); 1,831 combined unique
  addresses. These are evidence reach.
- [x] Separate recovered evidence, maintained source, tests, dependencies and assets
  in the reproducible source inventory.
- [x] Audit the other public branches; selectively import 23 useful engine
  evidence/tool files. Verify 1,733 original range hashes and replay the BRES
  corpus. Untested source candidates remain separate; see the [branch audit](BRANCH-AUDIT-2026-10-05.md).
- [ ] Map every remaining required game/engine behavior to an implementation and
  record unresolved layouts, indirect calls and ownership.
- [ ] Resolve remaining unavailable evidence/reference links and conflicting interpretations.
- [ ] Audit the final implementation ledger against the complete game, rather
  than treating decompiler output as compilable reconstructed source.

## 2. Native Android build and development setup

- [x] Install the Android SDK/NDK/JDK and testing dependencies.
- [x] Run the modern Android 17/API37 development emulator with 16 KiB pages.
- [x] Build the Crypt app's game/engine code for native ARM64 and x86_64.
- [x] Verify ELF64 libraries, 16 KiB ELF/ZIP alignment and APK signatures.
- [x] Run the source-built development app without the original ARM32 game library.
- [x] Publish a downloadable APK and its exact raw compiler-input source archive.
- [x] Freeze the camera APK with 468 compiler inputs per ABI, 508 source/build archive entries,
  18 ELF64 libraries and Android API37/16 KiB evidence. Capture is post-build;
  Git publication matches tested bytes except documented line-ending conversion.
- [x] Keep milestones on the separate reconstruction branch and private documents outside Git.
- [ ] Make the final complete-game build reproducible from a clean checkout with
  documented asset installation and dependency setup.
- [ ] Consolidate the two development runtimes into the final game architecture,
  with one owner for each update, physics step and rendered surface.
- [ ] Validate the finished game on a physical ARM64 device running current Android.
- [ ] Produce final release packaging, installation instructions and reproducible artifacts.

## 3. Engine resources, rendering and animation

- [x] Reconstruct and differentially test bounded engine math functions.
- [x] Reconstruct BRES memory/subfile access and whole-buffer relocation behavior.
- [x] Decode the cache's checked mesh, animation, image, effect and material records.
- [x] Decode all 234 PVRTC BTEX images and compare RGBA output with the reference decoder.
- [x] Implement source animation sampling, transforms, skinning and animation-bank consumers.
- [x] Register the Prince's complete authored bank in the native development runtime.
- [x] Render the Prince, Crypt scenery and textured Ghosts in the native Crypt app.
- [x] Feed four Prince warrior skins and shared Idle/Move playback through the Irrlicht preview.
- [x] Fix observed actor placement/camera clipping and the broad black bridge overlay regression.
- [x] Implement bounded source material/technique/blend/depth mappings and record remaining gaps.
- [x] Close the full frustum graph: 80 intersection/77 composition ARM cases; nine actual Android snapshots match. Original camera transform/scene producers remain open.
- [x] Correct VoxN framing/tag parsing; verify 17 audio files. Decoding/playback remain open.
- [x] Reuse Adam's GFNT/viewport code; 8,532/5,200 fixture comparisons pass with sanitizers. Native UI binding remains open.
- [ ] Complete the original custom Irrlicht/`glitch::` rendering behavior and ownership.
- [ ] Complete all material techniques, lighting, effects, transparency and shader-state selection.
- [ ] Complete all animation states, mixing/layers/transitions/events and visual-state synchronization.
- [ ] Finish remaining resource formats, external/split loading, dynamic controllers and unsupported payloads.
- [ ] Restore original camera behavior, full actor equipment visuals and all game presentation states.
- [ ] Verify visual fidelity across every supported level and actor type.

## 4. World, physics, navigation and object factories

- [x] Load the original authored eight-room Crypt layout into the native app.
- [x] Resolve 97 of its 166 object records: 84 scenery objects and 13 monsters.
- [x] Reconstruct bounded navigation graph/search/path/smoothing/avoidance and floor producers.
- [x] Connect a real owned player body, root motion, physics and navigation in development runtimes.
- [x] Test movement, validated boundary sliding and same-process resume in the Irrlicht SWAMP slice.
- [x] Reconstruct bounded Character factory, group, respawn, spawn and ownership kernels.
- [x] Connect original GhostAmbush01 touch contact, timed Wait/Spawn commands and two real Ghost bodies.
- [x] Implement source Limbus/Spawn/Idle visibility behavior and continue hidden actor timers.
- [x] Own a flat native Character list with 14 stable nodes; test enrollment/removal/cursor behavior.
- [x] Compare the complete bounded TargetList query with original ARM execution and fix callback order.
- [x] Reconstruct Character::IsZonable against original ARM behavior and compose
  real Ghost classification for native diagnostics; room enrollment remains open.
- [x] Reconstruct the bounded GameObject::Stop caller; verify 246 original ARM
  cases, virtual physics-policy selection and ordered partial effects. Native
  native frame invocation remains open.
- [ ] Finish the full ObjectManager factory, exact-name map, group membership and teardown.
- [x] Reconstruct ObjectManager's per-object dispatch slice: 30 ARM cases/101 guards. Full traversal, deletion and providers remain open.
- [ ] Resolve Crypt's remaining 69 conditional/script/template/factory records.
- [x] Compose source Stop with real Box2D; 14 cases include callback reentry and retained partial effects. Native frame binding remains open.
- [x] Reconstruct zoning/visibility setters and synchronization; 1,399 ARM cases pass. Native room/scene services remain open.
- [ ] Resolve weighted-template actors and the separate GhostAmbushHallway spawn path.
- [ ] Finish environment bodies, collision ownership, all module seams and other object types.
- [ ] Finish all trigger/script commands with real native services.
- [ ] Reconstruct procedural/random-level generation and original room/module selection.
- [ ] Connect authored and generated levels to the actual level stack and loading lifecycle.
- [ ] Complete exits, level transitions, hubs, fast travel and return-to-level behavior.

## 5. Character properties, equipment and state

The bounded Adam item-system decisions and remaining native integration are in
the [branch-audit reconciliation](BRANCH-AUDIT-2026-10-05.md#adam-reconciliation-at-c3ae797).

- [x] Reconstruct original Character property readers and typed property operations.
- [x] Reconstruct bounded base/gear/class stat composition and class recalculation.
- [x] Decode original class, item, power, health/mana, AI and level tables used by the source components.
- [x] Reconstruct bounded HP/MP setters, regeneration, mana use and damage-health kernels.
- [x] Select source saved-option query predicates: 640 original ARM executions match; full settings/profile lifecycle remains open.
- [x] Implement live native SetLevel/class/design/property/Debug providers for the two Ghosts.
- [x] Reconstruct shared Character state/timer ownership and bounded movement/attack/spawn consumers.
- [x] Reconstruct Character::_InitHpMp and test the live property/real-file adapter on host.
- [x] Reconstruct UsingSkill/Casting predicates against original ARM behavior.
- [x] Reconstruct 17 complete bounded Character AI/faction/type/flag/name/death
  bodies; pass 514 ARM comparisons and use actual native cached IDs/types for
  Ghost AIS selection. Original name/raw-death producers remain open.
- [x] Reconstruct the Character physics-position override and live flag adapter;
  verify 67,594 Character flag cases and 1,024 base-object cases against ARM.
  General Character policy/frame binding remains open.
- [x] Select V4 as the single source-style item/equipment graph; its live API
  borrows caller-owned properties/RNG. All 84 source sessions/1,720 steps and
  60 earlier regressions pass through that path: 676 draws, 3,584 aliases,
  zero mismatches. Native player binding remains open.
- [x] Host-verify V5 gear effects on the V4 owner/property graph and V7 power
  resources: 6 source sessions/112 steps across three classes, plus 121 power
  lists and 39 quantity lists. Text/debug and visual Skin providers remain
  bounded fixtures; this is not live loot or player gameplay. See the
  [selected-library host report](../reports/branch-audit-2026-10-05/adam-integrated-host.json).
- [x] Select borrowing equipment requirements/recalculation services over the same V4 inventory and buff-aware properties; 7,451 selected-host checks and both Android ABIs pass. Review fixed retirement before item deletion. Native Skin/text/HUD and final teardown remain open.
- [ ] Complete Character construction, all property sheet/buff/gear ownership and lifecycle phases.
- [x] Select Adam's V5 item presentation on existing item identities/table authority; 4,031 presentation and 1,119 power-instance gold replays pass. Native text/localization remains open.
- [ ] Connect full inventory/equipment mutation, requirements, random powers and visual updates.
- [ ] Complete player classes, skill progression, buffs/debuffs, auras and status effects in gameplay.
- [ ] Replace remaining development inputs/facts with the original game-owned producers.
- [ ] Validate all character types and states together in live encounters.

## 6. Lua, skills and enemy AI — current implementation focus

- [x] Reuse source-built float32 Lua and preserve native pointer identities without numeric narrowing.
- [x] Reconstruct staged AIS construction, association, binding order and pending/active publication.
- [x] Run both Ghosts' unchanged original monster OnInit on their real native properties.
- [x] Retain the same published VM, damaged health and source timer slots across reload/recreation.
- [x] Reconstruct bounded AIS OnInit/Post/Final caller functions and same-VM dispatch.
- [x] Reconstruct acquisition, candidate events, target/master/range/pause/state callback kernels.
- [x] Test owned Character-list → source query → Lua callback → target/path composition on host.
- [x] Reconstruct UpdateAllSkills, faery selection and CharAISkillScript construction kernels.
- [x] Reconstruct bounded `OnSkillUpdate`, `OnSkillCheck_Usable` and
  `OnSkillCheck_Active` callers; compare host behavior with original ARM execution.
  Native nonempty checks now pass; full activation remains open.
- [x] Host-test the per-VM resolved-path execution cache with 60 real Lua checks.
  Full `LuaManager::AddFile`, shared byte caching and Android wiring remain open.
- [x] Reconstruct source `Value::getBool` and its isolated real Lua adapter:
  276 original ARM comparisons, 269 host cases and 42 real Lua cases pass.
  Native full-return skill calls now pass; complete Value lifecycle remains open.
- [x] Decode all 183 original Skill/Faery list/row records; compare with original ARM readers.
- [x] Adapt Adam's player skill ownership to our source callers: each class has 16 skill/5 faery slots and 13 instances; 29 script names overall. Host/ARM gates pass; full Player AIS/FSM lifecycle remains open.
- [x] Select saved skill-slot access on the actual current save, preserving source map0/skill-set0 semantics; selected initial-grant regressions and Android builds pass.
- [x] Select original skill progression/slot initialization callers; prerequisite 777 ARM predicate cases and selected initial-grant 150 ARM comparisons pass. No invented free skill grants.
- [x] Compose initial grants with the same save, inventory and live buff-aware properties; 113 normal/15 failure cases and five guards pass in the actual selected libraries. Profile/InitPost/native binding remains open.
- [x] Compose Player AIS construction/load/InitProcess through the same Session and Coordinator; selected-host four lifecycle completions/three failure prefixes/five guards and both Android ABIs pass. Native backend and AI/DoT expiry remain open; phase7 alone is not readiness.
- [x] Adapt Player callback membership and skill/spell cooldowns through the
  selected Lua core and borrowed timer fields; host/real-Lua gates and 545
  cooldown ARM comparisons pass. Additive VM protocols pass 145 host checks.
  Full native skill activation remains open.
- [x] Run bounded authored Ghost `LoadNInitScriptProcess(true)` through HP/MP,
  SetSkillsAndSpells, UpdateAllSkills, Post and Final in source order: 0 ordinary
  skill entries and 5 null-script faeries on the same retained VM.
- [x] Verify Ghost VM, health, vectors/catalogue backing and timer slots survive
  reload/recreation without replaying initialization or healing.
- [x] Fix terminal world discard retaining Ghost owners; verify zero surviving
  references and fresh initialization when re-entering Crypt in the same process.
- [x] Reconstruct the complete CanUpdate predicate; verify all 77 instructions,
  26 primary/348 independent ARM comparisons and sanitized pointer/failure guards.
  Compile it for both ABIs; native frame invocation remains open.
- [x] Extend the retained VM with zero-argument update and independent
  current-state callbacks; verify source wrappers and Lua mutation/error behavior.
- [x] Connect the exact resolved-path cache helper to the retained Session VM
  and compile it into Android; verify real load/hit/retry/replacement behavior.
- [x] Add the created-only retained-VM callback bridge; test constructor before
  pending publication, same-VM adoption, reset/destructor reentry guards and
  callback lifetime with independent review and ASan/UBSan/LSan. This port
  ownership adapter earns zero new original-body credit; native wiring remains open.
- [x] Reconstruct the bounded Character::Update lazy-script/concurrent-AI map
  slice; verify 18 ARM cases, all 127 reached instructions, 15 guards and
  partial effects. Preserve full-width AIS identity. Native shared-map binding remains open.
- [ ] Complete the surrounding `Character::Update` scheduler/eligibility gates,
  native shared concurrent-AI map and frame ownership; native world setup
  directly invokes the bounded Ghost lifecycle. See the [checkpoint](SOURCE-FRAME-OWNERSHIP-CHECKPOINT-2026-10-05.md).
- [x] Reconstruct ObjectBase culling/remote predicates (2,256 ARM cases) and compose CanUpdate (126 nested ARM cases, 63 guards).
- [ ] Bind CanUpdate to actual scene/culling, visibility, player/online and
  respawn owners, and invoke it in the native Character frame.
- [ ] Connect source zonability, room enrollment, InZone and object ownership.
- [ ] Bind current-state constructor/registry/transition ownership and actual
  OnUpdate/state callbacks to the native AIS frame.
- [ ] Supply original Character name/raw-death producers for all actor types.
- [x] Load, declare and allocate the Knight's 13 nonempty original skill/faery instances
  in one retained native VM; use current properties/timers/catalogue. Reload/rotation pass.
- [x] Dispatch the original framework Bashdown cooldown through the same native timer
  and slot field18; expiry/rearm pass. This shell fixture does not execute full skill use.
- [x] Adapt the sole saved-skill owner and read callbacks; replay 64 original sessions/
  1,536 snapshots. Native fresh SkillTree rows have level0; starter grants/profile load remain open.
- [x] Select same-VM full ReturnValues and original check/use/outer-dispatch adapters;
  host and original ARM gates pass. Full native CSSkill/input activation remains open.
- [x] Run all13 original Knight/faery updates and both Bashdown/passive check returns on
  Android 17/16 KiB with one shared temporary property sheet; full activation remains open.
- [x] Adapt Adam's CurrentSpell caller to the sole native save/faery catalogue: 436 ARM comparisons, same-VM Lua tests and source five-row initialization; no invented selection/grant.
- [x] Connect original HasMana/UseMana to native properties/options/Debug: 34 host cases, 26 ARM comparisons and live MP debit/rejection/reload. Full networking remains open.
- [x] Adapt Adam's GetInt/SetInt to the retained native AIS dictionary: 440 ARM comparisons and live signed writes/insertion/reload/rotation; no second property store.
- [x] Adapt Adam's equipped-faery element query to the sole save/catalogue: 112 caller plus 180 nested ARM comparisons, selected-library tests and native Celest execution to the next provider.
- [x] Connect source equipped-faery ID/level wrappers to that same save/VM: 49 host checks, 130 ARM comparisons and complete native faery updates; no invented unlock/grant.
- [x] Adapt one source buff owner to current properties/Coordinator and run actual Celest resistance live across reload/rotation. 40 whole-state ARM and 40 same-VM host updates pass; FX and live timed expiry remain open.
- [x] Select CSSkill Focus/Blur and state6 event projection over borrowed Coordinator fields; 214 new ARM comparisons, 60 host cases and both Android ABIs pass. Native activation remains open.
- [ ] Complete nonempty skills for all classes through full Player AIS construction,
  saved skill levels, `LuaManager::AddFile` and lifecycle ownership.
- [ ] Connect real Arguments/ReturnValues ownership, skill update/check/use callbacks and Lua errors.
- [ ] Complete all 265 original Character bindings and every actually used game/engine service.
- [ ] Connect native Ghost acquisition and pursuit through real frame/path/body services.
- [ ] Bind actual AI/DoT timer-expiry providers and enable their currently paused timers.
- [ ] Complete enemy movement, attacks, skill decisions, combat state changes and target cleanup.
- [ ] Complete other AIS factories, enemy types, bosses and player AI/input behavior.
- [ ] Playtest all enemy/skill combinations and preserve original decisions and timing.

## 7. Combat, death, loot and progression

- [x] Reconstruct bounded random streams and combat calculation/script components.
- [x] Reconstruct bounded health damage, nonplayer death and kill/clear quest-counter components.
- [x] Reconstruct HandleDots/F_DotAttack and the bounded offline nonplayer F_ApplyResult caller.
- [x] Exercise supported native health changes and prove damaged Ghost health survives recreation.
- [x] Record earlier development encounter hits and diagnostic combat/quest evidence with their build identities.
- [x] Select Adam's V7 powered-loot creation on V4's caller-owned RNG: 9,931 presentation/power/loot gold replays, 363 actual powered items and 369 shared draws pass. Android compilation passes; native drop/pickup/AddLoot remains open.
- [ ] Complete all CalculateResult/ApplyResult dependencies, effects, notifications and actor ownership.
- [ ] Connect melee/ranged/spell combat, skills, criticals, resistances and status effects in the final runtime.
- [ ] Complete player damage/death, attacker/killer credit, resurrection and respawn.
- [ ] Complete enemy death/despawn, item generation, loot drops, pickup and inventory delivery.
- [ ] Complete XP, leveling, rewards, gold and difficulty scaling through actual game owners.
- [ ] Validate boss encounters and any original cooperative/network behavior retained by the project.
- [ ] Complete a real original level through its exit using the integrated combat loop.

## 8. Quests, campaign, UI, audio and saves

- [x] Decode all 64 original quest records and their conditions/objectives/rewards/script slots.
- [x] Reconstruct bounded counted-kill/clear compilation and progress components with diagnostic integration.
- [x] Decode 33 FastTravel and 51 Level catalogue rows; connect bounded source range callbacks.
- [ ] Complete quest conditions, automatic event dispatch, objective types, rewards and persistence.
- [ ] Complete campaign progression, story/dialogue, unlocks and difficulty transitions.
- [ ] Restore title/menu flow, character creation/selection, HUD, inventory, skill and quest interfaces.
- [ ] Complete touch controls, input mapping, orientation/window/lifecycle behavior for the final app.
- [ ] Connect music, sound, voice, visual effects and their original timing/lifetimes.
- [ ] Reconstruct complete campaign/profile save serialization, load ownership and version handling.
- [ ] Support original-save import where its data format is established and compatible.
- [ ] Verify saves after process death, cold launch, app update and interrupted writes.
- [ ] Validate every authored/generated level and complete the full campaign playthrough.

## 9. Fan modding and source delivery

- [x] Implement validated external asset/world overrides with packaged fallback.
- [x] Test a real world override, malformed rejection and baseline restoration in the native app.
- [x] Publish reconstruction source, evidence mappings, tests and build-specific source archives.
- [ ] Document supported data, Lua, asset, level and gameplay modification entry points.
- [ ] Provide validation tools for fan changes and meaningful diagnostics for unsupported content.
- [ ] Complete mod lifecycle/reload/version behavior and restore-to-baseline workflows.
- [ ] Build and playtest example mods that change a skill, enemy, asset and level.
- [ ] Finalize attribution, dependency licenses and asset/source distribution documentation.
- [ ] Write final developer setup, engine/game architecture, build and modding guides.

## 10. Final completion gates

- [ ] A clean checkout produces the complete native ARM64 game and documented assets.
- [ ] Original authored/generated levels, factories and transitions work together.
- [ ] Player, equipment, skills, enemy AI, combat, quests, loot and progression work together.
- [ ] Campaign UI, audio/effects, input and persistent saves are complete.
- [ ] Sustained gameplay and process-death/update recovery pass on current Android.
- [ ] Physical ARM64 gameplay and 16 KiB compatibility are demonstrated.
- [ ] Remaining behavioral/visual regressions are resolved or explicitly accepted against the goal.
- [ ] Public source, mappings, reproducible tests and fan-mod documentation are complete.
- [ ] **The full project goal is finished.**

## Immediate work order

1. Connect autonomous enemy acquisition, pursuit and attacks in the same owned runtime.
2. Complete nonempty skill callbacks, Value/ReturnValues ownership and Lua loading/cache integration.
3. Finish the combat/death/loot/quest loop and complete one original level.
4. Expand factories/content/transitions, full skills, UI/audio and persistent campaign saves.
5. Complete campaign coverage, mod examples, clean builds and physical ARM64 release tests.

Update the relevant checkboxes only after their stated verification passes. Keep
the detailed artifact-specific proof in checkpoint documents and reports.
