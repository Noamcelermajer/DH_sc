# Vertex attribute reflection and stream binding

## Source and scope

This trace uses `lib/armeabi-v7a/libDungeonHunter2.so` from `Dungeon-Hunter-2-HD-v1-0-2.apk`. APK SHA-256: `32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`. ELF SHA-256: `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`.

All selected ranges are in PT_LOAD segment 0 (`p_offset=0`, `p_vaddr=0`, `p_filesz=0x955130`), so their file offsets equal their ELF virtual addresses. [`attributes-functions.json`](attributes-functions.json) records each size and SHA-256. Every ARM listing word was checked against the same file-backed ELF bytes. Exact reflected-name strings, ELF addresses, and NUL-inclusive hashes are in [`shader-attribute-aliases.json`](shader-attribute-aliases.json).

## Active-name classification

`CGLSLShader::linkProgram` is at `0x006de9f8` (1,444 bytes). After link success it queries `GL_ACTIVE_ATTRIBUTES` (`0x8b89`) and the maximum active-attribute name length (`0x8b8a`), then calls `glGetActiveAttrib` for each active index. It passes the returned name to `guessShaderVertexAttribute` at `0x006dbb50` (2,452 bytes).

The classifier lowercases the name and, if a dot occurs, looks up the suffix after the first dot. It searches an initialized static name map and returns `0xff` when there is no match. The alias and numeric-code pairs below are read from that map initializer. The integers are observed engine values passed through the shader and vertex-stream paths; labels beyond the exact aliases are not inferred.

| Engine code | Recognized lowercase aliases |
|---:|---|
| 0 | `pos`, `position`, `vertices` |
| 1 | `coord`, `coord0`, `texcoord`, `texcoord0` |
| 2–8 | `coord1`–`coord7`, respectively; also `texcoord1`–`texcoord7`, respectively |
| 17 | `normal`, `normals` |
| 18 | `diffuse`, `color`, `color0` |
| 19 | `color1`, `secondarycolor`, `alternatecolor` |
| 20 | `tangent`, `tangents`, `tangent0` |
| 21–23 | `tangent1`–`tangent3`, respectively |
| 24 | `binormal`, `binormals`, `binormal0` |
| 25–27 | `binormal1`–`binormal3`, respectively |
| 28 | `skinweights`, `skinweight` |
| 29 | `skinindices`, `skinindex` |

The initialized alias map contains no names for codes 9–16. `linkProgram` skips an active name when its classifier result exceeds 29. For recognized names it gets the GL location with `glGetAttribLocation`, interns and retains the name, then stores an 8-byte reflected record: shared-name pointer at `+0`, engine code as a 16-bit value at `+4`, and GL location as a 16-bit value at `+6`. The shader also maintains a bit mask keyed by the engine code.

## Vertex-map construction

`CVertexAttributeMap` has a four-byte intrusive-reference prefix followed by 30 attribute-map bytes. Its byte-array constructor copies exactly 30 bytes. Constructors that derive a map initialize those bytes to `0xff`, the observed unassigned-stream marker.

`makeDefaultAttributeMap` (`0x005a08f4`) walks the `CVertexStreams` records and writes `map[stream_attribute_code] = stream_index`. The records are 16 bytes; the stream's `E_VERTEX_ATTRIBUTE` field is at record offset `+8`. `CVertexStreams::getStream` (`0x005a0aac`) searches the ordered record span for the requested code and returns the matching record or the end pointer.

`CVertexAttributeMap::set` (`0x005a0708`) accepts a byte-pair list. For each pair it reads the destination map slot from byte 0 and the requested stream `E_VERTEX_ATTRIBUTE` code from byte 1. If the stream lookup succeeds, it stores that stream's ordinal in the destination slot. The optional boolean lets later lookups begin at the previous match, consistent with an ordered lookup sequence; the serialized rule that produces the flag and pairs is not recovered.

`CColladaFactory::createMaterialVertexAttributeMap` (`0x00634520`) walks the selected renderer passes and techniques, creates these vertex maps from the mesh's `CVertexStreams`, and stores map pointers through `CMaterialVertexAttributeMap::set` (`0x005df814`). This establishes the runtime material/pass mapping route. The focused [serialized-remap audit](serialized-remap-audit/ANALYSIS.md) follows the nested profile, technique, and subrecord arrays, identifies the pair count and byte-pointer fields, and scans reachable BRES records. It does not establish all producer-side stream assignments or make claims beyond the supplied corpus.

## GLES array setup

`CProgrammableGLDriver<CGLSLShaderHandler>::setupArrays` is at `0x005b6584` (484 bytes). For each reflected shader record it reads the engine code and GL location, then indexes the supplied 30-byte vertex map by engine code. An unassigned map byte or a missing stream takes the default-value path and calls `glVertexAttrib4f` using per-code constants.

For a stream-backed attribute it uses the mapped stream ordinal to select a 16-byte `SVertexStream` record. That runtime record contains the buffer pointer at `+0`, byte offset at `+4`, engine attribute code at `+8`, scalar-type code at `+10`, component count at `+12`, and stride at `+14`. `setupArrays` consumes the buffer, offset, scalar type, component count, and stride; it does not directly read the record's `+8` code because the reflected code was already used to index the map. The GLES call receives the reflected GL location, component count, table-translated scalar type, a computed normalization flag, stride, and the bound buffer base plus byte offset through `glVertexAttribPointer`. A buffer-state predicate can route a stream through the constant-value path; the source-level meaning of that predicate is not named from these bytes alone. The distinct 16-byte input `SVertexStreamData` layout and field copy into these runtime records is documented in the [buffer trace](../../engine-rendering/buffers/ANALYSIS.md).

The driver tracks enabled vertex arrays as a bit mask keyed by GL location. It calls `glEnableVertexAttribArray` or `glDisableVertexAttribArray` when that mask changes. This is the downstream use of the GL locations stored during reflection.

## Unresolved boundaries

- The string aliases and integer values are confirmed. Their complete source-level enum documentation and serialized representations are not recovered.
- Codes 9–16 have no initializer aliases in this function; their intended uses are unknown.
- The nested serialized remap layout and pair-byte roles are established by the [serialized-remap audit](serialized-remap-audit/ANALYSIS.md). Pass/technique selection semantics, flag meanings, and producer-side stream-code assignments remain unresolved; codes 9–16 were absent from the reachable remap pairs in the scanned cache.
- Scalar-type conversion table entries, the full default-attribute constant table, and runtime GLES behavior are not reproduced here.
- Which game shader sources and material records select these attributes is outside this trace.

The related buffer upload and draw path is documented in [`../../engine-rendering/buffers/ANALYSIS.md`](../../engine-rendering/buffers/ANALYSIS.md). Shader creation and linking context is in [`../ANALYSIS.md`](../ANALYSIS.md). No tests or builds were run for this evidence package.
