# Dungeon Hunter 2 native reconstruction

This repository reconstructs the game as a native Android application and documents the source behavior used to build it. The aim is a complete modern-Android game with maintainable systems and fan modding support. **The reconstruction is still incomplete.**

## Current build

The latest API 37 debug APK is published as a [GitHub prerelease](https://github.com/Noamcelermajer/DH_sc/releases/tag/native-ui-inventory-camera-api37-2026-10-08). Download the [APK directly](https://github.com/Noamcelermajer/DH_sc/releases/download/native-ui-inventory-camera-api37-2026-10-08/Dungeon-Hunter-2-native-ui-inventory-camera-api37-debug.apk). It builds ARM64 and x86_64 and passes APK signature and 16 KiB alignment checks. This exact APK was launched on a generic Android 17/API 37 x86_64 emulator with 16 KiB pages, not Fold7; the intro, main menu and Single Player submenu rendered. The recent stats, inventory callback and camera-anchor changes compile, but their gameplay effects have not all been verified live.

The latest run did not enter gameplay. The build maps 69 character-stat fields, wires inventory auto-equip/swap callbacks, and includes a forward camera anchor, but full click-driven inventory, Talent/skill, Fairy and authored-camera behavior remain incomplete or unverified. Enemy AI, combat/loot, campaign progression and save restoration also remain incomplete.

## Work map

- [`docs/PROJECT-CHECKLIST.md`](docs/PROJECT-CHECKLIST.md) — verified work and remaining completion tasks.
- [`port/android-native/`](port/android-native/) — selected native Android application and its build.
- [`port/level-world/`](port/level-world/) and [`port/game-data/`](port/game-data/) — reconstructed engine/game behavior, adapters and focused host tests.
- [`port/level-world/reference/`](port/level-world/reference/) — source addresses, evidence and implementation limits.
- [`docs/FINDINGS.md`](docs/FINDINGS.md) — concise cross-system reverse-engineering findings.
- [`docs/REPRODUCING.md`](docs/REPRODUCING.md) — build and verification setup.
- [`docs/SOURCE-AVAILABILITY.md`](docs/SOURCE-AVAILABILITY.md) — checked-in code versus required local inputs.
- [`RIGHTS.md`](RIGHTS.md) — provenance and rights notes.

## Build

Install the documented JDK, Android SDK and NDK, then build from `port/android-native`:

```sh
./gradlew :app:assembleDebug
```

Some source and asset checks require the original APK/cache as local inputs. They are not committed to this repository; follow `docs/REPRODUCING.md` and `docs/SOURCE-AVAILABILITY.md` to configure them. Host test runners are under the corresponding `port/*/tests` directories.

## Evidence and limits

A checked source function means only that function passed its stated evidence and test scope. It does not establish a complete subsystem or playable game. Host tests, Android compilation, package checks and live gameplay are reported separately. Original ARM code, assembly and decompiler output are retained as evidence; the reconstructed C++ modules are the buildable source. See the checklist for the current boundaries and next milestones.
