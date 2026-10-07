# Android resource root and CFileSystem working-directory boundary

## Finding

Android startup obtains the game storage directory and stores its pointer in
the game global `RES_PATH`. The traced startup path does not pass that value to
`CFileSystem::changeWorkingDirectoryTo`, nor does the bounded native startup
trace establish that Android's process current directory is the same folder.
The recovered file therefore proves the storage-root value and the later
relative `shaders.pak` registration request separately; it does not prove the
path join that would open the recovered
`com.gameloft.android.GAND.GloftD2SS/files/shaders.pak` package.

## Android initialization path

The APK's `classes.dex` managed path is:

1. `GameRenderer.onSurfaceCreated` calls `nativeGetJNIEnv()`, then
   `GLMediaPlayer.init()`, then `DungeonHunter2.nativeInit(...)`, and finally
   `GameRenderer.nativeInit(1)`.
2. `GLMediaPlayer.init()` calls `GLMediaPlayer.nativeInit(0)`. The native
   `GLMediaPlayer.nativeInit` method looks up the static method
   `GLMediaPlayer.getSDFolder()Ljava/lang/String;` and stores its method ID in
   `getSDFolderID`.
3. The first `GameRenderer.nativeInit` call reaches native `appInit`. Before
   creating the device, `appInit` calls `nativeGetSdFolderPath`. That helper
   invokes the cached Java method, obtains its UTF-8 string, allocates a
   0x400-byte buffer, copies the path, and returns the buffer.
4. `appInit` stores that returned pointer in the game global `RES_PATH` at
   `0x0099b108`, then creates the Android device and calls
   `Application::InitWin32(IDevice*)`.
5. `Application::InitWin32` loads the device filesystem at `device + 0x34`
   and calls its virtual `addZipFileArchive` slot with the literal
   `shaders.pak` and flags `(true, false)`. The caller ignores the result; the
   exact callsite and ZIP-registration mechanics are in the
   [registration caller audit](ARCHIVE-REGISTRATION-CALLER-AUDIT.md).

The Java implementation of `GLMediaPlayer.getSDFolder()` returns the literal
`/sdcard/Android/data/com.gameloft.android.GAND.GloftD2SS/files/`. The native
`RES_PATH` pointer and the engine's `WorkingDirectory` are different globals:
`RES_PATH` is at `0x0099b108`, while
`glitch::io::CFileSystem::WorkingDirectory` is a 1024-byte array at
`0x0099b138`. In the APK's initial data image, `RES_PATH` points to an empty
string at `0x008cb810`, and all 1024 bytes of `WorkingDirectory` are zero.

## What sets CFileSystem working-directory state

The CFileSystem vtable's address point is `0x00974348`; slot displacement
`+0x30` resolves to `CFileSystem::changeWorkingDirectoryTo` at `0x0056c528`.
That method calls the imported `chdir` thunk at `0x0030ed60`. Only when
`chdir(path)` succeeds does it copy the supplied path into the static
`WorkingDirectory` array and return success. `getWorkingDirectory()` at
`0x0056c214` returns that array's address.

The traced `appInit` range calls `nativeGetSdFolderPath` before device and
filesystem construction; it does not call `chdir` or the CFileSystem
working-directory setter. The `Application::InitWin32` range contains the
`addZipFileArchive` call and does not dispatch through the `+0x30` setter slot.
The CFileSystem static initializer at `0x0056c5cc` initializes its obfuscation
map structure; it does not write `WorkingDirectory`. These observations
establish no working-directory assignment in the bounded initialization
route. They do not prove that no later indirect call elsewhere in the program
can change it.

`CFileSystem::open` reads the CFileSystem working-directory and obfuscation-map
state when it constructs a disk path, then reaches `fopen`. The traced code
does not read `RES_PATH` for that operation. Thus the Android storage path
does not become the CFileSystem path prefix merely because `appInit` stores it
in `RES_PATH`.

## File-access alternatives in the traced engine route

`addZipFileArchive("shaders.pak", ...)` calls
`CFileSystem::createAndOpenFile("shaders.pak")` to obtain an input stream.
`createAndOpenFile` tries registered ZIP, PAK, and folder archives, then calls
`createReadFile` for direct disk access, then considers slash-delimited nested
ZIP paths. The registration argument has no slash, so that nested-path branch
does not supply an implicit storage root. `createReadFile` constructs a
`CReadFile`; its `openFile` method reaches `CFileSystem::open`, which uses the
working-directory state described above and the C `fopen` path.

Later shader filenames are also forwarded as bare names in the sampled shader
route. A registered ZIP can serve those names if it was opened and retained;
otherwise direct disk access is a possible route. The sampled call path does
not use Android `AssetManager` APIs. The exact filenames and fallback order
are documented in the [runtime-open trace](runtime-open-route/ANALYSIS.md).

The recovered cache contains a valid 34-entry ZIP at
`com.gameloft.android.GAND.GloftD2SS/files/shaders.pak`, SHA-256
`365a4d3c432454c44208ebb484c7a472a3a4534a0c5c9e77a7a90f3b87b1b5c0`.
That cache path agrees with the Java storage-root literal. Static APK code
does not establish that the archive was extracted to that path on a device,
that the process current directory or CFileSystem working directory points
there, or that the startup open and subsequent shader-entry reads succeed.

## APK and range provenance

Source APK:
`Dungeon-Hunter-2-HD-v1-0-2.apk`,
SHA-256 `32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`.
Its `lib/armeabi-v7a/libDungeonHunter2.so` member is 15,938,284 bytes,
SHA-256 `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`.
The ELF text `PT_LOAD` maps `p_offset=0` to `p_vaddr=0`; the data `PT_LOAD`
maps `p_offset=0x955130` to `p_vaddr=0x956130`. Function hashes below were
recomputed from the ELF member bytes. Text file offsets equal their ELF VAs.
The recovered Java methods are from `classes.dex` (526,988 bytes; SHA-256
`650888ef70256b273f1745fe803fbb03ba970ac09ee3e88020a4acc48d297883`).

| Function | ELF VA | Bytes | ELF file offset | SHA-256 |
| --- | ---: | ---: | ---: | --- |
| `GameRenderer.nativeInit` | `0x005311c8` | 76 | `0x005311c8` | `108813528c1cbb7e997a0e158ea82c6aa3f231e33f4f8225be093214981f90d9` |
| `appInit` | `0x00530ba8` | 772 | `0x00530ba8` | `8e8975cdfa21316d52976a976e8f1736bbb49c567d156f965a848d99201760e5` |
| `nativeGetSdFolderPath` | `0x00531af8` | 180 | `0x00531af8` | `ea13a7ad2180a5aa9d3576ec7f8375139dea4982a805bcb26f09e6c5b57a453f` |
| `GLMediaPlayer.nativeInit` | `0x00531ca4` | 1448 | `0x00531ca4` | `5286f418bf71cc986477f06a5157354a4757c34685255ad8fd33eccf0a5ac7a5` |
| `_GLOBAL__I_.._source_glitch_io_CFileSystem.cpp` | `0x0056c5cc` | 116 | `0x0056c5cc` | `2532a36c0f29a9bfe6f339e529b649722f634c9f36551ba20f467ef99bb13d5d` |
| `CFileSystem::getWorkingDirectory` | `0x0056c214` | 28 | `0x0056c214` | `ba66718f96aa605dbaaff25f9d873a19582cbbea73d019cb0416087f73722988` |
| `CFileSystem::changeWorkingDirectoryTo` | `0x0056c528` | 72 | `0x0056c528` | `b52ec018016a755513e1a0f638a2444bab65d7cbec23763a208dd6e7bbb969d7` |
| `FileSystemBase::changeWorkingDirectoryTo` | `0x0034e1d4` | 72 | `0x0034e1d4` | `12514e2f4f85c65defe6871e95f3a0aac429d77a448dd761e005a44f3263382a` |
| `CFileSystem::open` | `0x0056dc40` | 760 | `0x0056dc40` | `e2a26af442b08100efc7f9d4ed6567dc44ab744719946809ace431c5aac9aa3a` |
| `CFileSystem::createAndOpenFile` | `0x0056d4e0` | 964 | `0x0056d4e0` | `cb93a44965e3a30e9ed5f1bc17d644f6ab39c07b242a8ddcf0b019269ce6f552` |
| `createReadFile` | `0x005707b4` | 84 | `0x005707b4` | `b353d74ff93a4ce64acc549e7156a7930e6966b8f7e0fbf6a55590b994b0fdcb` |
| `CReadFile::openFile` | `0x005704cc` | 220 | `0x005704cc` | `a09ec2d5e0c72070cfeebd8beca6b9bea5de95c448b76c2940aa61b05afddbbd` |
| `CReadFile::CReadFile(char const*, bool)` | `0x00570734` | 128 | `0x00570734` | `70bd1d6dfbeab3429ff97bf474eaf07948634b0e88ed0e253795628f3c66b831` |

The global `RES_PATH` pointer is at ELF VA `0x0099b108`, file offset
`0x0099a108`, 4 bytes, SHA-256
`3a2373f5fec7e35939b2bfd48e9b9f67587e40ac40782938eb1125e7d097cb11`.
The 1024-byte `WorkingDirectory` array is at ELF VA `0x0099b138`, file offset
`0x0099a138`, SHA-256
`5f70bf18a086007016e948b04aed3b82103a36bea41755b6cddfaf10ace3c6ef`; all
initial bytes are zero. The CFileSystem vtable is the 116-byte range at ELF VA
`0x00974340`, file offset `0x00973340`, SHA-256
`dfaaf3b3344a14fefb2ccea25782c59002276b0e95a1b2ffe4246086f4884005`; its
address point is `0x00974348`, and `changeWorkingDirectoryTo` is slot `+0x30`.

No APK execution, emulator run, build, or test was performed. The remaining
join requires runtime evidence of the effective process/CFileSystem path and
the result of opening `shaders.pak` and its shader members.
