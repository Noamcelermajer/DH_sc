# PVRTC decoder call path

This folder records the statically verified PVRTC conversion path in the APK's ARM library and a bounded C++ decoder source port.

- [ANALYSIS.md](ANALYSIS.md) describes the formats, arguments, and writes established from the call sites and machine code.
- [decoder/README.md](decoder/README.md) describes the source port's supported bounds, algorithm evidence, and validation limits; the code is not runtime-validated.
- [original-functions.json](original-functions.json) records APK/ELF identity, exact function ranges, hashes, and `PT_LOAD` mapping.
- [reference/pvrtc-call-path.asm](reference/pvrtc-call-path.asm) contains selected exact ARM listings. The output is disassembly evidence, not source code.

The parent [texture checkpoint](../README.md) contains the PVR metadata parser and the broader loader trace. The listings here were rechecked against the APK named in that checkpoint.
