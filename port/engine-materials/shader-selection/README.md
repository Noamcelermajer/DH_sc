# Effect-to-shader selection trace

This is a focused static trace from the COLLADA material-renderer profile dispatch into the GLES2 shader manager and the renderer manager's render-pass input. It complements the raw BRES material/effect views in `../README.md`, the driver draw path in `../../engine-rendering/ANALYSIS.md`, and the shader compilation/link path in `../../engine-shaders/ANALYSIS.md`.

`ANALYSIS.md` describes only behavior visible in the original ARM ELF. `reference/selection-excerpts.asm` contains exact disassembly excerpts. `original-functions.json` records the source ELF ranges and range hashes; some entries refer to complete ranges already copied in the neighboring rendering or shader package to avoid duplicating those large listings.

This package contains no recovered game source and assigns no guessed meaning to serialized effect fields or profile-mask bits.
