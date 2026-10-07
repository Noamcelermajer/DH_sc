#pragma once

#include <cstddef>

// Pure byte-oriented path helper reconstructed from the supplied engine's
// ARM instructions. This is an independent port interface, not the original
// studio CFileSystem or allocator-specific string ABI.
//
// Returns the number of output bytes required. If output is non-null and
// output_capacity is at least that size, writes the complete result without a
// trailing NUL. If the buffer is too small, writes nothing. Pass output=nullptr
// to query the required size. input may be null only when input_size is zero.
extern "C" std::size_t dh2_path_dir_prefix(
    const char* input, std::size_t input_size,
    char* output, std::size_t output_capacity);

// Returns the byte count of the final path component. Both slash styles are
// separators. When keep_extension is zero, removes the final period and its
// suffix only when the period is inside that component. Output behavior is the
// same as dh2_path_dir_prefix; the input and output may overlap.
extern "C" std::size_t dh2_path_file_basename(
    const char* input, std::size_t input_size, int keep_extension,
    char* output, std::size_t output_capacity);

// Borrowed view of one archive-pointer vector. Each entry must remain valid for
// the duration of the call. A null view is treated as an empty list.
struct dh2_archive_list_view {
    void* const* entries;
    std::size_t count;
};

using dh2_archive_open_callback = void* (*)(
    void* archive, const char* path, void* user_data);

// Tries zip archives, then PAK archives, then folder archives, returning the
// first non-null callback result. This ports the engine's archive-list order;
// the callback supplies each archive's virtual createAndOpenFile behavior.
extern "C" void* dh2_filesystem_open_from_archives(
    const dh2_archive_list_view* zip_archives,
    const dh2_archive_list_view* pak_archives,
    const dh2_archive_list_view* folder_archives,
    const char* path,
    dh2_archive_open_callback open_archive,
    void* user_data);
