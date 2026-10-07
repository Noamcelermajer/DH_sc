# Dungeon Hunter II source reconstruction

This repository contains independent C++ reconstructions of selected engine
functions and data readers. It is research code, not an official game source
release or a complete playable remake.

## Branches

- `main` is the stable port baseline. It contains three standalone modules with
  recorded validation, their tests, and the evidence needed to review them.
- `development` is the active branch for new reconstruction work, prototypes,
  compatibility experiments, and incomplete integrations.

Move a function into `main` only with its implementation, a reproducible test,
and a checked-in validation record. Keep each addition focused on the code and
evidence needed to review that function.

## Stable modules

| Module | Scope | Recorded validation |
| --- | --- | --- |
| [`port/engine-math`](port/engine-math/README.md) | 20 vector, quaternion, and matrix routines | 21,477 ARM32-to-ARM64 comparisons; zero mismatches |
| [`port/engine-resources`](port/engine-resources/README.md) | 35 reader/accessor functions and whole-buffer BRES relocation | 10,449 reader comparisons; 2,901 BRES files checked |
| [`port/asset-payloads`](port/asset-payloads/README.md) | Mesh and animation payload readers; 26 animation accessor/search functions | 271,970 ARM32-to-ARM64 comparisons; zero mismatches |

The reports describe the tested inputs and limits. These results validate the
listed components only; they do not establish engine compatibility or gameplay
completion.

## Working with a module

Each module has its own build and test instructions. The tests that compare
against the original engine require an authorized copy of the exact original
library and, where noted, the game data cache. Those inputs are not included.
See the module README before building or running a test.

## Project contents

- `port/` — reconstructed C++ modules and their tests.
- `reports/` — recorded validation results.
- `docs/`, `recovered/`, and `tools/` — supporting research and utilities on
  `development`.

The reconstructed game remains incomplete. Rendering, platform integration,
resource ownership, and gameplay behavior are not covered by the three stable
modules as a whole.

See [rights and provenance](RIGHTS.md) before using or redistributing files.
