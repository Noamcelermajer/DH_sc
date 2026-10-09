#!/usr/bin/env python3
"""Replay preserved original ARM bytes; boundary services are controlled fixtures."""
import argparse
import ctypes as c
import hashlib
import json
import random
import re
import struct
import subprocess
import tempfile
from pathlib import Path
from unicorn import Uc, UC_ARCH_ARM, UC_MODE_ARM, UC_HOOK_CODE
from unicorn.arm_const import UC_ARM_REG_R0, UC_ARM_REG_R1, UC_ARM_REG_R2, UC_ARM_REG_R3, UC_ARM_REG_LR, UC_ARM_REG_PC, UC_ARM_REG_SP

ROOT = Path(__file__).resolve().parents[1]
REPO = ROOT.parents[1]
ASM = REPO / 'recovered/native/assembly/libDungeonHunter2.so'
REGS = (UC_ARM_REG_R0, UC_ARM_REG_R1, UC_ARM_REG_R2, UC_ARM_REG_R3)
CHAR, VT, APP, LEVEL, PLAYER, STACK, STOP = (0x1000000, 0x1003000, 0x1004000, 0x1005000, 0x1006000, 0x101f000, 0x1007000)
OWNER = CHAR + 0x560
GOT = 0x994a98
OPS = ('constant', 'difficulty_unlocked', 'property_int', 'is_player', 'is_network',
       'level_restricted', 'assert_nonnegative', 'debug_load', 'debug_switch',
       'property_raw', 'level_difficulty', 'xp_bonus_raw', 'property_add_raw',
       'level_up', 'property_set_raw', 'player_index', 'increase_stat')

def i32(v): return c.c_int32(v).value
def bytes_for(path, address, length):
    entries = {}
    for line in path.read_text().splitlines():
        m = re.match(r'^([0-9a-f]{8})  ((?:[0-9a-f]{2} )+)', line)
        if m:
            start = int(m[1], 16)
            for offset, byte in enumerate(bytes.fromhex(m[2])): entries[start + offset] = byte
    return bytes(entries[a] for a in range(address, address + length))

class State:
    def __init__(self, case):
        self.case = dict(case)
        self.events = []
        self.xp = case['xp']
        self.threshold = case['threshold']
        self.raw_reads = 0
    def call(self, op, arg=0, value=0, extra=0):
        self.events.append((op, arg, value, extra))
        q = self.case
        if op == 'constant': return q['caps'][arg]
        if op == 'difficulty_unlocked': return q['difficulty']
        if op == 'property_int': return q['level']
        if op in ('is_player', 'is_network', 'level_restricted', 'level_difficulty', 'xp_bonus_raw', 'player_index'):
            return q[op]
        if op == 'debug_switch': return q['one_kill'] if arg == 0 else 1
        if op == 'property_raw':
            self.raw_reads += 1
            # Emulate synchronous read-boundary mutations without a stale copy.
            if self.raw_reads == q.get('mutate_read', -1):
                self.xp = q.get('mutate_xp', self.xp)
                self.threshold = q.get('mutate_threshold', self.threshold)
            return self.xp if arg == 33 else self.threshold
        if op == 'property_add_raw': self.xp = i32(self.xp + value)
        if op == 'property_set_raw': self.xp = value
        if op == 'level_up':
            self.xp = q['after_xp']
            self.threshold = q['after_threshold']
        return 0

class Original:
    def __init__(self):
        self.uc = Uc(UC_ARCH_ARM, UC_MODE_ARM)
        self.uc.mem_map(0x300000, 0x700000)
        self.uc.mem_map(CHAR, 0x20000)
        self.ranges = []
        for name, address, length in (('Character-1405a63e8a78-001.asm', 0x3bf498, 912),
                                      ('CharProperties-bd859354c915-001.asm', 0x3de7ec, 40)):
            data = bytes_for(ASM / name, address, length)
            self.uc.mem_write(address, data)
            self.ranges.append({'address': hex(address), 'size': length, 'sha256': hashlib.sha256(data).hexdigest(), 'assembly': name})
        self.write(CHAR, VT)
        self.write(VT + 0x28, STOP + 4)
        self.write(VT + 0x54, STOP + 8)
        for offset, pointer in ((0x40ac, STOP + 0x100), (0x37f4, APP), (0x884, STOP + 0x200),
                                (0x2714, STOP + 0x300), (0x39c0, STOP + 0x400)):
            self.write(GOT + offset, pointer)
        self.write(STOP + 0x100, 0x12345678)
        self.write(STOP + 0x400, 0)  # Original assertions disabled; amount still applied.
        self.uc.hook_add(UC_HOOK_CODE, self.hook)
    def write(self, address, value): self.uc.mem_write(address, struct.pack('<I', value & 0xffffffff))
    def reg(self, n): return self.uc.reg_read(REGS[n])
    def ret(self, value=0):
        self.uc.reg_write(UC_ARM_REG_R0, value & 0xffffffff)
        self.uc.reg_write(UC_ARM_REG_PC, self.uc.reg_read(UC_ARM_REG_LR))
    def hook(self, uc, address, size, user):
        s = self.state
        if address == STOP:
            uc.emu_stop()
            return
        if address == 0x3de7ec:
            assert self.reg(0) == OWNER
            s.call('xp_bonus_raw')
            return  # Execute the actual original arithmetic body, not a fixture.
        if 0x3bf498 <= address < 0x3bf7e8 or 0x3de7ec <= address < 0x3de814: return
        if address == 0x4c4bdc:
            lr = uc.reg_read(UC_ARM_REG_LR)
            value = s.call('constant', {0x3bf4e8: 0, 0x3bf6a4: 1, 0x3bf6c0: 2}[lr])
        elif address == 0x3bb918: value = s.call('difficulty_unlocked')
        elif address == 0x3df6e0:
            assert self.reg(0) == OWNER and self.reg(1) == 19 and self.reg(2) == 0
            value = s.call('property_int', 19)
        elif address in (STOP + 4, STOP + 8): value = s.call('is_player' if address == STOP + 4 else 'is_network')
        elif address == 0x31f594:
            kind = 'level_restricted' if uc.reg_read(UC_ARM_REG_LR) == 0x3bf580 else 'level_difficulty'
            self.write(LEVEL + (0x150 if kind == 'level_restricted' else 0x118), s.call(kind))
            value = LEVEL
        elif address == 0x337888: value = s.call('debug_load')
        elif address == 0x3140ec: value = self.reg(0)  # std::string ctor, boundary fixture.
        elif address == 0x337a88:
            value = s.call('debug_switch', 0 if uc.reg_read(UC_ARM_REG_LR) == 0x3bf5cc else 1)
        elif address == 0x318254: value = 0  # std::string dtor.
        elif address == 0x3bd130:
            assert self.reg(0) == OWNER
            value = s.call('property_raw', self.reg(1))
        elif address in (0x3e0708, 0x3e07a0):
            assert self.reg(0) == OWNER and self.reg(1) == 33
            value = s.call('property_add_raw' if address == 0x3e0708 else 'property_set_raw', 33, i32(self.reg(2)))
        elif address == 0x3beb88: value = s.call('level_up', i32(self.reg(1)))
        elif address == 0x36eea8:
            assert self.reg(1) == CHAR and self.reg(2) == 0
            self.write(PLAYER + 0x670, s.call('player_index'))
            value = PLAYER
        elif address == 0x3790e0: value = s.call('increase_stat', self.reg(1), i32(self.reg(2)), i32(self.reg(3)))
        else: raise AssertionError(f'Unexpected original PC {address:#x}')
        self.ret(value)
    def run(self, case, amount, stat):
        self.state = State(case)
        self.write(OWNER + 0xdb8, case['xp_bonus_raw'])
        self.uc.reg_write(UC_ARM_REG_SP, STACK)
        self.uc.reg_write(UC_ARM_REG_LR, STOP)
        for reg, value in zip(REGS, (CHAR, amount & 0xffffffff, int(stat))): self.uc.reg_write(reg, value)
        # The original assertion path has no call at assert level zero.
        if amount < 0:
            # Record the projection boundary exactly when the original branches to it.
            def assertion(uc, address, size, user): self.state.call('assert_nonnegative', amount)
            hook = self.uc.hook_add(UC_HOOK_CODE, assertion, begin=0x3bf790, end=0x3bf790)
        self.uc.emu_start(0x3bf498, STOP, count=10000)
        if amount < 0: self.uc.hook_del(hook)
        assert self.uc.reg_read(UC_ARM_REG_PC) == STOP
        return self.reg(0), self.state

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--report', type=Path, required=True)
    args = parser.parse_args()
    original = Original()
    rng = random.Random(20261009)
    callback_type = c.CFUNCTYPE(c.c_bool, c.c_void_p, c.c_uint32, c.c_int32, c.c_int32, c.c_int32, c.POINTER(c.c_int32))
    with tempfile.TemporaryDirectory() as tmp:
        library = Path(tmp) / 'xp.so'
        command = ['c++', '-std=c++17', '-Wall', '-Wextra', '-Werror', '-fsanitize=undefined',
                   '-fno-sanitize-recover=all', '-fPIC', '-shared', str(ROOT / 'character_give_xp_v1.cpp'),
                   str(ROOT / 'tests/character_give_xp_v1_fixture.cpp'), '-o', str(library)]
        subprocess.run(command, check=True)
        lib = c.CDLL(str(library))
        lib.xp_modified.argtypes = [c.c_int32, c.c_int32]
        lib.xp_modified.restype = c.c_int32
        lib.xp_give.argtypes = [callback_type, c.c_void_p, c.c_int32, c.c_bool, c.POINTER(c.c_int32)]
        lib.xp_reward.argtypes = [callback_type, c.c_void_p, c.c_int32, c.c_bool, c.POINTER(c.c_bool)]
        lib.xp_reward.restype = c.c_int32
        edges = [-2147483648, -2147483647, -25601, -25600, -25599, -256, -1, 0, 1, 255, 256, 257, 2147458047, 2147483647]
        arithmetic = 0
        for amount, bonus in [(a, b) for a in edges for b in edges] + [(i32(rng.getrandbits(32)), i32(rng.getrandbits(32))) for _ in range(5000)]:
            original.write(OWNER + 0xdb8, bonus)
            original.state = State({'xp': 0, 'threshold': 1, 'xp_bonus_raw': bonus})
            original.uc.reg_write(UC_ARM_REG_SP, STACK)
            original.uc.reg_write(UC_ARM_REG_LR, STOP)
            original.uc.reg_write(UC_ARM_REG_R0, OWNER)
            original.uc.reg_write(UC_ARM_REG_R1, amount & 0xffffffff)
            original.uc.emu_start(0x3de7ec, STOP, count=50)
            assert i32(original.reg(0)) == lib.xp_modified(amount, bonus), (amount, bonus)
            arithmetic += 1
        cases = []
        for n in range(1200):
            q = dict(caps=(20, 40, 60), difficulty=rng.choice([-1, 0, 1, 2, 3]), level=rng.choice([1, 19, 20, 39, 40, 59, 60]),
                     is_player=int(n % 13 != 0), is_network=int(n % 17 == 0), level_restricted=int(n % 19 == 0),
                     level_difficulty=rng.choice([0, 1, 2]), xp_bonus_raw=rng.choice(edges + [0, 2560]),
                     player_index=rng.choice([0, 1, 7, -1]), one_kill=int(n % 5 == 0),
                     xp=rng.choice(edges + [10 * 256]), threshold=rng.choice(edges + [20 * 256]),
                     after_xp=rng.choice(edges), after_threshold=rng.choice(edges),
                     mutate_read=3 if n % 7 == 0 else -1, mutate_xp=rng.choice(edges), mutate_threshold=rng.choice(edges))
            cases.append((q, rng.choice(edges + [100 * 256]), bool(n % 2)))
        trace_calls = failures = grants = levels = 0
        for q, amount, stat in cases:
            granted, old = original.run(q, amount, stat)
            state = State(q)
            @callback_type
            def callback(context, op, arg, value, extra, out):
                out[0] = state.call(OPS[op], arg, value, extra)
                return True
            result = (c.c_int32 * 6)()
            lib.xp_give(callback, None, amount, stat, result)
            assert result[0] == 0 and result[1] == granted
            assert state.events == old.events, (q, amount, stat, state.events, old.events)
            assert (state.xp, state.threshold) == (old.xp, old.threshold)
            assert result[4] == len(old.events)
            state = State(q)
            reward_granted = c.c_bool(not bool(granted))
            assert lib.xp_reward(callback, None, amount, stat, c.byref(reward_granted)) == 0
            assert reward_granted.value == bool(granted) and state.events == old.events
            assert (state.xp, state.threshold) == (old.xp, old.threshold)
            trace_calls += len(old.events)
            grants += granted
            levels += sum(e[0] == 'level_up' for e in old.events)
            # Inject failure at each reached boundary; effects before it survive.
            for fail_at in range(len(old.events)):
                failed = State(q)
                @callback_type
                def failing(context, op, arg, value, extra, out):
                    if len(failed.events) == fail_at:
                        failed.events.append((OPS[op], arg, value, extra))
                        return False
                    out[0] = failed.call(OPS[op], arg, value, extra)
                    return True
                lib.xp_give(failing, None, amount, stat, result)
                assert result[0] == 2 and result[1] == 0 and result[4] == fail_at + 1
                assert failed.events == old.events[:fail_at + 1]
                failures += 1
        report = dict(passed=True, original_ranges=original.ranges, arithmetic_cases=arithmetic,
                      coordinator_cases=len(cases), compared_service_calls=trace_calls, granted_cases=grants,
                      quest_reward_adapter_cases=len(cases),
                      level_up_handoffs=levels, failure_prefix_cases=failures, seed=20261009,
                      source_sha256={p.name: hashlib.sha256(p.read_bytes()).hexdigest() for p in
                                     [ROOT / 'character_give_xp_v1.cpp', ROOT / 'character_give_xp_v1.hpp']},
                      limitations=['ARM bytes reconstructed from archived assembly, not freshly extracted ELF.',
                                   'External property mutation, LevelUp, constants, player lookup and statistics use controlled boundary fixtures.',
                                   'No Android or live gameplay validation.', 'Original assertion level 2 crash not executed.'],
                      sanitizer='UBSan; no recovery', compiler_command=[s.replace(str(REPO) + '/', '') for s in command[:-1]] + ['<temporary-library>'])
        args.report.parent.mkdir(parents=True, exist_ok=True)
        args.report.write_text(json.dumps(report, indent=2) + '\n')
        print(json.dumps(report, indent=2))

if __name__ == '__main__': main()
