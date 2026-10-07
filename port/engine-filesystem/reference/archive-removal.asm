; Exact ARM ELF range used by archive-management.hpp/.cpp.
; Addresses are original ELF virtual addresses; this is evidence, not assembler input.

; FUNCTION 0x0056ce60, declared_size=512, range_size=512, mode=arm
; class-group: glitch::io::CFileSystem
; alias: _ZN6glitch2io11CFileSystem17removeFileArchiveEPKc
; demangled: glitch::io::CFileSystem::removeFileArchive(char const*)
; decoder-mode: arm
0056ce60  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0056ce64  08 30 90 e5                                      ldr r3, [r0, #8]
0056ce68  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0056ce6c  00 40 a0 e1                                      mov r4, r0
0056ce70  01 70 a0 e1                                      mov r7, r1
0056ce74  02 20 63 e0                                      rsb r2, r3, r2
0056ce78  42 21 a0 e1                                      asr r2, r2, #2
0056ce7c  01 60 52 e2                                      subs r6, r2, #1
0056ce80  25 00 00 4a                                      bmi #0x56cf1c
0056ce84  07 21 42 e2                                      sub r2, r2, #0xc0000001
0056ce88  02 51 a0 e1                                      lsl r5, r2, #2
0056ce8c  03 00 00 ea                                      b #0x56cea0
0056ce90  01 60 56 e2                                      subs r6, r6, #1
0056ce94  04 50 45 e2                                      sub r5, r5, #4
0056ce98  1f 00 00 4a                                      bmi #0x56cf1c
0056ce9c  08 30 94 e5                                      ldr r3, [r4, #8]
0056cea0  05 30 93 e7                                      ldr r3, [r3, r5]
0056cea4  08 10 93 e5                                      ldr r1, [r3, #8]
0056cea8  00 00 51 e3                                      cmp r1, #0
0056ceac  04 00 00 0a                                      beq #0x56cec4
0056ceb0  01 00 a0 e1                                      mov r0, r1
0056ceb4  00 30 91 e5                                      ldr r3, [r1]
0056ceb8  0f e0 a0 e1                                      mov lr, pc
0056cebc  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0056cec0  00 10 a0 e1                                      mov r1, r0
0056cec4  07 00 a0 e1                                      mov r0, r7
0056cec8  13 85 f6 eb                                      bl #0x30e31c
0056cecc  00 00 50 e3                                      cmp r0, #0
0056ced0  ee ff ff 1a                                      bne #0x56ce90
0056ced4  08 30 94 e5                                      ldr r3, [r4, #8]
0056ced8  05 00 93 e7                                      ldr r0, [r3, r5]
0056cedc  a8 c1 f6 eb                                      bl #0x31d584
0056cee0  08 00 94 e5                                      ldr r0, [r4, #8]
0056cee4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0056cee8  05 00 80 e0                                      add r0, r0, r5
0056ceec  04 10 80 e2                                      add r1, r0, #4
0056cef0  03 00 51 e1                                      cmp r1, r3
0056cef4  04 00 00 0a                                      beq #0x56cf0c
0056cef8  01 20 53 e0                                      subs r2, r3, r1
0056cefc  03 10 a0 01                                      moveq r1, r3
0056cf00  01 00 00 0a                                      beq #0x56cf0c
0056cf04  0b 84 f6 eb                                      bl #0x30df38
0056cf08  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0056cf0c  04 10 41 e2                                      sub r1, r1, #4
0056cf10  0c 10 84 e5                                      str r1, [r4, #0xc]
0056cf14  01 00 a0 e3                                      mov r0, #1
0056cf18  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0056cf1c  14 30 94 e5                                      ldr r3, [r4, #0x14]
0056cf20  18 50 94 e5                                      ldr r5, [r4, #0x18]
0056cf24  05 50 63 e0                                      rsb r5, r3, r5
0056cf28  45 51 a0 e1                                      asr r5, r5, #2
0056cf2c  01 60 55 e2                                      subs r6, r5, #1
0056cf30  25 00 00 4a                                      bmi #0x56cfcc
0056cf34  07 51 45 e2                                      sub r5, r5, #0xc0000001
0056cf38  05 51 a0 e1                                      lsl r5, r5, #2
0056cf3c  03 00 00 ea                                      b #0x56cf50
0056cf40  01 60 56 e2                                      subs r6, r6, #1
0056cf44  04 50 45 e2                                      sub r5, r5, #4
0056cf48  1f 00 00 4a                                      bmi #0x56cfcc
0056cf4c  14 30 94 e5                                      ldr r3, [r4, #0x14]
0056cf50  05 30 93 e7                                      ldr r3, [r3, r5]
0056cf54  08 10 93 e5                                      ldr r1, [r3, #8]
0056cf58  00 00 51 e3                                      cmp r1, #0
0056cf5c  04 00 00 0a                                      beq #0x56cf74
0056cf60  01 00 a0 e1                                      mov r0, r1
0056cf64  00 30 91 e5                                      ldr r3, [r1]
0056cf68  0f e0 a0 e1                                      mov lr, pc
0056cf6c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0056cf70  00 10 a0 e1                                      mov r1, r0
0056cf74  07 00 a0 e1                                      mov r0, r7
0056cf78  e7 84 f6 eb                                      bl #0x30e31c
0056cf7c  00 00 50 e3                                      cmp r0, #0
0056cf80  ee ff ff 1a                                      bne #0x56cf40
0056cf84  14 30 94 e5                                      ldr r3, [r4, #0x14]
0056cf88  05 00 93 e7                                      ldr r0, [r3, r5]
0056cf8c  7c c1 f6 eb                                      bl #0x31d584
0056cf90  14 00 94 e5                                      ldr r0, [r4, #0x14]
0056cf94  18 30 94 e5                                      ldr r3, [r4, #0x18]
0056cf98  05 00 80 e0                                      add r0, r0, r5
0056cf9c  04 10 80 e2                                      add r1, r0, #4
0056cfa0  03 00 51 e1                                      cmp r1, r3
0056cfa4  04 00 00 0a                                      beq #0x56cfbc
0056cfa8  01 20 53 e0                                      subs r2, r3, r1
0056cfac  03 10 a0 01                                      moveq r1, r3
0056cfb0  01 00 00 0a                                      beq #0x56cfbc
0056cfb4  df 83 f6 eb                                      bl #0x30df38
0056cfb8  18 10 94 e5                                      ldr r1, [r4, #0x18]
0056cfbc  04 10 41 e2                                      sub r1, r1, #4
0056cfc0  18 10 84 e5                                      str r1, [r4, #0x18]
0056cfc4  01 00 a0 e3                                      mov r0, #1
0056cfc8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0056cfcc  20 a0 94 e5                                      ldr sl, [r4, #0x20]
0056cfd0  24 50 94 e5                                      ldr r5, [r4, #0x24]
0056cfd4  05 50 6a e0                                      rsb r5, sl, r5
0056cfd8  45 51 a0 e1                                      asr r5, r5, #2
0056cfdc  01 60 55 e2                                      subs r6, r5, #1
0056cfe0  1c 00 00 4a                                      bmi #0x56d058
0056cfe4  07 51 45 e2                                      sub r5, r5, #0xc0000001
0056cfe8  05 51 a0 e1                                      lsl r5, r5, #2
0056cfec  02 00 00 ea                                      b #0x56cffc
0056cff0  01 60 56 e2                                      subs r6, r6, #1
0056cff4  04 50 45 e2                                      sub r5, r5, #4
0056cff8  16 00 00 4a                                      bmi #0x56d058
0056cffc  05 80 9a e7                                      ldr r8, [sl, r5]
0056d000  07 00 a0 e1                                      mov r0, r7
0056d004  38 10 98 e5                                      ldr r1, [r8, #0x38]
0056d008  c3 84 f6 eb                                      bl #0x30e31c
0056d00c  00 00 50 e3                                      cmp r0, #0
0056d010  f6 ff ff 1a                                      bne #0x56cff0
0056d014  08 00 a0 e1                                      mov r0, r8
0056d018  59 c1 f6 eb                                      bl #0x31d584
0056d01c  20 00 94 e5                                      ldr r0, [r4, #0x20]
0056d020  24 30 94 e5                                      ldr r3, [r4, #0x24]
0056d024  05 00 80 e0                                      add r0, r0, r5
0056d028  04 10 80 e2                                      add r1, r0, #4
0056d02c  03 00 51 e1                                      cmp r1, r3
0056d030  04 00 00 0a                                      beq #0x56d048
0056d034  01 20 53 e0                                      subs r2, r3, r1
0056d038  03 10 a0 01                                      moveq r1, r3
0056d03c  01 00 00 0a                                      beq #0x56d048
0056d040  bc 83 f6 eb                                      bl #0x30df38
0056d044  24 10 94 e5                                      ldr r1, [r4, #0x24]
0056d048  04 10 41 e2                                      sub r1, r1, #4
0056d04c  24 10 84 e5                                      str r1, [r4, #0x24]
0056d050  01 00 a0 e3                                      mov r0, #1
0056d054  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0056d058  00 00 a0 e3                                      mov r0, #0
0056d05c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0056cb78, declared_size=204, range_size=204, mode=arm
; class-group: glitch::io::CFileSystem
; alias: _ZN6glitch2io11CFileSystem5clearEv
; demangled: glitch::io::CFileSystem::clear()
; decoder-mode: arm
0056cb78  70 40 2d e9                                      push {r4, r5, r6, lr}
0056cb7c  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0056cb80  08 30 90 e5                                      ldr r3, [r0, #8]
0056cb84  00 40 a0 e1                                      mov r4, r0
0056cb88  02 10 63 e0                                      rsb r1, r3, r2
0056cb8c  21 11 b0 e1                                      lsrs r1, r1, #2
0056cb90  08 00 00 0a                                      beq #0x56cbb8
0056cb94  00 50 a0 e3                                      mov r5, #0
0056cb98  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
0056cb9c  78 c2 f6 eb                                      bl #0x31d584
0056cba0  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0056cba4  08 30 94 e5                                      ldr r3, [r4, #8]
0056cba8  01 50 85 e2                                      add r5, r5, #1
0056cbac  02 10 63 e0                                      rsb r1, r3, r2
0056cbb0  41 01 55 e1                                      cmp r5, r1, asr #2
0056cbb4  f7 ff ff 3a                                      blo #0x56cb98
0056cbb8  03 00 52 e1                                      cmp r2, r3
0056cbbc  0c 30 84 15                                      strne r3, [r4, #0xc]
0056cbc0  18 20 94 e5                                      ldr r2, [r4, #0x18]
0056cbc4  14 30 94 e5                                      ldr r3, [r4, #0x14]
0056cbc8  02 10 63 e0                                      rsb r1, r3, r2
0056cbcc  21 11 b0 e1                                      lsrs r1, r1, #2
0056cbd0  08 00 00 0a                                      beq #0x56cbf8
0056cbd4  00 50 a0 e3                                      mov r5, #0
0056cbd8  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
0056cbdc  68 c2 f6 eb                                      bl #0x31d584
0056cbe0  18 20 94 e5                                      ldr r2, [r4, #0x18]
0056cbe4  14 30 94 e5                                      ldr r3, [r4, #0x14]
0056cbe8  01 50 85 e2                                      add r5, r5, #1
0056cbec  02 10 63 e0                                      rsb r1, r3, r2
0056cbf0  41 01 55 e1                                      cmp r5, r1, asr #2
0056cbf4  f7 ff ff 3a                                      blo #0x56cbd8
0056cbf8  03 00 52 e1                                      cmp r2, r3
0056cbfc  18 30 84 15                                      strne r3, [r4, #0x18]
0056cc00  24 20 94 e5                                      ldr r2, [r4, #0x24]
0056cc04  20 30 94 e5                                      ldr r3, [r4, #0x20]
0056cc08  02 10 63 e0                                      rsb r1, r3, r2
0056cc0c  21 11 b0 e1                                      lsrs r1, r1, #2
0056cc10  08 00 00 0a                                      beq #0x56cc38
0056cc14  00 50 a0 e3                                      mov r5, #0
0056cc18  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
0056cc1c  58 c2 f6 eb                                      bl #0x31d584
0056cc20  24 20 94 e5                                      ldr r2, [r4, #0x24]
0056cc24  20 30 94 e5                                      ldr r3, [r4, #0x20]
0056cc28  01 50 85 e2                                      add r5, r5, #1
0056cc2c  02 10 63 e0                                      rsb r1, r3, r2
0056cc30  41 01 55 e1                                      cmp r5, r1, asr #2
0056cc34  f7 ff ff 3a                                      blo #0x56cc18
0056cc38  03 00 52 e1                                      cmp r2, r3
0056cc3c  24 30 84 15                                      strne r3, [r4, #0x24]
0056cc40  70 80 bd e8                                      pop {r4, r5, r6, pc}
