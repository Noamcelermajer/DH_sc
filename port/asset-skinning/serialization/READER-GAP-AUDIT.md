# Skin payload reader gap audit

## Result

No skin-specific parser for the bytes loaded as `SSkinData<float>` was identified in the APK. The reachable code establishes a typed **allocation request** and a virtual raw-byte read. It does not decode the returned bytes into a bounded joint, vertex-index, weight, or morph-delta record format.

The assembly-visible handoff is:

1. Both `CSkinnedMesh` constructor variants load a word from `[r3,#0x80]` and pass it to `onDemand<SSkinData<float>>::get`, along with an output object and reader argument. This records the observed access without assigning a serialized field meaning to the loaded word.
2. The generic `get` routine checks the cached pointer at resource `+0x0c`, allocates from the size word at `+8` with its low two bits cleared, stores the buffer at `+0x0c`, then calls reader vtable slot `+8` with the size word, offset word at `+4`, and destination.
3. The only concrete named reader vtable in the APK is `COnDemandReader`. Its `read` implementation seeks the underlying file using its second integer argument, then reads the first integer argument's byte count into the destination. It does not inspect the contents.

The C2 constructor and callsite are preserved in [original-functions.asm](../reference/original-functions.asm); the C1 callsite, complete generic helper, and both reader overloads are in [serialization-routes.asm](reference/serialization-routes.asm). The function/range hashes and vtable bytes are recorded in [serialization-functions.json](serialization-functions.json). A full `llvm-objdump -d --no-show-raw-insn` scan of the APK ELF found exactly two direct `BL` calls to `0x00663bd0`, at `0x006662c8` and `0x006667d0`. The APK's named-symbol inventory contains only the generic `onDemand<SSkinData<float>>::get` symbol containing `SSkinData`; the only named Collada `getData(onDemandReader&)` method is the animation-only `SAnimationSegment::getData` at `0x0060bee4` (376 bytes, SHA-256 `788f4a36e0d9bb8f96853957b2a298e795453ca974637ae6f7c351dff13e4da2`). It is not called from the skin or morph controller route.

## Exact native evidence

Source APK SHA-256: `32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`. The APK entry `lib/armeabi-v7a/libDungeonHunter2.so` is 15,938,284 bytes and has SHA-256 `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`.

| Evidence | ELF VA | Size | SHA-256 |
| --- | ---: | ---: | --- |
| `CSkinnedMesh` C2 constructor; callsite `0x006662c8` | `0x00665fe8` | 1,288 | `26dbbe26d6bca5c41d3e2b5ceb0604cedf88c1015061ddb1a9b90b3cdcc7b1cf` |
| `CSkinnedMesh` C1 constructor; callsite `0x006667d0` | `0x006664f0` | 1,288 | `29658b99c6d082d0c087d7a91818fac8ad28dab5b1c5ff0f711ba4947331f4f3` |
| `onDemand<SSkinData<float>>::get` | `0x00663bd0` | 108 | `fd9ac867bc2fec9a269223cc381d591c6ff8dee3b8c6f488bb8669d288428a7b` |
| `COnDemandReader::read(int,int,void*)` | `0x0060b2b8` | 76 | `c7cc5f3eea1eb5bbf5f7eae9795a3d0d5fc8f25dd6b8a57c0c01088c66772b2a` |
| `COnDemandReader::read(int,int,void*,callback,void*)` | `0x0060b304` | 76 | `c7cc5f3eea1eb5bbf5f7eae9795a3d0d5fc8f25dd6b8a57c0c01088c66772b2a` |
| base `onDemandReader` vtable | `0x00978540` | 24 | `9c2051cf52588936c00dfba32e0979bf87a0abb99c69966de2b3d89049ce293f` |
| concrete `COnDemandReader` vtable | `0x00978558` | 24 | `7880ece2e35222adbbddb18fe0414ce30f9b9ccb4b4962d4e7fe1eac8869b7ef` |
| `CMorphingMesh` constructor | `0x0064b9c8` | 216 | `28affec4892aef82d88d225d22f6c016219b84fc903cab14366c7ba867b1560a` |
| `CMorphingMesh::morph(unsigned int)` | `0x0064a6e4` | 2,312 | `604042f3c70f794f5a6877e6de4bb46e3191bf5395e4851084d403e0943eb760` |

Both constructor callsites are four-byte ARM `BL` instructions to `0x00663bd0`: `40 f6 ff eb` at `0x006662c8` and `fe f4 ff eb` at `0x006667d0`. In each caller, immediately preceding instructions load the resource from `[r3,#0x80]`, place the reader argument in `r2`, and pass an output object in `r0`. The generic helper's complete original range is preserved in the cited assembly file, including its exact allocation and virtual-call sequence.

The two vtable records are also byte-backed. The abstract base table is `[0, 0, 0x0060b2b0, 0x0060b658, 0, 0]`; the concrete table is `[0, 0, 0x0060b2b4, 0x0060b644, 0x0060b2b8, 0x0060b304]`. Thus the `+8` read slot used by the generic helper selects the concrete raw-reader method when the `COnDemandReader` vtable is installed. No second named concrete `onDemandReader` implementation was found.

## BRES asset check

[census_bres_controller_records.py](tools/census_bres_controller_records.py) independently decompresses each manifest-listed `.bdae` entry and checks its size, CRC-32, and SHA-256 before examining the bounded Collada controller table. The generated [corpus-controller-census.json](corpus-controller-census.json) records the full result:

- 2,901 `.bdae` files were independently verified from the available cache ZIP prefix; the overall cache archive is incomplete, but all these file extents were present.
- 386 files have controller records and 2,515 have none.
- All 727 controller dispatch words are `0`; none is `1` (the morph route).
- For all 727 records, both words at `+4` and `+8` occupy BRES fixup fields. The census preserves those raw 12-byte records and asset hashes without assigning meanings to their pointer values.
- Representative verified records include `darkguardian.bdae` (71,464 bytes; SHA-256 `1a0402a7023223edb1110a8ebb1be7969928af3387a5c9d39a3b2369374dd864`) and `npcs/assassin.bdae` (128,560 bytes; SHA-256 `e59f4d134d3dc8a89a8feb04b4e5bbc02bae0b26e41a539117b05ac2ebcf5899`). The latter has two controller records, both dispatch `0`.

This corpus can corroborate the controller dispatch and pointer-fixup fields, but it cannot validate a morph payload because no type-1 record occurs in the recovered `.bdae` corpus. It also does not reveal the skin blob schema: these BRES files use nonempty bulk areas and the `File::Init(FileReader*)` split/block remapping route, whose runtime pointer mapping remains a documented gap in [the engine-resources analysis](../../engine-resources/EXTERNAL-SPLIT-ANALYSIS.md). Raw file offsets and relocated pointers must not be treated as equivalent without that remapping. No payload fields, element counts, or strides are inferred here.

## Search boundary and remaining work

The negative result is bounded to the APK's named symbols, the full ELF disassembly's direct calls to `onDemand<SSkinData<float>>::get`, the two named reader vtables, the selected skin/morph constructor and runtime routes, and the individually verified cache BRES controller tables. It does not exclude an anonymous indirect caller or another reader hidden behind an unrecognized object/vtable.

To close the gap, recover the actual block-reader/fixup mapping used by `File::Init(FileReader*)`, then trace the resulting `SSkinData<float>` buffer into its first field-level consumers. For morphs, a type-1 BRES controller asset or another producer/accessor is also needed. Until those points are proven, a skin/morph decoder would be speculative.
