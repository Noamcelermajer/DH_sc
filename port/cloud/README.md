# Portable cloud checks

Requires CMake 3.22+, a C/C++ compiler, Python 3.10+ and zlib development headers.
Uses the maintained libraries and checked-in assets; no Mac, private canonical
cache, emulator, original engine or Adam submodule checkout is required.

```sh
cmake -S port/cloud -B build/cloud -G Ninja -DCMAKE_BUILD_TYPE=Debug
cmake --build build/cloud --target dh2_cloud_check_binaries -j 4
ctest --test-dir build/cloud --output-on-failure
```

Add `-DDH2_CLOUD_SANITIZERS=ON` for AddressSanitizer/UBSan. A ptrace-based managed
runtime may require `ASAN_OPTIONS=detect_leaks=0`; a normal GitHub runner should
keep leak checking enabled. Fixture/state output stays under the build directory.
`fixtures/loader-replay.json` distinguishes native replay from original execution
and records historical capture drift. Six passing checks do not establish a new
APK, generic live map loading or complete faery/monster combat.

See [integration scope](../../docs/CLOUD-ADAM-INTEGRATION-2026-10-05.md) and the
pinned upstream commit for the remaining menu/combat/factory work.
