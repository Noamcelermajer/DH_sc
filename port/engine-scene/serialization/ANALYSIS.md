# BRES scene, node, transform, and camera construction

## Finding

The engine contains a bounded reader and runtime-construction path for `SVisualScene`, `SNode`, and `SCamera` objects. The route begins at `CColladaDatabase::constructScene`, resolves visual-scene entries, recursively constructs nodes, and hands camera records to `CCameraSceneNode`. This is enough to identify several common node fields and attachment dispatch tags from named use-sites.

This note records the engine path and proven accesses. It does not define every BRES root/library field or claim a standalone, bounds-checked scene decoder. The offsets below describe the `SNode*` and `SCamera&` inputs consumed by the recovered routines. Their containing serialized extents and unhandled fields remain unresolved.

## Construction route

1. `CColladaFactory::createScene` allocates a `0x1c4`-byte `CRootSceneNode`; its constructor initializes the runtime object and its `CSceneNode` base.
2. `CColladaDatabase::constructScene(driver)` obtains that root through the factory, walks a database-visible scene table, and selects entries whose first word is `6`. It resolves each selected visual-scene reference and calls `constructVisualScene`. It then calls the root post-load and URL-resolution routines.
3. `constructVisualScene(driver, SVisualScene*, root)` reads a count at `SVisualScene+0x08`, walks 8-byte entries from `+0x0c`, and processes entries whose first word is `6`. For a selected entry, the second word is dereferenced; its `+0x04` word, advanced by one byte, is passed to the named visual-scene lookup overload.
4. `constructNode(driver, SNode*, root)` creates or selects the runtime node, handles the node's attachment records, applies common transform/visibility values, and recursively constructs its children.
5. The same node attachment dispatch has named routes for camera, controller, geometry, light, emitter, GNPS emitter, coronas, and force construction. The camera route reaches `constructCamera` and `CCameraSceneNode` construction.

The entry name `SVisualScene` and the route are supported by exported symbols and the exact ARM ranges in [serialization-ranges.json](serialization-ranges.json). Numeric selector values below are instruction-level dispatch values; they are not inferred from sample strings.

## Common `SNode` accesses

The recovered `constructNode` loop establishes these offsets and uses:

| `SNode` offset | Proven use | Evidence boundary |
| --- | --- | --- |
| `+0x0c..+0x14` | Three consecutive words are passed to `ISceneNode::setPosition`. | The vtable call at byte offset `+0xa4` resolves through the `CSceneNode` vtable to `setPosition`; the words are passed by address. |
| `+0x18..+0x24` | Four consecutive words are passed to `ISceneNode::setRotation`. | The vtable call at `+0x9c` resolves to `setRotation`; the recovered target takes a quaternion reference. |
| `+0x28..+0x30` | Three consecutive words are passed to `ISceneNode::setScale`. | The vtable call at `+0x94` resolves to `setScale`; the target takes a vector reference. |
| `+0x34` | Zero/nonzero is normalized to a boolean and passed to `ISceneNode::setVisible`. | The vtable call at `+0x48` resolves to `setVisible(bool)`. |
| `+0x38` | Child count used by a loop. | `constructNode` returns when the count is not positive. |
| `+0x3c` | Base pointer for recursive child records. | Each child invocation advances the input pointer by `0x50` bytes. This proves the child-table stride used by this code; it does not by itself prove a complete file-level record extent. |
| `+0x40` | Attachment-record count. | A loop runs from zero to this count. |
| `+0x44` | Base pointer for attachment records. | The loop indexes records at 8-byte stride; the first word selects a dispatch case. |
| `+0x48` | Value passed to a factory virtual in selector case 13. | Its type and semantic name are not established. |
| `+0x4c` | Zero/nonzero gate selecting two factory virtual-call paths. | The code does not establish a field name or broader meaning. |

The vtable word hashes for the four setter targets are included as supporting data ranges in the manifest. This resolves the virtual calls against the exported `CSceneNode` table and avoids assigning transform meanings from offsets alone.

## Attachment selector table

`constructNode` reads the first word of each 8-byte attachment record, subtracts one, and uses a bounded switch table for values 1 through 13. The evidence supports these dispatches:

| Selector | Recovered route | Status |
| ---: | --- | --- |
| 1 | `CColladaDatabase::constructCamera(char const*, CRootSceneNode*)` | Named route. |
| 2 | `CColladaDatabase::constructController(...)` | Named route. |
| 3 | `CColladaDatabase::constructGeometry(...)` | Named route. |
| 4 | `CColladaDatabase::constructLight(char const*, CRootSceneNode*)` | Named route. |
| 5–8 | Continue the attachment loop without a named constructor call in this switch. | No semantic mapping claimed. |
| 9 | `CColladaDatabase::constructEmitter(...)` | Named route. |
| 10 | `CColladaDatabase::constructGNPSEmitter(...)` | Named route. |
| 11 | `CColladaDatabase::constructCoronas(...)` | Named route. |
| 12 | `CColladaDatabase::constructForce(...)` | Named route. |
| 13 | Calls a factory virtual selected through `SNode+0x48`. | Target type and record semantics unresolved. |

The switch proves which code is reached for each numeric selector. It does not prove a source-format enum name or the meanings of the record's second word for every case.

## Construction order and runtime child order

The `constructNode` body also establishes an ordering contract for the nodes it successfully produces. It processes the attachment array at `SNode+0x44` first; each non-null factory result is passed through the runtime node's vtable byte offset `+0x5c`. After the attachment loop, it applies the current node's position, rotation, scale, and visibility setters from the fields listed above. It then recursively constructs the child table at `SNode+0x3c`, using the `+0x38` count and `0x50`-byte stride, and passes each non-null returned node through the same `+0x5c` slot.

The runtime `ISceneNode` vtable resolves that call slot to `addChild` (`0x00598864`, 164 bytes; SHA-256 `165d97ace3dfea716af0c23f3452c52abb24f7472ac046a7601163b24b3b5901`). `addChild` appends at the parent's child-list tail. `ISceneNode::onAnimate` (`0x00596d6c`, 184 bytes; SHA-256 `8dba614b5821920c6d7784a51e2d323e653280c4538695c955b5207880473973`) walks that list forward. Thus, among results that are non-null and accepted by `addChild`, attachment-produced children precede recursively constructed serialized children; each group retains its source iteration order for later animation traversal. This does not establish visibility, draw order, or the semantics of the attachment payloads.

One manifest-verified example is `data/3d/animateddecors/castle/lustre_castle.bdae` (55,416 bytes; SHA-256 `7eba53074deca5a20ecec6ceeeb62c280884864908fba9df9af37ddddd3e768b`). Its `lustre_castle.max` node at file offset `0x8b8c` has one selector-3 attachment and 32 child rows. The existing [node-bounds census](node-bounds-audit/corpus-census.json) covers 1,563 selected scenes and 21,472 unique node spans with no traversal errors. That corpus check validates the selected file-backed traversal; it does not make the full scene-part extent or disconnected records known.

## Camera record path

The named camera route reaches `CColladaDatabase::constructCamera(SCamera*, root)`, which calls the camera-node factory and registers the result with `CRootSceneNode::addCamera`. `CColladaFactory::createCameraNode` allocates the camera node and calls the Collada `CCameraSceneNode` constructor.

The constructor proves these partial `SCamera` uses:

| `SCamera` offset | Proven use |
| --- | --- |
| `+0x04` | Controls a branch in projection setup. Its symbolic enum name and full domain are unknown. |
| `+0x08`, `+0x0c` | Read in projection calculations. Depending on the `+0x04` branch, they contribute to a value passed to `setFOV`, or to calls of `setMAG` and `setAspectRatio`. |
| `+0x10` | Passed to `CCameraSceneNode::setNearValue`. |
| `+0x14` | Passed to `CCameraSceneNode::setFarValue`. |

Those setter names come from the direct call targets and exported symbols. This does not establish the camera record's full size, units, defaulting rules, or the semantic meaning of its branch discriminator.

## Selector-4 light attachment path

The selector-4 route and its partial `SLight` payload mapping are documented in the focused [light payload audit](light-payload-audit/ANALYSIS.md). In the existing `constructNode` range, selector 4 follows the attachment's second pointer to an instance record, loads that record's `+0x04` name pointer, adds one byte, and calls `constructLight(char const*, root)`. The audit follows that engine-side lookup through the factory dispatch and `CLightSceneNode` constructor, then checks table entries against the recovered BDAE corpus where the engine's `0x18`-byte row stride and the sample's fixups permit it.

The corpus contains 182 active selector-4 attachments. Forty-five name-resolve against a light row in the same BDAE (42 type words `0`, three type words `1`); the remaining 137 refer to `ambient-environment-light` while their own BDAE light-table count is zero. That static absence does not prove whether the live database resolves the name through another loaded library or returns null. The constructor also contains branches for input type words `2` and `3`, but those values do not occur in the recovered light-table corpus. Complete `SLight` semantics and file-level record bounds remain open.

## Verification and limits

The 10 indexed function ranges total 3,020 bytes. Their ARM rows were compared byte-for-byte with the APK's `lib/armeabi-v7a/libDungeonHunter2.so`; the four selected `CSceneNode` vtable words were read from the same APK ELF. The APK SHA-256 is `32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`; the ELF SHA-256 is `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`. VAs below `0x00955130` map through PT_LOAD segment 1 to the same-numbered file offset; the vtable words use segment 2's `file_offset = VA - 0x1000` mapping.

The database routines do not validate each node's complete backing span before these loads. Sample BRES bytes and their fixups therefore remain supporting evidence, not a substitute for proving all record bounds and root-library topology. Node-kind records, selectors 5–8 and 13, non-light attachment payloads, light fields beyond the listed use-sites, camera fields beyond the listed use-sites, and the full scene-part extent remain unknown. This checkpoint adds no parser code.
