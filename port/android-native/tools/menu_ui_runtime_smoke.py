"""Tap the original menu/name/class/Start movie into the development Crypt.

API37/16KiB emulator only. Campaign profiles stay on the device: originals
are moved into a private transaction directory before launching, synthetic
profiles are archived there, and originals are restored in finally. No saves
or unfiltered Logcat are pulled. Complete NativeStartGame, campaign loading,
inventory initialization and full combat remain outside this check. Visible
development joystick and attack controls are checked for delivered input.
"""
import argparse
import hashlib
import io
import json
from pathlib import Path
import re
import shlex
import struct
import subprocess
import time
import uuid
import xml.etree.ElementTree as ET
import zipfile

from PIL import Image, ImageChops, ImageStat

PACKAGE = 'com.example.dh2'
VIEWPORT = 'DH2 native texture viewport'
CLASSES = ((0, 263, 48, 'KnightPlayerBase'),
           (1, 325, 50, 'RoguePlayerBase'),
           (2, 290, 49, 'MagePlayerBase'))
POINTS = {'main': (410, 94), 'key_a': (40, 219),
          'name_confirm': (240, 126), 'class_right': (463, 190),
          'class_confirm': (240, 295), 'single_player': (410, 160),
          'next_slot': (170, 75)}
BAD = re.compile(r'FATAL EXCEPTION|Fatal signal|Native frame failed|'
                 r'World load failed|Model draw GL error|Original menu frame failed|'
                 r'Player HUD (?:frame|attach) failed|Menu touch failed|'
                 r'Native Player AIS failure retained|Native Player AI timer failed|'
                 r'Start Game (?:failed|has no assigned save slot|selected slot differs)|'
                 r'Asset load failed|Required authored navigation clip absent')
SAFE_EVENTS = re.compile(r'(?:Surface resized to |Owned menu (?:renderer selected|navigation) \||'
                         r'Original class (?:selection updated|scene connected|scene animation) \||'
                         r'Original front(?: screen loaded|/HUD screen submitted) \||'
                         r'Native menu (?:profile created|slot assigned|preview selection) \||'
                         r'Authored NativeStartGame request queued \||Development Crypt start requested \||'
                         r'Native gameplay (?:class|property cache) \||'
                         r'Menu game start \| slot \d+ \| Crypt \||'
                         r'Connected player HUD submitted \||'
                          r'Native Player AIS (?:initialized|retained) \||'
                          r'Native Player Save mask2 \||Native Character owner bound \||'
                         r'Source Random (?:GSInit::Update|Level::Unload) \||'
                         r'Native offline registration \||Native full PlayerInfo \||Native managed metadata \||Native WorldMap catalogue \||Native Quest (?:catalogue|startup|terminal discard) \||'
                         r'Player position [-\d.]|Player input \|)')
SOURCE_RNG_GSINIT = re.compile(r'Source Random GSInit::Update \| seed (\d+) \| sync (\d+) \| counters (\d+)/(\d+)')
SOURCE_RNG_UNLOAD = re.compile(r'Source Random Level::Unload \| seed (\d+) \| sync (\d+) \| counters (\d+)/(\d+)')
FULL_PLAYER = re.compile(r'Native full PlayerInfo \| fields (\d+) \| factory (\d+) \|'
                         r' level (-?\d+) \| class (-?\d+) \| Character660 (\d+) \|'
                         r' slot664 (-?\d+) \| counter (\d+)')
ASSIGN = re.compile(r'Native menu slot assigned \| slot (\d+) \| ordinal (\d+) \|'
                    r' manager stores (\d+) \| player stores (\d+)')
REGISTRATION = re.compile(r'Native offline registration \| entries (\d+) \| added (\d+) \|'
                          r' controllers (\d+) \| renumber (\d+) \| counter (\d+)')
MANAGED_METADATA = re.compile(r'Native managed metadata \| players (\d+) \| slot (-?\d+) \|'
                              r' published680 (\d+) \| name setters (\d+) \| class setters (\d+) \|'
                              r' level setters (\d+) \| Save (\d+) \| Character660 (\d+)')
WORLD_MAP = re.compile(r'Native WorldMap catalogue \| locations (\d+) \| lockers (\d+)')
QUEST_TABLE = re.compile(r'Native Quest catalogue \| definitions (\d+)')
QUEST_STARTUP = re.compile(r'Native Quest startup \| Save (\d+) \| Character (\d+) \|'
                           r' log b8 (\d+) \| log118 (\d+) \| constants (\d+) \| retained (\d+)')
PLAYER_SAVE_MASK2 = re.compile(r'Native Player Save mask2 \| Character (\d+) \| Save (\d+) \|'
                               r' loader (\d+) \| Quest118 (\d+) \| QuestB8 (\d+) \|'
                               r' calls (\d+) \| retained (\d+) \|')
CHARACTER_OWNER = re.compile(r'Native Character owner bound \| object (\d+) \| Coordinator (\d+) \|'
                             r' Save (\d+) \| properties (\d+) \| inventory (\d+) \|'
                             r' item rows (\d+) \| loot rows (\d+) \| item count (\d+) \|'
                             r' equipment set (-?\d+) \| potion capacity (-?\d+) \|'
                             r' same V4 Character owner; development continuation')
START = re.compile(r'Authored NativeStartGame request queued \| selected slot (\d+) \|'
                   r' numeric difficulty (\d+) \| requested difficulty (-?\d+)')
CLASS = re.compile(r'Native gameplay class \| slot (\d+) \| class (\d+) \| preset (\w+)')
CLASS_INDEX = re.compile(r'Original class selection updated \| index (\d+) \| class (\w+)')
HUD = re.compile(r'Connected player HUD submitted \| viewport (\d+) (\d+) \|'
                 r' character (\S+) \| HP (-?\d+) (-?\d+) \| MP (-?\d+) (-?\d+) \|'
                 r' XP (-?\d+) (-?\d+) \| frames (-?\d+) (-?\d+) (-?\d+) (-?\d+) (-?\d+)')


def inspect_apk(path):
    """Inspect real packaged ELF load segments without extracting assets."""
    result = []
    with zipfile.ZipFile(path) as archive:
        for name in archive.namelist():
            if not name.startswith('lib/') or not name.endswith('.so'):
                continue
            abi = name.split('/')[1]
            raw = archive.read(name)
            assert abi in ('arm64-v8a', 'x86_64') and raw[:6] == b'\x7fELF\x02\x01', 'Packaged ELF ABI differs'
            offset = struct.unpack_from('<Q', raw, 32)[0]
            size, count = struct.unpack_from('<HH', raw, 54)
            align = [struct.unpack_from('<Q', raw, offset + i * size + 48)[0]
                     for i in range(count)
                     if struct.unpack_from('<I', raw, offset + i * size)[0] == 1]
            assert align and min(align) >= 16384, 'Packaged load alignment below16KiB'
            result.append({'path': name, 'sha256': hashlib.sha256(raw).hexdigest(),
                           'minimum_load_alignment': min(align)})
    names = {abi: {Path(r['path']).name for r in result if r['path'].split('/')[1] == abi}
             for abi in ('arm64-v8a', 'x86_64')}
    assert names['arm64-v8a'] == names['x86_64'] and 'libdh2_native.so' in names['x86_64'], 'Packaged ABI library sets differ'
    return result


def stage_rectangle(width, height):
    # Match OriginalUiSession::front_rectangle integer arithmetic exactly.
    fitted_width = min(width, height * 3 // 2)
    fitted_height = min(height, width * 2 // 3)
    return ((width - fitted_width) // 2, (height - fitted_height) // 2,
            fitted_width, fitted_height)


def stage_point(bounds, surface, point):
    x0, y0, x1, y1 = bounds
    width, height = surface
    assert (x1 - x0, y1 - y0) == (width, height), 'NativeSurface size and Android bounds disagree'
    x, y, w, h = stage_rectangle(width, height)
    return (round(x0 + x + point[0] * w / 480),
            round(y0 + y + point[1] * h / 320))


def parse_focused_window(text):
    """Read actual current input focus, excluding merely resumed Activities."""
    match = re.search(r'\bmCurrentFocus\s*=\s*Window\{[^\n}]*?\s'
                      r'([A-Za-z0-9_.]+)/([A-Za-z0-9_.$]+)(?:\s|\})', text)
    if not match:
        return None
    package, activity = match.groups()
    if activity.startswith('.'):
        activity = package + activity
    return {'package': package, 'activity': activity}


def parse_input_focused_windows(text):
    """Read only InputDispatcher's FocusedWindows section, with display IDs."""
    lines = text.splitlines()
    for index, line in enumerate(lines):
        heading = re.fullmatch(r'(\s*)FocusedWindows:\s*', line)
        if not heading:
            continue
        indentation = len(heading.group(1))
        result = []
        for entry in lines[index + 1:]:
            if not entry.strip():
                continue
            if len(entry) - len(entry.lstrip()) <= indentation:
                break
            match = re.search(r'\bdisplayId=(\d+),\s*name=.*?\b'
                              r'([A-Za-z0-9_.]+)/([A-Za-z0-9_.$]+)(?:\s|[\x27\x22}]|$)', entry)
            if match:
                display, package, activity = match.groups()
                if activity.startswith('.'):
                    activity = package + activity
                result.append({'display_id': int(display), 'package': package, 'activity': activity})
        return result
    return []


def operation_context(command):
    # No stdout/stderr, private shell program, file path or profile content in
    # failure reports. Three command words identify the failed transport step.
    words = [word for argument in command for word in argument.split()][:3]
    return ', '.join('[path]' if '/' in word or '\\' in word or ':' in word else word
                     for word in words)


def button_rectangle(stage, bounds, surface):
    if stage == 'crypt':
        x0, y0, _, _ = bounds
        width, height = surface
        cx, cy = x0 + width * .91, y0 + height * .87
        return (round(cx - width * .035), round(cy - height * .018),
                round(cx + width * .035), round(cy + height * .018))
    centers = {'main': POINTS['main'], 'name': POINTS['name_confirm'],
               'class': POINTS['class_confirm'], 'start': POINTS['single_player']}
    cx, cy = stage_point(bounds, surface, centers[stage])
    _, _, w, h = stage_rectangle(*surface)
    return (round(cx - w * 35 / 480), round(cy - h * 14 / 320),
            round(cx + w * 35 / 480), round(cy + h * 14 / 320))


def verify_start(text, slot, character_class, preset, animation_table):
    """Require a fresh actual assignment immediately before this launch."""
    starts = list(START.finditer(text))
    assert len(starts) == 1 and tuple(map(int, starts[0].groups())) == (slot, 1, 0), 'Expected one authored Normal Start request'
    assignments = [m for m in ASSIGN.finditer(text) if m.start() < starts[0].start()]
    assert assignments and tuple(map(int, assignments[-1].groups())) == (slot, 0, 1, 1), 'Canonical source Assign must precede NativeStart'
    registrations = [m for m in REGISTRATION.finditer(text) if m.start() < assignments[-1].start()]
    assert registrations, 'Source controller registration must precede authored slot assignment'
    registration = tuple(map(int, registrations[-1].groups()))
    assert registration[0] == 1 and registration[2] == 4 and registration[4] == 39, 'Canonical offline map/input/shared counter differs'
    classes = list(CLASS.finditer(text))
    assert classes and classes[-1].start() > starts[0].start(), 'Fresh gameplay class receipt missing'
    assert classes[-1].groups() == (str(slot), str(character_class), preset), 'Gameplay class differs from selected class'
    caches = re.findall(r'Native gameplay property cache \| class (\d+) \| animation table (\d+) \| max HP (-?\d+) \| max MP (-?\d+)', text)
    assert caches and tuple(map(int, caches[-1][:2])) == (character_class, animation_table), 'Live cached property2 differs from source class'
    hud = list(HUD.finditer(text))
    assert hud and hud[-1].start() > classes[-1].start(), 'Connected source HUD missing after gameplay class'
    character_identity = int(hud[-1].group(3), 0)
    values = tuple(map(int, hud[-1].groups()[3:]))
    hp, max_hp, mp, max_mp, xp, next_xp, *frames = values
    assert 0 < hp <= max_hp and 0 < mp <= max_mp and 0 <= xp < next_xp, 'Invalid live health/mana/XP source words'
    assert tuple(map(int, caches[-1][2:])) == (max_hp, max_mp), 'Live HUD maxima differ from class property cache'
    assert 0 < frames[0] < 100 and 0 < frames[1] < 100 and 0 <= frames[2] < 101, 'Original HUD health/mana/XP timelines invalid'
    assert frames == source_hud_frames(hp, max_hp, mp, max_mp, xp, next_xp), 'Original HUD frames differ from live source words'
    assert 'Menu game start | slot %d | Crypt |' % slot in text, 'Actual Crypt start receipt missing'
    records = list(FULL_PLAYER.finditer(text))
    assert records and records[-1].start() > starts[0].start(), 'Fresh full PlayerInfo receipt missing'
    record = tuple(map(int, records[-1].groups()))
    assert record == (33, 1, 1, character_class, character_identity, slot, 45), 'Canonical record must use the metadata setters and publish its native Character owner'
    metadata = list(MANAGED_METADATA.finditer(text))
    assert metadata and starts[0].start() < metadata[-1].start() < classes[-1].start(), 'Managed metadata preparation must precede gameplay class loading'
    managed = tuple(map(int, metadata[-1].groups()))
    assert managed[:6] == (1, slot, 1, 1, 1, 1) and managed[6] > 0 and managed[7] == 0, 'Actual metadata Save publication/setters differ'
    maps = list(WORLD_MAP.finditer(text))
    quests = list(QUEST_TABLE.finditer(text))
    assert quests and int(quests[-1].group(1)) == 64, 'Actual retained Quest catalogue missing'
    quest_startup = list(QUEST_STARTUP.finditer(text))
    assert quest_startup and classes[-1].start() < quest_startup[-1].start() < hud[-1].start(), 'Actual Quest initialization must precede HUD'
    quest_values = tuple(map(int, quest_startup[-1].groups()))
    assert quest_values[0] > 0 and quest_values[0] != managed[6], 'Quest logs must belong to the distinct gameplay Save'
    assert quest_values[1] == int(hud[-1].group(3), 0), 'Quest children must use the HUD Character'
    assert quest_values[2:] == (192, 192, 1608, 0), 'Genuine per-Save Quest startup counts differ'
    mask2_receipts = list(PLAYER_SAVE_MASK2.finditer(text))
    assert len(mask2_receipts) == 1 and classes[-1].start() < mask2_receipts[-1].start() < quest_startup[-1].start(), 'Exactly one Character SG_Load(2) receipt must precede native Quest startup'
    mask2_values = tuple(map(int, mask2_receipts[-1].groups()))
    assert mask2_values == (character_identity, quest_values[0], mask2_values[2], character_identity,
                            character_identity, 1, 0) and mask2_values[2] > 0, 'SG_Load(2) must use the same Character, Save and both embedded Quest owners'
    owner_bindings = list(CHARACTER_OWNER.finditer(text))
    assert owner_bindings, 'Reconstructed native Character owner publication missing'
    owner_values = tuple(map(int, owner_bindings[-1].groups()))
    assert owner_values[0] == owner_values[1] == character_identity and owner_values[2] == quest_values[0] and owner_values[3] > 0, 'PlayerInfo, Coordinator, gameplay Save and property owner identities differ'
    assert owner_values[4] > 0 and owner_values[4] not in owner_values[:4], 'V4 inventory has no distinct retained owner identity'
    assert owner_values[5:10] == (1322, 339, 0, 0, 12), 'Fresh V4 inventory differs from the canonical source table/property projection'
    assert maps and starts[0].start() < maps[-1].start() < metadata[-1].start(), 'Selected WorldMap decoder must precede metadata preparation'
    assert tuple(map(int, maps[-1].groups())) == (13, 3), 'Original WorldMap data differs'
    return {'slot': slot, 'class': character_class, 'preset': preset,
            'cached_property2': animation_table, 'assign_before_start': True,
            'numeric_difficulty': True, 'requested_difficulty': 0,
            'HP': hp, 'max_HP': max_hp, 'MP': mp, 'max_MP': max_mp,
            'XP': xp, 'next_XP': next_xp, 'HUD_frames': frames,
            'character': hud[-1].group(3),
            'full_PlayerInfo': {'fields': record[0], 'factory_registered': bool(record[1]),
                                'level': record[2], 'class': record[3], 'Character660': record[4],
                                'slot664': record[5], 'shared_counter': record[6],
                                'temporary_backing_policy': 'zero', 'role': 'local registry'},
            'offline_registration': {'entries': registration[0], 'added': registration[1],
                                     'controllers': registration[2], 'renumber': registration[3],
                                     'before_authored_assign': True},
            'managed_metadata': {'Save680': managed[6], 'published_once': True,
                                 'name_class_level_setters': list(managed[3:6]),
                                 'Character660_at_prepare': managed[7]},
            'native_character_owner': {'identity': owner_values[0],
                                       'Coordinator_identity_matches': True,
                                       'Save_matches_gameplay_Save': True,
                                       'property_owner_bound': True,
                                       'inventory_bound': True,
                                       'inventory_items_at_source_creation': owner_values[7],
                                       'inventory_table_items': owner_values[5],
                                       'inventory_loot_rows': owner_values[6],
                                       'source_AddCharacter_invoked': False},
            'world_map': {'locations': 13, 'lockers': 3},
            'quest_definitions': 64,
            'quest_startup': {'gameplay_Save': quest_values[0], 'Character': quest_values[1],
                             'log_b8': 192, 'log_118': 192, 'constant_queries': 1608},
            'source_save_mask2': {'character': mask2_values[0], 'save': mask2_values[1],
                                  'loader': mask2_values[2], 'embedded_quest_owners_match': True,
                                  'calls': mask2_values[5], 'retained': mask2_values[6]}}


def source_hud_frames(hp, max_hp, mp, max_mp, xp, next_xp):
    # Match selected hud_player_values.cpp: wrapped signed*100 / signedmax,
    # HP/MP subtract1, source clamps, then HP also drives distress/hurt.
    def quotient(current, maximum):
        numerator = (current * 100) & 0xffffffff
        if numerator >= 0x80000000:
            numerator -= 0x100000000
        assert maximum, 'Source HUD denominator zero'
        result = abs(numerator) // abs(maximum)
        return -result if (numerator < 0) != (maximum < 0) else result
    hp_frame = min(99, max(0, quotient(hp, max_hp) - 1))
    mp_frame = min(99, quotient(mp, max_mp) - 1)
    xp_frame = min(99, quotient(xp, next_xp))
    return [hp_frame, mp_frame, xp_frame, hp_frame, hp_frame]


def preservation_scripts(transaction):
    """Bounded, private, reversible filename moves; no file contents pulled."""
    assert re.fullmatch(r'\.menu-ui-smoke-[0-9a-f]{32}', transaction)
    base = 'files/' + transaction
    patterns = 'files/dh2_[0-9][0-9][0-9].savegame files/dh2_[0-9][0-9][0-9].savegame.bak'
    preserve = f'''set -eu
test ! -e {base}
mkdir -p {base}/original {base}/synthetic
: > {base}/original.sha256
count=0
for file in {patterns}; do
  test -f "$file" || continue
  (cd files && sha256sum "${{file#files/}}") >> {base}/original.sha256
  mv "$file" {base}/original/
  count=$((count+1))
done
touch {base}/preserved
echo "$count"'''
    restore = f'''set -eu
test -d {base} || {{ echo 0; exit 0; }}
count=0
if test -f {base}/preserved; then
  for file in {patterns}; do
    test -f "$file" || continue
    test ! -e {base}/synthetic/"${{file##*/}}"
    mv "$file" {base}/synthetic/
    count=$((count+1))
  done
fi
for file in {base}/original/dh2_[0-9][0-9][0-9].savegame {base}/original/dh2_[0-9][0-9][0-9].savegame.bak; do
  test -f "$file" || continue
  test ! -e files/"${{file##*/}}"
  mv "$file" files/
done
if test -s {base}/original.sha256; then
  (cd files && sha256sum -c {transaction}/original.sha256 >/dev/null)
fi
touch {base}/restored
echo "$count"'''
    return preserve, restore


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    for name in ('adb', 'serial'):
        parser.add_argument('--' + name, required=True)
    for name in ('apk', 'output'):
        parser.add_argument('--' + name, type=Path, required=True)
    parser.add_argument('--class-index', type=int, choices=(0, 1, 2),
                        help='Run one class to resolve a remaining regression risk.')
    args = parser.parse_args()
    selected_classes = tuple(row for row in CLASSES if args.class_index is None or row[0] == args.class_index)
    assert args.serial.startswith('emulator-'), 'Emulator only'
    out = args.output.resolve()
    out.mkdir(parents=True, exist_ok=True)
    transaction = '.menu-ui-smoke-' + uuid.uuid4().hex
    preserve, restore = preservation_scripts(transaction)
    report = {'validation': 'FAIL', 'apk_sha256': hashlib.sha256(args.apk.read_bytes()).hexdigest(),
              'serial': args.serial, 'libraries': inspect_apk(args.apk),
              'scope': 'Actual original menu/name/class/Start Single Player taps, selected source profile creation/Assign, development Crypt continuation, native Character owner publication with an empty canonical V4 inventory over real LootTable resources, connected source HUD, occupied-slot reopen and Home/resume. Source _AddCharacter parity, SG4/GEAR inventory contents, full NativeStartGame/campaign/InitPost/gameplay controls remain open.',
              'private_transaction_directory': 'files/' + transaction,
              'personal_saves_pulled': False, 'cases': [], 'screenshots': []}
    events, pid, since, last_text = [], '', '', ''
    viewport_bounds = {}
    preservation_attempted = False

    def adb(*command, allow_failure=False, binary=False):
        try:
            result = subprocess.run([args.adb, '-s', args.serial, *command], capture_output=True,
                                    text=not binary, timeout=60)
        except subprocess.TimeoutExpired:
            raise RuntimeError('ADB timeout: ' + operation_context(command)) from None
        if result.returncode and not allow_failure:
            raise RuntimeError('ADB operation failed: ' + operation_context(command))
        return result.stdout if binary else result.stdout.strip()

    def private_script(script):
        # adb shell joins arguments, so quote the complete sh program once.
        return adb('shell', 'run-as ' + PACKAGE + ' sh -c ' + shlex.quote(script))

    def logs():
        nonlocal last_text
        assert adb('shell', 'pidof', PACKAGE) == pid, 'App process exited or changed'
        last_text = adb('logcat', '-d', '-T', since, '--pid=' + pid, '-v', 'brief')
        assert not BAD.search(last_text), 'Native/UI failure observed in private Logcat'
        return last_text

    def wait(predicate, label, seconds=45):
        deadline = time.monotonic() + seconds
        while time.monotonic() < deadline:
            text = logs()
            if predicate(text):
                return text
            time.sleep(.2)
        raise AssertionError('Timed out: ' + label)

    def collect_events():
        # Persist only the explicit nonpersonal source event allowlist.
        events.extend(line[line.index(match.group(0)):]
                      for line in last_text.splitlines()
                      if (match := SAFE_EVENTS.search(line)))

    def wait_focus(label):
        deadline = time.monotonic() + 25
        while time.monotonic() < deadline:
            focused = parse_focused_window(adb('shell', 'dumpsys', 'window'))
            input_windows = parse_input_focused_windows(adb('shell', 'dumpsys', 'input'))
            expected = {'package': PACKAGE, 'activity': PACKAGE + '.MainActivity'}
            expected_input = {'display_id': 0, **expected}
            if focused == expected and expected_input in input_windows:
                report.setdefault('focused_window_receipts', []).append(
                    {'phase': label, **focused, 'InputDispatcher_display_id': 0})
                return
            logs()
            time.sleep(.2)
        raise AssertionError('Timed out: MainActivity input focus at ' + label)

    def launch():
        nonlocal pid, since
        if pid:
            collect_events()
        old_pid = adb('shell', 'pidof', PACKAGE, allow_failure=True)
        adb('shell', 'am', 'force-stop', PACKAGE)
        deadline = time.monotonic() + 25
        while adb('shell', 'pidof', PACKAGE, allow_failure=True):
            assert time.monotonic() < deadline, 'Old app process did not retire before fresh launch'
            time.sleep(.2)
        since = adb('shell', "date '+%m-%d %H:%M:%S.000'")
        # API37's synchronous Activity launch wait can hang after the app has
        # rendered. Prove startup from a fresh PID, actual submitted movie and
        # both window/input focus below instead of depending on that wait.
        reply = adb('shell', 'am', 'start', '-n', PACKAGE + '/.MainActivity')
        assert 'Starting: Intent' in reply and 'Error:' not in reply and 'Activity not started' not in reply, 'Fresh launcher start failed'
        deadline = time.monotonic() + 25
        pid, candidate, stable = '', '', 0
        while stable < 2 and time.monotonic() < deadline:
            observed = adb('shell', 'pidof', PACKAGE, allow_failure=True)
            if not re.fullmatch(r'\d+', observed) or observed == old_pid:
                candidate, stable = '', 0
            else:
                stable = stable + 1 if observed == candidate else 1
                candidate = observed
            time.sleep(.2)
        assert stable == 2, 'Stable fresh app process unavailable'
        pid = candidate
        report.setdefault('fresh_process_receipts', []).append({'pid': pid, 'stable_observations': stable})
        text = wait(lambda t: 'Original front/HUD screen submitted | screen main' in t, 'rendered original main movie')
        assert 'Original front screen loaded | screen main' in text, 'Original movie not loaded'
        wait_focus('fresh launch')

    def viewport(text=None):
        surface_rows = re.findall(r'Surface resized to (\d+) x (\d+)', text if text is not None else logs())
        assert surface_rows, 'Actual NativeSurface dimensions unavailable'
        surface = tuple(map(int, surface_rows[-1]))
        key = (pid, surface)
        if key in viewport_bounds:
            return viewport_bounds[key], surface
        # This fixed full-screen NativeSurface keeps its bounds until a source
        # resize or process change. Repeated accessibility idle waits during
        # the authored class camera transition are unreliable on API37.
        adb('shell', 'uiautomator', 'dump', '/sdcard/dh2-menu-smoke-window.xml')
        document = adb('shell', 'cat', '/sdcard/dh2-menu-smoke-window.xml')
        root = ET.fromstring(document)
        node = next((n for n in root.iter('node') if n.get('content-desc') == VIEWPORT), None)
        assert node is not None, 'NativeSurface bounds unavailable'
        bounds = tuple(map(int, re.findall(r'\d+', node.get('bounds', ''))))
        assert len(bounds) == 4, 'Malformed NativeSurface bounds'
        stage_point(bounds, surface, (240, 160))
        viewport_bounds[key] = bounds
        return bounds, surface

    def image():
        raw = adb('exec-out', 'screencap', '-p', binary=True)
        assert raw.startswith(b'\x89PNG'), 'Screenshot PNG unavailable'
        return raw, Image.open(io.BytesIO(raw)).convert('RGB')

    def visual_ready(stage):
        # Wait for the next actual button to settle. In Crypt this is the
        # opaque Android Attack overlay, so Android's resume animation must
        # settle too. Never send a timed input burst while it is changing.
        bounds, surface = viewport()
        roi = button_rectangle(stage, bounds, surface)
        deadline, previous, stable = time.monotonic() + 20, None, 0
        while time.monotonic() < deadline:
            logs()
            _, picture = image()
            crop = picture.crop(roi).resize((70, 28))
            if previous is not None:
                difference = sum(ImageStat.Stat(ImageChops.difference(crop, previous)).mean) / 3
                stable = stable + 1 if difference < 2.5 else 0
                if stable >= 3:
                    assert max(ImageStat.Stat(crop).stddev) > 3, 'Authored button pixels are blank'
                    report.setdefault('visual_readiness_receipts', []).append(
                        {'stage': stage, 'stable_frame_comparisons': stable, 'ROI': list(roi)})
                    return
            previous = crop
            time.sleep(.2)
        raise AssertionError('Authored ' + stage + ' button did not visually settle')

    def screenshot(name):
        raw, _ = image()
        path = out / (name + '.png')
        path.write_bytes(raw)
        report['screenshots'].append({'file': path.name, 'sha256': hashlib.sha256(raw).hexdigest()})

    def tap(name):
        wait_focus('tap ' + name)
        bounds, surface = viewport()
        x, y = stage_point(bounds, surface, POINTS[name])
        adb('shell', 'input', '-d', '0', 'tap', str(x), str(y))

    def menu_after_tap(button, name):
        offset = len(logs())
        tap(button)
        wait(lambda t: 'Owned menu navigation | push ' + name + ' |' in t[offset:], 'authored ' + name + ' transition')

    def select_slot(slot):
        # A fresh original movie starts current_slot0. Observe each genuine
        # GetSlot/preview result as the authored arrow changes that field.
        for target in range(1, slot + 1):
            offset = len(logs())
            tap('next_slot')
            wait(lambda t: 'Native menu preview selection | slot %d |' % target in t[offset:], 'authored slot arrow')
            visual_ready('main')

    def start(slot, character_class, preset, animation_table):
        before = len(logs())
        tap('single_player')
        text = wait(lambda t: ('Menu game start | slot %d | Crypt |' % slot in t[before:] and
                               HUD.search(t[before:]) is not None), 'Crypt and connected player HUD', 70)
        fresh_seed_events = SOURCE_RNG_GSINIT.findall(text[before:])
        assert len(fresh_seed_events) == 1 and fresh_seed_events[0][1] == '0', 'Fresh game must apply exactly one source GSInit seed and clear sync seed'
        assert not SOURCE_RNG_UNLOAD.search(text[before:]), 'Fresh game start must not apply Level::Unload seed'
        return verify_start(text[before:], slot, character_class, preset, animation_table)

    def back_main():
        wait_focus('Back from Crypt')
        visual_ready('crypt')
        wait_focus('Back from settled Crypt')
        offset = len(logs())
        adb('shell', 'input', '-d', '0', 'keyevent', 'KEYCODE_BACK')
        text = wait(lambda t: 'Original front/HUD screen submitted | screen main' in t[offset:], 'normal Back return to menu')
        unload_seed_events = SOURCE_RNG_UNLOAD.findall(text[offset:])
        assert len(unload_seed_events) == 1 and unload_seed_events[0][1] == '0', 'Back-to-menu must apply exactly one source Level::Unload seed and clear sync seed'
        assert not SOURCE_RNG_GSINIT.search(text[offset:]), 'Back-to-menu must not apply the fresh-game seed'
        assert 'Native Quest terminal discard | destroyed b8 192 | log118 192 | source log vectors empty' in text[offset:], 'Back must destroy both canonical Quest logs before returning to the menu'
        visual_ready('main')

    def gameplay_controls():
        # Operate the actual visible Android controls. This checks delivered
        # movement and attack input, not complete combat or authored skill UI.
        wait_focus('Crypt controls')
        adb('shell', 'uiautomator', 'dump', '/sdcard/dh2-menu-controls-window.xml')
        nodes = list(ET.fromstring(adb('shell', 'cat', '/sdcard/dh2-menu-controls-window.xml')).iter('node'))
        def bounds(description):
            node = next(n for n in nodes if n.get('content-desc') == description)
            return tuple(map(int, re.findall(r'-?\d+', node.get('bounds'))))
        left, top, right, bottom = bounds('Movement control')
        cx, cy = (left+right)//2, (top+bottom)//2
        prior = len(logs())
        adb('shell', 'input', '-d', '0', 'swipe', str(cx), str(cy), str(cx), str(cy-(right-left)//3), '900')
        pattern = re.compile(r'Player position (-?[\d.]+) (-?[\d.]+) (-?[\d.]+) \| moved (\d+) \| blocked (\d+)')
        text = wait(lambda t: pattern.search(t[prior:]) is not None, 'joystick movement delivery')
        position = pattern.findall(text[prior:])[-1]
        assert int(position[3]) > 0, 'Visible joystick produced no physical movement'
        left, top, right, bottom = bounds('Attack nearby enemy')
        prior = len(logs())
        adb('shell', 'input', '-d', '0', 'tap', str((left+right)//2), str((top+bottom)//2))
        text = wait(lambda t: 'Player input |' in t[prior:], 'visible attack button delivery')
        response = re.findall(r'Player input \| ([^\r\n]+)', text[prior:])[-1]
        assert response in ('Attacking', 'Walk closer to an enemy', 'Attack is cooling down', 'Attack is already in progress'), 'Attack control rejected available player'
        report['development_controls'] = {'physical_movement_steps': int(position[3]), 'blocked_steps': int(position[4]),
            'position': list(map(float, position[:3])), 'attack_response': response, 'full_combat_verified': False}
        screenshot('0-crypt-after-controls')

    failure = None
    try:
        report['api'] = int(adb('shell', 'getprop', 'ro.build.version.sdk'))
        report['page_size'] = int(adb('shell', 'getconf', 'PAGE_SIZE'))
        report['abi'] = adb('shell', 'getprop', 'ro.product.cpu.abi')
        assert (report['api'], report['page_size'], report['abi']) == (37, 16384, 'x86_64'), 'API37/16KiB x86_64 required'
        adb('shell', 'am', 'force-stop', PACKAGE, allow_failure=True)
        assert 'Success' in adb('install', '-r', str(args.apk.resolve())), 'APK install failed'
        adb('shell', 'am', 'force-stop', PACKAGE)
        preservation_attempted = True
        report['original_files_preserved'] = int(private_script(preserve))
        for index, character_class, animation_table, preset in selected_classes:
            # The original menu reveals another empty slot only after a
            # profile exists. An isolated class check uses its first empty
            # slot; class selection and slot ordinal are separate values.
            slot = index if args.class_index is None else 0
            launch()
            visual_ready('main')
            screenshot('%d-main-initial' % index)
            select_slot(slot)
            screenshot('%d-main-empty' % index)
            menu_after_tap('main', 'menu_EnterName')
            visual_ready('name')
            screenshot('%d-name-empty' % index)
            # One real A-key touch creates a deliberately synthetic name.
            # Wait for the field/button pixels after it, then confirm.
            tap('key_a')
            visual_ready('name')
            screenshot('%d-name-synthetic' % index)
            offset = len(logs())
            tap('name_confirm')
            text = wait(lambda t: ('Owned menu navigation | push menu_SelectClass |' in t[offset:] and
                                   CLASS_INDEX.search(t[offset:]) is not None), 'authored class menu')
            current, _ = CLASS_INDEX.findall(text[offset:])[-1]
            current = int(current)
            assert current <= index, 'Unexpected retained class index; cannot use right-arrow progression'
            while current < index:
                prior = len(logs())
                tap('class_right')
                text = wait(lambda t: any(int(m[0]) == current + 1 for m in CLASS_INDEX.findall(t[prior:])), 'fresh class-index update')
                current, actual_preset = CLASS_INDEX.findall(text[prior:])[-1]
                current = int(current)
                assert CLASSES[current][3] == actual_preset, 'Authored class index/preset mismatch'
                visual_ready('class')
            visual_ready('class')
            screenshot('%d-class-%s' % (index, preset))
            offset = len(logs())
            tap('class_confirm')
            text = wait(lambda t: ('Native menu profile created | slot %d | class %d |' % (slot, character_class) in t[offset:] and
                                   'Owned menu navigation | push menu_StartGame |' in t[offset:]), 'source profile creation and real Start movie')
            assert len(re.findall(r'Native menu profile created \|', text)) == 1, 'Profile creation replayed in fresh process'
            visual_ready('start')
            screenshot('%d-start-new' % index)
            created = start(slot, character_class, preset, animation_table)
            screenshot('%d-crypt-new' % index)
            if index == 0:
                gameplay_controls()
            back_main()
            screenshot('%d-main-back' % index)
            # Reopen occupied after process restart, which resets Info664 and
            # proves that the real Start button supplies its assignment.
            launch()
            visual_ready('main')
            select_slot(slot)
            menu_after_tap('main', 'menu_StartGame')
            visual_ready('start')
            screenshot('%d-start-occupied' % index)
            assert not re.search(r'Native menu profile created \|', logs()), 'Occupied slot was recreated'
            reopened = start(slot, character_class, preset, animation_table)
            screenshot('%d-crypt-occupied' % index)
            before = len(logs())
            home_pid = pid
            wait_focus('Home from Crypt')
            adb('shell', 'input', '-d', '0', 'keyevent', 'KEYCODE_HOME')
            deadline = time.monotonic() + 15
            while True:
                activity = adb('shell', 'dumpsys', 'activity', 'activities')
                resumed = [line for line in activity.splitlines()
                           if 'mResumedActivity:' in line or 'topResumedActivity=' in line]
                if resumed and all(PACKAGE not in line for line in resumed):
                    break
                assert time.monotonic() < deadline, 'Actual Home/background transition missing'
                time.sleep(.2)
            # am start brings the existing Activity forward without force-stop.
            assert 'Status: ok' in adb('shell', 'am', 'start', '-W', '-n', PACKAGE + '/.MainActivity'), 'Resume failed'
            text = wait(lambda t: HUD.search(t[before:]) is not None, 'connected HUD after Home/resume', 70)
            assert not SOURCE_RNG_GSINIT.search(text[before:]) and not SOURCE_RNG_UNLOAD.search(text[before:]), 'Home/resume must retain the source RNG session without lifecycle reseeding'
            wait_focus('Home/resume')
            assert pid == home_pid and adb('shell', 'pidof', PACKAGE) == home_pid, 'Home/resume replaced process'
            classes = CLASS.findall(text)
            assert classes[-1] == (str(slot), str(character_class), preset), 'Home/resume changed class'
            resumed_hud = HUD.findall(text[before:])[-1]
            assert resumed_hud[2] == reopened['character'], 'Home/resume changed canonical Character'
            assert tuple(map(int, (resumed_hud[4], resumed_hud[6], resumed_hud[8]))) == (reopened['max_HP'], reopened['max_MP'], reopened['next_XP']), 'Home/resume changed cached maxima'
            resumed_quests = QUEST_STARTUP.findall(text[before:])
            assert resumed_quests and tuple(map(int, resumed_quests[-1])) == (reopened['quest_startup']['gameplay_Save'], reopened['quest_startup']['Character'], 192, 192, 1608, 1), 'Home/resume must retain the same Quest owner and Save'
            resumed_mask2 = PLAYER_SAVE_MASK2.findall(text[before:])
            assert len(resumed_mask2) == 1 and tuple(map(int, resumed_mask2[-1])) == (
                reopened['source_save_mask2']['character'], reopened['source_save_mask2']['save'],
                reopened['source_save_mask2']['loader'], reopened['source_save_mask2']['character'],
                reopened['source_save_mask2']['character'], 1, 1), 'Home/resume must retain the source Save association without replaying SG_Load(2)'
            screenshot('%d-crypt-resumed' % index)
            back_main()
            screenshot('%d-main-final' % index)
            report['cases'].append({'class_index': index, 'created': created, 'occupied_after_restart': reopened,
                                    'normal_back_to_main': True, 'Home_resume_same_class_and_character': True,
                                    'Home_resume_same_Quest_owner': True,
                                    'Home_resume_same_Player_Save_association_without_mask2_replay': True})
        checked_slots = [row[0] for row in selected_classes] if args.class_index is None else [0]
        private_script('set -eu\n' + '\n'.join('test -f files/dh2_%03d.savegame' % slot for slot in checked_slots))
        report['synthetic_primary_profiles_created'] = len(selected_classes)
        report['validation'] = 'PASS'
    except Exception as exc:
        # Exception messages are deliberately our own fixed assertions; never
        # persist raw adb stdout/stderr, names, profiles or complete Logcat.
        failure = exc
        report['failure'] = {'type': type(exc).__name__, 'message': str(exc) if isinstance(exc, (AssertionError, RuntimeError)) else 'Smoke operation failed'}
    finally:
        if pid:
            collect_events()
        try:
            if preservation_attempted:
                adb('shell', 'am', 'force-stop', PACKAGE)
                report['synthetic_files_archived'] = int(private_script(restore))
                report['original_files_restored_and_device_checksums_verified'] = True
            else:
                report['personal_files_touched'] = False
                adb('shell', 'am', 'force-stop', PACKAGE, allow_failure=True)
        except Exception:
            report['validation'] = 'FAIL'
            report['original_files_restored_and_device_checksums_verified'] = False
            if preservation_attempted:
                report['restoration_failure'] = 'Private transaction retained on device; stop app and recover originals there before further tests.'
            else:
                report['cleanup_failure'] = 'App force-stop failed before profile preservation; no personal files touched.'
            failure = failure or RuntimeError('On-device campaign restoration failed')
        (out / 'menu-source-events.log').write_text('\n'.join(events) + '\n', encoding='utf-8')
        gsinit_events = SOURCE_RNG_GSINIT.findall('\n'.join(events))
        unload_events = SOURCE_RNG_UNLOAD.findall('\n'.join(events))
        expected_lifecycle_events = 2 * len(selected_classes)
        report['source_random_lifecycle'] = {
            'GSInit_seed_events': len(gsinit_events),
            'Level_Unload_seed_events': len(unload_events),
            'expected_each': expected_lifecycle_events,
            'home_resume_reseeded': False,
            'synchronized_seed_zero': all(row[1] == '0' for row in gsinit_events + unload_events),
        }
        if report.get('validation') == 'PASS' and (
                len(gsinit_events) != expected_lifecycle_events or
                len(unload_events) != expected_lifecycle_events or
                not report['source_random_lifecycle']['synchronized_seed_zero']):
            report['validation'] = 'FAIL'
            report['failure'] = {'type': 'AssertionError', 'message': 'Source RNG lifecycle event totals or synchronized seed values differ'}
            failure = failure or RuntimeError('Source RNG lifecycle verification failed')
        report['source_events_sha256'] = hashlib.sha256((out / 'menu-source-events.log').read_bytes()).hexdigest()
        (out / 'menu-ui-runtime-smoke.json').write_text(json.dumps(report, indent=2) + '\n', encoding='utf-8')
    print(json.dumps({'validation': report['validation'], 'cases': len(report['cases']),
                      'restored': report.get('original_files_restored_and_device_checksums_verified', False),
                      'report': str(out / 'menu-ui-runtime-smoke.json')}))
    if failure:
        raise SystemExit(1)


if __name__ == '__main__':
    main()
