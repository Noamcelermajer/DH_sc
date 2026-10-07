# Parameter binding evidence

See [`ANALYSIS.md`](ANALYSIS.md) for the runtime name lookup and binding construction path. [`bindings-ranges.json`](bindings-ranges.json) records full function ranges, APK ELF file offsets, hashes, PT_LOAD mappings, and excerpt digests; [`reference/binding-path.asm`](reference/binding-path.asm) contains the verified ARM excerpts.

The trace connects reflected shader uniforms to runtime material parameter definitions and the selector pairs used by material commit. Serialized effect/material field sources and schema names remain unresolved.
