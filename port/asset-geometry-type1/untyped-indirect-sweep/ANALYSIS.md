# Type-1 geometry: indirect consumer and reference sweep

## Result

No alternate type-1 decoder was identified in the APK-matched engine library. The three direct callers of the central `SGeometry*` dispatcher all reach the same dispatcher, whose type check admits only type 0. The dispatcher’s factory callback slot has only two symbolized vtable targets in the APK: the engine factory and the app adapter, and the app adapter delegates to the engine factory. The engine factory’s recovered route constructs the ordinary `CMesh` from `SGeometry+0x0c`; it contains no type-1 branch.

The recovered cache prefix has one additional `#Circle01-spline` string beyond the nine selector-3 scene references already associated with type-1 geometry rows. It is a fixup target in `dragon_template_anim.bdae`, but its owning serialized structure is unresolved. I do not count it as a scene attachment or as evidence of a separate geometry decoder.

## Type-1 rows and every matching cache string

The nine geometry rows, payload starts, full BDAE hashes, adjacent type-0 rows, and the byte-for-byte 20-byte-prefix/SMesh-suffix checks are recorded in the [prefix audit](../prefix-audit/ANALYSIS.md) and [evidence table](../prefix-audit/evidence.json). I rechecked all nine against the extracted source assets. Eight rows have ID `Circle01-spline`; the projectile row has ID `Line01-spline`. Each of those nine assets has one active selector-3 attachment whose name points to the corresponding ID after `#`:

| BDAE | Type-1 ID | Selector-3 attachment | Name string |
| --- | --- | ---: | ---: |
| `data/3d/characters/dragon/dragon.bdae` | `Circle01-spline` | `0x8a34` | `0x2b54` |
| `data/3d/interface/skill_dh2_monster_dragon_attack_02.bdae` | `Circle01-spline` | `0xa990` | `0x23d4` |
| `data/3d/interface/skill_dh2_monster_dragon_attack_03.bdae` | `Circle01-spline` | `0x99b4` | `0x23d4` |
| `data/3d/interface/skill_dh2_monster_dragon_intimidate.bdae` | `Circle01-spline` | `0x6658` | `0x17fc` |
| `data/3d/interface/skill_dh2_monster_dragon_intimidate_01.bdae` | `Circle01-spline` | `0x67c4` | `0x175c` |
| `data/3d/interface/skill_dh2_monster_dragon_intimidate_01b.bdae` | `Circle01-spline` | `0x6b80` | `0x1814` |
| `data/3d/interface/skill_dh2_monster_dragon_intimidate_02.bdae` | `Circle01-spline` | `0x6b00` | `0x17b8` |
| `data/3d/interface/skill_dh2_monster_dragon_intimidate_03.bdae` | `Circle01-spline` | `0x6d14` | `0x1814` |
| `data/3d/interface/spell_dh2_splined_projectile.bdae` | `Line01-spline` | `0x20d0` | `0x0b38` |

I scanned every file in the extracted cache prefix, not only BDAEs: 5,839 files total, including 2,901 BDAEs. The exact-string totals are:

| String | Occurrences | Files | Classification |
| --- | ---: | ---: | --- |
| `Circle01-spline` | 17 | 9 | Eight type-1 IDs, their eight `#` references, and one extra `#` reference in `dragon_template_anim.bdae` |
| `#Circle01-spline` | 9 | 9 | Eight selector-3 references above plus the unresolved template reference |
| `Line01-spline` | 2 | 1 | The projectile type-1 ID and its selector-3 reference |
| `#Line01-spline` | 1 | 1 | The projectile selector-3 reference |

The extra template literal is at file offset `0x3910` in the 48,764-byte `data/3d/characters/dragon/animations/dragon_template_anim.bdae` (SHA-256 `8dba7c2f207431f56bbb8b06e6707e44e8d5f90f16f9ae46bfb3acd1bafed7de`). Its fixup-marked pointer field at `0xa9bc` contains `0x3910`; the preceding fixup at `0xa9b4` points to `0xa9b8`, where this nested data begins. Those local pointer edges identify the string target but do not establish the owning record’s type or connect it to one of the nine geometry rows. The owning field’s semantics remain unknown.

## APK code and vtable census

Source identity: APK `Dungeon-Hunter-2-HD-v1-0-2.apk`, SHA-256 `32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`; ELF member `lib/armeabi-v7a/libDungeonHunter2.so`, 15,938,284 bytes, SHA-256 `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`. The local analysis ELF was byte-compared with this APK member. The two file-backed `PT_LOAD` mappings are `p_offset=0, p_vaddr=0, p_filesz=0x955130` and `p_offset=0x955130, p_vaddr=0x956130, p_filesz=0x4954c`. All code ranges below are in the first segment, so ELF VA equals file offset. Vtable offsets use `file_offset = VA - 0x1000` in the second segment.

The APK symbol table contains exactly eight nonzero-sized `STT_FUNC` names with `SGeometry` in their signature:

| Function | ELF VA | Bytes | SHA-256 |
| --- | ---: | ---: | --- |
| `CColladaDatabase::constructGeometry(IVideoDriver*, SGeometry*)` | `0x0060e634` | 132 (`0x84`) | `d7c22aecae934a74d1038d0c772e343ec9ce9e628d8534e4cd136978f70292c2` |
| `CColladaFactory::getVertexBufferConfig(..., SGeometry*)` | `0x0062ff08` | 24 (`0x18`) | `b1e3ef70ad907e3b00b0053830ac8eea90044906e9b6de1e3158bf386de1c765` |
| `CColladaFactory::getIndexBufferConfig(..., SGeometry*)` | `0x0062ff20` | 24 (`0x18`) | `b1e3ef70ad907e3b00b0053830ac8eea90044906e9b6de1e3158bf386de1c765` |
| `CColladaFactory::isSharingMeshBuffers(..., SGeometry*)` | `0x0062ff38` | 8 (`0x08`) | `007f34a6c3441b0240da53f253e513b959105da2d8803255e1856aa48f48db47` |
| `CColladaFactory::createGeometry(..., SGeometry*)` | `0x00631924` | 180 (`0xb4`) | `777953f96b7c6fcdf55f632a73c7674c74db17907d534ee507c5369f48188826` |
| App `ColladaFactory::createGeometry(..., SGeometry*)` | `0x00350794` | 36 (`0x24`) | `a222d04222de638c66ce105865e2a7ddadaa223352eee68db718dd69124e4329` |
| `CMesh::CMesh` C1 `(..., SGeometry const&, ...)` | `0x00645588` | 1,504 (`0x5e0`) | `f84f873b135b3507caae483dfa74e54d829dd0a31f9a517049e3c999d13cea0a` |
| `CMesh::CMesh` C2 `(..., SGeometry const&, ...)` | `0x00645b68` | 1,504 (`0x5e0`) | `eaa7b729b97038fcd95732cbd3815e03a7fbafba19ad09b979e4d69067ad1e41` |

The complete executable `.text` range is VA `0x0030ee00`, size `0x005af548`. A direct branch-target census of that full range gives the following callsites:

| Target | Direct callsites in `.text` | Interpretation |
| --- | --- | --- |
| `CColladaDatabase::constructGeometry(IVideoDriver*, SGeometry*)`, `0x0060e634` | `0x0060e6e4`, `0x0061aad4`, `0x0064b81c` | Integer-index overload, by-name overload, morph target instancer |
| `CColladaFactory::createGeometry(..., SGeometry*)`, `0x00631924` | `0x003507a8` | App adapter delegates to engine factory |
| `CMesh` C1, `0x00645588` | `0x006319b4` | Engine geometry factory constructs `CMesh` |
| `CMesh` C2, `0x00645b68` | None | No direct branch target in `.text` |

The dispatcher reads `SGeometry+8`, reaches a virtual factory call only when that word is zero, and returns null on its nonzero branch. That is the type-0 gate previously traced for the scene attachment and morph paths; see the [morph route audit](../consumer-boundary/POSTLOAD-MORPH-ROUTE.md). In the CMesh constructor, the geometry pointer is spilled at stack offset `+0x34`; the code at `0x0064567c`/`0x00645680` loads `SGeometry+0x0c` as the mesh payload pointer. This is the normal mesh route, reached from the engine factory at `0x006319b4` after the dispatcher’s type check.

For the callback slot, the base `CColladaFactory` vtable is VA `0x0097b7d8`, size 136 (`0x88`), file offset `0x0097a7d8`, SHA-256 `17dca7963108524d43d33b02da98044bef665b1cecef8d4cb9f2cd653e69e1f7`. The app `ColladaFactory` vtable is VA `0x0095cc90`, size 136 (`0x88`), file offset `0x0095bc90`, SHA-256 `b8ab7f4feb86c5751d7e76af1fb9182f7be6821ec818fe6bdb194b2a333c1b39`. In both tables, symbol offset `+0x3c` contains the geometry factory target; with the Itanium vptr at table `+8`, this is virtual slot `+0x34` used by the dispatcher.

I scanned all 1,628 nonzero-sized `_ZTV` object symbols in `.data.rel.ro`, reading the corresponding bytes from the APK ELF through the second-segment mapping. Only those two vtable ranges contain the exact `createGeometry` function targets (`0x00631924` and `0x00350794`), both at table offset `+0x3c`. The app target at `0x00350794` delegates directly to the base target. This bounds the symbolized vtable implementations present in this ELF; it does not prove that no raw, dynamically created, or un-symbolized callback object can exist.

## Search boundary and limits

- The route search is bounded to `libDungeonHunter2.so`. The APK also packages `libStormGLOFT.so` and `libnativeinterface.so`; this focused note does not audit those separate libraries.
- The cache sweep is bounded to the recovered 5,839-file prefix. The cache ZIP is truncated inside `data/sounds/m_world_map.wav`; the original central directory and later entries are missing. The current cache-manifest SHA-256 is `876a585f2e145f0cf09da1651faf3feb0cf31b876d33eeeac5408f500dbc8d0f`.
- Symbol-signature counts miss type-erased `void*` or raw-byte consumers by definition. The direct branch census finds direct calls, not every indirect call or runtime callback. A vtable census finds symbolized table contents, not objects synthesized at runtime.
- A search for generic loads from offsets `+8` and `+12` was not used as proof: those displacements occur throughout unrelated layouts. The type field and payload pointer claims above are tied to the named dispatcher and CMesh constructor instructions.
- The APK ELF contains no literal `Circle01-spline`, `#Circle01-spline`, `Line01-spline`, or `#Line01-spline` string. This does not exclude an ID-free or type-erased consumer.
- The extra template string at `0xa9bc` remains unclassified. Neither its serialized parent field nor a possible cross-file target has been tied to the nine type-1 rows.

This is static inspection of the APK ELF and recovered cache bytes. No build or tests were run.
