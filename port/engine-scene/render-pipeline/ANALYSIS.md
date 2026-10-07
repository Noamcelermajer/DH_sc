# Scene submission path: static ARM trace

## Source and range verification

This note follows the scene manager's statically visible submission path in the supplied Dungeon Hunter 2 HD v1.0.2 APK. The source member is `lib/armeabi-v7a/libDungeonHunter2.so`. The APK SHA-256 is `32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`; the extracted library SHA-256 is `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`.

The machine-readable [range manifest](original-functions.json) records 15 code ranges and two vtable data ranges, including each VA, byte size, file offset, PT_LOAD index, symbol, and SHA-256. The [ARM listing](reference/original-functions.asm) contains the exact bytes and decoded instructions for those code ranges. The APK member matched the local ELF byte-for-byte. The code ranges map through ELF32 little-endian ARM `PT_LOAD` segment 1 (`p_offset=0`, `p_vaddr=0`, `p_filesz=0x955130`); the vtable excerpts map through segment 2 (`p_offset=0x955130`, `p_vaddr=0x956130`, `p_filesz=0x4954c`). Segment 1 therefore maps each code VA to the same file offset. Segment 2 maps the selected vtable words at VA to file offset `VA - 0x1000`.

## `drawAll` ordering

The single-root overload, `CSceneManager::drawAll(ISceneNode*)` at VA `0x0058b7f4` (size `0x98`), dispatches `drawInit` through manager vtable slot `+0x40`. With a null root, manager byte `+0x288` gates `collectAllNodes()`; that helper collects from the manager root and clears the byte. Both the null and non-null paths then call, in order:

1. `setupCamera()` through slot `+0x44`.
2. `registerSceneNodes(root)` through slot `+0x28`.
3. `drawShadowReceivers()` through slot `+0x4c`.
4. `renderLists(driver)` through slot `+0x48`.

The method writes numeric value `9` to manager offset `+0x174` after list rendering and branches to the statistics reset helper. The vector overload at `0x0058b728` (size `0x84`) has a related route: draw initialization, collection from the supplied vector, camera setup, vector registration through slot `+0x2c`, shadow receivers, and render lists. It also writes `9` and resets statistics on return. The manager vtable excerpt at `0x00976718` validates the dispatch targets for slots `+0x24`, `+0x28`, `+0x2c`, `+0x40`, `+0x44`, `+0x48`, and `+0x4c`; its address point is `0x009766f4`.

`drawInit` stores the supplied driver at manager offset `+0x14`, performs attribute setup, reads an attribute, then makes an indirect driver call at driver slot `+0xa0`. The evidence here does not assign a higher-level meaning to that driver slot.

## Camera activation and registration

`setActiveCamera(ICameraSceneNode*)` at `0x005890c0` stores the active camera at manager offset `+0xe4`, retaining the new object and dropping the previous one when the pointer changes, then calls `notifyVisibilityChanged()`. This setter establishes how the field is updated; the traced `drawAll` body does not establish which game code chooses the camera.

`setupCamera()` clears three cached position words at manager offsets `+0xe8..+0xf0`. If the active-camera pointer at `+0xe4` is non-null, it calls that node's virtual slot `+0x10`, then gets its absolute position and copies the three floats into the cache. The `CCameraSceneNode` vtable excerpt at `0x0097542c` validates slot `+0x10` as `onRegisterSceneNode()` and slot `+0x1c` as `render(void*)`.

The camera registration body at `0x00583534` recalculates its matrices and compares itself with the manager's active-camera pointer. On the matching branch it calls the manager virtual at slot `+0x24` with numeric pass value `0` and the camera node. The camera render body at `0x005820e4` submits the projection matrix with transformation-state value `2`, then the view matrix with value `0`. Camera matrix construction and light submission are covered in [the camera and dynamic-light analysis](../../engine-camera/ANALYSIS.md).

## Visibility traversal and culling

For a non-null root, `registerSceneNodes(ISceneNode*)` at `0x0058b88c` walks the runtime node links in preorder. It saves the original root's parent as the traversal stop point. For each candidate node, bit 0 of the flags word at node offset `+0x11c` gates the `isCulled(node)` call. If not culled, the manager calls the node's virtual slot `+0x10` (`onRegisterSceneNode`). A true callback result descends into children; a false result skips that node's children. Culled nodes also skip their callback and children, after which traversal advances through sibling links and, when needed, parent links.

For a null root, the same helper instead iterates the manager's collected-node vector and applies the same flag, culling, and callback gates; it does not recurse through child links in that branch. The base `ISceneNode::onRegisterSceneNode()` body at `0x00596d08` returns `1`, so derived callbacks decide whether their subtree is visited.

`isCulled()` at `0x0058ab28` returns “not culled” when manager byte `+0x250` is off or no active camera exists at `+0xe4`. Otherwise it checks the node's numeric culling mode at `+0x118`. The observed branches for values `1`, `2`, and `8` use bounding-box/frustum comparisons; value `2` calls the frustum `intersects` helper, and value `8` takes a separate frustum-intersection branch. These numeric values are retained without assigning broader enum names. The traversal therefore uses culling only for nodes whose flag bit 0 is set and only when manager/camera gates allow it.

## Shadow receivers and render lists

`drawShadowReceivers()` at `0x0058b0a8` runs before the main `renderLists()` call. Its traced path saves the active camera, walks the shadow-receiver list when present, invokes receiver/target virtual hooks, temporarily selects a target camera, recalculates camera matrices, dispatches numeric render pass `7`, then restores the prior camera. The target-hook meanings and driver calls in this branch are not resolved further here.

`renderLists()` at `0x00590660` performs the following observed numeric dispatch sequence:

- Calls the unsorted node-list helper for the list at manager `+0x3c` with pass `0`, clears dynamic-light state, and sets a material parameter from scene-manager state.
- Sorts and consumes the distance-entry vector at `+0x48`, then dispatches the vector at `+0x6c` with pass `2`.
- Sorts default entries at `+0x78` and invokes node render callbacks with pass `4`.
- Handles custom lists with passes `5` and `6`, sets material state, and calls `drawFullScreenQuad`; one driver virtual in this path remains unresolved.
- Consumes the transparent-entry vector with pass `8` and clears the deletion list.

The included `renderList<SUnsortedNodeEntry>` body at `0x0058aee4` iterates entries, conditionally rechecks `isCulled(node)` according to its flags, and dispatches the node virtual slot `+0x1c`, the render callback slot corroborated by the camera vtable excerpt. This establishes list mechanics and numeric pass values without assigning names to every pass or reconstructing all material, custom-list, or graphics-driver behavior.

## Ordering boundary and gaps

`CSceneManager::update(float,bool)` at `0x0058b9f0` is a separate entry point. One branch iterates collected nodes and dispatches `onUpdateTime(ms)` through virtual slot `+0x18`; another calls the root's virtual slot `+0x14` (`onAnimate`). No caller or game-loop body was traced here, so the order of `update()` relative to `drawAll()` and actual runtime execution are unknown. No distinct `onPreRender` dispatch was identified in the selected static path.

The note establishes the internal ordering and branch gates visible in these ARM bodies. Runtime node contents, camera choice, driver behavior, receiver-hook effects, and which conditional branches execute in a particular game frame remain unobserved. The exact ranges and their hashes are indexed in [original-functions.json](original-functions.json); the listing is [reference/original-functions.asm](reference/original-functions.asm).
