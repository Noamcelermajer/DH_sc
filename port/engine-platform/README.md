# Android engine platform evidence

This package maps the recovered Android device creation, frame, lifecycle, touch, and surface paths from the original APK. It contains static evidence only; it adds no runtime implementation.

See [ANALYSIS.md](ANALYSIS.md) for the path map. [original-functions.json](original-functions.json) records exact ELF ranges and hashes. [reference/original-functions.asm](reference/original-functions.asm) contains the selected original ARM blocks, and [reference/platform-vtable-observations.json](reference/platform-vtable-observations.json) records the Android device and touch-screen dispatch tables.
