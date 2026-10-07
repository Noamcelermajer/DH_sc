# Engine rendering path evidence

This package traces the recovered effect/material path, PVR/BTEX texture path, GLES2 texture operations, and mesh draw submission. It is a static analysis note and adds no runtime implementation.

## Binary identity and provenance

The source is APK member `lib/armeabi-v7a/libDungeonHunter2.so`, 15,938,284 bytes, SHA-256 `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`. The APK SHA-256 is `32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`.

[`original-functions.json`](original-functions.json) records 25 original ELF ranges, their exact VAs, sizes, source listings, and range SHA-256 values. [`reference/original-functions.asm`](reference/original-functions.asm) contains the selected original ARM listing blocks. The copied byte rows were compared byte-for-byte with the corresponding bytes in the APK ELF PT_LOAD mapping; all 25 ranges match. Hashes cover exactly `range_size` bytes starting at each ELF VA. The manifest records the APK and ELF hash assumptions and file offsets.

[`reference/vtable-observations.json`](reference/vtable-observations.json) captures the selected `COpenGLES2Driver` vtable entries. Its offsets are measured from the vtable symbol; the two 32-bit header words precede the address point used by an object vptr. [`reference/gl-imports.json`](reference/gl-imports.json) records the imported GLES names used below. Names assigned by recovered pseudocode are treated as decompiler annotations, not source; the original ARM bytes are the primary evidence.

## Material and effect to renderer

`CColladaFactory::createMaterialRenderer(..., SEffect*, ...)` at `0x00636c8c` builds an `SEffectList` and delegates to `collada::createMaterialRenderer` at `0x00636b6c`. The generic function calls a virtual method on that list, examines the returned bits, and routes the observed `mask & 0x18` case to `createMaterialRendererForProfile<SProfileGLES2Traits>` at `0x006361e8`. The template body consumes effect-list/profile data, invokes the GLES2 shader trait, and assembles a `CMaterialRenderer` through the renderer manager.

This establishes a runtime effect-list-to-GLES2-renderer path. It does not assign meanings to the raw serialized `SEffect` fields or to the tested profile bits. For record layout limits and corpus observations, see [`../engine-materials/ANALYSIS.md`](../engine-materials/ANALYSIS.md). In particular, the runtime renderer trace does not make the serialized effect words typed fields.

The added [render-pass state trace](pass-state/ANALYSIS.md) follows the pass state block through material-renderer construction and commit to the GLES state helpers. It maps blend factors/equations/colors, cull and depth selectors, polygon offset, sample coverage, stencil, front-face, depth write, line width, and alpha-to-coverage fields to GLES calls and lookup values. Exact active-pass use, full state lifecycle, and device rendering remain unverified.

## PVR and BTEX to texture storage

`CTextureManager::loadTextureFromFile` at `0x005ecba4` asks `getImageLoader` at `0x005e8144` for a loader and branches on its texture-loading interface. The PVR loader calls `readPVRHeader` at `0x006058a4`; `CImageLoaderPVR::loadTextureHeader` at `0x00605b10` maps the checked header fields to an `STextureDesc`. `CTextureManager` then calls `IVideoDriver::createTexture` at `0x005aa5f8`.

For data, `CImageLoaderPVR::loadTextureData` at `0x0060623c` reads the PVR header again, computes the data region after the 52-byte header and optional eight-byte BTEX prefix, then calls `IImageLoader::loadData` at `0x006083d0`. The generic loader obtains a writable `ITexture` map, loads the encoded levels into it, and unmaps/releases the view. The exact header, mapped engine-format values, supported pixel types, mip and face range model, and parser limits are recorded in [`../asset-textures/README.md`](../asset-textures/README.md) and [`../asset-textures/pvr.cpp`](../asset-textures/pvr.cpp).

The driver-facing `createTexture` validates/normalizes the descriptor and dispatches through the `COpenGLES2Driver` vtable to inherited `CCommonGLDriver::createTextureImpl` (`0x005b5f6c`). That implementation checks driver support and creates the concrete GLES texture object. `CTexture::bindImpl` (`0x005b5610`) lazily calls `glGenTextures`, stores the returned name at `this + 0x54`, binds it, and requests a texture update. `CTexture::update` (`0x005b044c`) branches to `CTexture::updateData` (`0x005afff0`) for dirty content. `updateData` walks faces/mip levels and selects full image calls (`glTexImage2D` / `glCompressedTexImage2D`) or subimage calls (`glTexSubImage2D` / `glCompressedTexSubImage2D`); the recovered body also uses pixel-store alignment and checks `glGetError`. These call names are corroborated by the library dynamic import table in `gl-imports.json`.

The `CTexture` destructor at `0x005b2a30` conditionally calls `unbindImpl` at `0x005b28dc`. That routine clears matching driver texture-unit cache entries, calls `glDeleteTextures` on the stored name, clears the name, and marks data dirty. Thus the local object/handle actions are visible, while the context and broader ownership contract remain bounded as described below.

## Material state and draw submission

`IVideoDriver::setMaterial` at `0x005ad368` reaches `setMaterialInternal` at `0x005aa51c`. On a material change, `setMaterialInternal` makes a virtual call through the driver vptr displacement `+0x208`; the vtable catalog resolves this to inherited `CCommonGLDriver::commitCurrentMaterial` (vtable-symbol offset `+0x210`). The inherited `commitCurrentMaterial` wrapper at `0x005b7594` calls `commitCurrentMaterialImpl` at `0x005b74e8`, which applies the active render-pass state, switches the GLES program with `glUseProgram` when needed, and commits material parameters. `commitMaterialRenderer` at `0x005b739c` is another inherited renderer-state entry in the same vtable; the entry is recorded without assuming it is called by every `setMaterial` path.

`IVideoDriver::drawMeshBuffer` at `0x0035ebd0` calls the driver's vptr displacement `+0x58`, catalog entry `+0x60`, resolving to the mesh-buffer overload of `IVideoDriver::draw` at `0x005adfa8`. That overload dispatches through vptr displacement `+0x200`, catalog entry `+0x208`, to inherited `CCommonGLDriver::drawImpl` at `0x005b8bc8`. `drawImpl` commits pass parameters, sets up vertex arrays, and calls `detail::drawPrimitives` at `0x005b09c8`. That helper reaches imported `glDrawArrays` or `glDrawElements` for the regular unindexed/indexed cases, with special handling for soft polygon modes and quads.

| ARM call site | Object vptr displacement | Vtable catalog offset | Resolved target |
| --- | ---: | ---: | --- |
| `IVideoDriver::drawMeshBuffer` | `+0x58` | `+0x60` | `IVideoDriver::draw(..., CMeshBuffer const&)` |
| `IVideoDriver::draw(..., CMeshBuffer const&)` | `+0x200` | `+0x208` | inherited `CCommonGLDriver::drawImpl` |
| `IVideoDriver::createTexture` | `+0x204` | `+0x20c` | inherited `CCommonGLDriver::createTextureImpl` |
| `IVideoDriver::setMaterialInternal` | `+0x208` | `+0x210` | inherited `CCommonGLDriver::commitCurrentMaterial` |
| vtable renderer callback | `+0x20c` | `+0x214` | inherited `CCommonGLDriver::commitMaterialRenderer` |

## Reconstruction boundary

The only pure CPU operation in this path that currently has complete bounded inputs and outputs is the PVR/BTEX header and encoded-byte range view already implemented in `asset-textures`. `IImageLoader::loadData` crosses the runtime `ITexture::map/unmap` ABI, while `createTextureImpl`, texture binding/update, renderer setup, and draw submission all depend on GLES state or engine-owned objects. No additional CPU routine is implemented here.

Still unresolved:

- Exact meanings of serialized `SEffect` fields, profile-mask bit names, and the relationship between resource records and the selected shader source.
- Shader source compilation/linking and all parameter/sampler binding semantics end to end.
- Texture CPU buffer lifetime after the map/unmap operation, any deferred upload scheduling, which thread/context owns each GL call, and behavior across context loss.
- The outer engine manager/cache lifetime and all release paths. The traced `CTexture` stores and deletes a GL name, but this does not establish all references or context shutdown ordering.
- The exact resource-name/extension decision that chooses this PVR loader for every game asset; this note covers the recovered manager-to-loader interface path, not a full gameplay asset audit.

No tests or builds were run for this package.
