# Android EGL and surface boundary

## Source identity and byte evidence

This trace uses the APK `Dungeon-Hunter-2-HD-v1-0-2.apk` (SHA-256 `32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`), member `lib/armeabi-v7a/libDungeonHunter2.so` (SHA-256 `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`). [`surface-functions.json`](surface-functions.json) records PT_LOAD mapping, file offsets, exact sizes and SHA-256 for nine additional native ranges and two four-byte vtable slots. [`reference/surface-functions.asm`](reference/surface-functions.asm) preserves the matching ARM listing blocks; each displayed byte row was compared with the APK ELF bytes. The callback/device ranges already documented in [`../original-functions.json`](../original-functions.json) are referenced below rather than duplicated here.

Recovered symbol tables show no undefined dynamic symbols matching `egl*`, `ANativeWindow*`, or `ALooper*`. That is a symbol-table search result only; it cannot exclude `dlsym` or code in the Android framework.

## Surface creation and context recreation

The APK's managed integration uses `GameGLSurfaceView extends GLSurfaceView` and a `GameRenderer`. Its renderer callback `onSurfaceCreated` calls `nativeGetJNIEnv`, then `DungeonHunter2.nativeInit`, then `GameRenderer.nativeInit(1)`. The managed code is cited here only to place the JNI boundary; it is not copied into this engine package.

`GameRenderer.nativeGetJNIEnv` (`0x0053115c`, 32 bytes) stores JNI argument `r0` through a resolved global slot. It does not call JNI `GetEnv`, `AttachCurrentThread`, or an Android looper API in this range. `nativeGameRenderer` (`0x00531150`) and `nativeConfig` (`0x00531154`) each return immediately.

`GameRenderer.nativeInit` (`0x005311c8`) calls `appInit` only while `g_appAlive` is zero, then sets `g_appAlive`. When already alive, it stores its integer third JNI argument into `m_bOGLLostContext`. The Java callback passes `1`, but the native wrapper does not recreate the driver or reinitialize GL resources on that branch. In the recovered native references, no read of `m_bOGLLostContext` was identified, so its downstream effect is unresolved. The first-time `appInit` route and Android driver selection are traced in the parent platform analysis.

The Android device's `createWindow` (`0x006a02b0`, 8 bytes) returns `1` without acquiring a native window or creating EGL state. `CAndroidOSDevice::setResize(int,int)` (`0x006a02b8`, 4 bytes) is a return-only stub. `closeDevice` only clears the device's running byte in its recorded range; it contains no EGL teardown. These bounded functions expose no native surface ownership or context release path.

## Pause and resume

`GameGLSurfaceView.onPause()` and `onResume()` delegate to the superclass. Separately, the view's focus callback invokes `DungeonHunter2.nativePause(1)` when focus is lost and `nativeResume(1)` when focus returns, subject to the overlay and media conditions visible in managed code. Native pause sets the app pause state and calls application pause/interruption methods; native resume invokes the corresponding resume methods and clears the state. The traced JNI pause/resume functions do not call `CAndroidOSDevice::closeDevice`, an EGL API, or a GL context restoration routine. The exact relationship between framework GL thread suspension and native app pause state is outside these native ranges.

## Resize and frame callbacks

`GameRenderer.onSurfaceChanged` calls native `nativeOnSurfaceChanged(width,height)`. The exact native range (`0x00531190`, 12 bytes) moves width and height into the arguments for `nativeResize` (`0x0053117c`, 20 bytes), which writes them to `s_windowWidth` (`0x0099b10c`) and `s_windowHeight` (`0x0099b110`). The JNI callback does not call `CAndroidOSDevice::setResize`; no viewport update or EGL surface replacement is established by this path.

`GameRenderer.onDrawFrame` calls `nativeRender`; `nativeOnDrawFrame` (`0x00531158`) itself is a return-only stub. `nativeRender` enters `appUpdate`, which runs the stored device and conditionally updates the application. A native GL driver's `CCommonGLDriver::endScene` range (`0x005b1838`) calls the virtual method at vptr displacement `+0x1fc` and then `IVideoDriver::endScene`. In the recorded `COpenGLES2Driver` vtable, the `+0x1fc` slot points to `IVideoDriver::flush` (`0x005adb9c`); this flush entry tail-branches to pending-batch drawing. These calls account for engine frame work, but they do not establish display-surface presentation.

The native `CCommonGLDriver::swapBuffers(int)` dispatches through vptr displacement `+0x218`. The exact `COpenGLES2Driver` vtable slot at `0x00977d38` points to `COpenGLES2Driver::swapBuffersImpl` (`0x005aefac`), whose entire body returns zero. This is a bounded no-op engine hook. The `endScene` body does not directly call `CCommonGLDriver::swapBuffers`.

## Reconstruction boundary

The APK's managed code configures an ES2 EGL context factory and EGL config chooser on `GLSurfaceView`, and routes surface callbacks into the native methods above. No APK-native implementation of EGL display selection, EGL surface creation/destruction, `eglMakeCurrent`, `eglSwapBuffers`, native-window acquisition, context-loss recovery, or looper handoff was found in this trace. The native resize and device hooks are stubs or dimension stores, and the native driver swap implementation is a no-op. Therefore EGL surface lifecycle and actual frame presentation remain framework-owned or otherwise unresolved from the available native ranges. A faithful native recreation would require the Android framework/integration implementation that owns those operations; this package does not invent one.

No tests or builds were run.
