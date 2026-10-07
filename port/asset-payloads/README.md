# BRES mesh and animation payloads

Checked C++ readers for mesh geometry and animation records in BRES files. The module reconstructs 18 animation accessors and 8 typed search routines from ARM instructions. It also supports the embedded mesh view in nine type-1 records; the opaque prefix fields and GPU construction remain unresolved.

## Recorded validation

| Area | Result |
| --- | --- |
| Animation access and search | 271,970 ARM32-to-ARM64 comparisons, zero mismatches across 26 complete routines |
| Cache scan | 2,901 BRES files, 10,924 meshes, and 49,060 animation records checked |
| Type-1 geometry | Nine records decoded; four malformed inputs rejected |
| Build and robustness | Host and Android ARM64 builds recorded; 5,000 malformed-input probes recorded |

See the [validation reports](../../reports/) for inputs, methods, and limits. Reports describe earlier runs; this cleanup did not rerun them.

## Build and use

The module requires a C++17 compiler. Build and export instructions are in [`build.py`](build.py) and the exporter under `tools/`. The original game library and asset cache are separate inputs and are not included.

## Limits

This is a data-reader foundation, not a renderer or playable game. It does not reconstruct scene hierarchy, skeletons, skinning, GPU buffers, material/image decoding, or the original ownership ABI. See [original function coverage](original-functions.json) for the precise routine list and evidence.