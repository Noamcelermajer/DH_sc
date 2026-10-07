# GLES context and resource lifecycle

## Source identity and limits

This trace uses APK `Dungeon-Hunter-2-HD-v1-0-2.apk` (SHA-256 `32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`), member `lib/armeabi-v7a/libDungeonHunter2.so` (SHA-256 `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`). The extracted ELF hash matches the APK member. [`context-lifecycle-ranges.json`](context-lifecycle-ranges.json) records exact symbol ranges, mapped file offsets, and SHA-256 hashes, plus the raw `COpenGLES2Driver` vtable words. [`reference/context-lifecycle.asm`](reference/context-lifecycle.asm) contains selected full ARM listings; every displayed instruction or literal word was checked against the same ELF bytes.

This is static evidence. A vtable entry proves that a target is available for dispatch; it does not prove that Android reaches that entry at runtime. See [`../surface/ANALYSIS.md`](../surface/ANALYSIS.md) for the managed callbacks, Android device stubs, and swap boundary, and [`../../engine-rendering/ANALYSIS.md`](../../engine-rendering/ANALYSIS.md) plus [`../../engine-rendering/buffers/ANALYSIS.md`](../../engine-rendering/buffers/ANALYSIS.md) for the underlying texture and buffer operations.

## Android callback and EGL ownership

The APK's managed `GameRenderer.onSurfaceCreated` path calls `GameRenderer.nativeInit(1)`. The native wrapper at `0x005311c8` (`0x4c` bytes) takes two branches:

- On the first call, it invokes `appInit` and marks `g_appAlive`.
- On later calls, it stores the JNI integer argument in `m_bOGLLostContext` and returns.

The recovered ELF reference inventory identifies this as the only native use of the lost-context flag; no native reader or recovery call was found. The second `nativeInit` branch therefore records the callback condition but does not itself recreate the driver or resources. A consumer outside the statically traced code cannot be ruled out, so the downstream effect remains unresolved.

Managed Java configures an ES2 context and config chooser through `GLSurfaceView`; surface callbacks are delivered through that managed renderer. The native library has no EGL or `ANativeWindow` imports, no discovered `dlsym` import, and no EGL implementation strings in the investigated DSO. Its GLES2 `swapBuffersImpl` (`0x005aefac`) returns zero, and the traced `endScene` route flushes engine work without calling the driver's swap wrapper. The APK evidence therefore places context creation/currentness and display presentation at the managed/framework boundary; this native engine library does not own `eglMakeCurrent` or `eglSwapBuffers` in the examined paths. This matches the boundary documented in the surface analysis.

## Driver recovery routines in the ELF

The `COpenGLES2Driver` vtable has these callable slots, measured from the object's vptr/address point:

| Object vptr slot | Target | What the target does |
| --- | --- | --- |
| `+0x38` | `CCommonGLDriver::ReinitDriver` at `0x005b1b10` | Resets selected GL/driver state and restores cached buffer bindings. |
| `+0x3c` | `CCommonGLDriver::reloadTexturesData` at `0x005b1fe4` | Separately walks texture records and reloads eligible data-backed textures. |
| `+0x40` | `CCommonGLDriver::reloadShaders` at `0x005b15f0` | Walks registered shaders and regenerates them. |

`ReinitDriver` makes a virtual call through its own `+0x40` slot, which resolves in this vtable to `reloadShaders`. It then restores the viewport from stored dimensions, resets `GL_PACK_ALIGNMENT`, calls `CProgrammableGLDriver::driverInit` (`0x005b1ab4`), binds nonzero names from its cached buffer-binding table, restores shadow state, and clears buffers. Startup `genericDriverInit` (`0x005b3afc`) also calls `driverInit`.

The `ReinitDriver` body contains no call to the `+0x3c` texture reload hook and does not zero or regenerate all cached buffer object names. The texture reload hook exists independently in the vtable. It was not found as a direct call target elsewhere in the static call/reference search. `ReinitDriver` itself is likewise present as a vtable target, but no direct callsite into it was found. Its internal shader reload is established if `ReinitDriver` runs; invocation of `ReinitDriver` by the Android callback is not established.

## Shader, texture, and buffer behavior

When invoked, `reloadShaders` walks registered shader objects and calls `CGLSLShader::rmRegenerateShader` (`0x006df18c`). That function regenerates its stored vertex and fragment `CGLSLShaderCode` objects via `rmRecompileShader` (`0x006df5a4`), creates a new GL program, attaches the resulting shader objects, and links it. Shader object reconstruction is concrete engine capability, but no callback-to-driver invocation path was identified.

`reloadTexturesData` is a separate capability. For eligible records it dispatches texture unbinding, which deletes the old GL name and clears the stored name at texture offset `+0x54`; for data-backed cache textures it calls `CTextureManager::rmReloadDataTexture`. A later `CTexture::bindImpl` can generate a new GL name and upload data when that stored name is zero. This is not shown as part of `ReinitDriver`, and the static scan found no direct invocation of the texture reload hook.

Buffer handling is less complete for context loss. `CBuffer::unbindImpl` deletes the GL buffer and sets the stored name at offset `+0x18` to zero; `CBuffer::bindImpl` can generate a name when that field is zero. `ReinitDriver`, however, rebinds nonzero cached names and does not perform the zeroing/unbind step. The examined recovery body therefore does not establish fresh VBO name allocation after a context that discarded its objects.

## Reachability classification

| Finding | Evidence status |
| --- | --- |
| `GameRenderer.nativeInit` is called from managed surface creation; its later-call branch stores the lost-context argument. | APK callback and native function are traced; the flag's consumer is unresolved. |
| `ReinitDriver`, `reloadTexturesData`, and `reloadShaders` are targets in the exact GLES2-driver vtable. | Directly proven by the APK vtable words and matching function symbols. |
| Calling `ReinitDriver` invokes `reloadShaders`, then resets selected state and rebinds cached buffers. | Directly proven by the `ReinitDriver` body and its vtable dispatch. |
| `reloadShaders` can reconstruct GLSL program objects; `reloadTexturesData` can release/reload eligible texture data. | Directly proven as engine routines. Their Android runtime invocation is unproven. |
| Android surface creation or context loss invokes `ReinitDriver` or `reloadTexturesData`. | Not established; no native callback edge or static caller was found. |
| GLES buffer names are fully regenerated after context loss. | Not established; `ReinitDriver` rebinds its cached nonzero names. |
| Native engine code makes the EGL context current or swaps the Android surface. | Not present in the examined native boundary; managed/framework ownership is indicated by the APK integration. |

The APK contains useful shader and texture recovery code, but static evidence does not connect it to Android context recreation. A faithful lifecycle port still needs that missing invocation/ownership edge and a buffer-name recovery policy. No build or tests were run.
