# `vox` source selection, decoder handoff, and Android audio path

This supplement follows the generic engine source adapter into the callback mixer and Android `AudioTrack` worker. It does not implement a replacement or infer which game sound uses a particular path.

## Binary provenance

Source ELF: `lib/armeabi-v7a/libDungeonHunter2.so` inside `Dungeon-Hunter-2-HD-v1-0-2.apk`.

- APK SHA-256: `32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`
- ELF SHA-256: `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`
- The ELF has a file-backed PT_LOAD mapping `VA 0x00000000..0x00955130 -> file offset 0x00000000 + VA`, followed by `VA 0x00956130..0x0099fa7c -> file offset 0x00955130 + (VA - 0x00956130)`. These ranges and fields are recorded in [`functions.json`](functions.json).
- All 14 selected function ranges and the 24-byte extension-literal range were mapped through PT_LOAD and compared byte-for-byte with the exact ELF. Their VA, file offset, size, and SHA-256 are in the manifest; exact ARM listings are in [`original-functions.asm`](original-functions.asm).

## Generic file adapter and decoder selection

`VoxUtils::LoadDataSourceFromFile` (`0x86f558`) calls the engine source API with stream-factory index `1`. The engine registration order documented in the parent audio analysis is memory stream at index `0`, C-file stream at index `1`. The adapter therefore selects the file cursor for this helper.

`VoxUtils::LoadDataSourceFromFileEx` (`0x86f5fc`) branches on the flags value: bit `0x10000` reaches the asynchronous API; bit `0x1` routes through the file-to-RAM helper; exact value `2` routes through the raw helper; other values reach the synchronous file helper. These are assembly branch conditions, not a recovered public enum definition.

`VoxUtils::LoadDataSourceFromFileAutoDetectDecoder` (`0x86f6b0`) finds the suffix after the last dot, lowercases it, compares it with extension strings, and passes a decoder index to the generic file helper. The adjacent engine read-only data contains `.wav`, `.mpc`, and `.ogg` (`0x9117c0`, size 24, exact hash in the manifest). The helper routes `.wav` to decoder index `1`, `.mpc` to index `3`, and `.ogg` to index `2`; registration maps those indices to WAV, MPC8, and stb_vorbis respectively. It also has an index-`4` branch, whose extension mapping is not established here. The dispatch proves generic compiled-in selection logic. It does not show which filenames or streams the game actually hands to it.

At the engine boundary, synchronous and asynchronous `LoadDataSource` both bounds-check a stream factory index against the registered count, call the selected stream factory, then bounds-check a decoder index and call that decoder factory. They invoke the selected parser on the created stream. Invalid indices, null factories, or parse failures follow cleanup paths. The async path allocates a `0x60`-byte operation record, stores the stream/decoder and callback state, links it into an internal queue, and schedules work. This describes the engine handoff; the meaning of every opaque flag and the game's buffer lifetime policy are not proven.

The decoder registrations and format routines in the parent [`ANALYSIS.md`](../ANALYSIS.md) establish the available engine decoders: WAV PCM (tag `1`) and WAV IMA ADPCM (tag `17`), stb_vorbis, MPC8, and a native segmented decoder with PCM/IMA subdecoders. Registration and parser code show support, not usage frequency or the identity of any game asset.

## Callback buffer handoff

`DriverCallbackSourceInterface::UploadData` (`0x890d40`) receives a pointer and a byte count. It writes the pointer, count, and status fields into an entry addressed from object offset `+0x60`, with `0x18` (24) bytes per entry, then advances the entry index at `+0x48`. The assembly stores the supplied pointer directly; this routine does not copy the payload.

`GetWorkData` (`0x8915c0`) reads the selected entry pointer and bounds, copies available bytes into work storage, and updates per-entry progress fields. `NeedData` (`0x890e0c`) checks the current entry/status and available bounds. `FillBufferStereo16` (`0x891860`) consumes that work path and performs stereo sample processing. The mixer (`0x890548`) visits callback sources, accumulates into a wider buffer, clamps to signed 16-bit range, and emits 16-bit samples.

These routines establish a producer/consumer handoff using pointer-bearing queue entries. `UploadData` enters a source-side lock; the Android callback enters a driver-side lock before filling. The complete lock ordering, whether all producers use the same lock, and the lifetime owner of uploaded memory are not established by this trace. In particular, the direct pointer store does not by itself prove transfer of ownership or how long the caller keeps the memory alive.

## Android `AudioTrack` path

`DriverAndroid::_InitAT` (`0x88f660`) obtains the Java `AudioTrack` class, requests the minimum buffer size, and constructs the Java object. The constants passed to Android are sample rate `44100`, channel configuration `12`, and audio format `2`; the code also sets a callback chunk field to `0x400`. It initializes the callback state and creates the worker path. The OpenSL methods in this ELF are return stubs, so this is the active backend present in the library.

`DoCallbackAT` (`0x88f14c`) obtains the Java byte-array data, enters the driver callback lock, calls `_FillBuffer`, and hands the resulting samples back through JNI. `UpdateThreadedAT` (`0x88f328`) waits on the worker synchronization path, prepares callback data, and calls the Java `AudioTrack.write([BII)I` method. The write loop checks its returned progress and advances/retries as needed; the Java method signature and native call site are both present in the ELF.

The static trace does not recover Android's runtime scheduling behavior, device-specific buffer timing, error recovery, or the game's use of synchronous versus asynchronous source loading. No build or tests were run.
