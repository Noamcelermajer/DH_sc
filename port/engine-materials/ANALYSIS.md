# Effect and material consumer trace

This note records the bounded field evidence from the original ARM consumers and the recovered BRES corpus. It supplements the borrowed-view API in `README.md`; it does not define renderer or GPU behavior.

## Source provenance

Original ARM listings are under `../../../recovery/dh2-reconstruction/recovered/native/assembly/libDungeonHunter2.so/`:

- `glitch_collada_CColladaDatabase-f458595c81f3-001.asm`
- `glitch_collada_CImage-b1bd2e56eaab-001.asm`
- `glitch_collada_CColladaFactory-db06bc565b1a-001.asm`
- `glitch_collada_SEffectList-455354988589-001.asm`

The selected blocks are copied into [`reference/consumer-functions.asm`](reference/consumer-functions.asm), with a machine-readable index in [`reference/consumer-functions.json`](reference/consumer-functions.json). The source ELF is the APK member `lib/armeabi-v7a/libDungeonHunter2.so` (15,938,284 bytes; full-file SHA-256 `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`). The function digest below is SHA-256 over exactly `size` bytes starting at the listed ELF virtual address. Each copied instruction sequence was checked byte-for-byte against that range.

| Consumer claim | Original ARM listing and 1-based inclusive lines | ELF VA and size | Function bytes SHA-256 |
| --- | --- | ---: | --- |
| Image table record passed to wrapper | `glitch_collada_CColladaDatabase-f458595c81f3-001.asm:1016-1041` | `0x0060fc70`, 80 bytes | `9187fdaa6c44a85b7492a3e2aea2b25a0acf0704e266b2b4593e95e0c86c1ef4` |
| `CImage` reads `SImage` fields | `glitch_collada_CImage-b1bd2e56eaab-001.asm:5-55` | `0x0060e1d4`, 184 bytes | `24ddbff1a27f7bc5b5a421d2a395937f4dc3a40cc144edcea12363ff0af86381` |
| Material factory field reads | `glitch_collada_CColladaFactory-db06bc565b1a-001.asm:739-805` | `0x006323d0`, 244 bytes | `dc3090658f74e4ff70633a92030aab1b739e3b836e2ed704418ca6af4aed0b51` |
| Effect construction dispatch | `glitch_collada_CColladaDatabase-f458595c81f3-001.asm:316-351` | `0x0060e570`, 116 bytes | `0d5e3824c56a4c9056fd4658a409ff70bbc101b5077f74043248fe00ba6c5680` |
| `SEffectList` retains effect pointer | `glitch_collada_SEffectList-455354988589-001.asm:5-50` | `0x006319d8`, 164 bytes | `8d99a67a34b516ce7d46844975e5b8f69d3b62ecb3a05ee67a5bfb40314a7496` |
| Effect overload of `createMaterialRenderer` | `glitch_collada_CColladaFactory-db06bc565b1a-001.asm:5-12` | `0x003506a4`, 8 bytes | `6dcd5e75586fe6683156c0d559d4827b73bd48d501fa5781a1c6099aacd7c877` |
| `getAdditionalEffects` | `glitch_collada_CColladaFactory-db06bc565b1a-001.asm:27-33` | `0x0062ff04`, 4 bytes | `379bec29dccd0a93c94826144d7ef6e42fab64ef195a3b8313a16926f66f388f` |

Addresses are the virtual addresses printed in the original ARM listings. The recovered BRES observation covers 2,901 files in the matching game resource corpus; counts below are record counts, not unique values.

## Confirmed field uses

| Record | Field | Evidence | Supported interpretation |
| --- | ---: | --- | --- |
| image / effect / material | `+0x00` | `CColladaDatabase` name accessors compare the word at record offset zero with the requested string; see `0x0061b154`, `0x0061b0ac`, and `0x0061ac28`. | Confirmed string key for the library lookup. |
| image | `+0x04` | The [image-record boundary audit](image-record-boundary/ANALYSIS.md) finds that all 3,662 corpus rows store a printable string equal to the `+0x00` key with periods replaced by underscores; its [bounded consumer search](image-record-boundary/key-lookup-search.md) finds no use in the selected image lookup/cache or BRES lifecycle routes. | Corpus-derived alternate spelling; whole-program indirect use and a second-lookup role remain unproven. |
| image | `+0x08` | `CResFactory::getTexture` at `0x00659704` loads this field and passes it to `getTextureImpl`; the [asset path census](../asset-textures/asset-usage/ANALYSIS.md) joins normalized full paths to recovered PVR payloads. | Path-shaped texture retrieval input. Namespace normalization, cache-key rules, and row-by-row load success remain unresolved. |
| image | `+0x10` | `CResFileManager::postLoadProcess` stores a non-null resource-factory return at `[SImage+0x10]`; `constructImage` at `0x0060fc70` then passes the row to `CImage::CImage` at `0x0060e1d4`, whose constructor retains that field. | Runtime `ITexture*` slot populated during BRES post-load when the configured factory returns a texture. The serialized corpus starts this word at zero without a fixup. |
| material | `+0x08` | `CColladaFactory::createMaterial` at `0x006323d0` reads `[SMaterial+0x08]` and forwards the word to a virtual factory call. In the corpus, 475 material records have a fixup here; those fixups include printable string targets. | Optional serialized pointer in records that carry the fixup. Its semantic role is unknown. |
| material | `+0x0c` | The same function reads `[SMaterial+0x0c]`, adds one byte to the loaded address, and forwards it to the virtual factory call. All 4,329 material records have a fixup at this offset, with printable string targets in the corpus. | Serialized C-string pointer with a one-byte prefix skipped at this call site. The string protocol and role remain unconfirmed. |
| material | `+0x18` | The same function reads `[SMaterial+0x18]` and forwards the 32-bit word to the virtual factory call. The corpus scan found no fixup at this offset. | Opaque 32-bit value; no stronger type or meaning is established. |

The material signature identifies the stack argument as `SMaterial*`. The callee then reads offsets `+0x08`, `+0x0c`, and `+0x18` directly from that record. Its dispatch target receives these values together; the assembly does not name them as a texture, effect, sampler, parameter, or GPU state.

## Runtime image and sampler binding

The [texture runtime-link trace](texture-runtime-link/ANALYSIS.md) closes the serialized sampler-index route: `postLoadProcess` converts ordinary type-11-to-14 parameter image indices to `SImage*` by the observed 20-byte stride, fills `SImage+0x10` through the configured texture factory, and `collada::createMaterial` reads the resulting `ITexture*` into the typed material parameter. The factory-lifecycle supplement confirms that the manager constructor installs the statically initialized `CResFactory::getTexture` implementation and that the binary Collada scene-loader route reaches it; this proves the APK's default code path, not a live-session load result.

The one `0xffffffff` sampler value takes a distinct manager-pointer branch. The [sampler-sentinel audit](sampler-sentinel-audit/ANALYSIS.md) traces that pointer through `collada::createMaterial` to the manager's `+0x10` resource-map endpoint, which is then treated as a texture parameter. Its intended runtime meaning and renderer handling remain unresolved. Exact path normalization and which assets reach active rendering are also open.

## Effect path and unresolved fields

`CColladaDatabase::constructEffect` at `0x0060e570` passes the `SEffect*` into an indirect factory call. The body does not load a nonzero field from the effect record. `SEffectList::SEffectList` at `0x006319d8` retains an `SEffect*` in a list entry without reading its fields. The small `CColladaFactory::createMaterialRenderer(..., SEffect*, ...)` body at `0x003506a4` returns null, and `getAdditionalEffects` at `0x0062ff04` returns immediately. These bodies do not establish effect-record field meanings; downstream virtual implementations remain a trace boundary.

Corpus fixup observations for 3,855 effect records:

| Offset | Records with fixup | Target observation |
| ---: | ---: | --- |
| `+0x00` | 3,855 | Confirmed library key. |
| `+0x04` | 3,855 | Printable string candidates, including profile-like names. |
| `+0x0c`, `+0x14`, `+0x24`, `+0x2c` | 3,855 each | Non-text targets in the scan. |
| `+0x1c`, `+0x34` | 3,319 each | Non-text targets in the scan. |
| `+0x40`, `+0x48`, `+0x50`, `+0x5c`, `+0x64`, `+0x6c` | 4 each | Rare profile-record fixups; roles unknown. |

The field positions above are corpus facts only. No recovered consumer in this trace reads them with enough evidence to assign a record-level meaning.

## Remaining corpus candidates

- Image records: 3,662 total. All have fixups at `+0x00`, `+0x04`, and `+0x08`. The `+0x04` target is consistently the dot-to-underscore spelling of the `+0x00` key, but no selected native consumer establishes its purpose. `+0x08` is read by `CResFactory::getTexture` and forwarded to the texture implementation; runtime path resolution and cache semantics remain open.
- Material records: 4,329 total. All have fixups at `+0x00`, `+0x04`, and `+0x0c`; 475 have one at `+0x08`, and 3,861 have one at `+0x14`. The corpus includes string targets at `+0x04`, `+0x08`, and `+0x0c`, and non-text targets at `+0x14`. The `+0x04` and `+0x14` roles are unresolved.
- A printable string, a matching library key, or a pointer fixup alone does not establish an image, effect, sampler, shader, or material relationship.

## Reconstruction boundary

The typed view may safely retain the confirmed library key, the image `+0x10` reference relationship, and the material call-site observations above. It should keep all other record words and fixups raw. The unresolved downstream virtual call and renderer paths are required before assigning material/effect field roles or implementing rendering behavior.
