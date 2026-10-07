#pragma once

#include <cstddef>
#include "filesystem.hpp"

// Logical archive-list kinds in the engine's search and removal order.
enum dh2_archive_kind {
    DH2_ARCHIVE_ZIP = 0,
    DH2_ARCHIVE_PAK = 1,
    DH2_ARCHIVE_FOLDER = 2
};

// Mutable view of a caller-owned archive pointer array. Removing an entry shifts
// later entries left and decreases count; storage and capacity remain owned by
// the caller.
struct dh2_mutable_archive_list {
    void** entries;
    std::size_t count;
};

// Returns the registered path for an archive, as a NUL-terminated string.
// For every valid list entry the callback must return a non-null string that
// remains valid until it returns. kind identifies the archive's original list.
using dh2_archive_name_callback = const char* (*)(
    void* archive, dh2_archive_kind kind, void* user_data);
using dh2_archive_release_callback = void (*)(
    void* archive, dh2_archive_kind kind, void* user_data);

// Removes at most one exact, case-sensitive path match. Searches each list from
// last to first in ZIP, PAK, folder order, calls release before shifting the
// selected pointer out, and returns 1 when removed. Null lists are empty. A
// nonempty list must have a valid entries array and path must be NUL-terminated.
extern "C" int dh2_filesystem_remove_archive(
    dh2_mutable_archive_list* zip_archives,
    dh2_mutable_archive_list* pak_archives,
    dh2_mutable_archive_list* folder_archives,
    const char* path,
    dh2_archive_name_callback archive_name,
    dh2_archive_release_callback release_archive,
    void* user_data);

// Releases every entry in ZIP, PAK, then folder order and empties each list.
// Pointer-array storage and capacity remain with the caller. The callback must
// not mutate any supplied archive list.
extern "C" void dh2_filesystem_clear_archives(
    dh2_mutable_archive_list* zip_archives,
    dh2_mutable_archive_list* pak_archives,
    dh2_mutable_archive_list* folder_archives,
    dh2_archive_release_callback release_archive,
    void* user_data);
