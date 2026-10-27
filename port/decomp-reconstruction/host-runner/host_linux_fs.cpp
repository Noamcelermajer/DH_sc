// Linux host runner only (port addition): the game names files as on Windows and Android's case-insensitive asset paths
// ("Defaulteffects.bdae" for defaulteffects.bdae, a lower-cased data folder path for the remaster zip). On a case-sensitive Linux
// file system a failed open is retried with every path component matched case-insensitively against the directory listing.
// Linked with -Wl,--wrap=fopen,--wrap=fopen64,--wrap=open,--wrap=open64 (host-runner/CMakeLists.txt, non-Windows only).
#ifndef _WIN32
#include <dirent.h>
#include <fcntl.h>
#include <strings.h>
#include <sys/stat.h>

#include <cerrno>
#include <cstdarg>
#include <cstdio>
#include <string>

extern "C" {
FILE* __real_fopen(const char* path, const char* mode);
FILE* __real_fopen64(const char* path, const char* mode);
int __real_open(const char* path, int flags, ...);
int __real_open64(const char* path, int flags, ...);
}

namespace {

// The existing path that matches `path` component by component ignoring case; the parent of a file being created may also be
// matched this way (the last component is then kept as given). Empty when a directory component has no match.
std::string resolveNoCase(const char* path, bool lastMayBeNew) {
    std::string in(path);
    std::string out;
    size_t pos = 0;
    if (!in.empty() && in[0] == '/') {
        out = "/";
        pos = 1;
    } else {
        out = ".";
    }
    while (pos <= in.size()) {
        size_t next = in.find('/', pos);
        if (next == std::string::npos) next = in.size();
        const std::string part = in.substr(pos, next - pos);
        pos = next + 1;
        if (part.empty() || part == ".") continue;
        const std::string base = out == "/" ? std::string("/") : out + "/";
        struct stat st;
        if (stat((base + part).c_str(), &st) == 0) {
            out = base + part;
        } else {
            std::string found;
            if (DIR* d = opendir(out.c_str())) {
                while (dirent* e = readdir(d)) {
                    if (strcasecmp(e->d_name, part.c_str()) == 0) {
                        found = e->d_name;
                        break;
                    }
                }
                closedir(d);
            }
            if (found.empty()) {
                if (lastMayBeNew && next >= in.size()) {
                    out = base + part;
                    break;
                }
                return std::string();
            }
            out = base + found;
        }
        if (next >= in.size()) break;
    }
    return out;
}

bool creates(const char* mode) { return mode != nullptr && (mode[0] == 'w' || mode[0] == 'a'); }

}  // namespace

extern "C" FILE* __wrap_fopen(const char* path, const char* mode) {
    FILE* f = __real_fopen(path, mode);
    if (f != nullptr || path == nullptr || errno != ENOENT) return f;
    const std::string alt = resolveNoCase(path, creates(mode));
    return alt.empty() || alt == path ? nullptr : __real_fopen(alt.c_str(), mode);
}

extern "C" FILE* __wrap_fopen64(const char* path, const char* mode) {
    FILE* f = __real_fopen64(path, mode);
    if (f != nullptr || path == nullptr || errno != ENOENT) return f;
    const std::string alt = resolveNoCase(path, creates(mode));
    return alt.empty() || alt == path ? nullptr : __real_fopen64(alt.c_str(), mode);
}

extern "C" int __wrap_open(const char* path, int flags, ...) {
    int mode = 0;
    if (flags & O_CREAT) {
        va_list ap;
        va_start(ap, flags);
        mode = va_arg(ap, int);
        va_end(ap);
    }
    int fd = __real_open(path, flags, mode);
    if (fd >= 0 || path == nullptr || errno != ENOENT) return fd;
    const std::string alt = resolveNoCase(path, (flags & O_CREAT) != 0);
    return alt.empty() || alt == path ? -1 : __real_open(alt.c_str(), flags, mode);
}

extern "C" int __wrap_open64(const char* path, int flags, ...) {
    int mode = 0;
    if (flags & O_CREAT) {
        va_list ap;
        va_start(ap, flags);
        mode = va_arg(ap, int);
        va_end(ap);
    }
    int fd = __real_open64(path, flags, mode);
    if (fd >= 0 || path == nullptr || errno != ENOENT) return fd;
    const std::string alt = resolveNoCase(path, (flags & O_CREAT) != 0);
    return alt.empty() || alt == path ? -1 : __real_open64(alt.c_str(), flags, mode);
}
#endif
