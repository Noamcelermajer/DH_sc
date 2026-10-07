# Effect-to-shader selection

## Scope and source identity

This trace follows a bounded runtime path in `lib/armeabi-v7a/libDungeonHunter2.so` from the COLLADA effect-list profile query into the GLES2 shader manager and then into material-renderer pass construction. It connects existing material/effect record observations to the shader and renderer packages, but does not decode more BRES fields.

The APK SHA-256 is `32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`; the ELF is 15,938,284 bytes with SHA-256 `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`. The range manifest records each original ELF VA, full mapped range size, source file offset, and SHA-256. The copied instruction rows in `reference/selection-excerpts.asm` were checked against the APK member's file-backed `PT_LOAD` bytes.

## Observed selection and pass construction

1. `glitch::collada::createMaterialRenderer` at `0x00636b6c` calls the `SEffectList` virtual entry at object-vptr displacement `+0x5c`. It first returns when any bit in `value & 7` is set. Otherwise, when `(value & 0x18) != 0`, it branches to the `SProfileGLES2Traits` specialization at `0x006361e8`. If that test is clear, it rejects values matching `value & 0x360`, the exact value `0x800`, and any remaining nonzero value. A zero value calls the `SProfileNullTraits` specialization at `0x006357a0`. These numeric tests and branch targets are confirmed; names and meanings for the mask bits are not established.

2. The GLES2 specialization at `0x006361e8` obtains a `CMaterialRendererManager*` from the `IVideoDriver` field at `+0xdc`, starts renderer construction by calling `beginMaterialRenderer`, and walks the selected effect-list entries and passes. For each pass, it loads the driver's shader-manager field at `+0xd8` and calls `SProfileGLES2Traits::createShader` at `0x00634b30`.

3. The trait helper reads four C-string pointers from the current pass at `+0x04`, `+0x0c`, `+0x10`, and `+0x18`. It measures and appends those strings in that order into a temporary string, with no separator insertion visible in this function. It then calls `CGLSLShaderManager::createShader` at `0x006e01b4`, passing the concatenated string as the first C-string argument, the four original pointers as the next four C-string arguments in order, and null for both `IReadFile*` arguments. The assembly proves these pointer and call relationships; it does not label the four strings as particular resource fields such as vertex filename, entry point, fragment filename, or profile name.

4. The shader-manager overload at `0x006e01b4` is documented with its full range in [`engine-shaders/original-functions.json`](../../engine-shaders/original-functions.json). That range performs a name lookup first. On a miss, it requests two `CGLSLShaderCode` objects with numeric stage values `4` and `14`, then delegates to `createShaderInternal`. The shader package traces those objects through source loading, compilation, program linking, and reflection. The stage enum names and their full semantics are not inferred here.

5. After the trait call, the GLES2 specialization constructs a render-state object from the pass and calls `CMaterialRendererManager::addRenderPass` at `0x005dcf2c`. Its original signature accepts `boost::intrusive_ptr<IShader const> const&`, `detail::renderpass::SRenderState const&`, and `detail::material::SRenderState const&`; the specialization therefore passes the selected shader object together with two state inputs into render-pass construction. Later material commit behavior, including selecting a render pass, using the linked GLES program, and committing material parameters, is traced in [`engine-rendering/ANALYSIS.md`](../../engine-rendering/ANALYSIS.md).

## Evidence limits

- The mask values are observed control-flow selectors only. Their symbolic profile names, capability meanings, and source format contract are unresolved.
- Pass offsets `+0x04`, `+0x0c`, `+0x10`, and `+0x18` are direct reads in the trait function. This evidence does not assign serialized `SEffect` field roles to them.
- The BRES material/effect records in [`../ANALYSIS.md`](../ANALYSIS.md) retain unresolved fields and fixups. A matching string or pointer fixup does not prove that a record supplies these pass strings.
- The shader manager's code-stage cache insertion behavior, `glsl.config` content, shader compile/link result on a device, GL-context lifetime, and runtime binding values remain open in the shader and rendering analyses.
- This static path does not prove which materials, effects, or shader pairs are reached during a particular gameplay session.

No tests or builds were run.
