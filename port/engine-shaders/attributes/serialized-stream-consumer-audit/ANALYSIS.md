# Serialized vertex streams 9–16: consumer trace and boundary

## Scope and result

This note follows the numeric stream codes 9–16 through the supplied ARM32 engine binary, from serialized stream loading to the GLES draw path. It answers two separate questions: whether the engine can carry and submit one of these streams, and whether the shipped shader-reflection path can request one of these codes. The first is supported conditionally; the second has a concrete boundary. No actual game draw using code 9–16 was established.

The APK is `Dungeon-Hunter-2-HD-v1-0-2.apk` (SHA-256 `32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`). Its `lib/armeabi-v7a/libDungeonHunter2.so` member matches `work/libDungeonHunter2.so` (SHA-256 `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`). Selected functions below lie in PT_LOAD 0 (`p_offset=0`, `p_vaddr=0`), so ELF virtual address equals file offset. Hashes cover exactly the stated function byte ranges.

## Serialized input can create codes 9–16

`io::loadVS` at `0x006b73d8` (size `0x844`, SHA-256 `2dad6e8bfbfce9c3b16efe06f655297505e6ec7087c79d1a1327c14d5ad5587b`) reads a 16-bit stream code from each parsed header (`0x006b7570`), saves it (`0x006b7578`), then forms an allocation mask with `1 << code` (`0x006b74f8`–`0x006b7500`). Values 9–16 are within the 32-bit mask range. It allocates `CVertexStreams` at `0x006b7624` and installs the matching stream records through the `setStream` clone at `0x006b7a4c`.

`io::loadMB` at `0x006b7c1c` (size `0x168`, SHA-256 `0abc0b7d75eedf5317b069add32408dd873a1c30570c9ab791490d40dd69cae6`) calls `loadVS` at `0x006b7c5c` and stores the returned stream set in a `CMeshBuffer`. The only direct `loadMB` call found in the ELF is in `CBatchMesh::load` at `0x0057e41c`; that loader is `0x0057db94` (size `0x990`, SHA-256 `b33556e92d7476b23b6023c8f25ace245a2aac7b9ac83e394f389f4ef289c6b6`). Thus the binary has a batch-mesh route that can carry a serialized 9–16 stream into scene rendering if the loaded file contains such a descriptor.

The ordinary Collada `CMeshBuffer` constructors instead create only codes 0–4 and 17–29; their exact evidence is in the [producer audit](../producer-stream-audit/ANALYSIS.md). The supplied cache census read 2,901 BRES `.bdae` images and found zero `.mb` members; this does not rule out a differently named or externally supplied batch file. Its 9,653 reachable serialized material-map pairs contain no value 9–16 in either pair position; see the [remap census](../serialized-remap-audit/ANALYSIS.md) and [census data](../serialized-remap-audit/corpus-census.json). These corpus results do not prove that every possible runtime input lacks those codes.

## Exact GLES consumer

`CBatchSceneNode::renderSolidBatch` (`0x005800e8`, size `0x408`, SHA-256 `92f8f60d6815f75d6d9e172010ee9fa3147733e205a6a318c0f6624ca23d3b31`) sets the batch material and calls `IVideoDriver::draw`. The driver wrapper is `0x005adfa8` (size `0x38`, SHA-256 `8759f549895af320ff70cdb172a6bfd4a847471f05422d6ce48fee0240d3c816`). In the GLES implementation, `CCommonGLDriver::drawImpl` at `0x005b8bc8` (size `0x1c0`, SHA-256 `dfcb26685c696eaf6be64f6c911ed5adb7b12dd5ad0911a489b3e7c9bf899363`) calls `setupArrays` at `0x005b8cbc`, then submits primitives at `0x005b8cc0`.

`CProgrammableGLDriver::setupArrays` at `0x005b6584` (size `0x1e4`, SHA-256 `6f2a62d4dcd27b55bde8de4f2c4b15dc237474b8ddef46b64564fd09ad96b4d5`) iterates the shader's 8-byte reflected-attribute records. It reads the engine code from record `+4` and GL location from `+6` (`0x005b666c`–`0x005b6674`), indexes the 30-byte vertex map by that engine code (`ldrb [map, code]` at `0x005b6678`), and, for an assigned stream, selects a 16-byte stream record by ordinal (`0x005b6684`–`0x005b6694`). The record's component count, scalar type, stride, buffer base, and offset feed `glVertexAttribPointer` at `0x005b6654`; the GL location is the call's attribute index. A missing or constant-backed mapping reaches `glVertexAttrib4f` instead.

Consequently, if a reflected record with engine code 9–16 existed and its map entry named a valid stream ordinal, the GLES setup code would bind it: these codes index within the 30-byte map. This is consumer capability, not proof that the APK creates such a reflected record or that any shipped mesh supplies the stream.

## Reflection boundary and remap nuance

`CGLSLShader::linkProgram` at `0x006de9f8` (size `0x5a4`, SHA-256 `28361c0616a3366900ac7a3dc1c7b5bc77857fb68bb4a3ec4e55529bc4d1d830`) is the active GLES attribute-list builder. After `glGetActiveAttrib`, it calls `guessShaderVertexAttribute` at `0x006dec08`. The classifier at `0x006dbb50` (size `0x994`, SHA-256 `65660efe31f77bde4d7f1ec7b6aee862f0fe66799ab6564b9380b834e6befbcd`) has initialized aliases for codes 0–8 and 17–29, but none for 9–16; an unmatched name returns `0xff`. `linkProgram` compares the returned value to 29 at `0x006dec0c` and branches away for values greater than 29 at `0x006dec14`, before recording the engine code and GL location. The map initializer and aliases are separately catalogued in [`shader-attribute-aliases.json`](../shader-attribute-aliases.json).

There is no alternate reflected-record input through CGLSL shader serialization: `CGLSLShader::deserializeAttributes` at `0x006de87c` is a four-byte `bx lr` stub (SHA-256 `379bec29dccd0a93c94826144d7ef6e42fab64ef195a3b8313a16926f66f388f`); `serializeAttributes` is also a four-byte return stub. Therefore the normal Android GLES path cannot ask `setupArrays` for code 9–16 by shader attribute name.

One indirect route remains structurally possible. `CVertexAttributeMap::set` at `0x005a0708` (size `0x80`, SHA-256 `3429093c705e188296b049b6cb906bd0cc3ee878784d5884e6431e1f8ea7b8ad`) reads each pair as `(destination engine code, requested stream code)`, looks up the requested stream, then writes its ordinal into the destination map slot. A pair such as `(supported shader code, 9)` could therefore let an ordinary reflected code consume stream 9. The scanned cache has no 9–16 values in either pair position, but this does not cover arbitrary runtime-created maps or files outside that corpus. This route is unverified, not disproved by the missing aliases.

`CGenericBaker::configureAppendBuffer` has a 1–16 layout branch that gives codes 9–16 scalar type 6, two components, and an eight-byte stride. Its input list comes from the shader's active-attribute records; because the reflection boundary above excludes 9–16, that branch is not evidence of a live producer in the normal GLES path. The numeric codes' source-level names and meanings remain unknown.

## Evidence references and limits

The ARM excerpts and range hashes for `loadVS`, `loadMB`, `setupArrays`, shader reflection, and Collada constructors are recorded in [`producer-stream-ranges.json`](../producer-stream-audit/producer-stream-ranges.json), [`attributes-functions.json`](../attributes-functions.json), and [`original-functions.json`](../../../engine-rendering/buffers/original-functions.json). The stream-record field layout and map behavior are explained in the [attribute analysis](../ANALYSIS.md); the GLES buffer/draw path is in the [buffer analysis](../../../engine-rendering/buffers/ANALYSIS.md).

No actual `.mb` input header containing code 9–16 was observed in the supplied cache, which has no `.mb`-suffixed members. No shader name that resolves to one of those codes, serialized remap using one as a source, or GLES draw binding one was established. The semantics and real-asset use of codes 9–16 remain unresolved. This is static evidence only; no builds or tests were run.
