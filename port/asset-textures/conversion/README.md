# Pixel format conversion evidence

- [`ANALYSIS.md`](ANALYSIS.md): bounded conversion and failure-path contract.
- [`pfd-dispatch.hpp`](pfd-dispatch.hpp): narrow `getPackedType` selector port.
- [`pfd-dispatch.tsv`](pfd-dispatch.tsv): all recovered PFD rows, exact bytes, row hashes, and selector results.
- [`original-functions.json`](original-functions.json): APK/ELF identity, mapped symbol ranges, hashes, and table range.
- [`reference/conversion-dispatch.asm`](reference/conversion-dispatch.asm): selected byte-verified ARM listings.

The full packed conversion implementation and pixel semantics are not reconstructed by this addendum.
