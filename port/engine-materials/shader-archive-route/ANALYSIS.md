# BRES pass shader names inside the recovered cache archive

## Finding

The two shader source files named by the selected pass in
[`pass-record-route`](../pass-record-route/ANALYSIS.md) are present in the
recovered asset cache. They are nested inside
`com.gameloft.android.GAND.GloftD2SS/files/shaders.pak`, which is itself a
valid ZIP archive stored as a member of the outer cache ZIP. The exact-case
entries are:

| BRES pass field | Value | Nested entry size | SHA-256 |
| --- | --- | ---: | --- |
| `+0x04` | `ProfileCOMMON_emul_VS.glsl` | 8,087 bytes | `9607ac878bdf2cd09344c0b704388fe2c8d94bb813634181d3354e4516a4e7d4` |
| `+0x10` | `ProfileCOMMON_emul_FS.glsl` | 1,872 bytes | `9557110c9ce8373cf8b26d380e579961a15109c96d18cbde1e42d30b244b8aee` |

The same outer cache ZIP contains the exact selected BDAE at
`com.gameloft.android.GAND.GloftD2SS/files/data/3d/animateddecors/castle/chandelier_castle.bdae`:
31,252 bytes, SHA-256
`84098bbb6d5daac56fcd84c4a0e1248924a068da29bc436ac1f859d73997c9e8`.
This matches the BDAE hash in the pass-route manifest. Thus the BDAE and
matching shader package are co-located in the same recovered cache snapshot.

The package has 34 entries, no duplicate names, and passes Python ZIP CRC
validation. Its 32 `.glsl` files and two configuration files are enumerated in
[`archive-census.json`](archive-census.json). Both matched shader files use
ZIP stored mode (compression method 0). The APK itself has 225 ZIP entries and
no shader-named, `.pak`, or GLSL source entry; the scan also found no nested
archive candidate there by common archive filename suffix or ZIP/7z/RAR/gzip
signature. The outer cache ZIP has 7,088 entries and no direct GLSL source
entries. The same signature/suffix scan found one nested archive candidate,
`shaders.pak`; its member has SHA-256
`365a4d3c432454c44208ebb484c7a472a3a4534a0c5c9e77a7a90f3b87b1b5c0` and
contains those sources.

## Prefix correspondence

The selected pass stores `#define TEXTURED\n` for the vertex stage and
`#define TEXTURED\n#define ADDITIVEBLEND\n ` for the fragment stage. The
verified `createShaderCode` range (`0x006dfe68`, 844 bytes; SHA-256
`2fc259ff52a2b2287740bc95ff033c95f37c0b396b7a9998df6657576cdc813d`)
places each prefix in the GLSL source-pointer list before the corresponding
loaded file contents. The matched vertex source has `#ifdef TEXTURED`; the
fragment source has `#ifdef TEXTURED` and `#ifdef ADDITIVEBLEND`. The census
records the exact conditional line numbers and prefix hashes, alongside the
three native ranges used by the pass trace.

## Corrected claim and limits

The earlier statement that the linked files were absent from the recovered
cache was based on the outer ZIP member names and missed the nested
`shaders.pak`. The precise statement is: neither shader file is a direct APK
or outer-cache ZIP entry, but both are present as exact-name entries in the
nested ZIP. Their exact source bytes are copied under [`recovered/`](recovered/)
with the hashes above, and the pass prefixes are recovered for this sample.

The [archive-registration caller audit](ARCHIVE-REGISTRATION-CALLER-AUDIT.md)
traces Android startup to a virtual `addZipFileArchive("shaders.pak", true,
false)` request. Archive presence and the callsite do not establish that the
relative path resolves to this recovered cache file or that reader creation
and shader-entry opens succeed on a device. Device-side compilation, linking,
`beginTechnique` success, asset reachability in a live scene, and rendered
output remain unverified. This is a source-availability finding for one
material/pass, not a complete shader or rendering reconstruction.

## Reproduction and provenance

[`tools/census_nested_shader_archive.py`](tools/census_nested_shader_archive.py)
reads the supplied APK, recovered cache ZIP, and pass-route JSON and writes the
machine-readable census. It does not extract or modify source archives. The
input identities are recorded in the census:

- APK SHA-256: `32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`.
- ELF member `lib/armeabi-v7a/libDungeonHunter2.so`: 15,938,284 bytes,
  SHA-256 `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`.
- Recovered cache ZIP: 433,189,197 bytes, SHA-256
  `3fdf4e4c21d45a780a7c35fb4042abde0e88e76bf75416aad1f227481560b679`.

No build or runtime test was run.
