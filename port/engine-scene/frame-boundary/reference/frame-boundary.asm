; FUNCTION 0x0032ade8, declared_size=1116, range_size=1116, mode=arm
; class-group: Application
; alias: _ZN11Application5_DrawEv
; demangled: Application::_Draw()
; decoder-mode: arm
0032ade8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0032adec  0c 54 9f e5                                      ldr r5, [pc, #0x40c]
0032adf0  0c 74 9f e5                                      ldr r7, [pc, #0x40c]
0032adf4  00 60 a0 e1                                      mov r6, r0
0032adf8  05 50 8f e0                                      add r5, pc, r5
0032adfc  07 30 95 e7                                      ldr r3, [r5, r7]
0032ae00  00 04 9f e5                                      ldr r0, [pc, #0x400]
0032ae04  00 a4 9f e5                                      ldr sl, [pc, #0x400]
0032ae08  00 30 93 e5                                      ldr r3, [r3]
0032ae0c  5c d0 4d e2                                      sub sp, sp, #0x5c
0032ae10  00 00 8f e0                                      add r0, pc, r0
0032ae14  54 30 8d e5                                      str r3, [sp, #0x54]
0032ae18  25 a2 ff eb                                      bl #0x3136b4
0032ae1c  0a 30 95 e7                                      ldr r3, [r5, sl]
0032ae20  10 20 96 e5                                      ldr r2, [r6, #0x10]
0032ae24  06 00 a0 e1                                      mov r0, r6
0032ae28  10 30 93 e5                                      ldr r3, [r3, #0x10]
0032ae2c  18 90 92 e5                                      ldr sb, [r2, #0x18]
0032ae30  10 40 93 e5                                      ldr r4, [r3, #0x10]
0032ae34  b2 d1 ff eb                                      bl #0x31f504
0032ae38  00 00 50 e3                                      cmp r0, #0
0032ae3c  0b 00 00 1a                                      bne #0x32ae70
0032ae40  18 00 96 e5                                      ldr r0, [r6, #0x18]
0032ae44  ad 3c 00 eb                                      bl #0x33a100
0032ae48  c0 03 9f e5                                      ldr r0, [pc, #0x3c0]
0032ae4c  00 00 8f e0                                      add r0, pc, r0
0032ae50  18 a2 ff eb                                      bl #0x3136b8
0032ae54  07 30 95 e7                                      ldr r3, [r5, r7]
0032ae58  54 20 9d e5                                      ldr r2, [sp, #0x54]
0032ae5c  00 30 93 e5                                      ldr r3, [r3]
0032ae60  03 00 52 e1                                      cmp r2, r3
0032ae64  e4 00 00 1a                                      bne #0x32b1fc
0032ae68  5c d0 8d e2                                      add sp, sp, #0x5c
0032ae6c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0032ae70  9c 33 9f e5                                      ldr r3, [pc, #0x39c]
0032ae74  03 30 95 e7                                      ldr r3, [r5, r3]
0032ae78  00 30 d3 e5                                      ldrb r3, [r3]
0032ae7c  00 00 53 e3                                      cmp r3, #0
0032ae80  ee ff ff 1a                                      bne #0x32ae40
0032ae84  06 00 a0 e1                                      mov r0, r6
0032ae88  c1 d1 ff eb                                      bl #0x31f594
0032ae8c  00 00 50 e3                                      cmp r0, #0
0032ae90  c5 00 00 0a                                      beq #0x32b1ac
0032ae94  38 80 90 e5                                      ldr r8, [r0, #0x38]
0032ae98  00 00 58 e3                                      cmp r8, #0
0032ae9c  c2 00 00 0a                                      beq #0x32b1ac
0032aea0  ec 01 98 e5                                      ldr r0, [r8, #0x1ec]
0032aea4  fd 4c 16 eb                                      bl #0x8be2a0
0032aea8  70 b0 ef e6                                      uxtb fp, r0
0032aeac  f0 01 98 e5                                      ldr r0, [r8, #0x1f0]
0032aeb0  fa 4c 16 eb                                      bl #0x8be2a0
0032aeb4  70 20 ef e6                                      uxtb r2, r0
0032aeb8  f4 01 98 e5                                      ldr r0, [r8, #0x1f4]
0032aebc  04 20 8d e5                                      str r2, [sp, #4]
0032aec0  f6 4c 16 eb                                      bl #0x8be2a0
0032aec4  04 20 9d e5                                      ldr r2, [sp, #4]
0032aec8  70 c0 ef e6                                      uxtb ip, r0
0032aecc  00 30 94 e5                                      ldr r3, [r4]
0032aed0  00 10 e0 e3                                      mvn r1, #0
0032aed4  04 00 a0 e1                                      mov r0, r4
0032aed8  dc 30 93 e5                                      ldr r3, [r3, #0xdc]
0032aedc  19 20 cd e5                                      strb r2, [sp, #0x19]
0032aee0  30 23 9f e5                                      ldr r2, [pc, #0x330]
0032aee4  1a c0 cd e5                                      strb ip, [sp, #0x1a]
0032aee8  18 b0 cd e5                                      strb fp, [sp, #0x18]
0032aeec  1b 10 cd e5                                      strb r1, [sp, #0x1b]
0032aef0  08 20 8d e5                                      str r2, [sp, #8]
0032aef4  18 10 9d e5                                      ldr r1, [sp, #0x18]
0032aef8  33 ff 2f e1                                      blx r3
0032aefc  00 30 94 e5                                      ldr r3, [r4]
0032af00  04 00 a0 e1                                      mov r0, r4
0032af04  0f e0 a0 e1                                      mov lr, pc
0032af08  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0032af0c  03 10 a0 e3                                      mov r1, #3
0032af10  04 00 a0 e1                                      mov r0, r4
0032af14  00 30 94 e5                                      ldr r3, [r4]
0032af18  0f e0 a0 e1                                      mov lr, pc
0032af1c  a8 f0 93 e5                                      ldr pc, [r3, #0xa8]
0032af20  08 30 9d e5                                      ldr r3, [sp, #8]
0032af24  3c 80 8d e2                                      add r8, sp, #0x3c
0032af28  03 b0 95 e7                                      ldr fp, [r5, r3]
0032af2c  00 30 94 e5                                      ldr r3, [r4]
0032af30  0b 00 a0 e1                                      mov r0, fp
0032af34  a0 30 93 e5                                      ldr r3, [r3, #0xa0]
0032af38  04 30 8d e5                                      str r3, [sp, #4]
0032af3c  51 32 00 eb                                      bl #0x337888
0032af40  d4 12 9f e5                                      ldr r1, [pc, #0x2d4]
0032af44  20 20 8d e2                                      add r2, sp, #0x20
0032af48  08 00 a0 e1                                      mov r0, r8
0032af4c  01 10 8f e0                                      add r1, pc, r1
0032af50  65 a4 ff eb                                      bl #0x3140ec
0032af54  08 10 a0 e1                                      mov r1, r8
0032af58  0b 00 a0 e1                                      mov r0, fp
0032af5c  c9 32 00 eb                                      bl #0x337a88
0032af60  01 1c a0 e3                                      mov r1, #0x100
0032af64  00 20 a0 e1                                      mov r2, r0
0032af68  04 30 9d e5                                      ldr r3, [sp, #4]
0032af6c  04 00 a0 e1                                      mov r0, r4
0032af70  33 ff 2f e1                                      blx r3
0032af74  08 00 a0 e1                                      mov r0, r8
0032af78  8b a2 ff eb                                      bl #0x3139ac
0032af7c  06 00 a0 e1                                      mov r0, r6
0032af80  01 10 a0 e3                                      mov r1, #1
0032af84  1d d8 ff eb                                      bl #0x321000
0032af88  00 00 50 e3                                      cmp r0, #0
0032af8c  2d 00 00 0a                                      beq #0x32b048
0032af90  88 82 9f e5                                      ldr r8, [pc, #0x288]
0032af94  88 a2 9f e5                                      ldr sl, [pc, #0x288]
0032af98  08 80 8f e0                                      add r8, pc, r8
0032af9c  0a a0 8f e0                                      add sl, pc, sl
0032afa0  08 00 a0 e1                                      mov r0, r8
0032afa4  c2 a1 ff eb                                      bl #0x3136b4
0032afa8  0a 00 a0 e1                                      mov r0, sl
0032afac  c0 a1 ff eb                                      bl #0x3136b4
0032afb0  18 00 96 e5                                      ldr r0, [r6, #0x18]
0032afb4  51 3c 00 eb                                      bl #0x33a100
0032afb8  0a 00 a0 e1                                      mov r0, sl
0032afbc  bd a1 ff eb                                      bl #0x3136b8
0032afc0  00 30 94 e5                                      ldr r3, [r4]
0032afc4  04 00 a0 e1                                      mov r0, r4
0032afc8  0f e0 a0 e1                                      mov lr, pc
0032afcc  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0032afd0  00 30 99 e5                                      ldr r3, [sb]
0032afd4  09 00 a0 e1                                      mov r0, sb
0032afd8  0f e0 a0 e1                                      mov lr, pc
0032afdc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0032afe0  18 00 96 e5                                      ldr r0, [r6, #0x18]
0032afe4  57 3c 00 eb                                      bl #0x33a148
0032afe8  a7 06 04 eb                                      bl #0x42ca8c
0032afec  b8 0c 04 eb                                      bl #0x42e2d4
0032aff0  30 32 9f e5                                      ldr r3, [pc, #0x230]
0032aff4  03 00 95 e7                                      ldr r0, [r5, r3]
0032aff8  45 9a ff eb                                      bl #0x311914
0032affc  00 30 94 e5                                      ldr r3, [r4]
0032b000  04 00 a0 e1                                      mov r0, r4
0032b004  0f e0 a0 e1                                      mov lr, pc
0032b008  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0032b00c  08 00 a0 e1                                      mov r0, r8
0032b010  a8 a1 ff eb                                      bl #0x3136b8
0032b014  00 30 94 e5                                      ldr r3, [r4]
0032b018  04 00 a0 e1                                      mov r0, r4
0032b01c  0f e0 a0 e1                                      mov lr, pc
0032b020  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0032b024  04 00 a0 e1                                      mov r0, r4
0032b028  00 30 94 e5                                      ldr r3, [r4]
0032b02c  00 10 a0 e3                                      mov r1, #0
0032b030  0f e0 a0 e1                                      mov lr, pc
0032b034  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
0032b038  ec 01 9f e5                                      ldr r0, [pc, #0x1ec]
0032b03c  00 00 8f e0                                      add r0, pc, r0
0032b040  9c a1 ff eb                                      bl #0x3136b8
0032b044  82 ff ff ea                                      b #0x32ae54
0032b048  06 00 a0 e1                                      mov r0, r6
0032b04c  58 d1 ff eb                                      bl #0x31f5b4
0032b050  00 00 50 e3                                      cmp r0, #0
0032b054  cd ff ff 0a                                      beq #0x32af90
0032b058  a9 30 d6 e5                                      ldrb r3, [r6, #0xa9]
0032b05c  00 00 53 e3                                      cmp r3, #0
0032b060  ca ff ff 0a                                      beq #0x32af90
0032b064  a9 fa 03 eb                                      bl #0x429b10
0032b068  e1 d0 03 eb                                      bl #0x41f3f4
0032b06c  00 00 50 e3                                      cmp r0, #0
0032b070  c6 ff ff 1a                                      bne #0x32af90
0032b074  b4 01 9f e5                                      ldr r0, [pc, #0x1b4]
0032b078  00 00 8f e0                                      add r0, pc, r0
0032b07c  8c a1 ff eb                                      bl #0x3136b4
0032b080  0a 30 95 e7                                      ldr r3, [r5, sl]
0032b084  cd 2c 0c e3                                      movw r2, #0xcccd
0032b088  00 10 a0 e3                                      mov r1, #0
0032b08c  10 30 93 e5                                      ldr r3, [r3, #0x10]
0032b090  4c 2f 43 e3                                      movt r2, #0x3f4c
0032b094  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
0032b098  0c 30 8d e5                                      str r3, [sp, #0xc]
0032b09c  14 30 93 e5                                      ldr r3, [r3, #0x14]
0032b0a0  03 00 a0 e1                                      mov r0, r3
0032b0a4  00 30 93 e5                                      ldr r3, [r3]
0032b0a8  0f e0 a0 e1                                      mov lr, pc
0032b0ac  1c f1 93 e5                                      ldr pc, [r3, #0x11c]
0032b0b0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0032b0b4  e4 30 90 e5                                      ldr r3, [r0, #0xe4]
0032b0b8  00 00 53 e3                                      cmp r3, #0
0032b0bc  43 00 00 0a                                      beq #0x32b1d0
0032b0c0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0032b0c4  00 10 a0 e3                                      mov r1, #0
0032b0c8  24 80 8d e2                                      add r8, sp, #0x24
0032b0cc  00 30 90 e5                                      ldr r3, [r0]
0032b0d0  0f e0 a0 e1                                      mov lr, pc
0032b0d4  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0032b0d8  08 20 9d e5                                      ldr r2, [sp, #8]
0032b0dc  02 b0 95 e7                                      ldr fp, [r5, r2]
0032b0e0  0b 00 a0 e1                                      mov r0, fp
0032b0e4  e7 31 00 eb                                      bl #0x337888
0032b0e8  44 11 9f e5                                      ldr r1, [pc, #0x144]
0032b0ec  1c 20 8d e2                                      add r2, sp, #0x1c
0032b0f0  08 00 a0 e1                                      mov r0, r8
0032b0f4  01 10 8f e0                                      add r1, pc, r1
0032b0f8  fb a3 ff eb                                      bl #0x3140ec
0032b0fc  0b 00 a0 e1                                      mov r0, fp
0032b100  08 10 a0 e1                                      mov r1, r8
0032b104  5f 32 00 eb                                      bl #0x337a88
0032b108  00 b0 a0 e1                                      mov fp, r0
0032b10c  08 00 a0 e1                                      mov r0, r8
0032b110  25 a2 ff eb                                      bl #0x3139ac
0032b114  00 00 5b e3                                      cmp fp, #0
0032b118  1f 00 00 0a                                      beq #0x32b19c
0032b11c  0a 30 95 e7                                      ldr r3, [r5, sl]
0032b120  10 30 93 e5                                      ldr r3, [r3, #0x10]
0032b124  10 b0 93 e5                                      ldr fp, [r3, #0x10]
0032b128  ff 3f 0f e3                                      movw r3, #0xffff
0032b12c  dc a0 9b e5                                      ldr sl, [fp, #0xdc]
0032b130  be 22 da e1                                      ldrh r2, [sl, #0x2e]
0032b134  03 00 52 e1                                      cmp r2, r3
0032b138  1f 00 00 0a                                      beq #0x32b1bc
0032b13c  14 80 8d e2                                      add r8, sp, #0x14
0032b140  08 00 a0 e1                                      mov r0, r8
0032b144  0a 10 a0 e1                                      mov r1, sl
0032b148  01 30 a0 e3                                      mov r3, #1
0032b14c  e4 c7 0a eb                                      bl #0x5dd0e4
0032b150  14 00 9d e5                                      ldr r0, [sp, #0x14]
0032b154  00 00 50 e3                                      cmp r0, #0
0032b158  ff 20 a0 03                                      moveq r2, #0xff
0032b15c  01 00 00 0a                                      beq #0x32b168
0032b160  f3 6a 0a eb                                      bl #0x5c5d34
0032b164  00 20 a0 e1                                      mov r2, r0
0032b168  0b 00 a0 e1                                      mov r0, fp
0032b16c  08 10 a0 e1                                      mov r1, r8
0032b170  00 30 a0 e3                                      mov r3, #0
0032b174  7b 08 0a eb                                      bl #0x5ad368
0032b178  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0032b17c  04 00 93 e5                                      ldr r0, [r3, #4]
0032b180  b0 30 9f e5                                      ldr r3, [pc, #0xb0]
0032b184  03 10 95 e7                                      ldr r1, [r5, r3]
0032b188  ac 30 9f e5                                      ldr r3, [pc, #0xac]
0032b18c  03 20 95 e7                                      ldr r2, [r5, r3]
0032b190  c2 8e 07 eb                                      bl #0x50eca0
0032b194  08 00 a0 e1                                      mov r0, r8
0032b198  92 96 ff eb                                      bl #0x310be8
0032b19c  9c 00 9f e5                                      ldr r0, [pc, #0x9c]
0032b1a0  00 00 8f e0                                      add r0, pc, r0
0032b1a4  43 a1 ff eb                                      bl #0x3136b8
0032b1a8  78 ff ff ea                                      b #0x32af90
0032b1ac  00 b0 a0 e3                                      mov fp, #0
0032b1b0  0b 20 a0 e1                                      mov r2, fp
0032b1b4  0b c0 a0 e1                                      mov ip, fp
0032b1b8  43 ff ff ea                                      b #0x32aecc
0032b1bc  0a 00 a0 e1                                      mov r0, sl
0032b1c0  01 10 a0 e3                                      mov r1, #1
0032b1c4  57 b6 0a eb                                      bl #0x5d8b28
0032b1c8  00 20 a0 e1                                      mov r2, r0
0032b1cc  da ff ff ea                                      b #0x32b13c
0032b1d0  06 00 a0 e1                                      mov r0, r6
0032b1d4  ee d0 ff eb                                      bl #0x31f594
0032b1d8  00 00 50 e3                                      cmp r0, #0
0032b1dc  b7 ff ff 0a                                      beq #0x32b0c0
0032b1e0  28 31 90 e5                                      ldr r3, [r0, #0x128]
0032b1e4  00 00 53 e3                                      cmp r3, #0
0032b1e8  b4 ff ff 0a                                      beq #0x32b0c0
0032b1ec  08 10 93 e5                                      ldr r1, [r3, #8]
0032b1f0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0032b1f4  b1 77 09 eb                                      bl #0x5890c0
0032b1f8  b0 ff ff ea                                      b #0x32b0c0
0032b1fc  43 8c ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0032b200  98 9c 66 00 ac 40 00 00 90 41 59 00 f4 37 00 00  .byte 0x98, 0x9c, 0x66, 0x00, 0xac, 0x40, 0x00, 0x00, 0x90, 0x41, 0x59, 0x00, 0xf4, 0x37, 0x00, 0x00
0032b210  54 41 59 00 b8 37 00 00 84 08 00 00 6c 40 59 00  .byte 0x54, 0x41, 0x59, 0x00, 0xb8, 0x37, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x6c, 0x40, 0x59, 0x00
0032b220  68 40 59 00 7c 40 59 00 fc 0c 00 00 64 3f 59 00  .byte 0x68, 0x40, 0x59, 0x00, 0x7c, 0x40, 0x59, 0x00, 0xfc, 0x0c, 0x00, 0x00, 0x64, 0x3f, 0x59, 0x00
0032b230  50 3f 59 00 ec 3e 59 00 20 39 00 00 a4 16 00 00  .byte 0x50, 0x3f, 0x59, 0x00, 0xec, 0x3e, 0x59, 0x00, 0x20, 0x39, 0x00, 0x00, 0xa4, 0x16, 0x00, 0x00
0032b240  28 3e 59 00                                      .byte 0x28, 0x3e, 0x59, 0x00

; FUNCTION 0x0033a090, declared_size=112, range_size=112, mode=arm
; class-group: StateMachine
; alias: _ZNK12StateMachine11RecurseDrawEv
; demangled: StateMachine::RecurseDraw() const
; decoder-mode: arm
0033a090  70 40 2d e9                                      push {r4, r5, r6, lr}
0033a094  1d 30 d0 e5                                      ldrb r3, [r0, #0x1d]
0033a098  00 40 a0 e1                                      mov r4, r0
0033a09c  00 00 53 e3                                      cmp r3, #0
0033a0a0  0b 00 00 0a                                      beq #0x33a0d4
0033a0a4  18 50 90 e5                                      ldr r5, [r0, #0x18]
0033a0a8  01 00 75 e3                                      cmn r5, #1
0033a0ac  0c 30 90 05                                      ldreq r3, [r0, #0xc]
0033a0b0  10 20 90 05                                      ldreq r2, [r0, #0x10]
0033a0b4  05 30 a0 11                                      movne r3, r5
0033a0b8  02 30 63 00                                      rsbeq r3, r3, r2
0033a0bc  c3 31 a0 01                                      asreq r3, r3, #3
0033a0c0  01 30 43 02                                      subeq r3, r3, #1
0033a0c4  18 30 80 05                                      streq r3, [r0, #0x18]
0033a0c8  00 00 53 e3                                      cmp r3, #0
0033a0cc  01 00 00 1a                                      bne #0x33a0d8
0033a0d0  18 50 84 e5                                      str r5, [r4, #0x18]
0033a0d4  70 80 bd e8                                      pop {r4, r5, r6, pc}
0033a0d8  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0033a0dc  01 30 43 e2                                      sub r3, r3, #1
0033a0e0  18 30 80 e5                                      str r3, [r0, #0x18]
0033a0e4  83 31 92 e7                                      ldr r3, [r2, r3, lsl #3]
0033a0e8  00 10 a0 e1                                      mov r1, r0
0033a0ec  03 00 a0 e1                                      mov r0, r3
0033a0f0  00 30 93 e5                                      ldr r3, [r3]
0033a0f4  0f e0 a0 e1                                      mov lr, pc
0033a0f8  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0033a0fc  f3 ff ff ea                                      b #0x33a0d0

; FUNCTION 0x0033a100, declared_size=72, range_size=72, mode=arm
; class-group: StateMachine
; alias: _ZNK12StateMachine4DrawEv
; demangled: StateMachine::Draw() const
; decoder-mode: arm
0033a100  10 40 2d e9                                      push {r4, lr}
0033a104  10 30 90 e5                                      ldr r3, [r0, #0x10]
0033a108  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0033a10c  00 40 a0 e1                                      mov r4, r0
0033a110  03 20 62 e0                                      rsb r2, r2, r3
0033a114  a2 21 b0 e1                                      lsrs r2, r2, #3
0033a118  09 00 00 0a                                      beq #0x33a144
0033a11c  01 20 a0 e3                                      mov r2, #1
0033a120  1d 20 c0 e5                                      strb r2, [r0, #0x1d]
0033a124  08 30 13 e5                                      ldr r3, [r3, #-8]
0033a128  00 10 a0 e1                                      mov r1, r0
0033a12c  03 00 a0 e1                                      mov r0, r3
0033a130  00 30 93 e5                                      ldr r3, [r3]
0033a134  0f e0 a0 e1                                      mov lr, pc
0033a138  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0033a13c  00 30 a0 e3                                      mov r3, #0
0033a140  1d 30 c4 e5                                      strb r3, [r4, #0x1d]
0033a144  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0033a148, declared_size=52, range_size=52, mode=arm
; class-group: StateMachine
; alias: _ZNK12StateMachine6Draw2DEv
; demangled: StateMachine::Draw2D() const
; decoder-mode: arm
0033a148  10 40 2d e9                                      push {r4, lr}
0033a14c  10 30 90 e5                                      ldr r3, [r0, #0x10]
0033a150  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0033a154  03 20 62 e0                                      rsb r2, r2, r3
0033a158  a2 21 b0 e1                                      lsrs r2, r2, #3
0033a15c  05 00 00 0a                                      beq #0x33a178
0033a160  08 30 13 e5                                      ldr r3, [r3, #-8]
0033a164  00 10 a0 e1                                      mov r1, r0
0033a168  03 00 a0 e1                                      mov r0, r3
0033a16c  00 30 93 e5                                      ldr r3, [r3]
0033a170  0f e0 a0 e1                                      mov lr, pc
0033a174  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0033a178  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00359338, declared_size=364, range_size=364, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager7drawAllEPN6glitch5scene10ISceneNodeE
; demangled: SceneManager::drawAll(glitch::scene::ISceneNode*)
; decoder-mode: arm
00359338  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0035933c  4c 41 9f e5                                      ldr r4, [pc, #0x14c]
00359340  4c 51 9f e5                                      ldr r5, [pc, #0x14c]
00359344  8c d0 4d e2                                      sub sp, sp, #0x8c
00359348  04 40 8f e0                                      add r4, pc, r4
0035934c  05 30 94 e7                                      ldr r3, [r4, r5]
00359350  00 60 a0 e1                                      mov r6, r0
00359354  01 70 a0 e1                                      mov r7, r1
00359358  00 30 93 e5                                      ldr r3, [r3]
0035935c  a5 0f 80 e2                                      add r0, r0, #0x294
00359360  84 30 8d e5                                      str r3, [sp, #0x84]
00359364  8d d0 02 eb                                      bl #0x40d5a0
00359368  06 00 a0 e1                                      mov r0, r6
0035936c  07 10 a0 e1                                      mov r1, r7
00359370  ce ff ff eb                                      bl #0x3592b0
00359374  90 32 d6 e5                                      ldrb r3, [r6, #0x290]
00359378  00 00 53 e3                                      cmp r3, #0
0035937c  06 00 00 1a                                      bne #0x35939c
00359380  05 30 94 e7                                      ldr r3, [r4, r5]
00359384  84 20 9d e5                                      ldr r2, [sp, #0x84]
00359388  00 30 93 e5                                      ldr r3, [r3]
0035938c  03 00 52 e1                                      cmp r2, r3
00359390  3d 00 00 1a                                      bne #0x35948c
00359394  8c d0 8d e2                                      add sp, sp, #0x8c
00359398  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0035939c  f4 30 9f e5                                      ldr r3, [pc, #0xf4]
003593a0  00 80 a0 e3                                      mov r8, #0
003593a4  90 82 c6 e5                                      strb r8, [r6, #0x290]
003593a8  03 a0 94 e7                                      ldr sl, [r4, r3]
003593ac  6c 70 8d e2                                      add r7, sp, #0x6c
003593b0  0a 00 a0 e1                                      mov r0, sl
003593b4  33 79 ff eb                                      bl #0x337888
003593b8  dc 10 9f e5                                      ldr r1, [pc, #0xdc]
003593bc  04 20 8d e2                                      add r2, sp, #4
003593c0  07 00 a0 e1                                      mov r0, r7
003593c4  01 10 8f e0                                      add r1, pc, r1
003593c8  47 eb fe eb                                      bl #0x3140ec
003593cc  0a 00 a0 e1                                      mov r0, sl
003593d0  07 10 a0 e1                                      mov r1, r7
003593d4  ab 79 ff eb                                      bl #0x337a88
003593d8  00 a0 a0 e1                                      mov sl, r0
003593dc  07 00 a0 e1                                      mov r0, r7
003593e0  9b fb fe eb                                      bl #0x318254
003593e4  08 00 5a e1                                      cmp sl, r8
003593e8  e4 ff ff 0a                                      beq #0x359380
003593ec  08 00 a0 e1                                      mov r0, r8
003593f0  62 d4 fe eb                                      bl #0x30e580
003593f4  a4 10 9f e5                                      ldr r1, [pc, #0xa4]
003593f8  08 70 8d e2                                      add r7, sp, #8
003593fc  00 20 a0 e1                                      mov r2, r0
00359400  01 10 8f e0                                      add r1, pc, r1
00359404  07 00 a0 e1                                      mov r0, r7
00359408  b5 d5 fe eb                                      bl #0x30eae4
0035940c  14 30 96 e5                                      ldr r3, [r6, #0x14]
00359410  0d 00 a0 e1                                      mov r0, sp
00359414  0d a0 a0 e1                                      mov sl, sp
00359418  03 10 a0 e1                                      mov r1, r3
0035941c  00 30 93 e5                                      ldr r3, [r3]
00359420  0f e0 a0 e1                                      mov lr, pc
00359424  98 f0 93 e5                                      ldr pc, [r3, #0x98]
00359428  07 00 a0 e1                                      mov r0, r7
0035942c  08 10 a0 e1                                      mov r1, r8
00359430  ef 5d 08 eb                                      bl #0x570bf4
00359434  08 10 a0 e1                                      mov r1, r8
00359438  00 70 a0 e1                                      mov r7, r0
0035943c  08 00 a0 e3                                      mov r0, #8
00359440  59 6b 07 eb                                      bl #0x5341ac
00359444  00 60 a0 e1                                      mov r6, r0
00359448  af b7 0a eb                                      bl #0x60730c
0035944c  0d 20 a0 e1                                      mov r2, sp
00359450  08 30 a0 e1                                      mov r3, r8
00359454  07 10 a0 e1                                      mov r1, r7
00359458  00 c0 96 e5                                      ldr ip, [r6]
0035945c  06 00 a0 e1                                      mov r0, r6
00359460  0f e0 a0 e1                                      mov lr, pc
00359464  10 f0 9c e5                                      ldr pc, [ip, #0x10]
00359468  06 00 a0 e1                                      mov r0, r6
0035946c  44 10 ff eb                                      bl #0x31d584
00359470  07 00 a0 e1                                      mov r0, r7
00359474  42 10 ff eb                                      bl #0x31d584
00359478  00 00 9d e5                                      ldr r0, [sp]
0035947c  08 00 50 e1                                      cmp r0, r8
00359480  be ff ff 0a                                      beq #0x359380
00359484  3e 10 ff eb                                      bl #0x31d584
00359488  bc ff ff ea                                      b #0x359380
0035948c  9f d3 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00359490  48 b7 63 00 ac 40 00 00 84 08 00 00 0c 67 56 00  .byte 0x48, 0xb7, 0x63, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x0c, 0x67, 0x56, 0x00
003594a0  c0 77 56 00                                      .byte 0xc0, 0x77, 0x56, 0x00

; FUNCTION 0x003592b0, declared_size=136, range_size=136, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager8_drawAllEPN6glitch5scene10ISceneNodeE
; demangled: SceneManager::_drawAll(glitch::scene::ISceneNode*)
; decoder-mode: arm
003592b0  70 40 2d e9                                      push {r4, r5, r6, lr}
003592b4  01 50 a0 e1                                      mov r5, r1
003592b8  00 30 90 e5                                      ldr r3, [r0]
003592bc  18 10 90 e5                                      ldr r1, [r0, #0x18]
003592c0  00 40 a0 e1                                      mov r4, r0
003592c4  0f e0 a0 e1                                      mov lr, pc
003592c8  40 f0 93 e5                                      ldr pc, [r3, #0x40]
003592cc  00 00 55 e3                                      cmp r5, #0
003592d0  12 00 00 0a                                      beq #0x359320
003592d4  00 30 94 e5                                      ldr r3, [r4]
003592d8  04 00 a0 e1                                      mov r0, r4
003592dc  0f e0 a0 e1                                      mov lr, pc
003592e0  44 f0 93 e5                                      ldr pc, [r3, #0x44]
003592e4  05 10 a0 e1                                      mov r1, r5
003592e8  04 00 a0 e1                                      mov r0, r4
003592ec  ec fa ff eb                                      bl #0x357ea4
003592f0  04 00 a0 e1                                      mov r0, r4
003592f4  2c ea ff eb                                      bl #0x353bac
003592f8  00 30 94 e5                                      ldr r3, [r4]
003592fc  04 00 a0 e1                                      mov r0, r4
00359300  0f e0 a0 e1                                      mov lr, pc
00359304  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
00359308  04 00 a0 e1                                      mov r0, r4
0035930c  18 10 94 e5                                      ldr r1, [r4, #0x18]
00359310  22 fd ff eb                                      bl #0x3587a0
00359314  09 30 a0 e3                                      mov r3, #9
00359318  74 31 84 e5                                      str r3, [r4, #0x174]
0035931c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00359320  88 32 d4 e5                                      ldrb r3, [r4, #0x288]
00359324  00 00 53 e3                                      cmp r3, #0
00359328  e9 ff ff 0a                                      beq #0x3592d4
0035932c  04 00 a0 e1                                      mov r0, r4
00359330  1d c9 08 eb                                      bl #0x58b7ac
00359334  e6 ff ff ea                                      b #0x3592d4

; FUNCTION 0x00357ea4, declared_size=356, range_size=356, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager19_registerSceneNodesEPN6glitch5scene10ISceneNodeE
; demangled: SceneManager::_registerSceneNodes(glitch::scene::ISceneNode*)
; decoder-mode: arm
00357ea4  70 40 2d e9                                      push {r4, r5, r6, lr}
00357ea8  00 40 a0 e1                                      mov r4, r0
00357eac  40 04 90 e5                                      ldr r0, [r0, #0x440]
00357eb0  3c 21 9f e5                                      ldr r2, [pc, #0x13c]
00357eb4  3c 31 9f e5                                      ldr r3, [pc, #0x13c]
00357eb8  01 00 80 e2                                      add r0, r0, #1
00357ebc  40 04 84 e5                                      str r0, [r4, #0x440]
00357ec0  02 20 8f e0                                      add r2, pc, r2
00357ec4  0c 20 d2 e5                                      ldrb r2, [r2, #0xc]
00357ec8  03 30 8f e0                                      add r3, pc, r3
00357ecc  01 60 a0 e1                                      mov r6, r1
00357ed0  00 00 52 e3                                      cmp r2, #0
00357ed4  3f 00 00 0a                                      beq #0x357fd8
00357ed8  1c 21 9f e5                                      ldr r2, [pc, #0x11c]
00357edc  02 20 93 e7                                      ldr r2, [r3, r2]
00357ee0  00 10 a0 e3                                      mov r1, #0
00357ee4  40 14 84 e5                                      str r1, [r4, #0x440]
00357ee8  30 20 d2 e5                                      ldrb r2, [r2, #0x30]
00357eec  01 00 52 e1                                      cmp r2, r1
00357ef0  01 10 a0 13                                      movne r1, #1
00357ef4  3c 00 00 0a                                      beq #0x357fec
00357ef8  00 21 9f e5                                      ldr r2, [pc, #0x100]
00357efc  02 20 8f e0                                      add r2, pc, r2
00357f00  0c 10 c2 e5                                      strb r1, [r2, #0xc]
00357f04  f8 20 9f e5                                      ldr r2, [pc, #0xf8]
00357f08  02 00 93 e7                                      ldr r0, [r3, r2]
00357f0c  a0 1d ff eb                                      bl #0x31f594
00357f10  89 32 d4 e5                                      ldrb r3, [r4, #0x289]
00357f14  00 50 a0 e1                                      mov r5, r0
00357f18  00 00 53 e3                                      cmp r3, #0
00357f1c  1f 00 00 1a                                      bne #0x357fa0
00357f20  40 04 94 e5                                      ldr r0, [r4, #0x440]
00357f24  44 14 94 e5                                      ldr r1, [r4, #0x444]
00357f28  75 da fe eb                                      bl #0x30e904
00357f2c  00 00 51 e3                                      cmp r1, #0
00357f30  1a 00 00 0a                                      beq #0x357fa0
00357f34  00 00 55 e3                                      cmp r5, #0
00357f38  06 00 00 0a                                      beq #0x357f58
00357f3c  58 31 95 e5                                      ldr r3, [r5, #0x158]
00357f40  00 00 53 e3                                      cmp r3, #0
00357f44  03 00 00 0a                                      beq #0x357f58
00357f48  34 00 93 e5                                      ldr r0, [r3, #0x34]
00357f4c  00 00 50 e3                                      cmp r0, #0
00357f50  00 00 00 0a                                      beq #0x357f58
00357f54  f0 d5 06 eb                                      bl #0x50d71c
00357f58  7c 34 94 e5                                      ldr r3, [r4, #0x47c]
00357f5c  80 64 94 e5                                      ldr r6, [r4, #0x480]
00357f60  06 60 63 e0                                      rsb r6, r3, r6
00357f64  46 61 a0 e1                                      asr r6, r6, #2
00357f68  00 00 56 e3                                      cmp r6, #0
00357f6c  0a 00 00 da                                      ble #0x357f9c
00357f70  00 50 a0 e3                                      mov r5, #0
00357f74  00 00 00 ea                                      b #0x357f7c
00357f78  7c 34 94 e5                                      ldr r3, [r4, #0x47c]
00357f7c  05 31 93 e7                                      ldr r3, [r3, r5, lsl #2]
00357f80  01 50 85 e2                                      add r5, r5, #1
00357f84  03 00 a0 e1                                      mov r0, r3
00357f88  00 30 93 e5                                      ldr r3, [r3]
00357f8c  0f e0 a0 e1                                      mov lr, pc
00357f90  00 f0 93 e5                                      ldr pc, [r3]
00357f94  06 00 55 e1                                      cmp r5, r6
00357f98  f6 ff ff 1a                                      bne #0x357f78
00357f9c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00357fa0  04 00 a0 e1                                      mov r0, r4
00357fa4  85 ff ff eb                                      bl #0x357dc0
00357fa8  7c 34 94 e5                                      ldr r3, [r4, #0x47c]
00357fac  80 24 94 e5                                      ldr r2, [r4, #0x480]
00357fb0  06 10 a0 e1                                      mov r1, r6
00357fb4  04 00 a0 e1                                      mov r0, r4
00357fb8  02 00 53 e1                                      cmp r3, r2
00357fbc  80 34 84 15                                      strne r3, [r4, #0x480]
00357fc0  31 ce 08 eb                                      bl #0x58b88c
00357fc4  00 30 a0 e3                                      mov r3, #0
00357fc8  48 34 c4 e5                                      strb r3, [r4, #0x448]
00357fcc  40 34 84 e5                                      str r3, [r4, #0x440]
00357fd0  89 32 c4 e5                                      strb r3, [r4, #0x289]
00357fd4  70 80 bd e8                                      pop {r4, r5, r6, pc}
00357fd8  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
00357fdc  02 10 93 e7                                      ldr r1, [r3, r2]
00357fe0  30 10 d1 e5                                      ldrb r1, [r1, #0x30]
00357fe4  00 00 51 e3                                      cmp r1, #0
00357fe8  bb ff ff 1a                                      bne #0x357edc
00357fec  48 14 d4 e5                                      ldrb r1, [r4, #0x448]
00357ff0  c0 ff ff ea                                      b #0x357ef8
; mapping-symbol data/literal pool
00357ff4  28 a0 64 00 c8 cb 63 00 20 1a 00 00 ec 9f 64 00  .byte 0x28, 0xa0, 0x64, 0x00, 0xc8, 0xcb, 0x63, 0x00, 0x20, 0x1a, 0x00, 0x00, 0xec, 0x9f, 0x64, 0x00
00358004  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00353bac, declared_size=208, range_size=208, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager25_RegisterAutomacticLightsEv
; demangled: SceneManager::_RegisterAutomacticLights()
; decoder-mode: arm
00353bac  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00353bb0  48 30 90 e5                                      ldr r3, [r0, #0x48]
00353bb4  4c 20 90 e5                                      ldr r2, [r0, #0x4c]
00353bb8  28 64 90 e5                                      ldr r6, [r0, #0x428]
00353bbc  24 d0 4d e2                                      sub sp, sp, #0x24
00353bc0  02 00 53 e1                                      cmp r3, r2
00353bc4  4c 30 80 15                                      strne r3, [r0, #0x4c]
00353bc8  24 34 90 e5                                      ldr r3, [r0, #0x424]
00353bcc  00 40 a0 e1                                      mov r4, r0
00353bd0  06 60 63 e0                                      rsb r6, r3, r6
00353bd4  46 61 a0 e1                                      asr r6, r6, #2
00353bd8  00 00 56 e3                                      cmp r6, #0
00353bdc  24 00 00 da                                      ble #0x353c74
00353be0  00 50 a0 e3                                      mov r5, #0
00353be4  48 90 80 e2                                      add sb, r0, #0x48
00353be8  08 80 8d e2                                      add r8, sp, #8
00353bec  05 70 a0 e1                                      mov r7, r5
00353bf0  1c b0 8d e2                                      add fp, sp, #0x1c
00353bf4  01 a0 a0 e3                                      mov sl, #1
00353bf8  08 00 00 ea                                      b #0x353c20
00353bfc  0f 00 98 e8                                      ldm r8, {r0, r1, r2, r3}
00353c00  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00353c04  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
00353c08  01 50 85 e2                                      add r5, r5, #1
00353c0c  06 00 55 e1                                      cmp r5, r6
00353c10  10 30 83 e2                                      add r3, r3, #0x10
00353c14  4c 30 84 e5                                      str r3, [r4, #0x4c]
00353c18  15 00 00 0a                                      beq #0x353c74
00353c1c  24 34 94 e5                                      ldr r3, [r4, #0x424]
00353c20  05 31 93 e7                                      ldr r3, [r3, r5, lsl #2]
00353c24  05 00 a0 e1                                      mov r0, r5
00353c28  20 31 93 e5                                      ldr r3, [r3, #0x120]
00353c2c  0c 70 8d e5                                      str r7, [sp, #0xc]
00353c30  08 30 8d e5                                      str r3, [sp, #8]
00353c34  3d ec fe eb                                      bl #0x30ed30
00353c38  4c c0 94 e5                                      ldr ip, [r4, #0x4c]
00353c3c  50 30 94 e5                                      ldr r3, [r4, #0x50]
00353c40  f0 01 cd e1                                      strd r0, r1, [sp, #0x10]
00353c44  03 00 5c e1                                      cmp ip, r3
00353c48  eb ff ff 1a                                      bne #0x353bfc
00353c4c  0c 10 a0 e1                                      mov r1, ip
00353c50  09 00 a0 e1                                      mov r0, sb
00353c54  08 20 a0 e1                                      mov r2, r8
00353c58  0b 30 a0 e1                                      mov r3, fp
00353c5c  01 50 85 e2                                      add r5, r5, #1
00353c60  00 a0 8d e5                                      str sl, [sp]
00353c64  04 a0 8d e5                                      str sl, [sp, #4]
00353c68  2c f7 ff eb                                      bl #0x351920
00353c6c  06 00 55 e1                                      cmp r5, r6
00353c70  e9 ff ff 1a                                      bne #0x353c1c
00353c74  24 d0 8d e2                                      add sp, sp, #0x24
00353c78  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x003587a0, declared_size=2832, range_size=2832, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager12_renderListsEPN6glitch5video12IVideoDriverE
; demangled: SceneManager::_renderLists(glitch::video::IVideoDriver*)
; decoder-mode: arm
003587a0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003587a4  40 34 90 e5                                      ldr r3, [r0, #0x440]
003587a8  c4 d0 4d e2                                      sub sp, sp, #0xc4
003587ac  00 40 a0 e1                                      mov r4, r0
003587b0  00 00 53 e3                                      cmp r3, #0
003587b4  1c 10 8d e5                                      str r1, [sp, #0x1c]
003587b8  48 50 80 12                                      addne r5, r0, #0x48
003587bc  3b 00 00 1a                                      bne #0x3588b0
003587c0  48 00 90 e5                                      ldr r0, [r0, #0x48]
003587c4  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
003587c8  03 10 60 e0                                      rsb r1, r0, r3
003587cc  41 12 a0 e1                                      asr r1, r1, #4
003587d0  01 00 51 e3                                      cmp r1, #1
003587d4  02 00 00 9a                                      bls #0x3587e4
003587d8  f8 e1 ff eb                                      bl #0x350fc0
003587dc  48 00 94 e5                                      ldr r0, [r4, #0x48]
003587e0  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
003587e4  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
003587e8  03 30 60 e0                                      rsb r3, r0, r3
003587ec  48 50 84 e2                                      add r5, r4, #0x48
003587f0  bc 23 d1 e1                                      ldrh r2, [r1, #0x3c]
003587f4  43 12 a0 e1                                      asr r1, r3, #4
003587f8  05 00 a0 e1                                      mov r0, r5
003587fc  02 00 51 e1                                      cmp r1, r2
00358800  02 10 a0 21                                      movhs r1, r2
00358804  00 30 a0 e3                                      mov r3, #0
00358808  90 20 8d e2                                      add r2, sp, #0x90
0035880c  00 60 a0 e3                                      mov r6, #0
00358810  00 70 a0 e3                                      mov r7, #0
00358814  94 30 8d e5                                      str r3, [sp, #0x94]
00358818  f8 69 cd e1                                      strd r6, r7, [sp, #0x98]
0035881c  90 30 8d e5                                      str r3, [sp, #0x90]
00358820  a4 e4 ff eb                                      bl #0x351ab8
00358824  78 00 94 e5                                      ldr r0, [r4, #0x78]
00358828  7c 10 94 e5                                      ldr r1, [r4, #0x7c]
0035882c  01 10 60 e0                                      rsb r1, r0, r1
00358830  41 12 a0 e1                                      asr r1, r1, #4
00358834  01 00 51 e3                                      cmp r1, #1
00358838  00 00 00 9a                                      bls #0x358840
0035883c  9a fa ff eb                                      bl #0x3572ac
00358840  54 00 94 e5                                      ldr r0, [r4, #0x54]
00358844  58 10 94 e5                                      ldr r1, [r4, #0x58]
00358848  01 10 60 e0                                      rsb r1, r0, r1
0035884c  c1 11 a0 e1                                      asr r1, r1, #3
00358850  71 30 ef e6                                      uxtb r3, r1
00358854  01 00 53 e3                                      cmp r3, #1
00358858  00 00 00 9a                                      bls #0x358860
0035885c  23 e2 ff eb                                      bl #0x3510f0
00358860  60 00 94 e5                                      ldr r0, [r4, #0x60]
00358864  64 10 94 e5                                      ldr r1, [r4, #0x64]
00358868  01 10 60 e0                                      rsb r1, r0, r1
0035886c  c1 11 a0 e1                                      asr r1, r1, #3
00358870  71 30 ef e6                                      uxtb r3, r1
00358874  01 00 53 e3                                      cmp r3, #1
00358878  00 00 00 9a                                      bls #0x358880
0035887c  1b e2 ff eb                                      bl #0x3510f0
00358880  84 00 94 e5                                      ldr r0, [r4, #0x84]
00358884  88 30 94 e5                                      ldr r3, [r4, #0x88]
00358888  03 30 60 e0                                      rsb r3, r0, r3
0035888c  43 31 a0 e1                                      asr r3, r3, #2
00358890  83 10 83 e0                                      add r1, r3, r3, lsl #1
00358894  01 12 81 e0                                      add r1, r1, r1, lsl #4
00358898  01 14 81 e0                                      add r1, r1, r1, lsl #8
0035889c  01 18 81 e0                                      add r1, r1, r1, lsl #16
003588a0  01 11 83 e0                                      add r1, r3, r1, lsl #2
003588a4  01 00 51 e3                                      cmp r1, #1
003588a8  00 00 00 9a                                      bls #0x3588b0
003588ac  95 f9 ff eb                                      bl #0x356f08
003588b0  3c 34 d4 e5                                      ldrb r3, [r4, #0x43c]
003588b4  00 10 a0 e3                                      mov r1, #0
003588b8  3c 20 84 e2                                      add r2, r4, #0x3c
003588bc  04 00 a0 e1                                      mov r0, r4
003588c0  20 30 8d e5                                      str r3, [sp, #0x20]
003588c4  a1 ed ff eb                                      bl #0x353f50
003588c8  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
003588cc  6c 48 09 eb                                      bl #0x5aaa84
003588d0  4c c0 94 e5                                      ldr ip, [r4, #0x4c]
003588d4  48 60 94 e5                                      ldr r6, [r4, #0x48]
003588d8  50 20 94 e5                                      ldr r2, [r4, #0x50]
003588dc  00 30 a0 e3                                      mov r3, #0
003588e0  0c 60 66 e0                                      rsb r6, r6, ip
003588e4  01 e0 a0 e3                                      mov lr, #1
003588e8  00 00 a0 e3                                      mov r0, #0
003588ec  00 10 a0 e3                                      mov r1, #0
003588f0  02 00 5c e1                                      cmp ip, r2
003588f4  84 30 8d e5                                      str r3, [sp, #0x84]
003588f8  f8 08 cd e1                                      strd r0, r1, [sp, #0x88]
003588fc  46 62 a0 e1                                      asr r6, r6, #4
00358900  74 e1 84 e5                                      str lr, [r4, #0x174]
00358904  80 30 8d e5                                      str r3, [sp, #0x80]
00358908  4f 02 00 0a                                      beq #0x35924c
0035890c  80 30 8d e2                                      add r3, sp, #0x80
00358910  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
00358914  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00358918  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
0035891c  10 30 83 e2                                      add r3, r3, #0x10
00358920  4c 30 84 e5                                      str r3, [r4, #0x4c]
00358924  48 30 94 e5                                      ldr r3, [r4, #0x48]
00358928  b0 70 94 e5                                      ldr r7, [r4, #0xb0]
0035892c  ac 20 94 e5                                      ldr r2, [r4, #0xac]
00358930  04 00 93 e5                                      ldr r0, [r3, #4]
00358934  00 10 93 e5                                      ldr r1, [r3]
00358938  a8 30 94 e5                                      ldr r3, [r4, #0xa8]
0035893c  a4 70 84 e5                                      str r7, [r4, #0xa4]
00358940  00 00 56 e3                                      cmp r6, #0
00358944  00 70 a0 e3                                      mov r7, #0
00358948  a0 20 84 e5                                      str r2, [r4, #0xa0]
0035894c  9c 30 84 e5                                      str r3, [r4, #0x9c]
00358950  00 20 a0 e1                                      mov r2, r0
00358954  a8 10 84 e5                                      str r1, [r4, #0xa8]
00358958  ac 00 84 e5                                      str r0, [r4, #0xac]
0035895c  b0 70 84 e5                                      str r7, [r4, #0xb0]
00358960  16 00 00 0a                                      beq #0x3589c0
00358964  07 80 a0 e1                                      mov r8, r7
00358968  00 20 95 e5                                      ldr r2, [r5]
0035896c  01 70 87 e2                                      add r7, r7, #1
00358970  a8 30 94 e5                                      ldr r3, [r4, #0xa8]
00358974  07 12 82 e0                                      add r1, r2, r7, lsl #4
00358978  04 00 91 e5                                      ldr r0, [r1, #4]
0035897c  07 c2 92 e7                                      ldr ip, [r2, r7, lsl #4]
00358980  ac 10 94 e5                                      ldr r1, [r4, #0xac]
00358984  b0 20 94 e5                                      ldr r2, [r4, #0xb0]
00358988  ac 00 84 e5                                      str r0, [r4, #0xac]
0035898c  a8 c0 84 e5                                      str ip, [r4, #0xa8]
00358990  a4 20 84 e5                                      str r2, [r4, #0xa4]
00358994  9c 30 84 e5                                      str r3, [r4, #0x9c]
00358998  a0 10 84 e5                                      str r1, [r4, #0xa0]
0035899c  b0 80 84 e5                                      str r8, [r4, #0xb0]
003589a0  03 00 a0 e1                                      mov r0, r3
003589a4  00 30 93 e5                                      ldr r3, [r3]
003589a8  0f e0 a0 e1                                      mov lr, pc
003589ac  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
003589b0  07 00 56 e1                                      cmp r6, r7
003589b4  eb ff ff 1a                                      bne #0x358968
003589b8  a8 10 84 e2                                      add r1, r4, #0xa8
003589bc  86 00 91 e8                                      ldm r1, {r1, r2, r7}
003589c0  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
003589c4  20 80 9d e5                                      ldr r8, [sp, #0x20]
003589c8  00 30 a0 e3                                      mov r3, #0
003589cc  10 c0 40 e2                                      sub ip, r0, #0x10
003589d0  10 e0 10 e5                                      ldr lr, [r0, #-0x10]
003589d4  04 00 9c e5                                      ldr r0, [ip, #4]
003589d8  00 00 58 e3                                      cmp r8, #0
003589dc  9c 10 84 e5                                      str r1, [r4, #0x9c]
003589e0  a0 20 84 e5                                      str r2, [r4, #0xa0]
003589e4  a4 70 84 e5                                      str r7, [r4, #0xa4]
003589e8  a8 e0 84 e5                                      str lr, [r4, #0xa8]
003589ec  ac 00 84 e5                                      str r0, [r4, #0xac]
003589f0  b0 30 84 e5                                      str r3, [r4, #0xb0]
003589f4  4c c0 84 05                                      streq ip, [r4, #0x4c]
003589f8  08 00 00 0a                                      beq #0x358a20
003589fc  00 60 a0 e3                                      mov r6, #0
00358a00  00 70 a0 e3                                      mov r7, #0
00358a04  05 00 a0 e1                                      mov r0, r5
00358a08  03 10 a0 e1                                      mov r1, r3
00358a0c  70 20 8d e2                                      add r2, sp, #0x70
00358a10  f8 67 cd e1                                      strd r6, r7, [sp, #0x78]
00358a14  70 30 8d e5                                      str r3, [sp, #0x70]
00358a18  74 30 8d e5                                      str r3, [sp, #0x74]
00358a1c  25 e4 ff eb                                      bl #0x351ab8
00358a20  02 10 a0 e3                                      mov r1, #2
00358a24  20 30 9d e5                                      ldr r3, [sp, #0x20]
00358a28  04 00 a0 e1                                      mov r0, r4
00358a2c  6c 20 84 e2                                      add r2, r4, #0x6c
00358a30  46 ed ff eb                                      bl #0x353f50
00358a34  7c 10 94 e5                                      ldr r1, [r4, #0x7c]
00358a38  78 30 94 e5                                      ldr r3, [r4, #0x78]
00358a3c  01 30 63 e0                                      rsb r3, r3, r1
00358a40  43 32 b0 e1                                      asrs r3, r3, #4
00358a44  10 30 8d e5                                      str r3, [sp, #0x10]
00358a48  c4 00 00 0a                                      beq #0x358d60
00358a4c  80 20 94 e5                                      ldr r2, [r4, #0x80]
00358a50  00 30 a0 e3                                      mov r3, #0
00358a54  78 50 84 e2                                      add r5, r4, #0x78
00358a58  02 00 51 e1                                      cmp r1, r2
00358a5c  04 20 a0 e3                                      mov r2, #4
00358a60  74 21 84 e5                                      str r2, [r4, #0x174]
00358a64  60 30 8d e5                                      str r3, [sp, #0x60]
00358a68  64 30 8d e5                                      str r3, [sp, #0x64]
00358a6c  68 30 8d e5                                      str r3, [sp, #0x68]
00358a70  6c 30 8d e5                                      str r3, [sp, #0x6c]
00358a74  fc 01 00 0a                                      beq #0x35926c
00358a78  00 30 81 e5                                      str r3, [r1]
00358a7c  64 30 9d e5                                      ldr r3, [sp, #0x64]
00358a80  60 60 8d e2                                      add r6, sp, #0x60
00358a84  04 30 81 e5                                      str r3, [r1, #4]
00358a88  68 30 9d e5                                      ldr r3, [sp, #0x68]
00358a8c  08 30 81 e5                                      str r3, [r1, #8]
00358a90  00 00 53 e3                                      cmp r3, #0
00358a94  00 20 93 15                                      ldrne r2, [r3]
00358a98  01 20 82 12                                      addne r2, r2, #1
00358a9c  00 20 83 15                                      strne r2, [r3]
00358aa0  6c 30 9d e5                                      ldr r3, [sp, #0x6c]
00358aa4  0c 30 81 e5                                      str r3, [r1, #0xc]
00358aa8  7c 30 94 e5                                      ldr r3, [r4, #0x7c]
00358aac  10 30 83 e2                                      add r3, r3, #0x10
00358ab0  7c 30 84 e5                                      str r3, [r4, #0x7c]
00358ab4  08 00 86 e2                                      add r0, r6, #8
00358ab8  df e4 ff eb                                      bl #0x351e3c
00358abc  78 30 94 e5                                      ldr r3, [r4, #0x78]
00358ac0  a8 e0 94 e5                                      ldr lr, [r4, #0xa8]
00358ac4  b0 00 94 e5                                      ldr r0, [r4, #0xb0]
00358ac8  00 10 93 e5                                      ldr r1, [r3]
00358acc  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00358ad0  ac c0 94 e5                                      ldr ip, [r4, #0xac]
00358ad4  04 30 93 e5                                      ldr r3, [r3, #4]
00358ad8  00 70 a0 e3                                      mov r7, #0
00358adc  9c e0 84 e5                                      str lr, [r4, #0x9c]
00358ae0  a4 00 84 e5                                      str r0, [r4, #0xa4]
00358ae4  a8 10 84 e5                                      str r1, [r4, #0xa8]
00358ae8  ac e0 8d e2                                      add lr, sp, #0xac
00358aec  a8 00 8d e2                                      add r0, sp, #0xa8
00358af0  b0 10 8d e2                                      add r1, sp, #0xb0
00358af4  a0 c0 84 e5                                      str ip, [r4, #0xa0]
00358af8  ac 30 84 e5                                      str r3, [r4, #0xac]
00358afc  b0 20 84 e5                                      str r2, [r4, #0xb0]
00358b00  01 90 a0 e3                                      mov sb, #1
00358b04  07 60 a0 e1                                      mov r6, r7
00358b08  18 e0 8d e5                                      str lr, [sp, #0x18]
00358b0c  14 00 8d e5                                      str r0, [sp, #0x14]
00358b10  24 10 8d e5                                      str r1, [sp, #0x24]
00358b14  00 20 95 e5                                      ldr r2, [r5]
00358b18  14 00 94 e5                                      ldr r0, [r4, #0x14]
00358b1c  01 70 87 e2                                      add r7, r7, #1
00358b20  06 10 82 e0                                      add r1, r2, r6
00358b24  08 30 91 e5                                      ldr r3, [r1, #8]
00358b28  06 80 92 e7                                      ldr r8, [r2, r6]
00358b2c  88 a0 90 e5                                      ldr sl, [r0, #0x88]
00358b30  00 00 53 e3                                      cmp r3, #0
00358b34  04 10 91 e5                                      ldr r1, [r1, #4]
00358b38  a8 30 8d e5                                      str r3, [sp, #0xa8]
00358b3c  00 20 93 15                                      ldrne r2, [r3]
00358b40  07 62 a0 e1                                      lsl r6, r7, #4
00358b44  00 00 a0 e3                                      mov r0, #0
00358b48  01 20 82 12                                      addne r2, r2, #1
00358b4c  00 20 83 15                                      strne r2, [r3]
00358b50  00 20 95 15                                      ldrne r2, [r5]
00358b54  04 30 95 e5                                      ldr r3, [r5, #4]
00358b58  5a a4 e0 e7                                      ubfx sl, sl, #8, #1
00358b5c  03 30 62 e0                                      rsb r3, r2, r3
00358b60  43 02 57 e1                                      cmp r7, r3, asr #4
00358b64  06 30 82 e0                                      add r3, r2, r6
00358b68  04 e0 93 e5                                      ldr lr, [r3, #4]
00358b6c  00 b0 a0 21                                      movhs fp, r0
00358b70  ac 00 8d e5                                      str r0, [sp, #0xac]
00358b74  0c e0 8d e5                                      str lr, [sp, #0xc]
00358b78  10 00 00 2a                                      bhs #0x358bc0
00358b7c  08 30 93 e5                                      ldr r3, [r3, #8]
00358b80  07 b2 92 e7                                      ldr fp, [r2, r7, lsl #4]
00358b84  00 00 53 e3                                      cmp r3, #0
00358b88  b0 30 8d e5                                      str r3, [sp, #0xb0]
00358b8c  00 20 93 15                                      ldrne r2, [r3]
00358b90  00 20 a0 03                                      moveq r2, #0
00358b94  02 30 a0 01                                      moveq r3, r2
00358b98  01 20 82 12                                      addne r2, r2, #1
00358b9c  00 20 83 15                                      strne r2, [r3]
00358ba0  b0 30 9d 15                                      ldrne r3, [sp, #0xb0]
00358ba4  ac 20 9d 15                                      ldrne r2, [sp, #0xac]
00358ba8  24 00 9d e5                                      ldr r0, [sp, #0x24]
00358bac  08 10 8d e5                                      str r1, [sp, #8]
00358bb0  b0 20 8d e5                                      str r2, [sp, #0xb0]
00358bb4  ac 30 8d e5                                      str r3, [sp, #0xac]
00358bb8  9f e4 ff eb                                      bl #0x351e3c
00358bbc  08 10 9d e5                                      ldr r1, [sp, #8]
00358bc0  00 30 98 e5                                      ldr r3, [r8]
00358bc4  08 00 a0 e1                                      mov r0, r8
00358bc8  0f e0 a0 e1                                      mov lr, pc
00358bcc  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00358bd0  14 30 94 e5                                      ldr r3, [r4, #0x14]
00358bd4  0c 31 93 e5                                      ldr r3, [r3, #0x10c]
00358bd8  03 00 50 e1                                      cmp r0, r3
00358bdc  00 80 a0 c3                                      movgt r8, #0
00358be0  01 30 a0 c3                                      movgt r3, #1
00358be4  1a 00 00 ca                                      bgt #0x358c54
00358be8  00 00 5b e3                                      cmp fp, #0
00358bec  16 00 00 0a                                      beq #0x358c4c
00358bf0  00 30 9b e5                                      ldr r3, [fp]
00358bf4  0b 00 a0 e1                                      mov r0, fp
00358bf8  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00358bfc  0f e0 a0 e1                                      mov lr, pc
00358c00  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00358c04  14 30 94 e5                                      ldr r3, [r4, #0x14]
00358c08  0c 31 93 e5                                      ldr r3, [r3, #0x10c]
00358c0c  03 00 50 e1                                      cmp r0, r3
00358c10  0d 00 00 ca                                      bgt #0x358c4c
00358c14  a8 00 9d e5                                      ldr r0, [sp, #0xa8]
00358c18  00 00 50 e3                                      cmp r0, #0
00358c1c  0a 00 00 0a                                      beq #0x358c4c
00358c20  ac 30 9d e5                                      ldr r3, [sp, #0xac]
00358c24  00 00 53 e3                                      cmp r3, #0
00358c28  07 00 00 0a                                      beq #0x358c4c
00358c2c  03 00 50 e1                                      cmp r0, r3
00358c30  82 01 00 0a                                      beq #0x359240
00358c34  84 ea ff eb                                      bl #0x35364c
00358c38  00 80 a0 e1                                      mov r8, r0
00358c3c  ac 00 9d e5                                      ldr r0, [sp, #0xac]
00358c40  81 ea ff eb                                      bl #0x35364c
00358c44  00 00 58 e1                                      cmp r8, r0
00358c48  7c 01 00 0a                                      beq #0x359240
00358c4c  00 80 a0 e3                                      mov r8, #0
00358c50  08 30 a0 e1                                      mov r3, r8
00358c54  00 00 5a e3                                      cmp sl, #0
00358c58  22 00 00 0a                                      beq #0x358ce8
00358c5c  00 00 53 e3                                      cmp r3, #0
00358c60  41 01 00 1a                                      bne #0x35916c
00358c64  00 00 59 e3                                      cmp sb, #0
00358c68  03 00 00 0a                                      beq #0x358c7c
00358c6c  00 00 5a e3                                      cmp sl, #0
00358c70  01 00 00 0a                                      beq #0x358c7c
00358c74  00 00 58 e3                                      cmp r8, #0
00358c78  5d 01 00 0a                                      beq #0x3591f4
00358c7c  00 20 95 e5                                      ldr r2, [r5]
00358c80  ac 10 94 e5                                      ldr r1, [r4, #0xac]
00358c84  a8 30 94 e5                                      ldr r3, [r4, #0xa8]
00358c88  06 00 82 e0                                      add r0, r2, r6
00358c8c  06 e0 92 e7                                      ldr lr, [r2, r6]
00358c90  04 c0 90 e5                                      ldr ip, [r0, #4]
00358c94  0c 20 90 e5                                      ldr r2, [r0, #0xc]
00358c98  b0 00 94 e5                                      ldr r0, [r4, #0xb0]
00358c9c  a0 10 84 e5                                      str r1, [r4, #0xa0]
00358ca0  a8 e0 84 e5                                      str lr, [r4, #0xa8]
00358ca4  ac c0 84 e5                                      str ip, [r4, #0xac]
00358ca8  b0 20 84 e5                                      str r2, [r4, #0xb0]
00358cac  a4 00 84 e5                                      str r0, [r4, #0xa4]
00358cb0  9c 30 84 e5                                      str r3, [r4, #0x9c]
00358cb4  03 00 a0 e1                                      mov r0, r3
00358cb8  00 30 93 e5                                      ldr r3, [r3]
00358cbc  0f e0 a0 e1                                      mov lr, pc
00358cc0  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00358cc4  18 00 9d e5                                      ldr r0, [sp, #0x18]
00358cc8  5b e4 ff eb                                      bl #0x351e3c
00358ccc  14 00 9d e5                                      ldr r0, [sp, #0x14]
00358cd0  59 e4 ff eb                                      bl #0x351e3c
00358cd4  10 10 9d e5                                      ldr r1, [sp, #0x10]
00358cd8  07 00 51 e1                                      cmp r1, r7
00358cdc  0b 00 00 0a                                      beq #0x358d10
00358ce0  01 90 28 e2                                      eor sb, r8, #1
00358ce4  8a ff ff ea                                      b #0x358b14
00358ce8  00 00 58 e3                                      cmp r8, #0
00358cec  dc ff ff 0a                                      beq #0x358c64
00358cf0  14 30 94 e5                                      ldr r3, [r4, #0x14]
00358cf4  01 1c a0 e3                                      mov r1, #0x100
00358cf8  01 20 a0 e3                                      mov r2, #1
00358cfc  03 00 a0 e1                                      mov r0, r3
00358d00  00 30 93 e5                                      ldr r3, [r3]
00358d04  0f e0 a0 e1                                      mov lr, pc
00358d08  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
00358d0c  da ff ff ea                                      b #0x358c7c
00358d10  7c 00 94 e5                                      ldr r0, [r4, #0x7c]
00358d14  20 80 9d e5                                      ldr r8, [sp, #0x20]
00358d18  a8 70 94 e5                                      ldr r7, [r4, #0xa8]
00358d1c  10 30 40 e2                                      sub r3, r0, #0x10
00358d20  10 c0 10 e5                                      ldr ip, [r0, #-0x10]
00358d24  04 10 93 e5                                      ldr r1, [r3, #4]
00358d28  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00358d2c  ac 60 94 e5                                      ldr r6, [r4, #0xac]
00358d30  b0 e0 94 e5                                      ldr lr, [r4, #0xb0]
00358d34  00 00 58 e3                                      cmp r8, #0
00358d38  9c 70 84 e5                                      str r7, [r4, #0x9c]
00358d3c  a0 60 84 e5                                      str r6, [r4, #0xa0]
00358d40  a4 e0 84 e5                                      str lr, [r4, #0xa4]
00358d44  a8 c0 84 e5                                      str ip, [r4, #0xa8]
00358d48  ac 10 84 e5                                      str r1, [r4, #0xac]
00358d4c  b0 20 84 e5                                      str r2, [r4, #0xb0]
00358d50  0d 01 00 1a                                      bne #0x35918c
00358d54  7c 30 84 e5                                      str r3, [r4, #0x7c]
00358d58  08 00 40 e2                                      sub r0, r0, #8
00358d5c  36 e4 ff eb                                      bl #0x351e3c
00358d60  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
00358d64  00 60 a0 e3                                      mov r6, #0
00358d68  00 60 8d e5                                      str r6, [sp]
00358d6c  00 c0 9e e5                                      ldr ip, [lr]
00358d70  0e 00 a0 e1                                      mov r0, lr
00358d74  06 10 a0 e1                                      mov r1, r6
00358d78  06 20 a0 e1                                      mov r2, r6
00358d7c  06 30 a0 e1                                      mov r3, r6
00358d80  0f e0 a0 e1                                      mov lr, pc
00358d84  d4 f0 9c e5                                      ldr pc, [ip, #0xd4]
00358d88  04 00 a0 e1                                      mov r0, r4
00358d8c  05 10 a0 e3                                      mov r1, #5
00358d90  54 20 84 e2                                      add r2, r4, #0x54
00358d94  20 30 9d e5                                      ldr r3, [sp, #0x20]
00358d98  b7 eb ff eb                                      bl #0x353c7c
00358d9c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00358da0  01 70 a0 e3                                      mov r7, #1
00358da4  00 70 8d e5                                      str r7, [sp]
00358da8  00 c0 90 e5                                      ldr ip, [r0]
00358dac  07 10 a0 e1                                      mov r1, r7
00358db0  07 20 a0 e1                                      mov r2, r7
00358db4  07 30 a0 e1                                      mov r3, r7
00358db8  0f e0 a0 e1                                      mov lr, pc
00358dbc  d4 f0 9c e5                                      ldr pc, [ip, #0xd4]
00358dc0  06 10 a0 e3                                      mov r1, #6
00358dc4  60 20 84 e2                                      add r2, r4, #0x60
00358dc8  20 30 9d e5                                      ldr r3, [sp, #0x20]
00358dcc  04 00 a0 e1                                      mov r0, r4
00358dd0  a9 eb ff eb                                      bl #0x353c7c
00358dd4  88 10 94 e5                                      ldr r1, [r4, #0x88]
00358dd8  84 30 94 e5                                      ldr r3, [r4, #0x84]
00358ddc  01 30 63 e0                                      rsb r3, r3, r1
00358de0  43 31 a0 e1                                      asr r3, r3, #2
00358de4  83 20 83 e0                                      add r2, r3, r3, lsl #1
00358de8  02 22 82 e0                                      add r2, r2, r2, lsl #4
00358dec  02 24 82 e0                                      add r2, r2, r2, lsl #8
00358df0  02 28 82 e0                                      add r2, r2, r2, lsl #16
00358df4  02 21 93 e0                                      adds r2, r3, r2, lsl #2
00358df8  10 20 8d e5                                      str r2, [sp, #0x10]
00358dfc  ce 00 00 0a                                      beq #0x35913c
00358e00  8c 30 94 e5                                      ldr r3, [r4, #0x8c]
00358e04  84 50 84 e2                                      add r5, r4, #0x84
00358e08  03 00 51 e1                                      cmp r1, r3
00358e0c  08 30 a0 e3                                      mov r3, #8
00358e10  74 31 84 e5                                      str r3, [r4, #0x174]
00358e14  00 30 a0 e3                                      mov r3, #0
00358e18  4c 30 8d e5                                      str r3, [sp, #0x4c]
00358e1c  3c 60 8d e5                                      str r6, [sp, #0x3c]
00358e20  40 60 8d e5                                      str r6, [sp, #0x40]
00358e24  44 60 8d e5                                      str r6, [sp, #0x44]
00358e28  48 60 8d e5                                      str r6, [sp, #0x48]
00358e2c  17 01 00 0a                                      beq #0x359290
00358e30  00 60 81 e5                                      str r6, [r1]
00358e34  40 30 9d e5                                      ldr r3, [sp, #0x40]
00358e38  04 30 81 e5                                      str r3, [r1, #4]
00358e3c  44 30 9d e5                                      ldr r3, [sp, #0x44]
00358e40  08 30 81 e5                                      str r3, [r1, #8]
00358e44  06 00 53 e1                                      cmp r3, r6
00358e48  00 20 93 15                                      ldrne r2, [r3]
00358e4c  3c 60 8d e2                                      add r6, sp, #0x3c
00358e50  07 20 82 10                                      addne r2, r2, r7
00358e54  00 20 83 15                                      strne r2, [r3]
00358e58  48 30 9d e5                                      ldr r3, [sp, #0x48]
00358e5c  0c 30 81 e5                                      str r3, [r1, #0xc]
00358e60  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
00358e64  10 30 81 e5                                      str r3, [r1, #0x10]
00358e68  88 30 94 e5                                      ldr r3, [r4, #0x88]
00358e6c  14 30 83 e2                                      add r3, r3, #0x14
00358e70  88 30 84 e5                                      str r3, [r4, #0x88]
00358e74  08 00 86 e2                                      add r0, r6, #8
00358e78  ef e3 ff eb                                      bl #0x351e3c
00358e7c  84 30 94 e5                                      ldr r3, [r4, #0x84]
00358e80  b0 00 94 e5                                      ldr r0, [r4, #0xb0]
00358e84  a8 e0 94 e5                                      ldr lr, [r4, #0xa8]
00358e88  00 10 93 e5                                      ldr r1, [r3]
00358e8c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00358e90  04 30 93 e5                                      ldr r3, [r3, #4]
00358e94  ac c0 94 e5                                      ldr ip, [r4, #0xac]
00358e98  a4 00 84 e5                                      str r0, [r4, #0xa4]
00358e9c  a8 10 84 e5                                      str r1, [r4, #0xa8]
00358ea0  ac 30 84 e5                                      str r3, [r4, #0xac]
00358ea4  00 60 a0 e3                                      mov r6, #0
00358ea8  ac 00 8d e2                                      add r0, sp, #0xac
00358eac  a8 10 8d e2                                      add r1, sp, #0xa8
00358eb0  a4 30 8d e2                                      add r3, sp, #0xa4
00358eb4  9c e0 84 e5                                      str lr, [r4, #0x9c]
00358eb8  a0 c0 84 e5                                      str ip, [r4, #0xa0]
00358ebc  b0 20 84 e5                                      str r2, [r4, #0xb0]
00358ec0  01 90 a0 e3                                      mov sb, #1
00358ec4  06 70 a0 e1                                      mov r7, r6
00358ec8  18 00 8d e5                                      str r0, [sp, #0x18]
00358ecc  14 10 8d e5                                      str r1, [sp, #0x14]
00358ed0  1c 30 8d e5                                      str r3, [sp, #0x1c]
00358ed4  00 30 95 e5                                      ldr r3, [r5]
00358ed8  14 00 94 e5                                      ldr r0, [r4, #0x14]
00358edc  01 70 87 e2                                      add r7, r7, #1
00358ee0  06 10 83 e0                                      add r1, r3, r6
00358ee4  08 20 91 e5                                      ldr r2, [r1, #8]
00358ee8  06 80 93 e7                                      ldr r8, [r3, r6]
00358eec  88 a0 90 e5                                      ldr sl, [r0, #0x88]
00358ef0  00 00 52 e3                                      cmp r2, #0
00358ef4  04 10 91 e5                                      ldr r1, [r1, #4]
00358ef8  ac 20 8d e5                                      str r2, [sp, #0xac]
00358efc  00 30 92 15                                      ldrne r3, [r2]
00358f00  14 60 86 e2                                      add r6, r6, #0x14
00358f04  5a a4 e0 e7                                      ubfx sl, sl, #8, #1
00358f08  01 30 83 12                                      addne r3, r3, #1
00358f0c  00 30 82 15                                      strne r3, [r2]
00358f10  00 30 95 15                                      ldrne r3, [r5]
00358f14  04 20 95 e5                                      ldr r2, [r5, #4]
00358f18  06 c0 83 e0                                      add ip, r3, r6
00358f1c  02 20 63 e0                                      rsb r2, r3, r2
00358f20  42 21 a0 e1                                      asr r2, r2, #2
00358f24  04 e0 9c e5                                      ldr lr, [ip, #4]
00358f28  82 00 82 e0                                      add r0, r2, r2, lsl #1
00358f2c  00 02 80 e0                                      add r0, r0, r0, lsl #4
00358f30  0c e0 8d e5                                      str lr, [sp, #0xc]
00358f34  00 04 80 e0                                      add r0, r0, r0, lsl #8
00358f38  00 e0 a0 e3                                      mov lr, #0
00358f3c  00 08 80 e0                                      add r0, r0, r0, lsl #16
00358f40  a8 e0 8d e5                                      str lr, [sp, #0xa8]
00358f44  00 01 82 e0                                      add r0, r2, r0, lsl #2
00358f48  00 00 57 e1                                      cmp r7, r0
00358f4c  0e b0 a0 21                                      movhs fp, lr
00358f50  0f 00 00 2a                                      bhs #0x358f94
00358f54  08 20 9c e5                                      ldr r2, [ip, #8]
00358f58  06 b0 93 e7                                      ldr fp, [r3, r6]
00358f5c  00 00 52 e3                                      cmp r2, #0
00358f60  a4 20 8d e5                                      str r2, [sp, #0xa4]
00358f64  00 30 92 15                                      ldrne r3, [r2]
00358f68  02 30 a0 01                                      moveq r3, r2
00358f6c  01 30 83 12                                      addne r3, r3, #1
00358f70  00 30 82 15                                      strne r3, [r2]
00358f74  a4 30 9d 15                                      ldrne r3, [sp, #0xa4]
00358f78  a8 20 9d 15                                      ldrne r2, [sp, #0xa8]
00358f7c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00358f80  08 10 8d e5                                      str r1, [sp, #8]
00358f84  a4 20 8d e5                                      str r2, [sp, #0xa4]
00358f88  a8 30 8d e5                                      str r3, [sp, #0xa8]
00358f8c  aa e3 ff eb                                      bl #0x351e3c
00358f90  08 10 9d e5                                      ldr r1, [sp, #8]
00358f94  00 30 98 e5                                      ldr r3, [r8]
00358f98  08 00 a0 e1                                      mov r0, r8
00358f9c  0f e0 a0 e1                                      mov lr, pc
00358fa0  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00358fa4  14 30 94 e5                                      ldr r3, [r4, #0x14]
00358fa8  0c 31 93 e5                                      ldr r3, [r3, #0x10c]
00358fac  03 00 50 e1                                      cmp r0, r3
00358fb0  01 80 a0 c3                                      movgt r8, #1
00358fb4  00 20 a0 c3                                      movgt r2, #0
00358fb8  08 30 a0 c1                                      movgt r3, r8
00358fbc  1b 00 00 ca                                      bgt #0x359030
00358fc0  00 00 5b e3                                      cmp fp, #0
00358fc4  16 00 00 0a                                      beq #0x359024
00358fc8  00 30 9b e5                                      ldr r3, [fp]
00358fcc  0b 00 a0 e1                                      mov r0, fp
00358fd0  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00358fd4  0f e0 a0 e1                                      mov lr, pc
00358fd8  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00358fdc  14 30 94 e5                                      ldr r3, [r4, #0x14]
00358fe0  0c 31 93 e5                                      ldr r3, [r3, #0x10c]
00358fe4  03 00 50 e1                                      cmp r0, r3
00358fe8  0d 00 00 ca                                      bgt #0x359024
00358fec  ac 00 9d e5                                      ldr r0, [sp, #0xac]
00358ff0  00 00 50 e3                                      cmp r0, #0
00358ff4  0a 00 00 0a                                      beq #0x359024
00358ff8  a8 30 9d e5                                      ldr r3, [sp, #0xa8]
00358ffc  00 00 53 e3                                      cmp r3, #0
00359000  07 00 00 0a                                      beq #0x359024
00359004  03 00 50 e1                                      cmp r0, r3
00359008  88 00 00 0a                                      beq #0x359230
0035900c  8e e9 ff eb                                      bl #0x35364c
00359010  00 80 a0 e1                                      mov r8, r0
00359014  a8 00 9d e5                                      ldr r0, [sp, #0xa8]
00359018  8b e9 ff eb                                      bl #0x35364c
0035901c  00 00 58 e1                                      cmp r8, r0
00359020  82 00 00 0a                                      beq #0x359230
00359024  00 20 a0 e3                                      mov r2, #0
00359028  01 80 a0 e3                                      mov r8, #1
0035902c  02 30 a0 e1                                      mov r3, r2
00359030  00 00 5a e3                                      cmp sl, #0
00359034  22 00 00 0a                                      beq #0x3590c4
00359038  00 00 53 e3                                      cmp r3, #0
0035903c  42 00 00 1a                                      bne #0x35914c
00359040  00 00 59 e3                                      cmp sb, #0
00359044  03 00 00 0a                                      beq #0x359058
00359048  00 00 5a e3                                      cmp sl, #0
0035904c  01 00 00 0a                                      beq #0x359058
00359050  00 00 52 e3                                      cmp r2, #0
00359054  6e 00 00 0a                                      beq #0x359214
00359058  00 20 95 e5                                      ldr r2, [r5]
0035905c  a8 30 94 e5                                      ldr r3, [r4, #0xa8]
00359060  ac 10 94 e5                                      ldr r1, [r4, #0xac]
00359064  06 00 82 e0                                      add r0, r2, r6
00359068  06 e0 92 e7                                      ldr lr, [r2, r6]
0035906c  04 c0 90 e5                                      ldr ip, [r0, #4]
00359070  0c 20 90 e5                                      ldr r2, [r0, #0xc]
00359074  b0 00 94 e5                                      ldr r0, [r4, #0xb0]
00359078  a8 e0 84 e5                                      str lr, [r4, #0xa8]
0035907c  ac c0 84 e5                                      str ip, [r4, #0xac]
00359080  b0 20 84 e5                                      str r2, [r4, #0xb0]
00359084  a0 10 84 e5                                      str r1, [r4, #0xa0]
00359088  a4 00 84 e5                                      str r0, [r4, #0xa4]
0035908c  9c 30 84 e5                                      str r3, [r4, #0x9c]
00359090  03 00 a0 e1                                      mov r0, r3
00359094  00 30 93 e5                                      ldr r3, [r3]
00359098  0f e0 a0 e1                                      mov lr, pc
0035909c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
003590a0  14 00 9d e5                                      ldr r0, [sp, #0x14]
003590a4  64 e3 ff eb                                      bl #0x351e3c
003590a8  18 00 9d e5                                      ldr r0, [sp, #0x18]
003590ac  62 e3 ff eb                                      bl #0x351e3c
003590b0  10 00 9d e5                                      ldr r0, [sp, #0x10]
003590b4  07 00 50 e1                                      cmp r0, r7
003590b8  0b 00 00 0a                                      beq #0x3590ec
003590bc  08 90 a0 e1                                      mov sb, r8
003590c0  83 ff ff ea                                      b #0x358ed4
003590c4  00 00 52 e3                                      cmp r2, #0
003590c8  dc ff ff 0a                                      beq #0x359040
003590cc  14 30 94 e5                                      ldr r3, [r4, #0x14]
003590d0  01 1c a0 e3                                      mov r1, #0x100
003590d4  01 20 a0 e3                                      mov r2, #1
003590d8  03 00 a0 e1                                      mov r0, r3
003590dc  00 30 93 e5                                      ldr r3, [r3]
003590e0  0f e0 a0 e1                                      mov lr, pc
003590e4  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
003590e8  da ff ff ea                                      b #0x359058
003590ec  88 00 94 e5                                      ldr r0, [r4, #0x88]
003590f0  20 80 9d e5                                      ldr r8, [sp, #0x20]
003590f4  a8 70 94 e5                                      ldr r7, [r4, #0xa8]
003590f8  14 30 40 e2                                      sub r3, r0, #0x14
003590fc  14 c0 10 e5                                      ldr ip, [r0, #-0x14]
00359100  04 10 93 e5                                      ldr r1, [r3, #4]
00359104  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00359108  ac 60 94 e5                                      ldr r6, [r4, #0xac]
0035910c  b0 e0 94 e5                                      ldr lr, [r4, #0xb0]
00359110  00 00 58 e3                                      cmp r8, #0
00359114  9c 70 84 e5                                      str r7, [r4, #0x9c]
00359118  a0 60 84 e5                                      str r6, [r4, #0xa0]
0035911c  a4 e0 84 e5                                      str lr, [r4, #0xa4]
00359120  a8 c0 84 e5                                      str ip, [r4, #0xa8]
00359124  ac 10 84 e5                                      str r1, [r4, #0xac]
00359128  b0 20 84 e5                                      str r2, [r4, #0xb0]
0035912c  22 00 00 1a                                      bne #0x3591bc
00359130  88 30 84 e5                                      str r3, [r4, #0x88]
00359134  0c 00 40 e2                                      sub r0, r0, #0xc
00359138  3f e3 ff eb                                      bl #0x351e3c
0035913c  04 00 a0 e1                                      mov r0, r4
00359140  82 c8 08 eb                                      bl #0x58b350
00359144  c4 d0 8d e2                                      add sp, sp, #0xc4
00359148  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0035914c  14 30 94 e5                                      ldr r3, [r4, #0x14]
00359150  01 1c a0 e3                                      mov r1, #0x100
00359154  00 20 a0 e3                                      mov r2, #0
00359158  03 00 a0 e1                                      mov r0, r3
0035915c  00 30 93 e5                                      ldr r3, [r3]
00359160  0f e0 a0 e1                                      mov lr, pc
00359164  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
00359168  ba ff ff ea                                      b #0x359058
0035916c  14 30 94 e5                                      ldr r3, [r4, #0x14]
00359170  01 1c a0 e3                                      mov r1, #0x100
00359174  00 20 a0 e3                                      mov r2, #0
00359178  03 00 a0 e1                                      mov r0, r3
0035917c  00 30 93 e5                                      ldr r3, [r3]
00359180  0f e0 a0 e1                                      mov lr, pc
00359184  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
00359188  bb fe ff ea                                      b #0x358c7c
0035918c  50 60 8d e2                                      add r6, sp, #0x50
00359190  00 30 a0 e3                                      mov r3, #0
00359194  05 00 a0 e1                                      mov r0, r5
00359198  06 10 a0 e1                                      mov r1, r6
0035919c  5c 30 8d e5                                      str r3, [sp, #0x5c]
003591a0  50 30 8d e5                                      str r3, [sp, #0x50]
003591a4  54 30 8d e5                                      str r3, [sp, #0x54]
003591a8  58 30 8d e5                                      str r3, [sp, #0x58]
003591ac  60 f9 ff eb                                      bl #0x357734
003591b0  08 00 86 e2                                      add r0, r6, #8
003591b4  20 e3 ff eb                                      bl #0x351e3c
003591b8  e8 fe ff ea                                      b #0x358d60
003591bc  28 60 8d e2                                      add r6, sp, #0x28
003591c0  00 30 a0 e3                                      mov r3, #0
003591c4  05 00 a0 e1                                      mov r0, r5
003591c8  00 20 a0 e3                                      mov r2, #0
003591cc  06 10 a0 e1                                      mov r1, r6
003591d0  34 30 8d e5                                      str r3, [sp, #0x34]
003591d4  38 20 8d e5                                      str r2, [sp, #0x38]
003591d8  28 30 8d e5                                      str r3, [sp, #0x28]
003591dc  2c 30 8d e5                                      str r3, [sp, #0x2c]
003591e0  30 30 8d e5                                      str r3, [sp, #0x30]
003591e4  dd fa ff eb                                      bl #0x357d60
003591e8  08 00 86 e2                                      add r0, r6, #8
003591ec  12 e3 ff eb                                      bl #0x351e3c
003591f0  d1 ff ff ea                                      b #0x35913c
003591f4  14 30 94 e5                                      ldr r3, [r4, #0x14]
003591f8  01 1c a0 e3                                      mov r1, #0x100
003591fc  08 20 a0 e1                                      mov r2, r8
00359200  03 00 a0 e1                                      mov r0, r3
00359204  00 30 93 e5                                      ldr r3, [r3]
00359208  0f e0 a0 e1                                      mov lr, pc
0035920c  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
00359210  99 fe ff ea                                      b #0x358c7c
00359214  14 30 94 e5                                      ldr r3, [r4, #0x14]
00359218  01 1c a0 e3                                      mov r1, #0x100
0035921c  03 00 a0 e1                                      mov r0, r3
00359220  00 30 93 e5                                      ldr r3, [r3]
00359224  0f e0 a0 e1                                      mov lr, pc
00359228  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
0035922c  89 ff ff ea                                      b #0x359058
00359230  00 80 a0 e3                                      mov r8, #0
00359234  01 20 a0 e3                                      mov r2, #1
00359238  08 30 a0 e1                                      mov r3, r8
0035923c  7b ff ff ea                                      b #0x359030
00359240  01 80 a0 e3                                      mov r8, #1
00359244  00 30 a0 e3                                      mov r3, #0
00359248  81 fe ff ea                                      b #0x358c54
0035924c  0c 10 a0 e1                                      mov r1, ip
00359250  05 00 a0 e1                                      mov r0, r5
00359254  80 20 8d e2                                      add r2, sp, #0x80
00359258  bc 30 8d e2                                      add r3, sp, #0xbc
0035925c  04 e0 8d e5                                      str lr, [sp, #4]
00359260  00 e0 8d e5                                      str lr, [sp]
00359264  ad e1 ff eb                                      bl #0x351920
00359268  ad fd ff ea                                      b #0x358924
0035926c  60 60 8d e2                                      add r6, sp, #0x60
00359270  01 c0 a0 e3                                      mov ip, #1
00359274  05 00 a0 e1                                      mov r0, r5
00359278  06 20 a0 e1                                      mov r2, r6
0035927c  b8 30 8d e2                                      add r3, sp, #0xb8
00359280  04 c0 8d e5                                      str ip, [sp, #4]
00359284  00 c0 8d e5                                      str ip, [sp]
00359288  fd e2 ff eb                                      bl #0x351e84
0035928c  08 fe ff ea                                      b #0x358ab4
00359290  3c 60 8d e2                                      add r6, sp, #0x3c
00359294  05 00 a0 e1                                      mov r0, r5
00359298  06 20 a0 e1                                      mov r2, r6
0035929c  b4 30 8d e2                                      add r3, sp, #0xb4
003592a0  04 70 8d e5                                      str r7, [sp, #4]
003592a4  00 70 8d e5                                      str r7, [sp]
003592a8  9b f5 ff eb                                      bl #0x35691c
003592ac  f0 fe ff ea                                      b #0x358e74
