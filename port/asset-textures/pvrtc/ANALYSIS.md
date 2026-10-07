# Embedded PVRTC conversion path

## Evidence and scope

The source is `lib/armeabi-v7a/libDungeonHunter2.so` from `Dungeon-Hunter-2-HD-v1-0-2.apk`. The APK SHA-256 is `32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200`; the library SHA-256 is `36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`. The executable `PT_LOAD` has `p_vaddr=0`, `p_offset=0`, and `p_filesz=0x955130`, so each function VA below maps to the same file offset. Exact sizes and per-range SHA-256 values are in [original-functions.json](original-functions.json); the ARM listings are in [reference/pvrtc-call-path.asm](reference/pvrtc-call-path.asm).

This is a static trace of the call contract. A bounded, reference-cross-checked C++ source port now lives in [decoder/](decoder/); its supported dimensions and validation limits are documented there. Neither the source port nor the asset reachability has been runtime-validated.

## Recovered dispatch

`CImageLoaderPVR::loadTextureHeader` maps PVR low-byte type `0x18` to engine formats 24/25 and type `0x19` to 26/27, selecting each pair by the loader's alpha-variant flag. The existing [PVR mapping](../README.md#original-pixel-type-mapping) records these mappings. Its recovered PFDTable fields give formats 24/25 eight bytes per 8×4 block and formats 26/27 eight bytes per 4×4 block; the PVR size model records a 32-byte minimum for each. These block fields are observed table fields; semantic format names remain unassigned.

The `pixel_format::convert` format-pair dispatch calls the anonymous `pixel_format::decompress` helper at the `BL` instruction `0x005f9800`; the helper entry is `0x005fd894`. That helper checks that the source pitch equals `computePitch(sourceFormat, width)`, sends source IDs 17–23 to logged failure branches, then handles the PVRTC path for the PVR-mapped IDs 24–27. It calculates its mode as `sourceFormat - 24 <= 1`: formats 24/25 pass mode 1, while formats 26/27 pass mode 0. The decoder turns a nonzero mode into an 8-pixel block width and zero into a 4-pixel block width; both modes use 4-pixel block height and 8 encoded bytes per block. This is why the recovered mode pair corresponds to the 2-bpp and 4-bpp PVR block layouts above. The alpha variants within each pair select the same mode. The helper's arithmetic branch also evaluates other IDs above 27, and IDs below 17 if they reach it, as mode 0; this checkpoint does not identify those IDs as PVRTC formats or claim that their conversions are supported.

The broader PVR loader trace in [the parent analysis](../ANALYSIS.md) shows the route from PVR data through `IImageLoader::ITextureDataLoading::load` and `pixel_format::convert`. Reaching the decoder still depends on the selected source/destination conversion and the format-table dispatch; the static trace does not establish which shipped assets exercise it at runtime.

## Arguments and dimensions

The embedded routine's ELF symbol is `PVRTCDecompress(void const*, int, int, int, unsigned char*)`, at `0x0069f768`. Its arguments at the call are:

| Argument | Proven value/source |
| --- | --- |
| compressed input | Source data pointer received by `pixel_format::decompress` |
| mode | 1 for source formats 24/25; 0 for 26/27 |
| width | Width argument received by `pixel_format::decompress` |
| height | Height argument received by `pixel_format::decompress` |
| output | Direct destination pointer for the fast path, otherwise a temporary allocation |

The routine computes horizontal block count as integer `width / blockWidth`, with a lower bound of two. For positive heights at most seven it uses two vertical blocks; above seven it uses integer `height / 4`. It then emits only the requested width and height in its pixel loops. The source pointer is treated as an array of 8-byte PVRTC blocks and block locations are passed through `TwiddleUV`. The decoder has no source-length or output-length argument, so it cannot independently check either buffer's extent.

`pixel_format::decompress` first checks the supplied source pitch against `computePitch(sourceFormat, width)`. It writes decoded bytes directly when the requested destination is engine format 14 and its supplied pitch equals `computePitch(14, width)`. Otherwise it allocates `width * height * 4` bytes, decodes into that temporary buffer, invokes `pixel_format::convert` from engine format 14 to the requested destination with the original dimensions, pitches, and final boolean, then frees the temporary buffer. The final boolean is not passed into `PVRTCDecompress`; this trace leaves its semantic name unresolved.

## Output writes and algorithm boundary

For each output coordinate in the width-by-height loops, `PVRTCDecompress` stores four separate bytes at offsets `4 * (row * width + x) + 0`, `+1`, `+2`, and `+3`. This establishes a four-byte-per-pixel output extent and row-major addressing. The call site identifies the direct/temporary intermediate as engine pixel format 14. The extracted declarations do not establish channel names or byte order, so this trace does not label the APK bytes RGBA/BGRA.

The 2,172-byte routine uses the adjacent `TwiddleUV` and `InterpolateColours` helpers and several PC-relative lookup tables. It contains distinct modulation unpacking and interpolation paths for the two mode values, including edge wrapping/cropping and endpoint reconstruction. A bounded scalar source port is now in [decoder/](decoder/). It implements complete power-of-two word grids at or above the two-word minimum, including endpoint, modulation, interpolation, twiddle, and output stages, and adds explicit buffer-size checks absent from the native ABI. It rejects small-mip dimensions and does not model the native crop behavior, later engine format conversion, or pitch handling. Static comparison with a public reference and the APK listing was performed, but no build, vectors, runtime call, or image comparison was performed; the port is not runtime-validated.

## Verification limits

The `pixel_format::convert` symbol range (`0x005f95ac..0x005fd894`, end-exclusive) is immediately adjacent to the separately named anonymous `decompress` range (`0x005fd894..0x005fda68`, end-exclusive). The manifest records each symbol-declared range and exact hash. The APK and library hashes were checked directly. The exact ranges for the decoder, call-path functions, and both direct decoder helpers fit within the stated executable `PT_LOAD`; their ELF VAs map to the recorded file offsets, and each hash is over exactly its manifest range. The disassembly's 789 displayed instruction/data words were byte-compared with the APK library. No tests or builds were run.
