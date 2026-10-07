# Quaternion-angle false-default and index routing audit

This focused audit follows the ARM32 path for quaternion-angle channels when `SAnimationAccessor::hasDefaultValue()` is false, then checks what the APK does with key, channel, and sampler indices. It is limited to the quaternion-angle family and the recovered BDAE corpus. The [function manifest](functions.json) records 43 exact ARM32 ranges with ELF offsets and SHA-256 values; [index-routes.asm](reference/index-routes.asm) contains the byte-checked instruction rows.

## Findings

### No-default quaternion-angle behavior

`SAnimationAccessor::hasDefaultValue()` at `0x00669e54` tests the pointer at `SAnimation+0x18`. A non-null pointer takes the default branch. The present-default path copies three 32-bit words from `getDefaultValue()` into the axis lanes and writes the sampled angle to lane 3.

When that pointer is null, each of the six ordinary typed sampler bodies (float, signed short, signed char; direct and interpolated) writes only its decoded scalar to the first word of the provided output. The float direct body at `0x0061f51c` shows the branch plainly: it gets output vector 0, loads the selected key, tests `hasDefaultValue()`, and on false stores the scalar at `[out]`. The interpolated version at `0x0061f898` computes the scalar interpolation and takes the same one-word store. The short and char forms first decode through their input-reader path, then take the same no-default store; the integer routes still use their scalar scale/offset data.

The ordinary quaternion-angle wrappers do not turn that scalar into a valid axis-angle record. The direct float wrapper at `0x0061f594` zeros lanes 0, 1, and 2 of a stack temporary, calls the sampler with that temporary as output, then reads lane 3 as the angle for `quaternion::fromAngleAxis`. The interpolated wrapper at `0x0061f94c` does the same with a temporary at `sp+8`. Neither wrapper initializes lane 3. On the no-default branch, the sampled scalar overwrites lane 0; lanes 1 and 2 remain zero; lane 3 is read without being written by these functions. Thus the ARM path reaches angle-axis conversion with an indeterminate, stack-resident angle. The resulting quaternion cannot be given a stable numeric meaning from this static evidence.

The three scalar specializations have the same wrapper shape. The indexed direct and interpolated quaternion-angle bodies also initialize only the first three words of each axis-angle temporary before converting it. Their no-default behavior has the same unresolved angle lane.

| Route | VA | Bytes | Range SHA-256 |
| --- | ---: | ---: | --- |
| Float direct scalar | `0x0061f51c` | 120 | `818eba0e8e6db29d0f6ad1221623d64aba7e5a1e3b14ba0696c06cb6f47d0ec6` |
| Float interpolated scalar | `0x0061f898` | 180 | `6aa7dedfa2327301558a6c41701b4adcac43fe973b33d8f73e40078e88275225` |
| Float direct angle-to-quaternion wrapper | `0x0061f594` | 64 | `fdcb584ddc8ab6a4153f1005f960e281db5be103f2f580cb64b23875f1a9f1e2` |
| Float interpolated angle-to-quaternion wrapper | `0x0061f94c` | 60 | `a4c2e45853ee6bef19b40c856c9422603fe9f5359793471012187d9987d5b1ad` |

Short/char bodies, accessor helpers, callers, vtable thunks, and indexed variants are listed in [functions.json](functions.json).

### How the route uses indices

`SAnimationAccessor::getOutput(i)` at `0x00669e24` uses `i` to select a 28-byte sampler record, reads that record's output entry index at `+0x18`, and resolves the vector through the segment data. `getChannel(i)` at `0x00669e44` returns the channel record at a 16-byte stride.

For quaternion-angle key sampling, the generic scalar bodies set `i=0` before calling `getOutput`. The normal `CAnimationTrackEx::getValue` body at `0x006e307c` also passes sampler index 0 into `SAnimationAccessor::findKeyFrameNo` for time lookup. Its direct and interpolated calls use object-vptr offsets `+0x28` and `+0x20`. The indexed overload at `0x006e2dbc` likewise passes 0 to key-time search, then dispatches through object-vptr offsets `+0x2c` (direct) and `+0x24` (interpolated). The quaternion-angle vtables resolve those indexed slots to the type-specific thunks listed in the manifest. The extra integer is forwarded through that separate typed-track slot; in the quaternion-angle indexed body it reaches the scalar sampler's key-index argument, not the sampler-array index.

The indexed quaternion-angle operations are relative-rotation operations over keys from output vector 0:

- The direct overload accepts two integer key positions. It converts both sampled axis-angle records to quaternions, negates the vector part of the first/reference quaternion, and multiplies it by the second, producing the observed relative product `inverse(reference) * sample`.
- The interpolated overload accepts a reference key position, lower and upper key positions, and a fraction. It converts all three scalar samples, slerps the lower/upper pair, then multiplies that result by the inverse reference quaternion.

Those are supported indexed engine routes. The producer and semantic label of the extra key position are not established here. In particular, the ARM bodies do not show a channel-to-sampler mapping for animations with multiple channel and sampler records.

`CAnimationSet::addAnimation` at `0x006601fc` calls `CColladaDatabase::getAnimationTrackEx` after channel checks. The factory and accessor APIs establish channel and sampler access independently, but the traced quaternion-angle getter fixes its time and output sampler index to 0. `SAnimationAccessor::getChannel(i)` alone does not resolve a corresponding output sampler.

### What the BDAE corpus shows

The scan covers all **2,900 `.bdae` files** under `files/data/3d`, containing **49,060 animation records**. Among channel codes 6–9, it found **77 records of type 9** and no type 6, 7, or 8 records. All 77 type-9 records have one channel, one sampler, a present default pointer, and no offset/scale pointer. No type-9 record exercises a multi-channel or multi-sampler layout, and none exercises the no-default branch.

For a concrete type-9 record, `animateddecors/cin_king_gothicus_01.bdae` (SHA-256 `690b9670296a1f7a467afa104988babf7493069dbf6239e88880c603ab35e27d`) contains `Bip01_L_Calf-node-rotation`: one channel of type 9, one float scalar output sampler, and a default tuple `[0, 0, 1, -61.72850036621094]`. This is consistent with the present-default path, not evidence for the no-default case.

The wider corpus includes **39** records with more than one channel and sampler: 26 are 2/2, one is 3/3, nine are 4/4, one is 5/5, and two are 10/10. Their 116 channel records all have `word0 == -1`; the observed channel types are 87–91. For example, `crypt_flame.bdae` (SHA-256 `f75781657408d0ef2d5f3fb08a85f35ceb5b14f16f187fd5e41b634d658ec8c1`), animation `offsetV`, has two channels (types 88 and 87) and two samplers (indices 0 and 1, with output entries 3 and 5). This demonstrates serialized multiplicity, but does not prove that array order is the general channel-to-sampler rule. These multichannel records do not contain quaternion-angle channels.

The complete machine-readable counts and both examples are in the manifest's `corpus` object; the earlier focused scan is also retained in [payload-audit/corpus-census.json](../payload-audit/corpus-census.json).

## Conclusion and remaining edges

The no-default branch is present in the engine code, but its quaternion-angle conversion reads an angle lane that the traced wrapper does not initialize. No recovered type-6-through-9 BDAE asset exercises it, so this is an unresolved runtime edge rather than a corpus-confirmed behavior.

The mapped quaternion-angle family uses sampler 0 for both key times and output values. Its indexed overloads use extra integers as key positions and combine relative rotations; they do not resolve multiple sampler arrays. Multi-channel/multi-sampler BDAE records exist elsewhere in the corpus, but their general association rule remains open and belongs to broader channel/binding analysis.

All 43 copied function ranges were compared byte-for-byte with the mapped APK ELF ranges. No builds or tests were run.
