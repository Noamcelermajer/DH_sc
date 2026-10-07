# Recovered image payloads and BRES path references

## Scope and method

This is an asset-backed inventory of the recovered cache at `work/cache-recovery/extracted/com.gameloft.android.GAND.GloftD2SS/files` (5,839 regular files) and the image-library records in its 2,901 BRES files. Detection uses payload bytes and parsed headers, not suffix alone. The complete per-file and per-reference results are in [`corpus-census.json`](corpus-census.json).

The scan checks the exact `BTEXpvr\0` wrapper and embedded PVR v2 tag/header, PNG signature/IHDR, JPEG SOI, DDS signature, BMP `BM`, the native ATC tag at byte offset 4 (`0x8c92` or `0x8c93`), and structurally plausible TGA headers. TGA has no fixed magic, so the eight TGA32 rows are header candidates cross-checked against the existing focused [TGA cache census](../loaders/content-selection/corpus-tga-census.json). The source APK and ELF identities match the existing texture analysis: APK SHA-256 `32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`; ARM ELF SHA-256 `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`.

## Content census

| Payload identified by bytes | Count | Details from this cache |
| --- | ---: | --- |
| BTEX-wrapped PVR v2 | 234 | All have `.tga` suffixes. Every header declares a 52-byte PVR header, one surface, `num_mipmaps = 0`, twiddled bit `0x0200`, no mip flag `0x0100`, and a file length equal to wrapper + header + declared data bytes. 217 are PVR type `0x19` with 4 in the header bpp field; 17 are type `0x18` with 2. Dimensions are 64² (22), 128² (72), 256² (20), 512² (40), and 1024² (80). |
| PNG | 121 | All are `.png` files under `files/res`. All parsed IHDR headers report 8-bit depth: color type 6 (truecolor with alpha) for 111, color type 2 (truecolor) for 10. This is header evidence, not a full PNG decode. |
| Standard TGA32 | 8 | All are `.tga`; uncompressed type 2, color-map type 0, no ID field, 32-bit pixels. Seven have descriptor `0x08` and a 26-byte TGA footer; one has descriptor `0x28` and no trailing bytes. Their full names and dimensions are in the linked TGA census. |
| Raw, unwrapped PVR v2 | 0 | No `PVR!` tag at raw-file header offset 44. |
| JPEG / DDS / BMP / ATC | 0 each | No JPEG SOI, `DDS `, `BM`, or native ATC probe tag was found. |

The wrapped PVR format split and alpha flag map to the engine format IDs already recorded in the [PVR mapping](../README.md#original-pixel-type-mapping): type `0x18` selects 24/25, and type `0x19` selects 26/27; header bit `0x8000` selects the alternate ID. This corpus contains engine format 25 for all 17 type-`0x18` images, and formats 26 (141 files) and 27 (76 files) for type `0x19`. Thus its compressed PVR content is 2-bpp or 4-bpp PVRTC-family data, with no other PVR type observed.

## BRES image-path cross-reference

Across 3,662 BRES image-library records, each record's `+0x08` pointer field has a BRES fixup to a bounded string. The strings comprise 3,660 `.tga` rows and two `.psd` rows, with 291 distinct strings. Normalizing the observed `q:/data/iphone/`, `q:/data/old/`, and `data/` roots and comparing the full relative path case-insensitively (without basename matching) gives:

- 3,437 record rows map to 178 distinct recovered files; all mapped files are BTEX/PVR payloads despite their `.tga` names.
- Those rows map to PVR type `0x19` 3,410 times and type `0x18` 27 times.
- 225 rows across 107 distinct path strings have no exact file in the recovered cache.
- No BRES image-table path string maps to the eight TGA32 assets or the 121 PNG assets.

This proves that the BRES image records contain path-shaped strings whose normalized full paths match those recovered PVR files. The [texture runtime-link trace](../../engine-materials/texture-runtime-link/ANALYSIS.md) now statically establishes that `CResFactory::getTexture` reads `SImage+0x08` and passes it into the texture implementation, and that ordinary material sampler image indices resolve to these image rows. The path-normalization/cache-key rules and whether a particular matched file is loaded and drawn in a live frame remain unverified. The material-to-image runtime edge is no longer inferred from names alone; see the linked trace for its limits.

## PNG strings outside the image table

The separate [relocation-target census](png-path-census.json) visits every BRES fixup target in all 2,901 cached `.bdae` files. All 2,901 pass the header and fixup-table checks (143,565,008 total bytes; source-file index SHA-256 `12882f3d999c362f5c05a680a0edce9fe1b29a73e9e6d5a1b313c1bf4e726def`); the scan covers 2,577,206 BRES fixup entries and finds zero null-terminated printable ASCII strings ending in `.png`. The [reproducible scanner](tools/census_bres_png_paths.py) records its scope and does not modify the corpus.

Combined with the image-library result above, this establishes that the recovered BRES corpus has no `.png` path in either its image-table rows or its relocated pointer-target strings. It does not search inline character arrays or APK code/resource tables, and it does not establish that the PNG files are never opened by platform/UI code or at runtime.

## Decoder and conversion implications

1. **Highest-confidence asset need: wrapped PVR loading.** The 3,437 exact BRES path matches make the PVR/BTEX header and texture-data route the principal image path supported by this corpus. The native loader can retain compressed format data and the GLES update path has a compressed upload route; when source and destination format IDs match, the common converter copies encoded blocks. The engine also has a reachable CPU PVRTC decode path for formats 24–27. The cache does not show which platform/texture capability branch is used at runtime, so both the compressed transfer path and the conditional converter matter for a faithful engine reconstruction. See the [loader path](../loaders/ANALYSIS.md), [PVR transfer/conversion trace](../ANALYSIS.md), and [PVRTC trace](../pvrtc/ANALYSIS.md).

2. **Narrow TGA requirement for the eight standalone assets.** If these files are passed through the engine texture manager, its extension fallback selects TGA after content probes fail. The observed TGA32 path reads type-2 pixel bytes as engine format 13, then uses the same-format copy path and descriptor-based row reversal. The existing [TGA32 port](../tga/README.md) covers exactly the observed subset. Their absence from BRES image paths leaves their particular runtime consumer unproven.

3. **PNG support is present, but this corpus does not tie it to BRES images.** The native PNG loader uses a content probe and a CPU image decode route. The 121 `files/res` PNGs may be consumed by a resource/platform path outside the BRES image table; no such link was established by this census.

4. **No asset-backed need was found for JPEG, DDS, ATC, or BMP decoding.** Their native loaders remain part of the engine, but this recovered cache has no matching payload bytes. This is scoped to the recovered extraction and does not rule out files absent from it or runtime-generated input.

The texture paths imply PVR encoded-block transfer plus a conditional PVRTC conversion path, TGA format-13 same-format copying with optional row reversal, and PNG CPU decoding if those platform resources enter the texture manager. The scan does not justify porting the full BMP/JPEG/DDS/ATC decoders or every pixel-format conversion branch solely for the available cache.

No builds or tests were run for this audit. The census is static byte/header and BRES-table evidence; it is not a runtime texture-use trace.
