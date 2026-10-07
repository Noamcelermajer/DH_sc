# BMP loader and recovered-cache audit

## Cache evidence

The recovered cache extraction contains 5,839 files. A recursive pass found zero `.bmp` suffixes and zero files whose first two bytes are ASCII `BM`. That signature check matches `CImageLoaderBMP::isALoadableFileFormat`: it reads two bytes and compares the little-endian word with `0x4d42`. The exact counts and scan boundary are in [cache-census.json](cache-census.json).

Therefore the recovered cache does not establish a materially used BMP payload. No host decoder port was added; implementing one of the native loader's broad branches without an observed input would be an ungrounded port.

## Native route

The game registers BMP first in the built-in image-loader list. `CTextureManager::getImageLoader` probes content first, saving and restoring the file position around each probe; after all probes fail, it tries extension predicates. BMP's extension function calls `strstr` for `.bmp` and `.BMP`, so its fallback is a case-limited substring check, not a strict suffix check. The manager routes this loader through the CPU `loadImage` path and then the ordinary image-to-texture path.

The signature probe reads exactly two bytes and matches `BM`. `loadImage` reads a 54-byte header block and repeats the signature check. Its ARM body validates the compression field against values 0 through 3, aligns row lengths to four bytes, has separate run-length decoding paths for compression values 1 and 2, and has a mask/format selection path for value 3. Other branches select engine pixel formats and call the shared `pixel_format::convert` routine. These are control-flow observations from the exact function listing; this note does not assign every DIB-header variant, palette case, orientation rule, or malformed-input behavior.

Since the cache has no BMP sample, the trace does not claim which branches the game uses or which output byte layouts matter to the game. The full function ranges, hashes, and ARM instructions are in [original-functions.json](original-functions.json) and [reference/bmp-loader.asm](reference/bmp-loader.asm). The parent [texture-loader analysis](../loaders/ANALYSIS.md) contains the shared dispatch and image-to-texture call path.

## Limits

The cache census covers the recovered extraction directory recorded in [cache-census.json](cache-census.json), not arbitrary external/user-created files or assets absent from that extraction. No BMP source decoder was written, built, or tested. The loader trace is static analysis of the supplied APK's ARM ELF.
