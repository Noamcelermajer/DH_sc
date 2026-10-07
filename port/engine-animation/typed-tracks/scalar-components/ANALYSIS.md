# Position and scale component tracks

This checkpoint traces the six scalar transform channels through their byte, short, and float specializations: position X/Y/Z (channel types 2/3/4) and scale X/Y/Z (11/12/13). It follows ordinary key retrieval and application from the track vtable through the concrete interpreter and apply callback to the `CSceneNode` setter. All 18 vtables and 148 function ranges are indexed in [functions.json](functions.json), with instruction listings byte-checked against the APK ELF in [apk-arm-disassembly.asm](apk-arm-disassembly.asm); selected vtable slices are also in [vtables.json](vtables.json).

## Provenance and factory mapping

The APK SHA-256 is `32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`. The input ELF is APK member `lib/armeabi-v7a/libDungeonHunter2.so`, size 15,938,284 bytes, SHA-256 `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`. The ELF's file-backed loads are `(p_offset=0, p_vaddr=0, p_filesz=0x955130)` and `(p_offset=0x955130, p_vaddr=0x956130, p_filesz=0x4954c)`; manifest file offsets use the PT_LOAD mapping formula.

The factory is `CColladaDatabase::getAnimationTrackEx` at `0x00611ae0`, 1,608 bytes, SHA-256 `bb7590a23775d34fa5821fac78f1e6330a691b0c929b23cf1a3eedb733f37f72`; the parent [animation binding manifest](../../reference/animation-binding-functions.json) has its complete function slice. The existing [track selector](../../track_selection.hpp) records the observed cases:

| Channel type | Transform component | Selected scalar template by offset/scale discriminator |
| ---: | --- | --- |
| 2 / 3 / 4 | Position X / Y / Z | absent or 2: `float`; 0: `char`; 1: `short` |
| 11 / 12 / 13 | Scale X / Y / Z | absent or 2: `float`; 0: `char`; 1: `short` |

The exact singleton initializers for all 18 channel/scalar pairs are cross-referenced by address and function hash in `factory_initializers`. Each selected `CVirtualEx` table is 152 bytes; its exact slice hash and the getter/application slots are listed in `vtables.json`. The table has the 8-byte Itanium ABI header, so the manifest reports both each complete-table slot and the corresponding object-vptr slot.

## Sampler input and numeric operations

The ordinary getter's vtable slots resolve to the direct and interpolated wrappers for each of these specializations. Those wrappers forward to the corresponding `CInterpreter<CSceneNode{Position|Scale}{X|Y|Z}Ex<T>, float, 3, SUseDefaultValues<axis,T>>` body. Each of the 36 direct/interpolated interpreter bodies reads sampler output index **0**: float paths call `SAnimationAccessor::getOutput(0)` directly; byte and short paths construct `CInputReader<T, float, 1>`, whose constructor calls `getOutput(0)`, `getScales()`, and `getOffsets()`.

For the integer templates, the APK uses signed loads (`ldrsb` for `char`, `ldrsh` for `short`), converts the signed integer to float, multiplies by the first scale value, then adds the first offset value. The short path scales the key index by two before loading; the byte path uses the key index as its byte offset. Thus the observed decoded sample is `float(signed_input) * scale[0] + offset[0]`. The float specialization reads a float word directly from the output array and does not call the scale/offset accessors in these component interpreter bodies.

For interpolation, each endpoint is decoded first, then the body performs three separate floating-point operations in this order: `delta = upper - lower`, `weighted_delta = fraction * delta`, `value = lower + weighted_delta`. Float tracks use the same difference form on raw float endpoints. The observed bodies do not clamp the supplied fraction. This arithmetic order is preserved by [component_sampling.hpp](component_sampling.hpp); it does not reproduce key-time search, BRES decoding, or the caller's selection of direct versus interpolated sampling.

## Default components and apply callbacks

Each typed interpreter tests `SAnimationAccessor::hasDefaultValue()`. When a default vector exists, it writes the sampled value into the selected axis and copies the other two float lanes from the default-value pointer. When no default exists, the getter writes only the sampled axis. The direct and interpolated `CApplyValueEx` callbacks initialize their local three-float result to zero before calling the interpreter, so a no-default apply uses zero for the other two axes. A standalone getter call with no default does not initialize those other lanes; their prior contents are preserved.

The concrete apply path is the same at all six components and three scalar widths, with a different target vtable slot for the transform:

| Family | `CApplyValueEx` target object slot | `CSceneNode` table word | Resolved setter |
| --- | ---: | ---: | --- |
| Position X/Y/Z | `+0xa4` | `0x00983680` = `0x0059712c` | `ISceneNode::setPosition(vector3d<float> const&)` |
| Scale X/Y/Z | `+0x94` | `0x00983670` = `0x005970c4` | `ISceneNode::setScale(vector3d<float> const&)` |

The CSceneNode primary-vptr and constructor evidence is recorded in [the existing target note](../../targets/ANALYSIS.md). The setters copy all three vector lanes: position to offsets `+0xac/+0xb0/+0xb4` and set flag bit `0x8`; scale to `+0xc8/+0xcc/+0xd0` and set flag bit `0x2`. Therefore a component-channel apply still invokes the full-vector setter after the typed interpreter composes the selected value with its default/zero lanes. Coordinate-space meaning for those fields remains unresolved.

This closes only the ordinary key-based component route. The special indexed getter overloads, quaternion-angle tracks (6–9), default/offset-scale BRES schema, all non-key blend/add application methods, and wider runtime target types remain open. No build or tests were run.
