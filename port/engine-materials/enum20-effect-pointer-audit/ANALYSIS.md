# Material enum 20 and effect pointer audit

## Scope and source identity

This isolated supplement closes the serialized material effect-pointer route and narrows the behavior of material parameter type `20`. It reads the original APK ARM library and the recovered BRES corpus. It does not analyze texture conversion, assign meanings to `SEffect` member fields, or establish which assets reach active rendering.

The source APK is `Dungeon-Hunter-2-HD-v1-0-2.apk` (SHA-256 `32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`). The target member is `lib/armeabi-v7a/libDungeonHunter2.so` (15,938,284 bytes; SHA-256 `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`). All selected code VAs map to file-backed `PT_LOAD` program header 1 at the same file offset as the VA. [`material-effect-routes.json`](material-effect-routes.json) lists 19 function ranges and hashes; [`reference/material-effect-routes.asm`](reference/material-effect-routes.asm) contains 27 selected ARM excerpts. The extractor reads the shared library directly from the APK, checks both full hashes, maps each excerpt through ELF `PT_LOAD`, and byte-compares every emitted row.

The recovered BRES scan covers 2,900 `.bdae` files under the game cache `files/data` root. [`corpus-audit.json`](corpus-audit.json) records the read-only scan method, aggregate counts, string counts, and hashed examples. It retains raw serialized words and applies only explicit fixups; it does not rewrite assets.

## Material parameter type 20

In `glitch::collada::createMaterial` (`0x00631ce8`, 1,768 bytes), the renderer parameter-name lookup runs first. If that lookup returns `0xffff`, the function reads the row type at parameter `+0x08`. At `0x00631e68` it compares the type with decimal `20`. The matching branch loads the parameter value object from `+0x14`, reads a C-string pointer from that object at `+0x04`, and calls `CMaterialRenderer::getTechniqueID` at `0x00631e88`. If the return is not `0xff`, it writes the returned byte to runtime `CMaterial+0x08`.

`getTechniqueID` (`0x005d4714`) interns the supplied string, scans the renderer's technique entries from `[CMaterialRenderer+0x18]` using `[CMaterialRenderer+0x10]` as the count and a 12-byte entry stride, and returns the matched entry ordinal. It returns `0xff` when no entry matches. This establishes type `20` as a special renderer-technique selection route in this consumer. The APK does not expose the original enum label, so the symbolic enum name remains unknown. The route also does not prove that every corpus name resolves in every renderer instance.

The whole target ELF disassembly contains 13 direct calls to this same `getTechniqueID` function. The type-20 consumer is the call at `0x00631e88`; the manifest lists all call VAs and caller symbols. The other direct calls implement scene technique changes, shadow-material setup, material attribute deserialization, technique-map reads, instance-material attribute-map selection (`0x00634694`), and blend-mode material creation. These are separate uses of technique-name lookup and do not establish additional meanings for serialized parameter type `20`.

## Effect pointer relocation

`CResFileManager::postLoadProcess` (`0x00658c90`, 2,064 bytes) reads the material table base at root `+0x60` and effect count at root `+0x54`. Material rows advance by `0x24` bytes. For an ordinary `SMaterial+0x18` value, it compares the raw word with the effect count and, unless the signed `GT` guard resets it to zero, writes `effect_base + raw_index * 0x74` back to `SMaterial+0x18`. The effect base comes from root `+0x58`; the `0x74` stride matches `CColladaDatabase::getEffect(int)` at `0x0060e3e4`.

The `0xffffffff` value takes a separate route. If `SMaterial+0x08` is zero, post-load writes zero to `+0x18`. Otherwise it passes the `+0x08` C-string to a temporary `CColladaDatabase`, advances the `+0x0c` string by one byte (skipping its `#` prefix), calls `CColladaDatabase::getEffect(char const*)`, stores the returned `SEffect*` at `+0x18`, then destroys the temporary database. The name accessor linearly compares the requested string with effect-row keys at row `+0x00`, stepping by `0x74`.

`CColladaFactory::createMaterial` (`0x006323d0`) forwards `SMaterial+0x18` in the `SEffect*` argument position of the effect overload. That overload (`0x00636c8c`) constructs an `SEffectList` from the current database and the supplied pointer, passes the list into renderer selection, then clears it. This connects both post-load material routes to the renderer construction path.

## Ownership and lifetime boundary

The `CColladaDatabase` wrapper stores `CResFile*` at `+0x00` and the factory pointer at `+0x04`. Its constructor calls `CResFileManager::load` and increments the returned `CResFile` reference count. A new `CResFile` initializes its reference count at `+0x04` to one, which is the manager cache's owning reference after insertion.

The manager constructor initializes its `+0x28` auto-unload byte to one. Both direct callers of `postLoadProcess` in this ELF are `CResFileManager::get` overloads. Each saves that byte, clears it before the load/post-load work, calls `postLoadProcess`, then restores it. In the nested external-effect path, the temporary database destructor therefore drops its `CResFile` reference while auto-unload is disabled. If the external load succeeds, its `CResFile` has an entry in the manager map. Static control flow consequently supports this lifetime for successful ordinary loads: the external file remains held by the resource-manager cache after the temporary wrapper is destroyed.

That cache hold is not an ownership reference attached to `SMaterial+0x18`. The database destructor can call manager unload when auto-unload is enabled and the post-drop count is one. Explicit `unload(char const*, bool)` reaches the iterator overload. With the boolean argument false, it drops and erases a resource at refcount one or less, but leaves a resource with more references in the map. With the boolean argument true, it also drops the map reference and erases the entry when references remain. The manager destructor drops cached `CResFile` references. `SEffectList` increments the `CResFile` reference for the database passed to it and stores that database's factory pointer and the `SEffect*` as ordinary words at entry `+0x0c` and `+0x10`; it does not retain the effect's originating file. For a cross-file sentinel effect, the list is constructed using the parent database, so it does not add a reference to the external effect file.

For a successful normal post-load, static control flow shows the cache keeps the external file after the temporary database is destroyed, and that the raw effect pointer has no separate external-file owner in the traced material/list structures. It does not prove whether another game subsystem keeps that external resource loaded, or whether an explicit unload can occur while a material using the pointer remains live. Treat external-effect lifetime beyond the cache's retained interval as unresolved; do not claim either guaranteed safety or a reproduced dangling pointer.

## Corpus findings

Across 2,900 valid BRES files, the scan found 4,329 material records and 3,854 effect records. Every material `+0x18` word is either one of 3,854 ordinary indices or one of 475 `0xffffffff` sentinels. Ordinary indices span `0` through `18`; each of the 3,854 indices selected an effect row whose `+0x00` key exactly matched the material `+0x0c` string after skipping its first byte. The corpus contains no value equal to or greater than its owning file's effect count, so those boundary cases remain unverified. The post-load guard is a signed `GT` compare and only resets values greater than the count; do not infer its behavior for other malformed values from this corpus.

All 475 external-sentinel materials have fixups for both `+0x08` and `+0x0c`. Their `+0x08` path is `GL_Diffuse_L1_VC_iPhone.bdae`; their `+0x0c` name is `#Multilight-fx`. The APK ZIP has no entry with that basename, and the recovered `.bdae` corpus has no file with that name. Thus the APK instructions prove how the external path/key lookup is attempted, but the available assets do not confirm that the external file contains a `Multilight-fx` effect row or that lookup succeeds.

The 950 type-20 parameter rows all occur under those 475 external-sentinel materials: each material has a `Multilight-fx-profile_GLES/CurrentTechnique` row and a `Multilight-fx-profile_GLES2/CurrentTechnique` row. Their eight value strings and counts are recorded in the JSON corpus audit. The names look like shader technique selections, but their actual renderer matches and the symbolic type-20 label are not established by the corpus alone.

## Verification and remaining gaps

Re-run the corpus scanner against the recovered `files/data` directory with:

```text
python tools/audit_material_records.py <recovered-files-data-root> corpus-audit.json
```

Regenerate the instruction excerpts and range manifest from the supplied APK with:

```text
python tools/build_route_evidence.py <Dungeon-Hunter-2-HD-v1-0-2.apk>
```

The evidence tools are read-only toward the APK and BRES inputs. No build or runtime test was performed. Unresolved items are the source enum label for `20`, the external BDAE's presence/content and effect lookup success, and the lifetime of cached external effects across later explicit unloads or manager shutdown.
