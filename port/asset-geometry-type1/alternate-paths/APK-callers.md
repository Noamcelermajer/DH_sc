# Alternate-path audit supplement

## Result

No alternate runtime type-1 decoder was found in the APK-matched `libDungeonHunter2.so` or the checked repository evidence. The type-1 payload schema and source implementation remain unrecoverable from these artifacts. This supplements the named `SGeometry` route audit in `../ANALYSIS.md`; it does not rule out an unlabelled raw-pointer consumer or an authoring tool absent from the APK.

The analyzed ELF SHA-256 is `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`.

Exact ranges and SHA-256 values are recorded in [the supplemental manifest](alternate-paths-functions.json); the full bounded instruction listings are in [the ARM assembly evidence](reference/alternate-paths-functions.asm).

## Loader and call-path closure

The additional named loader is `glitch::scene::CColladaBinaryFileLoader::createMesh(IReadFile*)`, VA `0x006b9458`, size `0xe0`, SHA-256 `08b1b58c80ad5dbe66221dd37d2e4daa4bcb83aabd46bee72fe2821415ec99f4`. It calls `CResFileManager::load`, then `CColladaDatabase::constructScene`; it contains no geometry decoder. The scene route reaches `CColladaDatabase::constructNode`, whose geometry-instance callsite is `0x0061b6a0`. The loader's `createScene` method at `0x006b9430` returns null.

Additional callers of the already-audited database overloads are:

- `CColladaFactory::createParticleSystem`, callsite `0x00634dd8`, calls the geometry-by-name overload.
- `CMorphingMesh::instanciateMesh`, callsite `0x0064b748`, calls the geometry-by-name overload; its geometry-pointer loop calls the `SGeometry*` overload at `0x0064b81c`.
- `CSkinnedMesh::instanciateMesh`, callsite `0x00664b2c`, calls the geometry-by-name overload.
- `CColladaDatabase::constructNode`, callsite `0x0061b6a0`, calls the `SInstanceGeometry*` overload.

The only direct calls to `constructGeometry(IVideoDriver*, SGeometry*)` in the executable code are the index overload (`0x0060e6e4`), the name overload (`0x0061aad4`), and the morph geometry-pointer loop (`0x0064b81c`). The central function at `0x0060e634` checks `SGeometry + 8` and invokes the factory callback only when the value is zero; for nonzero it returns a null result. Because the check precedes the indirect callback at factory vtable offset `+0x34`, a custom factory callback does not bypass the type gate.

The application-side `ColladaFactory::createGeometry` at `0x00350794` only calls the engine `CColladaFactory::createGeometry` at `0x00631924`. The engine factory calls its buffer-configuration virtual methods and constructs `CMesh`; no second named override or type-1 construction method appears in the symbol table.

## Other candidate paths and metadata

`glitch::scene::CBatchMesh::load` at `0x0057db94`, size `0x990`, SHA-256 `b33556e92d7476b23b6023c8f25ace245a2aac7b9ac83e394f389f4ef289c6b6`, was checked as a possible separate mesh reader. It opens ZIP entries, constructs a Collada database, loads batch segments / `loadMB`, and constructs materials. It has no `SGeometry` route or `constructGeometry` call, so it is not evidence for decoding the nine BRES type-1 records.

The ELF's local source-file symbols include `CColladaDatabase.cpp`, `CColladaFactory.cpp`, `CColladaMesh.cpp`, `CColladaMorphingMesh.cpp`, `CColladaSkinnedMesh.cpp`, `CColladaModularSkinnedMesh.cpp`, `CColladaResFileManager.cpp`, and `CColladaBinaryFileLoader.cpp`; no separate geometry-decoder translation unit appears in the source-file names. Local call targets are resolved in the linked instructions. Dynamic relocation entries are relative data relocations and external PLT imports, so they do not name an additional local geometry decoder or add a separate route beyond the disassembly callsites above.

No builds or tests were run.

