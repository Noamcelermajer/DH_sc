# Engine shader evidence package

This module documents the original APK's GLES2 shader source, compilation, cache lookup, program link, reflection, and embedded PinkBad shader path.

- [`ANALYSIS.md`](ANALYSIS.md): evidence-based call-path notes and unresolved questions.
- [`original-functions.json`](original-functions.json): APK/ELF identity plus exact virtual-address, size, file-offset, SHA-256, and byte-comparison data.
- [`reference/original-functions.asm`](reference/original-functions.asm): selected original ARM function ranges.
- [`reference/gl-imports.asm`](reference/gl-imports.asm) and [`reference/gl-imports.json`](reference/gl-imports.json): exact imported GLES PLT stubs and call sites.
- [`fallback/`](fallback/): source bytes for the embedded PinkBad vertex and fragment shaders, extracted from the original ELF literals.
- [`attributes/ANALYSIS.md`](attributes/ANALYSIS.md): active attribute names/codes, `CVertexAttributeMap` construction, material mapping, and `glVertexAttribPointer` setup.
- [`UNIFORMS-ANALYSIS.md`](UNIFORMS-ANALYSIS.md) and [`samplers/ANALYSIS.md`](samplers/ANALYSIS.md): bounded uniform and sampler reflection/upload traces.

The copied disassembly is reference evidence, not executable or replacement engine code. No tests or builds were run.
