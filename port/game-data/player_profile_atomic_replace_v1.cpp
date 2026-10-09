#include "player_profile_atomic_replace_v1.hpp"

#include <atomic>
#include <cstdio>
#include <fstream>
#include <limits>
#include <system_error>

#ifdef _WIN32
#include <io.h>
#ifndef WIN32_LEAN_AND_MEAN
#define WIN32_LEAN_AND_MEAN
#endif
#ifndef NOMINMAX
#define NOMINMAX
#endif
#include <windows.h>
#else
#include <fcntl.h>
#include <unistd.h>
#endif

namespace dh2::data::player_profile_atomic_replace_v1 {
namespace {
constexpr std::size_t kMaximumProfileBytes = 32u * 1024u * 1024u;
std::atomic<std::uint64_t> g_temporary_sequence{0};

bool read_file(const std::filesystem::path& path,
               std::vector<std::uint8_t>& bytes, std::string& error) {
    std::ifstream file(path, std::ios::binary | std::ios::ate);
    if (!file) {
        error = "existing campaign primary unavailable";
        return false;
    }
    const auto end = file.tellg();
    if (end < std::streamoff(4) ||
        static_cast<std::uint64_t>(end) > kMaximumProfileBytes) {
        error = "existing campaign size outside native span";
        return false;
    }
    bytes.resize(static_cast<std::size_t>(end));
    file.seekg(0);
    if (!file.read(reinterpret_cast<char*>(bytes.data()),
                   static_cast<std::streamsize>(bytes.size()))) {
        error = "existing campaign read failed";
        return false;
    }
    return true;
}

bool write_synced_file(const std::filesystem::path& path,
                       const std::vector<std::uint8_t>& bytes,
                       std::string& error) {
    auto* file = std::fopen(path.string().c_str(), "wb");
    if (!file) {
        error = "campaign temporary open failed";
        return false;
    }
    bool okay = std::fwrite(bytes.data(), 1, bytes.size(), file) == bytes.size() &&
                std::fflush(file) == 0;
#ifdef _WIN32
    if (okay) okay = ::_commit(::_fileno(file)) == 0;
#else
    if (okay) okay = ::fsync(::fileno(file)) == 0;
#endif
    if (std::fclose(file)) okay = false;
    if (!okay) error = "campaign temporary write/flush failed";
    return okay;
}

bool replace_file(const std::filesystem::path& from,
                  const std::filesystem::path& to, std::string& error) {
#ifdef _WIN32
    if (::MoveFileExW(from.c_str(), to.c_str(),
                      MOVEFILE_REPLACE_EXISTING | MOVEFILE_WRITE_THROUGH))
        return true;
    error = "campaign atomic replace failed";
#else
    std::error_code ec;
    std::filesystem::rename(from, to, ec);
    if (!ec) return true;
    error = "campaign atomic replace failed: " + ec.message();
#endif
    return false;
}

bool sync_directory(const std::filesystem::path& primary,
                    std::string& error) {
#ifdef _WIN32
    (void)primary;
    (void)error;
    return true; // MOVEFILE_WRITE_THROUGH is the Windows durability boundary.
#else
    auto parent = primary.parent_path();
    if (parent.empty()) parent = ".";
    const int fd = ::open(parent.c_str(), O_RDONLY);
    if (fd < 0) {
        error = "campaign directory open for sync failed";
        return false;
    }
    const bool okay = ::fsync(fd) == 0;
    const int close_result = ::close(fd);
    if (!okay || close_result != 0) {
        error = "campaign directory sync failed";
        return false;
    }
    return true;
#endif
}

std::filesystem::path unique_temporary(const std::filesystem::path& path,
                                       const char* suffix) {
#ifdef _WIN32
    const auto process = static_cast<std::uint64_t>(::GetCurrentProcessId());
#else
    const auto process = static_cast<std::uint64_t>(::getpid());
#endif
    const auto serial = g_temporary_sequence.fetch_add(1,
        std::memory_order_relaxed);
    return std::filesystem::path(path.string() + suffix +
        std::to_string(process) + "." + std::to_string(serial));
}

struct TemporaryFiles {
    std::filesystem::path primary;
    std::filesystem::path backup;
    ~TemporaryFiles() {
        std::error_code ignored;
        if (!primary.empty()) std::filesystem::remove(primary, ignored);
        ignored.clear();
        if (!backup.empty()) std::filesystem::remove(backup, ignored);
    }
};
}  // namespace

bool replace_existing_profile_sections_v1(
    const std::filesystem::path& primary,
    PlayerProfileIndexV1& canonical_index,
    PlayerProfileIndexV1::Borrow& canonical_profile,
    const std::vector<PlayerProfileRawSectionV1>& replacements,
    Result* result, std::string& error) {
    if (!result || primary.empty() || !canonical_profile ||
        replacements.empty() ||
        replacements.size() > std::numeric_limits<std::uint32_t>::max()) {
        error = "existing primary, canonical profile and section replacements required";
        return false;
    }
    *result = {};
    if (!canonical_index.owns(canonical_profile)) {
        error = "canonical profile view does not belong to the supplied index";
        return false;
    }

    std::vector<std::uint8_t> previous;
    if (!read_file(primary, previous, error)) return false;
    const auto& indexed = canonical_profile.bytes();
    if (previous != indexed) {
        error = "campaign primary changed since its canonical index was loaded";
        return false;
    }

    std::vector<std::uint8_t> next;
    if (!serialize_player_profile_raw_sections_v1(canonical_profile,
            replacements, next, error))
        return false;
    if (next.size() > kMaximumProfileBytes) {
        error = "updated campaign exceeds native profile bound";
        return false;
    }

    // Parse the complete candidate before touching either file. Publication
    // below swaps this prepared snapshot into the same canonical index object.
    PlayerProfileIndexV1 prepared_index;
    if (!prepared_index.load({next.data(), next.size()}, error)) return false;

    TemporaryFiles temporary{
        unique_temporary(primary, ".saving."),
        unique_temporary(std::filesystem::path(primary.string() + ".bak"),
                         ".saving.")};
    if (!write_synced_file(temporary.primary, next, error) ||
        !write_synced_file(temporary.backup, previous, error))
        return false;

    // Recheck immediately before replacing the backup/primary so stale callers
    // cannot overwrite an intervening save with a snapshot they loaded earlier.
    std::vector<std::uint8_t> current;
    if (!read_file(primary, current, error)) return false;
    if (current != previous) {
        error = "campaign primary changed during section replacement";
        return false;
    }

    const auto backup = std::filesystem::path(primary.string() + ".bak");
    if (!replace_file(temporary.backup, backup, error)) return false;
    temporary.backup.clear();
    result->backup_replaced = true;
    if (!sync_directory(primary, error)) return false;

    if (!replace_file(temporary.primary, primary, error)) return false;
    temporary.primary.clear();
    result->primary_replaced = true;

    // Rename has committed the candidate. Swap cannot allocate, and old
    // immutable Borrow instances remain valid snapshots until their owners
    // release them. Republish the caller's canonical +8 view from this same
    // index object.
    canonical_index.swap(prepared_index);
    canonical_profile = canonical_index.borrow();
    result->index_published = true;
    result->previous_bytes = previous.size();
    result->published_bytes = next.size();
    result->replacement_count = static_cast<std::uint32_t>(replacements.size());
    if (!sync_directory(primary, error)) return false;
    error.clear();
    return true;
}

}  // namespace dh2::data::player_profile_atomic_replace_v1
