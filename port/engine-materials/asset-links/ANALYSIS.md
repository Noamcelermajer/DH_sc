# BRES material, effect, and image string joins

## Scope and method

This supplement links recovered BRES records using exact fixup sources, targets, and resolved strings. The read-only scanner [`scan_bres_material_links.py`](scan_bres_material_links.py) parses the recovered `files/data` corpus without pointer relocation and writes the compact evidence summary [`corpus-links.json`](corpus-links.json). The run covered 2,900 valid `.bdae` files. It did not modify the corpus or APK. No new native function range was disassembled; native consumer claims below refer to existing manifests and analyses.

## Material `+0x0c` and effect keys

The corpus has 4,329 material records and 3,854 effect records. Every material `+0x0c` fixup targets a string beginning with `#`. Removing that one byte yields an exact, same-file effect-table key in 3,854 records. These matches are one-to-one: all 3,854 effect keys have one matching material reference. The other 475 material strings are all `Multilight-fx` and do not match an effect key in the same file.

This is an exact serialized name join, not proof that the runtime material resolves to that `SEffect` object. The existing factory trace shows `CColladaFactory::createMaterial` advances the `+0x0c` pointer by one byte and passes it as the renderer-name string. Its `+0x18` argument is pointer-shaped in the consumer, but the corpus has no fixup at material `+0x18`. The runtime origin of that argument remains unresolved. See [`../record-layout/ANALYSIS.md`](../record-layout/ANALYSIS.md).

Concrete same-file example: `3d/animateddecors/candle_flame.bdae`, SHA-256 `7ece047e6cb253036d50260018fd7299ad9835e743ca0fcd4e2d3004ea0269a6`:

- Material record `0x3170`, field `0x317c` (`+0x0c`) fixes up to `0x1048`, whose string is `#ProfileCOMMON_Material__12-fx1302961531_candle_flame`.
- Effect record `0x1df0` has its key fixup at the record start to the same key after `#` is removed.
- The effect record's `+0x14` field at `0x1e04` fixes up to `0x2278`; the word at `0x2278` fixes up to `0x0cd8`, the string `diffuse-sampler`.
- Material parameter row `0x3230` fixes up from its `+0x00` field to that same string target `0x0cd8`.

The final two bullets establish a shared string target in the BRES fixup graph. They do not name the effect field or prove runtime use of that string as a sampler.

## Parameter names and image keys

Of the 3,662 image records, each has fixups at `+0x00`, `+0x04`, and `+0x08` for string data, while every image record's serialized `+0x10` word is zero and has no fixup. The [post-load runtime trace](../texture-runtime-link/ANALYSIS.md) shows that `CResFileManager::postLoadProcess` can populate this slot with a factory-returned `ITexture*`; it also shows material parameter image indices being converted to `SImage*` rows before `createMaterial` reads `+0x10`. The zero corpus values therefore describe the pre-post-load image records, not necessarily the runtime object consumed by a sampler.

There are 193 material parameter rows whose resolved name ends in `-sampler` and whose prefix exactly equals an image key from the same file. This is only a name convention; the runtime binding uses the numeric image index as documented in the [post-load trace](../texture-runtime-link/ANALYSIS.md). Example from `3d/animateddecors/cin_king_gothicus_01.bdae`, SHA-256 `690b9670296a1f7a467afa104988babf7493069dbf6239e88880c603ab35e27d`:

- Material record `0x11688`, field `0x11694`, targets `0x1200`, string `#ProfileCOMMON__8_-_Default-fx1302961534_cin_king_gothicus_01`; the stripped string matches the same-file effect key.
- Material parameter row `0x116ac` has a name fixup to `0x0fd8`, string `Map__391__char_king.tga_-sampler`.
- Image record `0x10c9c` has a key fixup to `0x0ecc`, string `Map__391__char_king.tga_`; its `+0x08` path field fixes up to `0x0f0c`, string `q:/data/iphone/3d/textures/char_king.tga`.
- Removing the literal `-sampler` suffix makes the parameter name equal the image key. No material-parameter value fixup or value-array fixup in the scanned range targets an image table record.

The existing generic `collada::createMaterial` consumer walks 24-byte parameter rows and, for texture-typed renderer parameters, reads a value array and then a `+0x10` word from each array element as an `ITexture` pointer. No fixup sourced from material fields `+0x04`, `+0x08`, `+0x0c`, or `+0x14`, a parameter value target, or the first 64 bytes of a value array directly targets an image table record. The [new post-load trace](../texture-runtime-link/ANALYSIS.md) explains the runtime edge without a pointer fixup: native code converts each ordinary numeric image index into an `SImage*`, loads the texture for that row, and later passes its `+0x10` object to the material. The one `0xffffffff` branch remains unresolved. See [`../record-layout/ANALYSIS.md`](../record-layout/ANALYSIS.md) and [`../../engine-shaders/samplers/ANALYSIS.md`](../../engine-shaders/samplers/ANALYSIS.md).

## Shader/pass candidate strings

The GLES trait helper reads four string pointers at current-pass offsets `+0x04`, `+0x0c`, `+0x10`, and `+0x18`; this runtime read is documented in [`../shader-selection/ANALYSIS.md`](../shader-selection/ANALYSIS.md). A broad corpus scan found 5,707 candidate bases with fixups to printable strings at those four relative offsets. That pattern alone does not identify a pass record: for example, the first candidate in `chandelier_castle.bdae` at base `0x60d0` resolves to `L1_Vc_----_----_----_----_----`, `H `, `L1_Vc_----_Sp_----_----_----`, and `H `. The scan does not establish these as effect-owned pass fields, and it does not connect material/effect records to shader selection. Preserve them as candidates only.

## Confirmed and unresolved

Confirmed from serialized data:

- 3,854 exact same-file material-reference/effect-key string matches after the observed one-byte `#` prefix.
- 475 remaining material references, all with the literal value `Multilight-fx`.
- 193 same-file parameter-name/image-key suffix matches.
- All 3,662 image `+0x10` words are zero with no fixup.
- Zero scanned material parameter value targets or first-64-byte value-array fixups directly target an image table record.

Still unresolved: which effect object is passed at runtime for each material, the meaning of the `0xffffffff` image-index branch, exact factory/path normalization behavior, whether any of the 5,707 four-offset string candidates are the GLES pass records, and which effect/pass data supplies shader source or shader names. The static image-index route is established, but the traces do not prove that every matched asset or sampler reaches an active rendered frame.

## Existing native hash provenance

No new native range was used for this supplement. Relevant existing exact-range hashes are retained in the referenced manifests:

| Consumer | Address, size | SHA-256 | Existing manifest |
| --- | --- | --- | --- |
| `CColladaFactory::createMaterial` | `0x006323d0`, 244 B | `dc3090658f74e4ff70633a92030aab1b739e3b836e2ed704418ca6af4aed0b51` | [`reference/consumer-functions.json`](../reference/consumer-functions.json) |
| `collada::createMaterial` parameter consumer | `0x00631ce8`, 1,768 B | `85623a86cab3a537b4b865cd201292198524a9033ce9a266fed7713c3c138e4b` | [`record-layout/record-path-functions.json`](../record-layout/record-path-functions.json) |
| `CColladaFactory::getEffectName` | `0x00631ac4`, 52 B | `1db6eb2bdb7f4b7829f436be48f13e829adf51e3401e5db42bd27a5ec746f5a5` | [`record-layout/record-path-functions.json`](../record-layout/record-path-functions.json) |
| `CColladaFactory::createMaterialRenderer` effect overload | `0x00636c8c`, 412 B | `0fc31372fb7aa16156c948b5f666b3d54bc155f8dba05407c55f6d597fb8a8ee` | [`record-layout/record-path-functions.json`](../record-layout/record-path-functions.json) |
| GLES2 trait shader builder | `0x00634b30`, 308 B | `b8c161d864042f4f4e74803848cb6f907b69b3ceeebae5aa25bb994cd1669684` | [`../shader-selection/original-functions.json`](../shader-selection/original-functions.json) |
| `constructImage` | `0x0060fc70`, 80 B | `9187fdaa6c44a85b7492a3e2aea2b25a0acf0704e266b2b4593e95e0c86c1ef4` | [`../reference/consumer-functions.json`](../reference/consumer-functions.json) |
| `CImage::CImage` | `0x0060e1d4`, 184 B | `24ddbff1a27f7bc5b5a421d2a395937f4dc3a40cc144edcea12363ff0af86381` | [`../reference/consumer-functions.json`](../reference/consumer-functions.json) |
