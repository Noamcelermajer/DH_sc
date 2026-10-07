# Texture unloadable marker and eviction lifecycle

## Scope and binary identity

This supplement resolves the consumer of `CTextureManager::markTextureAsUnloadable` and follows the marked pointer through resource-file teardown, texture-cache eviction, and GLES texture-unit cleanup. It is limited to static behavior recovered from the Android ARM library; it does not claim a runtime unload was observed.

Source identity is checked against `Dungeon-Hunter-2-HD-v1-0-2.apk`: APK SHA-256 `32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`; `lib/armeabi-v7a/libDungeonHunter2.so` SHA-256 `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`. [The range manifest](functions.json) records 23 exact ELF ranges, file offsets, and SHA-256 values. [The ARM listing](reference/unloadable-marker.asm) was regenerated from the checked ELF, and the capture script compares each range to the APK member byte-for-byte.

## Proven marker-field behavior

`CTextureManager::addTexture(char const*, STextureDesc const&, bool)` reads descriptor byte `+0x1e`. When it is nonzero, the routine calls the symbol-labeled `markTextureAsUnloadable` with the newly returned texture pointer. The binary establishes this gate and call; it does not preserve a source declaration that names the field.

`markTextureAsUnloadable` treats manager fields `+0x68`, `+0x6c`, and `+0x70` as a `vector<ITexture*>` begin, end, and capacity end. It searches the active range, returns when the pointer is already present, and otherwise appends it, growing the allocation when needed. The append copies the pointer value. This routine does not increment or drop the texture's intrusive reference count, so the vector is non-owning in the observed implementation.

`CTextureManager::removeTexture(ITexture*)` is the list consumer. It searches that same vector and erases the pointer if found. Regardless of whether the pointer was in the vector, it then reads the texture name at `ITexture+0x1c`, derives the texture type from `ITexture+0x38`, resolves the cache ID, and calls `SIDedCollection<ITexture>::remove(id, false)`. If cache removal succeeds, it clears any matching placeholder pointers. Thus marker-list membership is bookkeeping for removal; the observed removal routine does not use membership as an eviction condition or to choose the cache policy.

The intrusive-pointer overload first clears the caller's pointer and drops that reference, then delegates to the raw-pointer overload. The collection's non-forced `remove(id, false)` path retains an entry when its intrusive count is above one. At count one, `SEntry::reset` clears the cached pointer and calls `drop`, which can dispatch the texture's deleting destructor. The effective cache eviction gate is the reference count, not the marker vector.

The manager constructor initializes the marker vector's three pointers to null. Its destructor runs the collection's non-forced cleanup, drops separate intrusive-pointer arrays at manager offsets `+0x30` and `+0x3c`, then deallocates the marker vector storage. It does not traverse or drop pointers in the `+0x68` vector. That confirms the vector itself does not own the texture objects.

## Resource-file eviction path

`CResFileManager::unload(iterator, bool)` drops the manager's `CResFile` reference and erases the map entry when the resource is cache-only or the force argument permits it. `unloadAll()` calls the name-based unload with the force argument set to zero. `CResFile::~CResFile()` calls `releaseObjects()`.

In `CResFile::releaseObjects()`, the recovered image-table loop uses 20-byte rows and reads the texture pointer at each row's `+0x10`. It clears that slot and drops the image's intrusive reference. A global byte at offset `+0x28` gates a follow-up check; when enabled, and the texture's reference count is exactly one after the image reference is dropped, the routine calls `CTextureManager::removeTexture(ITexture*)`. The byte's owning type and runtime value remain unresolved. The manager call then removes the cache-only entry through the non-forced reference-count gate above.

This connects BRES image teardown to texture-cache removal without relying on path/name similarity. The [existing Collada material trace](../../../engine-materials/texture-runtime-link/ANALYSIS.md) shows the ordinary BRES image route populating `SImage+0x10` with an `ITexture*`; the texture asset census records 3,662 serialized image rows. Those rows do not establish that descriptor byte `STextureDesc+0x1e` is set in any asset.

## Descriptor reachability and asset limits

A whole-ELF direct-call scan found two call sites for `addTexture(char const*, STextureDesc const&, bool)`: the dimension-based overload and placeholder creation. Both stack-build the descriptor and write zero to byte `+0x1e`. The ordinary `loadTextureFromFile` route also initializes its stack descriptor byte `+0x1e` to zero before invoking a loader; the recovered ATC, DDS, and PVR header paths update other descriptor fields but have no direct store to `+0x1e`. That ordinary file route creates the texture through the driver and later caches the returned intrusive pointer, rather than calling `addTexture(desc)`.

Accordingly, the APK establishes what a nonzero byte would do, but the recovered in-library call sites do not demonstrate a nonzero input or a populated marker vector. An external caller or code path outside the recovered ELF could still provide a nonzero descriptor. The source-level field declaration and a serialized asset that sets it were not recovered.

## Driver references and final destruction

`CCommonGLDriver::setTexture` stores `ITexture*` values in its per-unit cache and calls texture binding; the body does not retain or drop an intrusive reference. These driver slots are therefore raw cached references. When the final texture owner drops an object with a live GL name, `CTexture::~CTexture` calls `unbindImpl`. That routine finds every unit slot equal to the texture, clears it through `setTexture(..., nullptr, ...)`, deletes the GLES name stored at `ITexture+0x54`, and clears the live-name state. The base `ITexture` destructor then releases owned CPU backing. These driver cleanup ranges are byte-backed in this supplement and also appear in the broader [texture lifetime trace](../ANALYSIS.md).

## Evidence and limits

- Directly observed: the `+0x1e` gate; vector begin/end/capacity layout, de-duplication, append, and non-retaining storage; vector membership removal; cache removal independent of membership; BRES image-reference release; the reference-count-gated resource teardown call; cache-only deletion; and raw GLES unit-slot cleanup.
- Inferred from symbol names and control flow: `+0x1e` is intended as an unloadable eligibility flag. The method's binary symbol says `markTextureAsUnloadable`, but the original field declaration is absent.
- Unresolved: owner and runtime value of the `CResFile::releaseObjects` global byte; whether any external entry point passes a nonzero `STextureDesc+0x1e`; live-session timing; and complete context-shutdown ordering.
- The capture script is `tools/capture_evidence.py`. It uses Python's standard library and `llvm-objdump`; no build or tests were run.
