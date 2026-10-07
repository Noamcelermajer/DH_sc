# Quaternion-angle transform tracks

This bounded module traces Collada channel types `6`–`9` through the quaternion-angle track family, its direct and two-key paths, and the scene-node rotation setter. Exact ELF ranges and vtables are listed in [the provenance manifest](reference/quaternion-angle-functions.json); selected ARM listings are in [the assembly excerpt](reference/quaternion-angle-functions.asm). The interpretation and limits are in [ANALYSIS.md](ANALYSIS.md).

The optional [helper](quaternion_angle.hpp) accepts an already decoded float axis and angle key(s). It delegates quaternion construction to the existing engine-math port. It does not parse BRES data or decode packed scalar/default records.
