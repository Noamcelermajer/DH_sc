# GLES buffer lifecycle trace

This focused checkpoint records creation, CPU mapping, GLES upload/binding/deletion, vertex attribute layout, and indexed/unindexed mesh draw submission from the supplied ARM32 engine binary. Start with [`ANALYSIS.md`](ANALYSIS.md); exact ARM listings, addresses and SHA-256 range records are in [`reference/original-functions.asm`](reference/original-functions.asm) and [`original-functions.json`](original-functions.json).

The manifest was checked against `lib/armeabi-v7a/libDungeonHunter2.so` from the owner-supplied APK. It contains 20 exact function ranges and excludes the APK and extracted ELF. Runtime offsets and table choices are evidence, not a recovered serialized buffer schema or a replacement C++ implementation.
