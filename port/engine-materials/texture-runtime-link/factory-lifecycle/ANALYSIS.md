# Default resource factory lifecycle

## Result

The previously open factory-configuration question is resolved for the APK's default manager path. `CResFileManager::CResFileManager(IDevice*)` stores the address of `glitch::collada::CResFileManager::DefaultResFactory` at manager offset `+0x24`. The symbol at `0x009f7018` is a four-byte `.bss` object, not a pointer variable. The translation-unit global initializer is registered in `.init_array` and writes the `CResFactory` vptr into that object.

That vptr is `0x00983048`, the ABI address point of the vtable whose symbol begins at `0x00983040`. The virtual call in `postLoadProcess` dispatches through address point `+8`, slot `0x00983050`, whose relocated value is `CResFactory::getTexture` at `0x00659704`. So the previously verified texture implementation is the default factory installed by the manager constructor.

## APK-backed setup and path

- **Factory object and manager field.** The manager constructor at `0x00657914` loads the address of `DefaultResFactory` from a GOT entry whose `R_ARM_RELATIVE` addend is `0x009f7018`, stores it at `[this + 0x24]`, and stores `this` in `CResFileManager::Inst` at `0x009f701c`. The corresponding C2 constructor at `0x00657894` has the same field writes.
- **Vptr initialization.** `_GLOBAL__I_.._source_glitch_collada_CColladaResFileManager.cpp` at `0x00657a24` is referenced by an `.init_array` relocation at `0x0095674c`. Its instructions load the CResFactory vtable base (`0x00983040`), add eight bytes for the ABI address point, and store `0x00983048` at `DefaultResFactory` (`0x009f7018`). The object itself resides in `.bss`; the write is code-backed, not a serialized initialized word.
- **Vtable target.** The CResFactory vtable range at `0x00983040` is 20 bytes. At vtable-symbol `+0x10`, VA `0x00983050`, the `R_ARM_RELATIVE` relocation targets `0x00659704`. From the object's vptr (`0x00983048`), `postLoadProcess` uses slot `+8`, so the dispatched entry is exactly `getTexture`.
- **Engine BRES load path.** `glitch::scene::CColladaBinaryFileLoader::createMesh(IReadFile*)` at `0x006b9458` reads `CResFileManager::Inst` and calls `CResFileManager::load(IReadFile*, ...)` at `0x0065a98c` with the load flag in `r2` equal to zero. That wrapper branches to the core `CResFileManager::get(IReadFile*, bool, bool)` at `0x0065a748`. The get routine calls `CResFileManager::postLoadProcess` at `0x00658c90` (`BL` at `0x0065a954`). In `postLoadProcess`, `manager + 0x24` supplies the `DefaultResFactory` object and the virtual call at `0x00658e84` loads its vptr slot `+8`, which resolves to `CResFactory::getTexture`.

The addresses, exact byte sizes, SHA-256 values, relocation words, and BSS symbol metadata are in [factory-lifecycle-ranges.json](factory-lifecycle-ranges.json). The compact exact listing excerpts are in [factory-lifecycle.asm](reference/factory-lifecycle.asm). The APK and native-library hashes match the current repository provenance: APK `32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`; ELF `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`.

## Scope and limits

This establishes an engine-side default installation and a statically reachable engine scene-loader call chain. It does not establish a live-device call, prove that this loader was invoked for any particular recovered asset, or prove that all image rows successfully produce textures. The image-row condition and the `0xffffffff` special branch remain as documented in the parent [texture runtime-link analysis](../ANALYSIS.md). No gameplay or Android-support function is part of the call chain above.

The recovered CResFileManager class-group listing has constructor writes to `+0x24` and no alternate setter in its recovered functions. This is evidence for the class's default setup, not proof against external code mutating the field or against unobserved runtime configurations. No build or test suite was run; verification here is source-APK hashing and static address/relocation cross-checking only.
