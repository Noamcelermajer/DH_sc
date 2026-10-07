# Android startup registration of `shaders.pak`

## Finding

The linked Android startup path contains a concrete virtual call that registers
`shaders.pak` through the engine filesystem. `Application::InitWin32(IDevice*)`
at ELF VA `0x0032fab4` loads the filesystem pointer from `device + 0x34`, passes
the string `shaders.pak` and boolean arguments `(true, false)`, then dispatches
through the filesystem object's vtable at displacement `+0x18`. The verified
`glitch::io::CFileSystem` vtable maps that slot to
`CFileSystem::addZipFileArchive` at `0x0056d2c0`.

The platform call chain is documented in
[`engine-platform/ANALYSIS.md`](../../engine-platform/ANALYSIS.md): Android's
`GameRenderer.nativeInit` reaches `appInit`, which creates the Android device
and calls the recovered symbol `Application::InitWin32(IDevice*)`. Despite the
symbol name, this is the method called by the Android initialization route in
this APK.

The return value is not checked by this caller. At `0x0032fb74`, the next
instruction replaces `r0` with a separate startup string before the following
call, and the caller does not compare or branch on the registration result.
The request therefore does not prove registration completed.

## Engine and game/platform evidence

### Engine filesystem object and virtual slots

`IDevice::IDevice(SCreationParameters const&)` calls
`CIrrFactory::getInstance()` and dispatches through the factory's vtable at
`+0x08` to `CIrrFactory::createFileSystem`. The factory allocates 44 bytes,
constructs a `CFileSystem`, and returns it. The device constructor stores the
returned filesystem pointer at `device + 0x34`. The same field is passed by
reference as `IFileSystem` to the GUI factory in
`IDevice::createGUIAndScene`, corroborating its type.

The full CFileSystem vtable symbol is at VA `0x00974340`, size `0x74`. Its
object address point is `0x00974348` (symbol plus the two header words). The
relevant address-point slots are:

| Vtable displacement | Target | Engine method |
| ---: | ---: | --- |
| `+0x0c` | `0x0056d4e0` | `CFileSystem::createAndOpenFile` |
| `+0x18` | `0x0056d2c0` | `CFileSystem::addZipFileArchive` |
| `+0x1c` | `0x0056d180` | `CFileSystem::addFolderFileArchive` |
| `+0x20` | `0x0056ca70` | `CFileSystem::addPakFileArchive` |

This corrects the 28-byte vtable description in the earlier
[`runtime-open-route/ANALYSIS.md`](runtime-open-route/ANALYSIS.md). The table is
116 bytes (`0x74`), not 28 bytes; archive registration is exposed virtually.

### Game/platform registration callsite

In `Application::InitWin32`, the exact call sequence is:

```text
0x0032fb50  ldr  r12, [r6, #0x34]  ; IDevice filesystem pointer
0x0032fb54  ldr  r1, [pc, #0xfc]   ; literal-pool displacement
0x0032fb58  mov  r2, #1
0x0032fb5c  mov  r0, r12
0x0032fb60  add  r1, pc, r1        ; resolves to "shaders.pak"
0x0032fb64  mov  r3, #0
0x0032fb68  ldr  r12, [r12]       ; load filesystem vptr
0x0032fb6c  mov  lr, pc
0x0032fb70  ldr  pc, [r12, #0x18] ; addZipFileArchive virtual slot
```

The literal-pool word is at VA `0x0032fc58`; ARM PC-relative resolution gives
the NUL-terminated string at VA `0x008bf740`. Thus this call requests ZIP
registration of the relative path `shaders.pak` with arguments `(true, false)`.
This is a game/platform startup call into the engine API; the filesystem
implementation and vtable are engine code.

## Relationship to shader opens and the recovered package

The shader trace in the sibling runtime-open note shows
`createShaderCode` calling filesystem vtable displacement `+0x0c` when no
`IReadFile*` is supplied. `CFileSystem::createAndOpenFile` checks registered
archive readers, so the startup registration provides the missing static link
between shader filename lookup and the ZIP reader.

The recovered cache census identifies a valid 34-entry ZIP named
`com.gameloft.android.GAND.GloftD2SS/files/shaders.pak`, SHA-256
`365a4d3c432454c44208ebb484c7a472a3a4534a0c5c9e77a7a90f3b87b1b5c0`; the
selected GLSL files are present inside it. The outer-cache extraction and
runtime filesystem path are separate platform concerns. Static evidence now
shows the app initialization code requests registration of a same-named
relative package, but does not prove that extraction completed, the process
working directory resolved that relative path to the recovered cache file, or
registration and subsequent shader reads succeeded on a device.

The engine implementation at `0x0056d2c0` first calls the filesystem's
`createAndOpenFile` slot with the supplied path and returns false immediately
if it gets a null stream. With a stream, it allocates a `CZipReader`, runs its
constructor, appends the reader when the allocation succeeded, drops the
factory-held stream reference, and returns whether the reader allocation was
non-null. The constructor scans archive data, but this registration method
does not consume a separate archive-validity result before appending. The
[ownership audit](../../engine-filesystem/OWNERSHIP-ANALYSIS.md) records
the exact stream and reader count changes. Consequently, static code establishes
the call and its conditional registration mechanics, but not that the relative
path opens in the Android process, that construction produces usable entries,
or that a shader entry is read.

## Exact APK provenance

Source APK: `Dungeon-Hunter-2-HD-v1-0-2.apk`,
SHA-256 `32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`.
Its member `lib/armeabi-v7a/libDungeonHunter2.so` is 15,938,284 bytes, SHA-256
`36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`. Both
ELF identities were rechecked against the supplied APK member.

| Evidence | ELF VA | File offset | Bytes | SHA-256 |
| --- | ---: | ---: | ---: | --- |
| `IDevice::IDevice(SCreationParameters const&)` | `0x00672040` | `0x00672040` | 588 | `2c4b0388ba8b299e4ee2877a9105381bef2fdea2cb7aa307d7d22e2e66080f81` |
| `CIrrFactory::createFileSystem()` | `0x00533fb0` | `0x00533fb0` | 56 | `73bd5ee0669d1550b6da31455e28f9073b13ad8a9e2c3c8b7efdc1366370c7ae` |
| `IDevice::createGUIAndScene()` field-type corroboration | `0x00671554` | `0x00671554` | 148 | `87b72762d2659692489b9d803cd55100d2cf109a05c08f78589bc89fef7d26f9` |
| `Application::InitWin32(IDevice*)` | `0x0032fab4` | `0x0032fab4` | 428 | `52564a5e065858938c32ffb6ef7004b81bd48c484fa2f99461d2f6dc0f8e6119` |
| NUL-terminated `shaders.pak` string | `0x008bf740` | `0x008bf740` | 12 | `eca5f76b6f86694dc5999acb34cd2c0df1f4d6fd87cc570742d750de627f8920` |
| CFileSystem vtable | `0x00974340` | `0x00973340` | 116 | `dfaaf3b3344a14fefb2ccea25782c59002276b0e95a1b2ffe4246086f4884005` |
| `CFileSystem::addZipFileArchive(char const*, bool, bool)` | `0x0056d2c0` | `0x0056d2c0` | 276 | `56e0697b55563af11a91cb66247b1c9954ba5055149c833ee2915cd4c2d319ad` |

Text ranges map through `PT_LOAD` with `p_offset=0`, `p_vaddr=0`. The vtable
maps through the data `PT_LOAD` with `p_offset=0x955130`, `p_vaddr=0x956130`,
so its file offset is `0x00973340`. The string resides in the first mapping.
No build, runtime launch, or test was performed.
