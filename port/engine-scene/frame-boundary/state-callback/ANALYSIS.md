# Concrete state draw callback to SceneManager

## Source and result

This is a static ARMv7 trace for `lib/armeabi-v7a/libDungeonHunter2.so` from the supplied APK. The APK and ELF hashes are recorded in [ranges.json](ranges.json). [reference/state-callback.asm](reference/state-callback.asm) contains a fresh disassembly of each recorded function range directly from the hashed ELF bytes, plus the relevant vtable words. No build or runtime test was run.

**A concrete `StateMachine::Draw()` callback reaches the game-side `SceneManager::drawAll` wrapper: `GSViewer::Draw`.** The evidence does not establish that `GSViewer` is active in any particular live frame.

## Dispatch and receiver identity

`StateMachine::Draw()` at `0x0033a100` reads the last active state entry and dispatches state vtable displacement `+0x1c`. The `GSViewer` state vtable has its normal address point at table offset `+0x08`; its raw table entry at `+0x24` is `GSViewer::Draw(StateMachine const*)` at `0x003872bc`. Thus the dispatcher slot and the concrete callback agree.

`GSViewer::Draw` loads `Singleton<Application>::s_inst`, then the application field at `+0x10`, then the device field at `+0x1c`. It dispatches the receiver manager's vtable displacement `+0x3c` at `0x003872e8`. The receiver is the game-derived manager, established by the creation path:

1. The `.init_array` entry at `0x0095620c` points to the `IrrFactory` translation-unit initializer at `0x00350b24`.
2. That initializer constructs `IrrFactory::s_factory` by calling `glitch::CIrrFactory`'s constructor. The base constructor stores `this` into `glitch::CIrrFactory::s_instance`; the initializer then replaces the object's vptr with the `IrrFactory` vtable.
3. The APK's `glitch::CAndroidOSDevice` C1 and C2 constructors call `glitch::IDevice::createGUIAndScene()` directly at `0x006a0708` and `0x006a0870`. That function obtains `glitch::CIrrFactory::getInstance()`, dispatches factory slot `+0x0c` for `createSceneManager`, and stores the returned pointer at device `+0x1c`.
4. The custom `IrrFactory` vtable maps that slot to `IrrFactory::createSceneManager` at `0x00350a80`. That function allocates a `0x494`-byte object and calls the game `SceneManager` constructor at `0x00352c3c`.
5. The game constructor installs the `SceneManager` primary vptr at table address point `+0x1c`. In its vtable, raw offset `+0x58` targets game `SceneManager::drawAll` at `0x00359338`. Raw offset `+0x58` minus the address-point offset `+0x1c` gives runtime vtable displacement `+0x3c`, exactly the displacement used by `GSViewer::Draw`.

The same raw `+0x58` slot in the engine base `CSceneManager` vtable targets `glitch::scene::CSceneManager::drawAll` at `0x0058b7f4`. That is not the target of this call: the receiver has the derived game `SceneManager` vptr. The game wrapper calls `LightSetManager::Update()` and game `_drawAll()`; `_drawAll()` composes engine scene-manager primitives and does not call the generic engine `CSceneManager::drawAll` entry.

## Bounded callback search and limits

The manifest records all 12 named `*::Draw(StateMachine const*)` callback ranges found in the APK symbol table, including the interrupt-loading thunk and implementation. Among these callback bodies, `GSViewer::Draw` has the manager vcall at `+0x3c`; no other callback has a direct branch to either `SceneManager::drawAll` or `CSceneManager::drawAll`, or a visible `+0x3c` vcall. `GSInit::Draw` and `GS_InterruptLoading::Draw` make indirect calls through other slots. The short callbacks tail-call state recursion, menu drawing, `Level::Draw`, or `LevelMap::Draw`.

This is a bounded callback-body search, not an exhaustive transitive call-graph proof for every menu, level, or object-manager descendant. In particular, it does not show that the normal gameplay `GSLevel` path reaches this wrapper. `Application::PostInit()` selects `GSInit` as the initial state; later state selection depends on game execution. Static APK evidence cannot identify the state active in a live frame or establish that `GSViewer` is reached during a specific play session.

## Exact ranges

`ranges.json` records hashes and file offsets for the dispatcher, factory/manager construction chain, both `drawAll` implementations, every callback in the bounded search, the five relevant vtables, the `.init_array` entry, and the GOT relocation slots used to identify the factory and application singletons. The derived and base table slots are recorded separately to keep game-side orchestration distinct from engine methods.
