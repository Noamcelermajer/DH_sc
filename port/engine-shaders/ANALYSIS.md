# GLSL shader path evidence

## Scope and source identity

This package follows the recovered Android GLES2 shader path from `CGLSLShaderManager` through `CGLSLShaderCode` compilation and `CGLSLShader` program linking. It records what the selected original ARM ranges establish and leaves runtime driver behavior unresolved.

The source binary is `lib/armeabi-v7a/libDungeonHunter2.so`, extracted from `Dungeon-Hunter-2-HD-v1-0-2.apk`. APK SHA-256 is `32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`; ELF size is 15,938,284 bytes and ELF SHA-256 is `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`.

[`original-functions.json`](original-functions.json) is the machine-readable provenance manifest. It records each function and PLT range's ELF virtual address, file offset, byte length, SHA-256, excerpt location, and direct comparison result. The function bytes copied into [`reference/original-functions.asm`](reference/original-functions.asm) were compared byte-for-byte with their file-backed PT_LOAD ranges in that ELF. [`reference/gl-imports.asm`](reference/gl-imports.asm) contains decoded ARM PLT stubs; [`reference/gl-imports.json`](reference/gl-imports.json) records the matching addresses, hashes, and call sites. The disassembly excerpts are evidence, not replacement source.

## Recovered call path

1. The file/source overload `CGLSLShaderManager::createShader` starts at ELF VA `0x006e01b4` (404 bytes). It checks the shader manager by shader name. On a miss, it requests shader-code stages with `E_SHADER_TYPE` values `4` and `14`, then passes both code objects to `createShaderInternal`.
2. `createShaderCode` starts at `0x006dfe68` (844 bytes). It initializes the additional config name `glsl.config` when the config state is the sentinel `-1`. It creates a stage-code key with `makeShaderCodeName`, checks `getShaderCode`, then reads the provided `IReadFile` or opens the named file. The bytes are copied into a buffer with a terminating NUL. The source-pointer list passed onward contains `#define GLITCH_OPENGLES_2`, optional macros selected by driver mask bits `0x400`, `0x800`, and `0x1000`, the manager's additional config text, a newline, and the loaded source. Those bits select `GLITCH_USE_HIGHP`, `GLITCH_USE_BIAS`, and `GLITCH_FORCE_USE_BIAS`, respectively. The code constructor is called with compile enabled.
3. `CGLSLShaderCode` construction starts at `0x006df738` (320 bytes). It maps type `4` to the GL shader enum `0x8b31` and other values reaching this constructor to `0x8b30`. It copies the supplied NUL-terminated source-pointer list into owned storage. `createShader` at `0x006df560` calls imported `glCreateShader` when the handle is empty and transfers the sources through `glShaderSource`; the latter is a tail branch at `0x006df5a0` to its PLT entry.
4. `compileShader` starts at `0x006df3c0` (416 bytes). A byte at object offset `+0x34` short-circuits a repeat compile after prior success. Otherwise it calls `glCompileShader`, queries `GL_COMPILE_STATUS` (`0x8b81`) and `GL_INFO_LOG_LENGTH` (`0x8b84`), and sets that byte on success. Failure retrieves a shader log with `glGetShaderInfoLog` and logs a stage-specific compile error. The recovered pseudo view shows that the success path examines a nontrivial log for `WARNING` and queries `GL_SHADER_TYPE` (`0x8b4f`) before warning logging. The ARM call at `0x006df444` targets `glGetProgramInfoLog` while passing the shader handle; the failure path at `0x006df4d4` targets `glGetShaderInfoLog`. This call-kind mismatch is present in the original range and is recorded as observed behavior.
5. `createShaderInternal` starts at `0x006dfd8c` (220 bytes). It creates a `CGLSLShader` with its compile/link flag set. `CGLSLShader` construction at `0x006df1f0` creates a GL program, attaches the vertex and fragment shader handles, and calls `linkProgram` when that flag is enabled. `linkProgram` starts at `0x006de9f8` (1,444 bytes), calls `glLinkProgram`, and queries `GL_LINK_STATUS` (`0x8b82`). Failure retrieves and logs the program info log. Success enumerates active attributes and uniforms using their GL counts and maximum-name lengths, retrieves names/types/sizes, and asks for their locations. The code stores reflected records in the shader object. The constructor deletes the program on link failure. The returned shader is added to the shader manager only when the shader has a valid id and its link-success byte at object offset `+0x3e` is set.
6. `compileAndLink` at `0x006def9c` independently shows the two stage compile calls followed by a branch to `linkProgram`. The constructor path also directly attaches and links, as described above.

## Cache behavior established by the ranges

The shader object lookup is name-based. On a miss, `createShaderInternal` adds the linked shader to the shader manager only after its id and success state pass the checks described above. The code-stage path computes a key and calls `getShaderCode` before reading/compiling a stage. Its selected `createShaderCode` range does not directly call `addShaderCode`; whether another helper or side effect inserts newly created code for later reuse is unresolved. The existence of `getShaderCode` and `addShaderCode` alone does not establish that this path reuses a stage after a miss.

## Embedded PinkBad shader pair

`CMaterialRendererManager::createPinkWireFrameShader` is at ELF VA `0x005d9bd8` (480 bytes). Its capability-controlled branch constructs in-memory read files using pointers into ELF literals, exact lengths `0x9b` and `0x41`, and names `PinkBadShaderVS.glsl` and `PinkBadShaderFS.glsl`. It then calls the file/source shader overload with the shader name `Pink Bad Shader`. The exact source bytes are included in [`fallback/PinkBadShaderVS.glsl`](fallback/PinkBadShaderVS.glsl) and [`fallback/PinkBadShaderFS.glsl`](fallback/PinkBadShaderFS.glsl); their hashes and source/name literal addresses are in the provenance manifest. The vertex source declares a vertex attribute and matrix uniform; the fragment source writes `(0.8, 0.3, 0.5, 1.0)`.

This is a capability-selected shader path in `createPinkWireFrameShader`. The recovered flow does not show it being invoked in response to a compile or link failure. The numeric capability bits' full symbolic meanings and the material/effect selection that reaches this function remain unresolved.

## Imported GLES calls

The exact imported calls and call-site VAs are enumerated in `reference/gl-imports.json`; each 12-byte PLT stub and its byte hash are copied into `reference/gl-imports.asm`. The shader path uses:

- Shader creation and source: `glCreateShader`, `glShaderSource`, `glCompileShader`, `glDeleteShader`.
- Compile status and diagnostics: `glGetShaderiv`, `glGetShaderInfoLog`.
- Program creation, attachment, linking, and failure cleanup: `glCreateProgram`, `glAttachShader`, `glLinkProgram`, `glGetProgramiv`, `glGetProgramInfoLog`, `glDeleteProgram`.
- Reflection and location queries: `glGetActiveAttrib`, `glGetAttribLocation`, `glGetActiveUniform`, `glGetUniformLocation`.

The GL enum values and control flow above are read from the ARM instructions. No claim is made about the device's actual shader compiler result or the GLES context state at runtime.

## Vertex attribute reflection and binding

The focused trace in [`attributes/ANALYSIS.md`](attributes/ANALYSIS.md) recovers the 45 recognized shader-name aliases and their numeric `E_VERTEX_ATTRIBUTE` values, the 30-byte shader-to-stream map, material pass/technique map construction, and `setupArrays` through `glVertexAttribPointer`/`glVertexAttrib4f`. The serialized fields that supply the material remap pairs remain unresolved.

## Open questions

- Whether the code-stage cache inserts a newly compiled `CGLSLShaderCode` through an indirect/helper path.
- The complete `glsl.config` contents and the symbolic names of the driver capability bits.
- The full serialized source for material attribute-remap pairs and any intended meanings for `E_VERTEX_ATTRIBUTE` codes 9–16.
- Reflected uniform type categories and the complete material-parameter upload set; see [`UNIFORMS-ANALYSIS.md`](UNIFORMS-ANALYSIS.md) and [`samplers/ANALYSIS.md`](samplers/ANALYSIS.md).
- Which serialized effects and materials select each source pair and shader name.
- GL context/thread ownership, driver-specific compile/link outcomes, context loss behavior, and complete GPU-resource lifetime.

No tests or builds were run for this evidence package.
