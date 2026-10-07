# Position animation target and setter

## Resolved call

For the selected position float3 track, both the direct-key body at `0x00622ce8` and the interpolated body at `0x006287cc` load the supplied target's vptr and call object-vptr slot `+0xa4`. The exact bodies are preserved in [the animation application excerpt](../reference/animation-application-functions.asm), with APK range hashes in [its manifest](../reference/animation-application-functions.json).

`CAnimationSetTransformationTemplate::addTransformationTargets(CSceneNode*)` allocates 16-byte records for channel codes `1`, `5`, and `10`, storing its `CSceneNode*` argument at record offset `+8`. The recursive call handles child nodes the same way. Channel `1` selects the position-vector3 family described in [track selection](../track_selection.hpp). The complete target-record function and `CSceneNode` constructor are copied into [the focused ARM excerpt](reference/target-resolution-functions.asm), and their full ranges are indexed in [the target-resolution manifest](target-resolution-functions.json).

The `CSceneNode` primary vptr points at its vtable symbol plus `0x1c`. The complete-object constructor writes the loaded vtable base plus `0x1c` to the object start. Therefore vptr slot `+0xa4` is table offset `+0xc0`, at VA `0x00983680`. That APK word is `0x0059712c`, resolving to the named function `glitch::scene::ISceneNode::setPosition(glitch::core::vector3d<float> const&)`.

The setter body at `0x0059712c` copies three words from its vector reference into object offsets `+0xac`, `+0xb0`, and `+0xb4`, then sets bit `0x8` in the word at `+0x11c`. This identifies the called setter and its observed memory writes; it does not establish coordinate-space semantics for those fields. The vtable entry and setter body are independently range-hashed in the focused manifest.

## Runtime binding boundary

The [animation runtime trace](../bindings/ANALYSIS.md) now shows `ISceneNodeAnimator::onBind()` and `forceBind()` resolving seeded transform bind URIs and passing the matching node through indexed `setTarget()` into the animator's stored target array. `applyAnimationValues()` later forwards that pointer to `SAnimationAccessor::applyValue()`. The position track passes its target argument to the `+0xa4` call above, which resolves to `ISceneNode::setPosition` for a `CSceneNode`. This closes the template-record-to-application pointer chain for the traced position/rotation/scale route; broader `void*` target types and coordinate-space semantics remain unresolved. See [the broader binding trace](../bindings/ANALYSIS.md) and the [scene transform construction trace](../../engine-scene/serialization/ANALYSIS.md).

No tests or builds were run for this note.
