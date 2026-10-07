#include "filesystem.hpp"

#include <cstring>

extern "C" std::size_t dh2_path_dir_prefix(
    const char* input, std::size_t input_size,
    char* output, std::size_t output_capacity) {
    std::size_t last_separator = input_size;
    for (std::size_t i = 0; i < input_size; ++i) {
        if (input[i] == '/' || input[i] == '\\')
            last_separator = i;
    }

    const bool has_separator = last_separator != input_size;
    const std::size_t result_size = has_separator ? last_separator : 1;
    if (output == nullptr || output_capacity < result_size)
        return result_size;

    if (has_separator) {
        if (result_size != 0)
            std::memmove(output, input, result_size);
    } else {
        output[0] = '.';
    }
    return result_size;
}

extern "C" std::size_t dh2_path_file_basename(
    const char* input, std::size_t input_size, int keep_extension,
    char* output, std::size_t output_capacity) {
    std::size_t component_start = 0;
    for (std::size_t i = 0; i < input_size; ++i) {
        if (input[i] == '/' || input[i] == '\\')
            component_start = i + 1;
    }

    std::size_t component_end = input_size;
    if (keep_extension == 0) {
        for (std::size_t i = input_size; i > component_start; --i) {
            if (input[i - 1] == '.') {
                component_end = i - 1;
                break;
            }
        }
    }

    const std::size_t result_size = component_end - component_start;
    if (output == nullptr || output_capacity < result_size)
        return result_size;
    if (result_size != 0)
        std::memmove(output, input + component_start, result_size);
    return result_size;
}

namespace {
void* open_archives_in_order(
    const dh2_archive_list_view* archives,
    const char* path,
    dh2_archive_open_callback open_archive,
    void* user_data) {
    if (archives == nullptr)
        return nullptr;
    if (archives->count != 0 && archives->entries == nullptr)
        return nullptr;

    for (std::size_t i = 0; i < archives->count; ++i) {
        void* opened = open_archive(archives->entries[i], path, user_data);
        if (opened != nullptr)
            return opened;
    }
    return nullptr;
}
} // namespace

extern "C" void* dh2_filesystem_open_from_archives(
    const dh2_archive_list_view* zip_archives,
    const dh2_archive_list_view* pak_archives,
    const dh2_archive_list_view* folder_archives,
    const char* path,
    dh2_archive_open_callback open_archive,
    void* user_data) {
    if (open_archive == nullptr)
        return nullptr;

    void* opened = open_archives_in_order(
        zip_archives, path, open_archive, user_data);
    if (opened != nullptr)
        return opened;

    opened = open_archives_in_order(
        pak_archives, path, open_archive, user_data);
    if (opened != nullptr)
        return opened;

    return open_archives_in_order(
        folder_archives, path, open_archive, user_data);
}
