# Skin payload consumer trace

## Result

The earlier [reader-gap audit](READER-GAP-AUDIT.md) correctly stopped at the raw reader boundary, but its statement that no first field-level consumer was found is now superseded by this trace. The APK has a concrete consumer chain from the `SSkinData<float>` on-demand resource through `IColladaSkinTechnique::initProxyBuffer` into an engine `IBuffer`; the software skin routine then reads byte indices and float weights from the selected runtime stream.

This proves a **consumer-implied runtime vertex block**, not a complete serialized `SSkinData<float>` schema. The upload extent is computed from runtime stream metadata. This path does not validate that extent against the resource's allocated/read length or establish the source bytes' post-BRES-remap file offsets. One flag-controlled branch also supplies the `[SSkin+0x80]` pointer itself to the same buffer-creation call, so the exact source object for that branch remains unresolved.

## Source identity and evidence

The source APK is `Dungeon-Hunter-2-HD-v1-0-2.apk`, SHA-256 `32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`. Its `lib/armeabi-v7a/libDungeonHunter2.so` entry has SHA-256 `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`.

The code ranges below are in the file-backed text `PT_LOAD` (`p_offset=0`, `p_vaddr=0`, `p_filesz=0x955130`), so file offsets equal the listed virtual addresses. The vtables are in the file-backed data `PT_LOAD` (`p_offset=0x955130`, `p_vaddr=0x956130`), so their file offsets are VA minus `0x1000`. Complete byte-bearing ARM disassembly for the newly traced methods is in [payload-consumer-excerpts.asm](reference/payload-consumer-excerpts.asm). Existing constructor/get and software-skin listings are in [serialization-routes.asm](reference/serialization-routes.asm), [original-functions.asm](../reference/original-functions.asm), and [runtime-functions.asm](../reference/runtime-functions.asm).

| Range | ELF VA | Size | SHA-256 |
| --- | ---: | ---: | --- |
| `onDemand<SSkinData<float>>::get` | `0x00663bd0` | 108 | `fd9ac867bc2fec9a269223cc381d591c6ff8dee3b8c6f488bb8669d288428a7b` |
| `CSkinnedMesh` C2 constructor | `0x00665fe8` | `0x508` | `26dbbe26d6bca5c41d3e2b5ceb0604cedf88c1015061ddb1a9b90b3cdcc7b1cf` |
| `CSkinnedMesh` C1 constructor | `0x006664f0` | `0x508` | `29658b99c6d082d0c087d7a91818fac8ad28dab5b1c5ff0f711ba4947331f4f3` |
| `CSkinnedMesh::skin(unsigned int)` | `0x00664ee0` | 292 | `0bb58b4ad46037e591e4a3a6869bd47269648c14f01cf506a6c2379ff39068a0` |
| `CSkinnedMesh::init(IVideoDriver*, bool)` | `0x00665678` | `0x150` | `cb574ddb550f010ada6ed82c61cb39324b3221b59d1a5519ebddb5c83da54176` |
| `CColladaSoftwareSkinTechnique` constructor C1 | `0x0066f658` | `0x60` | `96911a244758287de396bc81083724da44af58c89bf8feb633cc606590142414` |
| `CColladaSoftwareSkinTechnique::init` | `0x0066f8ec` | `0x1c8` | `6aac68d39894bf94151f0276e4f0e820a25f28e3bbce58ccdd9b0e5e54965093` |
| `CColladaSoftwareSkinTechnique::skin` | `0x0066ff48` | `0xb18` | `602275e61a5df4dd23f80cd4729f265f68ae78525470302e0c019b8b6ea2b679` |
| `CColladaHardwareMatrixSkinTechnique::init` | `0x0066c8a4` | `0x84` | `c329f97018e6c1b8ce878b5bb6fc09c21e5ffed20c18c03e5259ce7a827806c5` |
| `CColladaHardwareQuatSkinTechnique::init` | `0x0066e634` | `0x84` | `aaa7776cebf987492f99ca25167e00b63477686b470e9071e8ab50a5d70eeabb` |
| `CColladaHardwareTextureSkinTechnique::init` | `0x0066f1f4` | `0x8c` | `1ec71aaa48c1d4ca15c41f0763bab1e0ccde62591d9117f44553550b03ee24ef` |
| `IColladaSkinTechnique::initProxyBuffer` | `0x00670ec8` | `0x560` | `bbf565c2b9a3e619eb5de395f0b0046b661db3efaa7dbdafb1f26ce06896e2c1` |
| `CVertexStreams::getStream(E_VERTEX_ATTRIBUTE, ...)` | `0x005a0af0` | `0x44` | `325770b6c97267f20d014c5740327d74c5e3249f07bd4ef982b45547c310d718` |
| `CCommonGLDriver::createBuffer(...)` | `0x005b13f4` | `0x8c` | `c5f898fae99be254df857996c4e1effdfcff6340bccc213792c864fb0c5f4494` |
| `CNullDriver::createBuffer(...)` | `0x005b92cc` | `0x80` | `4fa48cd5807cdee67b9a6c2335f1596753bfb1d58a870c95df04d3043ada42df` |

The indirect call at `0x00671184` loads slot `driver-vptr+0x78` at `0x00671138`. The slot bytes below were read through the data `PT_LOAD` mapping; the Itanium vptr begins eight bytes after each vtable symbol.

| Vtable | Slot VA (`vptr+0x78`) | File bytes | Target | Slot SHA-256 |
| --- | ---: | --- | ---: | --- |
| `COpenGLES2Driver`, symbol `0x00977b18` | `0x00977b98` | `f4 13 5b 00` | `0x005b13f4` | `e661eab6d53d2a6cc64a8a8312f4f8eb67ec01274403199111adb9c72b9c1c99` |
| `CProgrammableGLDriver`, symbol `0x00977568` | `0x009775e8` | `f4 13 5b 00` | `0x005b13f4` | `e661eab6d53d2a6cc64a8a8312f4f8eb67ec01274403199111adb9c72b9c1c99` |
| `CNullDriver`, symbol `0x00977d40` | `0x00977dc0` | `cc 92 5b 00` | `0x005b92cc` | `b06ca90dba8ebb65bf264e76bc938ba03f186cf891622f41b1f2a8618a6d84f9` |
| abstract `IVideoDriver`, symbol `0x00977330` | `0x009773b0` | `00 00 00 00` | `0x00000000` | `df3f619804a92fdb4057192dc43dd748ea778adc52bc498ce80524c014b81119` |

The loaded arguments at that call are `driver`, numeric type `0`, numeric usage `4`, computed byte count, source pointer, and boolean `0`; the resolved named target has signature `createBuffer(E_BUFFER_TYPE, E_BUFFER_USAGE, unsigned int, void*, bool)`. The enum names for values `0` and `4` remain unassigned, consistent with the existing [buffer analysis](../../engine-rendering/buffers/ANALYSIS.md).

The software technique's vtable is at `0x009855c8` (48 bytes; SHA-256 `348d63900336dc4b78a378563eafa4bb268ae866d526510e60c672c55016cc8b`). Its vptr slot at displacement `+0x14` is VA `0x009855e4`, bytes `ec f8 66 00`, target `CColladaSoftwareSkinTechnique::init` at `0x0066f8ec`, slot SHA-256 `5a7899baead365e889a18041d974f6369e6313076986442c59338104c017e705`. Its `+0x18` slot is VA `0x009855e8`, bytes `48 ff 66 00`, target `CColladaSoftwareSkinTechnique::skin` at `0x0066ff48`, slot SHA-256 `c049355dbed728ac7b79ef0282296a384ec1063977b41338de59f2364330c016`.

## Call and field trace

1. Both `CSkinnedMesh` constructor variants call `onDemand<SSkinData<float>>::get` from the resource field at `SSkin+0x80`. The returned intrusive pointer is retained in `CSkinnedMesh+0x4c`; the helper fills the on-demand object's byte buffer at `+0x0c` as described by the earlier audit. The constructors also create the software technique in `CSkinnedMesh+0x48`.
2. `CColladaSoftwareSkinTechnique` construction stores the `SSkin*` at technique `+0x0c` and its boolean argument at `+0x04`. Its `init` calls `IColladaSkinTechnique::initProxyBuffer` at `0x00670ec8`. The three hardware technique `init` methods also call this same helper, so the proxy-stream creation code is shared across all four named techniques.
3. A full ELF disassembly search for direct `BL` targets equal to `0x00670ec8` found exactly four callsites: `0x0066c8c8` (matrix), `0x0066e658` (quaternion), `0x0066f220` (texture), and `0x0066f918` (software). This is a direct-call search; it does not rule out an indirect call.
4. In `initProxyBuffer`, the receiver byte at `this+0x04` selects between two source expressions. The software-technique constructor initializes it from its boolean argument. When nonzero, the helper loads `[SSkin+0x80]`, stores that resource pointer in the technique at `+0x08`, and passes `[resource+0x0c]` as the source data pointer to buffer creation. When zero, the helper instead passes `[SSkin+0x80]` itself. In both `CSkinnedMesh` constructors the software-technique boolean is the result of a `> 0` test of an upstream word at `+0x64`; its source-level meaning is not recovered. Treat the raw-pointer branch as an unresolved source route.
5. The helper reads `N = byte[SSkin+0x98]`, computes stride `4*(N+1)`, and multiplies it by the word at the source `CVertexStreams` object `+0x08` to form the byte count. The resulting buffer is cached at `SSkin+0x94`. No read of the on-demand resource's declared byte size is compared with this computed upload size in this method; the visible size comparison is against an already cached buffer's capacity.
6. The helper creates a stream descriptor around the buffer, searches the stream list for engine attribute code `29`, converts the returned record address to a stream ordinal, and stores that byte at `SSkinBuffer+0x12`. The engine alias table maps code `29` to `skinindices`/`skinindex`; code `28` maps to `skinweights`/`skinweight` ([attribute analysis](../../engine-shaders/attributes/ANALYSIS.md)).
7. `CSkinnedMesh::skin` dispatches through the selected technique's vtable. The software technique vtable at `0x009855c8` places its `init` at vptr displacement `+0x14` and its `skin` at `+0x18`; the corresponding targets are `0x0066f8ec` and `0x0066ff48`. The software skin method maps the stream ordinal stored at `SSkinBuffer+0x12`, then reads a byte index from the per-vertex block at offset `i` and selects a transform at `index*0x44`. It reads each influence weight as a 32-bit float, beginning at block offset `+4` and advancing by four bytes per influence, and multiplies the selected transform contribution by that weight. The influence count is read from `byte[SSkin+0x98]`.
8. `CSkinnedMesh::init` at `0x00665678` walks its per-buffer records, revalidates each technique, and invokes the technique's virtual `init` slot at vptr displacement `+0x14`; it then releases the on-demand resource retained at mesh `+0x4c` and clears the field. This range contains no skin-record decoding. The upload and software-use paths above do not construct a CPU array of joint/weight records; they pass raw bytes through an `IBuffer` and read the selected stream in place. The GL driver's existing buffer analysis documents the runtime buffer data pointer and size fields at `IBuffer+0x08` and `+0x0c` ([buffer analysis](../../engine-rendering/buffers/ANALYSIS.md)).

## What the consumer layout proves

For the resource-backed branch, the method passes `resource+0x0c` to `createBuffer` with the calculated extent. The software routine later interprets the selected attribute-29 stream using this access pattern:

```text
N = byte[SSkin+0x98]
stride = 4 * (N + 1)
index[i] = byte[vertexBlock + i]                 for i in [0, N)
weight[i] = float32[vertexBlock + 4 + 4*i]       for i in [0, N)
```

At `N=4`, this is four byte indices followed by four 32-bit float weights, occupying 20 bytes per vertex. For other values, the code uses the same formula and does not visibly validate `N <= 4`; the input constraint and meaning of any unused index bytes are unresolved. This is a useful runtime contract for the software consumer, and evidence that both indices and weights are read from its selected code-29 buffer. It does not establish a separately serialized code-28 weight array.

The result is stronger than “no consumer found”: joint indices and float weights are read by the software skin algorithm, while other technique implementations share the upload helper. The reader itself still performs only a byte read. No field parser validates the per-vertex bounds against the `SSkinData<float>` allocation, no complete source-file extent is established after BRES remapping, and no corpus payload check confirms this layout for every asset. Therefore a bounded serialized skin record remains unproven.

## Negative-search boundary

The earlier [reader-gap audit](READER-GAP-AUDIT.md) records the whole-ELF scan that found exactly two direct calls to `onDemand<SSkinData<float>>::get`, both in the `CSkinnedMesh` constructors, plus its named-symbol and reader-vtable search. This supplement adds the whole-ELF direct-call scan for `initProxyBuffer` and traces the four named init callers, GL buffer handoff, attribute-29 lookup, and software consumer. The searches do not prove the absence of an anonymous indirect caller, an unrecognized vtable implementation, a separate parser outside the traced paths, or additional runtime behavior on assets and branches not available for validation.
