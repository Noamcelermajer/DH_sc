# Type-1 geometry prefix and alias audit

## Finding

Direct inspection of all nine recovered type-1 BDAEs shows that the 20-byte prefix is immediately followed by the exact payload start of geometry-table entry 1, which is type 0. In every file, `type1_payload + 0x14 == geometry[1].payload`; the 44-byte SMesh record at that address is identical when reached through either geometry entry. The type-1 entry therefore points at a 20-byte prelude followed by a mesh payload already separately named by the adjacent type-0 geometry record.

This resolves the relationship between the prefix and the previously observed SMesh-shaped suffix. It does **not** resolve the five prefix words. Their little-endian values are `[0, 15, 3, 0, 0]` in every asset, and none of their five file offsets is marked by the BRES fixup table. The common values and adjacency do not prove field names or semantics.

## Asset evidence

All offsets below are file offsets within the named BDAE. Geometry entries 0 and 1 are adjacent 16-byte records. `p` is entry 0's type-1 payload offset; `p+0x14` is entry 1's type-0 SMesh payload offset. Each row also gives the active selector-3 attachment record that points to an `SInstanceGeometry` name string. Full file SHA-256 values, per-byte checks, fixup status, scene names, and source hashes are in [evidence.json](evidence.json).

| BDAE | File SHA-256 | Type-1 record / payload | Geometry 1 ID; record / payload | Selector-3 attachment; referenced string |
| --- | --- | --- | --- | --- |
| `data/3d/characters/dragon/dragon.bdae` | `97e980e2b5516fcff63f713427a729c736d9d955a25309cd5b56bfb78cf55fce` | `0x623c / 0x627c` | `_colbox_dragon-mesh`; `0x624c / 0x6290` | `0x8a34`; `#Circle01-spline` at `0x2b54` |
| `data/3d/interface/skill_dh2_monster_dragon_attack_02.bdae` | `7b721e0454499b23c08c851942c3ce4f57fc6ccd8c4503a84fe65566ce43c7fa` | `0xa3dc / 0xa42c` | `_mesh_cone2_nobatch01-mesh`; `0xa3ec / 0xa440` | `0xa990`; `#Circle01-spline` at `0x23d4` |
| `data/3d/interface/skill_dh2_monster_dragon_attack_03.bdae` | `1a74b8cd645b5a62df0d0d849952f722b47b53f7ea97abb567d0249beb779d90` | `0x9400 / 0x9450` | `_mesh_cone2_nobatch01-mesh`; `0x9410 / 0x9464` | `0x99b4`; `#Circle01-spline` at `0x23d4` |
| `data/3d/interface/skill_dh2_monster_dragon_intimidate.bdae` | `bbf1daae7bebb4fe55c52de8b0234265f349164dbba021ac0e5aa8196d2f6381` | `0x60a4 / 0x60f4` | `_mesh_tornado_b_nobatch02-mesh`; `0x60b4 / 0x6108` | `0x6658`; `#Circle01-spline` at `0x17fc` |
| `data/3d/interface/skill_dh2_monster_dragon_intimidate_01.bdae` | `f12fd64bd4da6507c1b210532e796e3894e905b87d4b6d573d04c399227fff26` | `0x6210 / 0x6260` | `_mesh_tornado_b_nobatch02-mesh`; `0x6220 / 0x6274` | `0x67c4`; `#Circle01-spline` at `0x175c` |
| `data/3d/interface/skill_dh2_monster_dragon_intimidate_01b.bdae` | `bdcee26bc73850a0fa938a2d11b5570df20dc010f3cb96430a1584d808b69348` | `0x65cc / 0x661c` | `_mesh_tornado_b_nobatch02-mesh`; `0x65dc / 0x6630` | `0x6b80`; `#Circle01-spline` at `0x1814` |
| `data/3d/interface/skill_dh2_monster_dragon_intimidate_02.bdae` | `f6f4879cbd4064eca6cecabb072635e6eb381b1e99e8d046d7edb1684ff34f12` | `0x654c / 0x659c` | `_mesh_tornado_b_nobatch02-mesh`; `0x655c / 0x65b0` | `0x6b00`; `#Circle01-spline` at `0x17b8` |
| `data/3d/interface/skill_dh2_monster_dragon_intimidate_03.bdae` | `9b1ab2eab19ec3dd0f534a7a7b61df1de4b96e802c8375c885eb078aa261c15e` | `0x6760 / 0x67b0` | `_mesh_tornado_b_nobatch02-mesh`; `0x6770 / 0x67c4` | `0x6d14`; `#Circle01-spline` at `0x1814` |
| `data/3d/interface/spell_dh2_splined_projectile.bdae` | `a66c76d81c4df6b17211e72318585ef4d12f24483a1f7a4a31a3dcbcaff07670` | `0x1e8c / 0x1eac` | `_mesh_projectile-mesh`; `0x1e9c / 0x1ec0` | `0x20d0`; `#Line01-spline` at `0xb38` |

The suffix's first 44 bytes match the adjacent type-0 geometry payload by offset and byte comparison. Its SMesh pointer words at relative offsets `+8` and `+16` are BRES-fixup fields; the five prefix words are not. The prefix is exactly 20 bytes up to the type-0 payload start, but that does not establish the type-1 payload's full logical extent.

## Scene reference and engine route

Each BDAE's selected visual scene contains exactly one selector-3 attachment whose `SInstanceGeometry` name is `#Circle01-spline` or `#Line01-spline`, matching geometry 0's ID after the leading `#`. In all nine matching instance records, the resource word at `+0` is zero and the name field at `+4` is fixup-marked.

The APK route gives an important unresolved result:

1. `CColladaDatabase::constructNode` dispatches selector 3 to `constructGeometry(driver, SInstanceGeometry*, root)` at callsite `0x0061b6a0`.
2. For these resource-less instance records, the instance overload advances the name pointer by one byte and calls the by-name overload. This matches the serialized leading `#`.
3. The name overload searches `SGeometry` IDs, forwards the match to the central dispatcher, and that dispatcher returns null for every geometry type other than 0.

The exact APK-matched ARM ranges and SHA-256 values for these instructions are listed in `evidence.json`. Therefore the conventional scene-attachment path does not construct these type-1 records as normal meshes. The corpus proves that the attachments exist; it does not establish which separate spline-aware code consumes them, whether they are intentionally skipped by this path, or what their prefix means. The existing symbol/call-chain audit did not find a type-1 decoder.

## Provenance and limits


## Spline-named engine API checked

The APK also contains `glitch::scene::CSceneNodeAnimatorFollowSpline`. Its recovered constructor accepts a `std::vector<core::vector3d<float>>` and two floats, and the default scene-node animator factory has a call to that constructor. The animator's `animateNode` reads its own sequence of 12-byte vector3 points. These exact ranges and hashes are listed separately in [evidence.json](evidence.json). This confirms a generic spline-follow facility exists in the engine, but the recovered constructor/call path does not show a BDAE or `SGeometry` input and does not connect the five-word prefix to that facility. Treating it as the type-1 consumer would be unsupported.

## Follow-spline vtable and constructor call re-check

I checked the candidate against the direct APK ELF, including the class vtable and all symbolized code functions for direct constructor branches. The primary vtable symbol is at VA `0x00989890`, in `.data.rel.ro` at file offset `0x00988890`; its 144-byte range SHA-256 is `0a0f00431f79de13f4170037a507edd9f318c1b9496d1f39dd7e560a2615c750`. Its entries include `serializeAttributes` (`0x006ccef8`), `deserializeAttributes` (`0x006cd0cc`), `animateNode` (`0x006cc830`), and `createClone` (`0x006ccd98`). The virtual methods operate on the animator, scene node, or generic `IAttributes`; none takes an `SGeometry*` or BDAE payload.

The constructor at `0x006cccc0` (216 bytes; SHA-256 `9a5a22c52b0b0ca1944ba2a460b632f8fc2fe84f66b207147318f02a395acde7`) takes an animator ID, a vector of vector3 points, and two floats, then copies the vector into animator-owned state. A direct `BL`/`BLX` scan of 31,018 symbolized `.text` functions finds two calls to it: factory callsite `0x006b9b34`, from `CDefaultSceneNodeAnimatorFactory::createSceneNodeAnimator` (`0x006b9928`, size `0x3c4`, SHA-256 `008cae88a53714eea3670254aab5f013c7274cd92eb50b8fe7188fcc912d3e8e`), and clone callsite `0x006ccdc8`, from `createClone` (`0x006ccd98`, size `0x40`, SHA-256 `e55170bcab714d4b111db8354e2b37819f02387badee5f4f2bb1b8ba54d90827`). The factory passes a local vector it builds in its own frame; the clone passes the existing animator's vector. Neither call passes a database, geometry record, or payload pointer.

The accompanying code ranges are all inside the executable first `PT_LOAD`, so their file offsets equal their VAs. The animator's `animateNode` range is `0x006cc830` / `0x490` bytes, SHA-256 `95e8617e26729c0bd710ce520646fed004c8cb9a2a4680e4caa5e5ede73d2925`; `serializeAttributes` is `0x006ccef8` / `0x1d4`, SHA-256 `1e3dfd30684fa4aa362c08c6c573467b574ffbc70c58f36a879090bcf9ef8db5`; `deserializeAttributes` is `0x006cd0cc` / `0x4c0`, SHA-256 `1d99c699f96359e7844d5834b91d7d68f602d337dcaab7385ca2a54bc127300f`. The code and vtable bytes were hashed from the APK library entry named above. The APK ELF also contains no literal `Circle01-spline` or `Line01-spline` string. This closes the named generic animator candidate more tightly, but cannot exclude an unlabelled or indirect consumer elsewhere; the five prefix words and any separate type-1 runtime consumer remain unresolved.
