# Bounded true-color TGA32 decoder

This standalone source port handles the exact uncompressed TGA subset found in the recovered cache: image type 2, no color map or image ID, 32 bits per pixel, and descriptor `0x08` or `0x28`. It applies the original decoder's observed vertical reversal rule and preserves the source byte order used by engine pixel format 13. It does not label individual channels because the recovered evidence only establishes that the source and destination format IDs are both 13 and therefore follow the same-format copy path.

The original `CImageLoaderTGA::loadImage` accepts 16/24/32-bit images of types 2 and 10. This port is narrower: the cache census contains only eight standard TGA files and all eight are 32-bit uncompressed images. The other 234 `.tga`-suffix files in that cache begin with `BTEXpvr\0` and are content-selected by the PVR loader; see the [loader-selection trace](../loaders/content-selection/ANALYSIS.md).

`decode_type2_32` checks header, dimensions, pixel bounds and caller output capacity. It ignores any trailing footer bytes, as the original loader reads only the pixel payload. The input and output storage must not overlap. The original ARM32 class ABI, allocation behavior, malformed-input behavior, and image-to-texture/GLES path are outside this port.

Exact APK/ELF identities, source addresses, sizes, and hashes are recorded in [`original-functions.json`](original-functions.json). This source was not built or tested in this checkpoint.
