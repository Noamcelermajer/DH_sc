# BRES image-record field boundary

This note separates what the native consumers read from what the recovered BRES corpus merely stores. The source is the supplied APK's `lib/armeabi-v7a/libDungeonHunter2.so` (SHA-256 `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`). The APK SHA-256 is `32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`.

## Field evidence

| `SImage` offset | Evidence | Supported conclusion | Boundary |
| ---: | --- | --- | --- |
| `+0x00` | The `CImage` constructor reads the row's first word; Collada database key accessors compare record offset zero with a requested string. | Confirmed image-library key. | Does not establish the role of the adjacent string at `+0x04`. |
| `+0x04` | A read-only census of 3,662 image rows in 2,900 valid BRES files found a printable fixup target at this field in every row. In all 3,662 rows, this string is exactly the `+0x00` key with each period replaced by an underscore; there are 377 distinct `+0x04` strings. The bounded [consumer search](key-lookup-search.md) follows the image lookup/cache and selected BRES lifecycle paths and finds reads at `+0x00`, `+0x08`, `+0x0c`, and `+0x10`, but not `+0x04`. | A systematic alternate spelling of the library key is serialized here. | “Lookup alias” is plausible but remains unproven. The search is not whole-program pointer-provenance analysis; keep the field's role unnamed. |
| `+0x08` | `CResFactory::getTexture` at `0x00659704` loads this word from `SImage` and passes it to `getTextureImpl`. All 3,662 corpus rows have a printable fixup here. The asset census matches 3,437 normalized full paths to recovered BTEX/PVR payload files. | Path-shaped string supplied to the texture retrieval path. | Namespace resolution, normalization performed by code, cache-key behavior, load success, and active rendering remain unverified. |
| `+0x10` | `CResFileManager::postLoadProcess` writes a non-null texture-factory result here; `CImage::CImage` retains it. | Runtime `ITexture*` slot. The serialized corpus initializes this word to zero without a fixup. | A non-null runtime texture is conditional on the configured factory returning one. |

The focused ARM evidence is byte-backed by these ranges:

| Native function | VA / size | SHA-256 |
| --- | --- | --- |
| `CResFileManager::postLoadProcess` | `0x00658c90` / 2,064 | `e85095e743755648b2ca68999ddaca7fa1155ab335ee435b585ad2b7a1b13ad2` |
| `CResFactory::getTexture` | `0x00659704` / 100 | `84d25cb9863e2573bff254b129a726177a7386e65a9601c45d0fe6a71c0a086f` |
| `CImage::CImage` | `0x0060e1d4` / 184 | `24ddbff1a27f7bc5b5a421d2a395937f4dc3a40cc144edcea12363ff0af86381` |
| `CColladaDatabase::constructImage` | `0x0060fc70` / 80 | `9187fdaa6c44a85b7492a3e2aea2b25a0acf0704e266b2b4593e95e0c86c1ef4` |

The `getTexture` wrapper also conditionally reads `SImage+0x00` when its manager mode byte is nonzero. It always reads `SImage+0x08`. That makes the `+0x00` key a mode-dependent factory input and `+0x08` the path-shaped input on the traced route; it does not identify the native consumer of `+0x04`.

## Reproduction and example

Run `python census_image_fields.py <extracted-files-data-root> [output.json]` to reproduce the image-field census using the adjacent read-only BRES parser. The committed [`image-field-census.json`](image-field-census.json) is its output for the recovered cache.

Example row from `3d/animateddecors/cin_king_gothicus_01.bdae`:

| Offset | Value |
| ---: | --- |
| `+0x00` | `Map__391__char_king.tga_` |
| `+0x04` | `Map__391__char_king_tga_` |
| `+0x08` | `q:/data/iphone/3d/textures/char_king.tga` |

The underscore spelling is consistent with a normalized or alternate key but is not proof that a second lookup occurs. The texture route and corpus path matching are described in the [texture runtime-link trace](../texture-runtime-link/ANALYSIS.md) and [asset texture census](../../asset-textures/asset-usage/ANALYSIS.md). No build, device run, or rendering test was part of this static analysis.
