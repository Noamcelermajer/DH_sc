# Character::F_ApplyResult — offline nonplayer continuation

## Scope

`character_apply_result.hpp/.cpp` reconstructs a **bounded caller traversal**
from `_ZN9Character13F_ApplyResultERKNS_12AttackResultEPS_S3_b`, original ARM
`0x3b10b4`, 3388 bytes. The exact ELF SHA, function ranges, literal strings and
actual vtable words are pinned in `original-functions.json`.

Count: **0 new complete caller bodies, 0 complete dependency bodies, 1 bounded
source caller**. This is not the whole 3388-byte function, a replacement health
backend, an implemented effect service, or a native-wiring claim.

The supported domain is retained nonnull actors, offline mode byte zero,
every reached virtual player predicate false, current PlayerManager's signed player
count at `+0x6c4 <= 1`, and no inventory-gold mask `0x400000` when the damage
branch reaches its mask check. All nonplayer status continuations and impact
FX call construction are supported through mandatory, typed original services.
The real GetEffectiveThreatPerDamage getter reads signed property204 and returns
binary32 `int32/256`, so its result is finite. A nonfinite external getter reply
is an explicit port dependency-domain error, not an invented original branch.
The caller's bool/mode argument is not consulted in this offline domain.

Unsupported network, player, inventory-gold and co-op-scaling branches stop at
their source entry address, preserving the preceding caller/provider effects.
Null-actor diagnostics, deliberate assertion crashes and stack-corruption traps
are excluded domains. They are not repaired into successful processing.

## Exact caller order and live values

1. GetOnline/byte5 gate. Then attacker combo halfword `+0x14d0`: low outcome
   bits0 or1 reset it to zero; otherwise increment with 16-bit wrap.
2. Capture Debug singleton once. Load/construct/query `NoDamages`. A truthy
   return destroys that string and jumps directly to HP/MP leech regeneration.
   It does **not** bypass status or notification calls.
3. For false NoDamages, reuse the captured Debug owner for a second
   load/construct/query, `GOD`. When false, query the **fresh** Application's
   saved option `GOD`. Truthy GOD/saved option invokes defender virtual IsPlayer;
   this module stops if that predicate is true. Otherwise the live defender
   damage-suppression byte `+0x14f0` can skip the damage branch. Destroy inner
   GOD string before outer NoDamages string on each normally completed path.
4. Read live result mask for the inventory-gold branch. Capture amount into
   `r8`; signed nonpositive amounts skip positive damage processing. For
   positive amounts read current Application+40 PlayerManager's player count,
   then call attacker
   GetEffectiveThreatPerDamage. **Reread result.amount after that callback** for
   threat: binary32 int32 conversion, multiply by `1/256`, then multiply by
   the captured binary32 threat factor. Invoke defender's AI_AddAggro with
   attacker identity and that exact float word. Strictly positive **returned
   float**, not supplied threat, causes a fresh Debug phase for
   `isTracingThreatChange`. NaN, negative values and both zeros do not trace.
5. Store defender byte `+0x53b`: push outcome bit7 selects live mask bit20,
   otherwise zero. If the defender's **live word `+0x110 == -1`**, execute a
   fresh Debug phase for `isTracingChar_Attack`, then HitFor with the earlier
   `r8` amount and attacker. Other word110 values skip HitFor; there is no
   substitute HP write. Changes to result.amount during threat/Debug callbacks
   do not replace captured HitFor amount. Changes to word110 before its check
   affect the gate; later changes do not cause a second check.
6. Fresh mask bit21 triggers FX. Element other than `-1` becomes wrapping
   `element+0x7c`. Element `-1` first dispatches IsDead, then GetFXBloodDeath or
   GetFXBlood. GetTargetPosition returns a borrowed live point; retain it across
   selection of the **fresh** VisualFXManager. PlayAnimFXSet receives the FX key,
   that point, defender's live orientation reference `+0x16c`, and two null
   stack arguments. A reached effect provider cannot be a successful no-op.
7. Requery IsDead; truthy clears only stun/fear/slow outcome bits `0x160` in
   the mutable result. Critical bit3 invokes attacker virtual IsPlayer and stops
   at the player skill boundary if true.
8. RegenHP receives fresh result.hp_leech. RegenMP then receives fresh
   result.mp_leech, after the HP callback. Requery defender IsDead. Dead actors
   skip status work, but continue to notifications.
9. Alive actors apply DoT only for signed positive duration **and** amount;
   duration is arithmetic-shifted8 even when it becomes zero. Capture special
   bool from mask `0x18000000` after the DoT callback; then invoke defender
   virtual IsPlayer, stopping before the player idle-reaction branch if true.
10. Source nonplayer order is dodge, block, hurt, push, stun, fear, slow. Each
    selected status has a mandatory Debug `isTracingChar_Attack` phase, including
    fear with zero duration (fear service itself is skipped only at zero).
    Dodge/block/push also requery defender IsPlayer before their player statistic
    branches. Reload outcome bytes at the original phase after completed status
    Debug calls. Stun property is140/185, fear143/187, slow146/189, selected by
    current mask bits12/14/16. Durations preserve arithmetic-shift8 negative
    words. Stun final bool is zero; fear final bool is the earlier captured
    special flag. Slow always invokes its provider when bit8 is present.
11. CancelSneaking, F_ApplyScrollingCombatText, F_ApplyCombatSound always run,
    including nonpositive damage, NoDamages and already dead cases. Read fresh
    mask bit29 only **after audio**. If clear, invoke attacker CharAI virtual
    `+0xb4`, then defender CharAI virtual `+0xb4`, with original attacker,
    defender and the same live result address. Finally query defender IsPlayer,
    then attacker IsPlayer. Player achievement continuations remain unsupported.

### Word110 mapping correction

Word `ObjectBase+0x110` is **not a PyData/property-table OID**. Actual
`ObjectBase::IsRemotelyUpdated` (`0x33dd10`,20 bytes) returns true for word110
other than `-1`; otherwise it reads byte118. The two ObjectBase constructors
store `-1` into both words108/110. An online GameObject creation path copies
word110 from its parent (`0x391c50..0x391c58`). The maintained field is named
`remote_update_word_110` to expose exactly this bounded fact. It does not assert
an unresolved network-ID type or producer beyond this evidence. The direct-hit
gate reads word110 itself; it does **not** call IsRemotelyUpdated or include
byte118, which a later genuine HitFor provider may read separately.

### Virtual and service boundaries

Real Character vtable symbol `0x965f30`, address point `+8`, has slot28
IsPlayer `0x3a49f0` and slot34 IsDead `0x3a2ed4`. Real CharAI vtable symbol
`0x966790`, address point `+8`, has slotb4 OnCombatResults `0x3d0da4`. The latter
36-byte caller reads active AIS `+0x1c` and forwards through AIS virtualb4 when
nonnull. This module delegates that complete service; it does not freeze an
active AIS selected earlier or count the 36-byte body as implemented.

Request subject/peer are original Character identities. Providers resolve
their actual embedded properties/CharAI/state-machine owners at the call
phase; these are not replacement actors. Request carries the same mutable
CombatResult and original pair throughout. Field-query adapters such as
current PlayerManager count must perform the genuine query without adding unrelated
side effects. All reached Debug/string, health, aggro, status, FX, notification
and audio providers are mandatory. PlayerManager::GetNumPlayerCharactersOfClass
(`0x36ea50`,104 bytes) confirms field6c4 as the roster count: its loop rereads
this count and dispatches GetPlayerInfo for each index. Application+40 is this
manager owner, not a Game object. Unimplemented provider dispatch must return
an error, not a default value or successful no-op.

Existing `port/game-data/combat_application.cpp` is a supplied-facts core
projection. It omits this caller's mandatory Debug, saved-option, impact FX and
notification work, so it is not substituted for this traversal. Existing
`dh2_health_hit` supplies exact supported health arithmetic/gates but leaves
kill/audio/lifecycle dispatch external; it is not a complete HitFor provider.
Frozen `character_regeneration` and the real Debug Runtime/persistence/native
file backend are the intended reusable providers. This caller does not duplicate
them or pretend their bodies execute in its named-provider oracle.

## Ownership, errors and tests

The kernel owns no actor/world/VM. Borrow all controls, live actors/result,
globals, provider context and retired selected owners through synchronous
return. Capture Services and argument identities once; reread live globals,
actor scalars and result at the evidenced phases. Self attacker/defender use one
shared Actor projection. Two projections for one identity are rejected. Controls
are aligned and disjoint; control aliases are checked before actor-pointer
reads, and actor aliases before scalar reads. Independent owners/results may
nest; same actors/result/control reentry or destruction is forbidden. Providers
must retain returned point/string backing through the next source call.

Failure/exception preserves completed source/provider effects. No extra string
destruction, rollback, health write, event, or notification is added. Reports
count attempts and completed phase/effect returns; they are port diagnostics,
not new source fields.

The host runner pins original ELF/functions/literals/vtables and compiles with
`g++ -std=c++17 -O1 -Wall -Wextra -Werror -pedantic`. Original replay executes
the caller's reached instructions without skipping blocks to simulate successful
FX/Debug/notifications. Named callees are explicit observing providers, not
credited bodies. Actual relocated PLT stubs must first resolve
`0x30e964=__aeabi_i2f`, `0x30ed6c=__aeabi_fmul`, `0x30e2f8=__aeabi_fcmpgt`;
only then are their binary32 conversions/multiplications/comparison modeled.
Per-instruction observation excludes intercepted callee entries; basic-block
coverage is not used to claim execution of skipped dependency tails.

Cases cover the exact self DoT mask `0x20080000`, shared attacker/defender,
amount signs, signed/zero status durations, dead raw words, mask/outcome gates,
impact element/death key selection, NaN/signed-zero AddAggro returns, retained
first Debug owner, fresh later Debug/VFX selection, captured HitFor versus
fresh threat amount, status and notification mutation, unsupported branch
prefixes, disjoint-control rejection, and each reached provider error/exception.

The freeze gate passes **186 original ARM comparisons** (17 with actual shared
attacker/defender), **34 host behavior cases, 29 guards, and 158 provider
error/exception cases**, with zero mismatches. It observes 509 distinct reached
caller instructions; this observation does not turn the excluded branches or
the complete 3388-byte function into a whole-body claim.

Run from repository root:

```powershell
python port/level-world/tests/run_character_apply_result_host.py --compiler C:/Users/noamc/.local/mingw/mingw64/bin/g++.exe --original-elf C:/Users/noamc/Documents/Codex/2026-10-02/contineu-from-where-they-left-off/work/test_strategy/libDungeonHunter2.so --output port/level-world/build/character-apply-result-parent/host.exe --report port/level-world/build/character-apply-result-parent/validation.json
```

Production native/CMake/renderer/timer wiring is unchanged. Positive real DoT
application remains gated until every reached mandatory original service has a
genuine owning implementation, including the complete HitFor/death closure and
notifications/audio. No committed source assets or frozen prior files changed.
