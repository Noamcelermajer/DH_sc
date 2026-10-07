# VoxN corpus and runtime findings

This note summarizes the byte inventory in [`assets.json`](assets.json) and
the exact APK-matched instruction ranges in
[`../reference/native-audio-runtime.asm`](../reference/native-audio-runtime.asm).
The corpus consists of 12 cached `.vxn` files from the extracted game data
directory. Filenames are retained for traceability; their presence does not
prove which game-side call loads them.

## Container bytes

All 12 files begin with bytes `56 6f 78 4e` (`VoxN`). Header u32 at offset
`+4` is 16. Bytes `+8..+15` are preserved raw in the manifest; the values
resemble a short version string but no version semantics are assigned. The
u32 at `+0x10` equals the physical file size for all 12 assets. The u32 at
`+0x14` is the audio-data base: `0x200` in all 11 level assets and `0x16c` in
`m_title.vxn`.

The APK parser reads the initial eight bytes, then reads the `+4` count of
bytes into native data at `+8`. It allocates a chunk buffer with size
`u32(+0x14) - 16 - u32(+4)` and reads it starting at file offset 24. Thus,
for these assets, the chunk-record window ends at `audio_base - 8`; the eight
bytes up to the audio base are preserved in `assets.json` and remain
unexplained. Runtime subdecoder construction copies its native-data `+0x14`
field, and PCM/IMA seek routines add that base to segment-relative offsets.

Each inspected file has the same eight chunk tags in this order, with exact
case: `Afmt`, `Segm`, `Rule`, `Plst`, `Stat`, `Trsn`, `Grps`, `Grpe`. The
binary parser also has a `Cuse` branch, which does not occur in this corpus.
Every record has an 8-byte header (four tag bytes and one little-endian u32
payload length), followed by exactly that many payload bytes.

| Chunk | 11 level assets: count, derived record bytes | `m_title.vxn`: count, derived record bytes |
| --- | ---: | ---: |
| `Afmt` | 12-byte format body | 12-byte format body |
| `Segm` | 2 × 24 | 2 × 24 |
| `Rule` | 2 × 36 | 1 × 36 |
| `Plst` | 2 × 8 | 1 × 8 |
| `Stat` | 2 × 32 | 1 × 32 |
| `Trsn` | 4 × 16 | 1 × 16 |
| `Grps` | 2 × 24 | 1 × 24 |
| `Grpe` | 2 × 32 | 2 × 32 |

For table chunks, each body begins with a u32 count and the listed record
size is derived arithmetically from the remaining payload length. These
strides are not complete field schemas. The manifest preserves each full
small chunk body as hex and gives its payload SHA-256.

## Audio format and segment rows

Every `Afmt` body is 12 bytes:

| Body offset | Observed little-endian value | Evidence-qualified reading |
| --- | ---: | --- |
| `+0` u16 | `17` (`0x11`) | Format selector; cursor dispatches 17 to IMA-ADPCM. |
| `+2` u16 | `2` | The decoder exposes this field as channel count. |
| `+4` u32 | `32000` | The decoder exposes this field as sample rate. |
| `+8` u16 | `1024` | Copied into the IMA subdecoder's `+0x10`; its seek/decode path uses it as compressed block alignment. |
| `+10` u16 | `4` | Input bits-per-sample field. The parser writes 16 to native-data `+0x2a` after copying the body; `GetTrackParams` later reads this normalized field. |

`Segm` bodies are 52 bytes: count 2 followed by two 24-byte rows (six
little-endian u32 words per row). Across all 12 files, observed row words
`[0]`, `[1]`, and `[2]` behave as follows:

- Row word 0 is a segment-relative byte offset. PCM and IMA seek routines
  fetch it from the row and add it to the audio base before a stream seek.
- Row word 1 is an encoded byte length. `DecodeBlock` reads it and bounds its
  compressed reads by the remaining bytes in that segment. For every file,
  row 0 begins at relative offset zero, row 1 begins exactly at row 0's
  extent, and the row extents sum to the bytes after the audio base. This
  holds for both equal level halves and the differently sized title segments.
- Row word 2 is a per-segment sample bound. PCM and IMA seek routines read
  this word and reject requested indices larger than it.
- Row words 3–5 are zero in this corpus; their meanings are unknown.

For example, `m_title.vxn` has audio base `0x16c` and payload length
`3,836,928`; its rows are `[0, 188,416, 186,636, 0, 0, 0]` and
`[188,416, 3,648,512, 3,622,848, 0, 0, 0]`. The extents are contiguous and
sum to the complete audio payload. Every file's exact rows, byte offsets,
payload hashes, and source-file hash are in `assets.json`.

## IMA-ADPCM decode path

`VoxNativeSubDecoder::GetTrackParams` (`0x884438`, 48 bytes) reads channel
count from format offset `+0x0a`, sample rate from `+0x0c`, and normalized
bit depth from `+0x12`. `MixSegmentInBuffer` (`0x8844e8`, 588 bytes) divides
requested byte counts by `channels * (bits / 8)` to get output sample-frame
counts. The base decoder mixes active segments into signed 16-bit samples.

The IMA constructor (`0x886bfc`, 448 bytes) computes the value at subdecoder
offset `+0x170` from block alignment and channel count:
`1 + 2 * (blockAlign - 4 * channels) / channels`. With the corpus values
(1024 bytes, two channels), this is 1,017 sample frames per compressed block.
The IMA seek routine (`0x887464`, 224 bytes) divides the requested sample
index by that value, multiplies the quotient by the 1,024-byte block
alignment for the stream offset, and retains the within-block remainder in
segment state.

`DecodeBlock` (`0x887068`, 1,020 bytes) reads block data and initializes each
channel's predictor from a signed 16-bit value and the step index from the
following byte. It consumes low and high 4-bit codes, forms the step delta
from bit weights of the selected step value, applies the sign bit, updates
the predictor, and clamps it to signed 16-bit range. A 16-entry adjustment
table changes the step index, which is clamped to `0..88`; this is the IMA
ADPCM index/step decode pattern. The routine and table references are present
in the exact listing; the replacement decoder has not been implemented or
compared sample-for-sample.

For PCM, `GetBytePositionFromSampleOffset` (`0x887b2c`, 12 bytes) multiplies
the input sample index by a signed halfword at subdecoder `+0x10`. `Seek`
(`0x887b38`, 128 bytes) bounds the sample index using segment row word 2 and
forms the stream seek as `audio_base + row_word_0 + sample_index * stride`.
For IMA, the same subdecoder offset is the compressed block alignment and
the block-frame division described above selects compressed block offsets.

## State handoff and timing evidence

The cursor constructor (`0x8742f4`, 852 bytes) allocates two state slots at
cursor offsets `+0x50` and `+0x54` for the selected codec. `Decode`
(`0x872218`, 252 bytes) swaps those pointers on its state-change path,
dispatches to the PCM or IMA state methods, calls the subdecoder, and updates
byte/progress counters at `+0x58`, `+0x5c`, and `+0x64` from the returned
count. The base `SetState` and `GetState` routines (`0x884f3c` and `0x88506c`,
304 bytes each) copy scalar state plus three 65-byte regions; the IMA
specializations (`0x8864f8`, 92 bytes; `0x886554`, 44 bytes) add or restore
codec-specific fields. The existence and copy direction of snapshots are
clear; the reason for two slots and the units of every cursor counter are
not named by the binary.

Transition updates use 36-byte `Rule` rows. `UpdateOldSegmentState` and
`UpdateDyingSegmentState` convert the decoder sample-rate field to float,
multiply it by selected rule words at offsets `+0x18`/`+0x1c`, then convert
the results to integers used in segment progression. `UpdateCurrentSegmentState`
uses rule words at `+0x10`/`+0x14` in its floating-point calculations before
storing integer progression values. These fields feed sample-rate-scaled
quantities but do not prove whether the author intended seconds, another
duration unit, or a scale factor. The cursor constructor
also computes its `+0x60` field from channel count × rate × 600, divides by
float constant `143.625`, and converts to integer; its field meaning is
unresolved. No millisecond or wall-clock unit is assigned.

`ApplyTransitionRule`, `UpdateSegmentsStates`, and `InterpretTransitionRule`
show playlist peeking, rule selection, and current/old/dying segment-state
updates. `Stat` contains null-terminated `ambient` and `combat` names in the
11 level assets; the other row bytes and exact serialized semantics are
left raw. The remaining table chunks have count/stride observations only.

## Reproducibility and boundaries

Run `python port/engine-audio/native-format/tools/audit_vxn_corpus.py` from
the repository root to regenerate the asset manifest from the cached corpus.
The manifest includes file and
audio-payload SHA-256 values, header bytes, exact chunk offsets and bodies,
segment words, derived extents, and arithmetic checks. The selected function
VA, file offset, size, SHA-256, and ARM listing are in
[`../functions.json`](../functions.json); each assembly byte sequence was
compared with the corresponding range in the ELF whose SHA-256 is recorded
in that manifest. Parser framing and runtime field use are evidence-backed;
full schemas and intended timing units remain unresolved. Game-side source
calls are not used to assign asset purpose here.
