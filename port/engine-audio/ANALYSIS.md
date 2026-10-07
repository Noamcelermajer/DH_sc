# Engine audio path evidence

This is a static first-pass trace of the engine-owned `vox::` audio subsystem in the APK. It excludes `VoxSoundManager`, game event handlers, and game-specific sound callers. It adds no replacement implementation.

## Binary and range provenance

The source is `lib/armeabi-v7a/libDungeonHunter2.so` inside `Dungeon-Hunter-2-HD-v1-0-2.apk`. APK SHA-256: `32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`. ELF size: 15,938,284 bytes; ELF SHA-256: `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`.

[`original-functions.json`](original-functions.json) records 55 function ranges, addresses, sizes, file offsets, source assembly locations, and per-range SHA-256 values. [`reference/original-functions.asm`](reference/original-functions.asm) contains the selected ARM listings. All 55 listing byte sequences were compared byte-for-byte against the exact ELF ranges in the APK. The selected VAs are below `0x955130`, where the ELF's first PT_LOAD maps VA directly to file offset. No builds or tests were run.

The sibling reconstruction indexes used for cross-reference are under `../../../recovery/dh2-reconstruction/recovered/native/symbols/libDungeonHunter2.so/`: `function-index.csv`, `relocations.csv`, `strings.csv`, and `build-source-filenames.json`. These are navigation/evidence indexes; the APK bytes and copied listings are the binary evidence.

This overview is complemented by [`sources/ANALYSIS.md`](sources/ANALYSIS.md), which traces the generic file adapter, decoder selection, buffer handoff, and Android AudioTrack write path with a separate exact-range manifest.

## Engine registration and source loading

`vox::VoxEngine::Initialize()` (`0x862d10`) registers two stream factories and five decoder factories through `VoxEngine::RegisterStreamType` (`0x8628c8`) and `VoxEngine::RegisterDecoderType` (`0x862898`). The registrations resolve to these concrete implementations:

| Kind | Factory | Registered implementation |
| --- | --- | --- |
| Stream | `StreamMemoryBufferFactory` (`0x8891dc`) | Memory-buffer cursor |
| Stream | `StreamCFileFactory` (`0x888f98`) | C-file cursor |
| Decoder | `DecoderRawFactory` (`0x874e2c`) | Raw byte source |
| Decoder | `DecoderMSWavFactory` (`0x8709b8`) | Microsoft WAV parser and subdecoders |
| Decoder | `DecoderStbVorbisFactory` (`0x8753d8`) | stb_vorbis-backed cursor |
| Decoder | `DecoderMPC8Factory` (`0x8704dc`) | MPC8-labelled cursor |
| Decoder | `DecoderNativeFactory` (`0x872b78`) | Engine-native segmented format |

The remaining decoder registration passes a null factory; its intended sentinel/fallback role is not established. `relocations.csv` has `R_ARM_RELATIVE` slots pointing to each listed factory, and the `Initialize` call sequence supplies those factories to the registration wrappers. The internal registration routines (`0x862e70`, `0x862e94`) store factory pointers in fixed arrays; the dispatcher and registrations are included in the range manifest.

The public source-loading wrappers, `VoxEngine::LoadDataSourceAsync` (`0x862760`) and `LoadDataSource` (`0x8627e0`), forward into `VoxEngineInternal::LoadDataSourceAsync` (`0x86aee8`) and `LoadDataSource` (`0x86b144`). This confirms separate asynchronous and synchronous engine entry points. It does not establish which mode every game asset uses or the caller's ownership/lifetime contract.

## Android output backend

`VoxEngineInternal::Initialize()` (`0x86934c`) creates a driver through `vox::CreateDriver()` (`0x88fac4`) when the driver field is unset. `CreateDriver` allocates and constructs `DriverAndroid`. `DriverAndroid::Init(void*)` (`0x88f9a0`) initializes the callback interface and calls `_InitAT`. The class's `_InitOSL`, `_UpdateOSL`, `_SuspendOSL`, and `_ResumeOSL` methods resolve to four-byte return stubs. The active implementation in this library is therefore the AudioTrack path, not an active OpenSL path.

`DriverAndroid::_InitAT(void*)` (`0x88f660`) sets the engine callback sample rate to 44,100 Hz and invokes Java `android.media.AudioTrack` setup. Literal strings in the ELF identify the six-integer constructor `(IIIIII)V`, `getMinBufferSize(III)I`, `pause`, and `write([BII)I`. The setup code supplies channel-config value `12` and audio-format value `2`; those integers are the direct assembly observations. `DoCallbackAT` (`0x88f14c`) and `UpdateThreadedAT` (`0x88f328`) implement the callback and threaded write path. This identifies the backend call path, while Android-side scheduling, device behavior, and error handling are outside this static trace.

## Mixing, stream cursors, and source state

`DriverCallbackInterface::_FillBuffer(short*, int)` (`0x890548`) walks the callback-source list, sums source work data in a wider integer buffer, clamps samples to signed 16-bit limits, and writes 16-bit output. The stereo path is visible in `DriverCallbackSourceInterface::FillBufferStereo16` (`0x891860`); the Android initialization supplies stereo channel configuration. The source exposes `UploadData`, `NeedData`, `GetState`, `Reset`, `Pause`, `Stop`, and `Play` entry points.

The source state field at object offset `+0x50` has these directly observed writes: `Play` changes any value other than `-1` to `1`; `Pause` changes `1` to `2`; `Stop` changes any value other than `-1` to `3`; and `Reset` writes `0`. `GetState` normally returns the stored value, but while it is `1` it can report `3` when a per-entry byte at offset `+0x14` is nonzero. Method names and these numeric writes support the usual play/pause/stop reading, but the precise meaning of the per-entry flag and all state invariants remain unresolved. `NeedData` derives its answer from the selected source entry and buffer bounds; its policy is not fully named by this trace.

`StreamCFileCursor::Read/Seek` (`0x88885c` / `0x888db8`) and `StreamMemoryBufferCursor::Read/ReadRef/Seek` (`0x889408` / `0x889394` / `0x8892f0`) provide file-backed and memory-backed byte cursors. The memory `ReadRef` path can return a view into the supplied buffer; callers must honor the cursor's lifetime/ownership rules, which are not recoverable from these routines alone.

## Decoder formats proven by the code

- **Raw:** `DecoderRawCursor::DecodeRef` and `Decode` (`0x874b84`, `0x874c44`) provide the raw source path. This package does not infer an asset extension or sample layout from the factory name.
- **WAV:** `DecoderMSWavCursor::ParseFile` (`0x870610`) checks RIFF chunk identifiers including `RIFF`, `fmt `, `data`, and `fact`. Its constructor dispatches format tag `1` to `VoxMSWavSubDecoderPCM` and tag `0x11` (17) to `VoxMSWavSubDecoderIMAADPCM`. The corresponding PCM and IMA ADPCM decode routines are included; IMA also has a block decoder at `0x8758d8`.
- **Vorbis:** the registered `DecoderStbVorbisFactory`, cursor constructor, and decode method are present; the build-source filename index also lists `vox_decoder_stbvorbis.cpp` and `stb_vorbis.cpp`. Registration proves compiled-in availability, not that every sound uses this decoder.
- **MPC8:** a registered `DecoderMPC8Factory`, cursor constructor, and decode method are present. Exact file signature/extension and codec details are left open.
- **Native:** `DecoderNativeCursor::ParseFile` (`0x8738bc`) and `VoxNativeSubDecoder::Decode` (`0x885c1c`) implement a separate engine format. The focused [native segmented-audio analysis](native-format/ANALYSIS.md) and [12-asset corpus audit](native-format/corpus/ANALYSIS.md) establish the `VoxN` framing, nine parser tag branches (eight occur in all 12 cached assets; `Cuse` is absent), 24-byte `Segm` rows, and audio-payload partitioning. Hash-backed runtime ranges trace PCM/IMA seeking and sample bounds, IMA-ADPCM block decoding, two-slot decoder-state handoff, and sample-rate-derived transition progress. Complete table schemas, header/version and gap meaning, transition units, and asynchronous buffer ownership remain unresolved.

## Boundaries and next evidence

This pass establishes engine registration, Android output setup, the callback mixer, cursor families, and the decoder classes/formats above. The native-format supplement also adds a bounded chunk-header/payload view in [`native-format/chunk_view.hpp`](native-format/chunk_view.hpp); it parses an already bounded span and does not recreate the original decoder ABI. The work does not reconstruct the complete `vox` ABI, identify every game asset-to-decoder choice, prove audio buffer lifetime across asynchronous calls, or fully recover resampling/mixing policy and native-format schema. No builds or tests were run.
