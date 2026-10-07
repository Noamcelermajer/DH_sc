# Type-1 payload suffix inspection

## Result

The nine recovered type-1 payloads are not opaque throughout. Each has the same 20-byte lead, followed at payload offset `+0x14` by a 44-byte block whose fields match the already documented type-0 `SMesh` layout. Its stream and primitive pointers resolve to structures that match the existing interleaved-stream and primitive-buffer layouts. The prefix stays raw; this note does not assign meanings to its five words.

This establishes a corpus-specific mesh suffix view. It does **not** establish an engine runtime route that consumes type 1. In the APK, the recovered `CColladaDatabase::constructGeometry(IVideoDriver*, SGeometry*)` checks the outer type and invokes the factory only for type 0. The loader, instance, particle, morph, skinned-mesh, and batch-mesh route audit found no bypass. The suffix helper is a new offline data view built on the existing mesh/attribute/index readers; it is not recovered original source and does not claim game runtime equivalence.

## Corpus evidence

The source is the recovered BRES cache identified by the full-cache report and cache-manifest hash in [corpus-census.json](corpus-census.json). That file records the per-BDAE SHA-256, outer geometry record and payload offsets, exact 20-byte prefix, nested SMesh fields, attribute arrays, bounds, material, index ranges, and relevant BRES fixup targets.

For all nine records:

- The type-1 geometry is at index 0; the identifier is `Circle01-spline` in eight files and `Line01-spline` in the projectile file. The name string is empty.
- The 20-byte payload lead is `000000000f000000030000000000000000000000` in every file. It is retained unchanged and remains uninterpreted.
- The block at payload `+0x14` has stream mode 1, one primitive buffer, six float bounds, and the same field layout as the type-0 44-byte `SMesh` record.
- The mesh has stride 32 and three attributes: float3 at byte offset 0, float3 at 12, and float2 at 24. The vertex data and its BRES relocation target fit inside each BDAE. Root word `0x64`, which selects deferred mesh buffers in the documented type-0 path, is zero in all nine files.
- The single primitive buffer uses Collada primitive type 0 and the observed attribute references `[0, 1, -1, -1, 2, -1, ...]`. Its 16-bit index buffer is a triangle list; indices fit the declared vertex range and the file.
- Vertex counts are 24 (two records), 52 (two), and 78 (five). Triangle counts are 12, 48, and 96 respectively. The four observed material strings are recorded per file in the census.

The nested pointer fields at payload-relative offsets `0x1c`, `0x24`, `0x48`, `0x50`, `0x58`, `0x60`, `0x64`, `0xa0`, and `0xc8` each appear in the file's BRES fixup table for all nine records. Their values lead to the SMesh descriptor, primitive table, attribute arrays, vertex bytes, material string, and index bytes shown in the census. This pointer graph and the valid extents make the SMesh-shaped suffix observation stronger than a coincidental interpretation of the first few words.

## Bounded helper

[`observed-mesh-suffix.hpp`](observed-mesh-suffix.hpp) and [`observed-mesh-suffix.cpp`](observed-mesh-suffix.cpp) expose a read-only helper for this observed pattern. It checks geometry index 0, type 1, the two observed identifiers, the exact opaque-prefix byte signature, the known suffix shape, and then reuses `dh2_mesh_attribute`, `dh2_mesh_primitive`, and `dh2_index_read` to validate the borrowed data spans. The returned view retains a pointer and length for the opaque prefix. It does not mutate the BRES file or transform values.

The helper is deliberately narrow. It is not an inferred general type-1 schema, does not decode or name the five prefix words, does not choose materials or render anything, and cannot show that the APK calls it. It has not been built or tested in this checkpoint.

## Runtime-route evidence

No new ELF ranges were needed. The exact APK-matched ARM ranges and hashes remain in the existing [named route audit](../ANALYSIS.md) and [alternate-path audit](../alternate-paths/APK-callers.md), with listings in `../reference/geometry-route-functions.asm` and `../alternate-paths/reference/alternate-paths-functions.asm`. Those audits trace `CColladaBinaryFileLoader::createMesh` through `CColladaDatabase::constructScene` and node attachment selector 3 to the type-gated geometry route. The application factory adapter delegates to the same engine factory. The separate batch ZIP path has no `SGeometry` construction call.

The evidence is scoped to the APK's recovered native library and named/call-site routes. It cannot exclude an unlabelled raw-pointer consumer or tooling absent from the APK. No builds or tests were run.

