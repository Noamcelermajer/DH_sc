# GUI environment runtime trace

## Input identity and evidence rules

This trace is for `lib/armeabi-v7a/libDungeonHunter2.so` inside the supplied `Dungeon-Hunter-2-HD-v1-0-2.apk`. The APK SHA-256 is `32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`; the extracted ELF SHA-256 is `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`. Function bytes below VA `0x00955130` map through `PT_LOAD` segment 1 (`p_offset=0`, `p_vaddr=0`); the GUI vtable group at VA `0x0096cdc8` maps through segment 2 (`p_offset=0x00955130`, `p_vaddr=0x00956130`). The manifest records the direct file offsets, range sizes, segment indices, and hashes. No disassembly is inferred from a decompiler listing.

## Creation and retained services

`CIrrFactory::createGUIEnvironment`, VA `0x00533f28`, allocates `472` bytes, invokes `CGUIEnvironment` construction at `0x0053a0c0`, then returns the constructed address.

The constructor receives an `IFileSystem` smart-pointer reference, `IVideoDriver*`, and `IOSOperator*`. It stores the driver at object offset `+0x1a8`, the file-system pointer at `+0x1c0`, and the OS-operator pointer at `+0x1c8`; the observed constructor increments the referenced objects' counters when non-null. The destructor at `0x00539118` releases these stored references. The constructor also calls the default GUI factory constructor and registration routine, loads the built-in font, creates skin type `1`, and installs that skin.

The constructor calls `IGUIElement` construction with the element subobject at `this+8`. `CGUIEnvironment::getRootGUIElement`, VA `0x00535c10`, is exactly `add r0, r0, #8; bx lr`, so the public root pointer is this embedded element subobject rather than a separately allocated root.

`CGUIEnvironment::clear`, VA `0x00535658`, drops the current focus reference at `+0x1b0`, then drops the current hit-test element at `+0x1ac` unless it is the embedded root (`this+8`). It obtains the root through the environment vtable, obtains its child list through the element vtable, and repeatedly invokes each child's `remove()` virtual before returning. This describes the explicit clear path; reference destruction beyond the called `drop`/`remove` routines is outside this trace.

`getFocus() const`, VA `0x00535598`, returns the pointer at `+0x1b0`. `updateHoveredElement`, VA `0x005374f4`, stores the latest point at `+0x1b4/+0x1b8`, hit-tests from the embedded root, and stores the returned element at `+0x1ac`.

## Bounded input route

`postEventFromUser`, VA `0x00537c5c`, reads the event kind from the first word. Kind `1` copies the two integer fields at event offsets `+8` and `+0xc` and calls `updateHoveredElement`. Kind `2` enters a separate key-navigation branch; other kinds return false in this function.

When the new hit-test result is non-null and differs from the previous element, `updateHoveredElement` sends a small stack event with numeric kind `3` to the previous element when one exists, then sends numeric kind `2` to the new element. It dispatches those callbacks through element vtable byte offset `+8`, which the recorded vtable group maps to `IGUIElement::onEvent` (or the environment's adjusted override). It also updates a timer-related field and may dispatch to the pointer at environment offset `+0x168`; that pointer's semantic role and the numeric event kinds' public enum names are not established here. A null new hit-test result follows a shorter path that drops the previous held reference without these event callbacks.

The expanded input route, focus-change callbacks, Tab-style key traversal, child-first hit-test, and parent propagation are documented in [input/ANALYSIS.md](input/ANALYSIS.md). Those notes preserve raw numeric event values and field offsets where enum or layout names could not be confirmed.

## Bounded root draw route

`CGUIEnvironment::drawAll`, VA `0x00537648`, reads the driver pointer at `+0x1a8`. When present, it compares the driver's current extent with saved root bounds and updates the stored bounds when they differ. It then uses the embedded root at `this+8`:

1. If the driver extent changed, it calls root vtable slot `+0x0c`, mapped by the `CGUIEnvironment` secondary `IGUIElement` vtable to `IGUIElement::updateAbsolutePosition`. With a null driver or unchanged extent, this slot is skipped.
2. If the pointer at environment offset `+0x168` is non-null, it passes that pointer to root slot `+0x64`, mapped to `IGUIElement::bringToFront`.
3. It calls root slot `+0x20`, mapped to `IGUIElement::draw`.
4. It obtains the timer value and dispatches `CGUIEnvironment::OnPostRender(unsigned int)` through the primary environment vtable at slot `+0x10c`.

The base `IGUIElement::draw`, VA `0x00534eb8`, checks the visibility byte at element offset `+0x98`. For a visible element, it walks the embedded child list in forward order and invokes each child's draw slot (`vtable+0x20`). Concrete widgets can override that virtual, so this proves the root-to-child draw dispatch, not the implementation or pixel output of every widget.

The copied `CGUIEnvironment` vtable group is VA `0x0096cdc8`, size `496`, SHA-256 `20c0b078bacc979f9b9f2bb16937b0bc1669185858906ed87383c42fd144dcf9`; the `IGUIElement` base vtable group is VA `0x0096cb98`, size `208`, SHA-256 `c914f93e0f57f5b0bb5e37ddcc7cb3232f2daaafead6dc9bfda82bc9bc44dd29`. The exact slot words used above are listed in [reference/gui-vtable-observation.txt](reference/gui-vtable-observation.txt). Both vtable groups map through PT_LOAD segment 2, not the code segment.

## Scope limits

Selected generic widget drawing, bitmap-font/sprite dispatch, skin callbacks, and the static 2D-to-GLES submission route are documented in [rendering/ANALYSIS.md](rendering/ANALYSIS.md). The separate [TrueType trace](ttf/ANALYSIS.md) follows font face loading, lazy glyph rasterization, per-glyph texture caching, and drawing. Game-specific HUD/menu classes, GUI XML/skin serialization, font selection by game screens, and runtime driver/display behavior remain open. This package does not recreate the full original C++ class layout or intrusive-reference ABI. All offsets and behavior statements are tied to the analyzed APK ELF; the repository evidence does not establish that this APK is a pristine studio build.
