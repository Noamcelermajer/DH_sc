# Dungeon Hunter 2 — project completion checklist

Updated: 2026-10-04. Branch: `reconstruction/android17-irrlicht-rebuild-2026-10-03`.

**Goal:** a complete, source-built native Android game, preserving original
gameplay/content and providing documented fan modding. **The game is unfinished.**

**Latest tested build:** [download the Crypt development APK](https://github.com/Noamcelermajer/DH_sc/releases/download/native-character-query-init-2026-10-04/crypt-native-character-query-init-candidate.apk).
Source commit: `914759d9b1d87354c825e43fd9636545d8ff4a0a`.
APK SHA-256: `88fd31818f6edeee68a7685ac90786015b483d4ae67aa0beeb0b25f116c4e59f`.

## How to read this checklist

- `[x]` means the specific stated task is verified. Its scope matters: a tested
  source function does not establish a finished gameplay system.
- `[ ]` means required work remains, including work implemented locally but
  still awaiting integration or its final test.
- Source components and live gameplay have separate sections. All known
  completion requirements are listed; new defects discovered during playtests
  should be added here.
- Checkbox totals and source size are not a game-completion percentage.

Evidence and Adam comparison: [combined status](COMBINED-RECONSTRUCTION-STATUS.md).
Exact current build/test scope: [checkpoint](NATIVE-CHARACTER-QUERY-INIT-CHECKPOINT-2026-10-04.md).

## 1. Inputs, Adam's work and research tracking

- [x] Locate the local APK and complete cache; verify the complete cache inventory.
- [x] Recover original symbols, assembly, decompiler exports and Android glue.
- [x] Recover 219 original plaintext Lua scripts and preserve baseline bytes.
- [x] Pin Adam's repository at `45c5348e807607a2825211bb8f26248067ba9106`.
- [x] Import Adam's seven core modules and script runtime, preserving attribution.
- [x] Reconcile incompatible scene, world, triangle and exported-symbol interfaces
  so the imported modules can link with the existing reconstruction.
- [x] Publish the comparison of our work with Adam's work in the combined status.
- [x] Publish original-address ledgers: Adam's 1,455 addresses and the current
  493-range extension; 1,800 combined unique addresses. These are evidence reach.
- [x] Separate recovered evidence, maintained source, tests, dependencies and assets
  in the reproducible source inventory.
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
- [x] Freeze the latest APK against 440 actual compiler/build inputs and device evidence.
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
- [ ] Finish the full ObjectManager factory, exact-name map, group membership and teardown.
- [ ] Resolve Crypt's remaining 69 conditional/script/template/factory records.
- [ ] Resolve weighted-template actors and the separate GhostAmbushHallway spawn path.
- [ ] Finish environment bodies, collision ownership, all module seams and other object types.
- [ ] Finish all trigger/script commands with real native services.
- [ ] Reconstruct procedural/random-level generation and original room/module selection.
- [ ] Connect authored and generated levels to the actual level stack and loading lifecycle.
- [ ] Complete exits, level transitions, hubs, fast travel and return-to-level behavior.

## 5. Character properties, equipment and state

- [x] Reconstruct original Character property readers and typed property operations.
- [x] Reconstruct bounded base/gear/class stat composition and class recalculation.
- [x] Decode original class, item, power, health/mana, AI and level tables used by the source components.
- [x] Reconstruct bounded HP/MP setters, regeneration, mana use and damage-health kernels.
- [x] Implement live native SetLevel/class/design/property/Debug providers for the two Ghosts.
- [x] Reconstruct shared Character state/timer ownership and bounded movement/attack/spawn consumers.
- [x] Reconstruct Character::_InitHpMp and test the live property/real-file adapter on host.
- [x] Reconstruct UsingSkill/Casting predicates against original ARM behavior.
- [ ] Complete Character construction, all property sheet/buff/gear ownership and lifecycle phases.
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
- [x] Decode all 183 original Skill/Faery list/row records; compare with original ARM readers.
- [ ] **Finish and test native Ghost InitScriptProcess:** initial HP/MP, actual skill/faery
  vectors, UpdateAllSkills, Post and Final in source order. Integration is currently underway.
- [ ] Prove this completed phase is retained through reload/recreation without reinitialization or healing.
- [ ] Complete native nonempty skill loading/declaration/allocation and per-VM loaded-path caching.
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

1. Finish the bounded native Ghost skill/init phase and test its lifecycle retention.
2. Connect autonomous enemy acquisition, pursuit and attacks in the same owned runtime.
3. Finish the combat/death/loot/quest loop and complete one original level.
4. Expand factories/content/transitions, full skills, UI/audio and persistent campaign saves.
5. Complete campaign coverage, mod examples, clean builds and physical ARM64 release tests.

Update the relevant checkboxes only after their stated verification passes. Keep
the detailed artifact-specific proof in checkpoint documents and reports.
