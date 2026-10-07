# Candidate Irrlicht filesystem baseline

## Reference identity

This is a behavior comparison against the public `release-1.8` tag in the LiveMirror Irrlicht repository, pinned at commit `146bfda2558246c80bca91003f32c27f562ae185` (2014-09-01). The reference file is `source/Irrlicht/CFileSystem.cpp`, SHA-256 `64208d810b0110aafed47f0c90c7ec685e931cb102e009af3b6b0ce5e2395c04`. The tag is a candidate source baseline for comparison, not proof of the private GameLoft/Glitch fork's exact ancestor or revision.

## Shared behavior and fork deltas

The stock constructor initializes the file-list mode, obtains the working-directory string, and conditionally registers archive loaders. Stock `CFileSystem::createAndOpenFile` iterates registered archives and returns the first successful member; if none succeeds, it calls `createReadFile(getAbsolutePath(filename))`.

The APK's `glitch::io::CFileSystem::createAndOpenFile` has the same broad archive-first/direct-file fallback shape, which makes this source useful for locating likely shared routines. The exact ARM routine is at ELF VA `0x0056d4e0`, size 964, SHA-256 `cb93a44965e3a30e9ed5f1bc17d644f6ab39c07b242a8ddcf0b019269ce6f552`. The APK additionally searches three separately stored archive families (ZIP, PAK, folder), tries direct access through its own `createReadFile` route, then walks slash-delimited prefixes and attempts nested ZIP member opens. The helper's exact 284-byte range is at `0x0056c0f8`, SHA-256 `8b140d1dcd3d6e3a951be56bb55269e194975dcb77d0a0b2ffcba7bb10e765de`.

The stock constructor's explicit `getWorkingDirectory()` initialization is another useful comparison point. The APK's Android startup audit instead finds the game storage path stored separately in `RES_PATH` while its 1,024-byte `CFileSystem::WorkingDirectory` begins zeroed; the bounded startup route does not join them. See the [Android path/CWD audit](../engine-materials/shader-archive-route/ANDROID-PATH-CWD-BOUNDARY.md).

## How to use this reference

Use the pinned source to form hypotheses about class structure and baseline control flow, then confirm each claim against the APK's exact symbols, ARM ranges, callsites, and object fields. Renamed `glitch` symbols and similar behavior do not establish that a stock Irrlicht implementation can replace the fork. The exact Irrlicht version, GLES branch, private patches, and modified class layouts remain unidentified. No upstream source was copied into the engine port.
