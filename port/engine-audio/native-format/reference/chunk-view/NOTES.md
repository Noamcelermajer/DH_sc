# VoxN framing

Adapted from engine branch `e6da25b83086ea01fb1d4cd46ae12da3bbac645f`.
Original evidence: `DecoderNativeCursor::ParseFile`, `0x8738bc`, 2616 bytes;
SHA-256 `db37531fce39bdf9c8d2a98084ddb31360fb81ddae015d34a1474f5d9b294674`.
Corrected five tag words: Segm, Grps, Grpe, Plst, Trsn. Canonical and candidate
API spellings now agree with the actual bytes. This is a bounded port parser;
**zero complete original bodies**, no original execution, decoding or playback.

The eight-byte header exposes the raw read count. The checked layout accepts
the observed count 16, reads declared length/audio base at +16/+20, and exposes
chunks `[24,audio_base-8)`. The remaining eight bytes are uninterpreted. Size,
alignment, overlap and arithmetic checks are added port safeguards. Outputs
remain unchanged on rejection/end. Borrowed payload storage stays immutable
and alive; unknown tags/compression bytes remain raw, with no decoding claim.

Historical framing records identify the branch's twelve-file subset. The gate
checks all seventeen local files, streams hashes, retains at most 1 MiB of
metadata, and tests malformed/truncated/overflow inputs. No assets are bundled.

```text
python port/engine-audio/native-format/tests/run_chunk_view_host.py --cache ABSOLUTE_CACHE_FILES --original-elf ABSOLUTE_ORIGINAL_ELF --compiler ABSOLUTE_GXX --build-dir port/level-world/build/vox-n-chunk-view
```
