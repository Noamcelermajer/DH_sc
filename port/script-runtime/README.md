# Bounded host script runtime

This is a host-side scheduler slice for the original SWAMP
`_prim_TriggerZone_LizManIntro` flow. It is a small model of the recovered
native behavior, not a game engine or a replacement for the renderer, physics,
dialog, or character update systems. Unsupported script commands append an
`EVENT_UNSUPPORTED_COMMAND` record and advance as explicit no-ops.

## Verified source flow

The SWAMP MLX and its nine referenced MGP files identify the trigger as a
`TriggerZone` with `script="LizardMan_Intro"`, `triggercount="1"`, and
`triggerdelay="0"`. The intro script is local SWAMP index 17 and global script
ID 32 after the 15 common scripts. The paired `CombatTuto` target is local
index 1/global ID 16. The decoder report in `port/pydata-scripts/README.md`
records the command payloads and byte offsets; in order, the intro does:

1. Start common script 1 (`BeginScriptedCutScene`) asynchronously.
2. Lock `All`; target `_prim_Waypoint_NewCamSpot`.
3. Wait 500 ms; request state 1 on preloaded character
   `_prim_Monster_LizManIntro1`.
4. Wait 1500 ms; request state 1 on preloaded character
   `_prim_Monster_LizManIntro2`.
5. Wait 2000 ms; unlock `All`; return the camera target to `LocalPlayer`.
6. Start common script 3 (`EndScriptedCutScene`) asynchronously, then attempt
   `DoTutorial("CombatTuto", 7)`.

`SpawnCharacter` does a named lookup and calls
`CharStateMachine::SM_SetSpawnState(false, false)` on that existing Character;
the slice records the native state-1 request on the preloaded object. It does
not allocate a new actor or claim that animation, AI, or rendering has run.
The 500/1500/2000 ms timers are cumulative: actor requests occur at 500 ms and
2000 ms, and the player unlock/camera return occur at 4000 ms.

The trigger API models contact as an explicit `enter_trigger()` call. Its
configured activation count follows native `Trigger::CanActivate`: negative is
unlimited, zero cannot activate, and a positive count is consumed on each
accepted activation. A trigger configured with count 1 therefore rejects all
later calls, including after the script finishes. If the same script is
already running, the trigger activation is consumed but native
`SafeStartScriptOnlyOnce` suppresses a duplicate task.

`DoTutorial` starts `CombatTuto` only when the caller supplies a local player
Character, offline state, normal difficulty (`0`), and pending flag 7. On an
eligible call the flag is consumed. The host slice does not implement the
actual UI/save effects. In the recovered `CombatTuto` path, `StartDialog` and
`WaitDialog` are therefore reported as unsupported no-ops; no dialog is
displayed and the native dialog wait cannot block this host model.

## Runtime and integration contract

`Runtime` stores fixed-capacity task, object, and event arrays. Each task keeps
its script ID, program counter, wait target/elapsed time, parent script ID,
depth, and active state. Script activations are separate asynchronous tasks,
as in `ScriptManager::StartScript`; parent IDs and bounded depth preserve
activation provenance without treating `ExecScript` as a synchronous call.
One `advance(runtime, delta_ms)` call advances elapsed timers and drains
immediate commands for the task set snapshotted at update start, under a
per-tick step cap. Each new task gets a monotonic ticket; a child created while
draining cannot execute until the next `advance`, even if it reuses a completed
task slot. A zero-delta first advance drains the commands immediately
preceding the first wait, while its `ExecScript` child runs on the following
update.

The runtime borrows pointers to decoded common and level
`dh2_script_table`s. For app use, decode each table once through the native
bounded parser when loading the level, retain both result objects in the level
session, and keep them alive and immutable until all tasks in that session
finish. After a successful decode, the input binary buffers can be released;
the decoded table objects own the command/name storage the scheduler borrows.
Initialize the runtime from the scene's already-loaded MGP object
records; call `enter_trigger()` from the scene trigger callback, and call
`advance()` once per game update with elapsed milliseconds. A game integration
layer can translate supported state changes into engine actions and consume
the event log for diagnostics. It should not call `dh2_script_table_destroy()`
while a runtime still has tasks, since each task points into those tables.

The source slice intentionally rejects nonzero trigger delay at initialization:
the recovered Lizard intro trigger has delay 0. Runtime capacities and name
limits are declared in `script_runtime.hpp` and fail closed when exceeded.

## Host verification

From the repository root, run:

```powershell
python port/script-runtime/tests/run_host.py
```

The runner reads the original cache's SWAMP MLX, all nine referenced MGP
files, and common/SWAMP script binaries. It checks all 148 MGP records, the
trigger/actor/waypoint source records, global script IDs, the exact 500/1500/
2000 ms progression, both character state requests, cutscene/player/camera
state, the tutorial gates, explicit unsupported dialog events, and one-shot
trigger behavior. It compiles with `-fno-exceptions -fno-rtti` and
`-Wall -Wextra -Werror`.

## Source references

- `port/pydata-scripts/README.md`: recovered command streams, IDs, and offsets.
- `recovered/native/decompiled/libDungeonHunter2.so/functions-002.pseudo.c`:
  `Trigger::CanActivate` at line 27894, `SafeStartScriptOnlyOnce` at 29699,
  and TriggerZone overlap/activation handling at 29775 onward.
- `recovered/native/decompiled/libDungeonHunter2.so/functions-001.pseudo.c`:
  `ObjectManager::GetObjectByName` at line 8060. It uses exact `strcmp` for
  regular object names and special handling for `LocalPlayer`.
- `recovered/native/decompiled/libDungeonHunter2.so/functions-003.pseudo.c`:
  `CharStateMachine::SM_SetSpawnState` at line 20398.
- `recovered/native/decompiled/libDungeonHunter2.so/functions-006.pseudo.c`:
  `Script_Wait::IsBlocking` at 7155, `Update` at 11172, `Execute` at 13003;
  `ScriptManager::ExecuteAllScripts` at 12967 snapshots its script-context
  count before iterating, so contexts started during a pass cannot run in that
  pass. The host runtime applies that next-update rule with task tickets;
  `UnlockCharacter::Execute` at 13907, `LockCharacter::Execute` at 13946,
  `SpawnCharacter::Execute` at 14716, `SetCameraTarget::Execute` at 15174,
  `ExecScript::Execute` at 15529, and `DoTutorial::Execute` at 15574.
