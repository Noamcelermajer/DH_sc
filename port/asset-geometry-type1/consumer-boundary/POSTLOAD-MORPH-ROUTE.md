# Post-load morph-controller geometry link route

## Finding

There is an additional engine path that can place `SGeometry*` values in a morph controller's target array. `CResFileManager::postLoadProcess` handles controller records whose dispatch word at `SController+0` is `1`; it follows the pointer at `SController+8`, reads the target count at that object `+0x10` and the geometry-index array at `+0x14`, then replaces each accepted index with `CColladaDatabase::getGeometry(index)`. The instruction excerpt is in [postload-morph-link.asm](reference/postload-morph-link.asm).

This is pointer relinking, not a type-1 payload decoder. The morph mesh constructor retains the controller's data pointer and calls `CMorphingMesh::instanciateMesh`. That routine iterates the pointer array and calls `CColladaDatabase::constructGeometry(IVideoDriver*, SGeometry*)` at `0x0064b81c`. The central dispatcher at `0x0060e634` invokes its factory only when `SGeometry+8` is zero; it returns null for every nonzero geometry type. After that call, the morph loop stores the returned mesh handle and a corresponding scalar in its runtime target vector; it does not carry the original `SGeometry*` forward. Therefore a hypothetical morph controller that references one of the type-1 geometry records would still hit the existing type-0 gate before normal mesh construction.

Keep the two discriminator words distinct: `SController+0 == 1` selects the morph-controller route; `SGeometry+8 == 1` is the unsupported geometry type in the nine-record corpus. The first value does not mean that a target geometry has type 1.

## Route and direct-call bound

The observed route is:

1. `postLoadProcess` examines each controller and proceeds with morph-target linking only when its dispatch word is `1`.
2. The target array is traversed as 32-bit geometry indices. After the `index > geometry_count` skip test, the code calls `getGeometry(int)` and writes the returned pointer back into the same array slot. The emitted guard admits equality with the geometry count; this note does not treat that as proof that such an index is valid.
3. `CColladaDatabase::constructController` sends controller kind `1` to `constructMorph`.
4. `CMorphingMesh::instanciateMesh` reads the post-load pointer array and sends each `SGeometry*` through the central type-gated dispatcher.

A whole-ELF direct `BL` target sweep found exactly two calls to `getGeometry(int)`: `0x0060e6d0` from the integer geometry-construction overload and `0x00659258` from `postLoadProcess`. It found exactly two calls to `getGeometry(char const*)`: `0x0061aac0` from the by-name construction overload and `0x0061c034` from `CColladaDatabase::find`. The sole direct call to `find` is `0x0065c834` in `CRootSceneNode::addMaterial(char const*, ...)`; that caller requests lookup mask `16` and continues only when the returned kind is `16` (material). The three direct calls to the `SGeometry*` dispatcher remain `0x0060e6e4`, `0x0061aad4`, and `0x0064b81c`.

These are direct-call counts from the APK-matched ELF, not a proof against every indirect call or code outside the library. They account for the additional controller-link path and show that its known morph consumer returns to the same geometry type gate.

## Available BRES corpus

The verified controller census covers 2,901 manifest-listed BDAEs in the recovered cache prefix. It finds 727 controller records in 386 assets; all 727 controller dispatch words are zero, and 2,515 assets have no controllers. The census marks the cache archive incomplete, so these counts describe the available recovered corpus rather than every possible game asset. No morph-controller instance of this route is present in that corpus. The nine type-1 geometry records and their selector-3 references are separately listed in the [type-1 prefix audit](../prefix-audit/ANALYSIS.md).

Consequently, static engine code contains a conditional morph-target pointer route, but the available corpus does not exercise it, and its geometry-pointer loop has no nonzero-type construction branch. The prefix words and any other unlabelled or indirect type-1 consumer remain unresolved.

## Exact APK-matched ranges

All ranges below are from `lib/armeabi-v7a/libDungeonHunter2.so`, SHA-256 `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`. They are in the file-backed executable `PT_LOAD` with `p_offset = p_vaddr = 0`, so file offset equals ELF VA.

| Function | ELF VA / size | SHA-256 |
| --- | --- | --- |
| `CResFileManager::postLoadProcess(CResFile*, IReadFile*)` | `0x00658c90` / `0x810` | `e85095e743755648b2ca68999ddaca7fa1155ab335ee435b585ad2b7a1b13ad2` |
| `CColladaDatabase::getGeometry(int) const` | `0x0060e41c` / `0x18` | `3689e7cdc7ffb4a9ee331ad50e89c3db562dd17485b4f3be5b01dc6c2126aba6` |
| `CColladaDatabase::constructController(IVideoDriver*, SController*, CRootSceneNode*) const` | `0x0060fa24` / `0x4c` | `60416ffca6232a47ca640aa4d92494e91a315e1822d9b17324aba9293066104a` |
| `CMorphingMesh::instanciateMesh(IVideoDriver*, CRootSceneNode*)` | `0x0064b700` / `0x2c8` | `f40325c6bf01c984a1de96b3419a9380c60b10a5603736614b488d2eb69b21f5` |
| `CColladaDatabase::constructGeometry(IVideoDriver*, SGeometry*) const` | `0x0060e634` / `0x84` | `d7c22aecae934a74d1038d0c772e343ec9ce9e628d8534e4cd136978f70292c2` |
| `CColladaDatabase::getGeometry(char const*) const` | `0x0061aa48` / `0x60` | `2a47c4475278648579c56f0283d3269daa4e0c458caa517d12dc21eb42dd61bf` |
| `CColladaDatabase::find(char const*, unsigned int&) const` | `0x0061bf58` / `0x170` | `6d37e1daa2e2449c8beaec0ed97c7a8f329fa0bace2a4d9958e7645bb6986368` |
| `CRootSceneNode::addMaterial(char const*, IVideoDriver*)` | `0x0065c808` / `0x6c` | `d7e54f4af2f71f437b34eeb7fa321969e39dc8d62aca453b1332295f84413514` |

The APK SHA-256 is `32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`. The local ELF was byte-compared with the APK member before recording these ranges. This is static disassembly and corpus analysis; no build or tests were run.
