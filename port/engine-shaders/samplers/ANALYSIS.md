# Sampler uniform and texture-unit path

## Scope and source identity

This note follows a reflected sampler uniform through `CMaterial` texture storage, the current pass's parameter-binding loop, texture-unit binding, and the integer uniform upload. It records static behavior visible in the original ARM ELF and does not assign names to serialized material or effect fields.

The source is `lib/armeabi-v7a/libDungeonHunter2.so` from `Dungeon-Hunter-2-HD-v1-0-2.apk`. APK SHA-256: `32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`. ELF size: 15,938,284 bytes; ELF SHA-256: `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`.

[`sampler-ranges.json`](sampler-ranges.json) records the full recovered-function and PLT-stub ranges, hashes, VA-to-file mappings, and PT_LOAD ordinals. [`reference/sampler-excerpts.asm`](reference/sampler-excerpts.asm) contains the selected ARM listing rows and raw PLT bytes. Each listed excerpt was compared byte-for-byte with its mapped, file-backed PT_LOAD slice. The function ranges used here are all inside PT_LOAD ordinal 0 (`p_offset=0`, `p_vaddr=0`, `p_filesz=9,785,648`); the manifest also records ordinal 1.

## Recovered runtime path

1. `CGLSLShader::linkProgram` (`0x006de9f8`, 1,444 bytes) enumerates active uniforms. It calls `glGetActiveUniform` at `0x006ded0c`. For raw GL type `0x8b5e`, the code sets internal type byte `12`; neighboring sampler enum branches map `0x8b5f`, `0x8b60`, and `0x8b63` to `13`, `14`, and `15`. The routine calls `glGetUniformLocation` at `0x006ded84` and stores the type byte at reflected-record offset `+0x6`, array size at `+0x8`, and location at `+0xc`.

2. The typed `IMaterialParameters<CMaterial>::setParameter<intrusive_ptr<ITexture>>` overload (`0x005cd324`, 200 bytes) selects a 16-byte material parameter descriptor by its unsigned-short index. It accepts internal texture type codes `12` through `15`, checks the texture object's low two type bits against the descriptor code, checks the requested array element against descriptor count `+0x8`, and writes the texture pointer into `CMaterial + 0x20 + descriptor[+0xc] + element*4`. This establishes the runtime `CMaterial` storage type and array stride; it does not identify the serialized source of the descriptor or value.

3. `commitCurrentMaterialParametersAux<CMaterial>` (`0x005b4da0`, 1,440 bytes) iterates the active binding range supplied by the current material/pass commit path documented in [`../UNIFORMS-ANALYSIS.md`](../UNIFORMS-ANALYSIS.md). At `0x005b4df8` it reads the two halfword selectors in each `SShaderParameterBinding`, selects the material-side descriptor and shader-side reflected record, then switches on the material descriptor type byte at `+0x6`. Internal kinds `12` through `15` converge on the sampler branch at `0x005b4ff0`.

4. In that branch, the reflected record's array count at `[r6,#8]` controls the loop. `getTextureParameter` (`0x005b2558`, 140 bytes) loads an `ITexture` pointer from the material value area at the descriptor's `+0xc` offset. For a null or specially flagged pointer, it calls `CTextureManager::getPlaceHolder` (`0x005ec1b8`), passing a placeholder selector and a texture-kind value derived from the descriptor type. The exact placeholder contents and flag meaning are not established here.

5. For each element, the sampler branch calls `CCommonGLDriver::setTexture` (`0x005b26f0`, 284 bytes) with the current unit index, resolved `ITexture*`, and its low-two-bit texture kind. The shared unit counter starts at zero and advances across sampler elements and bindings. When the active unit changes, `setTexture` calls imported `glActiveTexture` at PLT VA `0x0030e1e4` with `0x84c0 + unit` (`GL_TEXTURE0 + unit`). It then reaches `ITexture::bind(false)` (`0x005fde9c`), which dispatches through vtable slot `+0xc` to the concrete driver's `CTexture::bindImpl` (`0x005b5610`). That implementation calls imported `glBindTexture` at PLT VA `0x0030e7c0` with the selected GL target and texture name. Caching and texture flags can skip a redundant bind.

6. After the texture-unit bind call, the sampler branch loads the reflected location from `[r6,#0xc]` and calls imported `glUniform1i` at PLT VA `0x0030e9f4`, with arguments `(location, unitIndex)`. Thus the ELF establishes a complete static path from a typed `CMaterial` texture pointer through the active binding loop to sampler assignment and, when needed, the GL texture bind.

## Limits

- The binding loop proves that the two halfword selectors pair a material descriptor with a reflected shader record. Their construction rule, name matching, and external/serialized field names remain unresolved.
- The type-code mapping and setter establish runtime texture kinds. They do not establish that any particular game asset uses a given sampler or setter.
- The sampler array count comes from the reflected record, while material-side descriptors separately carry a count. The exact behavior when those counts differ is not resolved by this trace.
- Placeholder selector values `0` and `1` are visible in the helper path, but their semantic names and returned assets are unresolved. The `ITexture` flag tested by `getTextureParameter` is also unnamed.
- Unit allocation is observed in this commit loop. Runtime GL context state, driver acceptance, and whether a specific shader keeps the sampler active remain runtime-dependent.

No tests or builds were run for this evidence package.
