# Texture cache and object lifetime

## Binary provenance

This note traces the texture manager's name cache, intrusive references, CPU backing storage, and GLES texture name cleanup in the APK library. Loader selection and upload format paths are documented in [the loader note](../loaders/ANALYSIS.md).

The source is `lib/armeabi-v7a/libDungeonHunter2.so` from `Dungeon-Hunter-2-HD-v1-0-2.apk`. APK SHA-256: `32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`. ELF SHA-256: `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`. The ELF has two file-backed load segments recorded in [the range manifest](original-functions.json). Every function range is mapped through its containing PT_LOAD; the manifest records its exact offset, segment index, byte length, and SHA-256. The selected ranges were byte-compared directly against the APK member. [The reference listing](reference/texture-lifetime.asm) contains the full original ARM instruction bytes for all ranges plus the driver vtable word used below.

## Name cache and strong references

`CTextureManager::getTexture(IReadFile*, ...)` first calls `findTexture` for its resolved texture name. `findTexture` searches the `SIDedCollection<boost::intrusive_ptr<ITexture>>`, obtains the matching texture, and increments the object reference count. The manager returns that retained reference to its caller. On a cache miss, `getTextureInternal` runs the load path and passes a successful texture to `CTextureManager::addTexture`; that method inserts it into the named collection. The collection insertion increments the texture reference count, so the cache itself holds one strong reference.

`SIDedCollection::removeUnused()` calls `removeAll(false)`. In `remove(id, false)`, a populated entry is retained when the stored intrusive count exceeds one; when it is exactly one, the collection erases its name mapping and `SEntry::reset` clears the pointer and calls `IReferenceCounted::drop`. A zero count dispatches through the object's vtable to the deleting destructor. This is a cache-only eviction gate: it preserves a texture while a caller or other owner holds another reference.

`CTextureManager::~CTextureManager()` attempts `removeAll(false)`, then destroys the collection. The collection's vector destructor drops every still-populated entry reference, including entries that had external references and therefore survived the cache-only removal pass. Those external references can keep the texture object alive beyond the manager's cache release. The later final intrusive drop controls when the object destructor runs.

## CPU backing storage

`ITexture::map` allocates a `new[]` buffer when the backing pointer at `this + 0x2c` is null and calls `setData` with its ownership argument set. `setData` stores the pointer and represents ownership in byte `this + 0x3f`, bit 0. Replacing an existing pointer invokes the array-delete import when that ownership bit is set. `ITexture::unmap` clears mapping state while retaining the backing pointer for subsequent use.

`ITexture::~ITexture` calls `setData(nullptr, true, false)`. That path releases an owned CPU pixel buffer before the destructor releases its per-level metadata. `setData` only invokes array-delete for owned pointers. The recovered CPU buffer lifetime follows replacement or destruction; unmap clears state only.

## GLES name and driver cache cleanup

`CTexture::bindImpl` lazily calls `glGenTextures`, stores the returned name at `this + 0x54`, and sets the live-name state. `CTextureManager::clearDriverSpecificResources` walks its named texture collection. If a texture's state byte at `+0x3f` has bit 3 set, the manager calls vtable slot `+0x10`. The exact `CTexture` vtable word at VA `0x009777a8` resolves that slot to `CTexture::unbindImpl` at `0x005b28dc`.

`unbindImpl` scans the driver's cached texture-unit entries for pointers equal to this texture. It routes matching units through `CCommonGLDriver::setTexture(..., nullptr, ...)`, then calls `glDeleteTextures` with the object name stored at `this + 0x54`, clears that name, and marks affected texture data dirty for a later bind. `CTexture::~CTexture` also calls `unbindImpl` when the GL-name flag is set, then calls `ITexture::~ITexture`, which releases owned CPU backing. The observed path therefore separates driver cleanup from CPU storage release: driver cleanup deletes the GL name, while the CPU buffer remains on the object until replacement or object destruction.

## Unloadable marker and limits

`CTextureManager::addTexture(char const*, STextureDesc const&, bool)` calls `markTextureAsUnloadable` when descriptor byte `+0x1e` is nonzero. The marker method adds the texture pointer to a manager vector and does not adjust its intrusive count. The raw `CTextureManager::removeTexture(ITexture*)` consumer erases matching list membership, then attempts cache removal regardless of whether the pointer was listed. Cache eviction is governed by the collection's non-forced reference-count gate. A BRES resource teardown path drops each image's texture reference and calls this remover when a global byte is set and the texture count is one. The vector destructor frees its allocation without dropping listed pointers. See the focused [unloadable-marker lifecycle supplement](unloadable-marker/ANALYSIS.md) for exact ranges and the resource-file trace. The field declaration and the global byte's owner/value remain unresolved.

The collection, map/backing, reference-count drop, base/GLES texture destruction, driver unit-cache cleanup, and `glDeleteTextures` path are covered by the exact ranges below. Full platform/context shutdown ordering and every external texture holder remain outside this static trace. No tests or builds were run.

## Exact APK-backed ranges

| Range | ELF VA | Bytes | PT_LOAD / file offset | SHA-256 |
| --- | ---: | ---: | --- | --- |
| `texture_get_by_file` | `0x005ed0c4` | 332 | 0 / `0x005ed0c4` | `aab786f07a1ab7e8c172ac1b4ea856c503a2cf53ef73f95a2245f462d1086677` |
| `texture_get_internal` | `0x005ecf34` | 400 | 0 / `0x005ecf34` | `18ceba6026c05b18ff075d96992cff3ef33818faee50839917606fcba5ebf3e2` |
| `texture_cache_find` | `0x005e8f2c` | 100 | 0 / `0x005e8f2c` | `bc8e3b36d847e0892b0838e7411bdbae1a40f0e8ee4672fc562c8e058e4317fd` |
| `texture_cache_insert` | `0x005ea53c` | 552 | 0 / `0x005ea53c` | `af6efe729ba84272db3a27dd59c6c620d7f6c5e51161830a72136b39b5c671f1` |
| `texture_manager_add_texture` | `0x005ea764` | 148 | 0 / `0x005ea764` | `17086be97403ae906787ad2f5f4be51f2c9f227960d73d0b9a3c4a1ca251de1f` |
| `texture_collection_remove_unused` | `0x005ea048` | 8 | 0 / `0x005ea048` | `a477d45f4317d62888dce9cca0dbdbd28222460318f7a5506921cdbe6f43c7f7` |
| `texture_collection_remove_all` | `0x005e9f78` | 200 | 0 / `0x005e9f78` | `e1307b79e88d639881560040de854e060f5e83ad28c59fbe41f1e201a193acf2` |
| `texture_collection_remove` | `0x005e9e7c` | 252 | 0 / `0x005e9e7c` | `61f268406b3778415efc5989bebcb0893c262582054e436a9345628590a39072` |
| `texture_collection_entry_reset` | `0x005e9e50` | 44 | 0 / `0x005e9e50` | `44a9c593634f86cc4abbe79dd962a118aa3d169c45e6d1039432f02aba09bfbd` |
| `texture_manager_destructor` | `0x005ea050` | 232 | 0 / `0x005ea050` | `725f60ffd2b439539ded98733b4cd73ecc4852b753fbb7d2a731c60751626ab8` |
| `texture_mark_unloadable` | `0x005e8dd4` | 260 | 0 / `0x005e8dd4` | `b777e3c30f46ce3a639a952f32087faa76ac65346290868d81f49d032c7afcfa` |
| `texture_add_from_desc` | `0x005ea7f8` | 256 | 0 / `0x005ea7f8` | `dddb7835951dcd2247d3b179c80522cf20c13d0b0f5743445123e86f3f074fbe` |
| `texture_clear_driver_resources` | `0x005e97e0` | 244 | 0 / `0x005e97e0` | `1b3921bfd1e0b460237b074933f7bd6ebab6c1cc5bf8eb0ffc4bf1e4377a9d4c` |
| `reference_counted_drop` | `0x0031d584` | 72 | 0 / `0x0031d584` | `031bcb422bbf342aaf77d522ed55d90a7e23c759e1df0ae80d63a2966541a4d2` |
| `gl_texture_bind` | `0x005b5610` | 768 | 0 / `0x005b5610` | `f686f404818da4866c94754a34882a1c5eb299e3f03959314317261ea7b496f0` |
| `texture_map` | `0x005fe0d4` | 556 | 0 / `0x005fe0d4` | `ac52c10e043e82d964e28cf6271600220138cb5b1c6905fa30a032be22d3866f` |
| `texture_set_data` | `0x005fdf74` | 352 | 0 / `0x005fdf74` | `468bfa81cdb8773035af3ad1d745c9395aa81d3a5bfd74d94ddbe25850387f42` |
| `texture_unmap` | `0x005fdc0c` | 120 | 0 / `0x005fdc0c` | `0a9855ff43450e273ae1c701067b4a9ab1917327c5f93669ac37f415ececf553` |
| `texture_base_destructor` | `0x005fe310` | 108 | 0 / `0x005fe310` | `af5d9db20b7ac9c2fac6d78f4f5aa57b1f02e521e26b84605353fc49f67b057c` |
| `gl_texture_destructor` | `0x005b2a30` | 116 | 0 / `0x005b2a30` | `3a65be36d24ca668b798f550ce2e52f9c18166f7ab32c6d0e01362c63bc22aa9` |
| `gl_texture_unbind` | `0x005b28dc` | 340 | 0 / `0x005b28dc` | `b99488f7c3180c602928e577f73c0059cbfbc288f254c4db61706b3753875420` |
| `gl_texture_clear_driver_slot_0x10` (data word) | `0x009777a8` | 4 | 1 / `0x009767a8` | `08397a49829b5599077ccc69e6773eab6b0d99e9b888703efff781756bccf6df` |

See [original-functions.json](original-functions.json) for symbol labels and per-range mapping metadata, and [the copied ARM listings](reference/texture-lifetime.asm) for instruction bytes.
