# Recovery findings and interpretation

## Inputs and identities

The source of truth is the supplied APK, not an assumed online version or an earlier compatibility patch. It contains `classes.dex`, the launcher/resources, `libDungeonHunter2.so` (15,938,284 bytes), `libStormGLOFT.so` (907,744 bytes), and `libnativeinterface.so` (11,320 bytes) under `armeabi-v7a`; another copy of the small JNI library exists under `armeabi`. All three examined native libraries are ELF32 ARM. SHA-256 hashes are recorded in the reports.

The package is `com.gameloft.android.GAND.GloftD2SS`. The manifest declares minSdk 8, no explicit targetSdk, and launcher `Zirconia_DRM`; it also includes newer compile-SDK metadata. Additional save-restoration classes are present in this supplied DEX. A filename containing v1.0.2 does not prove pristine release provenance. No account of the original studio build environment is asserted.

## Native recovery

| Library | Unique named functions | Physical function ranges | Interpretation |
| --- | ---: | ---: | --- |
| `libDungeonHunter2.so` | 31,021 | 31,018 | Rich static/dynamic symbols and mapping metadata; all named instruction ranges decoded without Capstone failures |
| `libStormGLOFT.so` | 1,596 | 1,500 | Many aliases and unsymbolized ranges; ARM/Thumb inference is less reliable without mapping symbols |
| `libnativeinterface.so` | 10 | 10 | Small component suitable for manual source reconstruction; distinct from the main engine |

The engine has 54,463 relocations, 1,628 vtables, 30,992 unwind-index entries and 867 unique source filenames in `STT_FILE` records. These records preserve names and ABI evidence; they do not recover class data layouts or source-file contents. Function aliases share the same physical machine-code range and are preserved in the indexes instead of inflating recovery counts by copying the same code.

All executable bytes, including PLT and unattributed gaps, are retained in the assembly bundle and independently round-tripped against the ELF inputs. Decoder coverage and byte preservation are different claims. Undecodable support-library ranges remain explicit raw bytes; their instruction semantics are unresolved.

Ghidra outputs are indexed by normalized ELF address and original analysis address/image base. `success=true` means the decompiler emitted pseudocode, **not** that it understood the function correctly. Warning comments, failed functions, unmatched symbol starts and heuristic extra functions are reported. Indirect calls, register conventions, aliased memory, inlined code, templates and old compiler constructs require human review. ARM/Thumb mode is recovered from `st_value` and corrected explicitly where generic analysis introduced wrong flow. Reproduction depends on analyzer/tool versions and can differ in heuristic function counts.

## IDA Pro runtime findings — 2026-10-07

IDA Pro 9.3 maps `Character::Kill` (`0x3a5b18`) → `DropLoot` (`0x3a5ae4`) → guarded `ItemObject::DropLootTable` (`0x3ecba0`) → `ItemInventory::AddLoot` (`0x40407c`) → pooled `ItemManager::Spawn` (`0x3eacd0`). `Kill` skips an already-dead actor, returns early for ordinary player death, and calls loot only when current-level dword `+336` is zero. `DropLootTable` requires live actor handles and either a Boss/MiniBoss or eligible player/self killer. `GetInventoryToDrop` reads source properties 195/196: 195 is the gold `value_bonus256`, 196 is the magical `power_bonus256`. `DropLoot` requests power count `-1` (source probability path); it is not a gold bonus. The final AddLoot flag is `false`, enabling difficulty sibling selection. Do not call staging from the Died-animation branch without these guards.

Loot selection counts attached PlayerInfo Character pointers and reads class ID at Character+`0x13C8`: Warrior 263, Rogue 325 and Mage 290. DistType 2/3 separately repeats by total active player count. The exact percentage switch is `InfiniteLootDrops`. `DBG_DropAllLoots` is a different switch that sets the inventory byte selecting all ItemList entries. Level+`0x118` is the raw difficulty passed through `Application::LoadLevel`; both Level constructors initialize +`0x150` (+336) to zero, and `Character::Kill` skips loot when it is nonzero. No setter for +336 was found. Difficulty variants use +`0x118` with exact adjacent `_Hard`/`_VeryHard` item-name checks; this is not the save difficulty.

The selected V4 inventory stages drops separately from player inventory and pickup transfers through `add_item(false, true)`. IDA's `CalcLootItemValue` (`0x4020b4`) has a dedicated Type 13 gold branch; V7 now feeds it from the same inventory RNG. Original `AddLoot` row 124 (`Gold_01`) matches native item/value and RNG; pickup adds the exact value to V4 gold and retires the staged item. `Interact` checks potion capacity separately and queries full inventory only for equipment-slot items. IDA `ItemObject::InitAgain` reads AudioVisualID at `ItemInstance::GetItem()+84`, i.e. item-record word 21; word 24 is BaseProp. The current Android source connects the guarded player-kill edge to V4 loot staging, the original ItemAudioVisual table and `itemdrops.bdae` subtree, a Box2D sensor, and deferred MoveOn pickup. It supports one active Warrior/Rogue/Mage on Normal difficulty with the recovered level gate. Android compile and live loot/pickup remain unverified; `DBG_DropAllLoots` (temporary inventory flag that expands every ItemList entry), other classes/multiplayer, `AutoTransmute`, full-inventory UI and reward progression remain open.

Adam's later Kill/drop adapter set remains useful ordering/ownership evidence, but depends on full Character, PlayerManager, ItemManager, physics, audio, quest and XP services. Current Android code hooks the alive-to-dead melee edge once, uses the existing Player V4 inventory and process RNG, and retains the staged ItemInstance as the sole item owner while rendering/physics live in a pointer-keyed sidecar. Sensor contacts in MoveOn states 4/19 defer pickup until after the physics step; persistent contacts retry capacity-rejected pickup. Compile/live verification is pending, and full multiplayer, debug-drop-all, auto-transmute and reward behavior remain disconnected.

IDA also confirms `Level::_LoadPlayer` (`0x3f0018`) selects an active `SpawnPoint` by `Level+0x110`, applies its position/rotation and floor snap. `prepare_world.py` now emits both Crypt points in `crypt01.spwn`; the fresh Android path selects ID 0 and uses the floor-snapped source position, while resume preserves the saved pose. The host audit verifies IDs 0 and 2, floor snapping and invalid-ID rejection; packaged DWLD bytes remain unchanged. The parser currently covers Crypt's two active unique points; ObjectManager activation/order and broader world transforms remain open.

## Debugging metadata

The main library contains 150,327 DIE records, 136,458 validated DIE references, 11,621 type records and 19,692 subprogram records. Only 1,308 subprogram DIEs have nonzero addressed ranges, representing 982 distinct addressed names. These counts include declarations, duplicates, inlining and runtime/library material; they are not counts of recovered gameplay implementations.

All 32 compilation units concern licensing/online glue, STLport, or libgcc. There are 24,821 line rows across 212 source paths. The exporter retains DIE attributes, raw operands, references, location/range information and line-program commands, with zero parsing errors. The `.hpp` sketches contain readable declarations and confidence limits, without invented bodies.

## Android layer

Fresh APKTool and JADX recovery accounts for all 357 original DEX classes and 2,432 defined methods. JADX writes 364 Java files because it synthesizes 7 resource classes. Smali remains the bytecode-level reference. The initial JADX output has warning annotations and fails Java compilation in vendor billing code; original exports are kept unchanged.

The separate Java repair tree restores synthetic accessors and repairs decompiler damage against smali. Its local README and reports distinguish compilation, DEX/native-name checks, and remaining runtime work. JADX-renamed obfuscated fields and methods can break native `GetFieldID`/`GetMethodID` or reflection even when Java compiles. All such call sites require an explicit name audit before claiming engine compatibility.

The original storage strings include:

```text
/sdcard/Android/data/com.gameloft.android.GAND.GloftD2SS/files
/data/data/com.gameloft.android.GAND.GloftD2SS/libs/
<external-storage>/Android/obb/com.gameloft.android.GAND.GloftD2SS
```

Legacy strings also appear elsewhere. These describe original behavior, not a tested installation procedure for modern Android. A new port should import cache through Android's storage picker and place it in its own accessible directory, then update every native and Java path consistently.

## Cache and assets

The cache was reconstructed in numerical part order and parsed through local ZIP headers, stopping at the first incomplete entry. Recovery does not guess file boundaries by searching compressed payloads for ZIP magic and does not fill missing bytes. Complete entries must pass CRC-32 and decompressed-length checks.

The available prefix yields 5,839 files and 241 directories, totaling 509,330,036 uncompressed file bytes. The last incomplete entry is `m_world_map.wav`; its known compressed shortfall is 368,651 bytes. The original total file count and archive tail length are unknown.

The original text exports include game-object/module configuration and 32 GLSL sources plus shader configuration. See cache format reports for BRES/BTEX/PVR signatures, XML counts and duplicate-attribute filenames.

The new `port/engine-resources` implementation confirms the BRES whole-buffer relocation algorithm from original instructions. A fixup entry identifies the location of a four-byte pointer field. The first entry names the header's already-relocated table pointer; later entries relocate both the table entry and its pointed-to field. All 2,901 recovered images match the original in-place mutation exactly. Native ARM64 pointers must be kept separately from these serialized fields. The port exposes 13 top-level Collada libraries and their record strides, including 10,933 geometry and 49,060 animation records across files. Counts include repetition and do not imply distinct assets.

The subsequent `port/asset-payloads` module decodes all 10,924 type-0 meshes (interleaved streams), their 1,641,664 vertices and 1,088,422 triangles. Nine type-1 geometry records remain unsupported and are individually listed. Actual mesh scalar types are float and unsigned byte. The primitive mapping `[6,4,3,1,2]` is an engine enum table, not a direct GL mapping. All observed primitive buffers contain triangle-list indices. The Prince model alone uses the root `0x64` deferred-buffer branch: 173 meshes store vertex/index on-demand records with complete-file offsets instead of immediate bytes. These bytes are now resolved without recreating GPU objects or shared ownership.

Animation data has a second relocation scheme: each eight-byte entry holds a key count and an offset relative to the pointer word itself. Both embedded segments and deferred segments contained in the complete image are decoded. The cache audit validates 82,880 sampler/segment vector pairs and 890,301 time keys. Original accessors use double precision for compressed key-time conversion, while keyframe search uses float precision and integer truncation; these paths can disagree at millisecond boundaries. Search's imported comparison helper is equality, not a less-than boundary guard: exact selected keys return false, and pre-first-key interpolation can return true before clamping its fraction to zero. Sampler-zero time-type selection is also preserved.

Twenty-six complete accessor/typed-search bodies pass 271,970 original-ARM32/compiled-ARM64 comparisons, with all 456 instruction addresses exercised. The full GPU/ownership mesh constructors and generic cached animation dispatcher are not claimed as reconstructed. Mesh target checks separately compare host and executed ARM64 output. See the payload module's format tables and four validation reports for scope and exception lists. Image/material decoding, scene/controller reconstruction, animation value application, split/external resources and rendering remain unfinished.

Memory/subfile readers retain original seek and callback quirks, including negative seek states, ignored seek failure, callback file identity, and subfile asynchronous advancement by requested rather than actual bytes. The port intentionally prevents unsafe memory copies and uses borrowed lifetimes pending ownership reconstruction. Exact evidence, ABI boundaries and test limits are in the resource module's README and validation report.

## Validated reconstructed component

`port/nativeinterface` supplies source for all ten original exported functions, including the four JNI entry points. It builds as ARM64 with 16 KiB-aligned load segments. Differential tests execute original ARM32 code in Unicorn for SHA-1, passphrase and license-file behavior; host-JVM smoke tests call the JNI methods. Exact test cases and known safety differences are documented in its report.

The original `storeLicenseKey` mixes UTF-8 bytes with `wcslen`, which can overread allocation slack. The reconstructed implementation documents a bounded, deterministic approximation rather than reproducing unsafe reads. Matching zero-padded test inputs does not prove equivalence for every real-world string or allocator layout.

This support-library result does not establish a working license service, working Android DRM flow, graphics compatibility or gameplay on a Fold7. No license check has been removed by the project.
