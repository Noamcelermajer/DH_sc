# Material values, effect selection, and vertex attribute maps

## Scope and provenance

This supplemental trace connects selected `SMaterial` and `SInstanceMaterial` fields to renderer construction and runtime material/attribute storage. It uses ARM instructions from the exact APK ELF, not names inferred only from strings or fixups. The complete listings and hashes are in [`reference/material-record-path.asm`](reference/material-record-path.asm) and [`record-path-functions.json`](record-path-functions.json). The manifest identifies the APK and ELF hashes, file-backed PT_LOAD ranges, and a supporting CColladaFactory vtable word.

This trace complements [`../ANALYSIS.md`](../ANALYSIS.md), [`../shader-selection/ANALYSIS.md`](../shader-selection/ANALYSIS.md), and [`../bindings/ANALYSIS.md`](../bindings/ANALYSIS.md). Those files already cover table roots/strides, effect pass strings to shader creation, parameter-name binding, and sampler commit. Here the new edge is from the material records into those runtime paths.

## Material renderer selection fields

`CColladaFactory::createMaterial` (`0x006323d0`, 244 bytes) receives an `SMaterial*`. The instructions at `0x00632420`–`0x00632450` load its `+0x0c`, `+0x18`, and `+0x08` words, add one to the `+0x0c` target, place these values in the stack argument positions for a factory virtual call, and dispatch through the factory vptr at displacement `+0x1c`.

That call target is resolved by the recovered vtable. The `CColladaFactory` vtable symbol is `0x0097b7d8`; after the two 32-bit ABI header words, object slot `+0x1c` is the word at `0x0097b7fc`, whose value is `0x00636c8c`. The latter is the `createMaterialRenderer(database, driver, SEffect*, char const*, char const*, root)` overload. The following argument correspondence is therefore direct:

| `SMaterial` field | Call-site treatment | Supported runtime use |
| --- | --- | --- |
| `+0x18` | Passed in the overload's `SEffect*` argument position. | For a non-null value, the recovered factory method seeds an `SEffectList` with it and delegates into the existing effect/profile renderer selection path. The BRES corpus scan found no fixup at this offset, so the original on-disk pointer representation or null/default convention remains unresolved. |
| `+0x0c` | Loads the word, then advances it by one byte before passing it as the first string argument. | The base `getEffectName` implementation (`0x00631ac4`) copies the first string argument unchanged into a runtime string. That string is used as the renderer collection lookup key and is forwarded to `collada::createMaterialRenderer`. Thus the bytes after the one-byte prefix act as the renderer name in this implementation; the prefix meaning is unknown. |
| `+0x08` | Passed as the second `char const*` argument to `getEffectName`. | The recovered base method does not read that argument. No field role is assigned here; a different factory override could use it. |

The vtable word proves the target in the recovered `CColladaFactory` table, not the dynamic type of every factory object used at runtime. The downstream effect-list-to-GLES2 shader/pass path is documented in the linked shader-selection analysis; this trace does not rename profile bits or assign serialized `SEffect` member meanings.

## Material parameter array and texture values

The generic `collada::createMaterial` consumer (`0x00631ce8`, 1,768 bytes) receives `SMaterial&` and directly reads `+0x10` as the loop bound and `+0x14` as the entry-array base. It advances by 24 bytes per element. This establishes the runtime traversal shape:

- Each 24-byte entry's word at `+0x00` is passed to `CMaterialRenderer::getParameterID`, so the serialized entry name is matched against a parameter on the selected renderer.
- If that lookup misses, the entry word at `+0x08` is compared with numeric value `20`. On that case only, the entry's `+0x14` object supplies a string at its own `+0x04`; `getTechniqueID` resolves it, and the result is stored as the runtime `CMaterial` technique byte at `+0x08`. This code does not establish the source enum's symbolic name.
- If lookup succeeds, the selected renderer parameter descriptor's byte at `+0x06` controls a dispatch. Numeric descriptor codes `12`–`15` each reach a texture branch. Those branches read the material entry's `+0x14` value array, load an object pointer for each requested element, then load that object’s `+0x10` word and call the typed `setParameter<intrusive_ptr<ITexture>>` overload at `0x005cd324`.

This closes a concrete material-to-sampler storage edge. The existing [sampler analysis](../../engine-shaders/samplers/ANALYSIS.md) shows that the same runtime `CMaterial` texture values are selected by reflected sampler bindings, sent to texture-unit binding, and uploaded with `glUniform1i`. The parameter-name link also joins the existing [reflected-parameter binding trace](../bindings/ANALYSIS.md). These static paths do not prove that any particular recovered asset reaches a given shader or active sampler at runtime.

The value-array objects' concrete serialized type is not named in the consumer body. The new [post-load trace](../texture-runtime-link/ANALYSIS.md) resolves the observed ordinary type-11-to-14 numeric image-index path: it writes an `SImage*` into the value cell, loads that row's texture into `SImage+0x10`, and `createMaterial` reads the resulting `ITexture*`. This is verified for the indexed path, including 4,788 in-range corpus indices; the lone `0xffffffff` branch stores a manager pointer and remains unexplained. Do not generalize the row interpretation to all value-array types or treat the special branch as an ordinary image.

## Instance-material attributes

`CColladaFactory::createMaterialVertexAttributeMap` (`0x00634520`, 1,152 bytes) receives an `SInstanceMaterial*`, mesh, and `CMaterial`. It queries the selected renderer's profile value and chooses one of two inline map descriptors at `SInstanceMaterial +0x1c` or `+0x24` for the observed mask branches. The chosen descriptor begins with a count and an array pointer. Its array entries advance by 12 bytes:

- Entry word `+0x00` is passed to `CMaterialRenderer::getTechniqueID`.
- Entry `+0x04` is used as an attribute count; `+0x08` is the base of 12-byte per-attribute entries.
- For each per-attribute entry, words `+0x04` and `+0x08` are passed with the mesh's `CVertexStreams` to `CVertexAttributeMap::set(..., false)`. The resulting map is inserted into `CMaterialVertexAttributeMap` under the renderer technique ID and the per-technique attribute ordinal. The entry's first word is not read in this function, so its role remains unknown.

The downstream mesh/rendering trace shows mesh buffers carrying these attribute maps into `IVideoDriver::setMaterial` and GLES vertex-array setup. `CVertexStreams::setupArrays` then translates stream records and the active shader-attribute map to `glVertexAttribPointer`. See [`engine-rendering/mesh-ownership/ANALYSIS.md`](../../engine-rendering/mesh-ownership/ANALYSIS.md) and [`engine-rendering/buffers/ANALYSIS.md`](../../engine-rendering/buffers/ANALYSIS.md). The exact serialized meaning of the three-word attribute entries and the shader-side attribute-name relationship are still open.

## Confidence and remaining gaps

High confidence: direct field offsets, argument order, vtable-word target, 24-byte material-parameter stride, runtime technique setter, numeric renderer-type dispatch, ITexture typed setter, and `SInstanceMaterial` profile-map traversal. These come from the function signatures and the copied instruction bytes recorded in the manifest.

Unresolved: the meaning of `SMaterial +0x08` beyond its ignored base-method argument; prefix byte at `+0x0c`; how non-fixup `+0x18` values become usable `SEffect*` arguments; the serialized type/origin of nested texture-array elements; the symbolic name of numeric special type `20`; full `SEffect`/pass member ownership; and per-attribute-entry field semantics. No asset-corpus pointer joins, device traces, builds, or tests were performed for this supplemental note.
