#include "archive-management.hpp"

#include <cstring>

namespace {
int remove_from_list(
    dh2_mutable_archive_list* archives,
    dh2_archive_kind kind,
    const char* path,
    dh2_archive_name_callback archive_name,
    dh2_archive_release_callback release_archive,
    void* user_data) {
    if (archives == nullptr || archives->count == 0 || archives->entries == nullptr)
        return 0;

    for (std::size_t i = archives->count; i != 0; --i) {
        const std::size_t index = i - 1;
        void* const archive = archives->entries[index];
        const char* const registered_path =
            archive_name(archive, kind, user_data);
        if (std::strcmp(path, registered_path) != 0)
            continue;

        release_archive(archive, kind, user_data);
        const std::size_t trailing = archives->count - index - 1;
        if (trailing != 0) {
            std::memmove(
                archives->entries + index,
                archives->entries + index + 1,
                trailing * sizeof(void*));
        }
        --archives->count;
        return 1;
    }
    return 0;
}

void clear_list(
    dh2_mutable_archive_list* archives,
    dh2_archive_kind kind,
    dh2_archive_release_callback release_archive,
    void* user_data) {
    if (archives == nullptr || archives->count == 0)
        return;

    // The source keeps the vector allocated and only rewinds its end pointer.
    if (archives->entries == nullptr)
        return;
    const std::size_t count = archives->count;
    for (std::size_t i = 0; i != count; ++i)
        release_archive(archives->entries[i], kind, user_data);
    archives->count = 0;
}
} // namespace

extern "C" int dh2_filesystem_remove_archive(
    dh2_mutable_archive_list* zip_archives,
    dh2_mutable_archive_list* pak_archives,
    dh2_mutable_archive_list* folder_archives,
    const char* path,
    dh2_archive_name_callback archive_name,
    dh2_archive_release_callback release_archive,
    void* user_data) {
    if (path == nullptr || archive_name == nullptr || release_archive == nullptr)
        return 0;

    if (remove_from_list(zip_archives, DH2_ARCHIVE_ZIP, path,
                         archive_name, release_archive, user_data))
        return 1;
    if (remove_from_list(pak_archives, DH2_ARCHIVE_PAK, path,
                         archive_name, release_archive, user_data))
        return 1;
    return remove_from_list(folder_archives, DH2_ARCHIVE_FOLDER, path,
                            archive_name, release_archive, user_data);
}

extern "C" void dh2_filesystem_clear_archives(
    dh2_mutable_archive_list* zip_archives,
    dh2_mutable_archive_list* pak_archives,
    dh2_mutable_archive_list* folder_archives,
    dh2_archive_release_callback release_archive,
    void* user_data) {
    if (release_archive == nullptr)
        return;
    clear_list(zip_archives, DH2_ARCHIVE_ZIP, release_archive, user_data);
    clear_list(pak_archives, DH2_ARCHIVE_PAK, release_archive, user_data);
    clear_list(folder_archives, DH2_ARCHIVE_FOLDER, release_archive, user_data);
}
