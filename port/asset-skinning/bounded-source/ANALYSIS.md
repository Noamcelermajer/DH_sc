# Bounded skin source forms

## Finding

The APK consumer and the recovered cache now support two bounded source forms for the skin stream. The earlier open question—whether `SSkin+0x80` always names an on-demand descriptor or always names vertex bytes—was a false either/or: the code has a flag-selected direct-data path and deferred-resource path, and the recovered BDAEs contain both layouts.

The consumer-implied runtime block is:

```text
N = byte[SSkin + 0x98]
stride = 4 * (N + 1)
upload_bytes = CVertexStreams_count * stride
index[i] = byte[vertex_block + i]            for i in [0, N)
weight[i] = float32[vertex_block + 4 + 4*i]  for i in [0, N)
```

The software technique selects engine attribute code `29`, then reads the first `N` bytes as indices and `N` float weights from the aligned four-byte boundary. The stream-size formula reserves four bytes for the packed index group plus four bytes per weight. This is a runtime access contract. It is not by itself proof that every source record has exactly `upload_bytes` bytes.

## Serialized paths

`SController` records use a 12-byte stride. The controller dispatch at `+0` selects skin when it is zero; `+8` resolves through a BRES fixup to the `SSkin` object. The skin data field at `SSkin+0x80` is also a BRES fixup. `SSkin+0x98` is the byte influence count used by the helper and software routine.

The `CSkinnedMesh` constructors derive a boolean from an upstream word and pass it to the skin techniques. In `IColladaSkinTechnique::initProxyBuffer`, the technique byte at `this+0x04` selects the source:

| Technique byte | Runtime source expression | Recovered BRES shape | Corpus records |
| --- | --- | --- | ---: |
| `0` | Pass `[SSkin+0x80]` directly as the buffer source. | Pointer target is the start of a declared bulk payload row. | 554 |
| nonzero | Pass `[resource+0x0c]`, the loaded byte buffer, as the buffer source. | Pointer target is a main-source `onDemand` record; its `+4/+8/+0x0c` words are source offset, byte size, and initially-null cached pointer. | 173 |

The second interpretation is tied to the native loader: `onDemand<SSkinData<float>>::get` loads the read offset at resource `+4`, the read size at `+8`, aligns only the allocation request down to four bytes, stores the allocated pointer at `+0x0c`, then calls the reader. `COnDemandReader::read` seeks its attached `IReadFile` to the supplied offset and requests the supplied size. It performs no skin-specific decoding. The constructors call this `get` path only in the positive-boolean branch; the same boolean reaches `initProxyBuffer`.

`File::Init(FileReader*)` reads the header, fixup table, main image, block rows, and block payload according to the recovered sequential layout. `File::Init()` applies BRES fixups and maps a pointer target in a bulk row to that row's payload bytes. In the recovered cache the bulk-allocation selector is zero, so payload rows share an aggregate allocation while retaining their declared per-row offsets and sizes. Deferred `onDemand` ranges in this census fall in the BRES header-declared trailer, which the initializer leaves unread; the generic reader's seek/read path is the separate consumer for those source intervals.

The helper computes `upload_bytes` from the live `CVertexStreams` count and stride. The visible capacity comparison is against an already cached `IBuffer`; there is no comparison against the BRES row size or the `onDemand` descriptor's declared size. The source intervals are now known, but the native code does not guard the relationship between the requested upload length and those intervals.

## Corpus result

The read-only [census script](tools/census_skin_source_bounds.py) verifies each manifest-listed `.bdae` entry's decompressed length, CRC-32, and SHA-256 before following pointer fields. Its complete per-record output is [corpus-census.json](corpus-census.json).

| Census | Result |
| --- | ---: |
| Individually verified BDAE files | 2,901 / 2,901 |
| Controller records / dispatch word | 727 / all zero (skin) |
| Controller `+8` and `SSkin+0x80` pointer fields marked as fixups | 727 / 727 each |
| `SSkin+0x80` targets in bulk payload rows / at row start | 554 / 554 |
| `SSkin+0x80` targets in main-source `onDemand` records | 173 |
| Influence count `N` values | 1: 333; 2: 268; 3: 117; 4: 9 |
| Direct row extents divisible by `4*(N+1)` | 554 / 554 |
| Deferred descriptor sizes divisible by `4*(N+1)` | 173 / 173 |
| Deferred `offset+size` intervals inside declared trailer | 173 / 173 |
| Deferred cached pointer words at `+0x0c` initially zero | 173 / 173 |
| Consumer-format extents profiled / candidate vertex blocks | 727 / 408,251 |
| Non-finite weights / weights outside `[0,1]` | 0 / 0 |
| Nonzero unused index bytes (`N < 4`) | 0 |
| BRES fixup fields inside the reported skin data extents | 0 |

Across the 408,251 candidate vertex blocks, 263,603 have all-zero weights and 144,648 have a weight sum within `0.02` of one. The remaining blocks are not labeled malformed: the evidence does not establish that every stream slot must be normalized or used. The per-record profile is byte-derived from each bounded row or descriptor span and is included in the JSON.

The follow-up [same-file geometry join](GEOMETRY-JOIN-ANALYSIS.md) resolves 531 of the 727 controller keys to exactly one type-0 geometry in the same BDAE. All 531 declared source spans cover the request candidate computed from that geometry's `SMesh.vertex_count` and the controller influence count. The stream count used by the native consumer is still live `CVertexStreams` state, and the declared extent block count matches the joined mesh vertex count in 0 of the 531 records; this remains a capacity candidate, not a proven runtime byte count. The other 196 controller keys have no same-file geometry match. Global name reuse is not treated as pairing evidence.

Examples:

| Asset and controller | Source extent | Consumer stride | Bytes at source start |
| --- | --- | ---: | --- |
| `3d/characters/npcs/assassin.bdae`, controller 0, `N=1` | Bulk row 14 at `0x14d40`, `0x40` bytes | 8 | `00 00 00 00 00 00 80 3f` |
| `3d/characters/npcs/assassin.bdae`, controller 1, `N=2` | Bulk row 16 at `0x14da8`, `0x7a58` bytes | 12 | `08 01 00 00 26 aa 4b 3f 69 57 51 3e` |
| `3d/characters/darkguardian/darkguardian.bdae`, controller 0, `N=2` | Bulk row 7 at `0xc350`, `0x3f90` bytes | 12 | `01 06 00 00 00 00 00 3f 00 00 00 3f` |
| `3d/characters/prince/prince_modular.bdae`, controller 0, `N=3` | `onDemand` record at `0x31890`; source offset `0x170540`, size `0x2780`, cached pointer `0` | 16 | `00 01 00 00 00 00 00 3f 00 00 00 3f 00 00 00 00` |

The first two examples have source lengths of 8 and 2,610 consumer-sized blocks. The Prince deferred record has a declared size of `0x2780`, or 632 such blocks. The latter is four times the 158-vertex count on several type-0 `SMesh` records in that same BDAE. A same-file count comparison is only a clue: this trace has not established which geometry/buffer each controller record pairs with, and other assets have different count relationships. The extent divided by stride is therefore retained as a **candidate** count, not reported as the runtime vertex count.

Every BDAE's block rows tile the declared bulk payload in this cache. All 2,901 use the zero allocation selector; 1,505 have block rows. The 173 deferred source intervals are inside their assets' declared trailer ranges. These are file-format extents; no session capture confirms which global technique boolean was active for any asset at runtime.

## Exact binary provenance

The supplied APK is 10,269,872 bytes, SHA-256 `32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`. Its `lib/armeabi-v7a/libDungeonHunter2.so` member is 15,938,284 bytes, SHA-256 `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`. The code ranges below lie in the executable `PT_LOAD` with `p_offset=0`, `p_vaddr=0`; ELF file offsets therefore equal these virtual addresses. The complete original ARM ranges were checked against the APK ELF slices in the existing evidence notes.

| Evidence | ELF VA | Size | SHA-256 |
| --- | ---: | ---: | --- |
| `CColladaDatabase::constructController(SController*)` | `0x0060fa24` | 76 | `60416ffca6232a47ca640aa4d92494e91a315e1822d9b17324aba9293066104a` |
| `COnDemandReader::read(int,int,void*)` | `0x0060b2b8` | 76 | `c7cc5f3eea1eb5bbf5f7eae9795a3d0d5fc8f25dd6b8a57c0c01088c66772b2a` |
| `onDemand<SSkinData<float>>::get` | `0x00663bd0` | 108 | `fd9ac867bc2fec9a269223cc381d591c6ff8dee3b8c6f488bb8669d288428a7b` |
| `CSkinnedMesh` C2 constructor | `0x00665fe8` | `0x508` | `26dbbe26d6bca5c41d3e2b5ceb0604cedf88c1015061ddb1a9b90b3cdcc7b1cf` |
| `CSkinnedMesh` C1 constructor | `0x006664f0` | `0x508` | `29658b99c6d082d0c087d7a91818fac8ad28dab5b1c5ff0f711ba4947331f4f3` |
| `CColladaSoftwareSkinTechnique::skin` | `0x0066ff48` | `0xb18` | `602275e61a5df4dd23f80cd4729f265f68ae78525470302e0c019b8b6ea2b679` |
| `IColladaSkinTechnique::initProxyBuffer` | `0x00670ec8` | `0x560` | `bbf565c2b9a3e619eb5de395f0b0046b661db3efaa7dbdafb1f26ce06896e2c1` |
| `File::Init()` | `0x0069a40c` | 1,108 | `e36600c917439651bfec9dedadfdf85537210401a6c00e0a5f96617e7f50a05a` |
| `File::Init(FileReader*)` | `0x0069a880` | 1,036 | `2c8604d4442f9c5f8caace3a10a8b12c4f250614c125eca8c841a923e49aa495` |

The concrete reader callback overload at `0x0060b304` is also 76 bytes and has the same SHA-256 as the listed `COnDemandReader::read`; its exact range is in `port/asset-skinning/serialization/serialization-functions.json`. The `CColladaSoftwareSkinTechnique` reads the stream selected by `CVertexStreams::getStream` at `0x005a0af0` (68 bytes; SHA-256 `325770b6c97267f20d014c5740327d74c5e3249f07bd4ef982b45547c310d718`).

## Corpus provenance and unresolved boundary

The BDAEs come from the recoverable prefix `work/cache-recovery/cache.zip` (314,572,800 bytes; SHA-256 `f01c1657e1a977fce28c5aa8b0fed6e37daf8386c906209de99d5b3f29690072`) and manifest `work/cache-recovery/cache-manifest.json` (SHA-256 `876a585f2e145f0cf09da1651faf3feb0cf31b876d33eeeac5408f500dbc8d0f`). The ZIP is truncated inside a later WAV entry. All 2,901 listed BDAEs passed individual length, CRC-32, and SHA-256 checks, but the prefix does not establish the complete original cache or assets after the truncation point.

The exact source byte length is bounded for all 727 recovered controller records: a block-row size for 554 direct sources, and an `onDemand` size word plus source offset for 173 deferred sources. Same-file BRES key joins resolve 531 controllers to unique type-0 geometry records; 196 have no same-file geometry match. For the 531 resolved rows, the bounded span covers the request candidate derived from `SMesh.vertex_count`, but the live `CVertexStreams` count is not established and the visible helper does not compare its request with the declared source size. The serialized root gate agrees with the direct/deferred source shape in all 727 records, but runtime loading was not observed. Behavior outside this incomplete cache prefix remains open.

The census is static and read-only. No build or test was run.
