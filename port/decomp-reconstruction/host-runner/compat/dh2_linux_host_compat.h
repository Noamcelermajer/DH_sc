// Linux host runner (port addition, not in the binary): glibc's libstdc++ does not declare the C99 float functions in std
// (std::logf, std::sqrtf, ...) that the MinGW and NDK C++ libraries declare. Forced in with -include for the Linux runner
// build only (CMakeLists.txt, DH2_HOST_RUNNER on UNIX and not ANDROID).
#pragma once
#ifdef __cplusplus
#include <cmath>
namespace std {
using ::acosf; using ::asinf; using ::atan2f; using ::atanf; using ::ceilf; using ::cosf; using ::expf; using ::fabsf;
using ::floorf; using ::fmodf; using ::logf; using ::log10f; using ::powf; using ::sinf; using ::sqrtf; using ::tanf;
using ::modff; using ::ldexpf; using ::frexpf;
}  // namespace std
#endif
