# Archive and nested ZIP reader ownership

This is a bounded ownership trace for the APK's ARM32 engine. It follows ZIP
registration and one nested-reader path through the refcount operations that
are visible in the mapped instructions. Selected PAK and folder registration
and reader-lifetime paths are now documented in
[`factories/ANALYSIS.md`](factories/ANALYSIS.md). Neither note infers ownership
from class names, C++ conventions, or the existing portable helpers.

## Evidence and mapping

The source is the APK's
`lib/armeabi-v7a/libDungeonHunter2.so` (ELF SHA-256
`36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`). Its
first `PT_LOAD` segment is index 1, with `p_offset=0` and `p_vaddr=0`, so each
address in the ranges below maps to the same ELF file offset. The second
segment was recorded too. Every selected range in
[`ownership-functions.json`](ownership-functions.json) was hashed from the APK
and byte-compared with the ARM listing in
[`reference/ownership-path.asm`](reference/ownership-path.asm).

Some recovery listings include their trailing literal pool in the function
range. The manifest records both the complete hashed range and the code byte
count. For example, `createAndOpenFile` has 964 instruction bytes followed by
12 literal-pool bytes; `CZipReader::isValid(IReadFile*)` has 136 instruction
bytes followed by 4 pool bytes.

## ZIP archive registration

`CFileSystem::addZipFileArchive` calls a filesystem virtual at vtable offset
`+0x0c` to obtain an `IReadFile*`. If that call returns null, registration
returns false. Otherwise it allocates a `CZipReader` and calls its
`CZipReader(IReadFile*, bool, bool)` constructor.

The constructor writes reference count `1` at reader offset `+4`, stores the
input stream at reader offset `+8`, and increments the stream's count at
`stream+4` when the stream is nonnull. It then scans the archive. If reader
allocation fails, `addZipFileArchive` calls `drop()` on the obtained stream and
returns false. If allocation succeeds, it marks the reader, appends its
pointer to the ZIP vector, and calls `drop()` on the original stream reference.
The vector therefore retains the reader's initial reference; the reader
retains the stream reference acquired by its constructor. No separate
`grab()` on the reader is visible in this method.

The registration method does not consume a constructor validity result: after
the constructor call, it tests the allocated reader pointer, sets a flag at
`reader+0x10`, and appends that pointer. Its boolean return distinguishes a
null factory stream or failed allocation from an allocated reader; it does not
report whether the constructor scan accepted every archive structure or
whether a requested member can be opened. The Android startup caller also
ignores this boolean result (see the [startup caller audit](../engine-materials/shader-archive-route/ARCHIVE-REGISTRATION-CALLER-AUDIT.md)).

`createAndOpenFileFromArchives` visits the ZIP vector first, then PAK, then
folder entries, calling each archive through vtable offset `+0x0c`. It stops
and returns the first nonnull file pointer. The dispatcher itself contains no
visible reference-count adjustment. `removeFileArchive` and `clear` release
registered objects with `IReferenceCounted::drop()`; when a ZIP reader reaches
zero, the deleting-destructor dispatch described below releases its stream.

## One nested-reader path

`CFileSystem::createAndOpenFile` first tries registered archives for the full
path and then `createReadFile` for direct access. If both fail, it walks
slash-delimited prefixes. For a candidate returned by archive dispatch or
`createReadFile`, `CZipReader::isValid(IReadFile*)` checks the ZIP signature
by saving a value through vtable slot `+0x24`, seeking through `+0x18`, reading
four bytes through `+0x0c`, and seeking back to the saved value. That validator
contains no visible `grab()` or `drop()` call.

For a valid candidate, the path walker placement-constructs a stack
`CZipReader`. Its constructor increments the candidate stream's count. The
walker then calls `drop()` once on its caller-held candidate reference. It
opens the next member with `CZipReader::openFile(char const*)`. It calls
`findFile(char const*)`; a `-1` result returns null, while a found index is
passed to `openFile(int)`. The indexed overload has several entry-type paths;
this note does not assert one returned concrete file class for every path. A
`CLimitReadFile` path is present: its constructor initializes its own count to
`1`, and its destructor drops the pointer stored at `+0x48`.

After `openFile` returns, the path walker explicitly destroys the current
stack reader, including when the returned pointer is null. The stack reader's
own initialized count is not passed to `drop()`; the destructor body is called
directly. That body drops its held stream once and invokes the ZIP-entry vector
destructor. If the returned member is nonnull and another path segment remains,
the walker constructs the next stack reader around it, then drops the
caller-held member reference on the next iteration. This repeats one reader
at a time. If no further segment remains, the current reader is destroyed and
the member pointer is returned from `createAndOpenFile` without a corresponding
`drop()` inside that function.

The visible failure paths are narrower:

- A null archive/direct candidate skips validation and reader construction.
- A non-ZIP candidate fails `isValid`, is explicitly dropped, and the path
  search continues.
- A null member result still reaches the current stack reader's destructor;
  no `drop()` is applied to the null pointer.
- A reader allocation failure in ZIP registration drops the factory-returned
  stream. A factory call that itself returns null is returned as failure.

These observations establish the count changes at the listed call sites; they
do not prove every lower-level constructor's initial count or every exception,
malformed-archive, and decompression failure contract.

## Destruction mechanics

`IReferenceCounted::drop()` decrements the integer at object offset `+4`. If
the new value is nonzero, it returns `0`. At zero, it calls the object's
vtable entry at `+8` (the deleting destructor), then the entry at `+4` (the
base destructor), and returns `1`.

`CZipReader::~CZipReader()` checks the stream pointer at `+8` and calls
`drop()` once when nonnull. It also invokes the ZIP-entry vector destructor
for storage at `+0x14`. The deleting destructor calls this body, frees the
reader allocation, and returns. The nested path's stack readers call the
destructor body directly; they are not released through `drop()`.

For `CLimitReadFile`, the constructor stores the result of a virtual call on
the input file at `+0x1c` into its `+0x48` field. Its destructor later calls
`drop()` on that field if nonnull. The observed listing does not establish the
virtual method's ownership contract, so no claim is made about how that result
was acquired.

## Remaining gaps

The selected CFileSystem factory/dispatch slot and visible PAK/folder
registration count changes are traced in `factories/ANALYSIS.md`; the complete
archive object ABI and any other factory path remain unresolved. All
`openFile(int)` compressed and special-entry branches, the virtual method at
`+0x1c` used by `CLimitReadFile`, and behavior under malformed archives remain
unresolved. The analysis also does not establish runtime counts beyond the
increments/decrements directly visible in these ranges. No tests or builds
were run.
