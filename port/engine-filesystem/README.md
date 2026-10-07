# Reconstructed filesystem path helpers

This CPU-only checkpoint ports two pure path-string behaviors from
`glitch::io::CFileSystem` into bounded byte-span APIs:

- `dh2_path_dir_prefix` returns the bytes before the later of the final `/` or
  `\\`; if neither occurs, it returns `.`. The separator is excluded.
- `dh2_path_file_basename` returns the bytes after the final `/` or `\\`. Its
  `keep_extension` argument follows the original boolean: nonzero preserves the
  whole component; zero removes the final period and suffix when that period is
  in the component. Thus a leading-dot filename becomes empty when extensions
  are removed, and dots in parent directories do not affect the basename.
- `dh2_filesystem_open_from_archives` tries each ZIP archive in vector order,
  then each PAK archive, then each folder archive. It returns the first
  non-null result from the supplied callback, which represents one archive's
  `createAndOpenFile` virtual method.
- `dh2_filesystem_remove_archive` scans ZIP, PAK, and folder registrations in
  order, newest first within each list. It removes one exact path match,
  releases the selected object through a callback, and shifts the remaining
  pointers in the caller-owned array.
- `dh2_filesystem_clear_archives` releases all entries in ZIP, PAK, folder
  order and resets list counts while retaining caller-owned pointer storage.

Both path APIs accept explicit byte lengths, preserve embedded NUL bytes, use
caller-owned output storage, return the required byte count, write nothing when
the output is too small, and do not append a trailing NUL. A null output pointer
queries the size. Input and output may overlap. Input must be valid for its
declared length; it may be null only for a zero-length span. Empty paths produce
`.` for the directory helper and an empty basename.

The path routines make no filesystem, platform, locale, or allocation calls.
The archive selector does not open files itself; it calls the provided archive
callback. A null archive-list view is empty; a nonempty list must point to a
valid array whose entries stay alive for the call. The interfaces do not
recreate `CFileSystem`, archive-list growth/refcounts, its original object or
allocator-backed string ABI, direct disk opening, path normalization,
absolute-path lookup, or native filesystem side effects. These C++ signatures
are independent port interfaces, not the original studio headers or ABI.

## Archive dispatch evidence

`createAndOpenFileFromArchives` walks the three pointer vectors in this order:
ZIP (`this+0x08`, end at `+0x0c`, capacity at `+0x10`), PAK (`+0x14`, `+0x18`,
`+0x1c`), and folder (`+0x20`, `+0x24`, `+0x28`). Each registration method
appends its object to the corresponding vector (`addFolderFileArchive` uses a
`CUnZipReader` constructor). The dispatcher invokes the archive virtual at
vtable byte offset `0x0c` for each stored item and returns immediately on the
first non-null result. The helper preserves that ordering and short-circuit
behavior. `dh2_filesystem_remove_archive` separately models the reverse search,
first-list precedence, single removal, and vector compaction shown by
`removeFileArchive`. `dh2_filesystem_clear_archives` models forward-order releases
and resetting each vector end while preserving capacity. See
[ANALYSIS.md](ANALYSIS.md).

## Direct and nested archive fallback

The surrounding `CFileSystem::createAndOpenFile` path has now been traced; see
[ANALYSIS.md](ANALYSIS.md) and the exact ranges in
`reference/nested-archive-functions.asm`. The separate `CFileSystem::open` disk
path, working-directory, obfuscation-map lookup, `fopen`, and `CFile` wrapping
flow is also recorded there with its exact assembly range. The engine first
tries registered archives, then a direct read, then slash-delimited prefixes as possible
registered or direct ZIP containers. When a valid ZIP stream is found, it opens
remaining members through `CZipReader`. That complex ownership and nested-reader
behavior remains analysis only; it is not included in the portable helper.

The selected reference-count path is documented separately in
[OWNERSHIP-ANALYSIS.md](OWNERSHIP-ANALYSIS.md): ZIP registration, nested
stack-reader construction/destruction, member-result handling, and visible
null/invalid failure cleanup. The new
[factories/ANALYSIS.md](factories/ANALYSIS.md) traces CFileSystem dispatch,
PAK registration and bounded reads, and the folder-prefix reader lifecycle.
Its [PAK corpus census](factories/pak-corpus.json) records that the only
recovered `.pak`-named file is a ZIP archive, so no real PAK sample is
available to validate that reader.
Those analyses do not port archive readers or reproduce the complete object
ABI, compressed-entry behavior, or malformed-archive handling.

`original-functions.json` records direct byte verification against the supplied
APK's `lib/armeabi-v7a/libDungeonHunter2.so`. The APK SHA-256 is
`32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`; the
extracted ELF SHA-256 is
`36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`. Each
recorded range maps through ELF32 little-endian `PT_LOAD` segment 1 (`p_offset`
and `p_vaddr` are zero), and its bytes match the recorded SHA-256. The basename
behavior is supported by the primary `getFileBasename` routine plus the copied
string `rfind` and substring-constructor dependencies. Archive-list order is
supported by `createAndOpenFileFromArchives` and the three archive-registration
methods that populate those lists.

No tests or builds were run for this checkpoint.
