# Controller and skinning data: evidence checkpoint

## Decision

No parsed skinning view is added at this checkpoint. The established CPU-safe boundary is the checked 12-byte controller record table already exposed by `port/engine-resources`. Assembly establishes its dispatch word and shows how the skin and morph runtime constructors consume the other two words, but it does not establish the serialized extents and field meanings needed to safely follow those pointers.

The assembly and addresses below assume the original `libDungeonHunter2.so` SHA-256 recorded in `port/engine-resources/original-functions.json`:
`36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`.
All addresses are original ELF virtual addresses. The selected 12 complete ranges are recorded in [original-functions.json](original-functions.json), and their ARM listings are copied into [reference/original-functions.asm](reference/original-functions.asm). Each SHA-256 was computed from the original ELF slice after mapping its address through a file-backed `PT_LOAD` segment. Every copied ARM range was compared byte-for-byte with its original ELF slice, and all lengths match the indexed sizes. The APK entry `lib/armeabi-v7a/libDungeonHunter2.so` has the stated library SHA-256; the containing APK SHA-256 is recorded in the manifest. Full source listings remain under the sibling recovered evidence tree `recovery/dh2-reconstruction/recovered/native/assembly/libDungeonHunter2.so/`.

## Established record and dispatch

`port/engine-resources/resources.cpp` bounds the controller table using the root-relative count and file-offset fields at `+0x70` and `+0x74`, a 12-byte serialized stride, and the enclosing file length. It exposes a checked raw-record accessor; it does not assign meanings to the three words.

`CColladaDatabase::constructController(IVideoDriver*, SController*, CRootSceneNode*) const`, VA `0x0060fa24`, size 76 bytes (`glitch_collada_CColladaDatabase-f458595c81f3-001.asm`), loads the first word at `SController+0` and dispatches value `0` to `constructSkin` at `0x0060f924` or value `1` to `constructMorph` at `0x0060f9a4`. Other values produce a null result in this path. The names are also supported by the corresponding `CColladaFactory::createSkin` (`0x006315cc`) and `createMorph` (`0x006318c8`) routines in `glitch_collada_CColladaFactory-db06bc565b1a-001.asm`.

## What the consumers establish

- `CSkinnedMesh` construction, VA `0x006664f0`, size 1,288 bytes (`glitch_collada_CSkinnedMesh-976a300b44b5-001.asm`), copies the words at `SController+4` and `SController+8` into runtime object fields, then calls `CSkinnedMesh::instanciateMesh` at `0x00664af8` (396 bytes). The instantiation path resolves runtime geometry or controller objects by name and sizes an `SSkinBuffer` vector using a runtime mesh-buffer count. The constructor later requests `onDemand<SSkinData<float>>::get` at `0x00663bd0` (108 bytes), using a field of the resulting runtime object.
- `CMorphingMesh` construction, VA `0x0064baa0`, size 216 bytes (`glitch_collada_CMorphingMesh-832437b81c01-001.asm`), also copies the controller words at `+4` and `+8` into runtime fields and calls `CMorphingMesh::instanciateMesh` at `0x0064b700` (712 bytes). That path constructs runtime geometry/controller objects, follows runtime target data, and sizes runtime buffers from a mesh-buffer count.
- The on-demand skin-data helper accepts an `onDemandReader`, allocates from size metadata, and invokes the reader. This gives the loader handoff, but does not by itself prove the contents, internal counts, or cross-record bounds of the serialized `SSkinData<float>` payload.

These consumers establish runtime use and relationships, not a standalone serialized schema. They also cross reference-counted object construction, virtual calls, and video/mesh interfaces. They are not a CPU-only parser contract. The focused [runtime trace](RUNTIME-ANALYSIS.md) now follows the generic reader handoff, software skin transform cache and selector use, modular mesh dispatch, and morph target runtime collection while preserving the serialized-format boundary.

## Cache corroboration

Read-only BRES observations from recovered cache files corroborate the table envelope. In these samples the BRES fixup table marks each record's `+4` and `+8` words as relocated fields. The raw words below are recorded as bytes/offset values only; they do not establish target types or semantic names.

| File | SHA-256 | Root / controller table | Records (three 32-bit words) |
| --- | --- | --- | --- |
| `files/data/3d/characters/yeti/yeti.bdae` | `bb47684cddc1e2f098cd2cfaf38a5847d33611387f22f534d7e5399fba5db7cf` | `0x1b48 / 0x3878`, count 2 | `(0, 0x14f8, 0x3890)`; `(0, 0x1538, 0x39a8)` |
| `files/data/3d/characters/dragon/dragon.bdae` | `97e980e2b5516fcff63f713427a729c736d9d955a25309cd5b56bfb78cf55fce` | `0x3010 / 0x6528`, count 1 | `(0, 0x21b4, 0x6534)` |

All three sampled records select dispatch value `0`. These examples exercise the skin constructor path; they do not establish the `+4` or `+8` target schema and do not corroborate the morph branch. No type-1 geometry payload is used to infer any controller or skinning layout.

## Unresolved fields and evidence needed

- `SController+4`: target kind, semantic role, pointed-to extent, and any nested count/stride are not established. The constructor copies it into runtime state, but the copy alone does not distinguish a string, structure, or other relocated object.
- `SController+8`: target kind, semantic role, and pointed-to extent are not established. The skin path later reaches skin-data loading through runtime state derived from this word, but the intermediate runtime conversion does not give a validated serialized range.
- The serialized `SSkinData<float>` layout is unknown: bone/joint identifiers, vertex association, influence counts, weight encoding, element widths, ordering, and all array bounds remain unproven.
- The relationship between skin data and geometry vertices, the number of joints/weights, and the relevant controller/resource-name bindings remain unknown.
- The morph target record layout is not reconstructed here. Its runtime loop is evidence of object consumption, not a bounded serialized morph schema.

To add a CPU-only view, recover a producer, reader, or accessor that proves each pointed-to record's full extent and scalar/array semantics, then check those bounds against representative BRES files and relocation entries. The generic `onDemand<SSkinData<float>>::get` allocation and callback handoff are now mapped, but the asset-specific reader that fills and decodes this payload remains unidentified. The dedicated [serialized-route audit](serialization/ANALYSIS.md) records the named controller/factory path, generic byte-reader vtable, and modular constructor access boundary; the [reader gap audit](serialization/READER-GAP-AUDIT.md) gives exact hashes and direct-call evidence. Counts, element sizes, and GPU-facing relationships remain unproven. Until that reader or an equivalent producer is recovered, the checked raw controller table is the supported boundary.

No source API was added. No tests or builds were run for this analysis-only checkpoint.
