# Image `+0x04` consumer search boundary

## Result

No native consumer of the BRES `SImage+0x04` string was established in the image lookup and cache route examined here. The engine's string-based image lookup compares the requested name with the first word of each 20-byte image row (`SImage+0x00`) and advances by `0x14`. The scene-node image cache also compares against a cached `CImage` name initialized from `SImage+0x00`.

This is a bounded negative result. It does not prove that no function in the library ever reads a type-erased pointer at row offset `+0x04`; it identifies no such use in the symbol-backed image lookup/cache path or the selected BRES resource lifecycle functions below. The field's corpus-wide dot-to-underscore value pattern still has no confirmed native meaning.

## Native lookup and cache route

`CColladaDatabase::getImage(char const*)` at `0x0061b154` scans the image count and table base from the Collada database, compares `*(char**)row` with the query, and steps to the next row by `0x14`. The ARM listing makes the tested field explicit: `ldr r0, [r4]` at `0x0061b18c`; the only row advance is `add r4, r4, #0x14` at `0x0061b184`. There is no row `+4` load in the function.

`CColladaDatabase::constructImage(char const*, CRootSceneNode*)` at `0x0061b1b4` calls that lookup and passes its returned `SImage*` to the record-based image constructor at `0x0060fc70`. The generic `CColladaDatabase::find(char const*, unsigned int&)` route uses the image-type mask `0x04` and calls the same string lookup at `0x0061c010`; it does not implement another image-key comparison.

`CRootSceneNode::getImage(char const*)` at `0x0065b648` first checks its cached `CImage` objects. It loads the cached name at `CImage+8` and compares that pointer with the query (`0x0065b668–0x0065b674`). On a cache miss it calls `constructImage(char const*)` at `0x0061b1b4`. `CImage::CImage` at `0x0060e1d4` initializes `CImage+8` from `*SImage`, which is `SImage+0x00`; its other image-row field read is `SImage+0x10`. Thus this cache route reinforces the primary-key interpretation and supplies no `+0x04` use.

The indexed `CColladaDatabase::getImage(int)` at `0x0060e3c8` computes `image_table_base + index * 0x14`; it returns a row pointer without reading its fields.

## Resource path checked for row-relative reads

The selected BRES resource functions operate on the image row as follows:

- `CResFileManager::postLoadProcess` (`0x00658c90`) tests `SImage+0x0c`, passes the row to the configured texture factory, and stores a successful result at `SImage+0x10`.
- `CResFactory::getTexture` (`0x00659704`) conditionally passes `SImage+0x00` under its manager mode flag and always passes `SImage+0x08` to the texture implementation.
- `CResFile::releaseObjects` (`0x00658744`) releases the `SImage+0x10` object while stepping image records by `0x14`.

These paths identify reads of `+0x00`, `+0x08`, `+0x0c`, and `+0x10`; they provide no read of `+0x04`. The material route reaches the runtime texture through `SImage+0x10`, as documented in [`../texture-runtime-link/ANALYSIS.md`](../texture-runtime-link/ANALYSIS.md).

## Byte-backed ranges

Source APK: `Dungeon-Hunter-2-HD-v1-0-2.apk`, SHA-256 `32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`. Native member: `lib/armeabi-v7a/libDungeonHunter2.so`, SHA-256 `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`. Hashes below cover the exact file-backed function byte ranges at the stated ELF virtual addresses.

| Function | ELF VA / size | Function-byte SHA-256 |
| --- | ---: | --- |
| `CColladaDatabase::getImage(int) const` | `0x0060e3c8` / 28 | `540b23c65793cd8e76cfb435f3aea0861dd204feddd91e71688704d4475192d3` |
| `CImage::CImage(CColladaDatabase const&, SImage&)` | `0x0060e1d4` / 184 | `24ddbff1a27f7bc5b5a421d2a395937f4dc3a40cc144edcea12363ff0af86381` |
| `CColladaDatabase::constructImage(SImage*, CRootSceneNode*) const` | `0x0060fc70` / 80 | `9187fdaa6c44a85b7492a3e2aea2b25a0acf0704e266b2b4593e95e0c86c1ef4` |
| `CColladaDatabase::getImage(char const*) const` | `0x0061b154` / 96 | `8fbda017549f358cf54961d00ad0d7c1ffcb61965a5d0b1be2f19c7b9e19f1a4` |
| `CColladaDatabase::constructImage(char const*, CRootSceneNode*) const` | `0x0061b1b4` / 56 | `668d0e8aba5ecd0401dbcdf83ef0108252ca623037cfb13707251e32902f8d81` |
| `CColladaDatabase::find(char const*, unsigned int&) const` | `0x0061bf58` / 368 | `6d37e1daa2e2449c8beaec0ed97c7a8f329fa0bace2a4d9958e7645bb6986368` |
| `CResFile::releaseObjects` | `0x00658744` / 744 | `3037b41ceaf71e9cbf6758eb93eb6f519cb6aa32d919d928a186b980b8b1539d` |
| `CResFileManager::postLoadProcess` | `0x00658c90` / 2,064 | `e85095e743755648b2ca68999ddaca7fa1155ab335ee435b585ad2b7a1b13ad2` |
| `CResFactory::getTexture` | `0x00659704` / 100 | `84d25cb9863e2573bff254b129a726177a7386e65a9601c45d0fe6a71c0a086f` |
| `CRootSceneNode::getImage(char const*)` | `0x0065b648` / 236 | `409abc22194ff4669dda59323ed6b5d2eedd88bf68467ab0833487f0e438daf2` |

## Search limits

The review followed the function-index entries and ARM listings for the explicit `SImage` signatures, both `CColladaDatabase::getImage` overloads, both image-construction overloads, `CRootSceneNode::getImage`, generic database lookup, and the three selected BRES resource functions. It did not perform whole-program pointer-provenance analysis for every untyped or indirect access in `libDungeonHunter2.so`, nor did it inspect other ABIs or runtime-generated code. Therefore the supported conclusion is “no `+0x04` consumer found in the examined native routes,” not a proof that no such consumer exists anywhere.

No build, test, or device execution was performed.
