# Archive registration, dispatch, and reader contracts

This note follows the archive paths beyond the selection helper. It uses the
APK's `lib/armeabi-v7a/libDungeonHunter2.so` as evidence, not as instructions.
The code and vtable ranges are listed in
[factory-ranges.json](factory-ranges.json) and
[reference/factory-paths.asm](reference/factory-paths.asm).

The full `CFileSystem` vtable is 0x74 bytes at `0x00974340`, with address
point at `0x00974348`. In addition to `createAndOpenFile` at virtual slot
`+0x0c`, it exposes `addZipFileArchive`, `addFolderFileArchive`, and
`addPakFileArchive` at slots `+0x18`, `+0x1c`, and `+0x20`. These virtual
entries establish the registration interface, not that the game calls it;
the bounded shader-package caller search is documented in the
[shader-package registration boundary](../../engine-materials/shader-archive-route/runtime-open-route/ANALYSIS.md).

## Selection and factory calls

`CFileSystem::createAndOpenFileFromArchives` scans the registered ZIP vector
at `this+0x08`, then PAK at `this+0x14`, then folder at `this+0x20`. For each
entry it calls virtual byte offset `+0x0c` and returns the first nonnull
result. The vtable bytes show that this slot maps to `CPakReader::openFile`,
`CUnZipReader::openFile`, and the other archive `openFile` overrides.

`addPakFileArchive` also calls the `CFileSystem` virtual at `+0x0c` to obtain
its input `IReadFile`. The `CFileSystem` vtable identifies that call as
`createAndOpenFile`, so the PAK source path can itself resolve through
registered archives before direct file fallback. A null stream fails
registration. Otherwise the method allocates a `CPakReader` of `0x28` bytes,
constructs it with the two boolean arguments, appends it to the PAK vector,
then drops the factory-returned stream reference. Allocation failure also
drops that stream. This method does not deduplicate PAK paths.

The `CPakReader` constructor writes reference count `1`, stores the input
stream at `+0x08`, and increments that stream's count when nonnull. Its
destructor drops the stored stream and destroys the entry vector. Thus the
vector holds the reader's initial reference, while the reader retains its own
stream reference after registration releases the caller-held one. These are
the visible call-site count changes; malformed-data and all allocator failure
contracts are not inferred.

`addFolderFileArchive` scans the folder vector newest-first and compares each
stored path at `+0x38` with `strcmp`. An exact duplicate returns false.
Otherwise it allocates a `0x3c`-byte `CUnZipReader` and appends it to the
folder vector. Registration does not open the directory. Its constructor
calls the `CZipReader` base constructor with a null stream, stores the
filesystem pointer, copies the directory prefix, and appends `/` unless the
prefix already ends in `/` or `\\`.

## PAK record path

`CPakReader::scanLocalHeader` reads 12 bytes at the start of the input stream.
It tests the first byte for `P`; only when that test fails does it test the
second byte for `A`. Either test alone enters the parse path, so this code does
not require the two-byte sequence `PA`. In this little-endian build, it seeks
to the 32-bit value at header byte offset 4 and derives the record count by
shifting the 32-bit value at byte offset 8 right by six.
Each record consumes 64 bytes: a 56-byte name field followed by two 4-byte
values. The last values become the in-memory entry's fields at `+0x48` and
`+0x4c`. The constructor sorts multiple records before lookup.

The rejected-prefix branch returns zero from `scanLocalHeader`, but the
constructor does not test that return value. After construction, registration
tests the reader pointer and appends it. Thus this path can report a registered
reader with an empty entry list when the prefix check fails; this says nothing
about safety for other malformed inputs.

`findFile` normalizes the query according to the constructor flags and uses
binary search over the sorted entries. The listing shows ASCII lowercasing
when the first flag is set. When the second flag is set, the query path helper
strips a preceding component using either `/` or `\\`. The per-entry name
routine has a separate branch that scans its fixed name field for `/`; it
does not show a backslash check there.

`openFile(int)` seeks the retained stream to the entry offset at `+0x48`, then
passes the stored name and length at `+0x4c` to `createLimitReadFile`.
`openFile(char const*)` returns null for a missing entry and otherwise
forwards to the indexed overload. No decompressor is called in this PAK
open path; whether a producer stores compressed bytes in these records is
not determined by this trace.

## Folder path

`CUnZipReader::buildDirectory` is a four-byte return stub. `findFile` calls
its own `openFile`, drops the temporary result on success, and returns `1`;
failure returns `-1`. The overridden `openFile` joins the stored directory
prefix and requested member name, allocates a `CUnzipReadFile`, and checks
its `isValid` virtual. An invalid result is dropped and returned as null.
The wrapper constructor calls `CReadFile` with the combined path and a false
flag, stores the requested member name, and the `CReadFile` constructor
initializes its refcount to `1` before opening. A valid wrapper is returned
to the caller at that initial reference.

This shows that the registered “folder archive” is a path-prefix adapter to
ordinary file reads, not a ZIP directory index. `CUnZipReader` is the engine
class name used by that adapter. No archive-wide directory enumeration or
compression step appears in the selected path.

## Recovered `.pak`-named asset

The supplied recovered cache contains one file whose suffix is `.pak`:
`shaders.pak`. Its SHA-256 is
`365a4d3c432454c44208ebb484c7a472a3a4534a0c5c9e77a7a90f3b87b1b5c0`, and its
size is 44,194 bytes. The first four bytes are `50 4b 03 04`; Python's ZIP
reader accepts it as a ZIP archive with 34 entries and no CRC failure. The
reproducible census is in [pak-corpus.json](pak-corpus.json); the script is
[`tools/census_pak_assets.py`](tools/census_pak_assets.py).

The filename therefore does not provide a real PAK sample for validating
`CPakReader`. If this ZIP header were passed to `scanLocalHeader`, its current
prefix check would accept the initial `P`, interpret bytes `+4..+7` as index
offset 10, and interpret bytes `+8..+11` as a shifted record count of
32,921,600. This is only a header-derived counterfactual: no direct callsite
to `addPakFileArchive` was found in the recovered library. Separately, the
[Android startup caller audit](../../engine-materials/shader-archive-route/ARCHIVE-REGISTRATION-CALLER-AUDIT.md)
traces a virtual `addZipFileArchive("shaders.pak", true, false)` call. This
establishes the requested registration method for the relative package name,
but not successful path resolution, ZIP reader creation, or shader-entry
reads on a device. `createAndOpenFileFromArchives` checks already-registered
ZIP entries before PAK entries.

## Limits and verification

The traced engine archive routes are ZIP, PAK, and folder. The PAK path here
is a fixed-width record index plus a bounded stream view. The supplied cache
contains no verified native PAK sample; its only `.pak`-named file is a valid
ZIP archive. No other filesystem archive factory or independent
compressed-package decoder was established from these registration and
dispatch paths. The full PAK format, all flag meanings, path canonicalization,
malformed-file policy, and any compression performed before the stream reaches
this reader remain open.

The manifest includes 19 ARM function ranges and three vtable data ranges.
It records the two file-backed `PT_LOAD` mappings: code ranges map through
segment 1; vtables map through segment 2 using
`p_offset + (elf_address - p_vaddr)`. The extracted ELF hash is
`36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`; the
APK hash is
`32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`.
Each range SHA-256 was computed from those mapped bytes, and the assembly
listing generator confirmed that the listed instruction/data bytes cover each
declared range exactly. No tests or builds were run.
