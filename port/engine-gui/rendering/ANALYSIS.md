# Generic GUI widget rendering trace

## Evidence identity and range verification

This note extends the environment/root draw dispatch in [the GUI environment trace](../ANALYSIS.md). It follows selected engine classes in the APK's `glitch::gui` namespace; it does not trace Dungeon Hunter HUD or menu construction.

Source APK SHA-256: `32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`. Source ELF `lib/armeabi-v7a/libDungeonHunter2.so`: 15,938,284 bytes, SHA-256 `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`. The function ranges use PT_LOAD 1 (`p_offset=0, p_vaddr=0`); the vtable data ranges use PT_LOAD 2 (`p_offset=0x955130, p_vaddr=0x956130`).

[`widget-rendering-functions.json`](widget-rendering-functions.json) records 19 exact function ranges totaling 10,840 bytes and six vtable data ranges totaling 1,424 bytes, with ELF virtual address, size, file offset, PT_LOAD index, and SHA-256. [`reference/widget-rendering-path.asm`](reference/widget-rendering-path.asm) contains the corresponding ARM function bodies and literal pools. Every copied byte was compared against the mapped range in the supplied APK. [`reference/widget-vtable-observations.json`](reference/widget-vtable-observations.json) contains the selected virtual-function entries and their raw words.

## From environment draw to concrete widgets

The earlier environment trace establishes that `CGUIEnvironment::drawAll` calls the embedded root element's draw virtual. Visible base `IGUIElement::draw` walks children and dispatches each child's draw virtual. This note follows four generic overrides:

| Engine widget | Observed draw route |
| --- | --- |
| `CGUIImage::draw` at `0x00540da0` (396 bytes) | Reads the stored environment at element offset `+0x150`, gets skin and video driver through the environment vtable, then sends the non-null object read at `+0x15c` to `C2DDriver::draw2DImage` (wrapper at `0x0059fa80`, whose recovered signature accepts an intrusive texture pointer). The no-image branch gets a skin color and calls the skin's `draw2DRectangle` method. The raw member names and asset source are not inferred from these uses. |
| `CGUIButton::draw` at `0x006a7224` (1,064 bytes) | Retrieves the environment services and selects skin button-pane callbacks. Its virtual calls at `0x006a75c8` and `0x006a75e8` resolve to `draw3DButtonPaneStandard` and `draw3DButtonPanePressed`; its image path also reaches `C2DDriver::draw2DImage`. This proves generic engine button drawing, while individual state-byte meanings and game assignments stay opaque. |
| `CGUIStaticText::draw` at `0x00551888` (1,452 bytes) | Builds the text/layout arguments, optionally sends a background rectangle through the 2D helper, and calls the selected font's `IGUIFont::draw` virtual at `0x00551a48`. Its wrapping branch calls `breakText` at `0x00551204`. |
| `CGUIWindow::draw` at `0x0056008c` (516 bytes) | Gets a skin color and dispatches `draw3DWindowBackground` through the skin vtable, then follows its child draw path. |

The `CGUIEnvironment` vtable entries identify the service calls used by these methods: object-vptr displacements `+0x20` and `+0x38` resolve to `getVideoDriver` and `getSkin`. The `CGUISkin` vtable observations tie `+0x10`, `+0x28`, `+0x40`, `+0x44`, and `+0x4c` to `getColor`, `getFont`, the standard/pressed button panes, and the window background. The skin callbacks named “3D” in the API are implemented in this binary using repeated 2D rectangle calls; the name alone does not mean they submit 3D geometry.

## Bitmap font and sprite path

`CGUIStaticText` calls through the font interface, so the concrete path depends on the selected font. One engine implementation, `CGUIFont::draw(wchar_t const*, ...)` at `0x0053e038` (440 bytes), checks its sprite-bank pointer and dispatches each glyph through the sprite-bank draw virtual. The selected `CGUISpriteBank::draw2DSprite` implementation at `0x0054f930` (440 bytes) computes sprite/frame and destination data, then calls the 2D image wrapper at `0x0059fa80`. Thus the bitmap-font route joins the same image/2D-renderer path as `CGUIImage`.

The separate TrueType face, glyph raster/cache, per-glyph texture, and draw routes are traced in [the TTF supplement](../ttf/ANALYSIS.md). No packed glyph atlas is established by those routines.

## 2D helper to GLES submission

The checked call chain is:

1. `CGUIImage`, `CGUIButton`, `CGUISpriteBank`, and skin routines call the `C2DDriver` image or rectangle helpers. The helpers build 2D rectangle/color data and invoke the driver's 2D-rectangle virtual.
2. The `COpenGLES2Driver` vtable resolves that call to `CCommonGLDriver::draw2DRectangle` at `0x005b2244` (548 bytes). That method calls `CCommonGLDriverBase::drawQuads` at `0x006ddff0` (504 bytes).
3. `drawQuads` submits a vertex stream through the driver's virtual draw slot. The catalog maps it to `IVideoDriver::draw` at `0x005adfa8`; that method dispatches to `CCommonGLDriver::drawImpl` at `0x005b8bc8`.
4. `drawImpl` calls `detail::drawPrimitives` at `0x005b09c8`, which reaches the imported GLES `glDrawArrays` or `glDrawElements` calls for the regular primitive paths.

The final renderer routines and GLES imports are also documented in [the renderer trace](../../engine-rendering/ANALYSIS.md) and its [import list](../../engine-rendering/reference/gl-imports.json). This is a static call path; no widget was rendered on a device in this analysis. The Android surface trace records a no-op driver swap hook and leaves actual framework/EGL presentation outside the recovered native path ([surface trace](../../engine-platform/surface/ANALYSIS.md)).

## Limits

- These are generic engine widgets. The Dungeon Hunter HUD, menus, game-side screen classes, and runtime widget construction were not included.
- The code establishes runtime skin/font/image calls but not the serialized skin schema, custom skin values, or the mapping from game resources to particular widget members.
- The bitmap `CGUIFont` path is traced through sprite drawing, and the separate TrueType implementation is traced in [the TTF supplement](../ttf/ANALYSIS.md). Which font a particular game screen selects remains open.
- The helper-to-renderer call path is mapped, but exact per-image UV, clip, texture-state, and lifetime semantics are not assigned beyond the arguments visible at each call site.
- The native GLES submission path is identified statically. Driver execution, current context state, framebuffer contents, and display presentation were not runtime-verified.

No builds or tests were run.

