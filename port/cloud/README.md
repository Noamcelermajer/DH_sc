# Cloud integration checks

Portable host checks for selected player integer state and level-loader replay behavior. The harness reuses the project’s level-world, script-runtime, and level-loader modules. Generated fixtures and state stay in the build directory.

Requirements: CMake 3.22+, a C/C++ compiler, Python 3, and zlib development files.

```sh
cmake -S port/cloud -B build/cloud
cmake --build build/cloud --target dh2_cloud_check_binaries
ctest --test-dir build/cloud --output-on-failure
```

These host checks cover limited reconstructed paths. They do not establish device behavior, complete combat, or a playable build. This consolidation did not rerun them.