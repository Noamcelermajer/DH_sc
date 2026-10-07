# BMP loader trace

This folder records the native BMP loader and a census of the recovered cache. The census found no BMP files by suffix and no files beginning with the loader's `BM` signature, so there is no cache-observed BMP case to port as host source. The native loader's full ARM ranges are documented here and in the parent texture-loader trace.

- [Analysis](ANALYSIS.md)
- [Cache census](cache-census.json)
- [Range/hash manifest](original-functions.json)
- [Exact ARM listing](reference/bmp-loader.asm)

No decoder source was added. A future port should start only after an actual BMP input or a specific engine use case is available to anchor its behavior.
