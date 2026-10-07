# Pixel format conversion contract

## Binary identity and provenance

The source is `lib/armeabi-v7a/libDungeonHunter2.so` inside the supplied APK. APK SHA-256: `32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`. ELF SHA-256: `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`.

[`original-functions.json`](original-functions.json) records exact symbol ranges and hashes for `convert`, `getPackedType`, `copy`, `convertPacked`, its typed helpers, `decompress`, and `computePitch`. It also records the 40-row `PFDTable` range at `0x008e36c0`, size `0x640`, and its SHA-256. Each row in [`pfd-dispatch.tsv`](pfd-dispatch.tsv) contains all 40 original bytes as hex plus its own hash and the selector values read by the converter. [`reference/conversion-dispatch.asm`](reference/conversion-dispatch.asm) contains selected exact ARM listings; every listed word was byte-compared with the mapped APK ELF range. The selected VAs map through a file-backed PT_LOAD using `file_offset = p_offset + (VA - p_vaddr)`.

## Dispatch observed in the binary

`pixel_format::convert` (`0x005f95ac`, `0x42e8` bytes) takes source and destination format IDs, buffers, pitches, dimensions, and a boolean. A zero pitch is replaced with the result of `computePitch` before dispatch. Its symbol ends at `0x005fd894` (end-exclusive), exactly where the separately named compressed-source helper `decompress` begins.

| Condition observed in `convert` | Route and result |
| --- | --- |
| Source and destination IDs match | Call `copy` at `0x005ee40c`. The helper uses the PFD row's byte at `+0x25` to determine block rows and `computePitch` for copied row size. It can copy contiguously or by row, reverse rows when requested, and use a temporary buffer for an in-place reversal. A compressed PFD row with reversal requested returns false. The PVR loader's `needsFlip()` result is false. |
| IDs differ and destination PFD word at `+0` has bit `0x08` | Log and return false. Destination ID 39 uses a separate diagnostic string path and also returns false. |
| IDs differ and source PFD word at `+0` has bit `0x08` | Call `decompress`. It first checks source pitch for IDs 21–27. IDs 17–20 take an unsupported-format error before that check; IDs 21–23 take a separate unsupported-format error after a valid pitch; IDs 24–27 reach the PVRTC decoder path documented in [`../pvrtc/ANALYSIS.md`](../pvrtc/ANALYSIS.md). |
| Destination PFD word has bit `0x04`; source PFD word does not | A converter path inside `convert` combines destination row byte `+0x14` and `getPackedType(sourceID)` to select inline code. Unsupported selectors log and return false. The trace leaves these bit and field meanings unnamed. |
| Remaining differing IDs have different row byte `+0x14` | If either PFD word has bit `0x02`, log and return false. Source IDs 10 and 11 use a dedicated `SPackedRGBtoLuminanceAlphaConverter` construction path. Other pairs enter `convertPacked`. |
| Remaining differing IDs have equal row byte `+0x14` | Use the inline same-selector conversion logic. Further PFD bits, channel-layout bytes, dimension/pitch rules, and special cases decide whether it completes; equal selector bytes alone do not guarantee success. |

`getPackedType` (`0x005ed954`) reads the PFD row's 32-bit word at `+0`, byte `+0x14`, and byte `+0x17`. [`pfd-dispatch.hpp`](pfd-dispatch.hpp) is a narrow source port of this bounded selector routine. The return values it produces for all 40 recovered table rows are listed in the TSV; `0xff` is the routine's unsupported-class result for the listed rows.

`convertPacked` forms the key `sourceClass * 4 + destinationClass`. Its branch table has code paths for keys 1, 2, 3, 5, 6, 7, 9, and 10; keys 0, 4, and 8 return false, and keys outside the switch fall through to false. The recovered PFD rows yield classes 0, 1, 2, or `0xff`, so keys 3 and 7 are not formed by the current table. A concrete branch only proves a route exists: the helper's row metadata checks can still reject a pair. It invokes typed implementations for unsigned 8-, 16-, and 32-bit values. Their function ranges are hashed in the manifest, but the large conversion helper family is not ported here.

## Limits

This is a static dispatch map, not a complete source/destination success matrix or a claim that runtime assets exercise each branch. The numeric PFD bits and row offsets are recorded as observed; semantic labels beyond direct control flow and the already documented pitch fields remain unresolved. The converter does not establish texture upload behavior. No tests or builds were run.
