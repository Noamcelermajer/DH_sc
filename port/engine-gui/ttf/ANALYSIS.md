# TrueType font raster and draw trace

## Evidence

This supplement follows the engine's `glitch::gui::CGUITTFace`, `CGUITTFont`, and `CGUITTGlyph` symbols in the APK-matched ELF. The APK SHA-256 is `32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`; the ELF SHA-256 is `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`. [`ttf-functions.json`](ttf-functions.json) records 18 exact ARM ranges, file offsets, sizes, and SHA-256 values. [`reference/ttf-engine-path.asm`](reference/ttf-engine-path.asm) contains the matching address-bounded disassembly, including literal-pool words inside those ranges. Every range maps through executable PT_LOAD 1 (`p_offset=0`, `p_vaddr=0`).

## Face loading and cache

`CGUITTLibrary` construction calls `FT_Init_FreeType`; its destructor calls `FT_Done_FreeType`. `CGUITTFace` holds a reference to this shared library object and stores the resulting `FT_Face` at object offset `+8`. The face destructor calls `FT_Done_Face` and releases the shared library reference.

There are two face-load routes:

- `CGUITTFace::load(char const*)` calls `FT_New_Face` with the path and face index zero.
- `CGUITTFace::load(IReadFile*)` calls the file's buffer and size accessors, then calls `FT_New_Memory_Face` with the returned pointer, byte count, and face index zero. The `IReadFile` buffer is borrowed by the FreeType memory-face API. This function does not retain the file object; the backing-buffer lifetime for this route is unresolved.

Both `CGUIEnvironment::getTTFont` overloads lowercase ASCII A–Z in a temporary file-name key, binary-search face/font records, and create a `CGUITTFace` on a face-cache miss. The path overload loads by path; the read-file overload obtains the file name and loads the memory-backed face. A missing font entry allocates `CGUITTFont`, passes the environment's video driver to its constructor, and invokes `attach` with the face and requested unsigned value. The disassembly establishes name normalization and those calls; it does not fully recover the persistent cache-record schema.

`CGUITTFont::attach` retains the face, reads the FreeType face's glyph count, and sizes two `CGUITTGlyph` arrays to that count. Each element is 0x58 bytes and starts with its cached flag clear. The font's `setBorder` method fills a secondary glyph array with a scaled border amount and the four color bytes, which enables the optional second raster variant.

## Lazy glyph rasterization and texture cache

`CGUITTFont::getGlyphByChar(wchar_t)` calls `FT_Get_Char_Index`. Index zero returns without a glyph. Otherwise it addresses the primary glyph record at `font+0x0c + (index-1)*0x58` and calls `CGUITTGlyph::cache` only when that record's cached byte at `+8` is clear. If the corresponding secondary record at `font+0x18` has a nonzero border amount at glyph offset `+0x50`, it lazily creates that variant as well.

`CGUITTGlyph::cache` sets the face pixel size, loads the requested FreeType glyph, and calls `FT_Render_Glyph` for the outline-format route. The optional bordered route owns and emboldens the FreeType bitmap with `FT_GlyphSlot_Own_Bitmap` and `FT_Bitmap_Embolden`. The function then converts bitmap data into engine image buffers and calls `CTextureManager::createImageFromData` with numeric `E_PIXEL_FORMAT` values 8 or 12. It registers the resulting named image through `CTextureManager::addTexture`; one route also calls `makeColorKeyTexture` with the configured color. The two glyph texture references live in the glyph record at `+0x44` and `+0x48`.

The recovered cache creates a texture for an individual glyph bitmap and stores that texture on its glyph record. No shared packed glyph atlas or atlas-coordinate allocator appears in these traced routines. `CGUITTFont::drawInTexture` is a separate text-to-target path: it accepts an `ITexture` reference and iterates glyphs through the draw helpers while handling driver state. It does not establish a packed glyph atlas.

## GUI draw and cleanup

`CGUIStaticText::draw` calls the selected `IGUIFont::draw` virtual; the call site and bitmap-font counterpart are documented in the [generic widget trace](../rendering/ANALYSIS.md). The TrueType wide-character draw implementation resolves each character with `getGlyphByChar`, advances by the glyph width, and calls `CGUITTFont::drawGlyph`. That helper sends the cached glyph texture and destination rectangle to `C2DDriver::draw2DImage`, joining the engine's existing 2D-to-GLES path.

`CGUITTFont::clearGlyphs` calls `CGUITTGlyph::Free` for each record in its three owned glyph arrays and erases the entries. `Free` frees its CPU bitmap and removes both texture references through `CTextureManager::removeTexture`. The font destructor releases its face and video-driver references, clears glyphs, and destroys its glyph vectors. This supplements the GUI widget trace; it does not assign serialized skin fields or identify the font selected by a particular Dungeon Hunter screen.

## Limits

- The memory-backed face route's buffer owner and lifetime after `getTTFont(IReadFile*, ...)` returns remain unknown.
- Exact cache record field names, glyph naming-string format, texture-format enum names, border color channel semantics, and font-selection behavior in game screens are not established.
- The recovered routines show one texture per glyph record rather than an atlas packing route. Device rendering, GL context state, and presentation remain static-analysis inferences from the downstream helper chain.

No builds or tests were run.
