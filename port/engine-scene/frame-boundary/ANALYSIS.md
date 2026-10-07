# Application-to-scene draw boundary

## Scope and source identity

This note connects the recovered Android frame callback to the game-side draw dispatcher and its calls into `glitch::scene` and `glitch::video`. `Application` and the un-namespaced `SceneManager` are application/game integration here; this is a boundary trace, not engine source reconstruction.

The source is APK `Dungeon-Hunter-2-HD-v1-0-2.apk`, SHA-256 `32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`, member `lib/armeabi-v7a/libDungeonHunter2.so`, SHA-256 `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`. [`functions.json`](functions.json) records nine additional ranges. The copied instruction and data rows in [`reference/frame-boundary.asm`](reference/frame-boundary.asm) were byte-compared against the matching ELF slices; every byte matched.

## Frame entry and application draw dispatch

The parent [Android platform trace](../../engine-platform/ANALYSIS.md) establishes the managed `GameRenderer.onDrawFrame` boundary: `nativeRender` enters `appUpdate`, calls `glitch::IDevice::run`, and calls `Application::Update` when `run` returns nonzero. In the mapped `Application::Update` body at `0x0032ccc4`, one gated branch calls `Application::_Draw()` at `0x0032cdec`. This is not evidence that every callback reaches that branch.

`Application::_Draw()` at `0x0032ade8` is application-side orchestration. Its direct calls include:

- `StateMachine::Draw()` at `0x0033a100` and later `StateMachine::Draw2D()` at `0x0033a148`.
- On the selected current-level/debug paths, `CMaterialRendererManager::getMaterialInstance`, `CMaterial::getTechnique`, `IVideoDriver::setMaterial`, and `CSceneManager::setActiveCamera`.
- Debug scene traversal and profiling/menu overlay calls.

`StateMachine::Draw()` computes the active 8-byte entry count from its begin/end pointers, sets a drawing guard byte, loads the last entry, and dispatches that state's virtual slot `+0x1c`; it then clears the guard. `Draw2D()` dispatches the last entry's virtual slot `+0x20`. The separately named `RecurseDraw()` walks earlier entries while the drawing guard is set and calls virtual slot `+0x1c`. These bodies identify the dispatcher mechanics, but not which concrete state objects are active in a particular frame or what every derived draw callback does.

The `_Draw()` call list contains no direct call to `glitch::scene::CSceneManager::drawAll`. The generic engine `CSceneManager::drawAll` implementation and its internal order remain documented in the separate [scene submission trace](../render-pipeline/ANALYSIS.md); the application route reaches scene drawing through state callbacks and a separate manager wrapper described below.

## Game-side `SceneManager` wrapper and engine calls

The un-namespaced `SceneManager::drawAll(ISceneNode*)` at `0x00359338` calls `LightSetManager::Update()` and then `SceneManager::_drawAll(ISceneNode*)` at `0x003592b0`. This wrapper has additional conditional debug/capture branches. The mapped `_drawAll` sequence is:

1. Dispatch `drawInit` through the manager vtable slot `+0x40`.
2. If a root is supplied, dispatch `setupCamera` through `+0x44`. If the root is null and manager byte `+0x288` is set, call engine `CSceneManager::collectAllNodes()` at `0x0058b7ac`, then continue with camera setup.
3. Call game-side `_registerSceneNodes`; it updates batch-segment visibility and calls engine `CSceneManager::registerSceneNodes(ISceneNode*)` at `0x0058b88c`.
4. Call game-side `_RegisterAutomacticLights()`.
5. Dispatch `drawShadowReceivers` through `+0x4c`.
6. Call game-side `_renderLists(IVideoDriver*)`, which sorts its custom lists and dispatches engine `CSceneManager::renderList` template bodies. It also calls `IVideoDriver::deleteAllDynamicLights()` and engine `CSceneManager::clearDeletionList()` on observed branches.

The `_drawAll` body does **not** call the generic `CSceneManager::drawAll` entry. It composes engine primitives with a game-side registration/light/render-list sequence. This is a concrete boundary distinction: the engine draw routine is mapped, but this application wrapper uses a parallel orchestration path.

## Limits

The trace does not identify which concrete state callback invokes the game-side `SceneManager::drawAll` in a live frame, prove that this wrapper is reached by the active level, or resolve all indirect render-list callbacks. It does not establish a runtime camera choice, display presentation, the full `Application::Update` game sequence, or the relationship between this wrapper and every scene type. The evidence is static ARM control flow and exact bytes, not an emulator observation.

No build or runtime test was run for this note.
