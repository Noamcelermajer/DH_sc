# Serialized skin, morph, and modular route audit

## Finding

The named BRES controller routes reach runtime constructors, then hand deferred skin bytes to a generic reader. The checked controller table is still the only bounded serialized skin/morph structure established here: a 12-byte record table exposed by `port/engine-resources` with controller count/pointer at root `+0x70/+0x74`. No named route in this trace decodes those deferred bytes into a bounded joint, weight, index, morph-delta, or complete modular-section schema.

The modular constructor gives a partial access pattern: it reads words at `SInstanceModularSkin +0`, `+4`, and `+8`, sums `+0` and `+8`, and uses that result as a loop limit. It traverses 16-byte entries from the pointer at `+4` and passes each entry's `+4` word to `CModularSkinnedMesh::getModuleId`. The function does not establish the pointed-to array's extent or validate the loop against a serialized boundary. The field roles and complete record extent therefore remain unresolved.

## Evidence route

All addresses are original ELF virtual addresses from the APK's `lib/armeabi-v7a/libDungeonHunter2.so`. Full exact ranges, direct hashes, mapped file offsets, and copied ARM instructions are in [serialization-functions.json](serialization-functions.json) and [serialization-routes.asm](reference/serialization-routes.asm). The COnDemandReader vtable bytes are separately indexed in the manifest and shown in [reader-vtable.txt](reference/reader-vtable.txt).

1. `CColladaDatabase::constructController(SController*)` (`0x0060fa24`, 76 bytes) reads the dispatch word at record `+0`: value 0 calls `constructSkin`; value 1 calls `constructMorph`; other values return no mesh on this path. The index overload (`0x0060fa70`) resolves a controller table item before this gate. The name overload (`0x0061aa00`) resolves by controller name before the same gate. The `SInstanceController` overload (`0x0061ace8`) gets a controller name from its record and enters the name route; its remaining loop handles instance material bindings.
2. `constructSkin` (`0x0060f924`) and `constructMorph` (`0x0060f9a4`) make factory virtual calls with the controller record. `CColladaFactory::createSkin` and `createMorph` allocate and call the `CSkinnedMesh` and `CMorphingMesh` constructors. The copied function ranges show constructor dispatch, not an independent payload parser.
3. In `onDemand<SSkinData<float>>::get` (`0x00663bd0`), the resource record's `+0x0c` cached pointer is checked. If empty, the code reads the size word at `+8`, aligns the allocation size down with `& ~3`, stores the allocated pointer at `+0x0c`, and invokes reader vtable slot `+8` with the size word, file-offset word at `+4`, and destination buffer. It does not inspect the returned bytes.
4. The APK's `COnDemandReader` vtable at `0x00978558` contains the function addresses `0x0060b2b8` and `0x0060b304` in its read slots. `COnDemandReader::read` (`0x0060b2b8`) passes the offset to the underlying file's virtual slot `+0x18` with a zero flag, then passes destination and requested size to file slot `+0x0c`. The second overload has the same seek/read sequence. This is byte transport; it has no skin-specific field parsing.
5. The modular route `constructModularSkin` (`0x0060e6f0`) loads the factory from `CColladaDatabase +4` and dispatches factory virtual slot `+0x5c`, passing through the `SInstanceModularSkin*`. The factory allocates `CModularSkinnedMesh` and calls its constructor. The constructor's observed source reads and 16-byte loop are described above; it does not validate an enclosing serialized range.

The named symbol inventory from `llvm-nm --defined-only --print-size --format=posix --demangle` has exactly one symbol containing `SSkinData`: the generic `onDemand<SSkinData<float>>::get`. The only named `glitch::collada::*::getData(onDemandReader&)` method is `SAnimationSegment::getData` at `0x0060bee4` (376 bytes), already captured in `port/asset-payloads/original-functions.json`; it is an animation-segment path and does not appear in the controller routes above. This is a named-symbol and traced-route boundary, not a claim that no anonymous or indirect code elsewhere in the ELF can touch these bytes.

The detailed bounded search result, exact reader/vtable hashes, full-ELF direct-call count, and remaining payload-reader handoff gap are in the [reader gap audit](READER-GAP-AUDIT.md).

## Provenance and limits

Source APK SHA-256: `32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`. Native ELF SHA-256: `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`. Each selected code VA maps through exactly one file-backed `PT_LOAD`; all 16 copied disassembly ranges were reassembled and byte-compared to the APK ELF slices. The reader vtable's 24 raw bytes were independently hashed from its mapped slice.

The record dispatch proves only the controller type gate. The generic deferred reader proves allocation and byte loading, not the contents' scalar types, array counts, index widths, weight representation, morph delta layout, or cross-record bounds. For modular records, even though a 16-byte iteration stride is used at runtime, the input function does not prove the complete record size or the total array span. No skinning parser or speculative C++ was added. No tests or builds were run.
