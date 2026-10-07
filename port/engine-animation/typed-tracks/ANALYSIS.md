# Typed transform track paths

This note adds two float-template transform families to the bounded animation reconstruction: rotation quaternion and scale vector3. It follows the ordinary `CAnimationTrackEx` direct/interpolated key path and records one separate quaternion overload whose index meanings remain opaque. These findings cover sampler-value production and the typed apply dispatch; they do not recover every animation channel, default/offset-scale transform, target binding, or serialized payload contract.

## APK and range provenance

The input is `lib/armeabi-v7a/libDungeonHunter2.so` from the supplied APK. The APK SHA-256 is `32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`; the ELF member is 15,938,284 bytes with SHA-256 `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`. The member was freshly extracted from the APK for this audit.

The ELF has file-backed load segments `(p_offset=0, p_vaddr=0, p_filesz=0x955130)` and `(p_offset=0x955130, p_vaddr=0x956130, p_filesz=0x4954c)`. The first segment maps code VAs directly to file offsets; the second uses `file_offset = VA - 0x1000`. Every function and vtable slice in [functions.json](functions.json) and [vtables.json](vtables.json) is within one of these segments and is hashed from its mapped ELF bytes. The corresponding ARM disassembly is in [apk-arm-disassembly.asm](apk-arm-disassembly.asm).

## Factory and vtable dispatch

The existing factory trace in [animation-binding-functions.json](../reference/animation-binding-functions.json) identifies `CColladaDatabase::getAnimationTrackEx` at `0x00611ae0` (1,608 bytes; its full SHA-256 is recorded in that manifest). Channel type 5 selects the quaternion family and type 10 selects scale-vector3. The existing [track-selection table](../track_selection.hpp) records that absent offset/scale data or discriminator 2 selects the float template. The float singleton initializers are `CVirtualEx<CApplyValueEx<quaternion, CSceneNodeQuaternionMixin<float>>>::getInstance()` at `0x0060ff20` and the corresponding scale initializer at `0x00610988`; both store their class vtable address point in the singleton.

Each vtable is 152 bytes and has an 8-byte Itanium ABI header before its address point:

| Family | Vtable VA / file offset | Address point | Direct value read | Interpolated value read | Direct apply | Interpolated apply |
| --- | --- | --- | --- | --- | --- | --- |
| Quaternion float4 | `0x00978ae0` / `0x00977ae0` | `0x00978ae8` | full slot `+0x30`, target `0x0061cf8c` | full slot `+0x28`, target `0x006132e4` | full slot `+0x50`, wrapper `0x006208e4` | full slot `+0x48`, wrapper `0x00620944` |
| Scale float3 | `0x00979610` / `0x00978610` | `0x00979618` | full slot `+0x30`, target `0x00612394` | full slot `+0x28`, wrapper `0x006289b8` | full slot `+0x50`, wrapper `0x006239c4` | full slot `+0x48`, wrapper `0x00628994` |

“Full slot” offsets are measured from the beginning of the vtable. The object-vptr slot is 8 bytes lower. In the normal `CAnimationTrackEx::applyValue` overload, the caller flag and key search result choose object slot `+0x40` for interpolation or `+0x48` for a direct key; the established dispatcher and its ELF range are documented in [the parent animation analysis](../ANALYSIS.md). Thus the float quaternion and scale vtable targets above are the concrete selected implementations of that branch.

## Scale vector3, float template

The direct getter at `0x00612394` calls `getOutput(0)`, addresses the selected key with a 12-byte stride, and copies three 32-bit components. The interpolation wrapper at `0x006289b8` forwards to the 256-byte interpreter at `0x00628850`. That body also reads output sampler zero, uses adjacent 12-byte float3 records, computes `1 - fraction`, and combines each component as `(1 - fraction) * lower + fraction * upper`, with separate `__aeabi_fmul` and `__aeabi_fadd` calls. It does not clamp the fraction or apply the separate offset/scale metadata in this path.

Direct apply wrapper `0x006239c4` reaches `CApplyValueEx::applyKeyBasedValueEx` at `0x00623954`; it copies the selected 12-byte key and calls the applicator object's vtable slot `+0x94`. Interpolated wrapper `0x00628994` reaches `0x00628950`; it calls the same float3 interpreter and then the same applicator slot. The slot's concrete target binding is outside this note.

The bounded helper [sample_typed_tracks.hpp](sample_typed_tracks.hpp) mirrors only the selected float3 key-value operation. It takes already decoded keys and a caller-selected branch; it does not search key times, decode BRES, apply metadata, or call the applicator.

## Rotation quaternion, float template

The direct getter at `0x0061cf8c` reads output sampler zero, selects one 16-byte key record, and copies its four 32-bit components. Direct apply wrapper `0x006208e4` reaches `CApplyValueEx::applyKeyBasedValueEx` at `0x00620864`, which copies the same four-word record and calls applicator vtable slot `+0x9c`.

The normal interpolated getter wrapper at `0x006132e4` reaches `CInterpreter<QuaternionMixin<float>, float, 4, SUseDefaultLerp<float>>` at `0x00613294`. It prepares weights `1 - fraction` and `fraction`, addresses two adjacent 16-byte quaternion records, and calls `CBlender<quaternion, 1, quaternion>::getBlendedValueEx` at `0x006130d4` with count 2. That blender calls the engine's `quaternion::slerp` at `0x00612d00`. This is the proven interpolated route; it is not a four-component linear interpolation. The apply interpolation wrapper at `0x00620944` reaches `0x006208f8`, which uses the same interpreter/blender path before calling applicator slot `+0x9c`.

The bounded quaternion helper uses the independently recovered `dh2_quat_slerp` routine from [engine-math](../../engine-math/math.hpp). It returns the direct key unchanged or delegates the two-key interpolated value to that routine. The helper's interpolation fraction is supplied by the caller and is not searched or clamped here.

## Separate quaternion indexed overload

The same quaternion vtable contains a separate `getKeyBasedValue` overload at full slot `+0x34` (`0x0061d0ec`) and a three-index interpolation overload at full slot `+0x2c` (`0x0061d2a8`). They reach `CInterpreterQuaternion` bodies at `0x0061cfd8` and `0x0061d100`. The direct body reads two sampler-zero records, toggles the sign bits of three components in one quaternion, then calls `quaternion::operator*` at `0x0060dd34`. The interpolated body reads three indexed records, calls `quaternion::slerp` for one pair, toggles three sign bits on another value, and calls the same multiply routine. These overloads are distinct from the standard direct/interpolated slots above. The integer indices are preserved as opaque inputs; this note does not assign them “base,” “default,” or “rest pose” meanings.

## Coverage boundary

| Family | Direct key | Interpolated key | Typed apply forwarding | Remaining in this family |
| --- | --- | --- | --- | --- |
| Scale float3 | Proven: 12-byte record copy | Proven: adjacent-key component blend | Proven through applicator vtable `+0x94` | Offset/scale metadata consumers and the concrete callback target |
| Quaternion float4 | Proven: 16-byte record copy | Proven: two-key quaternion blender calling engine slerp | Proven through applicator vtable `+0x9c` | Alternate indexed overload callers and the concrete callback target |
| Position/scale X/Y/Z scalar components | See the [component-track audit](scalar-components/ANALYSIS.md): all 18 channel/scalar pairs across char, short, and float are covered, including integer scale/offset decode, default lanes, and concrete position/scale setters. | Difference-form scalar interpolation is recorded per specialization in the component audit. | Concrete `setPosition` and `setScale` dispatch is established for all six channels and all three scalar widths. | BRES default/offset-scale meanings. Non-key reducers are covered by the [component blend/add audit](component-audit/ANALYSIS.md). |
| Material parameter tracks | Key sampling is outside this audit. | Key interpolation is outside this audit. | The [component blend/add audit](component-audit/ANALYSIS.md) maps material setter calls and factory-selected vtables for float1–4 and U8 SColor3/4 routes. | Serialized selector meanings and complete material-track lifecycle. |
| Quaternion-angle channels 6–9 | See the [quaternion-angle audit](quaternion-angle/ANALYSIS.md): direct and two-key paths are traced across float, char, and short variants; the [index audit](quaternion-angle/index-audit/ANALYSIS.md) maps sampler-zero and indexed key-position routing. | Scalar angle blend followed by `quaternion::fromAngleAxis`; the no-default route reads an uninitialized angle lane in the traced wrappers. | Concrete `ISceneNode::setRotation` target is resolved. | No recovered type-6-through-9 asset exercises the no-default route; non-float BRES default/offset-scale meanings, semantic component selection, other indexed quaternion callers, and general channel-to-sampler pairing remain open. |

The [non-key blend/add supplement](blend-add/ANALYSIS.md) traces float scale-vector3 reducers and a shared quaternion reducer dispatched by all six quaternion/quaternion-angle vtable variants across float, short, and char templates. It confirms an ordered weighted float3 sum (without normalization), the quaternion blend seed-weight behavior, and signed ordered quaternion composition for add. The [component blend/add audit](component-audit/ANALYSIS.md) extends the non-key coverage to all 18 scalar position/scale vtables and 17 material parameter vtables, including the distinct U8-to-SColor conversion path and factory selection. These audits establish static value behavior and dispatch, not complete engine integration. Complete key-search semantics, serialized selector/channel-to-sampler mappings, and material-track lifecycle remain open. The typed paths were reviewed statically from APK-backed ARM bodies and byte ranges. No build or tests were run.
