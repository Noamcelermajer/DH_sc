# Special `0xffffffff` sampler field trace

## Finding

The single `0xffffffff` sampler value in the recovered 2,900-file BRES corpus is not treated as a null pointer or an ordinary image-table index. `CResFileManager::postLoadProcess` stores its current manager pointer into the sampler value cell. Later, `collada::createMaterial` loads that pointer's `+0x10` field, increments the word at the resulting pointer's `+0x04`, and passes the resulting pointer to the typed texture-parameter setter at `0x005cd324`.

The manager layout makes this branch unusual but does not establish its intended meaning:

- Both `CResFileManager` constructors initialize manager `+0x08` and `+0x0c` to zero and set `+0x10` and `+0x14` to `manager+0x08`.
- `CResFileManager::get(char const*, bool)` uses the structure beginning at `this+0x08` as a `std::map<std::string, CResFile*>`: it calls the recovered `std::map::operator[]<char const*>` at `0x0065a5cc`, whose tree path uses `_Rb_tree::_M_lower_bound<char const*>` at `0x00659d9c`. On the cache-miss route, the new `CResFile*` is inserted before `postLoadProcess` is called.
- The destructor walks from `manager+0x10` until `manager+0x08`, then resets the endpoints. This matches the resource map's red-black-tree header: `+0x10` is its leftmost/begin pointer, initialized to the empty header and updated when entries exist.

Therefore the sentinel branch routes a manager-owned map endpoint into a field that `createMaterial` treats as a texture parameter. The endpoint's exact runtime value depends on the manager's loaded-resource state; in the empty-map state it is the embedded tree header, and in a populated map it is a tree node. `createMaterial` increments the word at that endpoint `+0x04`, but the static trace does not show that the endpoint is an `ITexture` or establish the intended behavior. It also does not prove a runtime corruption: the active manager state and downstream sampler use remain unobserved. The record should remain an unresolved special-value path; it is not evidence for a default texture or a null sampler.

## Corpus example

`3d/gameobjects/dummy_lever_lockable.bdae`, SHA-256 `0f83f62a0669ce704f9615c4acc8edc0f1cf0591b709afb2ca6697a821cc2937`, has four image rows, seven material rows, and ten `-sampler` parameters. Its material parameter at file offset `0x7e2c` is named `diffuse-sampler`, has raw type `11`, and has value cell `0x7f30` containing `0xffffffff`. The other sampler values in this file are ordinary indices `0` through `3`.

The corpus-wide count remains one sentinel among 4,789 `-sampler` rows; the other 4,788 are in-range image-table indices. The corpus scan and ordinary image-to-texture trace are in [texture-runtime-link](../texture-runtime-link/ANALYSIS.md).

## Provenance

The source APK is `Dungeon-Hunter-2-HD-v1-0-2.apk` (SHA-256 `32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`); the analyzed ARM32 library SHA-256 is `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`. New constructor/destructor/lookup ranges, their mapped file offsets, and their hashes are recorded in [sentinel-functions.json](sentinel-functions.json). Their extracted instruction listings are in [manager-layout.asm](reference/manager-layout.asm). The `postLoadProcess` and `createMaterial` ranges and sampler corpus scan are indexed in the linked texture-runtime note.

No parser, source API, tests, or builds were added.
