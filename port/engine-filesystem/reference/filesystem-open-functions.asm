; Exact ARM ELF range used by ANALYSIS.md. Includes the trailing literal pool.
; Addresses are original ELF virtual addresses; this is evidence, not assembler input.

; FUNCTION 0x0056dc40, declared_size=760, range_size=760, mode=arm
; class-group: glitch::io::CFileSystem
; alias: _ZN6glitch2io11CFileSystem4openEPKcS3_
; demangled: glitch::io::CFileSystem::open(char const*, char const*)
; decoder-mode: arm
0056dc40  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0056dc44  dc 42 9f e5                                      ldr r4, [pc, #0x2dc]
0056dc48  dc 62 9f e5                                      ldr r6, [pc, #0x2dc]
0056dc4c  dc 72 9f e5                                      ldr r7, [pc, #0x2dc]
0056dc50  04 40 8f e0                                      add r4, pc, r4
0056dc54  06 c0 94 e7                                      ldr ip, [r4, r6]
0056dc58  07 30 94 e7                                      ldr r3, [r4, r7]
0056dc5c  84 d0 4d e2                                      sub sp, sp, #0x84
0056dc60  10 b0 9c e5                                      ldr fp, [ip, #0x10]
0056dc64  00 30 93 e5                                      ldr r3, [r3]
0056dc68  00 80 a0 e1                                      mov r8, r0
0056dc6c  00 00 5b e3                                      cmp fp, #0
0056dc70  01 50 a0 e1                                      mov r5, r1
0056dc74  7c 30 8d e5                                      str r3, [sp, #0x7c]
0056dc78  02 90 a0 e1                                      mov sb, r2
0056dc7c  35 00 00 0a                                      beq #0x56dd58
0056dc80  d0 30 d1 e1                                      ldrsb r3, [r1]
0056dc84  2e 00 53 e3                                      cmp r3, #0x2e
0056dc88  70 00 00 0a                                      beq #0x56de50
0056dc8c  05 b0 a0 e1                                      mov fp, r5
0056dc90  9c 32 9f e5                                      ldr r3, [pc, #0x29c]
0056dc94  03 a0 94 e7                                      ldr sl, [r4, r3]
0056dc98  0a 00 a0 e1                                      mov r0, sl
0056dc9c  6c 80 f6 eb                                      bl #0x30de54
0056dca0  00 30 50 e2                                      subs r3, r0, #0
0056dca4  0e 00 00 0a                                      beq #0x56dce4
0056dca8  0b 00 a0 e1                                      mov r0, fp
0056dcac  0a 10 a0 e1                                      mov r1, sl
0056dcb0  04 30 8d e5                                      str r3, [sp, #4]
0056dcb4  c6 83 f6 eb                                      bl #0x30ebd4
0056dcb8  00 00 50 e3                                      cmp r0, #0
0056dcbc  04 30 9d e5                                      ldr r3, [sp, #4]
0056dcc0  07 00 00 0a                                      beq #0x56dce4
0056dcc4  03 a0 8a e0                                      add sl, sl, r3
0056dcc8  d1 20 5a e1                                      ldrsb r2, [sl, #-1]
0056dccc  5c 00 52 e3                                      cmp r2, #0x5c
0056dcd0  2f 00 52 13                                      cmpne r2, #0x2f
0056dcd4  00 20 a0 03                                      moveq r2, #0
0056dcd8  01 20 a0 13                                      movne r2, #1
0056dcdc  03 30 82 e0                                      add r3, r2, r3
0056dce0  03 b0 8b e0                                      add fp, fp, r3
0056dce4  64 a0 8d e2                                      add sl, sp, #0x64
0056dce8  0b 10 a0 e1                                      mov r1, fp
0056dcec  0a 00 a0 e1                                      mov r0, sl
0056dcf0  18 20 8d e2                                      add r2, sp, #0x18
0056dcf4  d0 e0 f6 eb                                      bl #0x32603c
0056dcf8  78 30 9d e5                                      ldr r3, [sp, #0x78]
0056dcfc  74 10 9d e5                                      ldr r1, [sp, #0x74]
0056dd00  01 00 53 e1                                      cmp r3, r1
0056dd04  06 00 00 0a                                      beq #0x56dd24
0056dd08  2f 00 a0 e3                                      mov r0, #0x2f
0056dd0c  d0 20 d3 e1                                      ldrsb r2, [r3]
0056dd10  5c 00 52 e3                                      cmp r2, #0x5c
0056dd14  00 00 c3 05                                      strbeq r0, [r3]
0056dd18  01 30 83 e2                                      add r3, r3, #1
0056dd1c  01 00 53 e1                                      cmp r3, r1
0056dd20  f9 ff ff 1a                                      bne #0x56dd0c
0056dd24  0a 00 a0 e1                                      mov r0, sl
0056dd28  86 ff ff eb                                      bl #0x56db48
0056dd2c  06 30 94 e7                                      ldr r3, [r4, r6]
0056dd30  03 00 50 e1                                      cmp r0, r3
0056dd34  3c 50 90 15                                      ldrne r5, [r0, #0x3c]
0056dd38  78 00 9d e5                                      ldr r0, [sp, #0x78]
0056dd3c  00 b0 a0 03                                      moveq fp, #0
0056dd40  01 b0 a0 13                                      movne fp, #1
0056dd44  0a 00 50 e1                                      cmp r0, sl
0056dd48  02 00 00 0a                                      beq #0x56dd58
0056dd4c  00 00 50 e3                                      cmp r0, #0
0056dd50  00 00 00 0a                                      beq #0x56dd58
0056dd54  bd 89 f6 eb                                      bl #0x310450
0056dd58  4c 60 8d e2                                      add r6, sp, #0x4c
0056dd5c  05 10 a0 e1                                      mov r1, r5
0056dd60  06 00 a0 e1                                      mov r0, r6
0056dd64  14 20 8d e2                                      add r2, sp, #0x14
0056dd68  b3 e0 f6 eb                                      bl #0x32603c
0056dd6c  5c 10 9d e5                                      ldr r1, [sp, #0x5c]
0056dd70  60 00 9d e5                                      ldr r0, [sp, #0x60]
0056dd74  00 00 51 e1                                      cmp r1, r0
0056dd78  2d 00 00 0a                                      beq #0x56de34
0056dd7c  80 20 8d e2                                      add r2, sp, #0x80
0056dd80  3a 30 a0 e3                                      mov r3, #0x3a
0056dd84  78 30 62 e5                                      strb r3, [r2, #-0x78]!
0056dd88  0c 30 8d e2                                      add r3, sp, #0xc
0056dd8c  9c 83 f7 eb                                      bl #0x34ec04
0056dd90  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
0056dd94  00 30 a0 e1                                      mov r3, r0
0056dd98  02 00 50 e1                                      cmp r0, r2
0056dd9c  24 00 00 0a                                      beq #0x56de34
0056dda0  60 00 9d e5                                      ldr r0, [sp, #0x60]
0056dda4  03 30 60 e0                                      rsb r3, r0, r3
0056dda8  01 00 73 e3                                      cmn r3, #1
0056ddac  20 00 00 0a                                      beq #0x56de34
0056ddb0  09 10 a0 e1                                      mov r1, sb
0056ddb4  d3 81 f6 eb                                      bl #0x30e508
0056ddb8  00 a0 50 e2                                      subs sl, r0, #0
0056ddbc  00 a0 88 05                                      streq sl, [r8]
0056ddc0  0d 00 00 0a                                      beq #0x56ddfc
0056ddc4  00 10 a0 e3                                      mov r1, #0
0056ddc8  28 00 a0 e3                                      mov r0, #0x28
0056ddcc  60 90 9d e5                                      ldr sb, [sp, #0x60]
0056ddd0  f5 18 ff eb                                      bl #0x5341ac
0056ddd4  0b 30 a0 e1                                      mov r3, fp
0056ddd8  0a 10 a0 e1                                      mov r1, sl
0056dddc  09 20 a0 e1                                      mov r2, sb
0056dde0  00 50 a0 e1                                      mov r5, r0
0056dde4  ff fa ff eb                                      bl #0x56c9e8
0056dde8  00 00 55 e3                                      cmp r5, #0
0056ddec  00 50 88 e5                                      str r5, [r8]
0056ddf0  00 30 95 15                                      ldrne r3, [r5]
0056ddf4  01 30 83 12                                      addne r3, r3, #1
0056ddf8  00 30 85 15                                      strne r3, [r5]
0056ddfc  60 00 9d e5                                      ldr r0, [sp, #0x60]
0056de00  06 00 50 e1                                      cmp r0, r6
0056de04  02 00 00 0a                                      beq #0x56de14
0056de08  00 00 50 e3                                      cmp r0, #0
0056de0c  00 00 00 0a                                      beq #0x56de14
0056de10  8e 89 f6 eb                                      bl #0x310450
0056de14  07 30 94 e7                                      ldr r3, [r4, r7]
0056de18  7c 20 9d e5                                      ldr r2, [sp, #0x7c]
0056de1c  08 00 a0 e1                                      mov r0, r8
0056de20  00 30 93 e5                                      ldr r3, [r3]
0056de24  03 00 52 e1                                      cmp r2, r3
0056de28  3d 00 00 1a                                      bne #0x56df24
0056de2c  84 d0 8d e2                                      add sp, sp, #0x84
0056de30  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0056de34  f8 30 9f e5                                      ldr r3, [pc, #0xf8]
0056de38  03 10 94 e7                                      ldr r1, [r4, r3]
0056de3c  d0 30 d1 e1                                      ldrsb r3, [r1]
0056de40  00 00 53 e3                                      cmp r3, #0
0056de44  07 00 00 1a                                      bne #0x56de68
0056de48  60 00 9d e5                                      ldr r0, [sp, #0x60]
0056de4c  d7 ff ff ea                                      b #0x56ddb0
0056de50  d1 30 d1 e1                                      ldrsb r3, [r1, #1]
0056de54  2f 00 53 e3                                      cmp r3, #0x2f
0056de58  5c 00 53 13                                      cmpne r3, #0x5c
0056de5c  02 b0 81 02                                      addeq fp, r1, #2
0056de60  8a ff ff 0a                                      beq #0x56dc90
0056de64  88 ff ff ea                                      b #0x56dc8c
0056de68  34 a0 8d e2                                      add sl, sp, #0x34
0056de6c  10 20 8d e2                                      add r2, sp, #0x10
0056de70  0a 00 a0 e1                                      mov r0, sl
0056de74  70 e0 f6 eb                                      bl #0x32603c
0056de78  44 20 9d e5                                      ldr r2, [sp, #0x44]
0056de7c  48 10 9d e5                                      ldr r1, [sp, #0x48]
0056de80  d1 30 52 e1                                      ldrsb r3, [r2, #-1]
0056de84  5c 00 53 e3                                      cmp r3, #0x5c
0056de88  2f 00 53 13                                      cmpne r3, #0x2f
0056de8c  0e 00 00 1a                                      bne #0x56decc
0056de90  1c 50 8d e2                                      add r5, sp, #0x1c
0056de94  0a 10 a0 e1                                      mov r1, sl
0056de98  06 20 a0 e1                                      mov r2, r6
0056de9c  05 00 a0 e1                                      mov r0, r5
0056dea0  1f 81 f7 eb                                      bl #0x34e324
0056dea4  30 10 9d e5                                      ldr r1, [sp, #0x30]
0056dea8  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0056deac  06 00 a0 e1                                      mov r0, r6
0056deb0  34 cb f6 eb                                      bl #0x320b88
0056deb4  05 00 a0 e1                                      mov r0, r5
0056deb8  ff f8 ff eb                                      bl #0x56c2bc
0056debc  0a 00 a0 e1                                      mov r0, sl
0056dec0  fd f8 ff eb                                      bl #0x56c2bc
0056dec4  60 00 9d e5                                      ldr r0, [sp, #0x60]
0056dec8  b8 ff ff ea                                      b #0x56ddb0
0056decc  0a 00 51 e1                                      cmp r1, sl
0056ded0  34 10 9d 15                                      ldrne r1, [sp, #0x34]
0056ded4  10 10 8a 02                                      addeq r1, sl, #0x10
0056ded8  01 10 62 e0                                      rsb r1, r2, r1
0056dedc  01 00 51 e3                                      cmp r1, #1
0056dee0  08 00 00 0a                                      beq #0x56df08
0056dee4  00 30 a0 e3                                      mov r3, #0
0056dee8  01 30 c2 e5                                      strb r3, [r2, #1]
0056deec  44 30 9d e5                                      ldr r3, [sp, #0x44]
0056def0  2f 20 a0 e3                                      mov r2, #0x2f
0056def4  00 20 c3 e5                                      strb r2, [r3]
0056def8  44 30 9d e5                                      ldr r3, [sp, #0x44]
0056defc  01 30 83 e2                                      add r3, r3, #1
0056df00  44 30 8d e5                                      str r3, [sp, #0x44]
0056df04  e1 ff ff ea                                      b #0x56de90
0056df08  0a 00 a0 e1                                      mov r0, sl
0056df0c  11 c9 f6 eb                                      bl #0x320358
0056df10  00 10 a0 e1                                      mov r1, r0
0056df14  0a 00 a0 e1                                      mov r0, sl
0056df18  01 20 fb eb                                      bl #0x435f24
0056df1c  44 20 9d e5                                      ldr r2, [sp, #0x44]
0056df20  ef ff ff ea                                      b #0x56dee4
0056df24  f9 80 f6 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0056df28  40 6e 42 00 b4 47 00 00 ac 40 00 00 68 0e 00 00  .byte 0x40, 0x6e, 0x42, 0x00, 0xb4, 0x47, 0x00, 0x00, 0xac, 0x40, 0x00, 0x00, 0x68, 0x0e, 0x00, 0x00
