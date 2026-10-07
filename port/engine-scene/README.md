# Scene recovery checkpoint

This directory contains bounded CPU-only models of runtime scene behavior.
`children.hpp` and `children.cpp` model `ISceneNode` child-list insertion,
removal, and forward-order enumeration using independent caller-owned link
records, not the original studio object ABI. `transform.hpp` and
`transform.cpp` compose already-computed parent absolute and local relative
matrices using the engine's `mult34` behavior.

`ANALYSIS.md` records the recovered BRES scene-part boundary, runtime method
behavior, transform convention, and remaining unknowns. The
`serialization/ANALYSIS.md` note traces scene/node construction and the camera
record path, with exact ARM ranges in `serialization/reference/` and hashes in
`serialization/serialization-ranges.json`. These traces establish selected
field use-sites; neither is a complete bounds-checked BRES scene decoder.
The selector-4 light lookup, partial `SLight` field mapping, and matching BRES
corpus samples are recorded in
[`serialization/light-payload-audit/ANALYSIS.md`](serialization/light-payload-audit/ANALYSIS.md).

The focused [`serialization/attachment-factory-audit/ANALYSIS.md`](serialization/attachment-factory-audit/ANALYSIS.md)
traces the unique active selector-13 attachment to four named modular-skin rows
and through the concrete app factory to `ModularSkinnedMeshSceneNode`. It records
that selectors 5–8 skip construction in this switch and were absent from active
scene trees across the recovered BDAE corpus. The payload layout is partial, not
a general decoder.
The transform entry point does not decode BRES data or mutate runtime node
state.
The [application-to-scene draw boundary](frame-boundary/ANALYSIS.md) traces
the Android frame callback through `Application::_Draw` and its state-machine
dispatchers to a game-side `SceneManager` wrapper that composes engine scene
registration, shadow, and render-list primitives. The concrete live state
callback that reaches this wrapper remains unknown.
`original-functions.json` records APK/ELF identity, `PT_LOAD` mapping, and
per-range hashes. `reference/original-functions.asm` contains the copied ARM
ranges used for these checkpoints.
