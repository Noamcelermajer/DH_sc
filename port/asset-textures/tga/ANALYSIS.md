# TGA32 source path and bounded decoder

## Observed original route

The recovered cache has eight standard `.tga` files. Each has image type 2, color-map type 0, pixel depth 32, ID length 0, and descriptor `0x08` or `0x28`; the full list and file sizes are in the [cache census](../loaders/content-selection/corpus-tga-census.json). Seven end immediately after pixel bytes with a 26-byte `TRUEVISION-XFILE.\0` footer; the Japanese splash has no footer.

`CImageLoaderTGA::loadImage` (`0x00606368`, 1,040 bytes) accepts TGA depths 16, 24, or 32 and image types 2 or 10 after rejecting color-map input. Its 32-bit branch sets both conversion format IDs to 13. For image type 2 it reads `width * height * 32 / 8` bytes directly to the image buffer; the optional footer lies after that read and is ignored. The decoder computes the conversion reversal flag from descriptor bit 5 as `((descriptor ^ 0x20) >> 5) & 1`, then calls `pixel_format::convert` with format 13 for source and destination and zero pitches.

Equal source/destination IDs route through `pixel_format::copy` (`0x005ee40c`, 476 bytes). With zero pitches, `copy` calls `computePitch`; when the reversal flag is set, it reverses rows. Its same-buffer branch uses a temporary process buffer, so the original decoder can reverse the image in place. The exact source and conversion listings are linked from [`original-functions.json`](original-functions.json), [`reference/tga32-path.asm`](reference/tga32-path.asm), and the sibling [PFD conversion analysis](../conversion/ANALYSIS.md). No channel-name claim is made: this path preserves bytes through an engine format-13 to format-13 copy.

## Port boundary

[`tga32.hpp`](tga32.hpp) and [`tga32.cpp`](tga32.cpp) implement only the cache-observed case: type 2, 32 bits per pixel, no color map, no image ID, nonzero dimensions, and descriptor exactly `0x08` or `0x28`. The port checks pixel-length arithmetic, truncation and output capacity, allows trailing bytes, applies the observed bit-5 row reversal, and preserves pixel bytes unchanged. It uses a separate output buffer; input/output overlap is unsupported.

The original loader also has RLE type-10 and 16-/24-bit routes, and the general pixel-format conversion family covers more than this subset. Those branches are not implemented here. This source was not built or tested in this checkpoint; it is a bounded reconstruction from the listed branches and cache headers, not an integrated texture loader.
