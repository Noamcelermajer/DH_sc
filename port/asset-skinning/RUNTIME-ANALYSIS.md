# Skin, modular-skin, and morph runtime trace

## Evidence basis

The additions in this note were checked against `lib/armeabi-v7a/libDungeonHunter2.so` from `Dungeon-Hunter-2-HD-v1-0-2.apk`. The ELF SHA-256 is `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`; the APK SHA-256 is `32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`. Each new function range is indexed in [runtime-functions.json](reference/runtime-functions.json), and its full copied ARM range is in [runtime-functions.asm](reference/runtime-functions.asm). For every range, the address was mapped through one file-backed `PT_LOAD` segment, and the copied address/byte listing matched the mapped ELF slice exactly.

This extends the checked controller-table boundary described in [ANALYSIS.md](ANALYSIS.md). It records runtime accesses and calls; it does not define an asset parser.

## Construction paths

The existing controller trace shows `CColladaDatabase::constructController` dispatching record word `+0` to skin when it is `0`, and to morph when it is `1`. The skin path then reaches `CSkinnedMesh`; its constructor copies controller words `+4` and `+8` into runtime object state and instantiates the mesh.

The generic `onDemand<SSkinData<float>>::get` range already included in the original manifest establishes the resource handoff. When the resource has no loaded pointer, it reads the size word from the reader object at `+8`, clears that word's low two bits before allocation, stores the allocated pointer in resource state at `+0x0c`, and calls the reader object's virtual entry at `+8`. The wrapper does not inspect or decode the resulting bytes. This identifies the callback boundary but not which per-asset reader supplies it.

The modular path is separately bounded through three calls: `CColladaDatabase::constructModularSkin` makes a factory virtual call; `CColladaFactory::createModularSkin` allocates and calls `CModularSkinnedMesh`'s constructor at `0x00649120`; that constructor configures the runtime module collection and calls `updateBuffer`. The constructor receives `SInstanceModularSkin*`, but its reads do not establish the complete source record extent.

## Runtime skin behavior

- `CSkinnedMesh::skin(unsigned int)` indexes a runtime per-buffer record at 20-byte (`0x14`) stride, revalidates its technique, and invokes the selected technique path. The record has state bytes at `+0x10` and `+0x11` and a technique-related pointer at `+0x0c` in this path.
- `CColladaSoftwareSkinTechnique::preparePtrCache` reads a count at the object referenced from `this+0x0c` plus `0x74`, and a pointer table at `+0x78`. It passes each table entry to `ISceneNode::getSceneNodeFromScopeID`, then invokes the returned node's virtual entry at `+0x38` and stores the result in a runtime pointer list. These are named-node lookups in the scene scope; the instructions do not prove that the serialized entries are bone names.
- `prepareCache` processes the pointer list, calls the matrix multiplication helper identified in the symbol index as `CMatrix4<float> operator*<float, SMatrix>`, and advances its output cursor by `0x44` bytes per entry.
- In the software `skin` loop, the selected attribute-29 stream supplies byte indices that are multiplied by `0x44` to select runtime transform records, and float32 weights are read from the same per-vertex block at `+4,+8,...`. `N = byte[SSkin+0x98]` drives the influence loop and runtime stride `4*(N+1)`; for `N=4`, the consumer reads four index bytes followed by four float weights in a 20-byte block. This proves the runtime access pattern, not the serialized resource extent or BRES-mapped file bounds. See the [payload consumer trace](serialization/PAYLOAD-CONSUMER-TRACE.md) for callsites, vtables, and range hashes.

## Modular and morph runtime behavior

`CModularSkinnedMesh::setModule` addresses an 8-byte runtime slot using the supplied module index, reads or writes the intrusive pointer at slot `+4`, updates reference counts, and calls `updateBuffer` when the slot changes. The `skin(unsigned int)` method indexes a separate 32-byte runtime record array, checks its byte at `+0x1c`, and iterates the associated module-buffer range before invoking virtual mesh operations. These are runtime container and dispatch facts; they do not establish the serialized `SInstanceModularSkin` table schema.

`CMorphingMesh::morph(unsigned int)` processes the runtime target and buffer collections. It computes the target collection length from the begin/end pointers with a right shift by three, so the runtime `STarget` entries have an 8-byte stride in that collection. It maps and updates runtime buffer data, but this range does not establish how morph targets, target weights, or deltas are serialized.

## Serialization boundary

The skin and morph constructors prove that controller words `+4` and `+8` are consumed to build runtime objects, while the on-demand wrapper proves only allocation and callback dispatch. No selected range decodes `SSkinData<float>` into bounded joint/index/weight arrays. The byte selector and 0x44 transform records are downstream runtime evidence, not proof of the serialized weight or bone record layout. The same boundary applies to modular module tables and morph targets.

Therefore the checked 12-byte `SController` record table remains the safe parsed boundary. A parser for skin weights, modular modules, or morph targets still needs the exact `onDemandReader` implementation or another producer/accessor that proves each record's extent, counts, and element widths.

No source API, parser, tests, or builds were added.
