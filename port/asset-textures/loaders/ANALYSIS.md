# Texture loader dispatch and GPU upload boundary

## Evidence identity and range verification

This trace uses `lib/armeabi-v7a/libDungeonHunter2.so` from the supplied APK. APK SHA-256: `32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`. ELF SHA-256: `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`. The ranges in [`original-functions.json`](original-functions.json) map through the PT_LOAD with `p_vaddr=0`, `p_offset=0`, and `p_filesz=0x955130`. Each listed function was disassembled over its full symbol extent and compared byte-for-byte with the APK ELF. Exact ARM bytes are in [`reference/original-functions.asm`](reference/original-functions.asm).

## Loader selection and decode paths

`CTextureManager` registers loaders in this order: BMP, JPG, TGA, ATC, PNG, DDS, PVR. `getImageLoader` first iterates that list and calls each loader's file-content probe. It saves the `IReadFile` cursor before probing and seeks back to that saved position after each probe. The first positive content probe selects the loader. Only when every content probe fails does it iterate the list again and call filename-extension predicates. The function body at `0x005e8144` and the loader vtables establish these calls; the relevant PVR content probe is at `0x006057e0`. This ordering means a matching file signature takes precedence over its suffix.

The recovered cache contains 242 files whose names end in `.tga`. A byte census found 234 whose first eight bytes are `BTEXpvr\0`, while eight are ordinary uncompressed true-color TGA files (image type 2, no color map, 32 bits per pixel). The PVR probe recognizes the `BTEXpvr` prefix. Seven ordinary TGA files are selected by the TGA loader's `TRUEVISION-XFILE.\0` content probe; only the footerless `splash_final_jp.tga` reaches TGA through the extension pass. None of the 234 PVR wrappers has that TGA footer signature. See [`content-selection/ANALYSIS.md`](content-selection/ANALYSIS.md) and its [cache census](content-selection/corpus-tga-census.json). This establishes the dispatch for the observed filename/header combinations, not that every file was loaded during a game session.

`loadTextureFromFile` checks `hasTextureLoadInterface`. The base `IImageLoader` returns false; ATC, DDS, and PVR override it. Those loaders take the texture-specific path: parse an `STextureDesc`, create an `ITexture`, and load data into it. Other built-in loaders use `loadImage` and the manager image-to-texture path. BMP, JPG, PNG, and TGA have CPU image decode entrypoints; ATC and DDS also expose `loadImage` in addition to their texture-specific route.

ATC header parsing maps observed tags `0x8c92` and `0x8c93` to engine format integers 21 and 22. DDS maps FourCC byte strings `DXT1` through `DXT5`, `PTC2`, and `PTC4` to engine-format integers 18, 19, 20, 25, and 27; the exact table is in the manifest. These names are only the printable FourCC bytes observed in the comparisons. PVR formats and pixel conversion remain in the sibling [PVR trace](../ANALYSIS.md), [conversion trace](../conversion/ANALYSIS.md), and [PVRTC trace](../pvrtc/ANALYSIS.md).

## CPU texture storage to GLES upload

The common `IImageLoader::loadData` route obtains writable storage with `ITexture::map`, reads each surface/mip, calls format conversion when required, and unmaps. If backing does not exist, `ITexture::map` allocates it and passes the pointer to `ITexture::setData`, which records the pointer and ownership state. Map returns views into that texture-owned allocation by face and mip. Unmap closes the map state; changed-surface state remains for later renderer upload. This identifies the immediate CPU-buffer owner as the texture object, but does not recover every outer cache/reference owner.

`CCommonGLDriver::createTextureImpl` validates the descriptor and format, then constructs the texture object. GL name creation is lazy: `CTexture::bindImpl` calls `glGenTextures`, binds the name, and initiates a pending update. `CTexture::updateData` walks changed faces and levels and reads the stored CPU buffer. Its PFDTable compressed flag selects `glCompressedTexImage2D` / `glCompressedTexSubImage2D` for compressed data, or `glTexImage2D` / `glTexSubImage2D` otherwise. The imported GLES names corroborate these call targets. The boundary is therefore CPU decode or compressed-byte storage first, followed by a later bind/update upload.

## Limits

This is a static call-path reconstruction plus a read-only census of the recovered cache. It does not implement the BMP/JPEG/PNG/TGA/ATC/DDS/PVR decoders as a whole, prove which game paths request every asset, establish the complete cache/destruction lifecycle, or validate GLES format support on the target device. The separate TGA source port covers only the cache's eight observed uncompressed 32-bit files and does not claim a complete TGA implementation. ATC/DDS integers are observed mappings only. No builds or tests were run.
