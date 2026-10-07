# Serialized vertex remap audit

## Finding

The serialized vertex remap is a nested table. The selected `SInstanceMaterial` profile descriptor is at `+0x1c` or `+0x24`; each descriptor begins with a row count and a pointer at `+0` and `+4`. A technique row is 12 bytes: technique-name pointer at `+0`, nested-subrecord count at `+4`, and nested-subrecord pointer at `+8`. A nested subrecord is also 12 bytes: word `+0` is not read by this factory path, pair count is at `+4`, and pair-byte pointer is at `+8`.

This layout is grounded in `CColladaFactory::createMaterialVertexAttributeMap` at `0x00634520`. The routine selects the profile descriptor from the flags, walks 12-byte technique rows, then walks each row's 12-byte subrecords. The inner loop advances by `0x0c` and loads the subrecord's `+4` and `+8` words before calling `CVertexAttributeMap::set` at `0x005a0708`. The virtual factory call in `constructGeometry` is backed by the `CColladaFactory` vtable slot and its `R_ARM_RELATIVE` relocation; exact data and instruction bytes are in [`serialized-remap-excerpts.asm`](reference/serialized-remap-excerpts.asm).

`CVertexAttributeMap::set` confirms pair direction. It reads pair byte `+1` as the requested `E_VERTEX_ATTRIBUTE` and passes it to `CVertexStreams::getStream`; it reads pair byte `+0` as the destination slot in the attribute map. The pair count is a count of two-byte entries. For example, the raw BRES bytes `01 01 02 02 03 12` decode as `(destination, source)` pairs `(1,1)`, `(2,2)`, `(3,18)`.

## Reachability and census

The read-only scanner follows the BRES root visual-scene table (`root +0x98/+0x9c`), visual-scene node arrays (`scene +0x08/+0x0c`, 80-byte `SNode` records), typed references (`SNode +0x40/+0x44`, 8-byte records), type-3 geometry references, instance-geometry material arrays (`+0x0c/+0x10`, 60-byte material records), both profile descriptors, technique rows, and their subrecords. It verifies fixup-backed pointers, row bounds, pair-array bounds, and source-file checksums. Reproduction code and its output are [`scan_serialized_maps.py`](scan_serialized_maps.py) and [`corpus-census.json`](corpus-census.json).

Across the supplied cache ZIP, the scan read 2,901 valid BRES images. It found 1,563 with visual scenes, 1,334 geometry-instance records with material arrays, 346 nonempty profile-map descriptors, 8,304 technique rows / unique map subrecords, and 9,653 serialized pairs. Codes 9–16 occur zero times as either destination or source in those serialized pairs. The complete source hashes, examined ELF function ranges, excerpt-range hashes, vtable relocation, and one byte-backed asset example are in [`remap-ranges.json`](remap-ranges.json).

## Boundary for codes 9–16

The existing shader alias initializer analysis in [`../ANALYSIS.md`](../ANALYSIS.md) shows no initialized shader-name aliases for codes 9–16. This census adds that none of those values occurs in either role in the reachable serialized remap pairs in this cache. These facts do not establish that the engine enum values are unused everywhere: mesh streams can be generated or loaded through paths that do not use these pair arrays, and the census is limited to this cache's BRES scene graph.

The meaning of codes 9–16 therefore remains unresolved. The next useful producer-side trace is Collada mesh stream creation: the `addStream` helper at `0x006bccf0` and `CVertexStreams::setStream` at `0x007d46fc`, followed into `CVertexStreams::setupStreams` at `0x005a178c` and constructor `0x005a113c`. Compare those assigned codes with shader classification at `0x006dbb50` and GLES consumption in `setupArrays` at `0x005b6584`. The reader-side pair path is now established through `createMaterialVertexAttributeMap`, `CVertexAttributeMap::set`, and `CVertexStreams::getStream` (`0x005a0aac`).

No builds or tests were run; this is a static, byte-backed analysis and a read-only asset census.
