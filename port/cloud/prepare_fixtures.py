"""Prepare isolated host fixtures from unchanged repository assets and scripts.

The ZIP is a test subset, not the canonical cache or a new production format.
"""
import pathlib
import shutil
import sys
import xml.etree.ElementTree as ET
import zipfile

root, out = map(lambda p: pathlib.Path(p).resolve(), sys.argv[1:])
assets = root / 'port/android-native/app/src/main/assets'
cache = out / 'cache'
(cache / 'data/pydata').mkdir(parents=True, exist_ok=True)
for file in (assets / 'data').glob('*.bin'):
    shutil.copyfile(file, cache / 'data/pydata' / file.name)
shutil.copyfile(assets / 'data/DebugSwitches.savegame', cache / 'DebugSwitches.savegame')
shutil.copytree(root / 'recovered/scripts/original/data/scripts', cache / 'data/scripts', dirs_exist_ok=True)
prefix = 'com.gameloft.android.GAND.GloftD2SS/files/'
worlds = assets / 'worlds'
with zipfile.ZipFile(out / 'crypt.zip', 'w', zipfile.ZIP_DEFLATED) as archive:
    archive.writestr(prefix + 'data/scene/x07_crypt_backup.mlx', (worlds / 'x07_crypt_backup.mlx').read_bytes())
    archive.writestr(prefix + 'data/3D/Modules/crypt/crypt.bdae', (worlds / 'crypt.bdae').read_bytes())
    added = set()
    for file in sorted(worlds.iterdir()):
        if file.suffix not in ('.mgp', '.mvp', '.mlx'):
            continue
        for node in ET.parse(file).iter():
            for name in ('mgp', 'mvp'):
                uri = node.get(name)
                if not uri or uri in added:
                    continue
                raw = (worlds / uri.rsplit('/', 1)[-1]).read_bytes()
                archive.writestr(prefix + uri.replace('iphone/', '', 1), raw)
                added.add(uri)
