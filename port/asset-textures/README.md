# PVR and BTEX texture metadata checkpoint

This is a CPU-only, borrowed-view parser for the game's legacy PVR v2 header and its optional eight-byte `BTEXpvr\0` prefix. It validates the header and whole-file payload length, reports the engine pixel-format mapping, and describes checked byte ranges for cube faces and mip levels. It does not decode pixels or recreate texture/GPU ownership. The public API is new host C++, not the original ARM32 class ABI.

The source routines are `readPVRHeader` at `0x006058a4` and `CImageLoaderPVR::loadTextureHeader` at `0x00605b10`. Selected exact ARM listings, the original whole-library/APK hash assumptions, and function-byte hashes are recorded in [original-functions.json](original-functions.json) and [reference/original-functions.asm](reference/original-functions.asm). The engine-side transfer/conversion path, including the conditional PVRTC decompressor call, is traced in [ANALYSIS.md](ANALYSIS.md) with exact APK-backed ranges in [reference/texture-load-path.asm](reference/texture-load-path.asm). The sibling [texture lifetime note](lifetime/ANALYSIS.md) traces the manager cache, intrusive references, CPU backing release, and GL-name deletion. A separate [conversion-dispatch checkpoint](conversion/ANALYSIS.md) maps the common PFDTable gates, same-format copy path, packed-class dispatcher, and bounded failures. The [PVRTC call-path checkpoint](pvrtc/ANALYSIS.md) links the target trace to a bounded decoder source port; its limits and lack of runtime validation are explicit.

## API

`dh2_pvr_open(&view, bytes, length)` accepts a raw PVR file or a file whose first eight bytes are exactly `BTEXpvr\0`. The returned view borrows `bytes`; keep the complete input alive and unchanged while using it. The parser reads the 52-byte legacy header as little-endian words and checks the header-size field, `PVR!` tag, dimensions, required complete mip chain, cubemap surface count, and the exact aggregate data length. Unknown pixel types still produce a structural view with `FormatStatus::unsupported_pixel_type`.

`dh2_pvr_mip_range(&view, face, mip, &range)` returns an absolute file offset and encoded byte count. For a cubemap, the observed generic loader processes faces outside mip levels, and the PVR `dataLength` check treats that field as the byte count for one face. For a volume, each mip range includes the depth at that mip. Non-cube images require `face == 0`. If the pixel type is unknown, arithmetic overflows, or a computed range exceeds the declared payload, the function returns an error.

`view.modeled_data_length_matches` reports whether the mapped PFDTable sizing model sums to the PVR `dataLength` for one image/face. The original loader validates total file length against the header field but does not compare the PFDTable-derived per-mip total in `loadTextureHeader`. A false value therefore records a model discrepancy and does not by itself make `dh2_pvr_open` fail. A range still has to fit inside the declared payload to be returned.

## Original pixel-type mapping

The numbers in the second column are recovered engine `E_PIXEL_FORMAT` enum values. Names are deliberately omitted because this checkpoint does not establish all semantic names from declarations. `A` means the original loader selects an alpha variant when flag `0x8000` is set.

| PVR low-byte type | Engine format | Notes |
| ---: | ---: | --- |
| `0x00` | 6 | Header loader mapping |
| `0x01` | 8 | Also in `loadImage` CPU switch |
| `0x02` | 5 | Header loader mapping |
| `0x04` | 10 | Header loader mapping |
| `0x05` | 13 | Header loader mapping |
| `0x10` | 7 | Also in `loadImage` CPU switch |
| `0x11` | 9 | Also in `loadImage` CPU switch |
| `0x12` | 14 | Also in `loadImage` CPU switch |
| `0x13` | 5 | Also in `loadImage` CPU switch |
| `0x15` | 10 | Also in `loadImage` CPU switch |
| `0x16` | 0 | Also in `loadImage` CPU switch |
| `0x17` | 4 | Also in `loadImage` CPU switch |
| `0x18` | 24 / 25 | Alpha variant; also in `loadImage` CPU switch |
| `0x19` | 26 / 27 | Alpha variant; also in `loadImage` CPU switch |
| `0x1a` | 13 | Header loader mapping |
| `0x20` | 17 / 18 | Alpha variant |
| `0x21`, `0x22` | 19 | Header loader mapping |
| `0x23`, `0x24` | 20 | Header loader mapping |
| `0x2a` | 16 | Header loader mapping |
| `0x39` | 2 | Header loader mapping |
| `0x3b` | 1 | Header loader mapping |
| `0x50` | 31 | Header loader mapping |
| `0x53` | 30 | Header loader mapping |
| `0x56` | 29 | Header loader mapping |

Some raw types map to the same engine format (`0x02` and `0x13` both map to 5; `0x04` and `0x15` to 10; `0x05`, `0x1a` to 13; `0x07`, `0x16` to 0; and `0x08`, `0x17` to 4). Other PVR low-byte values are rejected by the original texture-header loader. `dh2_pvr_open` preserves them as structurally inspectable headers, but range sizing returns `unsupported_format`.

The narrower original `CImageLoaderPVR::loadImage` switch accepts only types `{0x01, 0x10, 0x11, 0x12, 0x13, 0x15, 0x16, 0x17, 0x18, 0x19}`. `dh2_pvr_load_image_supported` reports this CPU-image switch separately from the broader texture-header map. The checkpoint does not port that function's actual pixel conversion.

The [loader dispatch and GLES boundary note](loaders/ANALYSIS.md) traces built-in image-loader registration, content-first probing with extension fallback, the direct texture-data path, texture-owned CPU backing, and compressed versus ordinary GLES upload calls. The accompanying [cache census](loaders/content-selection/ANALYSIS.md) explains why most cache files named `.tga` are BTEX/PVR by content. A bounded source port for the eight actual 32-bit TGA images in that cache is documented in [tga/README.md](tga/README.md); it is not a general TGA decoder.

The focused [BMP loader audit](bmp/ANALYSIS.md) records the native two-byte signature probe, `.bmp`/`.BMP` extension fallback, 54-byte header path, supported compression branches, row alignment and conversion handoff. The recovered cache has no `.bmp` files or `BM` signatures, so no asset-specific BMP port is included.

The content-based [asset usage census](asset-usage/ANALYSIS.md) finds 234 BTEX/PVR wrappers, 121 PNGs, and eight TGA32 images. Its BRES path join covers 3,437 image-record rows, 184 normalized path strings, and 178 recovered files; it explicitly does not establish runtime consumption or material-to-image links.

For mapped formats, the copied PFDTable values cover linear and block-sized pitch calculations. When the header has the twiddled bit `0x0200`, the original header loader accepts the format only if that PFDTable row has feature bit `0x08`. The parser exposes this rejection as `twiddled_not_supported_by_original_loader`; its byte-size estimate does not implement twiddled addressing.

## Byte-size model

The copied sizing model follows `computePitch` (`0x005edaec`), `computeSizeInBytes` (`0x005edb48`, `0x005edbb8`), and the mip-size helpers (`0x005edbcc`, `0x005edbec`):

- Linear pitch is `(bits_per_pixel * width) >> 3`.
- Block pitch is `bytes_per_block * ceil(width / block_width)`.
- Rows use `height` for block height 1, otherwise `ceil(height / block_height)`.
- Size is rows times pitch, raised to the table's minimum size if needed. A volume multiplies the 2D level size by its mip depth.
- Mip dimensions shift right by the level and clamp to at least 1.
- The original data-loading loop at `0x00607a64` iterates cube face outside mip level. `getSourceStep` at `0x00607898` supplies the level byte count.

This is a range model over encoded bytes, not an image decoder. The PFDTable row fields are copied for mapped output formats; their interpretations as block width/height and bytes-per-block are inferred from the table offsets and sizing routines. The copied engine enum numbers, alpha-variant decisions, and exact flag-bit behavior are observed from the original assembly.

## Scope and limits

- Header flags `0x0100`, `0x0200`, `0x1000`, `0x4000`, and `0x8000` are reported using inferred labels for mipmaps, twiddling, cubemap, volume, and alpha-variant selection. The source evidence records their branch behavior; names are not recovered declarations.
- Header `bpp` and channel masks are preserved but not cross-validated against the mapped enum. The original header loader maps by the low flag byte and does not use these fields for that mapping.
- A combined cube-plus-volume header can pass the original aggregate-size and header checks. This API retains its metadata but returns `unsupported_layout` for mip ranges because the surface/depth ordering is unresolved.
- The implementation does not decompress formats, decode texels, swap channel masks, normalize alpha, flip rows, infer image orientation, upload GL resources, or model reference counting/GPU ownership.
- PVR extension/content dispatch and the final GL/backend upload are outside this module. The original CPU transfer/conversion path is traced in [ANALYSIS.md](ANALYSIS.md); accepting `BTEXpvr\0` in this parser does not prove every original dispatch path recognizes a wrapped file.
- The copied helper uses checked 64-bit arithmetic and rejects zero image dimensions/zero volume depth for safe range construction. These safety checks may be stricter than the original loader on malformed headers.

No tests or builds were added or run for this checkpoint.
