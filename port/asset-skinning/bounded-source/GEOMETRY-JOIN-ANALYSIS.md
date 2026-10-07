# Skin controller to same-file geometry joins

## Finding

The controller-to-geometry relationship is now resolved for a large subset of the recovered skin records using the BRES key path, rather than global name/count similarity. The APK reads the controller's skin key through a fixup and passes the string after its leading `#` byte to geometry lookup. The census follows that same fixup-backed key and compares the normalized key with `SGeometry` IDs in the **same BDAE**.

Across 2,901 manifest-verified BDAEs, the census found 727 skin controller records. All 727 controller key fields are fixups and start with `#`. In 531 records, the normalized key identifies exactly one same-file geometry, and every one of those geometry records is type 0. There are no ambiguous same-file matches. The other 196 records have no same-file geometry match; matching IDs elsewhere in the corpus are not accepted as a join because many names repeat across unrelated BDAEs.

## Source extent versus the geometry-count candidate

For each of the 531 unique joins, the census compared the bounded skin source with the **candidate** byte request

```text
SMesh.vertex_count * 4 * (influence_count + 1)
```

Every bounded source covers this candidate request. The matching sources consist of 358 bulk-row spans and 173 `onDemand` ranges. However, the native consumer computes its request from the live `CVertexStreams` count, and the recovered source extent divided by consumer stride equals the joined `SMesh.vertex_count` in 0 of the 531 records. The current evidence therefore resolves the BRES name relationship and supplies a useful capacity check, but does not prove the exact stream count or runtime request size.

The BRES root word at `+0x64`, as translated by the traced constructor branch, selects a source form that agrees with the bounded record shape for all 727 controllers: zero with direct bulk bytes, nonzero with an `onDemand` descriptor. This is a static record/code correspondence. It does not prove that every recovered controller was loaded in a runtime session.

The 196 unmatched same-file keys remain open. 181 of them have one or more globally matching type-0 names in other files, but those names are not valid evidence of a same-file controller join; 180 have one distinct global vertex count and one has multiple counts. Count-compatible global matches are not used to claim pairing.

## Reproduction and limits

Run `tools/census_skin_geometry_join.py` with the recovered cache manifest, cache ZIP prefix, and `bounded-source/corpus-census.json`. The script verifies each BDAE's decompressed size, CRC-32, and SHA-256 before parsing. It records the detailed controller rows and source metadata in [`geometry-join-census.json`](geometry-join-census.json). The census covers the recovered cache prefix only; the ZIP is truncated later in a WAV entry.

This audit does not observe live `CVertexStreams` construction, capture the selected skin technique in a running game, or prove behavior for files outside the recovered prefix. No build or test was run.
