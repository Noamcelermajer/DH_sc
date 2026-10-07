# Animation bindings

This directory records the bounded engine runtime path from animation/channel registration through block lookup and typed value dispatch.

- [ANALYSIS.md](ANALYSIS.md) summarizes the confirmed call path and its limits.
- [channel-runtime-functions.json](reference/channel-runtime-functions.json) records exact ELF VAs, mapped file offsets, range sizes, hashes, and source listing lines.
- [channel-runtime-functions.asm](reference/channel-runtime-functions.asm) contains the copied ARM function ranges checked against the APK ELF.

The animation accessors and keyframe helpers are static engine evidence. Opaque target records, all channel bindings, and every interpolation/default/offset-scale implementation are not fully reconstructed here.
