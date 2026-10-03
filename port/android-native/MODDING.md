# Initial native asset overrides

The source Crypt app can now read replacements for existing packaged assets.
This is a project feature, not recovered behavior of the original game.

Create the matching relative asset path inside the app's external files `mods`
directory. For the current package, this is normally:

```
/sdcard/Android/data/com.example.dh2/files/mods/
```

For example, `worlds/crypt01.dwld`, `models/prince_modular.bdae`, an existing
`textures/<name>.tga`, or `data/character_properties_pyarray.bin` can be replaced.
The native loader resolves the world descriptor and its dependent assets through
the same override boundary. Texture names retain the renderer's lowercase lookup.
Unmatched assets come from the APK. Existing corrupt overrides report errors;
they do not silently load the original in their place. Remove an override and
restart the app to restore the packaged baseline.

On the development emulator:

Create a first spawn mod without editing binary offsets:

```powershell
python tools/build_spawn_mod.py --apk app/build/outputs/apk/debug/app-debug.apk --shift-x 100 --output app/build/example-mod
```

Install its override on the development emulator:

```powershell
adb -s emulator-5558 shell mkdir -p /sdcard/Android/data/com.example.dh2/files/mods/worlds
adb -s emulator-5558 push app/build/example-mod/worlds/crypt01.dwld /sdcard/Android/data/com.example.dh2/files/mods/worlds/crypt01.dwld
adb -s emulator-5558 shell am force-stop com.example.dh2
adb -s emulator-5558 shell am start -n com.example.dh2/.MainActivity
```

The `DWLD` descriptor is a **port format**, not the original `.mlx` format.
Version 1 has a 24-byte header: magic `DWLD`, little-endian version=1,
room count, and three float32 spawn coordinates at offsets 12/16/20. Room
records are 128 bytes with the template identifier and placement. The source
reader validates identifiers, values, table size and spawn-floor compatibility.
Change the layout through the documented level exporter when possible.

Each replacement must be a regular file of 1–33,554,432 bytes. Relative paths
cannot contain traversal, empty components, backslashes, drive prefixes or NUL.
Canonical path checks reject symlinks that resolve outside the mod directory.
Source parsers still validate the actual resource format. The app's own files
directory is used if external app storage is unavailable.

## Verified scope and remaining work

Host boundary checks: `python tools/check_mod_assets.py` from this module.
Device checks: `tools/mod_assets_smoke.py` changes the spawn by 100 game units,
checks actual native world initialization, rejects a malformed descriptor, then
restores baseline loading. The tool preserves any previous override file.

This first loader replaces existing assets; it does not add asset-picker entries,
change fixed renderer model names, or supply a full inventory/skill/script mod API.
There is no in-app mod-pack picker yet. Dependencies and original identifiers
must remain compatible with the selected runtime. Original Lua services, broader
content packaging, mod metadata/versioning and user-friendly installation remain
on the reconstruction roadmap. The Irrlicht diagnostic has a separate bundle and
does not use this loader yet.
