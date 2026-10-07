# SNode attachment selectors and factory path

## Findings

`CColladaDatabase::constructNode` reads each attachment selector from the first word of an 8-byte record, subtracts one, and dispatches through a 13-entry ARM switch table. Selectors 5, 6, 7, and 8 all branch to `0x0061b424`, the loop increment and count check. That route does not read the record's second word or call a constructor or factory. The switch alone does not establish names or meanings for those values.

The read-only corpus scan in [selector-corpus.json](selector-corpus.json) followed each type-6 root scene reference to its named `SVisualScene`, then traversed the selected `SNode` records and child arrays. It scanned 2,901 BDAE files: 1,563 had and resolved a selected visual scene, with 21,472 recursive node records and 11,648 attachment records. Selectors 5–8 did not occur in those active scene trees. The only observed attachment selectors were 1, 2, 3, 4, 9, 12, and 13; selector 13 occurred once. This cache result does not assign semantics to unobserved tags.

## Selector 13 in the serialized asset

The one active selector-13 attachment is in `data/3d/characters/prince/prince_modular.bdae` (3,207,072 bytes; SHA-256 `7e998e60bdfcbc9237c9867bd8de146f6d59bc9f8c9c028cd4d2391f460f0b3e`). Its root scene entry at file offset `0x6ae84` has tag 6 and resolves the name `prince_modular.max` to the visual-scene descriptor at `0x65bb8`. The selector is in an `SNode` record at `0x65c18`; its single 8-byte attachment record is at `0x66668`:

| Serialized location | Observed value / use |
| --- | --- |
| `SNode+0x40` | Attachment count `1`. |
| `SNode+0x44` | Attachment array pointer field, fixed by the BRES fixup table to `0x66668`. |
| `0x66668` | Selector word `13`. |
| `0x6666c` | Fixup-marked second word, pointing to `0x66670`. |
| `SNode+0x48` | Raw word zero in this sample; passed onward as the factory's `void*` argument. |

The selector-13 block at `0x0061b568` loads the attachment record's second word and passes it to the exported `CColladaDatabase::constructModularSkin(SInstanceModularSkin*, CRootSceneNode*) const` routine. The named function signature and this call establish that the target at `0x66670` is consumed as an `SInstanceModularSkin*` on this route.

The mesh constructor gives a bounded partial payload layout. `CModularSkinnedMesh::CModularSkinnedMesh` reads instance words at offsets `+0`, `+4`, and `+8`: it adds words `+0` and `+8` for the number of loop iterations, reads the pointer at `+4`, indexes that array at 16-byte stride, and passes each entry's `+4` word to `CModularSkinnedMesh::getModuleId(char const*) const`. In this sample the two count inputs are 4 and 0, and the array at `0x66680` contains four 16-byte rows. Their `+4` words point to the strings `#MC_Feet__naked-mesh-skin`, `#MC_Hands__naked-mesh-skin`, `#MC_Head__naked-mesh-skin`, and `#MC_Torso__naked-mesh-skin`.

These observations establish pointer locations, the constructor's count arithmetic, the row stride, and the string argument use. They do not establish the semantics of the other row words, a complete `SInstanceModularSkin` size, or a generally safe payload decoder. The original constructor does not validate the nested payload's full file-backed extent.

## Concrete factory and runtime node type

`ColladaFactory::s_factory` is an 8-byte BSS symbol at `0x009a1ed8`. The app's global initializer at `0x003508f4` loads the `ColladaFactory` vtable address from a relocated GOT slot, adds the 8-byte Itanium address-point offset, and stores that pointer at the static object's first word. It also clears a byte at object offset `+4`; no field name is assigned to that byte here.

`SceneManager::LoadScene` passes the `s_factory` address in `r3` to `CColladaDatabase::constructScene(..., CColladaFactory*)` at `0x0061bbd4`. `SceneManager::LoadFXLib` passes the same address in `r2` to the `CColladaDatabase(char const*, CColladaFactory*)` constructor at `0x0060f25c`; that constructor stores it at database offset `+4`. This establishes that the concrete app factory object is supplied to the Collada scene-loading path.

For selector 13, `constructModularSkin` calls factory vptr offset `+0x5c`, selecting table offset `+0x64` in the concrete `ColladaFactory` vtable. That slot inherits the base `CColladaFactory::createModularSkin` target at `0x00631560`. The implementation constructs `CModularSkinnedMesh` from the `SInstanceModularSkin*` and returns the mesh handle. `constructNode` then calls factory vptr offset `+0x50`; the concrete `ColladaFactory` vtable's table offset `+0x58` points to `ColladaFactory::createModularSkinNode` at `0x00350854`. The override ignores the third `void*` argument and constructs `ModularSkinnedMeshSceneNode` through its constructor at `0x0035af00`. Therefore the runtime node class on the observed app-factory route is `ModularSkinnedMeshSceneNode`; the meaning of the passed `SNode+0x48` word remains unknown.

The exact function and data hashes, ELF file offsets, vtable words, and full raw ARM ranges are in [function-manifest.json](function-manifest.json) and [reference/attachment-factory-excerpts.asm](reference/attachment-factory-excerpts.asm). The manifest binds the ranges to the original APK ELF hash recorded by the earlier [serialization analysis](../ANALYSIS.md).

## Limits

The selector switch proves only the behavior of this constructor path. No source-format enum names are assigned to selectors 5–8. The cache scan shows those tags are absent from active selected scene trees in the recovered 2,901-file corpus, not that they are invalid in every build or path. Selector 13 has one active serialized sample; its partial payload layout and concrete runtime node type are grounded, but a complete BDAE schema and checked parser remain unresolved. No builds or tests were run for this audit.
