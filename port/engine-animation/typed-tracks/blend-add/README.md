# Non-key transform blend and add

This supplement maps the float scale-vector3 route and the shared quaternion reducer/apply routes used by six quaternion and quaternion-angle track variants from the Android ARM library. [ANALYSIS.md](ANALYSIS.md) records the static behavior and limits. [functions.json](functions.json) gives exact APK-backed ranges and hashes; [reference/blend-add.asm](reference/blend-add.asm) contains the corresponding ARM disassembly. Run [tools/capture_evidence.py](tools/capture_evidence.py) to regenerate those evidence files from the supplied APK and matching extracted ELF.

The bounded [weighted scale helper](weighted_scale.hpp) and [weighted quaternion helpers](weighted_quaternion.hpp) implement the already-sampled value reductions. They do not implement key search, BRES decoding, weight production, or callback target behavior. No build or runtime validation is claimed.
