# GUI input path

This folder records exact engine input-dispatch ranges, a PT_LOAD-based hash manifest, and a bounded analysis of mouse routing, keyboard focus traversal, hit-testing, parent propagation, and generic button/window/edit-box handlers.

Start with [ANALYSIS.md](ANALYSIS.md). The code ranges and hashes are in [input-functions.json](input-functions.json), with copied ARM disassembly in [reference/input-path.asm](reference/input-path.asm). Vtable slot evidence is in the parent package's [GUI vtable observation](../reference/gui-vtable-observation.txt).

Static analysis only; no game HUD/menu code or replacement GUI ABI is included.
