# Type-1 geometry checkpoint

## Conclusion

The APK has no recovered type-1 payload parser or producer in its named `SGeometry` routes. A [payload inspection](payload-inspection/ANALYSIS.md) establishes a corpus-specific SMesh-shaped suffix in all nine recovered type-1 payloads and adds a narrow read-only helper that leaves their common 20-byte prefix opaque. The [prefix/alias audit](prefix-audit/ANALYSIS.md) further shows that in all nine files this suffix begins exactly at the adjacent type-0 geometry entry's payload, byte-identically for the compared 44-byte SMesh record. Each type-1 ID also has a selector-3 scene reference, but that ordinary instance route strips the leading `#` and reaches the engine dispatcher that rejects nonzero types. The APK does contain a generic `CSceneNodeAnimatorFollowSpline` API, but its recovered constructor/factory path has no demonstrated BDAE or `SGeometry` input. The five prefix words and any type-1 spline consumer remain unresolved. This is corpus-specific asset evidence, not a general type-1 schema, and the outer record still provides no payload length.

## Dispatch and route audit

The outer `SGeometry` record is 16 bytes: ID/name string offsets at `+0` / `+4`, type at `+8`, and payload offset at `+12`. The central `CColladaDatabase::constructGeometry(IVideoDriver*, SGeometry*)` routine at `0x0060e634` reads `+8`; it calls the factory only for type 0 and returns a null result for every nonzero value. Its exact 132-byte range SHA-256 is `d7c22aecae934a74d1038d0c772e343ec9ce9e628d8534e4cd136978f70292c2`.

I followed the other named geometry entry points in the original ELF symbol table. The index and name overloads forward into that dispatcher. The external-resource/name overload creates a temporary database and then calls the name overload. The `SInstanceGeometry` overload selects one of those same name routes before material attachment. The runtime morphing-mesh loop also passes each geometry pointer to the central dispatcher at callsite `0x0064b81c`. None supplies a separate type-1 branch.

`CColladaFactory::createGeometry` at `0x00631924` obtains buffer configurations and constructs `CMesh`; it has no type-specific payload case. The application adapter at `0x00350794` simply delegates to that factory. Thus an input reaching the standard factory through the recovered database paths must first pass the type-0 gate. The existing `CMesh::CMesh` evidence is in `port/asset-payloads/original-functions.json`; it describes the standard mesh path, not a type-1 schema.

| Route | ELF VA / size | SHA-256 | Finding |
| --- | --- | --- | --- |
| Central `SGeometry*` dispatch | `0x0060e634` / 132 | `d7c22aecae934a74d1038d0c772e343ec9ce9e628d8534e4cd136978f70292c2` | Accepts type 0; returns null for nonzero. |
| Index overload | `0x0060e6b8` / 56 | `6290b2f8efecec3d58695d254c6a7b8cf50eb9977ec35c9ec16d2cfbecc0989a` | Resolves entry, then calls central dispatch. |
| Name overload | `0x0061aaa8` / 56 | `3370aa9d2181cb6496531d5ff124da4cb0612df2b9927811689c57630acff931` | Resolves entry, then calls central dispatch. |
| Resource/name overload | `0x0061aae0` / 328 | `4d137a9a8d9f40a0a218d165ef8f4da9019e0f13f131808bf667d6627accaffb` | Opens a temporary database, then uses the name route. |
| `SInstanceGeometry` route | `0x0061aeb8` / 500 | `7f6b5abcb0cc7417df2566e713f3b0665738657101d6c7785aa84d1ab36741c4` | Resolves by name/resource; no payload decoder. |
| Factory `createGeometry` | `0x00631924` / 180 | `777953f96b7c6fcdf55f632a73c7674c74db17907d534ee507c5369f48188826` | Constructs `CMesh`; no type-1 case. |
| Morphing mesh loop | `0x0064b700` / 712 | `f40325c6bf01c984a1de96b3419a9380c60b10a5603736614b488d2eb69b21f5` | Calls central dispatch for each geometry pointer at `0x0064b81c`. |

The complete route listings, including resolver/config helpers and the thin application adapter, are in [reference/geometry-route-functions.asm](reference/geometry-route-functions.asm). Their ELF VAs, sizes, SHA-256 hashes, and the named-symbol search scope are recorded in [original-functions.json](original-functions.json).

## APK range verification

The APK entry is `lib/armeabi-v7a/libDungeonHunter2.so`; its SHA-256 is `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`. The ELF's file-backed executable `PT_LOAD` has `p_offset=0`, `p_vaddr=0`, and `p_filesz=0x955130`. All recorded ranges fall within it, so `file_offset = ELF_VA`. Each copied assembly range was byte-compared with the slice read directly from the APK entry. The APK SHA-256 is `32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`.

## Corpus evidence and limit

`reports/asset-payloads-cache-validation.json` lists the same nine geometry-index-0, type-1 files: `dragon.bdae`, seven `skill_dh2_monster_dragon_*` BDAE files, and `spell_dh2_splined_projectile.bdae`. The cache contains 10,924 type-0 and nine type-1 geometries. The [payload inspection](payload-inspection/ANALYSIS.md) records the observed suffix layout and per-file bounds; the five leading words remain uninterpreted.

This audit covers the APK's named `SGeometry` functions and the traced database/factory/morph routes. It cannot rule out an unlabelled raw-pointer consumer or an authoring pipeline absent from the APK. No tests or builds were run.
