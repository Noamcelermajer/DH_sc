# Collada scene root and graph: bounded analysis

## Decision

No standalone scene-graph decoder is added at this checkpoint. A raw borrowed pointer is exposed by `dh2_bres_root_part(..., RootPart::scene)` in `port/engine-resources`. The new [serialization and construction analysis](serialization/ANALYSIS.md) follows the recovered `constructScene` path and establishes common `SNode` transform, visibility, child-table, and attachment-dispatch use-sites. It still does not prove the full scene-part extent or every record and payload boundary.

A bounded runtime child-list port has now been added in `children.hpp` and `children.cpp`. It captures the explicit ordered-link operations in the engine's `ISceneNode::addChild`, `removeChild`, `setParent`, and the forward child iteration in `onAnimate`. It accepts already-decoded runtime node handles and does not interpret BRES scene bytes.

The exact recovered ARM blocks and per-function instruction-byte hashes are in [reference/original-functions.asm](reference/original-functions.asm) and [original-functions.json](original-functions.json). All addresses below are ELF virtual addresses for the original `libDungeonHunter2.so` hash recorded in that JSON.

## Confirmed assembly path

- `CColladaDatabase::getScene() const`, VA `0x0060e348`, size 20 (`glitch_collada_CColladaDatabase-f458595c81f3-001.asm`), follows the database data pointer and returns `root + 0xb8`. It computes an address; this body does not decode a scene node or a child list.
- `CColladaFactory::createScene(CColladaDatabase const&)`, VA `0x00631628`, size 40 (`glitch_collada_CColladaFactory-db06bc565b1a-001.asm`), requests a `0x1c4`-byte runtime object and calls `CRootSceneNode` construction at `0x0065b734`.
- `CRootSceneNode` construction at `0x0065b734`, size 272, sets up runtime virtual/member state and calls `CSceneNode` construction at `0x0065d2b4`.
- `CSceneNode` construction at `0x0065d2b4`, size 308, reads words from its `SNode*` argument at offsets `0x00`, `0x04`, `0x1c`, and `0x20`. It separately saves the incoming `r3` value and, when non-null, reads fields at offsets `0x0c` through `0x30` from that pointer before helper calls. The recovered symbol's demangled signature lists only the database reference and `SNode*`, so the `r3` value's role is unresolved. These observations show accesses, but do not prove serialized field names, child counts, strides, or transform encodings.

The scene part begins at `root + 0xb8`. `BresView::root_offset` points to a 192-byte root block, so this scene data starts in its final eight bytes and continues into following file data. The C++ getter gives no extent for that continued region. The constructor code does not supply a validated extent either: several accesses are through runtime/vtable-derived pointers, and the constructor performs allocation and object initialization.

## Runtime child hierarchy checkpoint

The `ISceneNode` methods provide a separate, conclusive runtime behavior:

- `ISceneNode::addChild`, VA `0x00598864`, size 164: returns without mutation for a null child or the node itself. On the continuing path it inserts the child's embedded forward link at the parent's tail slot, advances the tail slot, and increments the child count. It then calls `setParent`, optionally synchronizes scene-manager state, and propagates parent visibility.
- `ISceneNode::setParent`, VA `0x005971e0`, size 116: stores the new parent pointer at object offset `0xec` and sets flag bit `0x40`. It may also update scene-manager association. The port retains the parent pointer and flag mutation; manager and reference-count operations are outside the port.
- `ISceneNode::removeChild`, VA `0x00597004`, size 104: succeeds only when the child's parent pointer equals the receiver. It splices the child's previous-link slot to its next link, updates the successor's back-link, decrements the child count, and clears the child's links and parent pointer. It then releases the child reference; reference destruction is outside the port.
- `ISceneNode::onAnimate`, VA `0x00596d6c`, size 184: after its flag gates, animator calls, and absolute-position update, walks the child list from the first link to its sentinel and dispatches each child's animation callback in forward list order. The port exposes that stable list order as `dh2_scene_child_list_copy`; the animation gates, callbacks, transform update, and post-traversal flag change are not ported.

The port's `ChildList` and `ChildLink` are independent caller-owned records. Tail insertion, parent identity, the `0x40` flag update, unlinking, count changes, and forward-order copying are reproduced for valid list state. The append API also rejects already-linked entries to protect its independent representation; the original `addChild` body does not check duplicate membership. The port does not reproduce intrusive reference ownership, scene-manager notifications, visibility propagation, or the original object ABI.

The added ranges are indexed in `original-functions.json` and copied into `reference/original-functions.asm`. Each range was verified against `lib/armeabi-v7a/libDungeonHunter2.so` from the supplied APK. The APK SHA-256 is `32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`; the extracted ELF SHA-256 is `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`. ELF32 little-endian `PT_LOAD` segment 1 maps these VAs directly to same-numbered file offsets (`p_offset=0`, `p_vaddr=0`).

## Runtime absolute transform composition checkpoint

`transform.hpp` and `transform.cpp` expose `dh2_scene_compose_absolute(parent_absolute, local_relative, out_absolute)`. It accepts two already-computed runtime matrices and reproduces the matrix operation used by the node update path. It does not read node fields, update dirty flags, walk children, or interpret BRES scene bytes. Pointers must be valid and the output must not overlap either input.

The exact `ISceneNode::updateAbsolutePosition(bool)` range is VA `0x00597c60`, size 248. With a parent at node offset `0xec`, the recompute branch is entered when the parent's flags at `+0x11c` contain `0x20` or this node's flags contain any bit in `0x5e`. It invokes the parent absolute-matrix virtual at vtable byte offset `0x38`, then this node's local-relative-matrix virtual at `0x40`, and calls `CMatrix4Base<float>::mult34(parent_absolute, local_relative, this + 0x24)`. The virtual-target mapping is corroborated by the `ISceneNode` vtable export at `0x00976b08`: raw table offsets `+0x54`, `+0x5c`, and `+0xd4` name `getAbsoluteTransformation`, `getRelativeTransformation`, and `updateAbsolutePosition` respectively. `onAnimate` calls the update method at vptr offset `0xb8`; this aligns those entries when the vtable address point is table offset `+0x1c`, and explains the update method's `+0x38` and `+0x40` calls. The absolute getter body at `0x0035a8e0` returns `this + 0x24`; the relative getter returns `this + 0x68`.

After recomputation, the updater sets flag bits `0x120` and clears `0x50`. With a null parent and local dirty bits set, it copies 65 bytes from the local matrix into the absolute slot at `+0x24`. When its boolean argument is true, the method then walks the runtime child list in forward order and calls the corresponding update method on each child. These cache gates, node mutation, and recursive traversal are evidence for the parent/local relationship; they are not part of the new composition API.

`ISceneNode::getRelativeTransformation() const`, VA `0x00598908`, returns the cached local matrix at node offset `0x68`. Its dirty path can refresh the rotation from the quaternion at `+0xb8`, apply non-unit scale from `+0xc8..+0xd0`, and store translation from `+0xac..+0xb4` in the matrix's translation slots. This routine is indexed and copied as supporting evidence only; the new port deliberately accepts its completed result instead of reproducing those node-state gates.

The called `CMatrix4Base<float>::mult34` range is VA `0x00597884`, size 988. Its identity-hint byte is at matrix offset `0x40`: an identity left operand copies the right operand's first `0x41` bytes, and otherwise an identity right operand copies the left operand's first `0x41` bytes. If neither hint is set, the code computes the 3x4 affine product. Matrix elements are addressed as `m[column * 4 + row]`; translation is in `m[12]`, `m[13]`, and `m[14]`; the three non-translation bottom-row values are set to zero and `m[15]` to one. The update call therefore computes parent absolute multiplied by local relative. The `mult34` call target at `0x0030ed6c` loads through GOT slot `0x00994ff0`, whose `R_ARM_JUMP_SLOT` relocation names `__aeabi_fmul`; the target at `0x0030eba4` loads through `0x00994f58`, whose relocation names `__aeabi_fadd`. Their 12-byte thunk hashes and import links are recorded as `supporting_import_thunks` in `original-functions.json` and their exact bytes are copied into the reference file. The port preserves each multiplication and left-to-right addition as a separate binary32 rounding step.

The four runtime transform evidence ranges were mapped through ELF `PT_LOAD` segment 1 and compared byte-for-byte with the recovered assembly. Their half-open byte ranges and direct APK ELF hashes are indexed in `original-functions.json`:

| Function | ELF byte range | Size | SHA-256 |
| --- | --- | ---: | --- |
| `ISceneNode::updateAbsolutePosition(bool)` | `[0x00597c60, 0x00597d58)` | 248 | `a2c0325c5843e68dc05aa54a2d308ac9a799b6aceb52de3de95252b7b3ac0e4c` |
| `CMatrix4Base<float>::mult34` | `[0x00597884, 0x00597c60)` | 988 | `60557613e387310f43e1159ea3dc0a1f20c345b7dfd672013ee53e86d68cbbe4` |
| `ISceneNode::getRelativeTransformation() const` | `[0x00598908, 0x00598a04)` | 252 | `811826e25319ad73d1cb983342f40f5a7f71322d5b6b26d20bc0d4cb6ada6dac` |
| `ISceneNode::getAbsoluteTransformation() const` | `[0x0035a8e0, 0x0035a8e8)` | 8 | `201c6a16c092d67edd03e63eb88ed32063b3f100ee14fe75adc1c1f6f2d1c1c2` |

The confirmed contract is parent absolute × local relative = node absolute, with the engine's absolute getter exposing `this + 0x24` and local getter exposing `this + 0x68`. Calling that absolute transform “world space” is a conventional interpretation; the recovered names use “absolute,” and no serialized BRES transform semantics are established. The inferred column-major/column-vector convention comes from the operand indices and translation slots in `mult34`. The transform helper's scope is only matrix composition. The root-node copy path, identity-hint production, engine dirty-state rules, full scene hierarchy, and serialized scene transform fields remain outside this checkpoint. The BRES scene records still do not establish a serialized graph or transform schema.

## Cache observations

These are read-only byte and BRES-fixup observations from three recovered files. Their SHA-256 values identify the exact examples. Scene-relative fixup targets are serialized file offsets, not confirmed child or resource links.

| File | SHA-256 | Root / scene offsets | Scene-relative fixup fields and targets |
| --- | --- | --- | --- |
| `files/data/3d/menu/main_menu_charactere_swamp.bdae` | `8a3462863a3d6ca2255d96989d53a21cddfba821e42c8a13e676f10e51d1300b` | `0x1868 / 0x1920` | `+0x04 -> 0x3d0c`, `+0x14 -> 0x1938`, `+0x2c -> 0x1950`, `+0x34 -> 0x0a88`, `+0x38 -> 0x0a9c` |
| `files/data/3d/light/common_light.bdae` | `38c74814714673f7a4104bddf6b28ba059a2f71e3654b7de09da28a35d8997b3` | `0x1c8 / 0x280` | `+0x04 -> 0x03c8`, `+0x14 -> 0x0298`, `+0x2c -> 0x02b0`, `+0x34 -> 0x00d8`, `+0x38 -> 0x00ec` |
| `files/data/3d/camera/cameratests.bdae` | `7c469d135ebc99943576c2b269bea6869d38d99231fa29e42433b58e1b5a8638` | `0x260 / 0x318` | `+0x04 -> 0x04cc`, `+0x14 -> 0x0330`, `+0x2c -> 0x0348`, `+0x34 -> 0x00e0` |

The observed targets at `+0x34` and `+0x38` include bounded strings such as `Omni01-light`, `ambient-environment...`, `PlayerCamera_Default-cam`, and `Map__18__env_sel...`. That variation does not establish that either field is specifically a light, camera, environment, or child reference. The first words at `+0x00`, `+0x08`, `+0x0c`, `+0x10`, `+0x18`, `+0x1c`, `+0x20`, and `+0x30` are also unresolved values; sample values alone do not identify flags, counts, sentinels, or floats.

These serialized records do not establish the runtime `ISceneNode` link layout. The child-list checkpoint therefore operates only on an explicit runtime link model; it does not decode or link the scene-relative BRES fixups above.

## Unknown fields and reconstruction boundary

- The full byte length and alignment of the serialized scene part are unknown.
- The semantic roles and element layouts of the targets at scene-relative `+0x04`, `+0x14`, and `+0x2c` are unknown.
- The role of the strings referenced at `+0x34` and `+0x38` is unknown.
- The meaning of the scalar words, including values that resemble sentinels or floating-point values in some samples, is unknown.
- The serialization note establishes the common `SNode` transform/visibility fields, the child count and 0x50-byte child-table stride, and named attachment routes for numeric selectors 1–4 and 9–12. Selector meanings for 5–8 and 13, attachment payload layouts, and complete file-backed record extents remain unresolved.
- The role/type of the constructor's additional `r3` pointer, remaining camera/light binding semantics, and animation/controller payload layouts remain unresolved.
- The runtime scene-node constructors and virtual calls are not a CPU-only serialized graph parser. Rendering and GPU graph behavior remain outside this note.

A safe CPU-only scene decoder still requires a path that validates each complete record span and the remaining field semantics, followed by corroboration against representative BRES files. The established resource interface remains the borrowed scene-part address from `engine-resources`; the new construction trace is evidence of field use, not a complete BRES parser.
