# Dungeon Hunter 2 — project completion checklist

Updated: 2026-10-05. Branch: `reconstruction/android17-irrlicht-rebuild-2026-10-03`.

**Goal:** a complete, source-built native Android game, preserving original
gameplay/content and providing documented fan modding. **The game is unfinished.**

**Latest published tested build:** [download the Crypt native frame foundations APK](https://github.com/Noamcelermajer/DH_sc/releases/download/native-frame-foundations-2026-10-04/crypt-native-frame-foundations-candidate.apk).
Source ref: release tag `native-frame-foundations-2026-10-04`.
APK: 26,068,604 bytes; SHA-256 `1b3a255122f0248f5d6608d1b2fe15def631645765ce40792481ceb89125a6e8`.
Compiled-source archive: [download ZIP](https://github.com/Noamcelermajer/DH_sc/releases/download/native-frame-foundations-2026-10-04/crypt-native-frame-foundations-compiled-source.zip), 888,934 bytes; SHA-256 `cc06bdc53e364873e23ab360a38336dc60e05b911204fff8dd3fcd3818189660`.

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
| Inputs, Adam's work and research | 10 | 3 |
| Native Android build and setup | 8 | 4 |
| Rendering, resources and animation | 13 | 6 |
| World, physics, navigation and factories | 15 | 8 |
| Character properties, equipment and state | 10 | 5 |
| Lua, skills and enemy AI | 22 | 13 |
| Combat, death, loot and progression | 5 | 7 |
| Quests, campaign, UI, audio and saves | 3 | 9 |
| Fan modding and source delivery | 3 | 6 |
| Final completion gates | 0 | 9 |
| **Total scoped tasks** | **89** | **70** |

Latest local gate: [native camera checkpoint](../reports/reconstruction-2026-10-05/native-camera/index.json). Crypt movement/ambush/recreation pass on Android 17/16 KiB; nine live frustum snapshots match original ARM. Culling is compiled; native invocation remains open.

Evidence and Adam comparison: [combined status](COMBINED-RECONSTRUCTION-STATUS.md).
Latest source/build/test scope: [source frame ownership checkpoint](SOURCE-FRAME-OWNERSHIP-CHECKPOINT-2026-10-05.md).
Its newer local APK passes the Crypt regression on Android 17/16 KiB; the
published download above retains its original release identity.

## 1. Inputs, Adam's work and research tracking

- [x] Locate the local APK and complete cache; verify the complete cache inventory.
- [x] Recover original symbols, assembly, decompiler exports and Android glue.
- [x] Recover 219 original plaintext Lua scripts and preserve baseline bytes.
- [x] Pin Adam's baseline `45c5348e` and updated main `c3ae7973`; preserve import attribution.
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

- [x] Reconstruct original Character property readers and typed property operations.
- [x] Reconstruct bounded base/gear/class stat composition and class recalculation.
- [x] Decode original class, item, power, health/mana, AI and level tables used by the source components.
- [x] Reconstruct bounded HP/MP setters, regeneration, mana use and damage-health kernels.
- [x] Implement live native SetLevel/class/design/property/Debug providers for the two Ghosts.
- [x] Reconstruct shared Character state/timer ownership and bounded movement/attack/spawn consumers.
- [x] Reconstruct Character::_InitHpMp and test the live property/real-file adapter on host.
- [x] Reconstruct UsingSkill/Casting predicates against original ARM behavior.
- [x] Reconstruct 17 complete bounded Character AI/faction/type/flag/name/death
  bodies; pass 514 ARM comparisons and use actual native cached IDs/types for
  Ghost AIS selection. Original name/raw-death producers remain open.
- [x] Reconstruct the Character physics-position override and live flag adapter;
  verify 67,594 Character flag cases and 1,024 base-object cases against ARM.
  Native Stop integration remains open.
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
- [x] Reconstruct bounded `OnSkillUpdate`, `OnSkillCheck_Usable` and
  `OnSkillCheck_Active` callers; compare host behavior with original ARM execution.
  These callers are not yet connected to native nonempty skill scripts.
- [x] Host-test the per-VM resolved-path execution cache with 60 real Lua checks.
  Full `LuaManager::AddFile`, shared byte caching and Android wiring remain open.
- [x] Reconstruct source `Value::getBool` and its isolated real Lua adapter:
  276 original ARM comparisons, 269 host cases and 42 real Lua cases pass.
  Actual native Value/ReturnValues and skill-call integration remain open.
- [x] Decode all 183 original Skill/Faery list/row records; compare with original ARM readers.
- [x] Adapt Adam's player skill ownership to our source callers: each class has 16 skill/5 faery slots and 13 instances; 29 script names overall. Host/ARM gates pass; real player VM/FSM integration remains open.
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
- [ ] Complete native nonempty skill loading/declaration/allocation. Integrate the
  full `LuaManager::AddFile` path and per-VM cache into Android.
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

1. Connect autonomous enemy acquisition, pursuit and attacks in the same owned runtime.
2. Complete nonempty skill callbacks, Value/ReturnValues ownership and Lua loading/cache integration.
3. Finish the combat/death/loot/quest loop and complete one original level.
4. Expand factories/content/transitions, full skills, UI/audio and persistent campaign saves.
5. Complete campaign coverage, mod examples, clean builds and physical ARM64 release tests.

Update the relevant checkboxes only after their stated verification passes. Keep
the detailed artifact-specific proof in checkpoint documents and reports.
