# Character Limbus and Spawn source slice

This host implementation covers the source-owned Limbus/Spawn state boundary
used by the two directly authored surprise Crypt ghosts. It does not emulate
the game AI, discover when the Crypt trigger fires, or implement revival and
group policy beyond explicit caller facts.

## Recovered native path

The pinned original is `libDungeonHunter2.so` (source manifests under
`recovered/native/assembly/libDungeonHunter2.so`). Addresses below are ELF
addresses:

| Function | ELF address | Recovered source and observed behavior |
|---|---:|---|
| `Script_SpawnCharacter::Execute` | `0x45f400` | [`Script_SpawnCharacter-1a3476c33649-001.asm`](../../../../recovered/native/assembly/libDungeonHunter2.so/Script_SpawnCharacter-1a3476c33649-001.asm) resolves one named object, then calls `SM_SetSpawnState(false,false)`; it does not allocate a new Character. |
| `CharStateMachine::SM_SetSpawnState` | `0x3c2734` | [`CharStateMachine-9e67f9b0cab6-001.asm`](../../../../recovered/native/assembly/libDungeonHunter2.so/CharStateMachine-9e67f9b0cab6-001.asm) selects state ID `1` for the `false,false` request used above. |
| `CharStateMachine::_SetState` | `0x3c1938` | Calls old state blur, installs the target state, clears elapsed state time on a changed ID, calls new focus, then emits event `0x1d` with the previous ID. Same-state requests still run blur/focus. |
| `CSLimbus::OnBlur` / `OnFocus` / `OnInit` | `0x3c2be4` / `0x3c2e58` / `0x3c7cc0` | [`CSLimbus-f65fc268875e-001.asm`](../../../../recovered/native/assembly/libDungeonHunter2.so/CSLimbus-f65fc268875e-001.asm) restores the Limbus actor and registers timer event `0x2f`; focus may schedule it only under the source respawn gate and clears aggro. Update and event handlers are no-ops. |
| `CSSpawn::OnBlur` / `OnFocus` / `OnEvent` / `OnInit` | `0x3c2f7c` / `0x3c35ec` / `0x3c0b04` / `0x3c7d0c` | [`CSSpawn-6f640697797f-001.asm`](../../../../recovered/native/assembly/libDungeonHunter2.so/CSSpawn-6f640697797f-001.asm) is the source for fallback body initialization, exact animation-table field `CharAnimTable+0x80`, AI target reset, sneak cancellation, fade call, and registration of completion event `0x22 -> Idle(3)`. |
| `CharStateMachine::RegisterState` | `0x3c7318` | The character constructor registers state IDs `0..19`; the source registration API and bounded factory's Spawn-registration check are linked by this function. |
| `VisualObject::StartFadeIn` / `UpdateFadeIn` | `0x470ce4` / `0x470cec` | Both are one-instruction return stubs in [`VisualObject-79dd69531261-001.asm`](../../../../recovered/native/assembly/libDungeonHunter2.so/VisualObject-79dd69531261-001.asm). The property value remains an opaque raw argument; the port does not invent an alpha ramp. |
| `GameObject::IsUpdatable() const` | `0x38aac0` | Character vtable slot `+0x40` resolves to this constant-true query. It does not set or clear visibility. The call is exposed as `query_is_updatable`; the renderer may ignore its result. |

`CSSpawn::OnFocus` reads the `Spawn` member at `CharAnimTable` offset `0x80`
and requests that exact sequence. This path does not add a stance to the
sequence. For the two selected ghost records the decoded sequence is `213`.
The actual packaged `Crypt_Ghost` Spawn clip (clip 714) has no
`is_interactive` event. It completes with event `0x22`; the source then blurs
Spawn and constructs the physical body as the fallback before entering Idle.
The host fixture also checks the separate source `is_interactive` event path,
but that case is not evidence that clip 714 emits it. The interactive flag
`0x2000` is copied only from the prior-state-17 branch; it controls body
construction, not visibility.

## Implemented code and validation

The logical Character/FSM projection is in [`character_state.hpp`](../../character_state.hpp)
and [`character_state.cpp`](../../character_state.cpp). Exact-name lookup and
atomic miss/duplicate handling are in [`character_factory.hpp`](../../character_factory.hpp)
and [`character_factory.cpp`](../../character_factory.cpp). The focused host
test is [`character_spawn.cpp`](../../tests/character_spawn.cpp); run it with:

```powershell
python port/level-world/tests/run_character_spawn_host.py
```

It compiles only those actual sources, then verifies ordered Limbus-to-Spawn,
both the conditional interactive event and the actual completion-time blur
fallback body creation, `0x22` completion to Idle, source no-op update,
same-state `_SetState`, synchronous completion callback, and lookup atomicity.

## Explicit unsupported behavior

- Trigger activation and the `GhostAmbushHallway` trigger/command table.
- Autonomous AI, target selection, combat decisions, and AI event production.
- Respawn eligibility computation, group membership/update computation,
  saved Limbus position/rotation producers, and complete revive/physical body
  ownership. These are adapter services/facts, not guessed in this kernel.
- PreSpawn focus and arbitrary paths entering Spawn from states outside this
  bounded actor fixture.
- Timed visual fading: original `StartFadeIn` and `UpdateFadeIn` are stubs.
- Rendering visibility policy. The observed `+0x40` virtual is only
  `IsUpdatable`; the app's initial hidden presentation for `auto_spawn=0`
  records is a development presentation policy, not an inferred source call.
