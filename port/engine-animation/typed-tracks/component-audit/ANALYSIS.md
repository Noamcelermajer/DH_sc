# Scalar transform and material parameter blend/add routes

This audit closes the non-key blend/add reducers for position and scale component tracks and for material parameter tracks. It covers the APK vtable routes, reducer arithmetic, apply helpers, and material-track factory selection. It records static behavior only; it does not establish the serialized meaning of every material selector or a live runtime call for every vtable.

## APK provenance and byte evidence

The input is `lib/armeabi-v7a/libDungeonHunter2.so` from the supplied APK. APK SHA-256: `32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`. The package-relative ELF copy is `work/libDungeonHunter2.so`, 15,938,284 bytes, SHA-256 `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`.

The file-backed ELF mappings are `(p_offset=0, p_vaddr=0, p_filesz=0x955130)` and `(p_offset=0x955130, p_vaddr=0x956130, p_filesz=0x4954c)`. Function and table offsets in the manifests use those mappings. [functions.json](functions.json) contains the exact VA, file offset, length, symbol aliases, and SHA-256 for each included code range. The 212 code ranges include all non-key vtable targets, every 28-byte apply trampoline's helper, the factory and its material singleton initializers, the relevant typed material setters, and the byte-to-unsigned conversion routine. [vtables.json](vtables.json) hashes each complete 152-byte vtable slice and records the four non-key slot words. [factory.json](factory.json) records factory routing and singleton/cache selection. [apk-arm-disassembly.asm](apk-arm-disassembly.asm) contains static ARM disassembly bounded to the exact hashed function ranges.

## Vtable slots

Each selected `CVirtualEx` table is 152 bytes with an 8-byte Itanium ABI header. The full-vtable offsets are `+0x18` `getBlendedValue`, `+0x1c` `getAddedValue`, `+0x20` `applyBlendedValue`, and `+0x24` `applyAddedValue`. The corresponding object-vptr offsets are 8 bytes lower: `+0x10`, `+0x14`, `+0x18`, and `+0x1c`. The complete address, slot target, target range size/hash, and apply-helper address/size/hash for all 18 scalar and 17 material tables are in [vtables.json](vtables.json).

## Position and scale component tracks

All 18 vtables—position X/Y/Z and scale X/Y/Z, each stored as `char`, `short`, or `float`—reduce already-sampled values as a float3. The scalar storage type selects the key decoder, not the non-key reducer. Every table has distinct compiled getter bodies: `getBlendedValue` and `getAddedValue` each occupy 228 bytes. The apply slot targets are 28-byte ABI trampolines to distinct 248-byte `CApplyValueEx::apply{Blended,Added}ValueEx` specializations. These routes share behavior, not one common reducer VA.

Reducer behavior in both getters and apply helpers:

- Count 0: write `(0,0,0)`.
- Count 1: copy the one float3 unchanged; its weight is ignored.
- Count greater than 1: in contributor order, accumulate `weight[i] * value[i]` independently for x/y/z. There is no division by total weight.

For example, the position-X/float table at `0x009790b8` points to blend `0x00626df8` (228 bytes) and add `0x0062aa00` (228 bytes). Its apply slots point to wrappers `0x00629b14` and `0x00629c28` (28 bytes each), which branch to helpers `0x00629a1c` and `0x00629b30` (248 bytes each). The scale-X/float table at `0x009797d8` uses getter bodies `0x006278a8` and `0x0062b4b0`; its apply wrappers `0x0062d0b4` and `0x0062d1c8` reach helpers `0x0062cfbc` and `0x0062d0d0`.

The helper vcall target remains track-family-specific: position uses applicator object slot `+0xa4`, scale uses `+0x94`. Those slots match the independently traced `setPosition(vector3d<float> const&)` and `setScale(vector3d<float> const&)` callbacks. Thus one bounded float3 reducer can serve the arithmetic, while the position/scale dispatch adapters remain separate.

## Quaternion-angle tracks

The quaternion-angle float/short/char blend and add wrappers share the same quaternion reducers as the corresponding quaternion tracks: blend helper `0x006130d4` (448 bytes), add helper `0x00613378` (528 bytes). There is no separate angle wrapping or scalar-angle blend in these non-key slots. This reuses the quaternion reducer behavior documented in the [blend/add supplement](../blend-add/ANALYSIS.md), including the traced blend seed/weight accumulator quirk.

## Material parameter tracks

The APK contains 17 material vtables: float arities 1/2/3/4 with the component variants present in the table, plus U8[3] and U8[4] SColor tracks. Within each float arity, the component-template variants have separate compiled function ranges but the same weighted-array reducer:

- Count 0 writes zero lanes; count 1 copies the value and ignores its weight.
- Larger counts accumulate each lane as an ordered sum of `weight[i] * value[i]`; weights are not normalized.
- Getter target range sizes are 108 bytes for float1, 164 for float2, 228 for float3, and 244 for float4. For arities 1–3, 28-byte apply slots forward to helpers of 140, 196, and 248 bytes respectively. Float4 apply slots point directly to 252-byte bodies.

For example, material float1 component `-1` is vtable `0x00979dc8`: getters `0x00620134` and `0x006201a0` (108 bytes each), wrappers `0x00620118`/`0x00619088` (28 bytes), and apply helpers `0x0062008c`/`0x00618ffc` (140 bytes). Float4 component 2 is vtable `0x0097a158`: getters `0x006246d4`/`0x00624b98` (244 bytes) and direct apply bodies `0x006244dc`/`0x006243e0` (252 bytes).

The U8 color routes have unique quantization semantics and cannot share the float reducer unchanged. For count greater than 1, each byte lane is converted to float, multiplied by its weight, and accumulated; the result is converted with the APK's `__aeabi_f2uiz`/`__fixunssfsi` routine at `0x008be2a0` before byte storage. No explicit clamp appears in the tracked body. Count 0 writes zero bytes and count 1 copies the raw bytes, ignoring its weight. U8[3] apply constructs `SColor` with alpha `0xff`; U8[4] apply preserves its fourth input lane as alpha. U8[3] getter bodies are 240 bytes and apply bodies 288 bytes; U8[4] getter bodies are 276 bytes and apply bodies 320 bytes.

Apply destinations are material-specific. The bodies read the parameter ID from `CApplicatorInfo+8` and call typed `IMaterialParameters<CMaterial>::setParameterCvt` routes: float at `0x005c6b8c`, vector2 at `0x005c6c60`, vector3 at `0x005c6d34`, vector4 at `0x005ce768`, and SColor at `0x005cad38`. These setters differ from the scene-node position/scale callback path.

## Factory selection

`CColladaDatabase::getAnimationTrackEx` is at `0x00611ae0`, 1,608 bytes; its range hash is in [functions.json](functions.json). The material route is reached at `0x00611c60` (case 86 after the factory's one-based adjustment). The nested branch at `0x00611c88` reads numeric selectors at `[r2+0x10]` and `[r2+0x14]`; the float lookup path uses `0x00611f9c`, and the float singleton cache is initialized at `0x00612074`. The separate color path dispatches at `0x00611e70`.

The float cache includes float1 `-1`; float2 `-1/0/1`; float3 `-1/0`; and float4 `-1/0/1/2/3`. Cache word offsets and exact initializer addresses/hashes are listed in [factory.json](factory.json). Repeated cache entries at `+0x10/+0x14` and `+0x3c/+0x40/+0x44` point to repeated calls of the same singleton initializer. The six color singleton initializers are also recorded there: U8[3] `-1`, and U8[4] `-1/0/1/2/3`.

The vtable/type shapes and factory selections are established from static dispatch and singleton initializers. The source-level names and serialized meanings of the nested numeric selector fields remain unresolved, so no general material-channel decoder is claimed.

## Safe port boundary and remaining gaps

A bounded port can share the float weighted-sum arithmetic by lane count while preserving the zero-count and single-value branches exactly. The scalar component path can use a float3 reducer and then dispatch to the existing position or scale callback. Material application should keep its typed setters separate from scene-node application. U8/SColor needs its own float accumulation, APK-compatible float-to-unsigned conversion, byte storage, and 3-versus-4-channel alpha behavior. None of these findings establishes key search, sampler selection, BRES decoding, or the serialized meaning of material selectors.

This is an APK-backed static audit only. No runtime behavior, full material-track lifecycle, or generated engine integration is claimed; no tests or builds were run.
