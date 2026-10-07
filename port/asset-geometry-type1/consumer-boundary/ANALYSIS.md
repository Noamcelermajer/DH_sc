# Type-1 geometry consumer boundary: spline animator candidate

## Result

The APK-matched follow-spline animator is not a demonstrated consumer of the nine serialized type-1 geometry records. Its only named factory path constructs a local two-point vector from constants and passes that vector to `CSceneNodeAnimatorFollowSpline`; its clone path passes the animator's already-owned vector. Neither constructor call receives a Collada database, `SGeometry*`, BDAE payload pointer, or geometry name. This closes the generic spline animator as an alternate consumer candidate, while leaving an unlabelled or indirect raw-pointer consumer unresolved.

## Factory input and field boundary

The original symbol is `glitch::scene::CDefaultSceneNodeAnimatorFactory::createSceneNodeAnimator(glitch::scene::E_SCENE_NODE_ANIMATOR_TYPE, glitch::scene::ISceneNode*)`, ELF VA `0x006b9928`, size `0x3c4` (964 bytes), file range `[0x006b9928, 0x006b9cec)`, SHA-256 `008cae88a53714eea3670254aab5f013c7274cd92eb50b8fe7188fcc912d3e8e`. Its mangled symbol is `_ZN6glitch5scene32CDefaultSceneNodeAnimatorFactory23createSceneNodeAnimatorENS0_26E_SCENE_NODE_ANIMATOR_TYPEEPNS0_10ISceneNodeE`.

The branch containing the call to the follow-spline constructor is at `0x006b9a90`–`0x006b9b48`. The bounded instruction listing is in [follow-spline-factory-branch.asm](reference/follow-spline-factory-branch.asm). In that branch:

1. The factory zero-initializes a local three-float point and an empty local vector, then inserts the zero point through the vector insertion helper.
2. It writes a second point directly at the vector's end. The float bit patterns are `0x41200000`, `0x40a00000`, and `0x41200000`, which are `(10.0, 5.0, 10.0)`; it advances the end pointer by 12 bytes.
3. At `0x006b9b34`, it calls `CSceneNodeAnimatorFollowSpline::C1` with animator ID `0`, the local vector, float `1.0` (`0x3f800000`), and float `0.5` (`0x3f000000`).

Thus, the factory's spline-animator construction input is bounded to two local `vector3d<float>` points and two scalar parameters. The point data is synthesized in the factory frame; it is not loaded from the type-1 record. The method signature itself exposes only the animator type and optional scene node as inputs.

## Constructor and consumers

| Original symbol | ELF VA / size / half-open range | SHA-256 | Evidence |
| --- | --- | --- | --- |
| `CDefaultSceneNodeAnimatorFactory::createSceneNodeAnimator(E_SCENE_NODE_ANIMATOR_TYPE, ISceneNode*)` | `0x006b9928` / `0x3c4` / `[0x006b9928,0x006b9cec)` | `008cae88a53714eea3670254aab5f013c7274cd92eb50b8fe7188fcc912d3e8e` | Creates the local two-point vector and calls the spline constructor at `0x006b9b34`. |
| `CSceneNodeAnimatorFollowSpline::CSceneNodeAnimatorFollowSpline(unsigned int, vector<vector3d<float>> const&, float, float)` | `0x006cccc0` / `0xd8` / `[0x006cccc0,0x006ccd98)` | `9a5a22c52b0b0ca1944ba2a460b632f8fc2fe84f66b207147318f02a395acde7` | Copies the passed vector into animator-owned storage and stores the scalar arguments. Mangled symbol: `_ZN6glitch5scene30CSceneNodeAnimatorFollowSplineC1EjRKSt6vectorINS_4core8vector3dIfEENS3_10SAllocatorIS5_LNS_6memory13E_MEMORY_HINTE0EEEEff`. |
| `CSceneNodeAnimatorFollowSpline::animateNode(ISceneNode*, unsigned int)` | `0x006cc830` / `0x490` / `[0x006cc830,0x006cccc0)` | `95e8617e26729c0bd710ce520646fed004c8cb9a2a4680e4caa5e5ede73d2925` | Reads animator-owned 12-byte points and interpolates them; it has no serialized geometry parameter. |
| `CSceneNodeAnimatorFollowSpline::createClone()` | `0x006ccd98` / `0x40` / `[0x006ccd98,0x006ccdd8)` | `e55170bcab714d4b111db8354e2b37819f02387badee5f4f2bb1b8ba54d90827` | Passes its existing point vector and stored parameters back to the constructor at callsite `0x006ccdc8`. |

The existing whole-ELF constructor-call census in [`../prefix-audit/ANALYSIS.md`](../prefix-audit/ANALYSIS.md) reports only these two direct constructor callers: the factory branch and `createClone`. The factory caller passes local data; the clone caller passes animator-owned data. `animateNode` consumes that owned vector. These named paths therefore provide no boundary through which type-1 prefix or payload fields could reach the spline animator.

## Recovered corpus and standard route

The APK-matched cache contains nine type-1 records: eight IDs named `Circle01-spline` and one `Line01-spline`. In all nine BDAEs, geometry entry 0 has the common 20-byte prefix `[0, 15, 3, 0, 0]`; its bytes are not fixup-marked. The bytes at payload `+0x14` are the adjacent type-0 geometry entry's SMesh payload. All nine selected scenes also contain a selector-3 instance name `#Circle01-spline` or `#Line01-spline`.

For those resource-less instances, the ordinary scene route strips the leading `#`, resolves the geometry ID, and reaches `CColladaDatabase::constructGeometry(IVideoDriver*, SGeometry*)`. That dispatcher reads only the type discriminator at `SGeometry + 8`, calls its factory only for type 0, and returns null for nonzero type. Its APK-matched range is VA `0x0060e634`, size `0x84` (132 bytes), SHA-256 `d7c22aecae934a74d1038d0c772e343ec9ce9e628d8534e4cd136978f70292c2`. The exact asset offsets and per-file hashes are recorded in the [prefix audit](../prefix-audit/ANALYSIS.md) and [payload census](../payload-inspection/corpus-census.json).

## Provenance and limits

All native ranges above are from the APK entry `lib/armeabi-v7a/libDungeonHunter2.so`, whose SHA-256 is `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`; the APK SHA-256 is `32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`. These ranges lie in the file-backed `PT_LOAD` with `p_offset = p_vaddr = 0`, so file offset equals ELF VA. The byte hashes above were recomputed from the local APK-matched ELF.

This evidence disproves the named default spline-animator factory and clone as type-1 consumers. It does not prove that no other runtime component consumes the records through an unlabelled raw pointer, computed dispatch, or code outside this APK. It also does not identify the type-1 prefix fields, payload extent, or the authoring-side schema. No source implementation, build, or tests are claimed.
