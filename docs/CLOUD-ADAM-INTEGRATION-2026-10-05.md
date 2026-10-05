# Cloud continuation of Adam's latest work

Base: `f9833a0142a5d6c8b3bea5cdb2f489a7f996727f` on the maintained Android reconstruction.
Adam: `791e961b12233100b303038c961666834f4beb9d` (2026-10-05).

The complete Adam checkpoint is pinned at `upstream/adam` as a Git submodule.
It includes his latest gameplay, menu-launch v69 and generic loader contributions.
This preserves access to the complete work without replacing the maintained
renderer, player, Ghost, save, properties, timers or persistent Lua owners.
Initialize it with `git submodule update --init upstream/adam` when inspecting
the remaining contributions. Host builds do not require this checkout.

## Selected implementation

The generic loader is imported into `port/level-loader`, including fixed and
procedural source/map assembly, original XML traversal, retained declarations,
object initialization and module/file lifecycle adapters. Its CMake now links
the maintained `dh2_level_world` and `dh2_scene_materials`; it does not build
another copy of their kernels. The native Android CMake selects the module.
ZIP acquisition uses Adam's `zip_asset_pack_v1` with host/system Android zlib.
The runtime factories, conditions, campaign restoration and active-map
publication still require connections to the maintained game. Merely compiling
this target does not replace the live Crypt loading path or make Swamp playable.

Adam's original-derived integer-map implementation is selected in the existing
Lua runtime. The retained Player skill Session owns one private map and delivers
`SetInt`/`GetInt` at its existing AIS callback registrations. It preserves source
hash collisions, missing-key insertion of zero and integer conversions. Loading
another script does not reset the map; another Character Session has a separate
map. The receiver remains live through VM finalizers. Missing identity/fractional
formatting services remain required failures even if Lua catches the error.
No replacement Player ScriptOwner or second Lua VM is created.

The import manifest records each selected upstream path and byte hash, including
the two adaptations (loader CMake and pointer-width receiver assertion).
Historical evidence is retained as upstream evidence, not relabeled as a fresh
original-engine run. The full upstream reports remain accessible in the pin.

## Cloud verification

`port/cloud` builds the combined maintained dependencies and prepares isolated
fixtures from unchanged bundled assets, paired tables and recovered scripts.
All six CTest checks passed in Debug and under AddressSanitizer/UBSan here:

- Existing Player skill preparation: all three classes and retained VM/provider
  ownership/error behavior. Existing update-session protocol regression passes.
- Original integer gold: 3,163 cases, 6,326 private-map snapshots, 35 real-VM
  checks and 15 unsupported-input guards.
- Four unchanged elemental faery updates (Rocky, Hotty, Wetty, Windy) pass through
  the retained Session with decoded player properties and an explicit host
  spell-level fixture. This closes the integer callback boundary in source; it
  is not a phone test or proof of complete faery combat/buff ownership.
- Nine recorded module-load cases and 12 recorded XML/file traversal fixtures
  replay, including 24 lifecycle/failure/cancellation adapter checks.
- Bundled fixed Crypt assembles under separate `CRYPT` and `CRYPT_REVISIT`
  identities: eight modules, 97 mesh instances, eight floors, 314 triangles,
  335 navigation nodes and 838 edges. Prior borrows and the current candidate
  survive failed preparation. Geometry is inspected, not rendered by this test.
- XML retained ownership/replacement/rejection regression passes.

Local LeakSanitizer cannot inspect processes in this managed execution runtime,
so local sanitizer replay uses `ASAN_OPTIONS=detect_leaks=0`; bounds and undefined
behavior checks remain enabled. GitHub Actions requests leak checks as well.
The workflow preserves CTest logs and the loader replay receipt.

One earlier upstream file-walk fixture receipt contradicts the later complete
receipt for identical input bytes. The cloud test uses the later
`level-file-walk-original.json` fixture results. Three current assembly captures
also differ from historical receipt hashes; the generated replay report records
these explicitly. Recorded event parity passes, but the original ARM engine was
not reexecuted here. The complete canonical cache, original ELF and Android
SDK/emulator are not available in this checkout. Swamp, all-map coverage, Android
ABI builds, APK installation and visible/device behavior were not rerun here.

## Remaining integration

Adam's newer targeted combat, character panels, equipment actions, potion HUD,
scrolling combat text and campaign-slot/menu launch work remain preserved in the
pin; they are not yet selected into this app. Adapt their source services to the
same persistent Player/Gear/property/Save/VM owners before selecting transport
or renderer code. His full renderer is not a drop-in replacement for this branch.

Next gameplay boundary: evaluate the remaining faery selection/buff providers,
then connect the target registry and combat application to actual Ghost owners.
Next loader boundary: a typed candidate lifecycle borrowing original declarations
and calling real template/property/factory providers, followed by retained actor
construction and container behavior. Fail at the exact unsupported declaration;
publish a new active map only after all reached required services succeed.
Swamp acceptance still needs its nine modules, source-backed mobs and the five
authored container declarations evaluated through genuine condition logic.

The current combined app is not a completed game. This checkpoint advances two
compatible source dependencies and makes their verification runnable in the cloud.
