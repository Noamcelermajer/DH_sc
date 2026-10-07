# Runtime shader-file open and archive registration boundary

## Finding

The recovered engine path passes the sampled GLSL basenames to the filesystem.
Android startup statically dispatches a call to register the relative path
`shaders.pak` as a ZIP archive; extraction/path resolution and successful
registration or shader-source opening remain unverified at runtime.

For the sampled BRES pass, `SProfileGLES2Traits::createShader` forwards the two
filenames and two prefix strings to `CGLSLShaderManager::createShader`. The
shader overload at ELF VA `0x006e01b4` (404 bytes; SHA-256
`b53f059259f1e2b65fd6dac8e81801c9d07a8b159bd13dfc949c6693b2163b66`) calls
`createShaderCode` for both stages with null `IReadFile*` arguments. The
`createShaderCode` range at `0x006dfe68` (844 bytes; SHA-256
`2fc259ff52a2b2287740bc95ff033c95f37c0b396b7a9998df6657576cdc813d`) reaches
the filesystem-open branch when no `IReadFile*` was supplied: it passes the
shader filename to the filesystem object's vtable slot `+0x0c`. The complete
`CFileSystem` vtable is `0x00974340` (116 bytes; SHA-256
`dfaaf3b3344a14fefb2ccea25782c59002276b0e95a1b2ffe4246086f4884005`); its
address point is `0x00974348`. Slot `+0x0c` contains
`CFileSystem::createAndOpenFile` at `0x0056d4e0`. The table also exposes
`addZipFileArchive`, `addFolderFileArchive`, and `addPakFileArchive` at slots
`+0x18`, `+0x1c`, and `+0x20`, respectively.

`CFileSystem::createAndOpenFile` is 964 bytes (SHA-256
`cb93a44965e3a30e9ed5f1bc17d644f6ab39c07b242a8ddcf0b019269ce6f552`). It
searches registered ZIP, PAK, and folder readers first through
`createAndOpenFileFromArchives` (`0x0056c0f8`, 284 bytes, SHA-256
`8b140d1dcd3d6e3a951be56bb55269e194975dcb77d0a0b2ffcba7bb10e765de`), then
tries direct file access, followed by slash-prefix nested-ZIP lookup. The
sampled shader inputs are bare filenames with no directory prefix. The engine
does not add a directory to those names in the traced caller.

The native factory method `CIrrFactory::createFileSystem` (`0x00533fb0`, 56
bytes, SHA-256 `73bd5ee0669d1550b6da31455e28f9073b13ad8a9e2c3c8b7efdc1366370c7ae`)
allocates and constructs a `CFileSystem`, then increments its reference count;
that method contains no archive-registration call.

## Registration search boundary

The three relevant registration implementations and exact APK ranges are:

| Method | ELF VA | Bytes | SHA-256 |
| --- | ---: | ---: | --- |
| `CFileSystem::addZipFileArchive` | `0x0056d2c0` | 276 | `56e0697b55563af11a91cb66247b1c9954ba5055149c833ee2915cd4c2d319ad` |
| `CFileSystem::addPakFileArchive` | `0x0056ca70` | 264 | `2a4725a4db79ccdae2499b05481a971a7807b5cf2a5f04ddc2631512e081b64a` |
| `CFileSystem::addFolderFileArchive` | `0x0056d180` | 320 | `fe8247e6fd3f61eb4e75eaf51cefe719daf997bc2b1ee001474764064cbd3d8b` |

The [archive-registration caller audit](../ARCHIVE-REGISTRATION-CALLER-AUDIT.md)
traces Android's `nativeInit` through `appInit` to
`Application::InitWin32(IDevice*)`, where a virtual call through filesystem
slot `+0x18` passes `shaders.pak`, `true`, and `false` to
`CFileSystem::addZipFileArchive`. The caller's return value is ignored. The
engine method opens the path through `createAndOpenFile`, then allocates and
appends a `CZipReader` when allocation succeeds; its boolean return does not
report shader-entry availability, and the caller does not observe it. See the
[archive ownership audit](../../../engine-filesystem/OWNERSHIP-ANALYSIS.md)
for the bounded constructor and reference-count trace. This corrects the
earlier negative search result while leaving runtime path resolution and
usable-entry behavior unverified.

The source is available in the recovered nested ZIP and the APK's startup code
requests registration of a same-named relative package. Whether that package
is opened successfully and serves the sampled shader requests is not observed.
A direct file with the same basename in the process's current search location
is also a possible source; the APK does not expose the runtime filesystem
state.

## Provenance

All code and vtable ranges above map to file-backed `PT_LOAD` bytes in the
supplied APK's `lib/armeabi-v7a/libDungeonHunter2.so` (15,938,284 bytes, SHA-256
`36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`); the APK
SHA-256 is
`32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`. Existing
range manifests and byte-checked excerpts are in
[`engine-shaders`](../../../engine-shaders/reference/original-functions.asm),
[`engine-filesystem`](../../../engine-filesystem/reference/original-functions.asm),
and the [archive factory ranges](../../../engine-filesystem/factories/reference/factory-paths.asm).
No build or runtime test was run.
