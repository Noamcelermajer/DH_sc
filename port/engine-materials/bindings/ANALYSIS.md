# Reflected shader parameter to material binding construction

## Scope and source identity

This trace follows runtime parameter names from GLES shader reflection through `CMaterialRendererManager` name lookup and pass binding, then through `CMaterialRenderer` construction into the two selectors consumed by material commit. It establishes a runtime name based link. It does not identify the serialized BRES fields that supply manager parameter definitions or effect pass data.

The source APK is `Dungeon-Hunter-2-HD-v1-0-2.apk` (SHA-256 `32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`). The ELF member is `lib/armeabi-v7a/libDungeonHunter2.so` (15,938,284 bytes; SHA-256 `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`). The exact PT_LOAD mappings, full range hashes, file offsets, and excerpt hashes are in [`bindings-ranges.json`](bindings-ranges.json). [`reference/binding-path.asm`](reference/binding-path.asm) contains the exact ARM rows cited below; each emitted row was byte-compared with the mapped ELF bytes.

## Construction path

1. `CGLSLShader::linkProgram` (`0x006de9f8`, 1,444 bytes) enumerates active uniforms with `glGetActiveUniform` (`0x006ded0c`). It passes each returned uniform name to `guessShaderParameterType` (`0x005e2284`) and `glGetUniformLocation` (`0x006ded84`), interns the name, and fills a 16-byte reflected parameter record. The code stores the name pointer at `+0x00`, a 16-bit name-derived parameter type at `+0x04`, a reflected GL kind byte at `+0x06`, active array size at `+0x08`, and GL location at `+0x0c`. Numeric GL-kind mappings used by the commit loop are also documented in [`../../engine-shaders/UNIFORMS-ANALYSIS.md`](../../engine-shaders/UNIFORMS-ANALYSIS.md) and [`../../engine-shaders/samplers/ANALYSIS.md`](../../engine-shaders/samplers/ANALYSIS.md). The type classifier's full range is hashed in the manifest; this package does not rename its numeric categories or claim an exhaustive source-level enum mapping.

2. `CMaterialRendererManager::endTechnique` (`0x005dd664`, 424 bytes) walks shader parameter records in each pass and stage. For records outside its numeric skip ranges, it calls `autoAddAndBindParameter` (`0x005dd250`, 1,044 bytes). The final `endMaterialRenderer` loop also invokes the same helper (`0x005dddb4`, 4,204-byte function; call excerpt at `0x005de144`). These call sites connect the shader and pass data to parameter-link construction.

3. `autoAddAndBindParameter` reads the selected 16-byte shader parameter record and derives a name key. A branch uses `getLightParameterName` (`0x005e7974`) for light-related name handling; the helper's internal name rules remain opaque here. It calls `getParameterIDInternal` (`0x005dbc04`) with an `SSharedString`. That method searches the current creation state's ordered map keyed by `SSharedString` and returns the matching runtime parameter definition. A separate `SIDedCollection<SShaderParameterDef>::getId(char const*)` (`0x005bb378`) is a named collection lookup that returns a 16-bit ID or `0xffff` when absent.

4. When the creation-state name lookup misses, `autoAddAndBindParameter` calls `addParameterInternal` (`0x005dcd64`), which delegates to `SCreationState::addParameter` (`0x005dca40`). The new definition uses the shader-derived name and runtime type/count inputs. The helper calls `guessShaderParameterType` for name-based classification and follows numeric type checks before binding. Thus the construction behavior is confirmed: name-keyed lookup, conditional runtime definition creation on a miss, then a typed bind. The exact accepted name vocabulary and all enum labels remain in the native helper tables rather than this analysis.

5. `bindParameter(SShaderParameterDef const*, ...)` (`0x005da160`) checks the selected manager definition against the shader parameter type and updates the pass's temporary binding state. Its type decisions are code-level numeric comparisons and a name-derived type check; they do not establish serialized field names. The temporary-ID overload at `0x005da83c` resolves a definition and delegates through the same binding path.

6. `CMaterialRenderer` construction (`0x005d3124`, 1,448 bytes) creates the binding array used by material commit. Each record is 4 bytes: two adjacent 16-bit selectors. In the regular construction loop, selector 0 combines the shader parameter index with a stage selector in bit 15; selector 1 is copied from the per-pass binding input. The commit consumer at `0x005b4da0` confirms their order: it reads selector 0 first, uses its upper bit to select the pass shader parameter table (table slot `5` or `6`) and its low 15 bits as the shader parameter index, then reads selector 1 and uses it as the material definition index. Both selected definitions have 16-byte strides. This is the runtime meaning of the `SShaderParameterBinding` selectors; the symbolic stage names are not inferred from the bit alone.

The resulting selectors are the ones consumed by the existing [vec4 uniform trace](../../engine-shaders/UNIFORMS-ANALYSIS.md) and [sampler trace](../../engine-shaders/samplers/ANALYSIS.md). Those traces show how a selected material definition and reflected shader definition reach `glUniform4fv` or sampler/texture-unit binding.

## Runtime field evidence

| Runtime record | Offset | Directly supported use |
| --- | ---: | --- |
| Reflected `SShaderParameterDef` | `+0x00` | Interned active-uniform name pointer, passed from the `glGetActiveUniform` result. |
| Reflected `SShaderParameterDef` | `+0x04` | 16-bit value returned by `guessShaderParameterType`; read in binding compatibility checks. |
| Reflected `SShaderParameterDef` | `+0x06` | Internal byte selected from the raw GL uniform type in `linkProgram`. |
| Reflected `SShaderParameterDef` | `+0x08` | Active uniform array size. |
| Reflected `SShaderParameterDef` | `+0x0c` | Result of `glGetUniformLocation`. |
| `SShaderParameterBinding` | `+0x00` | First selector: upper bit selects shader parameter table slot 5/6; low 15 bits index that table. |
| `SShaderParameterBinding` | `+0x02` | Second selector: material definition index. |

The offsets above describe runtime records demonstrated by the reflection, renderer-construction, and commit instructions. They do not name fields in a serialized COLLADA, BRES, effect, or material record.

## Boundaries

- The runtime matches parameter names through `SSharedString` keyed containers. There is no evidence here that a particular serialized effect field or `SMaterial` fixup supplies a matching key.
- `SMaterial` consumer observations and `SEffect` fixup counts remain as documented in [`../ANALYSIS.md`](../ANALYSIS.md). They do not prove parameter names, sampler labels, or a serialized binding table.
- The `SProfileGLES2Traits` pass strings select and create a shader, but their serialized field meanings are still unresolved; they should not be conflated with the active uniform names returned by the GLES reflection API.
- Array counts, driver optimization of inactive uniforms, and runtime GL locations depend on the linked program and device. This static trace establishes the code path, not which uniforms are active in a particular session.

No tests or builds were run. The checks here verify source identity, PT_LOAD mapping, full-range SHA-256 values, and the emitted assembly bytes only.
