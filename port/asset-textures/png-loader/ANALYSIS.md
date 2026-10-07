# PNG loader: engine policy and libpng boundary

## Evidence identity

This trace uses `lib/armeabi-v7a/libDungeonHunter2.so` from the supplied APK. APK SHA-256: `32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`. ELF SHA-256: `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`. The listed code and data ranges map through the PT_LOAD with `p_vaddr=0`, `p_offset=0`, and `p_filesz=0x955130`; the exact range hashes are in [functions.json](functions.json). [reference/png-loader.asm](reference/png-loader.asm) preserves the byte-addressed disassembly for those functions.

The analysis treats `glitch::video::CImageLoaderPng`, its engine callbacks, `CImage`, the pixel-format table, and texture-manager dispatch as engine code. `png_*` functions and the `png_libpng_ver` object are the embedded libpng support library. The embedded version string identifies libpng `1.2.32`; a nearby zlib string identifies `1.2.3`. Both support libraries reside in this ELF, but their implementation is not engine-specific loader policy.

## Dispatch into PNG loading

`CTextureManager` registers BMP, JPG, TGA, ATC, PNG, DDS, and PVR in that order. `getImageLoader` runs content probes in order, restoring the file cursor after each probe. It uses extension predicates only if every content probe fails. PNG's content probe at `0x00605048` reads eight bytes and calls embedded `png_sig_cmp`; its suffix fallback at `0x00605674` accepts `.png` and `.PNG`. The loader inherits the base `hasTextureLoadInterface()` result of false, so `loadTextureFromFile` uses the image-decoding route for PNG.

The probe and decoder both check the eight-byte signature. The decoder's signature read is through `IReadFile::read` and must return exactly eight bytes; then `png_sig_cmp` must report a match. The dispatch is content-first, so a valid PNG signature selects this loader even when the filename suffix differs.

## Engine callback and embedded error flow

`CImageLoaderPng::loadImage` is `0x006050dc..0x0060564b` (1,392 bytes; SHA-256 `74f43ec786747cef0d149d0f466fbe414260fc1acec680f6689aa2707ede429d`). At the `png_create_read_struct` call, the engine passes the embedded `1.2.32` version string, a null error pointer, `png_cpexcept_error` at `0x0060564c`, and a null warning callback. It then creates the info struct. It installs `user_read_data_fcn` with `png_set_read_fn` and marks the eight already-consumed signature bytes with `png_set_sig_bytes`.

`png_set_read_fn` in the embedded library stores the file context at `png_struct+0x114` and the callback at `png_struct+0x110`. The `.rel.dyn` relocation at `0x00997870` resolves the callback GOT slot to engine address `0x006056d4`. That helper calls the file's virtual `read` method at vtable offset `+0x0c` with the requested buffer and size. A full-length read returns normally; a short read calls embedded `png_error` with the literal `Read Error`.

The embedded `png_read_data` dispatches through `png_struct+0x110`; if no callback is set, it reports an error through `png_error`. `png_error` consults the error callback at `png_struct+0x100`. The engine callback at `0x0060564c` logs the category `PNG FATAL ERROR` at log level 3 and calls imported `longjmp(png_struct, 1)`. `loadImage` calls imported `setjmp` twice on the PNG struct: once before `png_read_info`, and again before `png_read_image` / `png_read_end`. The first recovery covers metadata parsing and setup; the second covers pixel and end-chunk reading.

The loader is responsible for supplying callbacks, handling the longjmp result, and releasing engine allocations. libpng is responsible for PNG chunk parsing, decompression and row reconstruction behind those API calls. The loader does not implement those routines itself.

## Transform registrations and format choice

After `png_read_info`, the engine reads the original IHDR fields and conditionally registers transformations in this order:

| Header condition | Embedded libpng call made by the engine |
| --- | --- |
| Original color type is 3 (palette) | `png_set_palette_to_rgb` |
| Bit depth is below 8 and color type is 0 or 4 | `png_set_gray_1_2_4_to_8` |
| Bit depth is below 8 and color type is neither 0 nor 4 | `png_set_packing` |
| `png_get_valid(..., 0x10)` reports tRNS | `png_set_tRNS_to_alpha` |
| Original bit depth is 16 | `png_set_strip_16` |
| Original color type is 0 or 4 | `png_set_gray_to_rgb` |

It then calls `png_read_update_info` and reads IHDR again. If the updated color type equals 6, the engine constructs `CImage` with pixel-format ID 14; every other updated color type uses ID 10. This is the exact engine decision. The loader does not assign channel names from the integer IDs or add separate gamma, profile, background-color, or alpha-swap transforms in this function.

## `CImage` allocation and row layout

The selected `CImage` constructor at `0x00602110` initializes a 44-byte image object and calls `CImage::initData(true)`. The object fields used in this path are width `+0x10`, height `+0x14`, pitch `+0x18`, byte count `+0x1c`, format `+0x20`, and base pixel pointer `+0x08`. `initData` calls `pixel_format::computePitch(format, width)`, stores the result as pitch, computes `height * pitch` when the byte count is not already set, and allocates the base pixel block.

The PFDTable rows for IDs 10 and 14 are each 40 bytes. Their `bits_per_pixel` fields at row offset `0x16` are 24 and 32, and their packed-type fields at offset `0x24` are 1. `computePitch` takes the `bits_per_pixel * width` path for these rows, then shifts right three bits. Thus the observed pitches are `3 * width` bytes for ID 10 and `4 * width` bytes for ID 14; the allocated image payload is `height * pitch` bytes.

The loader separately allocates a 32-bit row-pointer table of `height * 4` bytes. For each row index `y`, it writes `image->data + y * image->pitch` (`data` at `+0x08`, pitch at `+0x18`) into the table, starting with row zero at the base address and increasing by one pitch. It passes this table to `png_read_image`; this function does not reverse rows. After `png_read_image`, it calls `png_read_end`, destroys the libpng structs, releases the row-pointer table, and returns the image through the engine's intrusive pointer.

## Failure cleanup

The decoder initializes the result to null on early failure. It logs and returns null for a null file, a short signature read, a signature mismatch, read-struct creation failure, or info-struct creation failure. If info creation fails after a read struct exists, it destroys the read struct. A nonzero first `setjmp` result destroys the PNG structs and returns null.

If image-object allocation fails, the loader destroys PNG state and returns null. If row-pointer allocation fails, it releases the pending image and destroys PNG state. A fatal callback during `png_read_info` reaches the first `setjmp` recovery. A fatal callback during `png_read_image` or `png_read_end` reaches the second recovery, which destroys PNG state, deletes the row-pointer table, releases the partially filled image, and leaves the result null. On success, cleanup destroys PNG state and frees only the temporary row table; ownership of the returned pixel buffer remains with `CImage`.

These cleanup branches and calls are byte-backed by `CImageLoaderPng::loadImage`; the libc jump implementation is external to this ELF. The manifest includes the local PLT stub hashes for `setjmp` and `longjmp`, not libc's implementation.

## APK PNG-header census and limits

The read-only census in [corpus/png-header-census.json](corpus/png-header-census.json) covers all 121 `.png` files found under the recovered APK `files/` tree. All have a valid PNG signature and chunk structure through the first IEND. The headers are 8-bit, noninterlaced; 111 use color type 6 and 10 use color type 2; none contains tRNS. This is a header/chunk census only: it does not validate CRCs or decode pixels, and these files may include Android UI resources rather than engine-loaded game textures. It does not prove which files the game requests at runtime.

A broader BRES pointer scan found no `.png` string among the targets of 2,577,206 BRES relocation entries in 2,901 cached `.bdae` files. This only rules out a null-terminated printable `.png` string at those relocated targets; inline string fields, Android resources, and code-side paths are outside that scan. See the [BRES image/path audit](../asset-usage/ANALYSIS.md#png-strings-outside-the-image-table).

For those observed headers, if passed through this loader, type 6 chooses engine format 14 and type 2 chooses format 10; the low-depth, palette, tRNS, and 16-bit branches are not represented in the census. Interlaced PNG behavior is also not established here: this loader does not call an explicit interlace-handling API, and the censused files are noninterlaced.

This trace recovers the engine-owned dispatch, callback, transform selection, storage layout and cleanup. It does not port or reimplement libpng/zlib, prove channel byte order from the engine-format integers, establish runtime asset usage, or verify rendering output on a device. No build or test was run.
