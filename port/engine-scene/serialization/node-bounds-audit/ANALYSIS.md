# Selected BRES scene-node corpus bounds

## Result

The recovered type-6 root-scene → named visual-scene → `SNode` traversal reaches
21,472 unique `0x50`-byte node records in the available cache. Every BDAE was
matched by path, uncompressed size, and SHA-256 to a verified entry in the
recovery manifest. The scanner found no out-of-file root tables, visual-scene
tables, node rows, child arrays, attachment arrays, or required fixup pointers
on this route.

The route census contains 1,563 type-6 scene references and 1,563 matching
visual-scene descriptors. Their selected root arrays contain 3,337 node rows.
Recursive child lists add 18,135 child rows across 7,243 arrays. The 21,472
unique nodes expose 11,648 attachment records in 11,648 arrays. The attachment
tag counts agree with the earlier selector census: tags 1, 2, 3, 4, 9, 12,
and 13 occur 74, 383, 10,444, 182, 415, 149, and 1 times respectively.

This closes a corpus-bounds gap for the selected active-scene route; it does
not establish a complete serialized `SNode` schema or prove that the original
engine performs these bounds checks. The `0x50` value is the child-array stride
and the minimum span consumed by the traced node code. It does not prove that
all node fields end at `+0x50`, that disconnected records are absent, or that
the full scene part has a known extent.

## Reproduction and checks

The read-only [scanner](tools/scan_scene_node_bounds.py) follows only the
instruction-backed lookup sequence. For each asset it verifies the extracted
bytes against the manifest, checks the BRES header and fixup-table span, resolves
the root visual/scene tables, applies the engine's first-match visual-scene name
lookup, and walks selected root and child nodes. For nonempty arrays it
requires a fixup at the pointer field and verifies `base + count * stride` is
within the BDAE. Node records are checked for a `0x50`-byte readable span. The
complete per-file counts and hashes are in [corpus-census.json](corpus-census.json).

Reproduce from the workspace root:

```powershell
python work/DH_sc/port/engine-scene/serialization/node-bounds-audit/tools/scan_scene_node_bounds.py `
  --assets work/cache-recovery/extracted/com.gameloft.android.GAND.GloftD2SS/files `
  --manifest work/cache-recovery/cache-manifest.json `
  --output work/DH_sc/port/engine-scene/serialization/node-bounds-audit/corpus-census.json
```

Observed totals:

| Check | Result |
| --- | ---: |
| BDAE files found / manifest verified | 2,901 / 2,901 |
| Traversal errors | 0 |
| Selected type-6 scene references / matched visual scenes | 1,563 / 1,563 |
| Unique node records / minimum node spans | 21,472 / all in file |
| Child arrays / child rows | 7,243 / 18,135 |
| Attachment arrays / attachment rows | 11,648 / 11,648 |

The selector totals were independently recorded by the existing
[attachment-factory audit](../attachment-factory-audit/ANALYSIS.md), which
provides the engine call-path and numeric dispatch evidence. This note adds
corpus validation of the selected record spans; it does not infer names for
the numeric selectors.

## Provenance and limits

The recovered cache prefix is 314,572,800 bytes with SHA-256
`f01c1657e1a977fce28c5aa8b0fed6e37daf8386c906209de99d5b3f29690072`. The
manifest is `work/cache-recovery/cache-manifest.json`, SHA-256
`876a585f2e145f0cf09da1651faf3feb0cf31b876d33eeeac5408f500dbc8d0f`. The ZIP
prefix is truncated inside `data/sounds/m_world_map.wav`, so this is the
available verified prefix rather than the complete original asset cache.

The field offsets, table strides, selector dispatch, and node child stride are
documented in the existing
[scene-construction analysis](../ANALYSIS.md) and its
[ARM evidence](../serialization-ranges.json). This scanner independently
checks recovered asset bounds; it does not run the APK, emulate runtime object
construction, parse attachment payload semantics, or validate pointer targets
against allocation-selector-specific BRES blocks. No build or tests were run.
