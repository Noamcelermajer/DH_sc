# Producer-side vertex stream code audit

## Scope and inputs

This audit follows numeric vertex stream codes 9–16 from Collada mesh construction, generic stream allocation, serialized stream readers, append-buffer baking, shader reflection, and GLES array setup. It is a static trace of the supplied Android binary; a supported code path is not treated as proof that shipped game data uses that code.

The APK is `Dungeon-Hunter-2-HD-v1-0-2.apk` (SHA-256 `32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`). Its `lib/armeabi-v7a/libDungeonHunter2.so` member is 15,938,284 bytes and matches `work/libDungeonHunter2.so` byte-for-byte (SHA-256 `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`). All selected function and excerpt ranges lie in the first file-backed PT_LOAD segment, where ELF VA equals file offset. [`producer-stream-ranges.json`](producer-stream-ranges.json) records the APK and ELF identities, 24 exact function ranges with byte sizes and SHA-256, bounded excerpt ranges and hashes, and whole-file direct-call xrefs. [`reference/producer-stream-excerpts.asm`](reference/producer-stream-excerpts.asm) contains the bounded ARM excerpts. Their decoded raw bytes were compared to the ELF bytes by [`tools/capture_evidence.py`](tools/capture_evidence.py).

## Findings for codes 9–16

**The Collada `CMeshBuffer` producer does not emit 9–16.** Both constructor bodies (`C2` at `0x006bcf80` and `C1` at `0x006bd9f8`, each 0xa78 bytes) call `addStream` for a fixed set of source slots. The calls at `0x006bd140` through `0x006bd354` and the mirrored calls at `0x006bdbb8` through `0x006bddcc` produce codes 0–4 and 17–29. The first source byte at `SMeshBuffer +12` maps to code 0; `+16..+19` map to codes 1–4; `+13..+15` map to 17–19; `+24..+27` map to 20–23; `+20..+23` map to 24–27; and `+28..+29` map to 28–29. The constructor then passes that mask to `CVertexStreams::allocate` (`0x006bd368` / `0x006bdde0`) and calls `setupStreams(data, 0xffffffff, false)` (`0x006bd3d4` / `0x006bde4c`). There is no Collada slot for 9–16 in either body.

**The generic stream container can represent codes 9–16.** `CVertexStreams::allocate(mask)` (`0x005a135c`, 0xa8 bytes) adds code 0 to the mask but does not clear bits 9–16. The constructor (`0x005a113c`, 0x134 bytes) walks set mask bits and, when no explicit source record is supplied, writes each set bit's index into the stream record's 16-bit code field at record `+8`. `setupStreams(data, mask, bool)` (`0x005a178c`, 0xec bytes) checks the existing record code against the requested mask and copies data/layout fields; it does not assign a new code. `setStream` (`0x007d46fc`, 0x6c bytes) likewise copies buffer, offset, type, component count, and stride into the caller-selected record without changing record `+8`. Thus these routines preserve an already allocated code, including any of 9–16.

**Serialized stream readers accept raw code values, conditionally.** `io::loadVS` (`0x006b73d8`, 0x844 bytes) reads a 16-bit field from a parsed stream header at `0x006b7570` (`ldrh r2, [r8]`) and stores it at `0x006b7578`; the header loop loads that value at `0x006b74f8` and accumulates `1 << code` at `0x006b7500`. It calls `CVertexStreams::allocate` at `0x006b7624`, then fills allocated records through the `setStream` clone at `0x006b7a4c`. `loadMB` (`0x006b7c1c`, 0x168 bytes) directly calls `loadVS` at `0x006b7c5c`, so this is an engine path capable of creating 9–16 **if** its input headers contain those values. `io::loadHeadersAndSkipData` (`0x006b6cac`, 0x72c bytes) has a parallel descriptor path: it uses a serialized 16-bit code in a shift/OR mask at `0x006b6e50`–`0x006b6eb8`, allocates at `0x006b6ef0`, and fills stream records at `0x006b6f48`. The direct-call scan finds no direct BL caller for this helper; indirect or externally supplied entry is not resolved. These are format capabilities, not evidence of an actual 9–16 record in the shipped content.

**Append-buffer baking has layouts for 9–16, but its current producer is shader reflection.** `CGenericBaker::configureAppendBuffer` (`0x00609ba4`, 0x184 bytes) reads 16-bit codes from the shader's active-attribute list and calls `CAppendMeshBuffer::configureStream` at three callsites (`0x00609c7c`, `0x00609ce4`, `0x00609d10`). Its switch at `0x00609bec`–`0x00609c64` routes codes 1–16—including 9–16—to the `0x00609cd0` branch, which configures scalar type 6, two components, and an eight-byte stride. The code-0, 17, and 20–27 cases route to type 6 / three components / 12 bytes; codes 18–19 route to type 1 / four components / four bytes. `configureStream` (`0x006b8950`, 0x150 bytes) indexes a per-code stream slot and appends that code to the configured list. `allocateConfiguredVertexStreams` (`0x0058cc74`, 0x160 bytes), reached from the end-of-batch callback at `0x005902e0`, turns that list into a mask, allocates a sparse `CVertexStreams`, and copies each configured layout into the matching code record.

The generic baker's list comes from the `IShader` held by `CGenericBaker`; its constructor stores the shader pointer at `this +8`. In `CGLSLShader::linkProgram` (`0x006de9f8`, 0x5a4 bytes), active GL attribute names are passed to `guessShaderVertexAttribute` (`0x006dbb50`, 0x994 bytes), and results above 29 are skipped at `0x006dec0c`–`0x006dec14`. The already-audited classifier alias table contains no aliases for 9–16. Therefore the append-buffer switch can configure these numeric values, but the normal name-reflection path shown here does not supply them. `setupArrays` (`0x005b6584`, 0x1e4 bytes) consumes the reflected records downstream; no path from a recognized shader name to code 9–16 was established.

The two direct `setStream` callsites in `loadVS` / `loadHeadersAndSkipData` are described above. The six direct calls to the non-cloned `setStream` at `0x007d46fc` are in `BufferedRenderer` (`0x007d4904`, `0x007d495c`, `0x007d49b4`) and `render_handler_glitch` (`0x007d633c`, `0x007d6398`, `0x007d63f4`) constructors. Those initialize only codes 0, 1, and 18. The whole-file xref scan finds 18 direct `addStream` calls, all in the two Collada constructors; the complete callsite lists and caveat that indirect calls are excluded are in the manifest.

## Evidence index

Selected primary function ranges are below. The manifest contains the exact range size and SHA-256 for these and 12 additional supporting functions.

| Function | APK ELF VA | Size | Range SHA-256 |
|---|---:|---:|---|
| `addStream` | `0x006bccf0` | `0x290` | `6b31fed2a17e981495a87a9a3dcb4ab7a65aefcf249972cb1590dedf1dc58034` |
| `CMeshBuffer` C2 | `0x006bcf80` | `0xa78` | `7f9395749140adaefd3f58ceaa581417a0767ad64e045e1bbfd18d6403f64cb2` |
| `CMeshBuffer` C1 | `0x006bd9f8` | `0xa78` | `175e56defbf9666c5cb012f976f63d79989b717a03b354c6543a0ab70b48a551` |
| `CVertexStreams` constructor | `0x005a113c` | `0x134` | `06fa519a5d66b89ea7f831e122add6825e4502e4236c52263da2ca1fdbe534c1` |
| `CVertexStreams::allocate(mask)` | `0x005a135c` | `0xa8` | `5744e0ab783865ff3b4b632bc50c7b98906982dcf7a0b9523ccb81cd231e8725` |
| `CVertexStreams::setupStreams(data)` | `0x005a178c` | `0xec` | `985be40058f4d862eb1e37b5c3d9c850e1a3b5dccce2b3f307c3cd0eb6b32045` |
| `CVertexStreams::setStream` | `0x007d46fc` | `0x6c` | `d7ea5c6ea16e533112f3481a188ebca9cbd04a09ceb856c227e13485d4081237` |
| `io::loadVS` | `0x006b73d8` | `0x844` | `2dad6e8bfbfce9c3b16efe06f655297505e6ec7087c79d1a1327c14d5ad5587b` |
| `CGenericBaker::configureAppendBuffer` | `0x00609ba4` | `0x184` | `34e44852c865e27033d0aba332b2baa245e5e75c6911b32ce1046b462f0478b3` |
| `CAppendMeshBuffer::configureStream` | `0x006b8950` | `0x150` | `fd7b12b36b9e764c498d0a31a6d43bc035aaee790680f13cd63861c016ba684c` |
| `CAppendMeshBuffer::allocateConfiguredVertexStreams` | `0x0058cc74` | `0x160` | `82302752fdfcd87f9036783fede57aa1d69585be3abe4df0a753d368775f31e7` |
| `CGLSLShader::linkProgram` | `0x006de9f8` | `0x5a4` | `28361c0616a3366900ac7a3dc1c7b5bc77857fb68bb4a3ec4e55529bc4d1d830` |

## Unresolved extent

Current evidence establishes that generic structures and serialized loaders can carry numeric values 9–16, but it does not establish that supplied game data contains any such header or that a recognized shader binds one. The supplied cache ZIP has 7,088 entries and 2,904 `.bdae` entries, but zero entries whose names end in `.vs` or `.mb`; this filename-only check does not rule out stream records embedded in other containers. The prior reachable-BRES scan found no 9–16 values in serialized material remap pairs. Accordingly, **no verified live producer for codes 9–16 is established yet**. Their semantic names, real asset examples, shader aliases, and end-to-end GLES use remain unresolved.

The next useful evidence is a real input to `loadVS` or `loadHeadersAndSkipData` whose parsed header includes 9–16, or a separate caller that writes those code values into `CVertexStreams`. No builds or tests were run; this work only generated and verified static disassembly evidence.
