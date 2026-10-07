# Non-key blend and add routes

## Evidence boundary

This supplement maps the float `vector3d` scale non-key route and the shared quaternion reducer used by six quaternion-track variants in the supplied ARM32 ELF. The APK SHA-256 is `32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`; `libDungeonHunter2.so` SHA-256 is `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`. [functions.json](functions.json) records each function range, file offset, and byte hash; [reference/blend-add.asm](reference/blend-add.asm) is disassembled directly from the extracted ELF with LLVM objdump. The existing [track vtables](../vtables.json) and captured wrappers tie the reducers to scale, quaternion, and quaternion-angle routes.

This is static code evidence. It does not establish which game states invoke the non-key routes, how callers generate or normalize weights, or how every target callback applies its value.

## Scale float3 blend and add

The `scale_float` vtable routes full-table slots `+0x18` and `+0x1c` to `getBlendedValue` at `0x006275fc` and `getAddedValue` at `0x0062b204`. Both bodies use the same three-lane reduction:

- `count == 0`: write `(0, 0, 0)`.
- `count == 1`: copy the sole input vector directly; its weight is not read.
- `count > 1`: for each input in order, multiply each of its three components by its weight and add the products into a zeroed accumulator. The body does not divide by the sum of weights.

The corresponding apply slots `+0x20` and `+0x24` route through wrappers `0x0062d72c` / `0x0062d840` into `applyBlendedValueEx` `0x0062d634` / `applyAddedValueEx` `0x0062d748`. They repeat the same zero/single/multiple-input reduction, then indirect-call slot `+0x94` on the runtime callback object passed to the helper. The fifth `CApplicatorInfo*` parameter is not read in these function bodies; the callback's concrete target semantics are outside this supplement.

[weighted_scale.hpp](weighted_scale.hpp) and [weighted_quaternion.hpp](weighted_quaternion.hpp) port the reductions for already-decoded values. The scale helper takes nonnegative counts; quaternion reducers return identity for nonpositive counts, matching their signed APK count branch. They do not implement callback dispatch, key search, BRES decoding, interpolation selection, or weight production. The quaternion helper preserves the binary's seed-weight behavior, signed-add conjugation, slerp, and multiplication order.

## Quaternion blend and add

All six `CSceneNodeQuaternionMixin` and `CSceneNodeQuaternionAngleMixin` vtables (float, short, and char scalar templates) route `getBlendedValue` and `getAddedValue` through distinct wrappers to the same `CBlender<quaternion, 1, quaternion>::getBlendedValueEx` at `0x006130d4` and `getAddedValueEx` at `0x00613378`. The float quaternion wrappers are `0x00613300` / `0x00613588`; all six wrapper pairs and exact ranges are in [functions.json](functions.json). The reducer behavior below is shared across these six variants.

The blend body uses identity `(0, 0, 0, 1)` for a nonpositive count, scans weights for nonzero entries, and calls `quaternion::slerp`. Its first-contributor paths are order-sensitive: a first nonzero weight equal to `1` writes that quaternion and returns; otherwise it seeds the accumulator with the first nonzero quaternion and continues with later entries. The subsequent accumulated-weight variable starts at zero and does not include that seed's weight. Therefore the first later nonzero contributor is slerped with fraction `weight[i] / weight[i] == 1`; only following contributors use the cumulative later-weight sum. This is the observed binary behavior and differs from a conventional normalized weighted average. The normal two-key interpreter passes `(1 - fraction, fraction)` to this reducer, so the first-contributor edge behavior is relevant to that call path. Preserve the exact branch and caller ordering in any port.

The add body starts its accumulator at identity and processes positive and negative weights while skipping zero (and values that compare neither greater nor less than zero). For negative weights it conjugates the input quaternion by flipping the sign bits of xyz and negates the weight. It then slerps identity toward the selected quaternion by the positive weight magnitude and composes the result into the accumulator with `quaternion::operator*`, in input order. The binary therefore supports weighted, ordered rotation composition; the exact caller-level meaning of an “add” layer is still unverified.

Each of the six quaternion-track variants has separate 76-byte blended/added apply bodies and 28-byte vtable wrappers. Every body calls the matching shared reducer, then dispatches through slot `+0x9c` on the supplied callback object. The full family range matrix is in [functions.json](functions.json); the float quaternion apply path uses `0x00620968` / `0x00620bd8` and wrappers `0x006209b4` / `0x00620c24`. The slot's concrete callback target and runtime use remain unproven.

## Remaining gaps

The non-key quaternion traces cover quaternion and quaternion-angle variants with float, short, and char scalar templates; scale coverage remains float vector3 only. Position/scale component types, material tracks, key-to-layer matching, weight generation/normalization, and concrete callback targets require their own vtable and caller traces. No claim is made that the observed non-key routines are exercised by a recovered BDAE or a live gameplay frame.
