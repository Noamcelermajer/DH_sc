# Multi-channel codes 87–91 in the track factory

## Finding

The five channel codes that occur in the recovered multi-channel animation records are not assigned distinct factory bodies. In `CColladaDatabase::getAnimationTrackEx`, the function reads `SAnimation.channel[0].type` from the first 16-byte channel row, subtracts one, then indexes a jump table. The entries for channel codes 87, 88, 89, 90, and 91 all branch to the same address, `0x00611e38`, which returns the same factory-cache slot. This maps their factory dispatch shape, but does not name the resulting track class or establish how the serialized rows are paired.

The adjacent type 86 case is distinct: its branch at `0x00611c60` inspects sampler-zero output type and component count before selecting a track. That is the material-track factory route already described in the [component audit](../typed-tracks/component-audit/ANALYSIS.md). The 87–91 cases do not take that selector branch and do not read a sampler index from the channel row.

## Connection to corpus rows and runtime binding

The corpus census contains 39 records with more than one channel and sampler. All 116 channel rows in those records use codes 87–91, target strings repeat within each record, and the corresponding sampler output arrays are one-component values. As the [channel-to-sampler analysis](ANALYSIS.md) shows, the ordinary `CAnimationSet` compile/add route passes channel zero to the factory and the typed track path requests sampler zero. The channel record has no sampler-array index field; its first signed word is `-1` in every recovered channel row.

This proves a narrow route for the first channel and a common factory dispatch for codes 87–91. It does **not** show that channel row `i` maps to sampler row `i`, or that the remaining channel rows are consumed by another runtime system. Equal channel/sampler counts and unique data-entry indices remain corpus shape only. The sampler association and lifecycle above index zero stay unresolved.

## Binary provenance

The function is `CColladaDatabase::getAnimationTrackEx(SAnimation const*)` at ELF VA `0x00611ae0`, size 1,608, SHA-256 `bb7590a23775d34fa5821fac78f1e6330a691b0c929b23cf1a3eedb733f37f72`. The source APK and ELF identities, and the full per-function range validation, are recorded in the parent [channel-sampler note](ANALYSIS.md). Relevant jump-table entries and branch bodies are preserved in [`reference/animation-binding-functions.asm`](../reference/animation-binding-functions.asm). `CAnimationSet::addAnimation` at `0x006601fc` is 684 bytes, SHA-256 `2496e012d85f5dc9272ddc74dc0dc6a0c1adf30feb7f944dba6c1a93e0f8fdd7`.

This is static ARM control/data-flow evidence. No build, runtime capture, or test was run.
