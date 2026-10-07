# Quaternion-angle channels: BDAE corpus and sampler audit

## Scope and evidence

This audit joins the supplied APK's ARM32 animation routines to the recovered game-data tree at `work/cache-recovery/extracted/com.gameloft.android.GAND.GloftD2SS/files/data/3d`. It scans all 2,900 files ending in `.bdae` under that tree. The APK SHA-256 is `32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`; the ARM32 `libDungeonHunter2.so` SHA-256 is `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`.

The read-only [scanner](scan_axis_angle_payloads.py) validates each BRES header, image length, fixup field/target bounds, root animation/channel tables, and segment table bounds. For records using channel types 6–9 it also follows sampler entry indices and segment-relative vectors, and records raw default tuples and output-key summaries. All 2,900 files passed these checks. The resulting per-file hashes, animation records, segment records, and summary counts are in [corpus-census.json](corpus-census.json). This is a focused payload census; the broader [asset-payload cache report](../../../../../reports/asset-payloads-cache-validation.json) remains the evidence for its own full-cache integrity checks.

## What the recovered data actually uses

| Observation | Corpus result |
| --- | ---: |
| `.bdae` files scanned / with a type 6–9 channel | 2,900 / 43 |
| Channel records with type 6, 7, 8, 9 | 0, 0, 0, **77** |
| Type-9 channel records in animations with one channel and one sampler | **77 / 77** |
| Type-9 records with an optional default / offset-scale record | **77 / 77** / **0 / 77** |
| Track scalar discriminator selected by the APK | **float, 77 / 77** (absent offset-scale record) |
| Sampler output storage | float32, one component, **205 / 205** segment vectors |
| Sampler interpolation enum | `1`, **77 / 77** records |
| Total scalar output keys in those segment vectors | **2,876** |

The 77 channel names are all `*-rotation`; each animation name equals its target URI plus `-rotation`. Each type-9 `SAnimation` has one channel and one sampler, leaving only one sampler candidate in these records; channel word 0 is `-1` throughout. This does not establish a general channel-to-sampler rule for multi-channel animations. The four observed time layouts are one-component byte-frame values (73 records) or one-component short-frame values (4 records); all output vectors remain one-component float32. The 205 segment vectors include both segment storage forms: 189 state-0 and 16 state-1.

The default pointer in each record contains a raw four-float tuple. Its first three lanes form the axis copied by the ordinary key sampler: 76 of 77 axes have unit length within `1e-5`, and one is `[0, 0, 0]`. The fourth stored lane varies from approximately `-222.663` to `-0.000005`; the keyed ARM path below does not read that lane. Keep it as an observed serialized field rather than assigning it a unit or fallback meaning.

For example, `animateddecors/cin_king_gothicus_01.bdae` (SHA-256 `690b9670296a1f7a467afa104988babf7493069dbf6239e88880c603ab35e27d`) has channel `Bip01_L_Calf-node-rotation`, default tuple `[0, 0, 1, -61.72850036621094]`, one float scalar per key, and 186 keys in its segment. The first keys are `1.0773655`, `1.0785506`, and `1.0799365`; all output key scalars across the census fall between about `8.73e-8` and `3.886203`.

## APK sampling path

The hash-verified `CColladaDatabase::getAnimationTrackEx` range at `0x00611ae0` (1,608 bytes; SHA-256 `bb7590a23775d34fa5821fac78f1e6330a691b0c929b23cf1a3eedb733f37f72`) sends channel codes 6–9 to one quaternion-angle track family. It chooses `float` for an absent offset-scale record or discriminator 2, `char` for discriminator 0, and `short` for discriminator 1. The complete function evidence is in the parent [quaternion-angle provenance manifest](../reference/quaternion-angle-functions.json).

For the ordinary direct and two-key getter paths, the typed interpreter reads sampler output index 0. The float specialization loads the selected float key directly. The integer specializations construct a one-component `CInputReader`: the exact short and char constructors are respectively `0x00613da8` (60 bytes; SHA-256 `5b696be987aefe9589d09a7fad39363f6787872431e72e68265bd577102403ba`) and `0x00613de4` (60 bytes; SHA-256 `210ec5308721508f09e9d8da4fa95517e58dcdb142dae6e9ad4c32358d99dbe0`). They retain output-zero, scale, and offset pointers. The short body uses a signed halfword load; the char body uses a signed byte load. Each key becomes `float(signed_sample) * scales[0] + offsets[0]`; the two-key interpreter decodes both endpoints first, then evaluates `lower + fraction * (upper - lower)`. These formulas are instruction-level behavior, not a claim that the scanned rotation assets exercise the integer branches.

The generic axis-angle bodies test `SAnimationAccessor::hasDefaultValue()` and, in the present-default branch, copy exactly three 32-bit default lanes into the axis and write the sampled scalar into lane 4 of the temporary. Thus, for the observed one-channel/one-sampler records, the sampled float is used as the angle with the three stored defaults as its axis. The wrapper passes that angle and axis to `quaternion::fromAngleAxis` at `0x0060cdbc` (104 bytes; SHA-256 `3ae64c6b78e7a3d2cd026ecacdf872bd935963315dc6afc9a767cba667a9883a`), and the apply callback reaches `ISceneNode::setRotation` at `0x005970f4`.

| Typed ordinary-key body | VA | Bytes | Function-range SHA-256 |
| --- | ---: | ---: | --- |
| Float direct | `0x0061f51c` | 120 | `818eba0e8e6db29d0f6ad1221623d64aba7e5a1e3b14ba0696c06cb6f47d0ec6` |
| Float two-key | `0x0061f898` | 180 | `6aa7dedfa2327301558a6c41701b4adcac43fe973b33d8f73e40078e88275225` |
| Short direct | `0x00614a90` | 168 | `eb24cf7c7c497647b81ab93baec6ecf3c890b269a191544f6c12af6da11a2b90` |
| Short two-key | `0x00614b38` | 268 | `c2db42ba5be189ac42e5f51ad0c6dbd620da26e24c82c627b97bbd680ddb35f9` |
| Char direct | `0x00614c44` | 164 | `8f6b53b01c84e31a43617cd972f39d9562ffad32e351381f6424af138bff2da5` |
| Char two-key | `0x00614ce8` | 260 | `230115bbe7b6a936bddbfc581a690715f78a2a46d81ebbf8ea5d080cf9071138` |

The accessor evidence for `getOutput`, `hasDefaultValue`, `getDefaultValue`, `getOffsets`, and `getScales` is in [channel-runtime-functions.json](../../../bindings/reference/channel-runtime-functions.json). The short/char reader constructor hashes also appear in [scalar-components/functions.json](../../scalar-components/functions.json). All cited ranges are from the same APK-hashed ARM32 ELF.

## What this closes and what remains

- **Closed for the recovered asset corpus:** channel 9 is used in 77 records across 43 files; it is float32 scalar sampling with an axis default in every case. The ordinary keyed route replaces the fourth temporary lane with the sampled value before quaternion conversion. The earlier uncertainty about whether these corpus tracks lack a default is resolved: none do.
- **Static engine route, not exercised by this corpus:** factory and ARM bodies support char and short encodings with signed reads, scale, offset, and float interpolation, but all 77 observed type-9 assets have no offset-scale record and use float output data.
- **Still unknown:** channel codes 6–8 do not occur in these 2,900 `.bdae` files, so their authored meaning and whether another resource corpus uses them remain unknown. The generic no-default quaternion-angle path is not represented in these 77 records and still needs separate analysis. The semantics of the fourth default lane, channel-to-sampler bindings when either side has more than one record, and indexed/non-key quaternion operations are outside this census.

No build or test suite was run; the scanner performs read-only extraction and counting.
