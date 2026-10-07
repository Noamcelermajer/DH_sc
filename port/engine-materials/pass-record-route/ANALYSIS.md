# One BRES material through GLES pass construction

## Scope and source identity

This focused trace follows one real material in `3d/animateddecors/castle/chandelier_castle.bdae` through its local effect index, the effect's technique/pass tables, and the GLES2 shader-code creation arguments. It resolves the source link that the broader material and shader notes left open. It is a static call/data trace: it does not claim this asset was loaded or drawn in a particular play session, or that the device compiled and linked these shader files successfully.

The source APK SHA-256 is `32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`; its `lib/armeabi-v7a/libDungeonHunter2.so` member is 15,938,284 bytes with SHA-256 `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`. The selected BRES file is 31,252 bytes with SHA-256 `84098bbb6d5daac56fcd84c4a0e1248924a068da29bc436ac1f859d73997c9e8`. [`native_ranges.json`](native_ranges.json) records full ELF virtual-address ranges and hashes; [`reference/pass-table-route.asm`](reference/pass-table-route.asm) is a 428-byte excerpt whose 107 ARM instruction words were compared byte-for-byte with the ELF mapping. [`corpus-route.json`](corpus-route.json) records exact unrelocated BRES words, fixup targets, record/string hashes, and the chosen sample rows. The extractor is [`tools/trace_effect_pass_route.py`](tools/trace_effect_pass_route.py).

## Engine-side route

1. `CResFileManager::postLoadProcess` (`0x00658c90`, 2,064 bytes; SHA-256 `e85095e743755648b2ca68999ddaca7fa1155ab335ee435b585ad2b7a1b13ad2`) reads the material table and turns an in-range `SMaterial+0x18` effect index into `effect_base + index * 0x74`. The selected sample material has raw index `0`, so its effect pointer resolves to effect row 0 at BRES offset `0x3070`. This is the engine's post-load operation; the asset's serialized `+0x18` word itself remains an index, not a file pointer.

2. `CColladaFactory::createMaterial` (`0x006323d0`, 244 bytes; SHA-256 `dc3090658f74e4ff70633a92030aab1b739e3b836e2ed704418ca6af4aed0b51`) forwards that runtime pointer in the `SEffect*` argument position. `SEffectList::SEffectList` (`0x006319d8`, 164 bytes; SHA-256 `8d99a67a34b516ce7d46844975e5b8f69d3b62ecb3a05ee67a5bfb40314a7496`) stores it at list-entry `+0x10`. The factory then sends this list into the effect/profile renderer path (`0x00636c8c`, 412 bytes; SHA-256 `0fc31372fb7aa16156c948b5f666b3d54bc155f8dba05407c55f6d597fb8a8ee`).

3. In `createMaterialRendererForProfile<SProfileGLES2Traits>` (`0x006361e8`, 2,436 bytes; SHA-256 `3669e766eac04456a732fe9a392b2df6d711dce39992a2e692ae7743fc339e3c`), the effect pointer at list-entry `+0x10` is consumed as an `SEffect` record. The consumer reads `SEffect+0x20` as a table-walk bound and `SEffect+0x24` as the base of 12-byte rows. For each row, its `+0x00` string is passed to `CMaterialRendererManager::getTechniqueID` and then `beginTechnique`; its `+0x04` word bounds the pass loop and its `+0x08` pointer supplies the pass array. Passes advance by `0x74` bytes. The `+0x20` value is used both after extracting its low 30 bits and directly as a loop bound; the selected corpus record is `4`, so these uses agree for this sample. No meaning is assigned to adjacent `SEffect+0x28` or other fields here.

4. For each pass reached after `beginTechnique` succeeds, the same GLES2 function passes the pass address to `SProfileGLES2Traits::createShader` at `0x00634b30` (308 bytes; SHA-256 `b8c161d864042f4f4e74803848cb6f907b69b3ceeebae5aa25bb994cd1669684`). That helper reads four strings from pass offsets `+0x04`, `+0x0c`, `+0x10`, and `+0x18`, concatenates them in that order for the shader key, and forwards the same four pointers to `CGLSLShaderManager::createShader` (`0x006e01b4`, 404 bytes; SHA-256 `b53f059259f1e2b65fd6dac8e81801c9d07a8b159bd13dfc949c6693b2163b66`).

5. The shader-manager overload sends pass `+0x04` and `+0x0c` together to `createShaderCode` with stage value `4`, and pass `+0x10` and `+0x18` with stage value `14`. In `createShaderCode` (`0x006dfe68`, 844 bytes; SHA-256 `2fc259ff52a2b2287740bc95ff033c95f37c0b396b7a9998df6657576cdc813d`), the first value in each pair is used as the source name passed to the file-system open call when the supplied `IReadFile*` is null; the second is included in the GLSL source-pointer list before the loaded file contents. The shader package records stage `4` mapping to GL vertex shader enum `0x8b31`; the other stage used here maps to GL fragment shader enum `0x8b30`. These are arguments and source assembly behavior, not evidence of successful runtime compile/link.

## Concrete sample data

The exact BRES bytes form this chain:

| Record step | Serialized observation |
| --- | --- |
| Material row 1 at `0x4414` | key `Material__13`; `+0x0c` target `#ProfileCOMMON_Material__13-fx1302961533_chandelier_castle`; raw `+0x18 = 0` |
| Effect row 0 at `0x3070` | key `ProfileCOMMON_Material__13-fx1302961533_chandelier_castle`; `+0x20 = 4`; `+0x24` fixup target `0x3640` |
| Technique row 0 at `0x3640` | name `default`; `+0x04 = 1` pass; `+0x08` fixup target `0x3670` |
| Pass 0 at `0x3670` | `+0x04` -> `ProfileCOMMON_emul_VS.glsl`; `+0x0c` -> `#define TEXTURED\n`; `+0x10` -> `ProfileCOMMON_emul_FS.glsl`; `+0x18` -> `#define TEXTURED\n#define ADDITIVEBLEND\n ` |

The same material row has three 24-byte parameter rows beginning at `0x482c`. Their raw BRES names/types are `__irrlicht_Additive`/0, `__irrlicht_Diffuse_color`/7, and `diffuse-sampler`/11. The type-7 payload at `0x4880` contains words `[0x3f16872b, 0x3f16872b, 0x3f16872b, 0x3f800000]`. The sampler value object at `0x4894` fixes up to the raw integer cell at `0x4898`, which contains image index 0; image row 0 at `0x3034` is keyed `Map__431__env_castle.tga_` and names path `q:/data/iphone/3d/textures/env_castle.tga`. Exact byte ranges and hashes for the parameter array, color payload, sampler object, and image row are recorded below.

| Serialized bytes | Length | SHA-256 |
| --- | ---: | --- |
| Parameter rows `[0x482c,0x4874)` | 72 | `384fd36178c52bd958cb89ce62e5c8d192da0b1e5c8ac931e599f50569568adb` |
| Type-7 color payload `[0x4880,0x4890)` | 16 | `3cabbf191b5e70d41d6507152414eb1bc572d3f1566a9f8d8201543b5d7aa3a2` |
| Sampler value object `[0x4894,0x48ac)` | 24 | `65792132e5f72f4a9841b6d954e91ac83d6408bad4f1b025d9a31f4d95add867` |
| Image row zero `[0x3034,0x3048)` | 20 | `a4df63684a479dae7a9a0d057faf52ed23ed5f9688dd3b19db82fbc921141c1` |

This gives a concrete serialized material-to-image-index example alongside the material-to-pass route. The matching shader sources declare and use GLSL uniforms `DiffuseColor` and `Sampler0`, while the BDAE parameter names are `__irrlicht_Diffuse_color` and `diffuse-sampler`. The runtime binding system builds name-keyed material/shader bindings and generic traces reach `glUniform4fv` and `glUniform1i`, but this sample's exact name alias/join is not established. Do not treat matching types, nearby records, or the sampler's image index as proof that these exact parameters reached those exact active uniforms.

This proves the record/table link because native code consumes the effect count and pointer, indexes 12-byte technique rows, opens each pass array, and reads the four exact pass offsets passed into shader construction. The two `.glsl` strings are file names at the engine's source-open call; the two other strings are extra GLSL source pieces supplied before the loaded file text. Their contents are kept distinct from game-side naming conventions elsewhere in the repo.

## Residual gap

The exact vertex and fragment filenames are present in the nested ZIP member
`files/shaders.pak` in the recovered cache; the focused
[nested shader-archive audit](../shader-archive-route/ANALYSIS.md) records the
matching source hashes and macro-prefix correspondence. They are not direct
entries in the APK ZIP or outer cache ZIP. The Android startup path requests
archive registration of `shaders.pak` through the virtual call traced in the
[archive-registration caller audit](../shader-archive-route/ARCHIVE-REGISTRATION-CALLER-AUDIT.md).
Successful path resolution, reader construction, shader-entry opening,
device-side compilation and linking, active uniform reflection/name aliasing,
selected `beginTechnique` outcome, and whether this asset is reached in a live
scene remain unverified.
The code path only builds the GLES2 renderer when selected; a supported static
branch is not proof of an active frame. The raw pass word at `+0x1c` is
recorded but not interpreted.

No builds or tests were run. The extraction command for the checked evidence is:

```text
python port/engine-materials/pass-record-route/tools/trace_effect_pass_route.py <Dungeon-Hunter-2-HD-v1-0-2.apk> <recovered-files-data-root> <output-dir>
```
