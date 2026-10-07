# Android device, lifecycle, input, and surface path

This note follows one native path from Android JNI entry points into the recovered `glitch::CAndroidOSDevice`, through frame updates, and into the game's touch-screen consumer. It is static reconstruction evidence; it defines no runtime behavior of its own.

## Binary identity and byte provenance

The source is APK `Dungeon-Hunter-2-HD-v1-0-2.apk`, SHA-256 `32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`, member `lib/armeabi-v7a/libDungeonHunter2.so` (15,938,284 bytes), SHA-256 `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`.

[`original-functions.json`](original-functions.json) contains 35 function ranges with original ELF virtual addresses, sizes, file offsets, SHA-256 hashes, and source-listing locations. The copied byte rows in [`reference/original-functions.asm`](reference/original-functions.asm) were compared byte-for-byte with the corresponding APK ELF ranges; every selected function range matched. The manifest also hashes four relevant `.data` symbols and four vtable ranges. Each vtable's raw words were compared with the original ELF bytes. Hashes cover exactly the recorded byte range; the APK and ELF hashes identify the source files.

The `function-index.csv`, ARM listings, symbol tables, and vtable catalog used for the comparison are under `../../../recovery/dh2-reconstruction/recovered/native/`. Recovered pseudocode was used only as a navigation aid; the ARM listing bytes and symbol records are primary evidence.

## Device creation

`Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeInit` (`0x005311c8`) checks `g_appAlive`. If it is zero, it calls `appInit` and sets it to one. Otherwise, it stores the JNI third argument in `m_bOGLLostContext`. The native entry does not pass those JNI arguments to `appInit`.

`appInit` (`0x00530ba8`) resets several application flags, obtains the storage path, and selects a stored window-dimension pair by comparing `Width_Screen` with `854`, `960`, or `800`, falling through to a fourth pair for other values. It then calls:

```text
glitch::createDevice(driver_type=1, dimensions, color_format=0x10,
                     flags=false/false/false, event_receiver=nullptr)
```

The native app stores the returned device, assigns the application singleton pointer, calls the symbol `Application::InitWin32(IDevice*)`, and reads the driver pointer from `device + 0x10`. The `InitWin32` name is the recovered symbol; it does not establish that this Android call creates a Win32 window.

`glitch::createDevice` (`0x005340ac`) fills an `SCreationParameters` object and calls `glitch::createDeviceEx` (`0x006a0748`). This Android binary's `createDeviceEx` allocates `0x10c` bytes and directly invokes `CAndroidOSDevice`'s constructor (`0x006a0634`). `IDevice::IDevice(SCreationParameters const&)` copies `0x58` bytes of parameters to `this + 0x5c`. `CAndroidOSDevice::createDriver` reads the word at `this + 0x5c`; the passed value `1` therefore selects the `glitch::video::createOpenGLES2Driver` call at `0x005b5dac`. The zero value selects `createNullDriver` at `0x005b9b38` in the same method.

The Android constructor initializes the base device, writes `1` to byte `this + 0x109`, initializes key codes, creates cursor-control state, calls `createDriver`, and then calls `IDevice::createGUIAndScene`. For the nonzero driver type passed here it also calls `CAndroidOSDevice::createWindow` (`0x006a02b0`), whose entire body returns integer `1`. That stub does not itself expose native window or EGL setup.

## Frame and device run path

`GameRenderer.nativeOnDrawFrame` (`0x00531158`) contains only `bx lr`. The recovered native frame path is `GameRenderer.nativeRender` (`0x005311a0`): it returns when `m_bOpenIGM` is nonzero and otherwise branches to `appUpdate` (`0x00530fc8`). `appUpdate` checks `IsExit`, calls `glitch::IDevice::run` on the stored device, and calls `Application::Update` only when `run` returns nonzero.

`IDevice::run` processes its internal queued-event path and then calls the function pointer at object-vptr displacement `+0x40`. The `CAndroidOSDevice` constructor installs the vtable address point at symbol address `+8`; the device table therefore resolves that call to `CAndroidOSDevice::runImpl` at table-symbol offset `+0x48` (`0x006a0440`). `runImpl` calls `glitch::os::Timer::tick` (`0x0060b22c`) and returns byte `this + 0x109`. `closeDevice` (`0x006a02a4`) clears that same byte. The JNI pause entry does not clear it.

After `Application::Update` begins, one path loads the pointer at `Application + 0x20` and calls `TouchScreenBase::ProcessEvents` (`0x0033c568`). The call is conditional in the caller; this note does not assume every update processes touch events.

## Pause, resume, and teardown

`DungeonHunter2.nativePause` (`0x00533424`) branches directly to `appPause` (`0x005309d8`). `appPause` sets `isDevicePause` to one, then calls `Application::Pause` and `Application::OnInterruptPause`.

`DungeonHunter2.nativeResume` (`0x005334dc`) clears `m_bOpenIGM` and branches to `appResume` (`0x00530974`). `appResume` acts only when `isDevicePause` is set: it writes `1` to `videoDone`, calls `Application::OnInterruptResume`, calls `Application::Resume`, and clears `isDevicePause`.

`GameRenderer.nativeDone` (`0x0053119c`) branches to `appDestroy` (`0x00530a1c`). `appDestroy` sets `IsExit`, drops the stored device reference, then calls `Application::Quit`. The traced code does not directly call `CAndroidOSDevice::closeDevice`; the eventual destructor/drop path is outside this slice.

## Touch input path

`GameGLSurfaceView.nativeOnTouch` (`0x00533440`) returns early when `Touch_Hack_int == 1`. Otherwise it calls `gettimeofday`, forms the integer expression `tv_sec * 1000 + tv_usec / 1000`, and calls `appOnTouch` (`0x0052f11c`) with JNI values plus additional stack arguments. `appOnTouch`'s decompiler signature omits those extra ABI arguments, so this note does not assign a role to the computed value or to the later `long` argument forwarded to the touch-screen method.

`appOnTouch` sends input only when the application pointer is nonzero and `InterLoad` is zero. It narrows the two coordinate inputs to 16-bit values, then dispatches action `1` through object-vptr `+0x20`, action `2` through `+0x24`, and action `0` through `+0x28`. The recorded `TouchScreenBase`, `TouchScreenIPhone`, and `TouchScreenWin32` tables resolve those slots to:

| Action | Object-vptr displacement | Resolved function | Follow-on behavior visible in ARM |
| ---: | ---: | --- | --- |
| `1` | `+0x20` | `TouchScreenBase::touchBegan` (`0x0033ac24`) | Calls `_AddToQueue` with event word `0`. |
| `2` | `+0x24` | `TouchScreenBase::touchMoved` (`0x0033ad28`) | Calls `_AddToQueue` with event word `1`. |
| `0` | `+0x28` | `TouchScreenBase::touchEnded` (`0x0033aeb8`) | Tail-branches to `touchCancelled` (`0x0033ae3c`), which calls `_AddToQueue` with event word `2`. |

`TouchScreenBase::_AddToQueue` is at `0x0033a9bc`. `Application::Update` contains a direct call to `TouchScreenBase::ProcessEvents` on the object at `Application + 0x20`, linking the queued touch path to a frame update. The concrete runtime class behind the application field is not identified by this path; only the common method slots across the recorded tables are established.

## Surface dimensions and limits

`GameRenderer.nativeOnSurfaceChanged` (`0x00531190`) moves its width and height arguments into the registers expected by `GameRenderer.nativeResize` (`0x0053117c`). `nativeResize` writes those two words to `s_windowWidth` at `0x0099b10c` and `s_windowHeight` at `0x0099b110`. The symbol records place `Width_Screen` and `Height_Screen` at separate addresses, `0x0099b114` and `0x0099b118`; `appInit` reads `Width_Screen`, while the surface wrapper writes the `s_window*` pair.

The captured surface callback does not call `CAndroidOSDevice::setResize`. That method (`0x006a02b8`) is a single `bx lr`. The listed assembly establishes where the JNI callback stores the dimensions, but it does not establish a later consumer, driver resize, viewport update, or GL context transition. The constructor's `createWindow` stub likewise does not establish host surface ownership.

## Source-family comparison and reconstruction boundary

The local build-source list names `CAndroidOSDevice.cpp`, and the recovered class and function symbols use the `glitch::CAndroidOSDevice` family. The repository's [engine scope note](../../docs/ENGINE-SCOPE.md) compares that name with Irrlicht OGL-ES's `CIrrDeviceAndroid`. This supports a family-level comparison only; this package does not have an exact matching upstream source snapshot and does not assign upstream method bodies or lifecycle semantics to the fork.

This path is sufficient to map calls and state transitions, but not to recreate Android window/surface ownership, EGL context behavior, lifecycle-thread synchronization, or every device-release callback. Touch-screen queue fields and the extra JNI input arguments also remain partially unnamed. No pure CPU implementation is proposed from this trace.

No tests or builds were run.


For the focused EGL, context, resize, frame-end, and present-boundary trace, see [surface lifecycle analysis](surface/ANALYSIS.md) and its exact ranges in [surface-functions.json](surface/surface-functions.json).
