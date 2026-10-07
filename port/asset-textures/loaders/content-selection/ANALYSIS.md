# Content-first image-loader selection

## Verified behavior

`CTextureManager::getImageLoader` (`0x005e8144`, 284 bytes) asks each registered loader to inspect the file contents before checking the filename suffix. The loader vtable's format-probe method is called first. The function saves the `IReadFile` cursor and restores it after each probe so one loader's look-ahead does not move the next loader's input. The first positive probe returns that loader. If every probe fails, the second loop calls the extension predicate on each registered loader and returns the first match.

`CImageLoaderPVR::isALoadableFileFormat` (`0x006057e0`, 196 bytes) reads a 52-byte header and accepts the eight-byte `BTEXpvr` prefix (the comparison is eight bytes, including the trailing NUL in the recovered cache). The main texture analysis maps the subsequent PVR header/data route. `CImageLoaderTGA::isALoadableFileFormat` has its own content probe, but TGA has no fixed magic field; files not recognized by any content probe can still be selected by the `.tga` extension predicate.

## Recovered-cache cross-check

The recovered cache prefix contains 242 `.tga` entries, all individually matching the cache manifest. Exactly 234 begin with `BTEXpvr\0`; the other eight have a standard TGA header with image type 2, no color map, 32 bits per pixel, and descriptor `0x08` or `0x28`. Their dimensions, names, byte lengths, and header bytes are listed in [`corpus-tga-census.json`](corpus-tga-census.json). A representative wrapper is `files/data/3d/textures/anim_bubule_swamp.tga`, 524,348 bytes, with `BTEXpvr\0` at byte zero.

The TGA content probe at `0x00606778` (size 244, SHA-256 `6efa4758faa20e163bf18eebef70dce1e15a549ef5145b5e24c0d9f9515285a5`) checks for the `TRUEVISION-XFILE.\0` footer signature at the start of the final 26-byte footer. Seven of the eight standard TGA files have that signature and match the TGA content probe; `splash_final_jp.tga` has no footer and reaches TGA through the extension pass. None of the 234 `BTEXpvr\0` wrappers ends in the TGA footer signature, so the TGA content probe does not take them. The PVR content probe recognizes their eight-byte prefix. This corrects the earlier claim that all eight standard TGA files were extension-selected.

The census correlates filename and bytes in the recovered cache; it does not prove runtime access for every entry. The dispatch result follows from the original selector code for an input with the observed filename and prefix. It does not infer gameplay use from a filename.

## Provenance

The exact `getImageLoader` listing and hashes are in the parent [`original-functions.json`](../original-functions.json) and [`reference/original-functions.asm`](../reference/original-functions.asm). This supplement adds the full PVR content-probe range at `0x006057e0`, size 196, SHA-256 `4531cf92fb52a47ab1c29440dcb2353a08369d021c19bd41f12c68f7f8aa4e15`. The address maps to the file at the same offset in the verified ELF PT_LOAD. No build or test was run.
