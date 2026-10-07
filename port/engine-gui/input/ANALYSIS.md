# GUI input dispatch trace

## Evidence identity

This is a bounded static trace of the engine GUI path in `lib/armeabi-v7a/libDungeonHunter2.so` from the supplied APK. The APK SHA-256 is `32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`; the ELF SHA-256 is `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`. All code ranges in [input-functions.json](input-functions.json) use PT_LOAD segment 1 (`p_offset=0`, `p_vaddr=0`) and are copied byte-for-byte into [input-path.asm](reference/input-path.asm). The range-to-file mapping and per-range SHA-256 values are recorded in the manifest.

## Mouse routing

`CGUIEnvironment::postEventFromUser`, VA `0x00537c5c`, is a synchronous dispatcher: it receives `SEvent const&`, reads its kind, and calls element virtual handlers before returning. For event kind `1`, it reads the pointer coordinates from `+0x08/+0x0c` and calls `updateHoveredElement`.

For mouse sub-event value `0`, it compares the hit-tested element (`environment+0x1ac`) with the current focus (`environment+0x1b0`). If they differ, it calls `setFocus(hitTestResult)`, then sends the input to the current focus if one exists. Other mouse sub-event values go directly to the current focus when set. If there is no focus, the current hit-test element receives the event. A focused element returning false does not cause a second attempt on the hovered element. The inspected button and window handlers use mouse sub-event `0` as their press path, `3` as release, and the window handler uses `6` as movement; public enum spellings are not required for these numeric observations.

The base `IGUIElement::getElementFromPoint`, VA `0x00534dd0`, returns null for an invisible element (visibility byte at `+0x98`), recursively searches its linked child list, then calls the element's `isPointInside` virtual if no child matched. Thus descendants are considered before their parent. `isPointInside`, VA `0x00534e48`, uses the rectangle at `+0x48/+0x4c/+0x50/+0x54` and accepts points on its edges. This base hit-test does not check the enabled byte at `+0x99`; inspected widgets apply their own enabled checks during event handling.

## Focus and keyboard traversal

For event kind `2`, `postEventFromUser` checks the pressed byte at event `+0x10` and the key value at `+0x0c`. On pressed key value `9`, it calls `CGUIEnvironment::getNextElement(bool, bool)` and passes the two bytes at `+0x11/+0x12` as its selection flags. The traversal recursively visits visible child elements, considers a per-element eligibility byte at `+0x134`, compares the integer ordering value at `+0x138`, and filters candidates using the byte at `+0x13c`. These offsets and comparisons are visible in the helper; the original public field names and enum values are not recovered. If the selected element differs from current focus, the environment calls `setFocus`; a successful change consumes this key event. Otherwise, the key is sent to the current focus. Other key values are also routed to focus when present; this path has no hover fallback.

`setFocus`, VA `0x005353c8`, keeps a reference to a non-root candidate and notifies the current element before changing the stored focus. It sends the old element a stack event whose first word is `0`, whose `+0x08/+0x0c/+0x10` fields are old element, candidate, and `0`. A nonzero return from that handler cancels the change. The candidate then receives a stack event with first word `0` and `+0x08/+0x0c/+0x10` fields candidate, old element, and `1`; a zero return accepts the change, while a nonzero return rejects it. The root pointer (`environment+8`) is normalized to null. These are observed raw event words and callback outcomes; public names for the event subtypes are not assigned.

`removeFocus`, VA `0x005355a0`, also uses an inline kind-`0` callback. When the supplied element equals the current focus, it sends the current element an event with raw `+0x08=current`, `+0x0c=null`, `+0x10=0`; a nonzero handler result leaves focus installed, while a zero result drops and clears the focus reference. When the supplied pointer differs from current focus, the function directly drops and clears the current focus reference. This is the observed function behavior; its caller-side cleanup contract was not traced.

## Parent propagation and widget examples

Base `IGUIElement::onEvent`, VA `0x00534fe8`, forwards the same event to the parent pointer at element `+0x24` through the parent's event virtual and returns that result. `CGUIEnvironment::onEvent`, VA `0x00535710`, forwards to the configured receiver at `environment+0x1c4` except for event kinds `1` and `2`, which it declines, and a kind `0` event whose `+0x08` field equals the embedded root. Consequently, the traced mouse/key dispatcher does not deliver those same events to the environment's user receiver through this parent path.

Three engine widget handlers make the numeric input paths concrete:

- `CGUIButton::onEvent`, VA `0x006a6eac`, first checks enabled byte `+0x99`. Its mouse branch handles sub-events `0` and `3`; on the release path it checks the current pointer against the button's stored rectangle and can send its parent a stack event with kind `0` and numeric subtype `5`. Its key branch recognizes key values `13` and `32` when the event's pressed byte is set, and has paths that update pressed state. The emitted subtype and keys remain numeric because their enum definitions were not recovered.
- `CGUIWindow::onEvent`, VA `0x0055fe1c`, records coordinates at `+0x158/+0x15c` and marks drag state at `+0x160` on mouse sub-event `0`; it asks its parent to bring the window forward. Sub-event `3` clears that drag state. On sub-event `6`, an active drag computes a coordinate delta, calls the element `move` virtual, and updates the saved pointer coordinates.
- `CGUIEditBox::onEvent`, VA `0x006b3d70`, passes kind `1` to `processMouse` and kind `2` to `processKey`. It consumes the event when that helper returns nonzero; otherwise it bubbles to its parent. A kind `0` event from itself with raw subtype `0` clears three internal state fields before bubbling.

The copied ranges contain no queue insertion or deferred dispatch: the GUI method invokes the chosen element's virtual handler inline. This trace does not establish where Android/device input is queued before it reaches the GUI environment.

## Limits

This covers engine environment routing, focus selection, base hit-testing, parent propagation, and three generic engine widgets. It does not identify every `SEvent` enum name, reconstruct the full class layout, establish the upstream device event queue, infer game-specific focus rules, or include Dungeon Hunter HUD/menu construction and behavior. The disassembly is evidence from the supplied APK and does not by itself establish the exact source revision of the studio fork.
