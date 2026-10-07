# PVRTC decoder source port

## What the port covers

`decode_pvrtc.cpp` is a bounded scalar C++ port of the engine's PVRTC1 decode path for complete, power-of-two word grids at or above the PVRTC minimum: two words in each dimension. `mode == 0` selects 4-bpp words of 4×4 pixels; any nonzero mode selects 2-bpp words of 8×4 pixels. The APK call site observed here passes only 0 or 1. The port checks compressed input and four-byte output extents before reading or writing them.

The decoder reads each 8-byte little-endian word as a 32-bit modulation field followed by a 32-bit endpoint field. It implements Morton-style `TwiddleUV` addressing, opaque/translucent A and B endpoint expansion, 2-bpp checkerboard/H/V modulation, 4-bpp selector and punch-through modulation, the fixed-point color interpolation used by the engine helper, and weighted A/B output. This port stores channels in R, G, B, A order, following the reference's channel labels. For the APK, the call-path evidence establishes four output bytes per pixel but leaves engine format 14's channel semantics and byte order unresolved.

## APK evidence

The APK's native call path is recorded in [the existing ARM listing](../reference/pvrtc-call-path.asm); [original-functions.json](original-functions.json) in this directory records the exact target ranges and hashes. The parent manifest is [../original-functions.json](../original-functions.json).

| Behavior represented in the port | APK evidence |
| --- | --- |
| `mode` chooses 8- or 4-pixel word width; the loader maps formats 24/25 to 2-bpp and 26/27 to 4-bpp | `PVRTCDecompress` at `0x0069f774..0x0069f79c`; caller at `0x005fd904..0x005fd928` |
| Endpoint bitfields and channel expansion | `PVRTCDecompress` at `0x0069faac..0x0069fb90` |
| Four-word lookup and Morton addressing | `TwiddleUV` at `0x0069f6f4..0x0069f768`; calls from `PVRTCDecompress` at `0x0069f9b8..0x0069fa34` |
| Modulation unpack, 2-bpp modes, and 4-bpp selector paths | `PVRTCDecompress` at `0x0069fb94..0x0069fc24` and `0x0069fe04..0x0069ffcc` |
| Endpoint interpolation and A/B blend | calls to `InterpolateColours` at `0x0069fc84` and `0x0069fca8`; interpolation helper at `0x0069f570..0x0069f6f4`; blend and byte stores at `0x0069fd44..0x0069fdcc` |

All listed addresses are ELF VAs and file offsets for this APK because the executable `PT_LOAD` starts at zero. The decoder range is `0x0069f768..0x0069ffe4` (end-exclusive), 2,172 bytes, SHA-256 `ffd425909204ffb18696405f325e67f1e67d2698ed92599b7c0d4c7b3278c3b8`.

## Reference comparison and limits

The endpoint, modulation, interpolation, word-neighborhood, and output stages were cross-checked with Imagination Technologies' [Native_SDK PVRTDecompress.cpp](https://github.com/powervr-graphics/Native_SDK/blob/master/framework/PVRCore/texture/PVRTDecompress.cpp). The reference is a comparison aid; the embedded APK bytes and their ARM disassembly are the target truth. The code includes the required MIT notice in [LICENSE-NOTICE.md](LICENSE-NOTICE.md).

This source port deliberately rejects dimensions below the two-word minimum and dimensions that are not power-of-two complete word grids. The native routine has additional small-mip and edge behavior; this bounded port does not claim to reproduce it. The port also stops at the decoder's four-byte intermediate and does not implement the engine's later pixel-format conversion or pitch handling.

No build, test vectors, runtime calls, or image comparisons were performed. The source is a statically cross-checked reconstruction, not a runtime-validated drop-in replacement.
