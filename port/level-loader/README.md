# Level loader reconstruction

This module ports selected XML and level loading routines to host-testable C++. It includes fixed and procedural data readers, module loading, cached level files, object entry handling, and object initialization.

The `reference/`, `tests/`, and `reports/` directories retain disassembly, probes, and recorded evidence. Original engine and cache inputs are external and are not included.

## Scope

This is an incomplete engine reconstruction. It does not provide the full game runtime, save services, renderer, or a playable build. Reports describe earlier runs; this consolidation did not rerun them.

## Build

Requirements: CMake, a C++17 compiler, and zlib development files.

```sh
cmake -S port/level-loader -B build/level-loader
cmake --build build/level-loader
ctest --test-dir build/level-loader --output-on-failure
```

The project also builds standalone probe executables from `tests/`.