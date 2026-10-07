# Material vec4 values to GLES uniforms

## Scope and source identity

This note traces one runtime material parameter from its `CMaterial` value storage through the active render pass and a linked `CGLSLShader` to `glUniform4fv`. It follows the already recovered effect-to-renderer selection path; it does not assign names or meanings to serialized effect/material fields.

The source is `lib/armeabi-v7a/libDungeonHunter2.so` from `Dungeon-Hunter-2-HD-v1-0-2.apk`. APK SHA-256: `32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`. ELF size: 15,938,284 bytes; ELF SHA-256: `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`.

[`uniform-ranges.json`](uniform-ranges.json) records full function and PLT stub hashes, virtual addresses, file offsets, and the file-backed `PT_LOAD` segment used for each range. [`reference/uniform-excerpts.asm`](reference/uniform-excerpts.asm) contains selected original ARM rows. Their byte columns were compared with slices mapped from the APK ELF; all listed full ranges are within the first file-backed `PT_LOAD` segment.

## Runtime path

1. `IVideoDriver::setMaterialInternal` (`0x005aa51c`) receives a `CMaterial*` and stores it at driver offset `+0xec`; it stores the pass selector byte at `+0xf8`. Those are direct stores in the ARM body, not inferred serialized fields.
2. `CCommonGLDriver::commitCurrentMaterialImpl` (`0x005b74e8`) reads the current material and pass selector, obtains the shader pointer from the selected pass data, and compares it with the driver's cached shader pointer. If it changed, it calls imported `glUseProgram` with the program handle at shader offset `+0x4c`, then caches that shader. It then calls `CProgrammableGLDriver<CGLSLShaderHandler>::commitCurrentMaterialParametersAux<CMaterial>` (`0x005b4da0`) with the current shader, current `CMaterial`, and a begin/end range of parameter bindings from the selected pass data.
3. `CGLSLShader::linkProgram` (`0x006de9f8`) enumerates active uniforms. At `0x006ded0c` it calls imported `glGetActiveUniform`; when the returned GL type is `0x8b52` (`GL_FLOAT_VEC4`), it writes internal type code `8`. At `0x006ded84` it calls imported `glGetUniformLocation`. The reflected 16-byte record stores the mapped type byte at `+0x6`, active array size at `+0x8`, and location at `+0xc`.
4. The typed `CMaterial` setter for `vector4d<float>` (`0x005c9d3c`) looks up a parameter descriptor by its `unsigned short` id. It accepts the vector4 path when descriptor byte `+0x6` is `8`, then copies four float words per element into `CMaterial + 0x20 + descriptor[+0xc]`. Its descriptor supplies the element count at `+0x8`; the input integer is used as a source stride, with a contiguous copy path for stride `0` or `16`.
5. In `commitCurrentMaterialParametersAux<CMaterial>`, each binding selects a material descriptor and a shader-side parameter record. The material descriptor's byte `+0x6` drives the type switch. The `8` branch calls imported `glUniform4fv` at `0x005b4fac`, passing the reflected shader record's location (`+0xc`) and array size (`+0x8`), plus a pointer to the material value bytes at `CMaterial + 0x20 + materialDescriptor[+0xc]`. The ARM argument registers therefore carry the `glUniform4fv(location, count, values)` arguments in that order.

Together, these ranges establish a concrete path from a vector4 value stored in a runtime `CMaterial`, through a binding range associated with the active pass and a linked shader's reflected uniform record, to a GLES upload call. The prior [effect-to-shader selection trace](../engine-materials/shader-selection/ANALYSIS.md) documents how an effect list creates the GLES2 renderer pass and shader; the [rendering trace](../engine-rendering/ANALYSIS.md) documents the driver's material commit and program binding path.

## Limits

- This trace proves the runtime APIs and memory flow. It does not prove that a particular game asset invokes the vector4 setter or identify which serialized record supplies a value.
- The two halfword selectors in each binding are used to index the material-side and shader-side parameter records. Their external names and the earlier binding-construction/name-matching rule are not established here.
- The confirmed numeric type code `8` is an internal runtime code observed in reflection, the typed setter, and the commit switch. This does not assign a field name to any serialized BRES data.
- GL driver behavior, the active context, and whether a particular uniform is optimized out remain runtime-dependent.

No tests or builds were run for this evidence package.
