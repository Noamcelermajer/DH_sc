# Native segmented audio format

This note recovers the container framing and the runtime path for the engine's
`VoxNativeSubDecoder`. It is static analysis of the APK-matched ARM library;
it does not claim a complete sound-file schema or a running decoder port.

## Provenance

The input is `lib/armeabi-v7a/libDungeonHunter2.so` from the supplied APK. APK
SHA-256: `32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`.
ELF SHA-256: `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`.

The complete `DecoderNativeCursor::ParseFile` range is already captured in the
parent audio manifest and listing: VA/file offset `0x008738bc`, size `0xa38`,
SHA-256 `db37531fce39bdf9c8d2a98084ddb31360fb81ddae015d34a1474f5d9b294674`.
The supplementary constructor, dispatch, transition, and segment-decoder
ranges are listed with SHA-256 values in [`functions.json`](functions.json),
and their raw ARM listings are in
[`reference/native-segmented-audio.asm`](reference/native-segmented-audio.asm).
The focused state, codec, and transition trace is in
[`reference/native-audio-runtime.asm`](reference/native-audio-runtime.asm).
Every listed VA is below `0x00955130`, inside the first `PT_LOAD` with
`p_offset=0` and `p_vaddr=0`; therefore the file offsets equal the VAs. The
manifest also records that mapping for each supplementary function.

## File and chunk framing

`ParseFile` first requests exactly eight bytes from the stream. It compares
the first little-endian word to `0x4e786f56`, whose file bytes spell `VoxN`.
It passes the second word to the stream `Read` call as the number of bytes to
read into the first native-data buffer at offset `+8`. This proves the field's
use as a read count; it does not prove that it is a version or a total file
size.

The parser then loads a word at native-data offset `+0x14` and calculates the
length of a second buffer as `word_at_0x14 - 16 - word_at_0x04`. It reads that
many bytes into the buffer scanned by the chunk loop. The semantic name of
the field at offset `+0x14` is unknown from this routine alone. In the cached
corpus, the header word at file offset `+0x14` equals the audio-data base, and
the word at `+0x10` equals the physical file length. The decoder copies the
`+0x14` value into its subdecoder; PCM and IMA seek paths add it to a
segment-relative offset before seeking the stream. The parser-derived chunk
window ends eight bytes before this base for every inspected asset. The gap
bytes are recorded verbatim in [`corpus/assets.json`](corpus/assets.json); its
purpose is not established.

The second buffer is a sequence of records. Each record starts with an
eight-byte header: a four-byte tag loaded as a little-endian word, then a
little-endian payload byte count. The next record is located by adding eight
plus that count. Unrecognized tags advance over the same header and payload.
The original loop's length checks are not a sufficient malformed-input
contract, so the bounded reader in [`chunk_view.hpp`](chunk_view.hpp) accepts
only a caller-provided span and rejects a short header or payload extending
past that span. It does not assign names to the length words.

The parser compares these exact tag values:

| File bytes | Parser route established by calls |
| --- | --- |
| `Afmt` | Copies the body into the native format-data area. |
| `Segm` | Reads a leading count and calls `CreateSegmentsInfoContainers(count, stride)`. |
| `Cuse` | Enters a distinct table path; complete record semantics remain open. |
| `Grps` | Adds parsed records through `NativePlaylistsManager::AddPlaylist`. |
| `Grpe` | Adds parsed records through `NativePlaylistsManager::AddGroup`. |
| `Rule` | Creates transition-rule storage and populates rule-related entries. |
| `Plst` | Creates playlist storage and adds playlist records. |
| `Stat` | Creates a state container and walks count-derived records. |
| `Trsn` | Creates transition storage and walks count-derived records. |

For `Segm`, the first payload word is used as a count `N`; ARM calls unsigned
division with numerator `payload_length - 4` and divisor `N`, and passes the
quotient as the record stride. This is directly observed in the handler at
`0x00873c18` and its call at `0x00873c48` to
`DecoderNative::CreateSegmentsInfoContainers` (`0x008721ac`). Related
count/table paths also use container factories. The original does not check
that the division has no remainder before walking records. The safe reader
intentionally leaves these typed table bodies opaque rather than reproducing
that unchecked behavior.

## Format selection and segment decoding

`DecoderNativeCursor` stores a pointer to the parsed native data. Its
constructor reads a signed halfword from the beginning of the copied `Afmt`
body and selects the compiled-in native subdecoder as follows:

| Observed value | Constructor call |
| --- | --- |
| `1` | `VoxNativeSubDecoderPCM` |
| `17` (`0x11`) | `VoxNativeSubDecoderIMAADPCM` |

These are the only explicit values shown by the constructor's dispatch. The
code also creates two matching decoder-state objects for either branch. It
does not establish field names, units, sample rate, or all other format
values.

The base `VoxNativeSubDecoder::Decode` (`0x00885c1c`) calls a virtual segment
decoder and routes active segments through `MixMultipleSegments` and
`MixSegmentInBuffer`. The PCM and IMA-ADPCM subclasses each have distinct
`DecodeSegment` routines (listed in the supplementary manifest). The mixer
allocates a shared short-sample buffer, mixes one or more active segment
paths, and clamps the summed output to signed 16-bit bounds. This proves the
multi-segment mixing path, not its complete timing or cross-fade policy.

## Transition and playlist handling

The runtime code uses a transition-rule row stride of `0x24` bytes:
`UpdateSegmentsStates` and `InterpretTransitionRule` compute the selected row
as `transition_rules + index * 0x24`. The former calls
`ApplyTransitionRule`, checks playlist elements, and updates current/old/dying
segment state. `ApplyTransitionRule` can obtain the next playlist element,
transpose playlist parameters, swap current and old segment state, and update
segment counters. `InterpretTransitionRule` checks rule data, peeks a next
playlist element, and stores an entry-derived value in the decoder object.
These control-flow and field-offset observations are in the raw ARM listing.
`UpdateOldSegmentState` and `UpdateDyingSegmentState` convert the decoder's
sample-rate field to float, multiply by selected rule words at offsets
`+0x18`/`+0x1c`, and convert the results to integers used by segment-state
progress. `UpdateCurrentSegmentState` uses rule words at `+0x10`/`+0x14` in
its floating-point calculations before storing integer progression values.
These rule words feed sample-rate-derived counts; the code does not identify
their time unit or public field names. Enum values, cue IDs, and
transition-parameter record meanings also remain open.

The constructor's parameter types show the associated runtime containers:
`NativeChunks`, `States`, `AudioSegments`, nested integer vectors,
`TransitionRules`, nested `TransitionParams` vectors, a string-to-int map,
and `NativePlaylistsManager`. The binary establishes those types and how
selected methods consume them, but not a complete serialization schema for
each container or the ownership contract for the input stream and all nested
allocations.

## Scope and remaining questions

Corpus evidence for the remaining format questions is in
[`corpus/ANALYSIS.md`](corpus/ANALYSIS.md), with the full byte inventory in
[`corpus/assets.json`](corpus/assets.json). Runtime evidence for IMA block
decoding, PCM seek arithmetic, state snapshotting, and transition updates is
in [`reference/native-audio-runtime.asm`](reference/native-audio-runtime.asm);
each selected range has a size and SHA-256 entry in `functions.json`.

Recovered: `VoxN` framing; corpus-confirmed file-size and audio-base values;
the eight-byte chunk gap; eight exact tags found in every cached asset plus
the parser's absent `Cuse` route; `Segm` 24-byte rows and runtime sample
bounds; IMA-ADPCM input fields and block decoding; PCM and IMA stream-seek
paths; two cursor state slots with codec-specific snapshot methods; and the
transition/playlist execution path.

Still open: the purpose of the eight-byte gap; complete field schemas for
`Cuse`, `Rule`, `Plst`, `Stat`, `Trsn`, `Grps`, and `Grpe`; names and units for
transition values; malformed-input behavior; and stream/buffer ownership
across asynchronous loading. Cached filenames do not prove which game-side
calls load each asset. No build or tests were run.
