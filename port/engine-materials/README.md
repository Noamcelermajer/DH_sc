# Collada material and image references

This checkpoint reads the BRES `image`, `effect`, and `material` tables through immutable borrowed views. It provides bounds-checked indexed access, exact key lookup, raw little-endian record words, and a scan of the record's serialized pointer fixups. It does not change the BRES input or perform allocations.

See [ANALYSIS.md](ANALYSIS.md) for the consumer trace, confidence limits, and exact ARM/ELF provenance. Selected original listings and their digest index are in [`reference/consumer-functions.asm`](reference/consumer-functions.asm) and [`reference/consumer-functions.json`](reference/consumer-functions.json).

## Evidence and confidence

The original `CColladaDatabase` indexed accessors establish the table strides and root pointer fields:

| Library | Root count | Root pointer | Record stride | Original accessor |
| --- | ---: | ---: | ---: | --- |
| image | `0x4c` | `0x50` | `0x14` | `getImage(int) const`, `0x0060e3c8` |
| effect | `0x54` | `0x58` | `0x74` | `getEffect(int) const`, `0x0060e3e4` |
| material | `0x5c` | `0x60` | `0x24` | `getMaterial(int) const`, `0x0060e400` |

The three name accessors at `0x0061b154`, `0x0061b0ac`, and `0x0061ac28` walk those same tables by the same strides, load each record's word at offset zero, compare it with the requested string, and return the first match. This makes offset zero a **confirmed library key**. The new reader checks that this word has a corresponding BRES fixup and bounded NUL-terminated target before exposing it as `Record::key`.

`Reference::confirmed_record_key` is true only for that verified word-zero field. Other references are file fixups found inside a record. Their targets are shown as `text_candidate` only when they contain nonempty printable ASCII terminated within the BRES file. `key_matches` reports exact name matches against the three libraries. Such a match is evidence of a reusable name, not proof that the field is a texture, effect, sampler, or material link.

Confidence is high for library identity, root table offsets, strides, and the word-zero lookup key because they are directly visible in the original accessors. Confidence is limited for every other record field. Raw words and fixups are retained so later work can correlate them with constructors or consumers without baking guesses into this checkpoint.

## Unsupported here

The borrowed C++ views remain generic and do not decode image filenames or payloads, effect shader/source fields, material colors or parameters, sampler slots, blend/alpha state, vertex attributes, renderer state, or GPU objects. Separate native analyses now trace ordinary sampler indices through image rows to the texture factory and establish that `SImage+0x08` is forwarded as a path-shaped input; they do not port the texture loader or prove live rendering. A mesh primitive's existing `material` string can be supplied to `find_key(..., Kind::material, ...)`; this confirms a name-table match only.

The views borrow the original unrelocated BRES bytes and fixup array. Both must remain alive and unchanged. Build and test validation were intentionally not run for this checkpoint.

The focused [pass-record route](pass-record-route/ANALYSIS.md) follows one exact material/effect table entry through GLES technique and pass construction to the shader source-file and macro arguments.

The focused [material construction trace](record-layout/ANALYSIS.md) follows serialized `SMaterial` fields into effect-renderer selection and generic parameter dispatch, and follows inline `SInstanceMaterial` vertex-attribute descriptors into attribute-map construction. The effect pointer's relocation/ownership rules, several field meanings, parameter enum 20, and concrete shader-attribute names remain unresolved.

The [runtime texture link](texture-runtime-link/ANALYSIS.md) and its [factory lifecycle supplement](texture-runtime-link/factory-lifecycle/ANALYSIS.md) trace ordinary sampler indices through BRES image rows to the statically installed `CResFactory::getTexture` slot. The [sampler sentinel audit](sampler-sentinel-audit/ANALYSIS.md) separately follows the sole corpus `0xffffffff` value into the manager's resource-map endpoint; intended semantics and downstream rendering remain unresolved.

The [image-record boundary audit](image-record-boundary/ANALYSIS.md) distinguishes the key at `+0x00`, its dot-to-underscore companion string at `+0x04`, the path-shaped texture input at `+0x08`, and the runtime texture slot at `+0x10`. Its reproducible corpus scanner and output are in `image-record-boundary/`.

The [archive-registration caller audit](shader-archive-route/ARCHIVE-REGISTRATION-CALLER-AUDIT.md) traces Android startup to a virtual `addZipFileArchive("shaders.pak", true, false)` request. The package's recovered shader sources and the [runtime-open trace](shader-archive-route/runtime-open-route/ANALYSIS.md) show how the filenames reach archive/direct/nested-ZIP lookup; successful path resolution and device-side shader use remain unverified.
