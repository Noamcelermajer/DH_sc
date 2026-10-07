# Animation sampling and application checkpoint

This is a bounded CPU-side reconstruction of one animation value path: selected position float3 tracks with floating-point values. It establishes how the original path chooses a direct key or interpolates adjacent keys, and ports that value operation in [value_sampling.hpp](value_sampling.hpp). It does not reconstruct the full runtime animation system.

## Provenance

The original ELF is APK member `lib/armeabi-v7a/libDungeonHunter2.so`, 15,938,284 bytes, SHA-256 `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`. The selected application ARM bodies are copied into [reference/animation-application-functions.asm](reference/animation-application-functions.asm), with exact original listing ranges, ELF virtual addresses, file offsets, function sizes, per-function SHA-256 values, and copy ranges in [reference/animation-application-functions.json](reference/animation-application-functions.json). The seven copied bodies match the declared ELF function slices. The extra-float `applyValue` overload is also preserved in [reference/animation-functions.asm](reference/animation-functions.asm) and indexed in [reference/animation-functions.json](reference/animation-functions.json). The track-selection factory and selected vtable entries are indexed in [reference/animation-binding-functions.json](reference/animation-binding-functions.json) and [reference/animation-binding-vtables.json](reference/animation-binding-vtables.json).

The two `CAnimationTrackEx::applyValue` overloads are distinct:

| Function | Signature distinction | ELF evidence | Dispatch in the body |
| --- | --- | --- | --- |
| normal overload | ends with `int&, bool` | `0x006e2ad8`, 180 bytes, SHA-256 `6348b84e8059a0b171d89f74e364c061b3ca0fcaf7d2563bd4f77565ef5602cd`; original listing lines 95–144 | Calls `findKeyFrameNo`; when the search result AND caller flag is nonzero, loads object-vptr slot `+0x40` (interpolated); otherwise loads `+0x48` (direct key). |
| extra-float overload | ends with `int&, float, bool` | `0x006e2a18`, 192 bytes, SHA-256 `f5bd67c1f56e6fc7cefe6d065222199338c952bae0c5aa2283caf3a4f7eb0039`; original listing lines 41–93 | Calls `findKeyFrameNo`; when the search result AND caller flag is nonzero, loads object-vptr slot `+0x58`; otherwise loads `+0x5c`. |

The normal overload is the entry used for the bounded position float3 path below. In that position vtable, its `+0x40` and `+0x48` object-vptr slots resolve to the typed interpolation and direct wrappers described below. In the same table, the extra-float overload's `+0x58` and `+0x5c` slots resolve to generic `IAnimationTrackEx` entries at full-table offsets `+0x60` and `+0x64` (targets `0x0060dfb0` and `0x0060dfb4`). The overloads and targets are distinct; the extra float's role and downstream application behavior are not folded into this reconstruction.

## Confirmed position float3 path

`selectTransformTrack` in [track_selection.hpp](track_selection.hpp) maps channel type `1` to `position_vector3`. With no offset/scale record, or discriminator `2`, the selected scalar template is floating point. Other channel codes or scalar variants do not qualify for the helper in this checkpoint.

For the selected position specialization, the vtable is at ELF VA `0x00978ef0`, size 152, slice SHA-256 `b88e7d1347d659b9182a8c0562e82835c9bbcb39f4a5561b5475d318a60dc1dc`. Its address point begins at vtable VA `+8`. The normal overload's object-vptr slot `+0x40` therefore reaches the full-table entry at `+0x48`, the position float3 interpolation wrapper at `0x00628810`; slot `+0x48` reaches full-table entry `+0x50`, the direct-key wrapper at `0x00622d58`. The copied wrapper and implementation bodies are in the application listing and JSON index.

The direct-key implementation at `0x00622ce8` calls `SAnimationAccessor::getOutput(0)`, uses a 12-byte stride for the selected key, copies three 32-bit components, and calls the destination object's vtable slot `+0xa4`. The interpolated implementation at `0x006287cc` calls the typed interpreter at `0x006286cc`; it then calls the same destination slot `+0xa4`. The interpreter obtains sampler output `0`, addresses lower and adjacent upper float3 records at 12-byte stride, and computes each component as `(1 - fraction) * lower + fraction * upper`. The multiplication and addition are separate helper calls to `__aeabi_fmul` and `__aeabi_fadd`; `1 - fraction` uses `__aeabi_fsub`.

`value_sampling.hpp` covers only those supported operations. The caller passes already decoded float3 keys, the direct/interpolated branch, and the fraction. A direct sample copies the selected lower key; an interpolated sample applies the recovered component formula. The helper does not search timestamps, choose a sampler, decode BRES payloads, clamp the fraction, apply default/offset-scale transforms, or invoke a target. The target slot is resolved to `ISceneNode::setPosition(vector3d<float> const&)` when the runtime target is a `CSceneNode`; the [focused target note](targets/ANALYSIS.md) records the vtable evidence and the remaining pointer-binding gap. The helper itself still stops before target invocation.

## Search, binding, and cache boundaries

`SAnimationAccessor::getKeyTime(int)` at `0x00669eec` and `getOutput(int)` at `0x00669e24` index 28-byte sampler records and resolve animation-data entries. Their serialized layout is documented in [asset-payloads/FORMATS.md](../asset-payloads/FORMATS.md).

`SAnimationAccessor::findKeyFrameNo(int, int, int&, float&, int)` at `0x0066b814` obtains the requested time vector and calls the typed dispatcher at `0x0066b65c`. The dispatcher uses runtime state reached through accessor offset `+8`; on a cached query hit it returns the stored key index, fraction, and search result. On a miss it dispatches by `getTimeInternalType(0)` to byte, unsigned-short, or signed-int search bodies. This preserves sampler-zero time-type behavior already implemented in `asset-payloads`; the cache object is transient accessor state, not serialized BRES data.

`SAnimationAccessor::applyValue` overloads forward indices, target, and optional `CApplicatorInfo*` through the runtime object reached from `[SAnimation+0x14]`. The bounded `getValue`/`applyValue` path, animator record setup, block-data lookup, and direct/interpolated track dispatch are now traced in [bindings/ANALYSIS.md](bindings/ANALYSIS.md). The serialized BRES word at `SAnimation+0x14` is zero; runtime population and all callback-produced bindings remain incomplete.

`CAnimationSet::compile()` at `0x00660710` walks animation and channel records through virtual callbacks. `CAnimationSet::addAnimation()` compares channel descriptors and records a selected track index; `CAnimationSetTransformationTemplate::addTransformationTargets(CSceneNode*)` at `0x006e24e8` creates target records for channel codes `1`, `5`, and `10`. `CColladaDatabase::getAnimationTrackEx` maps transform channels `1–13` to the track kinds recorded in `track_selection.hpp`. The binding trace closes these selected runtime transitions, while callback-specific channel matching and complete serialized channel-to-sampler semantics remain unresolved; see [bindings/ANALYSIS.md](bindings/ANALYSIS.md).

The separate `AnimationSet::_FindCacheCandidate()` at `0x003649e0` and `GetAnimationBySetIndex(int)` at `0x00364bf4` operate on the global animation-set cache. `CAnimationBlock::getBlock(...)` at `0x0060b350` is another range/block cache. Those are distinct from the per-accessor keyframe query cache and are outside this sampler helper.

## BRES observations

The recovered-cache audit at [reports/asset-payloads-cache-validation.json](../../reports/asset-payloads-cache-validation.json) covers 2,901 BRES files and 82,880 sampler/segment vectors. Observed output-vector counts are:

| Stored output | Vectors |
| --- | ---: |
| Float, 1 component | 3,127 |
| Float, 3 components | 25,455 |
| Float, 4 components | 53,827 |
| Unsigned byte, 1 component | 61 |
| Unsigned byte, 4 components | 410 |

The real [candle-flame export](../asset-payloads/examples/candle-flame.animations.json) contains records with channel type `10`, interpolation enum `1`, float3 outputs, and 34/33 keys. The recovered track factory maps channel type `10` to `scale_vector3`; any offset/scale record still determines the selected scalar template. The [typed-track trace](typed-tracks/ANALYSIS.md) identifies the standard float scale sampler and dispatch while leaving final target behavior outside its scope. The position float3 helper above remains limited to channel type `1`.

## Remaining gaps

The selected path proves a bounded key-value sampler, while full engine animation application still depends on unresolved runtime data:

1. Channel-to-sampler and channel-to-track binding is not completely recovered from `CAnimationSet::compile()` callbacks and the runtime animator.
2. The position setter at target vtable slot `+0xa4` is identified as `ISceneNode::setPosition(vector3d<float> const&)`, and its three component stores are known. The [target-binder trace](bindings/ANALYSIS.md) now follows seeded transform bind URIs through `onBind()`/`forceBind()` and indexed `setTarget()` into the animator's target pointer array for the position/rotation/scale route. Coordinate-space semantics for the written fields remain unresolved.
3. Float quaternion and scale-vector3 key paths are covered in [typed-tracks](typed-tracks/ANALYSIS.md). The [component-track audit](typed-tracks/scalar-components/ANALYSIS.md) traces all position/scale X/Y/Z channels across char, short, and float templates through sampler interpretation and concrete scene-node setters; its bounded helper covers only key sampling. The [component blend/add audit](typed-tracks/component-audit/ANALYSIS.md) now maps all 18 scalar non-key vtable routes and the 17 material parameter vtables, including float and U8/SColor reducers, apply-helper/setter ranges, and factory selection. The [quaternion-angle audit](typed-tracks/quaternion-angle/ANALYSIS.md) traces channel types 6–9 across float/char/short variants to `ISceneNode::setRotation`; its source helper requires already-decoded float axis/angle values. BRES/default semantics, serialized material selector meanings, auxiliary indexed overloads, and complete material-track lifecycle remain open.
4. Default values and offset/scale variants can change applied values; their complete consumer contract is unresolved.
5. The global animation-set and block caches contain runtime ownership/loading behavior outside CPU value sampling.

No tests or builds were run for this checkpoint.
