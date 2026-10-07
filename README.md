# Dungeon Hunter II reconstruction

Source-backed C++ ports of selected engine routines and data readers. This is research work, not official game source and not a complete playable game.

## Branches

- `main` contains the reviewed baseline: three modules with recorded validation.
- `development` holds ongoing and incomplete project work.
- `reconstruction/item-world-runtime-2026-10-07` holds the current isolated item-world work. Merge completed work to `development` when it is ready.

## Reviewed modules

- [`engine-math`](port/engine-math/README.md)
- [`engine-resources`](port/engine-resources/README.md)
- [`asset-payloads`](port/asset-payloads/README.md)

Each module README gives its scope, evidence, build steps, and limits. Original game libraries and cache files are not included.

## Rights

See [`RIGHTS.md`](RIGHTS.md) before using or redistributing files.