# BDAE channel-to-sampler association and compiled binding

This note closes one narrow runtime convention in the supplied Dungeon Hunter 2 APK. The ordinary `CAnimationSet` route binds from `SAnimation.channel[0]`, selects a typed track from that channel, and queries sampler index `0` for time and values. It does **not** establish a general ordering rule for multi-channel/multi-sampler BDAE records.

## Binary provenance

The input APK is `Dungeon-Hunter-2-HD-v1-0-2.apk`, SHA-256 `32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`. Its member `lib/armeabi-v7a/libDungeonHunter2.so` is 15,938,284 bytes, SHA-256 `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`. The workspace ELF copy was compared byte-for-byte with that APK member. Every function in the table lies in the first file-backed `PT_LOAD` (`p_offset=0`, `p_vaddr=0`), so the file offset equals the virtual address. Each SHA-256 below covers exactly the listed function bytes.

The ELF is a deflated ZIP member, so APK offsets do not map linearly to ELF offsets. Its local ZIP header begins at APK offset `0x467b04`; the compressed member payload occupies `[0x467b46, 0x985daf)` (5,366,377 bytes), and decompresses to the ELF above. Function starts and byte lengths in the table give exact ELF file ranges as `[start, start + length)`; these are also the functions' ELF virtual-address ranges because of the first `PT_LOAD` mapping.

| Function | ELF VA / file offset | Bytes | SHA-256 |
| --- | ---: | ---: | --- |
| `CColladaDatabase::getAnimation(int) const` | `0x0060e35c` | 24 | `a71a4c8872d47f4eedbd9150316320b46495b8e9055373c0a2745fd94ea6dd79` |
| `CColladaDatabase::getAnimation(char const*, SChannel::Type, unsigned char) const` | `0x0061c0c8` | 280 | `785b8aa8d751492e6f84f62a4f7bc753457ccf20b32a4e5feca36bb2dbdb2628` |
| `CColladaDatabase::getBlendableAnimation(SChannel const*) const` | `0x0061c1e0` | 28 | `696bb937eb6ef602bc48c1d38c9d0906c1e8b326839a9a5cd931aa0adf00757d` |
| `CColladaDatabase::getDefaultValue(SChannel const*, void**) const` | `0x0061c6bc` | 48 | `e064d887ef937a1400a06bb0dedc48cbad5d544fbd025c3ff82f7cf05c6de4ea` |
| `CColladaDatabase::getAnimationTrackEx(SAnimation const*)` | `0x00611ae0` | 1,608 | `bb7590a23775d34fa5821fac78f1e6330a691b0c929b23cf1a3eedb733f37f72` |
| `CAnimationSet::addAnimation(SAnimation const*)` | `0x006601fc` | 684 | `2496e012d85f5dc9272ddc74dc0dc6a0c1adf30feb7f944dba6c1a93e0f8fdd7` |
| `CAnimationSet::CompileInternal()` | `0x006605ac` | 356 | `92f5ee7668d0a3dd5d8d4e583653cece4e3dc120a70f1d01aedad391248796a5` |
| `CAnimationSet::compile()` | `0x00660710` | 996 | `ed7763d3a06f2ea24706dc589903fa3477ee8ab302a4c7aa824006d9e8711c2e` |
| `IAnimationSetTemplate::addChannels(...)` | `0x00667384` | 516 | `0a0a3192162fd4d4e6b798fad6a94a6cdc4115ad198285591ec7356389b3f81e` |
| `CAnimationSetTransformationTemplate::isAnimationExist(SChannel const*)` | `0x006e22cc` | 260 | `b2e933a8ad935f8eda87be0363425a0e44cce8a2262919d92a43e6ef4b143e4d` |
| `CAnimationTrackEx::applyValue(...) const` | `0x006e2ad8` | 180 | `6348b84e8059a0b171d89f74e364c061b3ca0fcaf7d2563bd4f77565ef5602cd` |
| `CAnimationTrackEx::getValue(...) const` | `0x006e2c40` | 168 | `ebfefcc043a11dee30efc79c9a05f97b496e3e38bb93ae5fa2147d9d09e9d292` |
| `SAnimationAccessor::getType(int) const` | `0x00669e10` | 20 | `6941526b310494cf375881ec358efd2ec8d5f9fab7f059510ebf8f565bb55c26` |
| `SAnimationAccessor::getOutput(int) const` | `0x00669e24` | 32 | `ebbae3803b8841315855c8aeb748d80121405fb42b1082a214e3feffb0dc5fe7` |
| `SAnimationAccessor::getChannel(int) const` | `0x00669e44` | 16 | `e8610324e8cd139a6c6fcc3c6579cbb3e07a0d246935b97eb37b2ca0ef59a495` |
| `SAnimationAccessor::getAnimator() const` | `0x0066a004` | 12 | `720aee2d02bc76f44bf680961bf055107aaf6c1936ba4cbd5b0168e17f1877db` |
| `CSceneNodeAnimator::getAnimationData(int)` | `0x0065d768` | 164 | `6b70f1e94e7e6d629990535c6350b467bc1ed9fe3192c218fa008d60275911bc` |
| `CSceneNodeAnimator::computeAnimationValues(unsigned int)` | `0x0065d80c` | 272 | `ae5d72ec8e9452483e315850a588f3fc6295cc1d90626255e0439fb95833734d` |
| `CSceneNodeAnimator::applyAnimationValues(unsigned int)` | `0x0065d91c` | 284 | `4e591b40f0c9a5424f680d3f8d41ec55b59641ba5461fcd6f486b37609f890ee` |

## Serialized records and corpus census

The observed little-endian BRES layout is `SAnimation` stride 32, sampler count/pointer at `+4/+8` with sampler stride 28, channel count/pointer at `+0x0c/+0x10` with channel stride 16, and the word at `SAnimation+0x14`. A sampler carries its own time and output data-entry indices. A channel carries a signed word at `+0`, target string offset at `+4`, type at `+8`, and a word at `+12`; there is no sampler-array index in the channel record.

The reproducible [scanner](scan_channel_sampler_association.py) reads the recovered raw BRES offsets, checks BRES header and array bounds, hashes each file, and records the full shape of every multi-channel record in the [census](corpus-census.json). It scanned all **2,900 `.bdae` files** under the recovered `files/data/3d` tree and found **49,060 `SAnimation` records**, with no parse or bounds errors. The whole corpus has **49,137 channel records**; every channel's first signed word is `-1`.

| Channel count / sampler count | Records |
| --- | ---: |
| 1 / 1 | 49,021 |
| 2 / 2 | 26 |
| 3 / 3 | 1 |
| 4 / 4 | 9 |
| 5 / 5 | 1 |
| 10 / 10 | 2 |

Thus channel and sampler counts are equal in every recovered record, but that is a corpus shape, not proof that row `i` semantically addresses sampler `i`. The census also reads `SAnimation+0x14`: it is zero in all 49,060 records. The 39 records with more than one channel all have channel codes 87–91, one repeated target string across their channels, `-1` in channel `+0`, sampler output type code 6 with one component, and unique time/output entry indices per record. Their 116 samplers all have one time component; 114 use time type 1 and two use time type 4. The exact channel-code sequences are: `[88,87]` (17 records), `[87,87]` (5), `[88,88]` (4), `[88,88,87,87]` (9), `[89,91,90,88,87]` (1), `[91,88,87]` (1), and `[89,89,91,91,90,90,88,88,87,87]` (2). The complete entries, hashes, and sampler descriptors are in the census.

For example, `animateddecors/crypt/crypt_flame.bdae` (SHA-256 `f75781657408d0ef2d5f3fb08a85f35ceb5b14f16f187fd5e41b634d658ec8c1`), animation `offsetV`, has two channels with types 88 and 87 and two samplers with output type code 6 and one component. Their time/output entry pairs are `(2,3)` and `(4,5)`. Both channel rows name `torch_fire`, but neither row points to either sampler. This confirms a multi-record shape while leaving the channel-to-sampler rule beyond index zero open.

## ARM association and compile lifecycle

1. `CColladaDatabase::getAnimation(index)` returns the 32-byte serialized animation row. `CAnimationSet::compile()` iterates those rows. For each row, it loads `SAnimation+0x10` and passes that address directly to the animation-set template's `isAnimationExist`; it does not advance to another channel in this phase. If accepted, it calls `CAnimationSet::addAnimation(SAnimation const*)` once for that animation row.
2. `CAnimationSet::addAnimation()` again starts from `SAnimation+0x10`, so its descriptor comparisons use channel 0. It compares the first channel's target/type against registered channel/track descriptors (with channel-hash checks on its special branches), calls `getAnimationTrackEx(SAnimation*)`, and appends one channel-table pointer and one selected track when a match succeeds. The factory reads the first channel's type through the channel pointer at `SAnimation+0x10`.
3. `CAnimationSet::compile()` then calls the template's `addChannels()` and makes per-library binding rows. Its `getBlendableAnimation(SChannel*)` path searches the library through `getAnimation(target, type, hash)`. That search walks `SAnimation` rows but inspects only each row's channel 0. Matching is branch-specific: some channel codes are accepted as groups, while other branches compare exact types and may compare the hash word. The resulting per-library binding row stores a state, a default-value pointer when applicable, and a channel index; it is not a serialized sampler index.
4. For an ordinary typed track, `CAnimationTrackEx::getValue()` and `applyValue()` pass sampler index `0` into `SAnimationAccessor::findKeyFrameNo()`. The traced typed getters and interpreters also read output sampler `0` (see the [typed-track evidence](../typed-tracks/ANALYSIS.md) and [scalar component audit](../typed-tracks/scalar-components/ANALYSIS.md)); time lookup in this route uses sampler `0` as well. The accessor API itself accepts other indices, but the traced track dispatcher supplies zero. Therefore, for this route, the evidenced pair is **channel 0 with sampler 0**.
5. At runtime, `CSceneNodeAnimator::getAnimationData()` resolves the animation block, and `computeAnimationValues()` / `applyAnimationValues()` create the accessor-backed value flow. The scene-node bind and target-pointer setup are separately documented in [the existing binding trace](../bindings/ANALYSIS.md). Those traces establish the handoff to a runtime track and target for selected routes; they do not show every BDAE animation or material route executing.

## Remaining boundary

- The 39 multi-channel records have matching channel/sampler counts, but only index zero is connected by the traced `CAnimationSet` path. The meaning or dispatch route for their indices above zero remains unresolved; do not decode them by array position solely from equal counts.
- Channel type codes 87–91 are recorded literally. Their full serialized semantics and multi-channel application lifecycle are not established here.
- Serialized `SAnimation+0x14` is zero in every recovered BDAE row; `SAnimationAccessor::getAnimator()` reads that word as a runtime object pointer. The producer that initializes it, its ownership, and its full lifecycle remain open.
- The scanner validates headers, record-array bounds, and strings used by these records. It does not re-run the independent cache-wide segment/fixup verifier or differential tests. No build or tests were run for this note.
