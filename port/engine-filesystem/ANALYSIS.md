# Filesystem fallback and nested ZIP path trace

This note extends the portable path and archive-dispatch helpers with the
engine's surrounding `CFileSystem::createAndOpenFile` behavior. It is an
assembly-backed control-flow reconstruction, not a source port of the method.

## Observed order

1. `CFileSystem::createAndOpenFile(path)` calls
   `createAndOpenFileFromArchives(path)` first. That dispatcher searches
   registered ZIP, PAK, and folder archives in the order recorded in
   [README.md](README.md).
2. If no registered archive returns a file, it calls `createReadFile(path)`
   for direct access. A successful direct read is returned.
3. When direct access also fails, the routine walks slash-delimited path
   prefixes. At each candidate prefix it tries registered archives, then
   `createReadFile(candidate)`.
4. A candidate read stream is checked with
   `CZipReader::isValid(IReadFile*)`. The valid stream is used as a ZIP reader;
   the remaining path is looked up through `CZipReader::openFile(char const*)`.
   That named overload resolves the member index and forwards to the indexed
   open method. The routine can repeat this process for further path segments,
   which is consistent with nested ZIP containers in a path.

The slash-prefix scan is visibly based on the byte `/`. This note does not
claim that the nested-container fallback treats `\\` as a separator or
normalizes `.` / `..` segments. The separate basename helper does recognize
both slash styles; its behavior must not be generalized to this fallback.



## Archive removal

`CFileSystem::removeFileArchive(path)` searches the ZIP list from the last
entry toward the first, then does the same for PAK and folder lists. ZIP and
PAK registrations obtain their path through a nested interface object's
vtable slot `+0x28`; the folder path is read from the registration at `+0x38`.
On the first exact match, the engine drops that registration, shifts later
pointers left, decrements that vector's end pointer, and returns success. It
removes only one entry, so duplicate registrations in a list select the newest
matching one, and ZIP takes precedence over PAK and folder.

`archive-management.hpp/.cpp` ports this list-level behavior with caller-owned
mutable pointer arrays and callbacks for the type-specific path access and
reference release. The engine's actual archive object layouts, destructor
contracts, and allocator/vector ABI remain outside the port.

`CFileSystem::clear()` releases every ZIP registration in forward order, then
PAK registrations, then folder registrations. After each list is drained it
sets the vector end back to its begin pointer, retaining the allocated storage
and capacity. `dh2_filesystem_clear_archives` models those release and count
semantics. The exact clear range is also copied in
`reference/archive-removal.asm`; its hash is recorded in
`original-functions.json`.

The exact 512-byte remove range and 204-byte clear range are mapped against the
APK ELF in `original-functions.json`.
## Direct `open` path handling

The separate `CFileSystem::open(path, mode)` routine builds its disk path using
the static working-directory and obfuscation-map state. The assembly contains
an explicit `./` and `.\` prefix case, separator normalization from `\` to
`/`, and a lookup through the obfuscation map's tree before passing the chosen
path and mode to `fopen`. A successful `FILE*` is wrapped in a `CFile` object
and its reference count is incremented; failure stores a null result. This
method is the engine's direct C `FILE*` path, distinct from `createReadFile`,
which constructs an `IReadFile` implementation.

The exact 760-byte disassembly range is in
`reference/filesystem-open-functions.asm`. Its recorded range includes the
trailing 16-byte literal pool and is hashed as a whole against the APK ELF. The
map's installer, complete key/value semantics, all absolute-path edge cases,
and the underlying `CFile` lifetime contract remain unresolved. The analysis
does not port this method.

## Related ownership trace

The selected ZIP registration, nested stack-reader lifecycle, refcount changes,
and null/invalid/member-result cleanup paths are followed in
[OWNERSHIP-ANALYSIS.md](OWNERSHIP-ANALYSIS.md). Those observations refine the
path above but remain static evidence; no reader/stream lifetime port is added.

## Evidence and limits

`reference/nested-archive-functions.asm` contains the exact instruction ranges
for `createAndOpenFile`, `createReadFile`, `CZipReader::isValid`, and the named
`CZipReader::openFile` overload. `original-functions.json` records their ELF
addresses, sizes, and SHA-256 hashes; all were checked against the supplied
APK's `lib/armeabi-v7a/libDungeonHunter2.so` through its `PT_LOAD` mapping.
The main routine's relevant calls occur in the original ELF range
`0x0056d4e0..0x0056d8a3`.

The separate [factories/ANALYSIS.md](factories/ANALYSIS.md) traces archive
vector dispatch, PAK registration and bounded reads, and the folder-prefix
reader path.

This analysis does not recreate the original `IReadFile`/`IReferenceCounted`
ownership, ZIP reader object layout, compression or CRC behavior, error logs,
archive search implementation, direct operating-system I/O, or path-string ABI.
It also does not establish every failure-path return or reference-count detail.
A reusable nested-archive port needs a separate ownership-aware reader model and
validation against the original ELF or runtime.

No tests or builds were run for this analysis.
