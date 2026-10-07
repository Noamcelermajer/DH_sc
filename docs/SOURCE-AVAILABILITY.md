# Source and evidence inventory

## Stable port

The `main` branch contains the independently reconstructed math, resource
reader, and asset-payload modules. Each module includes its source, tests, and
notes describing its validation scope and known limits. The root `reports/`
directory contains the matching machine-readable validation records.

## Development material

The `development` branch contains additional experimental modules, integration
prototypes, compatibility work, recovered reference text, and historical test
records. These materials are not all complete or validated to the same level.
Use each module's README and report to determine its status.

## Inputs and tools

Tests that compare reconstructed functions with the original engine require the
exact original library. Cache audits and some asset tests also require the
matching extracted game data. These inputs are not included in the stable port
baseline. Android builds may require the Android SDK and NDK versions stated by
the module. Each module documents its exact prerequisites and commands.

## Rights

Recovered reference material and game-derived data retain their original
provenance and rights. The port is not an official release or a complete game.
See [RIGHTS.md](../RIGHTS.md) before using or redistributing files.
