#!/usr/bin/env python3
"""Verify a source-authored combat sound reaches the native Android audio queue."""
from __future__ import annotations

import argparse
import json
import os
from pathlib import Path
import shutil
import subprocess
import tempfile
import xml.etree.ElementTree as ET

ROOT = Path(__file__).resolve().parents[3]
APP = ROOT / "port/android-native/app/src/main"
TEST = Path(__file__).with_name("player_gameplay_audio.cpp")
LABEL = "sfx_skill_mage_thunder_braid_add_2"
FILE = "sfx_skill_mage_thunder_braid_add_2.wav"

parser = argparse.ArgumentParser()
parser.add_argument("--compiler", default=os.environ.get("CXX") or shutil.which("g++") or shutil.which("clang++"))
args = parser.parse_args()
if not args.compiler:
    raise SystemExit("C++17 compiler not found; pass --compiler")

# Source evidence: chain lightning selects this non-looping cue when a second
# victim is found. The source sound catalog contains a comma typo in filename;
# the cache's extracted PCM asset uses the intended .wav filename.
skill = (APP / "assets/scripts/skills/prince_mage_chain_lightning.luac").read_text(encoding="utf-8")
assert f'PlaySound("{LABEL}",false,0,false)' in skill
catalog = ROOT / "recovered/assets/source-data/com.gameloft.android.GAND.GloftD2SS/files/data/sounds/sounds_he.xml"
rows = [row for row in ET.parse(catalog).getroot().iter("sound") if row.get("label") == LABEL]
assert len(rows) == 1 and rows[0].get("uid") == "118" and rows[0].get("format") == "pcm"
assert rows[0].get("loop") == "no" and rows[0].get("filename") == "sfx_skill_mage_thunder_braid_add_2,wav"
assert (APP / f"assets/original-media/gameplay/{FILE}").is_file()

# CharSoundsTable is read from sounds_pyarray.bin, while its three row names
# and the SDD Sounds labels/indices are preserved in the source inventory.
inventory = json.loads((ROOT / "reports/pydata-array-name-trace.json").read_text(encoding="utf-8"))
sound_names = {}
character_names = None
listener_names = None
for source_file in inventory["files"]:
    if source_file["path"] == "data/pydata/sounds_pyarraynames.bin":
        character_table = next(t for t in source_file["tables"] if t["class"] == "CharSoundsTable")
        character_names = character_table["names"]
        listeners = next(t for t in source_file["tables"] if t["class"] == "Listeners")
        listener_names = listeners["names"]
    elif source_file["path"] == "data/pydata/sdd_dungeon_hunter_2_iphone_pyarraynames.bin":
        sound_table = next(t for t in source_file["tables"] if t["class"] == "Sounds")
        sound_names = sound_table["names"]
assert character_names == ["AAA_DONT_DELETE", "ArmoredHuman", "Default"]
assert listener_names == ["AAA_DONT_DELETE_Listener", "curListener", "PlayerListener", "BAPListener", "CameraListener"]
struct_inventory = json.loads((ROOT / "reports/pydata-struct-name-trace.json").read_text(encoding="utf-8"))
listener_struct = next(x for x in struct_inventory["tables"] if x["class"] == "Listener")
assert listener_struct["names"] == ["Anchor", "MaxDistance", "Orientation", "RefDistance", "RolloffFactor", "UpVector"]
source_rows = {
    28: ("CharacterDie", "sfx_character_death.wav", 50),
    29: ("CharacterHurt1", "sfx_character_hurt_1.wav", 38),
    30: ("CharacterHurt2", "sfx_character_hurt_2.wav", 39),
    31: ("CharacterHurt3", "sfx_character_hurt_3.wav", 40),
    117: ("ImpactMetal1", "sfx_impact_metal_1.wav", 41),
    118: ("ImpactMetal2", "sfx_impact_metal_2.wav", 42),
    119: ("ImpactMetal3", "sfx_impact_metal_3.wav", 43),
    120: ("ImpactMetalFlesh1", "sfx_impact_metal_flesh_1.wav", 44),
    121: ("ImpactMetalFlesh2", "sfx_impact_metal_flesh_2.wav", 45),
    122: ("ImpactMetalFlesh3", "sfx_impact_metal_flesh_3.wav", 46),
}
xml_sounds = {row.get("label"): row for row in ET.parse(catalog).getroot().iter("sound")}
for source_id, (label, filename, uid) in source_rows.items():
    assert sound_names[source_id] == label
    assert xml_sounds[label].get("uid") == str(uid)
    # ImpactMetal XML has a known duplicated "metal" token; the retained
    # cache files and original_menu_sound_data map to this corrected asset name.
    asset = APP / f"assets/original-media/gameplay/{filename}"
    assert asset.is_file()
    with asset.open("rb") as pcm:
        header = pcm.read(12)
    assert header[:4] == b"RIFF" and header[8:12] == b"WAVE"

# Verify the existing JNI/Android path remains connected end-to-end.
cpp = APP / "cpp"
native_skills = (cpp / "native_player_skills.cpp").read_text(encoding="utf-8")
native_bridge = (cpp / "native_app.cpp").read_text(encoding="utf-8")
front_audio = (APP / "java/com/example/dh2/FrontAudio.java").read_text(encoding="utf-8")
activity = (APP / "java/com/example/dh2/MainActivity.java").read_text(encoding="utf-8")
gradle = (ROOT / "port/android-native/app/build.gradle.kts").read_text(encoding="utf-8")
assert "player_gameplay_audio::enqueue" in native_skills
assert "player_gameplay_audio::consume" in native_bridge
assert 'file.startsWith("gameplay:")' in front_audio and '"original-media/gameplay/"+gameplayFile' in front_audio
assert 'file.startsWith("dh2fx,")' in front_audio
assert 'effect.owner!=owner||effect.soundId!=soundId' in front_audio
assert "player_gameplay_audio::stop_source_sound" in (cpp / "model_renderer.cpp").read_text(encoding="utf-8")
audio_owner = (cpp / "player_gameplay_audio.hpp").read_text(encoding="utf-8")
assert "enqueue_spatial_play" in audio_owner and "evaluate_stereo_pan(request)" in audio_owner
assert 'fields.length==10' in front_audio and "leftMix=leftQ14/16384f" in front_audio
assert "consumeMenuSound()" in activity and 'noCompress += listOf("wav", "mp4")' in gradle

with tempfile.TemporaryDirectory(prefix="dh2-gameplay-audio-") as temp:
    exe = Path(temp) / ("audio-test.exe" if os.name == "nt" else "audio-test")
    subprocess.run([
        args.compiler, "-std=c++17", "-Wall", "-Wextra", "-Werror", "-pedantic", "-O2",
        str(TEST), "-o", str(exe),
    ], cwd=ROOT, check=True)
    subprocess.run([str(exe)], cwd=ROOT, check=True)
print("PASS: original skill script -> sound catalog/PCM asset -> Android audio owner")
