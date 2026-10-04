# SWAMP module-zero Irrlicht movement diagnostic

This separate Android `NativeActivity` assembles the supplied SWAMP module-zero
source geometry through the checked BRES/MLX readers and the SceneMesh adapter,
then renders it with the official Irrlicht OGL-ES r6038 port. The screen has a
lower-left touch pad. Its stick drives source-world X/Y and a following camera;
the four selected source Prince default-warrior skins replace the earlier
colored-sphere marker.

The startup position comes from module zero's original `SpawnPoint` with
`entrypointID="0"`. Before movement, the code resolves that point against the
source floor and the constructor-derived object path mask `2`. Movement reuses
`dh2_swamp_movement_step` at a 20 ms fixed step. It checks both the current
point and each proposed endpoint against the path-mask-eligible module-zero
floor and holds position if no accepted floor is found. Speed 30 units/second
is a preview parameter. Movement still does not instantiate or update the
game's player Character or native Character state machine.

The touch receiver clears any held stick on Irrlicht's forwarded Android
`APP_CMD_LOST_FOCUS`, `APP_CMD_PAUSE` and `APP_CMD_TERM_WINDOW` commands, then
allows Irrlicht to process each lifecycle command. The inactive-window loop
also clears the stick and resets accumulated frame time as a fallback. Status
strings decode UTF-8 into wide characters, so the blocked-state middle dot is
rendered as punctuation rather than separate UTF-8 bytes.

The source module has 103 selected scene records, 54 draw commands, 10,816
vertices and 13,284 indices. The diagnostic omits exactly the verified
`_module_obj_4of4_brdwalk_sw_00-node` / `ColorMaterial` bridge-root draw because
its original effect state is unresolved. It maps the source `env_swamp.tga`
diffuse sampler on matching draws. The 22 visible `Material__11611` draws each
pair that diffuse with source `AlphaMap` path
`textures/pvr2_env_swamp_alpha.tga`. The diagnostic decodes that cache PVRTC
texture, copies its decoded alpha channel over the diffuse texture's alpha,
and selects Irrlicht's `EMT_TRANSPARENT_ALPHA_CHANNEL_REF` material for those
draws only. It leaves diffuse RGB intact; the upstream alpha-reference shader
discards values at or below its reference threshold. A host regression checks
the exact material/path pairing and the RGBA composition rule. This narrow
mapping does not reconstruct the rest of the referenced Collada effect.

The two visible `Material__11598` overlay draws now use Irrlicht's explicit
`EMT_ONETEXTURE_BLEND` mapping for source `GL_ONE, GL_ONE` factors and
`GL_FUNC_ADD`, with source `LEQUAL` depth testing and depth writes disabled.
The adapter asserts that exactly two source passes are mapped. It does not use
Irrlicht's `EMT_TRANSPARENT_ADD_COLOR`, whose GLES2 implementation uses a
different destination factor. Five source draws have no texture reference; one
is the omitted bridge root and the other four retain Irrlicht's default
material. Draw and sampler counts are reported on screen and in Android logcat.

## Prince source mesh and animation slice

The scene adapter loads four `_default_warrior-mesh-skin` controllers from
`prince_modular.bdae`, binds `atlas_modular_warrior.tga` on all four selected
source primitives, then deforms fresh vertices from immutable bind-pose
positions through the engine-skinning palette into mutable Irrlicht
`SMeshBuffer`s. The Irrlicht renderer node remains at identity. The source
`SceneBinding` computes owner, helper, authored graph, and animated-root
composition once; SWAMP spawn position is the development owner producer.

The current candidate now loads the complete authored Prince AnimationBank
(116 unique resources, 158 ordered registration occurrences), animation and
class/property tables, then drives source `Character::State` through the
shared `character::Coordinator`. The source Idle (state 3, sequence 262) and
Move/Walk (state 4, sequence 280; clip 1126) transitions run through the
shared two-slot `BlendedPlayback`; Idle selects clips 1040/1041. Registered
resources with no serialized animation payload are retained without made-up
timing. The host check verifies Walk pose deformation, release to Idle, and
single application of source owner translation.

This remains a bounded source integration, not full-game parity. The SWAMP
module-zero endpoint/path-mask movement is still a development producer; it
does not instantiate native Character physics or actor-radius collision.
External Character/AI services, full combat, triggers, and game-level
orchestration are not implemented here. Selected source materials use the
atlas and preserve UV/material-color input, but external Collada effects and
the original shader are not reconstructed. The four selected primitives have
no AlphaMap references; other model/material variants remain outside this
slice.

## Rendering and gameplay limits

Irrlicht is confirmed as the game's engine family. This diagnostic embeds the
official upstream Irrlicht OGL-ES r6038 port; the exact customized DH2 Irrlicht
fork/revision and its game-specific layer remain under investigation. The
supplied APK/BRES identifies `glitch::` classes, but this source slice does not
reconstruct that customized engine or the complete game. It is a source-driven
renderer and movement diagnostic.

The two source `Material__11598` passes are mapped to `GL_ONE, GL_ONE`,
`GL_FUNC_ADD`, `LEQUAL`, and depth-write-off. AlphaMap cutout is applied on the
22 verified `Material__11611` draws. Other LightMap or Specular samplers,
external Collada effects, source lighting, and native material sorting remain
unmapped. Four visible draws have no source texture references and use
Irrlicht's default material, which accounts for the broad white floor bands in
the current screenshot; smaller dark patches also remain. These gaps can
change the appearance of bridges, water and other transparent or lit surfaces.

Movement uses a point-sized endpoint check. It does not reproduce the original
player controller's acceleration, actor radius, continuous/swept collision,
wall response, integrated movement animation, AI, combat, triggers, scripted
gameplay, camera behavior or save state. This diagnostic currently exercises
the source Idle and Move state path only; it does not run the full native input,
physics or gameplay service stack. An endpoint can cross a thin wall or
narrow gap. The
full nine-module SWAMP floor collection supports the checked navigation
queries, while this scene and movement mode are restricted to module zero.

## Local build and status

Build a separate, local-only APK from the extracted supplied cache. Keep the
candidate output separate from the prior tested build:

```powershell
python port/android-app/build.py `
  --sdk ..\emulator-test\sdk `
  --ndk ..\emulator-test\sdk\ndk\29.0.14206865 `
  --cache ..\cache\files `
  --irrlicht-swamp `
  --irrlicht-static-dir port\irrlicht-android\build\variant-curated-api37\static `
  --build-dir port\android-app\build\irrlicht-swamp-prince-character-candidate
```

First build the pinned engine libraries with
`python port/irrlicht-android/build.py --build-dir port/irrlicht-android/build/variant-curated-api37`.
Install the runtime-smoke helper dependency with
`python -m pip install -r port/android-app/tests/requirements-irrlicht-swamp.txt`.

This is a development diagnostic, not full-game parity. It packages the
owner-supplied cache inputs listed below and has no Drive/GitHub upload step.

The previous runtime-tested artifact lives in
`port/android-app/build/irrlicht-swamp-prince-preview/`. The full-bank candidate
is written to
`port/android-app/build/irrlicht-swamp-prince-character-candidate/`; its APK is
`dh2-swamp-irrlicht-source-local-debug.apk`. It uses the separate package
`local.dh2.sourceviewer.irrlichtswamp` and launches directly into the native
SWAMP activity, so it can be installed alongside the default app. Host source
Character assertions and Android compile/package gates pass. Device smoke must
wait for `FIRST_SOURCE_CHARACTER_FRAME`, emitted after the first successful
renderer buffer swap; the earlier assembly token can arrive before Prince and
bank startup finish:

```powershell
python port/android-app/tests/irrlicht_swamp_native_runtime.py `
  --apk port\android-app\build\irrlicht-swamp-prince-character-candidate\dh2-swamp-irrlicht-source-local-debug.apk `
  --adb ..\emulator-test\sdk\platform-tools\adb.exe `
  --serial emulator-5558 `
  --require-prince-character `
  --output port\android-app\build\irrlicht-swamp-prince-character-candidate\runtime-character-16k
```

The app bundle contains the SWAMP BRES/MLX/entrypoint/diffuse/AlphaMap, Prince
modular model and atlas, plus the 12 checked animation/character table inputs
and 116 source animation-bank assets with per-file size/hash verification.
It also includes the pinned upstream Irrlicht shaders/native library, a hash
manifest, and local/third-party notices. It does not bundle unrelated
encounter or village cache sets.
The bundled `LOCAL-ASSET-NOTICE.txt` records the original cache provenance;
the `third-party-notices/` directory carries Irrlicht and bundled library
notices. See the repository [provenance and rights](../../../RIGHTS.md) record.

The current APK is built with Android build tools 37.0.0 and NDK r29 for
`arm64-v8a` and `x86_64`, signed and checked with `zipalign`, and packaged as an
API 37 NativeActivity. Host source Character assertions and both ABI 16 KiB ELF
alignment checks pass. The parent-owned Android 17/API 37 x86_64 16 KiB runtime
also passes for this exact APK: complete-bank state selection, visible Idle/Walk,
both touch axes, release stability and same-process resume. The
separate integrated app has its own record in
[IRRLICHT-SWAMP-IN-APP.md](../../android-app/IRRLICHT-SWAMP-IN-APP.md).

```text
APK: port/android-app/build/irrlicht-swamp-prince-character-candidate/dh2-swamp-irrlicht-source-local-debug.apk
Size: 71,416,410 bytes
SHA-256: b367d0fa2e21ebae18c2552e81c16a398f0d4adb3d60b9c07eaf18f9f74dd8f1
Build report: port/android-app/build/irrlicht-swamp-prince-character-candidate/irrlicht-swamp-build-validation.json
Host report: port/irrlicht-android/build/prince-character-host-checks/validation.json
Runtime report: port/android-app/build/irrlicht-swamp-prince-character-candidate/runtime-character-final-16k/irrlicht-swamp-runtime-validation.json
```

The helper run recorded below covers the prior eeb3 source-Prince preview artifact.
It is separate from the upstream dwarf HelloWorld smoke; that sample proves
engine startup only and is not a game run. The new full-bank candidate passed
its own host and device visual/movement/resume checks. Consolidated reports
and exact scope are in [the Character checkpoint](../../../docs/CHARACTER-RUNTIME-CHECKPOINT-2026-10-04.md).

## Previous artifact runtime record

| Device | Result | Source scene and Prince | Movement / rendering | Runtime evidence |
| --- | --- | --- | --- | --- |
| Android 17 / API 37, x86_64, 16 KiB pages (`emulator-5558`) | Passed; installed APK hash matched build | 53 of 54 scene draws rendered; 1 unresolved bridge-root draw omitted; 10,816 vertices / 13,284 indices; 49 diffuse draws and 2 additive passes mapped. Prince: 4 controllers, 27 joints, 487 vertices, 586 triangles; all 4 atlas parts mapped. | +X and +Y moved; release settled to stable idle positions. Prince remains visible head-to-feet in initial Idle, held Walk, and resumed screenshots. No fatal renderer errors, GL errors, or native crash markers. | `port/android-app/build/irrlicht-swamp-prince-preview/runtime-final-16k/` |
| Android 17 / API 37, x86_64, 4 KiB pages (`emulator-5556`) | Historical geometry-only pass; not current Prince build | Earlier artifact `2b4a0232...` predated Prince integration and additive mapping. | Earlier +X/+Y movement passed; it does not validate the current renderer. | `port/android-app/build/irrlicht-swamp-curated/runtime-final-4k/` |

An earlier Prince build (`543019887d1dbbfb47e46bf525a1f86c6314ca726811f4831d6fe63862eaf9d5`)
was a visual regression: Idle framing cropped the head and Walk disappeared.
Its screenshots and report remain under
`port/android-app/build/irrlicht-swamp-curated/runtime-16k/` as failure evidence.
The current build corrects owner/helper/source-graph compensation, camera
framing, and the two additive overlays. Its screenshots show the full Prince
in both sampled motions and no broad foreground black overlay. White fallback
floor bands and smaller dark patches remain visible, so the diagnostic is not
visually complete. A HOME/background then same-process NativeActivity resume
also passed: source position stayed at `(1099.104, -203.522, 255.0)`, Idle was
restored, and the renderer loop resumed. This does not test process-death save
restoration. The detailed report, screenshots, and app-scoped logs are in the
runtime evidence directory; the consolidated report is
`reports/reconstruction-2026-10-04/irrlicht-prince-runtime.json`.

Run the combined host assertions (source module placement/material policy,
movement boundaries and rollback, UTF-8 status decoding, joystick axis
mapping, diagonal clamp, 20 ms pacing, catch-up cap and pause reset) with:

```powershell
python port/irrlicht-android/swamp-smoke/tests/run_host.py --cache ..\cache\files
```

The report is written under the ignored local `port/irrlicht-android/build/`
directory. The prior source-Prince APK was installed and exercised on the
16 KiB profile only; the 4 KiB result above belongs to an older geometry-only
build. The new Character/AnimationBank candidate passes its own 16 KiB device validation.
The rendering and gameplay limits listed above remain open work.
