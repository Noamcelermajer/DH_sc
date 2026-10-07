; Selected original ARM function ranges used in the generic GUI widget-rendering trace.
; Function and literal-pool bytes were checked against the corresponding APK ELF slices.

; SOURCE ASSEMBLY: glitch_gui_CGUIImage-83d6a9d28afc-001.asm
; FUNCTION 0x00540da0, declared_size=396, range_size=396, mode=arm
; class-group: glitch::gui::CGUIImage
; alias: _ZN6glitch3gui9CGUIImage4drawEv
; demangled: glitch::gui::CGUIImage::draw()
; decoder-mode: arm
00540da0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00540da4  98 30 d0 e5                                      ldrb r3, [r0, #0x98]
00540da8  54 d0 4d e2                                      sub sp, sp, #0x54
00540dac  00 40 a0 e1                                      mov r4, r0
00540db0  00 00 53 e3                                      cmp r3, #0
00540db4  01 00 00 1a                                      bne #0x540dc0
00540db8  54 d0 8d e2                                      add sp, sp, #0x54
00540dbc  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00540dc0  50 31 90 e5                                      ldr r3, [r0, #0x150]
00540dc4  03 00 a0 e1                                      mov r0, r3
00540dc8  00 30 93 e5                                      ldr r3, [r3]
00540dcc  0f e0 a0 e1                                      mov lr, pc
00540dd0  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00540dd4  50 31 94 e5                                      ldr r3, [r4, #0x150]
00540dd8  00 60 a0 e1                                      mov r6, r0
00540ddc  03 00 a0 e1                                      mov r0, r3
00540de0  00 30 93 e5                                      ldr r3, [r3]
00540de4  0f e0 a0 e1                                      mov lr, pc
00540de8  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00540dec  5c 11 94 e5                                      ldr r1, [r4, #0x15c]
00540df0  00 00 51 e3                                      cmp r1, #0
00540df4  36 00 00 0a                                      beq #0x540ed4
00540df8  61 31 d4 e5                                      ldrb r3, [r4, #0x161]
00540dfc  00 00 53 e3                                      cmp r3, #0
00540e00  1c 00 00 1a                                      bne #0x540e78
00540e04  20 30 8d e5                                      str r3, [sp, #0x20]
00540e08  1c 30 8d e5                                      str r3, [sp, #0x1c]
00540e0c  20 70 91 e5                                      ldr r7, [r1, #0x20]
00540e10  24 60 91 e5                                      ldr r6, [r1, #0x24]
00540e14  58 e1 94 e5                                      ldr lr, [r4, #0x158]
00540e18  60 c1 d4 e5                                      ldrb ip, [r4, #0x160]
00540e1c  48 50 84 e2                                      add r5, r4, #0x48
00540e20  57 1f 84 e2                                      add r1, r4, #0x15c
00540e24  38 20 84 e2                                      add r2, r4, #0x38
00540e28  1c 30 8d e2                                      add r3, sp, #0x1c
00540e2c  24 70 8d e5                                      str r7, [sp, #0x24]
00540e30  28 60 8d e5                                      str r6, [sp, #0x28]
00540e34  20 40 8d e8                                      stm sp, {r5, lr}
00540e38  08 c0 8d e5                                      str ip, [sp, #8]
00540e3c  0f 7b 01 eb                                      bl #0x59fa80
00540e40  98 30 d4 e5                                      ldrb r3, [r4, #0x98]
00540e44  00 00 53 e3                                      cmp r3, #0
00540e48  04 50 b4 15                                      ldrne r5, [r4, #4]!
00540e4c  06 00 00 1a                                      bne #0x540e6c
00540e50  d8 ff ff ea                                      b #0x540db8
00540e54  08 30 95 e5                                      ldr r3, [r5, #8]
00540e58  03 00 a0 e1                                      mov r0, r3
00540e5c  00 30 93 e5                                      ldr r3, [r3]
00540e60  0f e0 a0 e1                                      mov lr, pc
00540e64  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00540e68  00 50 95 e5                                      ldr r5, [r5]
00540e6c  04 00 55 e1                                      cmp r5, r4
00540e70  f7 ff ff 1a                                      bne #0x540e54
00540e74  cf ff ff ea                                      b #0x540db8
00540e78  58 31 94 e5                                      ldr r3, [r4, #0x158]
00540e7c  00 20 a0 e3                                      mov r2, #0
00540e80  30 20 8d e5                                      str r2, [sp, #0x30]
00540e84  48 30 8d e5                                      str r3, [sp, #0x48]
00540e88  3c 30 8d e5                                      str r3, [sp, #0x3c]
00540e8c  40 30 8d e5                                      str r3, [sp, #0x40]
00540e90  44 30 8d e5                                      str r3, [sp, #0x44]
00540e94  2c 20 8d e5                                      str r2, [sp, #0x2c]
00540e98  20 60 91 e5                                      ldr r6, [r1, #0x20]
00540e9c  24 50 91 e5                                      ldr r5, [r1, #0x24]
00540ea0  60 c1 d4 e5                                      ldrb ip, [r4, #0x160]
00540ea4  48 e0 84 e2                                      add lr, r4, #0x48
00540ea8  00 e0 8d e5                                      str lr, [sp]
00540eac  57 1f 84 e2                                      add r1, r4, #0x15c
00540eb0  3c e0 8d e2                                      add lr, sp, #0x3c
00540eb4  38 20 84 e2                                      add r2, r4, #0x38
00540eb8  2c 30 8d e2                                      add r3, sp, #0x2c
00540ebc  34 60 8d e5                                      str r6, [sp, #0x34]
00540ec0  38 50 8d e5                                      str r5, [sp, #0x38]
00540ec4  04 e0 8d e5                                      str lr, [sp, #4]
00540ec8  08 c0 8d e5                                      str ip, [sp, #8]
00540ecc  a7 7a 01 eb                                      bl #0x59f970
00540ed0  da ff ff ea                                      b #0x540e40
00540ed4  00 30 96 e5                                      ldr r3, [r6]
00540ed8  06 00 a0 e1                                      mov r0, r6
00540edc  64 50 93 e5                                      ldr r5, [r3, #0x64]
00540ee0  0f e0 a0 e1                                      mov lr, pc
00540ee4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00540ee8  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
00540eec  50 14 e7 e7                                      ubfx r1, r0, #8, #8
00540ef0  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
00540ef4  12 20 cd e5                                      strb r2, [sp, #0x12]
00540ef8  13 30 cd e5                                      strb r3, [sp, #0x13]
00540efc  10 00 cd e5                                      strb r0, [sp, #0x10]
00540f00  11 10 cd e5                                      strb r1, [sp, #0x11]
00540f04  10 10 9d e5                                      ldr r1, [sp, #0x10]
00540f08  48 30 84 e2                                      add r3, r4, #0x48
00540f0c  50 20 8d e2                                      add r2, sp, #0x50
00540f10  04 10 22 e5                                      str r1, [r2, #-4]!
00540f14  06 00 a0 e1                                      mov r0, r6
00540f18  00 30 8d e5                                      str r3, [sp]
00540f1c  04 10 a0 e1                                      mov r1, r4
00540f20  38 30 84 e2                                      add r3, r4, #0x38
00540f24  35 ff 2f e1                                      blx r5
00540f28  c4 ff ff ea                                      b #0x540e40

; SOURCE ASSEMBLY: glitch_gui_CGUIButton-e980747c47bf-001.asm
; FUNCTION 0x006a7224, declared_size=1064, range_size=1064, mode=arm
; class-group: glitch::gui::CGUIButton
; alias: _ZN6glitch3gui10CGUIButton4drawEv
; demangled: glitch::gui::CGUIButton::draw()
; decoder-mode: arm
006a7224  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006a7228  98 30 d0 e5                                      ldrb r3, [r0, #0x98]
006a722c  54 d0 4d e2                                      sub sp, sp, #0x54
006a7230  00 40 a0 e1                                      mov r4, r0
006a7234  00 00 53 e3                                      cmp r3, #0
006a7238  01 00 00 1a                                      bne #0x6a7244
006a723c  54 d0 8d e2                                      add sp, sp, #0x54
006a7240  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006a7244  50 31 90 e5                                      ldr r3, [r0, #0x150]
006a7248  03 00 a0 e1                                      mov r0, r3
006a724c  00 30 93 e5                                      ldr r3, [r3]
006a7250  0f e0 a0 e1                                      mov lr, pc
006a7254  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006a7258  50 31 94 e5                                      ldr r3, [r4, #0x150]
006a725c  00 60 a0 e1                                      mov r6, r0
006a7260  03 00 a0 e1                                      mov r0, r3
006a7264  00 30 93 e5                                      ldr r3, [r3]
006a7268  0f e0 a0 e1                                      mov lr, pc
006a726c  20 f0 93 e5                                      ldr pc, [r3, #0x20]
006a7270  64 51 94 e5                                      ldr r5, [r4, #0x164]
006a7274  00 70 a0 e1                                      mov r7, r0
006a7278  00 00 55 e3                                      cmp r5, #0
006a727c  db 00 00 0a                                      beq #0x6a75f0
006a7280  38 00 84 e2                                      add r0, r4, #0x38
006a7284  0f 00 90 e8                                      ldm r0, {r0, r1, r2, r3}
006a7288  58 a1 d4 e5                                      ldrb sl, [r4, #0x158]
006a728c  00 c0 82 e0                                      add ip, r2, r0
006a7290  01 80 83 e0                                      add r8, r3, r1
006a7294  a8 8f 88 e0                                      add r8, r8, r8, lsr #31
006a7298  ac cf 8c e0                                      add ip, ip, ip, lsr #31
006a729c  c8 80 a0 e1                                      asr r8, r8, #1
006a72a0  cc c0 a0 e1                                      asr ip, ip, #1
006a72a4  00 00 5a e3                                      cmp sl, #0
006a72a8  3c c0 8d e5                                      str ip, [sp, #0x3c]
006a72ac  40 80 8d e5                                      str r8, [sp, #0x40]
006a72b0  24 00 8d e5                                      str r0, [sp, #0x24]
006a72b4  28 10 8d e5                                      str r1, [sp, #0x28]
006a72b8  2c 20 8d e5                                      str r2, [sp, #0x2c]
006a72bc  30 30 8d e5                                      str r3, [sp, #0x30]
006a72c0  82 00 00 0a                                      beq #0x6a74d0
006a72c4  5b 31 d4 e5                                      ldrb r3, [r4, #0x15b]
006a72c8  00 00 53 e3                                      cmp r3, #0
006a72cc  bf 00 00 1a                                      bne #0x6a75d0
006a72d0  b4 31 94 e5                                      ldr r3, [r4, #0x1b4]
006a72d4  00 00 53 e3                                      cmp r3, #0
006a72d8  28 00 00 0a                                      beq #0x6a7380
006a72dc  40 b0 94 e5                                      ldr fp, [r4, #0x40]
006a72e0  38 90 94 e5                                      ldr sb, [r4, #0x38]
006a72e4  d0 e1 94 e5                                      ldr lr, [r4, #0x1d0]
006a72e8  c8 01 94 e5                                      ldr r0, [r4, #0x1c8]
006a72ec  d4 c1 94 e5                                      ldr ip, [r4, #0x1d4]
006a72f0  cc 81 94 e5                                      ldr r8, [r4, #0x1cc]
006a72f4  44 a0 94 e5                                      ldr sl, [r4, #0x44]
006a72f8  09 90 8b e0                                      add sb, fp, sb
006a72fc  3c b0 94 e5                                      ldr fp, [r4, #0x3c]
006a7300  0e 10 60 e0                                      rsb r1, r0, lr
006a7304  0c 20 68 e0                                      rsb r2, r8, ip
006a7308  0b a0 8a e0                                      add sl, sl, fp
006a730c  a1 1f 81 e0                                      add r1, r1, r1, lsr #31
006a7310  b0 b1 94 e5                                      ldr fp, [r4, #0x1b0]
006a7314  a2 2f 82 e0                                      add r2, r2, r2, lsr #31
006a7318  a9 9f 89 e0                                      add sb, sb, sb, lsr #31
006a731c  aa af 8a e0                                      add sl, sl, sl, lsr #31
006a7320  c1 10 a0 e1                                      asr r1, r1, #1
006a7324  c2 20 a0 e1                                      asr r2, r2, #1
006a7328  c9 10 61 e0                                      rsb r1, r1, sb, asr #1
006a732c  ca a0 62 e0                                      rsb sl, r2, sl, asr #1
006a7330  03 00 5b e1                                      cmp fp, r3
006a7334  34 10 8d e5                                      str r1, [sp, #0x34]
006a7338  38 a0 8d e5                                      str sl, [sp, #0x38]
006a733c  b2 00 00 0a                                      beq #0x6a760c
006a7340  00 30 e0 e3                                      mvn r3, #0
006a7344  4b 30 cd e5                                      strb r3, [sp, #0x4b]
006a7348  48 30 cd e5                                      strb r3, [sp, #0x48]
006a734c  49 30 cd e5                                      strb r3, [sp, #0x49]
006a7350  4a 30 cd e5                                      strb r3, [sp, #0x4a]
006a7354  48 e0 84 e2                                      add lr, r4, #0x48
006a7358  5a c1 d4 e5                                      ldrb ip, [r4, #0x15a]
006a735c  00 e0 8d e5                                      str lr, [sp]
006a7360  48 e0 9d e5                                      ldr lr, [sp, #0x48]
006a7364  07 00 a0 e1                                      mov r0, r7
006a7368  6d 1f 84 e2                                      add r1, r4, #0x1b4
006a736c  34 20 8d e2                                      add r2, sp, #0x34
006a7370  72 3f 84 e2                                      add r3, r4, #0x1c8
006a7374  04 e0 8d e5                                      str lr, [sp, #4]
006a7378  08 c0 8d e5                                      str ip, [sp, #8]
006a737c  bf e1 fb eb                                      bl #0x59fa80
006a7380  60 81 94 e5                                      ldr r8, [r4, #0x160]
006a7384  00 00 58 e3                                      cmp r8, #0
006a7388  13 00 00 0a                                      beq #0x6a73dc
006a738c  74 a1 94 e5                                      ldr sl, [r4, #0x174]
006a7390  01 00 7a e3                                      cmn sl, #1
006a7394  10 00 00 0a                                      beq #0x6a73dc
006a7398  00 30 98 e5                                      ldr r3, [r8]
006a739c  5c 91 94 e5                                      ldr sb, [r4, #0x15c]
006a73a0  24 70 93 e5                                      ldr r7, [r3, #0x24]
006a73a4  ce 8e fd eb                                      bl #0x60aee4
006a73a8  7c 31 d4 e5                                      ldrb r3, [r4, #0x17c]
006a73ac  5e 2f 84 e2                                      add r2, r4, #0x178
006a73b0  0c 30 8d e5                                      str r3, [sp, #0xc]
006a73b4  01 30 a0 e3                                      mov r3, #1
006a73b8  08 00 8d e5                                      str r0, [sp, #8]
006a73bc  00 20 8d e5                                      str r2, [sp]
006a73c0  10 30 8d e5                                      str r3, [sp, #0x10]
006a73c4  04 90 8d e5                                      str sb, [sp, #4]
006a73c8  08 00 a0 e1                                      mov r0, r8
006a73cc  0a 10 a0 e1                                      mov r1, sl
006a73d0  3c 20 8d e2                                      add r2, sp, #0x3c
006a73d4  48 30 84 e2                                      add r3, r4, #0x48
006a73d8  37 ff 2f e1                                      blx r7
006a73dc  e0 30 94 e5                                      ldr r3, [r4, #0xe0]
006a73e0  e4 70 94 e5                                      ldr r7, [r4, #0xe4]
006a73e4  03 30 67 e0                                      rsb r3, r7, r3
006a73e8  23 31 b0 e1                                      lsrs r3, r3, #2
006a73ec  29 00 00 0a                                      beq #0x6a7498
006a73f0  58 c1 d4 e5                                      ldrb ip, [r4, #0x158]
006a73f4  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
006a73f8  38 00 94 e5                                      ldr r0, [r4, #0x38]
006a73fc  40 10 94 e5                                      ldr r1, [r4, #0x40]
006a7400  44 20 94 e5                                      ldr r2, [r4, #0x44]
006a7404  00 00 5c e3                                      cmp ip, #0
006a7408  28 30 8d e5                                      str r3, [sp, #0x28]
006a740c  02 30 83 12                                      addne r3, r3, #2
006a7410  28 30 8d 15                                      strne r3, [sp, #0x28]
006a7414  00 00 55 e3                                      cmp r5, #0
006a7418  24 00 8d e5                                      str r0, [sp, #0x24]
006a741c  2c 10 8d e5                                      str r1, [sp, #0x2c]
006a7420  30 20 8d e5                                      str r2, [sp, #0x30]
006a7424  1b 00 00 0a                                      beq #0x6a7498
006a7428  99 10 d4 e5                                      ldrb r1, [r4, #0x99]
006a742c  00 20 95 e5                                      ldr r2, [r5]
006a7430  00 30 96 e5                                      ldr r3, [r6]
006a7434  00 00 51 e3                                      cmp r1, #0
006a7438  06 00 a0 e1                                      mov r0, r6
006a743c  08 10 a0 13                                      movne r1, #8
006a7440  09 10 a0 03                                      moveq r1, #9
006a7444  0c 60 92 e5                                      ldr r6, [r2, #0xc]
006a7448  0f e0 a0 e1                                      mov lr, pc
006a744c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006a7450  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
006a7454  50 14 e7 e7                                      ubfx r1, r0, #8, #8
006a7458  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
006a745c  19 10 cd e5                                      strb r1, [sp, #0x19]
006a7460  1a 20 cd e5                                      strb r2, [sp, #0x1a]
006a7464  18 00 cd e5                                      strb r0, [sp, #0x18]
006a7468  1b 30 cd e5                                      strb r3, [sp, #0x1b]
006a746c  18 30 9d e5                                      ldr r3, [sp, #0x18]
006a7470  01 20 a0 e3                                      mov r2, #1
006a7474  48 10 84 e2                                      add r1, r4, #0x48
006a7478  04 20 8d e5                                      str r2, [sp, #4]
006a747c  08 10 8d e5                                      str r1, [sp, #8]
006a7480  00 20 8d e5                                      str r2, [sp]
006a7484  44 30 8d e5                                      str r3, [sp, #0x44]
006a7488  05 00 a0 e1                                      mov r0, r5
006a748c  07 10 a0 e1                                      mov r1, r7
006a7490  24 20 8d e2                                      add r2, sp, #0x24
006a7494  36 ff 2f e1                                      blx r6
006a7498  98 30 d4 e5                                      ldrb r3, [r4, #0x98]
006a749c  00 00 53 e3                                      cmp r3, #0
006a74a0  04 50 b4 15                                      ldrne r5, [r4, #4]!
006a74a4  06 00 00 1a                                      bne #0x6a74c4
006a74a8  63 ff ff ea                                      b #0x6a723c
006a74ac  08 30 95 e5                                      ldr r3, [r5, #8]
006a74b0  03 00 a0 e1                                      mov r0, r3
006a74b4  00 30 93 e5                                      ldr r3, [r3]
006a74b8  0f e0 a0 e1                                      mov lr, pc
006a74bc  20 f0 93 e5                                      ldr pc, [r3, #0x20]
006a74c0  00 50 95 e5                                      ldr r5, [r5]
006a74c4  04 00 55 e1                                      cmp r5, r4
006a74c8  f7 ff ff 1a                                      bne #0x6a74ac
006a74cc  5a ff ff ea                                      b #0x6a723c
006a74d0  5b 31 d4 e5                                      ldrb r3, [r4, #0x15b]
006a74d4  00 00 53 e3                                      cmp r3, #0
006a74d8  34 00 00 1a                                      bne #0x6a75b0
006a74dc  b0 31 94 e5                                      ldr r3, [r4, #0x1b0]
006a74e0  00 00 53 e3                                      cmp r3, #0
006a74e4  24 00 00 0a                                      beq #0x6a757c
006a74e8  bc 31 94 e5                                      ldr r3, [r4, #0x1bc]
006a74ec  c4 21 94 e5                                      ldr r2, [r4, #0x1c4]
006a74f0  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
006a74f4  44 c0 94 e5                                      ldr ip, [r4, #0x44]
006a74f8  c0 a1 94 e5                                      ldr sl, [r4, #0x1c0]
006a74fc  b8 11 94 e5                                      ldr r1, [r4, #0x1b8]
006a7500  02 20 63 e0                                      rsb r2, r3, r2
006a7504  40 80 94 e5                                      ldr r8, [r4, #0x40]
006a7508  38 e0 94 e5                                      ldr lr, [r4, #0x38]
006a750c  00 c0 8c e0                                      add ip, ip, r0
006a7510  a2 2f 82 e0                                      add r2, r2, r2, lsr #31
006a7514  ac cf 8c e0                                      add ip, ip, ip, lsr #31
006a7518  00 30 e0 e3                                      mvn r3, #0
006a751c  c2 20 a0 e1                                      asr r2, r2, #1
006a7520  0a 10 61 e0                                      rsb r1, r1, sl
006a7524  4f 30 cd e5                                      strb r3, [sp, #0x4f]
006a7528  4c 30 cd e5                                      strb r3, [sp, #0x4c]
006a752c  4d 30 cd e5                                      strb r3, [sp, #0x4d]
006a7530  4e 30 cd e5                                      strb r3, [sp, #0x4e]
006a7534  cc c0 62 e0                                      rsb ip, r2, ip, asr #1
006a7538  0e e0 88 e0                                      add lr, r8, lr
006a753c  a1 1f 81 e0                                      add r1, r1, r1, lsr #31
006a7540  5a 81 d4 e5                                      ldrb r8, [r4, #0x15a]
006a7544  ae ef 8e e0                                      add lr, lr, lr, lsr #31
006a7548  38 c0 8d e5                                      str ip, [sp, #0x38]
006a754c  4c c0 9d e5                                      ldr ip, [sp, #0x4c]
006a7550  c1 10 a0 e1                                      asr r1, r1, #1
006a7554  ce e0 61 e0                                      rsb lr, r1, lr, asr #1
006a7558  07 00 a0 e1                                      mov r0, r7
006a755c  1b 1e 84 e2                                      add r1, r4, #0x1b0
006a7560  48 70 84 e2                                      add r7, r4, #0x48
006a7564  34 20 8d e2                                      add r2, sp, #0x34
006a7568  6e 3f 84 e2                                      add r3, r4, #0x1b8
006a756c  34 e0 8d e5                                      str lr, [sp, #0x34]
006a7570  80 10 8d e8                                      stm sp, {r7, ip}
006a7574  08 80 8d e5                                      str r8, [sp, #8]
006a7578  40 e1 fb eb                                      bl #0x59fa80
006a757c  60 81 94 e5                                      ldr r8, [r4, #0x160]
006a7580  00 00 58 e3                                      cmp r8, #0
006a7584  94 ff ff 0a                                      beq #0x6a73dc
006a7588  68 a1 94 e5                                      ldr sl, [r4, #0x168]
006a758c  01 00 7a e3                                      cmn sl, #1
006a7590  91 ff ff 0a                                      beq #0x6a73dc
006a7594  00 30 98 e5                                      ldr r3, [r8]
006a7598  5c 91 94 e5                                      ldr sb, [r4, #0x15c]
006a759c  24 70 93 e5                                      ldr r7, [r3, #0x24]
006a75a0  4f 8e fd eb                                      bl #0x60aee4
006a75a4  70 31 d4 e5                                      ldrb r3, [r4, #0x170]
006a75a8  5b 2f 84 e2                                      add r2, r4, #0x16c
006a75ac  7f ff ff ea                                      b #0x6a73b0
006a75b0  00 c0 96 e5                                      ldr ip, [r6]
006a75b4  06 00 a0 e1                                      mov r0, r6
006a75b8  04 10 a0 e1                                      mov r1, r4
006a75bc  24 20 8d e2                                      add r2, sp, #0x24
006a75c0  48 30 84 e2                                      add r3, r4, #0x48
006a75c4  0f e0 a0 e1                                      mov lr, pc
006a75c8  40 f0 9c e5                                      ldr pc, [ip, #0x40]
006a75cc  c2 ff ff ea                                      b #0x6a74dc
006a75d0  00 c0 96 e5                                      ldr ip, [r6]
006a75d4  06 00 a0 e1                                      mov r0, r6
006a75d8  04 10 a0 e1                                      mov r1, r4
006a75dc  24 20 8d e2                                      add r2, sp, #0x24
006a75e0  48 30 84 e2                                      add r3, r4, #0x48
006a75e4  0f e0 a0 e1                                      mov lr, pc
006a75e8  44 f0 9c e5                                      ldr pc, [ip, #0x44]
006a75ec  37 ff ff ea                                      b #0x6a72d0
006a75f0  00 30 96 e5                                      ldr r3, [r6]
006a75f4  06 00 a0 e1                                      mov r0, r6
006a75f8  01 10 a0 e3                                      mov r1, #1
006a75fc  0f e0 a0 e1                                      mov lr, pc
006a7600  28 f0 93 e5                                      ldr pc, [r3, #0x28]
006a7604  00 50 a0 e1                                      mov r5, r0
006a7608  1c ff ff ea                                      b #0x6a7280
006a760c  b8 31 94 e5                                      ldr r3, [r4, #0x1b8]
006a7610  03 00 50 e1                                      cmp r0, r3
006a7614  49 ff ff 1a                                      bne #0x6a7340
006a7618  bc 31 94 e5                                      ldr r3, [r4, #0x1bc]
006a761c  03 00 58 e1                                      cmp r8, r3
006a7620  46 ff ff 1a                                      bne #0x6a7340
006a7624  c0 31 94 e5                                      ldr r3, [r4, #0x1c0]
006a7628  03 00 5e e1                                      cmp lr, r3
006a762c  43 ff ff 1a                                      bne #0x6a7340
006a7630  c4 31 94 e5                                      ldr r3, [r4, #0x1c4]
006a7634  03 00 5c e1                                      cmp ip, r3
006a7638  01 10 81 02                                      addeq r1, r1, #1
006a763c  01 a0 8a 02                                      addeq sl, sl, #1
006a7640  34 10 8d 05                                      streq r1, [sp, #0x34]
006a7644  38 a0 8d 05                                      streq sl, [sp, #0x38]
006a7648  3c ff ff ea                                      b #0x6a7340

; SOURCE ASSEMBLY: glitch_gui_CGUIStaticText-ebd8bfee3633-001.asm
; FUNCTION 0x00551888, declared_size=1452, range_size=1452, mode=arm
; class-group: glitch::gui::CGUIStaticText
; alias: _ZN6glitch3gui14CGUIStaticText4drawEv
; demangled: glitch::gui::CGUIStaticText::draw()
; decoder-mode: arm
00551888  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0055188c  98 30 d0 e5                                      ldrb r3, [r0, #0x98]
00551890  84 d0 4d e2                                      sub sp, sp, #0x84
00551894  00 40 a0 e1                                      mov r4, r0
00551898  00 00 53 e3                                      cmp r3, #0
0055189c  01 00 00 1a                                      bne #0x5518a8
005518a0  84 d0 8d e2                                      add sp, sp, #0x84
005518a4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005518a8  50 31 90 e5                                      ldr r3, [r0, #0x150]
005518ac  03 00 a0 e1                                      mov r0, r3
005518b0  00 30 93 e5                                      ldr r3, [r3]
005518b4  0f e0 a0 e1                                      mov lr, pc
005518b8  38 f0 93 e5                                      ldr pc, [r3, #0x38]
005518bc  00 70 50 e2                                      subs r7, r0, #0
005518c0  f6 ff ff 0a                                      beq #0x5518a0
005518c4  50 31 94 e5                                      ldr r3, [r4, #0x150]
005518c8  03 00 a0 e1                                      mov r0, r3
005518cc  00 30 93 e5                                      ldr r3, [r3]
005518d0  0f e0 a0 e1                                      mov lr, pc
005518d4  20 f0 93 e5                                      ldr pc, [r3, #0x20]
005518d8  72 51 d4 e5                                      ldrb r5, [r4, #0x172]
005518dc  38 c0 94 e5                                      ldr ip, [r4, #0x38]
005518e0  3c 10 84 e2                                      add r1, r4, #0x3c
005518e4  0e 00 91 e8                                      ldm r1, {r1, r2, r3}
005518e8  00 00 55 e3                                      cmp r5, #0
005518ec  44 c0 8d e5                                      str ip, [sp, #0x44]
005518f0  48 10 8d e5                                      str r1, [sp, #0x48]
005518f4  4c 20 8d e5                                      str r2, [sp, #0x4c]
005518f8  50 30 8d e5                                      str r3, [sp, #0x50]
005518fc  61 00 00 1a                                      bne #0x551a88
00551900  64 31 d4 e5                                      ldrb r3, [r4, #0x164]
00551904  00 00 53 e3                                      cmp r3, #0
00551908  18 00 00 0a                                      beq #0x551970
0055190c  00 20 97 e5                                      ldr r2, [r7]
00551910  00 30 a0 e3                                      mov r3, #0
00551914  07 00 a0 e1                                      mov r0, r7
00551918  48 c0 92 e5                                      ldr ip, [r2, #0x48]
0055191c  7c 30 cd e5                                      strb r3, [sp, #0x7c]
00551920  7d 30 cd e5                                      strb r3, [sp, #0x7d]
00551924  7e 30 cd e5                                      strb r3, [sp, #0x7e]
00551928  7f 30 cd e5                                      strb r3, [sp, #0x7f]
0055192c  48 20 84 e2                                      add r2, r4, #0x48
00551930  00 30 8d e5                                      str r3, [sp]
00551934  44 30 8d e2                                      add r3, sp, #0x44
00551938  04 30 8d e5                                      str r3, [sp, #4]
0055193c  08 20 8d e5                                      str r2, [sp, #8]
00551940  04 10 a0 e1                                      mov r1, r4
00551944  7c 20 9d e5                                      ldr r2, [sp, #0x7c]
00551948  01 30 a0 e3                                      mov r3, #1
0055194c  3c ff 2f e1                                      blx ip
00551950  00 30 97 e5                                      ldr r3, [r7]
00551954  07 00 a0 e1                                      mov r0, r7
00551958  08 10 a0 e3                                      mov r1, #8
0055195c  44 50 9d e5                                      ldr r5, [sp, #0x44]
00551960  0f e0 a0 e1                                      mov lr, pc
00551964  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00551968  05 00 80 e0                                      add r0, r0, r5
0055196c  44 00 8d e5                                      str r0, [sp, #0x44]
00551970  e0 20 94 e5                                      ldr r2, [r4, #0xe0]
00551974  e4 30 94 e5                                      ldr r3, [r4, #0xe4]
00551978  02 30 63 e0                                      rsb r3, r3, r2
0055197c  23 31 b0 e1                                      lsrs r3, r3, #2
00551980  31 00 00 0a                                      beq #0x551a4c
00551984  7c 51 94 e5                                      ldr r5, [r4, #0x17c]
00551988  00 00 55 e3                                      cmp r5, #0
0055198c  02 01 00 0a                                      beq #0x551d9c
00551990  71 31 d4 e5                                      ldrb r3, [r4, #0x171]
00551994  00 00 53 e3                                      cmp r3, #0
00551998  45 00 00 1a                                      bne #0x551ab4
0055199c  6c 31 94 e5                                      ldr r3, [r4, #0x16c]
005519a0  01 00 53 e3                                      cmp r3, #1
005519a4  0f 01 00 0a                                      beq #0x551de8
005519a8  68 31 94 e5                                      ldr r3, [r4, #0x168]
005519ac  01 00 53 e3                                      cmp r3, #1
005519b0  01 01 00 0a                                      beq #0x551dbc
005519b4  70 21 d4 e5                                      ldrb r2, [r4, #0x170]
005519b8  00 30 95 e5                                      ldr r3, [r5]
005519bc  e4 80 94 e5                                      ldr r8, [r4, #0xe4]
005519c0  00 00 52 e3                                      cmp r2, #0
005519c4  0c 60 93 e5                                      ldr r6, [r3, #0xc]
005519c8  d3 00 00 1a                                      bne #0x551d1c
005519cc  99 10 d4 e5                                      ldrb r1, [r4, #0x99]
005519d0  00 30 97 e5                                      ldr r3, [r7]
005519d4  07 00 a0 e1                                      mov r0, r7
005519d8  00 00 51 e3                                      cmp r1, #0
005519dc  08 10 a0 13                                      movne r1, #8
005519e0  09 10 a0 03                                      moveq r1, #9
005519e4  0f e0 a0 e1                                      mov lr, pc
005519e8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
005519ec  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
005519f0  50 14 e7 e7                                      ubfx r1, r0, #8, #8
005519f4  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
005519f8  29 10 cd e5                                      strb r1, [sp, #0x29]
005519fc  2a 20 cd e5                                      strb r2, [sp, #0x2a]
00551a00  2b 30 cd e5                                      strb r3, [sp, #0x2b]
00551a04  28 00 cd e5                                      strb r0, [sp, #0x28]
00551a08  28 30 9d e5                                      ldr r3, [sp, #0x28]
00551a0c  78 30 8d e5                                      str r3, [sp, #0x78]
00551a10  68 11 94 e5                                      ldr r1, [r4, #0x168]
00551a14  6c 21 94 e5                                      ldr r2, [r4, #0x16c]
00551a18  48 30 84 e2                                      add r3, r4, #0x48
00551a1c  02 00 51 e3                                      cmp r1, #2
00551a20  00 10 a0 13                                      movne r1, #0
00551a24  01 10 a0 03                                      moveq r1, #1
00551a28  02 00 52 e3                                      cmp r2, #2
00551a2c  00 20 a0 13                                      movne r2, #0
00551a30  01 20 a0 03                                      moveq r2, #1
00551a34  0e 00 8d e8                                      stm sp, {r1, r2, r3}
00551a38  05 00 a0 e1                                      mov r0, r5
00551a3c  08 10 a0 e1                                      mov r1, r8
00551a40  44 20 8d e2                                      add r2, sp, #0x44
00551a44  78 30 9d e5                                      ldr r3, [sp, #0x78]
00551a48  36 ff 2f e1                                      blx r6
00551a4c  98 30 d4 e5                                      ldrb r3, [r4, #0x98]
00551a50  00 00 53 e3                                      cmp r3, #0
00551a54  04 50 b4 15                                      ldrne r5, [r4, #4]!
00551a58  90 ff ff 0a                                      beq #0x5518a0
00551a5c  04 00 55 e1                                      cmp r5, r4
00551a60  8e ff ff 0a                                      beq #0x5518a0
00551a64  08 30 95 e5                                      ldr r3, [r5, #8]
00551a68  03 00 a0 e1                                      mov r0, r3
00551a6c  00 30 93 e5                                      ldr r3, [r3]
00551a70  0f e0 a0 e1                                      mov lr, pc
00551a74  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00551a78  00 50 95 e5                                      ldr r5, [r5]
00551a7c  04 00 55 e1                                      cmp r5, r4
00551a80  f7 ff ff 1a                                      bne #0x551a64
00551a84  85 ff ff ea                                      b #0x5518a0
00551a88  77 31 d4 e5                                      ldrb r3, [r4, #0x177]
00551a8c  78 c1 d4 e5                                      ldrb ip, [r4, #0x178]
00551a90  79 21 d4 e5                                      ldrb r2, [r4, #0x179]
00551a94  7a 11 d4 e5                                      ldrb r1, [r4, #0x17a]
00551a98  0c 34 83 e1                                      orr r3, r3, ip, lsl #8
00551a9c  02 38 83 e1                                      orr r3, r3, r2, lsl #16
00551aa0  01 1c 83 e1                                      orr r1, r3, r1, lsl #24
00551aa4  44 20 8d e2                                      add r2, sp, #0x44
00551aa8  48 30 84 e2                                      add r3, r4, #0x48
00551aac  72 37 01 eb                                      bl #0x59f87c
00551ab0  92 ff ff ea                                      b #0x551900
00551ab4  80 31 94 e5                                      ldr r3, [r4, #0x180]
00551ab8  05 00 53 e1                                      cmp r3, r5
00551abc  01 00 00 0a                                      beq #0x551ac8
00551ac0  04 00 a0 e1                                      mov r0, r4
00551ac4  ce fd ff eb                                      bl #0x551204
00551ac8  44 30 9d e5                                      ldr r3, [sp, #0x44]
00551acc  58 23 9f e5                                      ldr r2, [pc, #0x358]
00551ad0  05 10 a0 e1                                      mov r1, r5
00551ad4  34 30 8d e5                                      str r3, [sp, #0x34]
00551ad8  48 30 9d e5                                      ldr r3, [sp, #0x48]
00551adc  02 20 8f e0                                      add r2, pc, r2
00551ae0  5c 00 8d e2                                      add r0, sp, #0x5c
00551ae4  38 30 8d e5                                      str r3, [sp, #0x38]
00551ae8  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
00551aec  3c 30 8d e5                                      str r3, [sp, #0x3c]
00551af0  50 30 9d e5                                      ldr r3, [sp, #0x50]
00551af4  40 30 8d e5                                      str r3, [sp, #0x40]
00551af8  00 30 95 e5                                      ldr r3, [r5]
00551afc  0f e0 a0 e1                                      mov lr, pc
00551b00  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00551b04  00 30 95 e5                                      ldr r3, [r5]
00551b08  05 00 a0 e1                                      mov r0, r5
00551b0c  60 a0 9d e5                                      ldr sl, [sp, #0x60]
00551b10  0f e0 a0 e1                                      mov lr, pc
00551b14  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00551b18  5c 11 94 e5                                      ldr r1, [r4, #0x15c]
00551b1c  58 21 94 e5                                      ldr r2, [r4, #0x158]
00551b20  0a a0 80 e0                                      add sl, r0, sl
00551b24  00 30 95 e5                                      ldr r3, [r5]
00551b28  01 20 62 e0                                      rsb r2, r2, r1
00551b2c  c2 21 a0 e1                                      asr r2, r2, #3
00551b30  05 00 a0 e1                                      mov r0, r5
00551b34  82 11 a0 e1                                      lsl r1, r2, #3
00551b38  01 10 62 e0                                      rsb r1, r2, r1
00551b3c  01 13 81 e0                                      add r1, r1, r1, lsl #6
00551b40  81 11 82 e0                                      add r1, r2, r1, lsl #3
00551b44  81 c7 a0 e1                                      lsl ip, r1, #0xf
00551b48  0c 10 61 e0                                      rsb r1, r1, ip
00551b4c  81 21 82 e0                                      add r2, r2, r1, lsl #3
00551b50  92 0a 06 e0                                      mul r6, r2, sl
00551b54  0f e0 a0 e1                                      mov lr, pc
00551b58  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00551b5c  58 21 94 e5                                      ldr r2, [r4, #0x158]
00551b60  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
00551b64  6c c1 94 e5                                      ldr ip, [r4, #0x16c]
00551b68  03 30 62 e0                                      rsb r3, r2, r3
00551b6c  c3 31 a0 e1                                      asr r3, r3, #3
00551b70  02 00 5c e3                                      cmp ip, #2
00551b74  83 11 a0 e1                                      lsl r1, r3, #3
00551b78  01 10 63 e0                                      rsb r1, r3, r1
00551b7c  01 13 81 e0                                      add r1, r1, r1, lsl #6
00551b80  81 11 83 e0                                      add r1, r3, r1, lsl #3
00551b84  81 87 a0 e1                                      lsl r8, r1, #0xf
00551b88  08 10 61 e0                                      rsb r1, r1, r8
00551b8c  81 31 83 e0                                      add r3, r3, r1, lsl #3
00551b90  01 10 43 e2                                      sub r1, r3, #1
00551b94  91 60 21 e0                                      mla r1, r1, r0, r6
00551b98  65 00 00 0a                                      beq #0x551d34
00551b9c  01 00 5c e3                                      cmp ip, #1
00551ba0  79 00 00 0a                                      beq #0x551d8c
00551ba4  00 00 53 e3                                      cmp r3, #0
00551ba8  a7 ff ff 0a                                      beq #0x551a4c
00551bac  17 3e 84 e2                                      add r3, r4, #0x170
00551bb0  03 30 83 e2                                      add r3, r3, #3
00551bb4  1c 30 8d e5                                      str r3, [sp, #0x1c]
00551bb8  48 30 84 e2                                      add r3, r4, #0x48
00551bbc  14 30 8d e5                                      str r3, [sp, #0x14]
00551bc0  34 30 8d e2                                      add r3, sp, #0x34
00551bc4  18 30 8d e5                                      str r3, [sp, #0x18]
00551bc8  54 30 8d e2                                      add r3, sp, #0x54
00551bcc  00 60 a0 e3                                      mov r6, #0
00551bd0  24 30 8d e5                                      str r3, [sp, #0x24]
00551bd4  74 30 8d e2                                      add r3, sp, #0x74
00551bd8  06 80 a0 e1                                      mov r8, r6
00551bdc  20 30 8d e5                                      str r3, [sp, #0x20]
00551be0  07 90 a0 e1                                      mov sb, r7
00551be4  30 00 00 ea                                      b #0x551cac
00551be8  20 00 9d e5                                      ldr r0, [sp, #0x20]
00551bec  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00551bf0  04 20 a0 e3                                      mov r2, #4
00551bf4  1b f3 f6 eb                                      bl #0x30e868
00551bf8  68 31 94 e5                                      ldr r3, [r4, #0x168]
00551bfc  00 20 a0 e3                                      mov r2, #0
00551c00  07 10 a0 e1                                      mov r1, r7
00551c04  02 00 53 e3                                      cmp r3, #2
00551c08  00 30 a0 13                                      movne r3, #0
00551c0c  01 30 a0 03                                      moveq r3, #1
00551c10  00 30 8d e5                                      str r3, [sp]
00551c14  14 30 9d e5                                      ldr r3, [sp, #0x14]
00551c18  04 20 8d e5                                      str r2, [sp, #4]
00551c1c  05 00 a0 e1                                      mov r0, r5
00551c20  18 20 9d e5                                      ldr r2, [sp, #0x18]
00551c24  08 30 8d e5                                      str r3, [sp, #8]
00551c28  74 30 9d e5                                      ldr r3, [sp, #0x74]
00551c2c  3b ff 2f e1                                      blx fp
00551c30  00 30 95 e5                                      ldr r3, [r5]
00551c34  05 00 a0 e1                                      mov r0, r5
00551c38  40 70 9d e5                                      ldr r7, [sp, #0x40]
00551c3c  0f e0 a0 e1                                      mov lr, pc
00551c40  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00551c44  07 70 8a e0                                      add r7, sl, r7
00551c48  00 70 87 e0                                      add r7, r7, r0
00551c4c  40 70 8d e5                                      str r7, [sp, #0x40]
00551c50  00 30 95 e5                                      ldr r3, [r5]
00551c54  05 00 a0 e1                                      mov r0, r5
00551c58  38 70 9d e5                                      ldr r7, [sp, #0x38]
00551c5c  0f e0 a0 e1                                      mov lr, pc
00551c60  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00551c64  58 21 94 e5                                      ldr r2, [r4, #0x158]
00551c68  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
00551c6c  07 10 8a e0                                      add r1, sl, r7
00551c70  00 00 81 e0                                      add r0, r1, r0
00551c74  03 30 62 e0                                      rsb r3, r2, r3
00551c78  c3 31 a0 e1                                      asr r3, r3, #3
00551c7c  38 00 8d e5                                      str r0, [sp, #0x38]
00551c80  83 c1 a0 e1                                      lsl ip, r3, #3
00551c84  0c c0 63 e0                                      rsb ip, r3, ip
00551c88  0c c3 8c e0                                      add ip, ip, ip, lsl #6
00551c8c  01 80 88 e2                                      add r8, r8, #1
00551c90  8c 11 83 e0                                      add r1, r3, ip, lsl #3
00551c94  48 60 86 e2                                      add r6, r6, #0x48
00551c98  81 07 a0 e1                                      lsl r0, r1, #0xf
00551c9c  00 10 61 e0                                      rsb r1, r1, r0
00551ca0  81 11 83 e0                                      add r1, r3, r1, lsl #3
00551ca4  01 00 58 e1                                      cmp r8, r1
00551ca8  67 ff ff 2a                                      bhs #0x551a4c
00551cac  68 31 94 e5                                      ldr r3, [r4, #0x168]
00551cb0  01 00 53 e3                                      cmp r3, #1
00551cb4  27 00 00 0a                                      beq #0x551d58
00551cb8  70 11 d4 e5                                      ldrb r1, [r4, #0x170]
00551cbc  00 30 95 e5                                      ldr r3, [r5]
00551cc0  06 20 82 e0                                      add r2, r2, r6
00551cc4  00 00 51 e3                                      cmp r1, #0
00551cc8  09 00 a0 e1                                      mov r0, sb
00551ccc  0c b0 93 e5                                      ldr fp, [r3, #0xc]
00551cd0  44 70 92 e5                                      ldr r7, [r2, #0x44]
00551cd4  c3 ff ff 1a                                      bne #0x551be8
00551cd8  99 10 d4 e5                                      ldrb r1, [r4, #0x99]
00551cdc  00 30 99 e5                                      ldr r3, [sb]
00551ce0  00 00 51 e3                                      cmp r1, #0
00551ce4  08 10 a0 13                                      movne r1, #8
00551ce8  09 10 a0 03                                      moveq r1, #9
00551cec  0f e0 a0 e1                                      mov lr, pc
00551cf0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00551cf4  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
00551cf8  50 14 e7 e7                                      ubfx r1, r0, #8, #8
00551cfc  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
00551d00  29 10 cd e5                                      strb r1, [sp, #0x29]
00551d04  2a 20 cd e5                                      strb r2, [sp, #0x2a]
00551d08  2b 30 cd e5                                      strb r3, [sp, #0x2b]
00551d0c  28 00 cd e5                                      strb r0, [sp, #0x28]
00551d10  28 30 9d e5                                      ldr r3, [sp, #0x28]
00551d14  74 30 8d e5                                      str r3, [sp, #0x74]
00551d18  b6 ff ff ea                                      b #0x551bf8
00551d1c  17 1e 84 e2                                      add r1, r4, #0x170
00551d20  03 10 81 e2                                      add r1, r1, #3
00551d24  78 00 8d e2                                      add r0, sp, #0x78
00551d28  04 20 a0 e3                                      mov r2, #4
00551d2c  cd f2 f6 eb                                      bl #0x30e868
00551d30  36 ff ff ea                                      b #0x551a10
00551d34  38 00 9d e5                                      ldr r0, [sp, #0x38]
00551d38  40 c0 9d e5                                      ldr ip, [sp, #0x40]
00551d3c  a1 1f 81 e0                                      add r1, r1, r1, lsr #31
00551d40  00 00 8c e0                                      add r0, ip, r0
00551d44  a0 0f 80 e0                                      add r0, r0, r0, lsr #31
00551d48  c0 00 a0 e1                                      asr r0, r0, #1
00551d4c  c1 10 40 e0                                      sub r1, r0, r1, asr #1
00551d50  38 10 8d e5                                      str r1, [sp, #0x38]
00551d54  92 ff ff ea                                      b #0x551ba4
00551d58  06 20 82 e0                                      add r2, r2, r6
00551d5c  44 20 92 e5                                      ldr r2, [r2, #0x44]
00551d60  00 30 95 e5                                      ldr r3, [r5]
00551d64  24 00 9d e5                                      ldr r0, [sp, #0x24]
00551d68  05 10 a0 e1                                      mov r1, r5
00551d6c  4c 70 9d e5                                      ldr r7, [sp, #0x4c]
00551d70  0f e0 a0 e1                                      mov lr, pc
00551d74  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00551d78  54 30 9d e5                                      ldr r3, [sp, #0x54]
00551d7c  58 21 94 e5                                      ldr r2, [r4, #0x158]
00551d80  07 70 63 e0                                      rsb r7, r3, r7
00551d84  34 70 8d e5                                      str r7, [sp, #0x34]
00551d88  ca ff ff ea                                      b #0x551cb8
00551d8c  40 00 9d e5                                      ldr r0, [sp, #0x40]
00551d90  00 10 61 e0                                      rsb r1, r1, r0
00551d94  38 10 8d e5                                      str r1, [sp, #0x38]
00551d98  81 ff ff ea                                      b #0x551ba4
00551d9c  05 10 a0 e1                                      mov r1, r5
00551da0  00 30 97 e5                                      ldr r3, [r7]
00551da4  07 00 a0 e1                                      mov r0, r7
00551da8  0f e0 a0 e1                                      mov lr, pc
00551dac  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00551db0  00 50 50 e2                                      subs r5, r0, #0
00551db4  24 ff ff 0a                                      beq #0x551a4c
00551db8  f4 fe ff ea                                      b #0x551990
00551dbc  00 30 95 e5                                      ldr r3, [r5]
00551dc0  64 00 8d e2                                      add r0, sp, #0x64
00551dc4  05 10 a0 e1                                      mov r1, r5
00551dc8  e4 20 94 e5                                      ldr r2, [r4, #0xe4]
00551dcc  4c 60 9d e5                                      ldr r6, [sp, #0x4c]
00551dd0  0f e0 a0 e1                                      mov lr, pc
00551dd4  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00551dd8  64 30 9d e5                                      ldr r3, [sp, #0x64]
00551ddc  06 60 63 e0                                      rsb r6, r3, r6
00551de0  44 60 8d e5                                      str r6, [sp, #0x44]
00551de4  f2 fe ff ea                                      b #0x5519b4
00551de8  40 20 9f e5                                      ldr r2, [pc, #0x40]
00551dec  6c 00 8d e2                                      add r0, sp, #0x6c
00551df0  05 10 a0 e1                                      mov r1, r5
00551df4  02 20 8f e0                                      add r2, pc, r2
00551df8  00 30 95 e5                                      ldr r3, [r5]
00551dfc  50 60 9d e5                                      ldr r6, [sp, #0x50]
00551e00  0f e0 a0 e1                                      mov lr, pc
00551e04  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00551e08  70 20 9d e5                                      ldr r2, [sp, #0x70]
00551e0c  00 30 95 e5                                      ldr r3, [r5]
00551e10  05 00 a0 e1                                      mov r0, r5
00551e14  06 60 62 e0                                      rsb r6, r2, r6
00551e18  0f e0 a0 e1                                      mov lr, pc
00551e1c  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00551e20  06 00 60 e0                                      rsb r0, r0, r6
00551e24  48 00 8d e5                                      str r0, [sp, #0x48]
00551e28  de fe ff ea                                      b #0x5519a8
; mapping-symbol data/literal pool
00551e2c  84 c9 38 00 6c c6 38 00                          .byte 0x84, 0xc9, 0x38, 0x00, 0x6c, 0xc6, 0x38, 0x00

; SOURCE ASSEMBLY: glitch_gui_CGUIWindow-2251ea46d088-001.asm
; FUNCTION 0x0056008c, declared_size=516, range_size=516, mode=arm
; class-group: glitch::gui::CGUIWindow
; alias: _ZN6glitch3gui10CGUIWindow4drawEv
; demangled: glitch::gui::CGUIWindow::draw()
; decoder-mode: arm
0056008c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00560090  98 30 d0 e5                                      ldrb r3, [r0, #0x98]
00560094  40 d0 4d e2                                      sub sp, sp, #0x40
00560098  00 40 a0 e1                                      mov r4, r0
0056009c  00 00 53 e3                                      cmp r3, #0
005600a0  01 00 00 1a                                      bne #0x5600ac
005600a4  40 d0 8d e2                                      add sp, sp, #0x40
005600a8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005600ac  50 31 90 e5                                      ldr r3, [r0, #0x150]
005600b0  48 60 80 e2                                      add r6, r0, #0x48
005600b4  03 00 a0 e1                                      mov r0, r3
005600b8  00 30 93 e5                                      ldr r3, [r3]
005600bc  0f e0 a0 e1                                      mov lr, pc
005600c0  38 f0 93 e5                                      ldr pc, [r3, #0x38]
005600c4  38 c0 94 e5                                      ldr ip, [r4, #0x38]
005600c8  3c 10 84 e2                                      add r1, r4, #0x3c
005600cc  0e 00 91 e8                                      ldm r1, {r1, r2, r3}
005600d0  28 c0 8d e5                                      str ip, [sp, #0x28]
005600d4  2c 10 8d e5                                      str r1, [sp, #0x2c]
005600d8  30 20 8d e5                                      str r2, [sp, #0x30]
005600dc  34 30 8d e5                                      str r3, [sp, #0x34]
005600e0  00 30 90 e5                                      ldr r3, [r0]
005600e4  05 10 a0 e3                                      mov r1, #5
005600e8  00 50 a0 e1                                      mov r5, r0
005600ec  4c 70 93 e5                                      ldr r7, [r3, #0x4c]
005600f0  0f e0 a0 e1                                      mov lr, pc
005600f4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
005600f8  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
005600fc  50 14 e7 e7                                      ubfx r1, r0, #8, #8
00560100  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
00560104  11 10 cd e5                                      strb r1, [sp, #0x11]
00560108  12 20 cd e5                                      strb r2, [sp, #0x12]
0056010c  10 00 cd e5                                      strb r0, [sp, #0x10]
00560110  13 30 cd e5                                      strb r3, [sp, #0x13]
00560114  10 30 9d e5                                      ldr r3, [sp, #0x10]
00560118  38 20 84 e2                                      add r2, r4, #0x38
0056011c  04 20 8d e5                                      str r2, [sp, #4]
00560120  00 30 8d e5                                      str r3, [sp]
00560124  3c 30 8d e5                                      str r3, [sp, #0x3c]
00560128  04 20 a0 e1                                      mov r2, r4
0056012c  01 30 a0 e3                                      mov r3, #1
00560130  08 60 8d e5                                      str r6, [sp, #8]
00560134  18 00 8d e2                                      add r0, sp, #0x18
00560138  05 10 a0 e1                                      mov r1, r5
0056013c  37 ff 2f e1                                      blx r7
00560140  e0 20 94 e5                                      ldr r2, [r4, #0xe0]
00560144  e4 30 94 e5                                      ldr r3, [r4, #0xe4]
00560148  18 70 9d e5                                      ldr r7, [sp, #0x18]
0056014c  02 30 63 e0                                      rsb r3, r3, r2
00560150  23 31 b0 e1                                      lsrs r3, r3, #2
00560154  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00560158  28 70 8d e5                                      str r7, [sp, #0x28]
0056015c  2c 30 8d e5                                      str r3, [sp, #0x2c]
00560160  20 30 9d e5                                      ldr r3, [sp, #0x20]
00560164  30 30 8d e5                                      str r3, [sp, #0x30]
00560168  24 30 9d e5                                      ldr r3, [sp, #0x24]
0056016c  34 30 8d e5                                      str r3, [sp, #0x34]
00560170  0d 00 00 1a                                      bne #0x5601ac
00560174  98 30 d4 e5                                      ldrb r3, [r4, #0x98]
00560178  00 00 53 e3                                      cmp r3, #0
0056017c  04 50 b4 15                                      ldrne r5, [r4, #4]!
00560180  06 00 00 1a                                      bne #0x5601a0
00560184  c6 ff ff ea                                      b #0x5600a4
00560188  08 30 95 e5                                      ldr r3, [r5, #8]
0056018c  03 00 a0 e1                                      mov r0, r3
00560190  00 30 93 e5                                      ldr r3, [r3]
00560194  0f e0 a0 e1                                      mov lr, pc
00560198  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0056019c  00 50 95 e5                                      ldr r5, [r5]
005601a0  04 00 55 e1                                      cmp r5, r4
005601a4  f7 ff ff 1a                                      bne #0x560188
005601a8  bd ff ff ea                                      b #0x5600a4
005601ac  08 10 a0 e3                                      mov r1, #8
005601b0  00 30 95 e5                                      ldr r3, [r5]
005601b4  05 00 a0 e1                                      mov r0, r5
005601b8  0f e0 a0 e1                                      mov lr, pc
005601bc  18 f0 93 e5                                      ldr pc, [r3, #0x18]
005601c0  07 00 80 e0                                      add r0, r0, r7
005601c4  28 00 8d e5                                      str r0, [sp, #0x28]
005601c8  09 10 a0 e3                                      mov r1, #9
005601cc  00 30 95 e5                                      ldr r3, [r5]
005601d0  05 00 a0 e1                                      mov r0, r5
005601d4  2c 70 9d e5                                      ldr r7, [sp, #0x2c]
005601d8  0f e0 a0 e1                                      mov lr, pc
005601dc  18 f0 93 e5                                      ldr pc, [r3, #0x18]
005601e0  07 00 80 e0                                      add r0, r0, r7
005601e4  2c 00 8d e5                                      str r0, [sp, #0x2c]
005601e8  02 10 a0 e3                                      mov r1, #2
005601ec  00 30 95 e5                                      ldr r3, [r5]
005601f0  05 00 a0 e1                                      mov r0, r5
005601f4  30 70 9d e5                                      ldr r7, [sp, #0x30]
005601f8  0f e0 a0 e1                                      mov lr, pc
005601fc  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00560200  05 70 87 e2                                      add r7, r7, #5
00560204  07 70 60 e0                                      rsb r7, r0, r7
00560208  30 70 8d e5                                      str r7, [sp, #0x30]
0056020c  00 30 95 e5                                      ldr r3, [r5]
00560210  05 00 a0 e1                                      mov r0, r5
00560214  02 10 a0 e3                                      mov r1, #2
00560218  0f e0 a0 e1                                      mov lr, pc
0056021c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00560220  00 70 50 e2                                      subs r7, r0, #0
00560224  d2 ff ff 0a                                      beq #0x560174
00560228  00 20 97 e5                                      ldr r2, [r7]
0056022c  00 30 95 e5                                      ldr r3, [r5]
00560230  05 00 a0 e1                                      mov r0, r5
00560234  06 10 a0 e3                                      mov r1, #6
00560238  0c 50 92 e5                                      ldr r5, [r2, #0xc]
0056023c  e4 80 94 e5                                      ldr r8, [r4, #0xe4]
00560240  0f e0 a0 e1                                      mov lr, pc
00560244  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00560248  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0056024c  50 14 e7 e7                                      ubfx r1, r0, #8, #8
00560250  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
00560254  11 10 cd e5                                      strb r1, [sp, #0x11]
00560258  12 20 cd e5                                      strb r2, [sp, #0x12]
0056025c  10 00 cd e5                                      strb r0, [sp, #0x10]
00560260  13 30 cd e5                                      strb r3, [sp, #0x13]
00560264  10 30 9d e5                                      ldr r3, [sp, #0x10]
00560268  00 20 a0 e3                                      mov r2, #0
0056026c  00 20 8d e5                                      str r2, [sp]
00560270  01 20 a0 e3                                      mov r2, #1
00560274  44 00 8d e9                                      stmib sp, {r2, r6}
00560278  38 30 8d e5                                      str r3, [sp, #0x38]
0056027c  07 00 a0 e1                                      mov r0, r7
00560280  08 10 a0 e1                                      mov r1, r8
00560284  28 20 8d e2                                      add r2, sp, #0x28
00560288  35 ff 2f e1                                      blx r5
0056028c  b8 ff ff ea                                      b #0x560174

; SOURCE ASSEMBLY: glitch_gui_CGUIFont-e42f0c65ddbe-001.asm
; FUNCTION 0x0053e038, declared_size=440, range_size=440, mode=arm
; class-group: glitch::gui::CGUIFont
; alias: _ZN6glitch3gui8CGUIFont4drawEPKwRKNS_4core4rectIiEENS_5video6SColorEbbPS7_
; demangled: glitch::gui::CGUIFont::draw(wchar_t const*, glitch::core::rect<int> const&, glitch::video::SColor, bool, bool, glitch::core::rect<int> const*)
; decoder-mode: arm
0053e038  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0053e03c  00 40 a0 e1                                      mov r4, r0
0053e040  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
0053e044  34 d0 4d e2                                      sub sp, sp, #0x34
0053e048  1c 30 8d e5                                      str r3, [sp, #0x1c]
0053e04c  00 00 50 e3                                      cmp r0, #0
0053e050  01 70 a0 e1                                      mov r7, r1
0053e054  02 50 a0 e1                                      mov r5, r2
0053e058  60 80 9d e5                                      ldr r8, [sp, #0x60]
0053e05c  58 30 dd e5                                      ldrb r3, [sp, #0x58]
0053e060  5c 60 dd e5                                      ldrb r6, [sp, #0x5c]
0053e064  4c 00 00 0a                                      beq #0x53e19c
0053e068  06 00 92 e8                                      ldm r2, {r1, r2}
0053e06c  00 00 53 e3                                      cmp r3, #0
0053e070  20 10 8d e5                                      str r1, [sp, #0x20]
0053e074  24 20 8d e5                                      str r2, [sp, #0x24]
0053e078  4c 00 00 1a                                      bne #0x53e1b0
0053e07c  00 00 56 e3                                      cmp r6, #0
0053e080  47 00 00 0a                                      beq #0x53e1a4
0053e084  04 10 a0 e1                                      mov r1, r4
0053e088  00 30 94 e5                                      ldr r3, [r4]
0053e08c  28 00 8d e2                                      add r0, sp, #0x28
0053e090  07 20 a0 e1                                      mov r2, r7
0053e094  0f e0 a0 e1                                      mov lr, pc
0053e098  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0053e09c  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
0053e0a0  00 00 56 e3                                      cmp r6, #0
0053e0a4  06 00 00 0a                                      beq #0x53e0c4
0053e0a8  0c 20 95 e5                                      ldr r2, [r5, #0xc]
0053e0ac  04 30 95 e5                                      ldr r3, [r5, #4]
0053e0b0  02 30 63 e0                                      rsb r3, r3, r2
0053e0b4  24 20 9d e5                                      ldr r2, [sp, #0x24]
0053e0b8  03 30 61 e0                                      rsb r3, r1, r3
0053e0bc  c3 30 82 e0                                      add r3, r2, r3, asr #1
0053e0c0  24 30 8d e5                                      str r3, [sp, #0x24]
0053e0c4  00 00 58 e3                                      cmp r8, #0
0053e0c8  0c 00 00 0a                                      beq #0x53e100
0053e0cc  24 20 9d e5                                      ldr r2, [sp, #0x24]
0053e0d0  0c c0 98 e5                                      ldr ip, [r8, #0xc]
0053e0d4  04 00 98 e5                                      ldr r0, [r8, #4]
0053e0d8  01 30 82 e0                                      add r3, r2, r1
0053e0dc  0c 00 53 e1                                      cmp r3, ip
0053e0e0  0c 30 a0 a1                                      movge r3, ip
0053e0e4  00 00 52 e1                                      cmp r2, r0
0053e0e8  00 20 a0 b1                                      movlt r2, r0
0053e0ec  02 00 53 e1                                      cmp r3, r2
0053e0f0  03 20 a0 b1                                      movlt r2, r3
0053e0f4  02 20 a0 a1                                      movge r2, r2
0053e0f8  02 00 53 e1                                      cmp r3, r2
0053e0fc  26 00 00 ba                                      blt #0x53e19c
0053e100  00 10 97 e5                                      ldr r1, [r7]
0053e104  00 00 51 e3                                      cmp r1, #0
0053e108  23 00 00 0a                                      beq #0x53e19c
0053e10c  20 a0 8d e2                                      add sl, sp, #0x20
0053e110  1c 90 8d e2                                      add sb, sp, #0x1c
0053e114  00 60 a0 e3                                      mov r6, #0
0053e118  01 b0 a0 e3                                      mov fp, #1
0053e11c  04 00 a0 e1                                      mov r0, r4
0053e120  4f ff ff eb                                      bl #0x53de64
0053e124  08 10 94 e5                                      ldr r1, [r4, #8]
0053e128  30 30 94 e5                                      ldr r3, [r4, #0x30]
0053e12c  00 22 91 e7                                      ldr r2, [r1, r0, lsl #4]
0053e130  00 52 81 e0                                      add r5, r1, r0, lsl #4
0053e134  20 10 9d e5                                      ldr r1, [sp, #0x20]
0053e138  03 00 a0 e1                                      mov r0, r3
0053e13c  02 20 81 e0                                      add r2, r1, r2
0053e140  20 20 8d e5                                      str r2, [sp, #0x20]
0053e144  00 c0 93 e5                                      ldr ip, [r3]
0053e148  0c 10 95 e5                                      ldr r1, [r5, #0xc]
0053e14c  0a 20 a0 e1                                      mov r2, sl
0053e150  08 30 a0 e1                                      mov r3, r8
0053e154  00 90 8d e5                                      str sb, [sp]
0053e158  04 60 8d e5                                      str r6, [sp, #4]
0053e15c  08 60 8d e5                                      str r6, [sp, #8]
0053e160  0c b0 8d e5                                      str fp, [sp, #0xc]
0053e164  10 60 8d e5                                      str r6, [sp, #0x10]
0053e168  0f e0 a0 e1                                      mov lr, pc
0053e16c  24 f0 9c e5                                      ldr pc, [ip, #0x24]
0053e170  08 30 95 e5                                      ldr r3, [r5, #8]
0053e174  20 c0 9d e5                                      ldr ip, [sp, #0x20]
0053e178  04 00 95 e5                                      ldr r0, [r5, #4]
0053e17c  40 20 94 e5                                      ldr r2, [r4, #0x40]
0053e180  04 10 b7 e5                                      ldr r1, [r7, #4]!
0053e184  0c 30 83 e0                                      add r3, r3, ip
0053e188  00 30 83 e0                                      add r3, r3, r0
0053e18c  02 30 83 e0                                      add r3, r3, r2
0053e190  00 00 51 e3                                      cmp r1, #0
0053e194  20 30 8d e5                                      str r3, [sp, #0x20]
0053e198  df ff ff 1a                                      bne #0x53e11c
0053e19c  34 d0 8d e2                                      add sp, sp, #0x34
0053e1a0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0053e1a4  00 00 58 e3                                      cmp r8, #0
0053e1a8  b5 ff ff 1a                                      bne #0x53e084
0053e1ac  d3 ff ff ea                                      b #0x53e100
0053e1b0  00 30 94 e5                                      ldr r3, [r4]
0053e1b4  04 10 a0 e1                                      mov r1, r4
0053e1b8  07 20 a0 e1                                      mov r2, r7
0053e1bc  28 00 8d e2                                      add r0, sp, #0x28
0053e1c0  0f e0 a0 e1                                      mov lr, pc
0053e1c4  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0053e1c8  00 30 95 e5                                      ldr r3, [r5]
0053e1cc  08 20 95 e5                                      ldr r2, [r5, #8]
0053e1d0  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
0053e1d4  02 20 63 e0                                      rsb r2, r3, r2
0053e1d8  28 30 9d e5                                      ldr r3, [sp, #0x28]
0053e1dc  02 20 63 e0                                      rsb r2, r3, r2
0053e1e0  20 30 9d e5                                      ldr r3, [sp, #0x20]
0053e1e4  c2 30 83 e0                                      add r3, r3, r2, asr #1
0053e1e8  20 30 8d e5                                      str r3, [sp, #0x20]
0053e1ec  ab ff ff ea                                      b #0x53e0a0

; SOURCE ASSEMBLY: glitch_gui_CGUISpriteBank-1730d1aa6bb3-001.asm
; FUNCTION 0x0054f930, declared_size=440, range_size=440, mode=arm
; class-group: glitch::gui::CGUISpriteBank
; alias: _ZN6glitch3gui14CGUISpriteBank12draw2DSpriteEjRKNS_4core10position2dIiEEPKNS2_4rectIiEERKNS_5video6SColorEjjbb
; demangled: glitch::gui::CGUISpriteBank::draw2DSprite(unsigned int, glitch::core::position2d<int> const&, glitch::core::rect<int> const*, glitch::video::SColor const&, unsigned int, unsigned int, bool, bool)
; decoder-mode: arm
0054f930  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0054f934  00 40 a0 e1                                      mov r4, r0
0054f938  08 00 90 e5                                      ldr r0, [r0, #8]
0054f93c  02 b0 a0 e1                                      mov fp, r2
0054f940  24 d0 4d e2                                      sub sp, sp, #0x24
0054f944  01 22 80 e0                                      add r2, r0, r1, lsl #4
0054f948  01 62 90 e7                                      ldr r6, [r0, r1, lsl #4]
0054f94c  04 70 92 e5                                      ldr r7, [r2, #4]
0054f950  01 50 a0 e1                                      mov r5, r1
0054f954  03 a0 a0 e1                                      mov sl, r3
0054f958  07 00 56 e1                                      cmp r6, r7
0054f95c  54 80 dd e5                                      ldrb r8, [sp, #0x54]
0054f960  58 90 dd e5                                      ldrb sb, [sp, #0x58]
0054f964  49 00 00 0a                                      beq #0x54fa90
0054f968  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0054f96c  03 00 60 e0                                      rsb r0, r0, r3
0054f970  40 02 51 e1                                      cmp r1, r0, asr #4
0054f974  45 00 00 2a                                      bhs #0x54fa90
0054f978  0c 10 92 e5                                      ldr r1, [r2, #0xc]
0054f97c  00 00 51 e3                                      cmp r1, #0
0054f980  0a 00 00 0a                                      beq #0x54f9b0
0054f984  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
0054f988  50 00 9d e5                                      ldr r0, [sp, #0x50]
0054f98c  00 00 63 e0                                      rsb r0, r3, r0
0054f990  ad fc f6 eb                                      bl #0x30ec4c
0054f994  00 00 58 e3                                      cmp r8, #0
0054f998  00 10 a0 e1                                      mov r1, r0
0054f99c  3d 00 00 0a                                      beq #0x54fa98
0054f9a0  07 10 66 e0                                      rsb r1, r6, r7
0054f9a4  c1 11 a0 e1                                      asr r1, r1, #3
0054f9a8  5f fc f6 eb                                      bl #0x30eb2c
0054f9ac  81 11 a0 e1                                      lsl r1, r1, #3
0054f9b0  01 20 96 e7                                      ldr r2, [r6, r1]
0054f9b4  20 30 94 e5                                      ldr r3, [r4, #0x20]
0054f9b8  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
0054f9bc  00 00 53 e3                                      cmp r3, #0
0054f9c0  32 00 00 0a                                      beq #0x54fa90
0054f9c4  1c 30 8d e5                                      str r3, [sp, #0x1c]
0054f9c8  04 20 93 e5                                      ldr r2, [r3, #4]
0054f9cc  01 20 82 e2                                      add r2, r2, #1
0054f9d0  04 20 83 e5                                      str r2, [r3, #4]
0054f9d4  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0054f9d8  00 00 50 e3                                      cmp r0, #0
0054f9dc  2b 00 00 0a                                      beq #0x54fa90
0054f9e0  08 c0 94 e5                                      ldr ip, [r4, #8]
0054f9e4  14 20 94 e5                                      ldr r2, [r4, #0x14]
0054f9e8  18 30 94 e5                                      ldr r3, [r4, #0x18]
0054f9ec  05 c2 9c e7                                      ldr ip, [ip, r5, lsl #4]
0054f9f0  03 30 62 e0                                      rsb r3, r2, r3
0054f9f4  01 10 8c e0                                      add r1, ip, r1
0054f9f8  04 10 91 e5                                      ldr r1, [r1, #4]
0054f9fc  43 02 51 e1                                      cmp r1, r3, asr #4
0054fa00  21 00 00 2a                                      bhs #0x54fa8c
0054fa04  00 00 59 e3                                      cmp sb, #0
0054fa08  01 52 82 e0                                      add r5, r2, r1, lsl #4
0054fa0c  27 00 00 0a                                      beq #0x54fab0
0054fa10  40 40 9b e8                                      ldm fp, {r6, lr}
0054fa14  30 40 94 e5                                      ldr r4, [r4, #0x30]
0054fa18  18 e0 8d e5                                      str lr, [sp, #0x18]
0054fa1c  14 60 8d e5                                      str r6, [sp, #0x14]
0054fa20  01 22 92 e7                                      ldr r2, [r2, r1, lsl #4]
0054fa24  04 30 95 e5                                      ldr r3, [r5, #4]
0054fa28  0c 10 95 e5                                      ldr r1, [r5, #0xc]
0054fa2c  08 c0 95 e5                                      ldr ip, [r5, #8]
0054fa30  0d 00 a0 e1                                      mov r0, sp
0054fa34  01 30 63 e0                                      rsb r3, r3, r1
0054fa38  0c c0 62 e0                                      rsb ip, r2, ip
0054fa3c  a3 3f 83 e0                                      add r3, r3, r3, lsr #31
0054fa40  ac cf 8c e0                                      add ip, ip, ip, lsr #31
0054fa44  04 a0 80 e4                                      str sl, [r0], #4
0054fa48  cc c0 46 e0                                      sub ip, r6, ip, asr #1
0054fa4c  c3 30 4e e0                                      sub r3, lr, r3, asr #1
0054fa50  48 10 9d e5                                      ldr r1, [sp, #0x48]
0054fa54  04 20 a0 e3                                      mov r2, #4
0054fa58  14 c0 8d e5                                      str ip, [sp, #0x14]
0054fa5c  18 30 8d e5                                      str r3, [sp, #0x18]
0054fa60  80 fb f6 eb                                      bl #0x30e868
0054fa64  01 c0 a0 e3                                      mov ip, #1
0054fa68  04 00 a0 e1                                      mov r0, r4
0054fa6c  1c 10 8d e2                                      add r1, sp, #0x1c
0054fa70  14 20 8d e2                                      add r2, sp, #0x14
0054fa74  05 30 a0 e1                                      mov r3, r5
0054fa78  08 c0 8d e5                                      str ip, [sp, #8]
0054fa7c  ff 3f 01 eb                                      bl #0x59fa80
0054fa80  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0054fa84  00 00 50 e3                                      cmp r0, #0
0054fa88  00 00 00 0a                                      beq #0x54fa90
0054fa8c  bc 36 f7 eb                                      bl #0x31d584
0054fa90  24 d0 8d e2                                      add sp, sp, #0x24
0054fa94  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0054fa98  07 70 66 e0                                      rsb r7, r6, r7
0054fa9c  c7 71 a0 e1                                      asr r7, r7, #3
0054faa0  07 00 50 e1                                      cmp r0, r7
0054faa4  01 10 47 22                                      subhs r1, r7, #1
0054faa8  81 11 a0 e1                                      lsl r1, r1, #3
0054faac  bf ff ff ea                                      b #0x54f9b0
0054fab0  30 40 94 e5                                      ldr r4, [r4, #0x30]
0054fab4  0d 00 a0 e1                                      mov r0, sp
0054fab8  04 a0 80 e4                                      str sl, [r0], #4
0054fabc  48 10 9d e5                                      ldr r1, [sp, #0x48]
0054fac0  04 20 a0 e3                                      mov r2, #4
0054fac4  67 fb f6 eb                                      bl #0x30e868
0054fac8  01 c0 a0 e3                                      mov ip, #1
0054facc  04 00 a0 e1                                      mov r0, r4
0054fad0  1c 10 8d e2                                      add r1, sp, #0x1c
0054fad4  0b 20 a0 e1                                      mov r2, fp
0054fad8  05 30 a0 e1                                      mov r3, r5
0054fadc  08 c0 8d e5                                      str ip, [sp, #8]
0054fae0  e6 3f 01 eb                                      bl #0x59fa80
0054fae4  e5 ff ff ea                                      b #0x54fa80

; SOURCE ASSEMBLY: glitch_gui_CGUISkin-580307082304-001.asm
; FUNCTION 0x0054b078, declared_size=52, range_size=52, mode=arm
; class-group: glitch::gui::CGUISkin
; alias: _ZN6glitch3gui8CGUISkin15draw2DRectangleEPNS0_11IGUIElementERKNS_5video6SColorERKNS_4core4rectIiEEPSB_
; demangled: glitch::gui::CGUISkin::draw2DRectangle(glitch::gui::IGUIElement*, glitch::video::SColor const&, glitch::core::rect<int> const&, glitch::core::rect<int> const*)
; decoder-mode: arm
0054b078  30 00 2d e9                                      push {r4, r5}
0054b07c  00 40 d2 e5                                      ldrb r4, [r2]
0054b080  01 50 d2 e5                                      ldrb r5, [r2, #1]
0054b084  02 c0 d2 e5                                      ldrb ip, [r2, #2]
0054b088  03 10 d2 e5                                      ldrb r1, [r2, #3]
0054b08c  05 24 84 e1                                      orr r2, r4, r5, lsl #8
0054b090  0c 28 82 e1                                      orr r2, r2, ip, lsl #16
0054b094  01 1c 82 e1                                      orr r1, r2, r1, lsl #24
0054b098  34 03 90 e5                                      ldr r0, [r0, #0x334]
0054b09c  03 20 a0 e1                                      mov r2, r3
0054b0a0  08 30 9d e5                                      ldr r3, [sp, #8]
0054b0a4  30 00 bd e8                                      pop {r4, r5}
0054b0a8  f3 51 01 ea                                      b #0x59f87c

; SOURCE ASSEMBLY: glitch_gui_CGUISkin-580307082304-001.asm
; FUNCTION 0x0054b53c, declared_size=980, range_size=980, mode=arm
; class-group: glitch::gui::CGUISkin
; alias: _ZN6glitch3gui8CGUISkin16draw3DSunkenPaneEPNS0_11IGUIElementENS_5video6SColorEbbRKNS_4core4rectIiEEPS9_
; demangled: glitch::gui::CGUISkin::draw3DSunkenPane(glitch::gui::IGUIElement*, glitch::video::SColor, bool, bool, glitch::core::rect<int> const&, glitch::core::rect<int> const*)
; decoder-mode: arm
0054b53c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0054b540  34 83 90 e5                                      ldr r8, [r0, #0x334]
0054b544  44 d0 4d e2                                      sub sp, sp, #0x44
0054b548  00 40 a0 e1                                      mov r4, r0
0054b54c  00 00 58 e3                                      cmp r8, #0
0054b550  0c 20 8d e5                                      str r2, [sp, #0xc]
0054b554  64 50 9d e5                                      ldr r5, [sp, #0x64]
0054b558  68 60 9d e5                                      ldr r6, [sp, #0x68]
0054b55c  60 10 dd e5                                      ldrb r1, [sp, #0x60]
0054b560  77 00 00 0a                                      beq #0x54b744
0054b564  00 54 95 e8                                      ldm r5, {sl, ip, lr}
0054b568  0c 70 95 e5                                      ldr r7, [r5, #0xc]
0054b56c  00 00 53 e3                                      cmp r3, #0
0054b570  10 a0 8d e5                                      str sl, [sp, #0x10]
0054b574  1c 70 8d e5                                      str r7, [sp, #0x1c]
0054b578  14 c0 8d e5                                      str ip, [sp, #0x14]
0054b57c  18 e0 8d e5                                      str lr, [sp, #0x18]
0054b580  71 00 00 0a                                      beq #0x54b74c
0054b584  00 00 51 e3                                      cmp r1, #0
0054b588  10 70 8d 02                                      addeq r7, sp, #0x10
0054b58c  07 00 00 0a                                      beq #0x54b5b0
0054b590  10 70 8d e2                                      add r7, sp, #0x10
0054b594  08 00 a0 e1                                      mov r0, r8
0054b598  02 10 a0 e1                                      mov r1, r2
0054b59c  06 30 a0 e1                                      mov r3, r6
0054b5a0  07 20 a0 e1                                      mov r2, r7
0054b5a4  b4 50 01 eb                                      bl #0x59f87c
0054b5a8  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0054b5ac  34 83 94 e5                                      ldr r8, [r4, #0x334]
0054b5b0  01 c0 8c e2                                      add ip, ip, #1
0054b5b4  1c c0 8d e5                                      str ip, [sp, #0x1c]
0054b5b8  00 30 94 e5                                      ldr r3, [r4]
0054b5bc  04 00 a0 e1                                      mov r0, r4
0054b5c0  01 10 a0 e3                                      mov r1, #1
0054b5c4  0f e0 a0 e1                                      mov lr, pc
0054b5c8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054b5cc  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054b5d0  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054b5d4  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054b5d8  01 10 cd e5                                      strb r1, [sp, #1]
0054b5dc  02 20 cd e5                                      strb r2, [sp, #2]
0054b5e0  03 30 cd e5                                      strb r3, [sp, #3]
0054b5e4  00 00 cd e5                                      strb r0, [sp]
0054b5e8  00 c0 9d e5                                      ldr ip, [sp]
0054b5ec  08 00 a0 e1                                      mov r0, r8
0054b5f0  07 20 a0 e1                                      mov r2, r7
0054b5f4  0c 10 a0 e1                                      mov r1, ip
0054b5f8  06 30 a0 e1                                      mov r3, r6
0054b5fc  3c c0 8d e5                                      str ip, [sp, #0x3c]
0054b600  9d 50 01 eb                                      bl #0x59f87c
0054b604  10 20 9d e5                                      ldr r2, [sp, #0x10]
0054b608  0c 10 95 e5                                      ldr r1, [r5, #0xc]
0054b60c  00 30 94 e5                                      ldr r3, [r4]
0054b610  01 20 82 e2                                      add r2, r2, #1
0054b614  1c 10 8d e5                                      str r1, [sp, #0x1c]
0054b618  18 20 8d e5                                      str r2, [sp, #0x18]
0054b61c  04 00 a0 e1                                      mov r0, r4
0054b620  01 10 a0 e3                                      mov r1, #1
0054b624  34 83 94 e5                                      ldr r8, [r4, #0x334]
0054b628  0f e0 a0 e1                                      mov lr, pc
0054b62c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054b630  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054b634  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054b638  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054b63c  01 10 cd e5                                      strb r1, [sp, #1]
0054b640  02 20 cd e5                                      strb r2, [sp, #2]
0054b644  03 30 cd e5                                      strb r3, [sp, #3]
0054b648  00 00 cd e5                                      strb r0, [sp]
0054b64c  00 c0 9d e5                                      ldr ip, [sp]
0054b650  08 00 a0 e1                                      mov r0, r8
0054b654  07 20 a0 e1                                      mov r2, r7
0054b658  0c 10 a0 e1                                      mov r1, ip
0054b65c  06 30 a0 e1                                      mov r3, r6
0054b660  38 c0 8d e5                                      str ip, [sp, #0x38]
0054b664  84 50 01 eb                                      bl #0x59f87c
0054b668  09 00 95 e9                                      ldmib r5, {r0, r3}
0054b66c  0c 10 95 e5                                      ldr r1, [r5, #0xc]
0054b670  01 20 43 e2                                      sub r2, r3, #1
0054b674  14 00 8d e5                                      str r0, [sp, #0x14]
0054b678  1c 10 8d e5                                      str r1, [sp, #0x1c]
0054b67c  10 20 8d e5                                      str r2, [sp, #0x10]
0054b680  18 30 8d e5                                      str r3, [sp, #0x18]
0054b684  00 30 94 e5                                      ldr r3, [r4]
0054b688  04 00 a0 e1                                      mov r0, r4
0054b68c  03 10 a0 e3                                      mov r1, #3
0054b690  34 83 94 e5                                      ldr r8, [r4, #0x334]
0054b694  0f e0 a0 e1                                      mov lr, pc
0054b698  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054b69c  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054b6a0  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054b6a4  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054b6a8  01 10 cd e5                                      strb r1, [sp, #1]
0054b6ac  02 20 cd e5                                      strb r2, [sp, #2]
0054b6b0  03 30 cd e5                                      strb r3, [sp, #3]
0054b6b4  00 00 cd e5                                      strb r0, [sp]
0054b6b8  00 c0 9d e5                                      ldr ip, [sp]
0054b6bc  08 00 a0 e1                                      mov r0, r8
0054b6c0  07 20 a0 e1                                      mov r2, r7
0054b6c4  0c 10 a0 e1                                      mov r1, ip
0054b6c8  06 30 a0 e1                                      mov r3, r6
0054b6cc  34 c0 8d e5                                      str ip, [sp, #0x34]
0054b6d0  69 50 01 eb                                      bl #0x59f87c
0054b6d4  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0054b6d8  00 00 95 e5                                      ldr r0, [r5]
0054b6dc  08 10 95 e5                                      ldr r1, [r5, #8]
0054b6e0  01 20 43 e2                                      sub r2, r3, #1
0054b6e4  10 00 8d e5                                      str r0, [sp, #0x10]
0054b6e8  18 10 8d e5                                      str r1, [sp, #0x18]
0054b6ec  14 20 8d e5                                      str r2, [sp, #0x14]
0054b6f0  1c 30 8d e5                                      str r3, [sp, #0x1c]
0054b6f4  00 30 94 e5                                      ldr r3, [r4]
0054b6f8  04 00 a0 e1                                      mov r0, r4
0054b6fc  03 10 a0 e3                                      mov r1, #3
0054b700  34 43 94 e5                                      ldr r4, [r4, #0x334]
0054b704  0f e0 a0 e1                                      mov lr, pc
0054b708  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054b70c  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054b710  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054b714  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054b718  01 10 cd e5                                      strb r1, [sp, #1]
0054b71c  02 20 cd e5                                      strb r2, [sp, #2]
0054b720  03 30 cd e5                                      strb r3, [sp, #3]
0054b724  00 00 cd e5                                      strb r0, [sp]
0054b728  00 c0 9d e5                                      ldr ip, [sp]
0054b72c  04 00 a0 e1                                      mov r0, r4
0054b730  07 20 a0 e1                                      mov r2, r7
0054b734  0c 10 a0 e1                                      mov r1, ip
0054b738  06 30 a0 e1                                      mov r3, r6
0054b73c  30 c0 8d e5                                      str ip, [sp, #0x30]
0054b740  4d 50 01 eb                                      bl #0x59f87c
0054b744  44 d0 8d e2                                      add sp, sp, #0x44
0054b748  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0054b74c  00 00 51 e3                                      cmp r1, #0
0054b750  10 70 8d 02                                      addeq r7, sp, #0x10
0054b754  57 00 00 1a                                      bne #0x54b8b8
0054b758  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0054b75c  01 e0 4e e2                                      sub lr, lr, #1
0054b760  18 e0 8d e5                                      str lr, [sp, #0x18]
0054b764  01 30 43 e2                                      sub r3, r3, #1
0054b768  1c 30 8d e5                                      str r3, [sp, #0x1c]
0054b76c  00 30 94 e5                                      ldr r3, [r4]
0054b770  01 10 a0 e3                                      mov r1, #1
0054b774  04 00 a0 e1                                      mov r0, r4
0054b778  0f e0 a0 e1                                      mov lr, pc
0054b77c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054b780  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054b784  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054b788  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054b78c  01 10 cd e5                                      strb r1, [sp, #1]
0054b790  02 20 cd e5                                      strb r2, [sp, #2]
0054b794  03 30 cd e5                                      strb r3, [sp, #3]
0054b798  00 00 cd e5                                      strb r0, [sp]
0054b79c  00 c0 9d e5                                      ldr ip, [sp]
0054b7a0  08 00 a0 e1                                      mov r0, r8
0054b7a4  07 20 a0 e1                                      mov r2, r7
0054b7a8  0c 10 a0 e1                                      mov r1, ip
0054b7ac  06 30 a0 e1                                      mov r3, r6
0054b7b0  28 c0 8d e5                                      str ip, [sp, #0x28]
0054b7b4  30 50 01 eb                                      bl #0x59f87c
0054b7b8  10 20 9d e5                                      ldr r2, [sp, #0x10]
0054b7bc  14 30 9d e5                                      ldr r3, [sp, #0x14]
0054b7c0  04 10 a0 e3                                      mov r1, #4
0054b7c4  01 20 82 e2                                      add r2, r2, #1
0054b7c8  01 30 83 e2                                      add r3, r3, #1
0054b7cc  10 20 8d e5                                      str r2, [sp, #0x10]
0054b7d0  14 30 8d e5                                      str r3, [sp, #0x14]
0054b7d4  00 30 94 e5                                      ldr r3, [r4]
0054b7d8  04 00 a0 e1                                      mov r0, r4
0054b7dc  34 53 94 e5                                      ldr r5, [r4, #0x334]
0054b7e0  0f e0 a0 e1                                      mov lr, pc
0054b7e4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054b7e8  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054b7ec  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054b7f0  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054b7f4  01 10 cd e5                                      strb r1, [sp, #1]
0054b7f8  02 20 cd e5                                      strb r2, [sp, #2]
0054b7fc  03 30 cd e5                                      strb r3, [sp, #3]
0054b800  00 00 cd e5                                      strb r0, [sp]
0054b804  00 c0 9d e5                                      ldr ip, [sp]
0054b808  05 00 a0 e1                                      mov r0, r5
0054b80c  07 20 a0 e1                                      mov r2, r7
0054b810  0c 10 a0 e1                                      mov r1, ip
0054b814  06 30 a0 e1                                      mov r3, r6
0054b818  24 c0 8d e5                                      str ip, [sp, #0x24]
0054b81c  16 50 01 eb                                      bl #0x59f87c
0054b820  18 20 9d e5                                      ldr r2, [sp, #0x18]
0054b824  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0054b828  00 10 a0 e3                                      mov r1, #0
0054b82c  01 20 42 e2                                      sub r2, r2, #1
0054b830  01 30 43 e2                                      sub r3, r3, #1
0054b834  18 20 8d e5                                      str r2, [sp, #0x18]
0054b838  1c 30 8d e5                                      str r3, [sp, #0x1c]
0054b83c  00 30 94 e5                                      ldr r3, [r4]
0054b840  04 00 a0 e1                                      mov r0, r4
0054b844  34 53 94 e5                                      ldr r5, [r4, #0x334]
0054b848  0f e0 a0 e1                                      mov lr, pc
0054b84c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054b850  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054b854  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054b858  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054b85c  01 10 cd e5                                      strb r1, [sp, #1]
0054b860  02 20 cd e5                                      strb r2, [sp, #2]
0054b864  03 30 cd e5                                      strb r3, [sp, #3]
0054b868  00 00 cd e5                                      strb r0, [sp]
0054b86c  00 c0 9d e5                                      ldr ip, [sp]
0054b870  05 00 a0 e1                                      mov r0, r5
0054b874  07 20 a0 e1                                      mov r2, r7
0054b878  0c 10 a0 e1                                      mov r1, ip
0054b87c  06 30 a0 e1                                      mov r3, r6
0054b880  20 c0 8d e5                                      str ip, [sp, #0x20]
0054b884  fc 4f 01 eb                                      bl #0x59f87c
0054b888  10 e0 9d e5                                      ldr lr, [sp, #0x10]
0054b88c  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0054b890  34 03 94 e5                                      ldr r0, [r4, #0x334]
0054b894  01 e0 8e e2                                      add lr, lr, #1
0054b898  01 c0 8c e2                                      add ip, ip, #1
0054b89c  07 20 a0 e1                                      mov r2, r7
0054b8a0  06 30 a0 e1                                      mov r3, r6
0054b8a4  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0054b8a8  10 e0 8d e5                                      str lr, [sp, #0x10]
0054b8ac  14 c0 8d e5                                      str ip, [sp, #0x14]
0054b8b0  f1 4f 01 eb                                      bl #0x59f87c
0054b8b4  a2 ff ff ea                                      b #0x54b744
0054b8b8  03 10 a0 e3                                      mov r1, #3
0054b8bc  00 30 90 e5                                      ldr r3, [r0]
0054b8c0  0f e0 a0 e1                                      mov lr, pc
0054b8c4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054b8c8  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054b8cc  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054b8d0  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054b8d4  01 10 cd e5                                      strb r1, [sp, #1]
0054b8d8  02 20 cd e5                                      strb r2, [sp, #2]
0054b8dc  03 30 cd e5                                      strb r3, [sp, #3]
0054b8e0  00 00 cd e5                                      strb r0, [sp]
0054b8e4  00 c0 9d e5                                      ldr ip, [sp]
0054b8e8  10 70 8d e2                                      add r7, sp, #0x10
0054b8ec  08 00 a0 e1                                      mov r0, r8
0054b8f0  0c 10 a0 e1                                      mov r1, ip
0054b8f4  07 20 a0 e1                                      mov r2, r7
0054b8f8  06 30 a0 e1                                      mov r3, r6
0054b8fc  2c c0 8d e5                                      str ip, [sp, #0x2c]
0054b900  dd 4f 01 eb                                      bl #0x59f87c
0054b904  18 e0 9d e5                                      ldr lr, [sp, #0x18]
0054b908  34 83 94 e5                                      ldr r8, [r4, #0x334]
0054b90c  91 ff ff ea                                      b #0x54b758

; SOURCE ASSEMBLY: glitch_gui_CGUISkin-580307082304-001.asm
; FUNCTION 0x0054c40c, declared_size=1692, range_size=1692, mode=arm
; class-group: glitch::gui::CGUISkin
; alias: _ZN6glitch3gui8CGUISkin22draw3DWindowBackgroundEPNS0_11IGUIElementEbNS_5video6SColorERKNS_4core4rectIiEEPS9_
; demangled: glitch::gui::CGUISkin::draw3DWindowBackground(glitch::gui::IGUIElement*, bool, glitch::video::SColor, glitch::core::rect<int> const&, glitch::core::rect<int> const*)
; decoder-mode: arm
0054c40c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0054c410  34 a3 91 e5                                      ldr sl, [r1, #0x334]
0054c414  68 d0 4d e2                                      sub sp, sp, #0x68
0054c418  01 40 a0 e1                                      mov r4, r1
0054c41c  00 00 5a e3                                      cmp sl, #0
0054c420  00 80 a0 e1                                      mov r8, r0
0054c424  03 90 a0 e1                                      mov sb, r3
0054c428  8c 50 9d e5                                      ldr r5, [sp, #0x8c]
0054c42c  90 60 9d e5                                      ldr r6, [sp, #0x90]
0054c430  77 01 00 0a                                      beq #0x54ca14
0054c434  09 00 95 e8                                      ldm r5, {r0, r3}
0054c438  08 10 95 e5                                      ldr r1, [r5, #8]
0054c43c  01 20 83 e2                                      add r2, r3, #1
0054c440  1c 00 8d e5                                      str r0, [sp, #0x1c]
0054c444  24 10 8d e5                                      str r1, [sp, #0x24]
0054c448  28 20 8d e5                                      str r2, [sp, #0x28]
0054c44c  20 30 8d e5                                      str r3, [sp, #0x20]
0054c450  03 10 a0 e3                                      mov r1, #3
0054c454  00 30 94 e5                                      ldr r3, [r4]
0054c458  04 00 a0 e1                                      mov r0, r4
0054c45c  0f e0 a0 e1                                      mov lr, pc
0054c460  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054c464  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054c468  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054c46c  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054c470  11 10 cd e5                                      strb r1, [sp, #0x11]
0054c474  12 20 cd e5                                      strb r2, [sp, #0x12]
0054c478  13 30 cd e5                                      strb r3, [sp, #0x13]
0054c47c  10 00 cd e5                                      strb r0, [sp, #0x10]
0054c480  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054c484  1c 70 8d e2                                      add r7, sp, #0x1c
0054c488  0a 00 a0 e1                                      mov r0, sl
0054c48c  0c 10 a0 e1                                      mov r1, ip
0054c490  07 20 a0 e1                                      mov r2, r7
0054c494  06 30 a0 e1                                      mov r3, r6
0054c498  64 c0 8d e5                                      str ip, [sp, #0x64]
0054c49c  f6 4c 01 eb                                      bl #0x59f87c
0054c4a0  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0054c4a4  0c 20 95 e5                                      ldr r2, [r5, #0xc]
0054c4a8  03 10 a0 e3                                      mov r1, #3
0054c4ac  01 30 83 e2                                      add r3, r3, #1
0054c4b0  28 20 8d e5                                      str r2, [sp, #0x28]
0054c4b4  24 30 8d e5                                      str r3, [sp, #0x24]
0054c4b8  00 30 94 e5                                      ldr r3, [r4]
0054c4bc  04 00 a0 e1                                      mov r0, r4
0054c4c0  34 a3 94 e5                                      ldr sl, [r4, #0x334]
0054c4c4  0f e0 a0 e1                                      mov lr, pc
0054c4c8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054c4cc  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054c4d0  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054c4d4  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054c4d8  11 10 cd e5                                      strb r1, [sp, #0x11]
0054c4dc  12 20 cd e5                                      strb r2, [sp, #0x12]
0054c4e0  13 30 cd e5                                      strb r3, [sp, #0x13]
0054c4e4  10 00 cd e5                                      strb r0, [sp, #0x10]
0054c4e8  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054c4ec  0a 00 a0 e1                                      mov r0, sl
0054c4f0  07 20 a0 e1                                      mov r2, r7
0054c4f4  0c 10 a0 e1                                      mov r1, ip
0054c4f8  06 30 a0 e1                                      mov r3, r6
0054c4fc  60 c0 8d e5                                      str ip, [sp, #0x60]
0054c500  dd 4c 01 eb                                      bl #0x59f87c
0054c504  0a 00 95 e9                                      ldmib r5, {r1, r3}
0054c508  0c 20 95 e5                                      ldr r2, [r5, #0xc]
0054c50c  01 00 43 e2                                      sub r0, r3, #1
0054c510  1c 00 8d e5                                      str r0, [sp, #0x1c]
0054c514  20 10 8d e5                                      str r1, [sp, #0x20]
0054c518  28 20 8d e5                                      str r2, [sp, #0x28]
0054c51c  24 30 8d e5                                      str r3, [sp, #0x24]
0054c520  00 10 a0 e3                                      mov r1, #0
0054c524  00 30 94 e5                                      ldr r3, [r4]
0054c528  04 00 a0 e1                                      mov r0, r4
0054c52c  34 a3 94 e5                                      ldr sl, [r4, #0x334]
0054c530  0f e0 a0 e1                                      mov lr, pc
0054c534  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054c538  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054c53c  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054c540  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054c544  11 10 cd e5                                      strb r1, [sp, #0x11]
0054c548  12 20 cd e5                                      strb r2, [sp, #0x12]
0054c54c  13 30 cd e5                                      strb r3, [sp, #0x13]
0054c550  10 00 cd e5                                      strb r0, [sp, #0x10]
0054c554  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054c558  0a 00 a0 e1                                      mov r0, sl
0054c55c  07 20 a0 e1                                      mov r2, r7
0054c560  0c 10 a0 e1                                      mov r1, ip
0054c564  06 30 a0 e1                                      mov r3, r6
0054c568  5c c0 8d e5                                      str ip, [sp, #0x5c]
0054c56c  c2 4c 01 eb                                      bl #0x59f87c
0054c570  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0054c574  24 10 9d e5                                      ldr r1, [sp, #0x24]
0054c578  20 20 9d e5                                      ldr r2, [sp, #0x20]
0054c57c  28 30 9d e5                                      ldr r3, [sp, #0x28]
0054c580  01 00 40 e2                                      sub r0, r0, #1
0054c584  01 20 82 e2                                      add r2, r2, #1
0054c588  01 10 41 e2                                      sub r1, r1, #1
0054c58c  01 30 43 e2                                      sub r3, r3, #1
0054c590  1c 00 8d e5                                      str r0, [sp, #0x1c]
0054c594  24 10 8d e5                                      str r1, [sp, #0x24]
0054c598  20 20 8d e5                                      str r2, [sp, #0x20]
0054c59c  28 30 8d e5                                      str r3, [sp, #0x28]
0054c5a0  01 10 a0 e3                                      mov r1, #1
0054c5a4  00 30 94 e5                                      ldr r3, [r4]
0054c5a8  04 00 a0 e1                                      mov r0, r4
0054c5ac  34 a3 94 e5                                      ldr sl, [r4, #0x334]
0054c5b0  0f e0 a0 e1                                      mov lr, pc
0054c5b4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054c5b8  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054c5bc  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054c5c0  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054c5c4  11 10 cd e5                                      strb r1, [sp, #0x11]
0054c5c8  12 20 cd e5                                      strb r2, [sp, #0x12]
0054c5cc  13 30 cd e5                                      strb r3, [sp, #0x13]
0054c5d0  10 00 cd e5                                      strb r0, [sp, #0x10]
0054c5d4  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054c5d8  0a 00 a0 e1                                      mov r0, sl
0054c5dc  07 20 a0 e1                                      mov r2, r7
0054c5e0  0c 10 a0 e1                                      mov r1, ip
0054c5e4  06 30 a0 e1                                      mov r3, r6
0054c5e8  58 c0 8d e5                                      str ip, [sp, #0x58]
0054c5ec  a2 4c 01 eb                                      bl #0x59f87c
0054c5f0  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0054c5f4  00 00 95 e5                                      ldr r0, [r5]
0054c5f8  08 20 95 e5                                      ldr r2, [r5, #8]
0054c5fc  01 10 43 e2                                      sub r1, r3, #1
0054c600  1c 00 8d e5                                      str r0, [sp, #0x1c]
0054c604  20 10 8d e5                                      str r1, [sp, #0x20]
0054c608  24 20 8d e5                                      str r2, [sp, #0x24]
0054c60c  28 30 8d e5                                      str r3, [sp, #0x28]
0054c610  00 10 a0 e3                                      mov r1, #0
0054c614  00 30 94 e5                                      ldr r3, [r4]
0054c618  04 00 a0 e1                                      mov r0, r4
0054c61c  34 a3 94 e5                                      ldr sl, [r4, #0x334]
0054c620  0f e0 a0 e1                                      mov lr, pc
0054c624  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054c628  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054c62c  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054c630  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054c634  11 10 cd e5                                      strb r1, [sp, #0x11]
0054c638  12 20 cd e5                                      strb r2, [sp, #0x12]
0054c63c  13 30 cd e5                                      strb r3, [sp, #0x13]
0054c640  10 00 cd e5                                      strb r0, [sp, #0x10]
0054c644  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054c648  0a 00 a0 e1                                      mov r0, sl
0054c64c  07 20 a0 e1                                      mov r2, r7
0054c650  0c 10 a0 e1                                      mov r1, ip
0054c654  06 30 a0 e1                                      mov r3, r6
0054c658  54 c0 8d e5                                      str ip, [sp, #0x54]
0054c65c  86 4c 01 eb                                      bl #0x59f87c
0054c660  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0054c664  24 10 9d e5                                      ldr r1, [sp, #0x24]
0054c668  20 20 9d e5                                      ldr r2, [sp, #0x20]
0054c66c  28 30 9d e5                                      ldr r3, [sp, #0x28]
0054c670  01 00 80 e2                                      add r0, r0, #1
0054c674  01 20 42 e2                                      sub r2, r2, #1
0054c678  01 10 41 e2                                      sub r1, r1, #1
0054c67c  01 30 43 e2                                      sub r3, r3, #1
0054c680  1c 00 8d e5                                      str r0, [sp, #0x1c]
0054c684  24 10 8d e5                                      str r1, [sp, #0x24]
0054c688  20 20 8d e5                                      str r2, [sp, #0x20]
0054c68c  28 30 8d e5                                      str r3, [sp, #0x28]
0054c690  01 10 a0 e3                                      mov r1, #1
0054c694  00 30 94 e5                                      ldr r3, [r4]
0054c698  04 00 a0 e1                                      mov r0, r4
0054c69c  34 a3 94 e5                                      ldr sl, [r4, #0x334]
0054c6a0  0f e0 a0 e1                                      mov lr, pc
0054c6a4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054c6a8  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054c6ac  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054c6b0  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054c6b4  11 10 cd e5                                      strb r1, [sp, #0x11]
0054c6b8  12 20 cd e5                                      strb r2, [sp, #0x12]
0054c6bc  13 30 cd e5                                      strb r3, [sp, #0x13]
0054c6c0  10 00 cd e5                                      strb r0, [sp, #0x10]
0054c6c4  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054c6c8  0a 00 a0 e1                                      mov r0, sl
0054c6cc  07 20 a0 e1                                      mov r2, r7
0054c6d0  0c 10 a0 e1                                      mov r1, ip
0054c6d4  06 30 a0 e1                                      mov r3, r6
0054c6d8  50 c0 8d e5                                      str ip, [sp, #0x50]
0054c6dc  66 4c 01 eb                                      bl #0x59f87c
0054c6e0  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
0054c6e4  38 c3 d4 e5                                      ldrb ip, [r4, #0x338]
0054c6e8  01 00 80 e2                                      add r0, r0, #1
0054c6ec  01 10 81 e2                                      add r1, r1, #1
0054c6f0  02 20 42 e2                                      sub r2, r2, #2
0054c6f4  02 30 43 e2                                      sub r3, r3, #2
0054c6f8  00 00 5c e3                                      cmp ip, #0
0054c6fc  1c 00 8d e5                                      str r0, [sp, #0x1c]
0054c700  20 10 8d e5                                      str r1, [sp, #0x20]
0054c704  24 20 8d e5                                      str r2, [sp, #0x24]
0054c708  28 30 8d e5                                      str r3, [sp, #0x28]
0054c70c  61 00 00 0a                                      beq #0x54c898
0054c710  3c 33 94 e5                                      ldr r3, [r4, #0x33c]
0054c714  02 00 53 e3                                      cmp r3, #2
0054c718  73 00 00 0a                                      beq #0x54c8ec
0054c71c  01 10 a0 e3                                      mov r1, #1
0054c720  00 30 94 e5                                      ldr r3, [r4]
0054c724  04 00 a0 e1                                      mov r0, r4
0054c728  0f e0 a0 e1                                      mov lr, pc
0054c72c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054c730  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054c734  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054c738  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054c73c  11 10 cd e5                                      strb r1, [sp, #0x11]
0054c740  10 00 cd e5                                      strb r0, [sp, #0x10]
0054c744  12 20 cd e5                                      strb r2, [sp, #0x12]
0054c748  13 30 cd e5                                      strb r3, [sp, #0x13]
0054c74c  10 20 9d e5                                      ldr r2, [sp, #0x10]
0054c750  00 30 94 e5                                      ldr r3, [r4]
0054c754  02 10 a0 e3                                      mov r1, #2
0054c758  38 20 8d e5                                      str r2, [sp, #0x38]
0054c75c  04 00 a0 e1                                      mov r0, r4
0054c760  0f e0 a0 e1                                      mov lr, pc
0054c764  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054c768  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054c76c  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054c770  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054c774  11 10 cd e5                                      strb r1, [sp, #0x11]
0054c778  12 20 cd e5                                      strb r2, [sp, #0x12]
0054c77c  13 30 cd e5                                      strb r3, [sp, #0x13]
0054c780  10 00 cd e5                                      strb r0, [sp, #0x10]
0054c784  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054c788  38 e0 9d e5                                      ldr lr, [sp, #0x38]
0054c78c  34 03 94 e5                                      ldr r0, [r4, #0x334]
0054c790  0c 20 a0 e1                                      mov r2, ip
0054c794  07 10 a0 e1                                      mov r1, r7
0054c798  0c 30 a0 e1                                      mov r3, ip
0054c79c  04 e0 8d e5                                      str lr, [sp, #4]
0054c7a0  30 c0 8d e5                                      str ip, [sp, #0x30]
0054c7a4  00 c0 8d e5                                      str ip, [sp]
0054c7a8  08 60 8d e5                                      str r6, [sp, #8]
0054c7ac  f3 4b 01 eb                                      bl #0x59f780
0054c7b0  00 20 95 e5                                      ldr r2, [r5]
0054c7b4  09 00 95 e9                                      ldmib r5, {r0, r3}
0054c7b8  0c 10 95 e5                                      ldr r1, [r5, #0xc]
0054c7bc  02 20 82 e2                                      add r2, r2, #2
0054c7c0  02 50 80 e2                                      add r5, r0, #2
0054c7c4  02 30 43 e2                                      sub r3, r3, #2
0054c7c8  28 10 8d e5                                      str r1, [sp, #0x28]
0054c7cc  20 50 8d e5                                      str r5, [sp, #0x20]
0054c7d0  1c 20 8d e5                                      str r2, [sp, #0x1c]
0054c7d4  24 30 8d e5                                      str r3, [sp, #0x24]
0054c7d8  00 30 94 e5                                      ldr r3, [r4]
0054c7dc  04 00 a0 e1                                      mov r0, r4
0054c7e0  02 10 a0 e3                                      mov r1, #2
0054c7e4  0f e0 a0 e1                                      mov lr, pc
0054c7e8  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0054c7ec  02 50 85 e2                                      add r5, r5, #2
0054c7f0  00 50 85 e0                                      add r5, r5, r0
0054c7f4  00 00 59 e3                                      cmp sb, #0
0054c7f8  28 50 8d e5                                      str r5, [sp, #0x28]
0054c7fc  1f 00 00 0a                                      beq #0x54c880
0054c800  3c 33 94 e5                                      ldr r3, [r4, #0x33c]
0054c804  02 00 53 e3                                      cmp r3, #2
0054c808  8a 00 00 0a                                      beq #0x54ca38
0054c80c  cd 2c 0c e3                                      movw r2, #0xcccd
0054c810  00 30 a0 e3                                      mov r3, #0
0054c814  00 c0 e0 e3                                      mvn ip, #0
0054c818  2c 10 8d e2                                      add r1, sp, #0x2c
0054c81c  4c 2e 43 e3                                      movt r2, #0x3e4c
0054c820  88 00 8d e2                                      add r0, sp, #0x88
0054c824  2e 30 cd e5                                      strb r3, [sp, #0x2e]
0054c828  2f c0 cd e5                                      strb ip, [sp, #0x2f]
0054c82c  2c 30 cd e5                                      strb r3, [sp, #0x2c]
0054c830  2d 30 cd e5                                      strb r3, [sp, #0x2d]
0054c834  d4 d1 ff eb                                      bl #0x540f8c
0054c838  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054c83c  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054c840  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054c844  11 10 cd e5                                      strb r1, [sp, #0x11]
0054c848  12 20 cd e5                                      strb r2, [sp, #0x12]
0054c84c  13 30 cd e5                                      strb r3, [sp, #0x13]
0054c850  10 00 cd e5                                      strb r0, [sp, #0x10]
0054c854  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054c858  88 e0 9d e5                                      ldr lr, [sp, #0x88]
0054c85c  34 03 94 e5                                      ldr r0, [r4, #0x334]
0054c860  07 10 a0 e1                                      mov r1, r7
0054c864  0e 20 a0 e1                                      mov r2, lr
0054c868  0c 30 a0 e1                                      mov r3, ip
0054c86c  08 60 8d e5                                      str r6, [sp, #8]
0054c870  30 c0 8d e5                                      str ip, [sp, #0x30]
0054c874  00 e0 8d e5                                      str lr, [sp]
0054c878  04 c0 8d e5                                      str ip, [sp, #4]
0054c87c  bf 4b 01 eb                                      bl #0x59f780
0054c880  1c 00 8d e2                                      add r0, sp, #0x1c
0054c884  0f 00 90 e8                                      ldm r0, {r0, r1, r2, r3}
0054c888  0f 00 88 e8                                      stm r8, {r0, r1, r2, r3}
0054c88c  08 00 a0 e1                                      mov r0, r8
0054c890  68 d0 8d e2                                      add sp, sp, #0x68
0054c894  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0054c898  00 30 94 e5                                      ldr r3, [r4]
0054c89c  04 00 a0 e1                                      mov r0, r4
0054c8a0  02 10 a0 e3                                      mov r1, #2
0054c8a4  34 a3 94 e5                                      ldr sl, [r4, #0x334]
0054c8a8  0f e0 a0 e1                                      mov lr, pc
0054c8ac  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054c8b0  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054c8b4  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054c8b8  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054c8bc  11 10 cd e5                                      strb r1, [sp, #0x11]
0054c8c0  12 20 cd e5                                      strb r2, [sp, #0x12]
0054c8c4  13 30 cd e5                                      strb r3, [sp, #0x13]
0054c8c8  10 00 cd e5                                      strb r0, [sp, #0x10]
0054c8cc  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054c8d0  0a 00 a0 e1                                      mov r0, sl
0054c8d4  07 20 a0 e1                                      mov r2, r7
0054c8d8  0c 10 a0 e1                                      mov r1, ip
0054c8dc  06 30 a0 e1                                      mov r3, r6
0054c8e0  4c c0 8d e5                                      str ip, [sp, #0x4c]
0054c8e4  e4 4b 01 eb                                      bl #0x59f87c
0054c8e8  b0 ff ff ea                                      b #0x54c7b0
0054c8ec  00 30 94 e5                                      ldr r3, [r4]
0054c8f0  04 00 a0 e1                                      mov r0, r4
0054c8f4  11 10 a0 e3                                      mov r1, #0x11
0054c8f8  0f e0 a0 e1                                      mov lr, pc
0054c8fc  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054c900  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054c904  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054c908  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054c90c  11 10 cd e5                                      strb r1, [sp, #0x11]
0054c910  12 20 cd e5                                      strb r2, [sp, #0x12]
0054c914  10 00 cd e5                                      strb r0, [sp, #0x10]
0054c918  13 30 cd e5                                      strb r3, [sp, #0x13]
0054c91c  10 30 9d e5                                      ldr r3, [sp, #0x10]
0054c920  66 26 06 e3                                      movw r2, #0x6666
0054c924  00 a0 e0 e3                                      mvn sl, #0
0054c928  44 10 8d e2                                      add r1, sp, #0x44
0054c92c  66 2f 43 e3                                      movt r2, #0x3f66
0054c930  48 00 8d e2                                      add r0, sp, #0x48
0054c934  48 30 8d e5                                      str r3, [sp, #0x48]
0054c938  44 a0 cd e5                                      strb sl, [sp, #0x44]
0054c93c  45 a0 cd e5                                      strb sl, [sp, #0x45]
0054c940  46 a0 cd e5                                      strb sl, [sp, #0x46]
0054c944  47 a0 cd e5                                      strb sl, [sp, #0x47]
0054c948  8f d1 ff eb                                      bl #0x540f8c
0054c94c  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054c950  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054c954  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054c958  11 10 cd e5                                      strb r1, [sp, #0x11]
0054c95c  10 00 cd e5                                      strb r0, [sp, #0x10]
0054c960  12 20 cd e5                                      strb r2, [sp, #0x12]
0054c964  13 30 cd e5                                      strb r3, [sp, #0x13]
0054c968  10 20 9d e5                                      ldr r2, [sp, #0x10]
0054c96c  00 30 94 e5                                      ldr r3, [r4]
0054c970  04 00 a0 e1                                      mov r0, r4
0054c974  30 20 8d e5                                      str r2, [sp, #0x30]
0054c978  11 10 a0 e3                                      mov r1, #0x11
0054c97c  0f e0 a0 e1                                      mov lr, pc
0054c980  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054c984  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054c988  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054c98c  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054c990  11 10 cd e5                                      strb r1, [sp, #0x11]
0054c994  12 20 cd e5                                      strb r2, [sp, #0x12]
0054c998  10 00 cd e5                                      strb r0, [sp, #0x10]
0054c99c  13 30 cd e5                                      strb r3, [sp, #0x13]
0054c9a0  10 30 9d e5                                      ldr r3, [sp, #0x10]
0054c9a4  cd 2c 0c e3                                      movw r2, #0xcccd
0054c9a8  3c 10 8d e2                                      add r1, sp, #0x3c
0054c9ac  40 00 8d e2                                      add r0, sp, #0x40
0054c9b0  4c 2f 43 e3                                      movt r2, #0x3f4c
0054c9b4  40 30 8d e5                                      str r3, [sp, #0x40]
0054c9b8  3f a0 cd e5                                      strb sl, [sp, #0x3f]
0054c9bc  3c a0 cd e5                                      strb sl, [sp, #0x3c]
0054c9c0  3d a0 cd e5                                      strb sl, [sp, #0x3d]
0054c9c4  3e a0 cd e5                                      strb sl, [sp, #0x3e]
0054c9c8  6f d1 ff eb                                      bl #0x540f8c
0054c9cc  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054c9d0  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054c9d4  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054c9d8  11 10 cd e5                                      strb r1, [sp, #0x11]
0054c9dc  12 20 cd e5                                      strb r2, [sp, #0x12]
0054c9e0  13 30 cd e5                                      strb r3, [sp, #0x13]
0054c9e4  10 00 cd e5                                      strb r0, [sp, #0x10]
0054c9e8  30 20 9d e5                                      ldr r2, [sp, #0x30]
0054c9ec  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054c9f0  34 03 94 e5                                      ldr r0, [r4, #0x334]
0054c9f4  07 10 a0 e1                                      mov r1, r7
0054c9f8  02 30 a0 e1                                      mov r3, r2
0054c9fc  04 c0 8d e5                                      str ip, [sp, #4]
0054ca00  38 c0 8d e5                                      str ip, [sp, #0x38]
0054ca04  00 c0 8d e5                                      str ip, [sp]
0054ca08  08 60 8d e5                                      str r6, [sp, #8]
0054ca0c  5b 4b 01 eb                                      bl #0x59f780
0054ca10  66 ff ff ea                                      b #0x54c7b0
0054ca14  00 30 95 e5                                      ldr r3, [r5]
0054ca18  00 30 80 e5                                      str r3, [r0]
0054ca1c  04 30 95 e5                                      ldr r3, [r5, #4]
0054ca20  04 30 80 e5                                      str r3, [r0, #4]
0054ca24  08 30 95 e5                                      ldr r3, [r5, #8]
0054ca28  08 30 80 e5                                      str r3, [r0, #8]
0054ca2c  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0054ca30  0c 30 80 e5                                      str r3, [r0, #0xc]
0054ca34  94 ff ff ea                                      b #0x54c88c
0054ca38  cd 2c 0c e3                                      movw r2, #0xcccd
0054ca3c  00 30 e0 e3                                      mvn r3, #0
0054ca40  34 10 8d e2                                      add r1, sp, #0x34
0054ca44  88 00 8d e2                                      add r0, sp, #0x88
0054ca48  4c 2f 43 e3                                      movt r2, #0x3f4c
0054ca4c  37 30 cd e5                                      strb r3, [sp, #0x37]
0054ca50  34 30 cd e5                                      strb r3, [sp, #0x34]
0054ca54  35 30 cd e5                                      strb r3, [sp, #0x35]
0054ca58  36 30 cd e5                                      strb r3, [sp, #0x36]
0054ca5c  4a d1 ff eb                                      bl #0x540f8c
0054ca60  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054ca64  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054ca68  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054ca6c  11 10 cd e5                                      strb r1, [sp, #0x11]
0054ca70  12 20 cd e5                                      strb r2, [sp, #0x12]
0054ca74  13 30 cd e5                                      strb r3, [sp, #0x13]
0054ca78  10 00 cd e5                                      strb r0, [sp, #0x10]
0054ca7c  88 20 9d e5                                      ldr r2, [sp, #0x88]
0054ca80  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054ca84  34 03 94 e5                                      ldr r0, [r4, #0x334]
0054ca88  07 10 a0 e1                                      mov r1, r7
0054ca8c  02 30 a0 e1                                      mov r3, r2
0054ca90  04 c0 8d e5                                      str ip, [sp, #4]
0054ca94  08 60 8d e5                                      str r6, [sp, #8]
0054ca98  30 c0 8d e5                                      str ip, [sp, #0x30]
0054ca9c  00 c0 8d e5                                      str ip, [sp]
0054caa0  36 4b 01 eb                                      bl #0x59f780
0054caa4  75 ff ff ea                                      b #0x54c880

; SOURCE ASSEMBLY: glitch_gui_CGUISkin-580307082304-001.asm
; FUNCTION 0x0054cd44, declared_size=888, range_size=888, mode=arm
; class-group: glitch::gui::CGUISkin
; alias: _ZN6glitch3gui8CGUISkin24draw3DButtonPaneStandardEPNS0_11IGUIElementERKNS_4core4rectIiEEPS7_
; demangled: glitch::gui::CGUISkin::draw3DButtonPaneStandard(glitch::gui::IGUIElement*, glitch::core::rect<int> const&, glitch::core::rect<int> const*)
; decoder-mode: arm
0054cd44  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0054cd48  34 73 90 e5                                      ldr r7, [r0, #0x334]
0054cd4c  54 d0 4d e2                                      sub sp, sp, #0x54
0054cd50  00 40 a0 e1                                      mov r4, r0
0054cd54  00 00 57 e3                                      cmp r7, #0
0054cd58  01 60 a0 e1                                      mov r6, r1
0054cd5c  03 50 a0 e1                                      mov r5, r3
0054cd60  8c 00 00 0a                                      beq #0x54cf98
0054cd64  3c 33 90 e5                                      ldr r3, [r0, #0x33c]
0054cd68  0c 10 92 e5                                      ldr r1, [r2, #0xc]
0054cd6c  00 e0 92 e5                                      ldr lr, [r2]
0054cd70  04 c0 92 e5                                      ldr ip, [r2, #4]
0054cd74  08 20 92 e5                                      ldr r2, [r2, #8]
0054cd78  02 00 53 e3                                      cmp r3, #2
0054cd7c  18 e0 8d e5                                      str lr, [sp, #0x18]
0054cd80  1c c0 8d e5                                      str ip, [sp, #0x1c]
0054cd84  20 20 8d e5                                      str r2, [sp, #0x20]
0054cd88  24 10 8d e5                                      str r1, [sp, #0x24]
0054cd8c  98 00 00 0a                                      beq #0x54cff4
0054cd90  00 10 a0 e3                                      mov r1, #0
0054cd94  00 30 90 e5                                      ldr r3, [r0]
0054cd98  0f e0 a0 e1                                      mov lr, pc
0054cd9c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054cda0  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054cda4  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054cda8  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054cdac  11 10 cd e5                                      strb r1, [sp, #0x11]
0054cdb0  12 20 cd e5                                      strb r2, [sp, #0x12]
0054cdb4  13 30 cd e5                                      strb r3, [sp, #0x13]
0054cdb8  10 00 cd e5                                      strb r0, [sp, #0x10]
0054cdbc  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054cdc0  18 60 8d e2                                      add r6, sp, #0x18
0054cdc4  07 00 a0 e1                                      mov r0, r7
0054cdc8  0c 10 a0 e1                                      mov r1, ip
0054cdcc  06 20 a0 e1                                      mov r2, r6
0054cdd0  05 30 a0 e1                                      mov r3, r5
0054cdd4  40 c0 8d e5                                      str ip, [sp, #0x40]
0054cdd8  a7 4a 01 eb                                      bl #0x59f87c
0054cddc  20 20 9d e5                                      ldr r2, [sp, #0x20]
0054cde0  24 30 9d e5                                      ldr r3, [sp, #0x24]
0054cde4  03 10 a0 e3                                      mov r1, #3
0054cde8  01 20 42 e2                                      sub r2, r2, #1
0054cdec  01 30 43 e2                                      sub r3, r3, #1
0054cdf0  20 20 8d e5                                      str r2, [sp, #0x20]
0054cdf4  24 30 8d e5                                      str r3, [sp, #0x24]
0054cdf8  00 30 94 e5                                      ldr r3, [r4]
0054cdfc  04 00 a0 e1                                      mov r0, r4
0054ce00  34 73 94 e5                                      ldr r7, [r4, #0x334]
0054ce04  0f e0 a0 e1                                      mov lr, pc
0054ce08  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054ce0c  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054ce10  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054ce14  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054ce18  11 10 cd e5                                      strb r1, [sp, #0x11]
0054ce1c  12 20 cd e5                                      strb r2, [sp, #0x12]
0054ce20  13 30 cd e5                                      strb r3, [sp, #0x13]
0054ce24  10 00 cd e5                                      strb r0, [sp, #0x10]
0054ce28  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054ce2c  07 00 a0 e1                                      mov r0, r7
0054ce30  06 20 a0 e1                                      mov r2, r6
0054ce34  0c 10 a0 e1                                      mov r1, ip
0054ce38  05 30 a0 e1                                      mov r3, r5
0054ce3c  3c c0 8d e5                                      str ip, [sp, #0x3c]
0054ce40  8d 4a 01 eb                                      bl #0x59f87c
0054ce44  18 20 9d e5                                      ldr r2, [sp, #0x18]
0054ce48  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0054ce4c  01 10 a0 e3                                      mov r1, #1
0054ce50  01 20 82 e0                                      add r2, r2, r1
0054ce54  01 30 83 e0                                      add r3, r3, r1
0054ce58  18 20 8d e5                                      str r2, [sp, #0x18]
0054ce5c  1c 30 8d e5                                      str r3, [sp, #0x1c]
0054ce60  00 30 94 e5                                      ldr r3, [r4]
0054ce64  04 00 a0 e1                                      mov r0, r4
0054ce68  34 73 94 e5                                      ldr r7, [r4, #0x334]
0054ce6c  0f e0 a0 e1                                      mov lr, pc
0054ce70  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054ce74  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054ce78  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054ce7c  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054ce80  11 10 cd e5                                      strb r1, [sp, #0x11]
0054ce84  12 20 cd e5                                      strb r2, [sp, #0x12]
0054ce88  13 30 cd e5                                      strb r3, [sp, #0x13]
0054ce8c  10 00 cd e5                                      strb r0, [sp, #0x10]
0054ce90  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054ce94  06 20 a0 e1                                      mov r2, r6
0054ce98  05 30 a0 e1                                      mov r3, r5
0054ce9c  0c 10 a0 e1                                      mov r1, ip
0054cea0  07 00 a0 e1                                      mov r0, r7
0054cea4  38 c0 8d e5                                      str ip, [sp, #0x38]
0054cea8  73 4a 01 eb                                      bl #0x59f87c
0054ceac  38 13 d4 e5                                      ldrb r1, [r4, #0x338]
0054ceb0  20 20 9d e5                                      ldr r2, [sp, #0x20]
0054ceb4  24 30 9d e5                                      ldr r3, [sp, #0x24]
0054ceb8  00 00 51 e3                                      cmp r1, #0
0054cebc  01 20 42 e2                                      sub r2, r2, #1
0054cec0  01 30 43 e2                                      sub r3, r3, #1
0054cec4  20 20 8d e5                                      str r2, [sp, #0x20]
0054cec8  24 30 8d e5                                      str r3, [sp, #0x24]
0054cecc  33 00 00 0a                                      beq #0x54cfa0
0054ced0  02 10 a0 e3                                      mov r1, #2
0054ced4  00 30 94 e5                                      ldr r3, [r4]
0054ced8  04 00 a0 e1                                      mov r0, r4
0054cedc  0f e0 a0 e1                                      mov lr, pc
0054cee0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054cee4  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054cee8  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054ceec  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054cef0  11 10 cd e5                                      strb r1, [sp, #0x11]
0054cef4  10 00 cd e5                                      strb r0, [sp, #0x10]
0054cef8  12 20 cd e5                                      strb r2, [sp, #0x12]
0054cefc  13 30 cd e5                                      strb r3, [sp, #0x13]
0054cf00  10 20 9d e5                                      ldr r2, [sp, #0x10]
0054cf04  00 30 94 e5                                      ldr r3, [r4]
0054cf08  00 10 a0 e3                                      mov r1, #0
0054cf0c  30 20 8d e5                                      str r2, [sp, #0x30]
0054cf10  04 00 a0 e1                                      mov r0, r4
0054cf14  0f e0 a0 e1                                      mov lr, pc
0054cf18  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054cf1c  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054cf20  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054cf24  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054cf28  11 10 cd e5                                      strb r1, [sp, #0x11]
0054cf2c  12 20 cd e5                                      strb r2, [sp, #0x12]
0054cf30  10 00 cd e5                                      strb r0, [sp, #0x10]
0054cf34  13 30 cd e5                                      strb r3, [sp, #0x13]
0054cf38  10 30 9d e5                                      ldr r3, [sp, #0x10]
0054cf3c  cd 2c 0c e3                                      movw r2, #0xcccd
0054cf40  28 10 8d e2                                      add r1, sp, #0x28
0054cf44  cc 2e 43 e3                                      movt r2, #0x3ecc
0054cf48  30 00 8d e2                                      add r0, sp, #0x30
0054cf4c  28 30 8d e5                                      str r3, [sp, #0x28]
0054cf50  0d d0 ff eb                                      bl #0x540f8c
0054cf54  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054cf58  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054cf5c  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054cf60  11 10 cd e5                                      strb r1, [sp, #0x11]
0054cf64  12 20 cd e5                                      strb r2, [sp, #0x12]
0054cf68  13 30 cd e5                                      strb r3, [sp, #0x13]
0054cf6c  10 00 cd e5                                      strb r0, [sp, #0x10]
0054cf70  30 20 9d e5                                      ldr r2, [sp, #0x30]
0054cf74  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054cf78  34 03 94 e5                                      ldr r0, [r4, #0x334]
0054cf7c  06 10 a0 e1                                      mov r1, r6
0054cf80  02 30 a0 e1                                      mov r3, r2
0054cf84  04 c0 8d e5                                      str ip, [sp, #4]
0054cf88  08 50 8d e5                                      str r5, [sp, #8]
0054cf8c  2c c0 8d e5                                      str ip, [sp, #0x2c]
0054cf90  00 c0 8d e5                                      str ip, [sp]
0054cf94  f9 49 01 eb                                      bl #0x59f780
0054cf98  54 d0 8d e2                                      add sp, sp, #0x54
0054cf9c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0054cfa0  00 30 94 e5                                      ldr r3, [r4]
0054cfa4  04 00 a0 e1                                      mov r0, r4
0054cfa8  02 10 a0 e3                                      mov r1, #2
0054cfac  34 43 94 e5                                      ldr r4, [r4, #0x334]
0054cfb0  0f e0 a0 e1                                      mov lr, pc
0054cfb4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054cfb8  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054cfbc  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054cfc0  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054cfc4  11 10 cd e5                                      strb r1, [sp, #0x11]
0054cfc8  12 20 cd e5                                      strb r2, [sp, #0x12]
0054cfcc  13 30 cd e5                                      strb r3, [sp, #0x13]
0054cfd0  10 00 cd e5                                      strb r0, [sp, #0x10]
0054cfd4  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054cfd8  04 00 a0 e1                                      mov r0, r4
0054cfdc  06 20 a0 e1                                      mov r2, r6
0054cfe0  0c 10 a0 e1                                      mov r1, ip
0054cfe4  05 30 a0 e1                                      mov r3, r5
0054cfe8  34 c0 8d e5                                      str ip, [sp, #0x34]
0054cfec  22 4a 01 eb                                      bl #0x59f87c
0054cff0  e8 ff ff ea                                      b #0x54cf98
0054cff4  00 30 90 e5                                      ldr r3, [r0]
0054cff8  01 e0 4e e2                                      sub lr, lr, #1
0054cffc  01 c0 4c e2                                      sub ip, ip, #1
0054d000  01 20 82 e2                                      add r2, r2, #1
0054d004  01 10 81 e2                                      add r1, r1, #1
0054d008  18 e0 8d e5                                      str lr, [sp, #0x18]
0054d00c  1c c0 8d e5                                      str ip, [sp, #0x1c]
0054d010  20 20 8d e5                                      str r2, [sp, #0x20]
0054d014  24 10 8d e5                                      str r1, [sp, #0x24]
0054d018  11 10 a0 e3                                      mov r1, #0x11
0054d01c  48 70 93 e5                                      ldr r7, [r3, #0x48]
0054d020  0f e0 a0 e1                                      mov lr, pc
0054d024  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054d028  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054d02c  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054d030  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054d034  11 10 cd e5                                      strb r1, [sp, #0x11]
0054d038  12 20 cd e5                                      strb r2, [sp, #0x12]
0054d03c  13 30 cd e5                                      strb r3, [sp, #0x13]
0054d040  10 00 cd e5                                      strb r0, [sp, #0x10]
0054d044  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054d048  66 26 06 e3                                      movw r2, #0x6666
0054d04c  00 30 e0 e3                                      mvn r3, #0
0054d050  48 10 8d e2                                      add r1, sp, #0x48
0054d054  4c 00 8d e2                                      add r0, sp, #0x4c
0054d058  66 2f 43 e3                                      movt r2, #0x3f66
0054d05c  4b 30 cd e5                                      strb r3, [sp, #0x4b]
0054d060  48 30 cd e5                                      strb r3, [sp, #0x48]
0054d064  49 30 cd e5                                      strb r3, [sp, #0x49]
0054d068  4a 30 cd e5                                      strb r3, [sp, #0x4a]
0054d06c  4c c0 8d e5                                      str ip, [sp, #0x4c]
0054d070  c5 cf ff eb                                      bl #0x540f8c
0054d074  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054d078  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054d07c  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054d080  11 10 cd e5                                      strb r1, [sp, #0x11]
0054d084  13 30 cd e5                                      strb r3, [sp, #0x13]
0054d088  10 00 cd e5                                      strb r0, [sp, #0x10]
0054d08c  12 20 cd e5                                      strb r2, [sp, #0x12]
0054d090  10 20 9d e5                                      ldr r2, [sp, #0x10]
0054d094  01 30 a0 e3                                      mov r3, #1
0054d098  00 30 8d e5                                      str r3, [sp]
0054d09c  18 30 8d e2                                      add r3, sp, #0x18
0054d0a0  28 00 8d e9                                      stmib sp, {r3, r5}
0054d0a4  44 20 8d e5                                      str r2, [sp, #0x44]
0054d0a8  04 00 a0 e1                                      mov r0, r4
0054d0ac  06 10 a0 e1                                      mov r1, r6
0054d0b0  00 30 a0 e3                                      mov r3, #0
0054d0b4  37 ff 2f e1                                      blx r7
0054d0b8  b6 ff ff ea                                      b #0x54cf98

; SOURCE ASSEMBLY: glitch_gui_CGUISkin-580307082304-001.asm
; FUNCTION 0x0054caa8, declared_size=668, range_size=668, mode=arm
; class-group: glitch::gui::CGUISkin
; alias: _ZN6glitch3gui8CGUISkin23draw3DButtonPanePressedEPNS0_11IGUIElementERKNS_4core4rectIiEEPS7_
; demangled: glitch::gui::CGUISkin::draw3DButtonPanePressed(glitch::gui::IGUIElement*, glitch::core::rect<int> const&, glitch::core::rect<int> const*)
; decoder-mode: arm
0054caa8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0054caac  34 73 90 e5                                      ldr r7, [r0, #0x334]
0054cab0  4c d0 4d e2                                      sub sp, sp, #0x4c
0054cab4  00 40 a0 e1                                      mov r4, r0
0054cab8  00 00 57 e3                                      cmp r7, #0
0054cabc  03 50 a0 e1                                      mov r5, r3
0054cac0  88 00 00 0a                                      beq #0x54cce8
0054cac4  0c 30 92 e5                                      ldr r3, [r2, #0xc]
0054cac8  00 c0 92 e5                                      ldr ip, [r2]
0054cacc  06 00 92 e9                                      ldmib r2, {r1, r2}
0054cad0  1c c0 8d e5                                      str ip, [sp, #0x1c]
0054cad4  20 10 8d e5                                      str r1, [sp, #0x20]
0054cad8  24 20 8d e5                                      str r2, [sp, #0x24]
0054cadc  28 30 8d e5                                      str r3, [sp, #0x28]
0054cae0  03 10 a0 e3                                      mov r1, #3
0054cae4  00 30 90 e5                                      ldr r3, [r0]
0054cae8  0f e0 a0 e1                                      mov lr, pc
0054caec  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054caf0  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054caf4  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054caf8  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054cafc  11 10 cd e5                                      strb r1, [sp, #0x11]
0054cb00  12 20 cd e5                                      strb r2, [sp, #0x12]
0054cb04  13 30 cd e5                                      strb r3, [sp, #0x13]
0054cb08  10 00 cd e5                                      strb r0, [sp, #0x10]
0054cb0c  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054cb10  1c 60 8d e2                                      add r6, sp, #0x1c
0054cb14  07 00 a0 e1                                      mov r0, r7
0054cb18  0c 10 a0 e1                                      mov r1, ip
0054cb1c  06 20 a0 e1                                      mov r2, r6
0054cb20  05 30 a0 e1                                      mov r3, r5
0054cb24  44 c0 8d e5                                      str ip, [sp, #0x44]
0054cb28  53 4b 01 eb                                      bl #0x59f87c
0054cb2c  24 20 9d e5                                      ldr r2, [sp, #0x24]
0054cb30  28 30 9d e5                                      ldr r3, [sp, #0x28]
0054cb34  00 10 a0 e3                                      mov r1, #0
0054cb38  01 20 42 e2                                      sub r2, r2, #1
0054cb3c  01 30 43 e2                                      sub r3, r3, #1
0054cb40  24 20 8d e5                                      str r2, [sp, #0x24]
0054cb44  28 30 8d e5                                      str r3, [sp, #0x28]
0054cb48  00 30 94 e5                                      ldr r3, [r4]
0054cb4c  04 00 a0 e1                                      mov r0, r4
0054cb50  34 73 94 e5                                      ldr r7, [r4, #0x334]
0054cb54  0f e0 a0 e1                                      mov lr, pc
0054cb58  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054cb5c  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054cb60  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054cb64  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054cb68  11 10 cd e5                                      strb r1, [sp, #0x11]
0054cb6c  12 20 cd e5                                      strb r2, [sp, #0x12]
0054cb70  13 30 cd e5                                      strb r3, [sp, #0x13]
0054cb74  10 00 cd e5                                      strb r0, [sp, #0x10]
0054cb78  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054cb7c  07 00 a0 e1                                      mov r0, r7
0054cb80  06 20 a0 e1                                      mov r2, r6
0054cb84  0c 10 a0 e1                                      mov r1, ip
0054cb88  05 30 a0 e1                                      mov r3, r5
0054cb8c  40 c0 8d e5                                      str ip, [sp, #0x40]
0054cb90  39 4b 01 eb                                      bl #0x59f87c
0054cb94  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0054cb98  20 30 9d e5                                      ldr r3, [sp, #0x20]
0054cb9c  01 10 a0 e3                                      mov r1, #1
0054cba0  01 20 82 e0                                      add r2, r2, r1
0054cba4  01 30 83 e0                                      add r3, r3, r1
0054cba8  1c 20 8d e5                                      str r2, [sp, #0x1c]
0054cbac  20 30 8d e5                                      str r3, [sp, #0x20]
0054cbb0  00 30 94 e5                                      ldr r3, [r4]
0054cbb4  04 00 a0 e1                                      mov r0, r4
0054cbb8  34 73 94 e5                                      ldr r7, [r4, #0x334]
0054cbbc  0f e0 a0 e1                                      mov lr, pc
0054cbc0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054cbc4  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054cbc8  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054cbcc  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054cbd0  11 10 cd e5                                      strb r1, [sp, #0x11]
0054cbd4  12 20 cd e5                                      strb r2, [sp, #0x12]
0054cbd8  13 30 cd e5                                      strb r3, [sp, #0x13]
0054cbdc  10 00 cd e5                                      strb r0, [sp, #0x10]
0054cbe0  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054cbe4  06 20 a0 e1                                      mov r2, r6
0054cbe8  05 30 a0 e1                                      mov r3, r5
0054cbec  0c 10 a0 e1                                      mov r1, ip
0054cbf0  07 00 a0 e1                                      mov r0, r7
0054cbf4  3c c0 8d e5                                      str ip, [sp, #0x3c]
0054cbf8  1f 4b 01 eb                                      bl #0x59f87c
0054cbfc  38 13 d4 e5                                      ldrb r1, [r4, #0x338]
0054cc00  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0054cc04  20 30 9d e5                                      ldr r3, [sp, #0x20]
0054cc08  00 00 51 e3                                      cmp r1, #0
0054cc0c  01 20 82 e2                                      add r2, r2, #1
0054cc10  01 30 83 e2                                      add r3, r3, #1
0054cc14  1c 20 8d e5                                      str r2, [sp, #0x1c]
0054cc18  20 30 8d e5                                      str r3, [sp, #0x20]
0054cc1c  33 00 00 0a                                      beq #0x54ccf0
0054cc20  02 10 a0 e3                                      mov r1, #2
0054cc24  00 30 94 e5                                      ldr r3, [r4]
0054cc28  04 00 a0 e1                                      mov r0, r4
0054cc2c  0f e0 a0 e1                                      mov lr, pc
0054cc30  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054cc34  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054cc38  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054cc3c  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054cc40  11 10 cd e5                                      strb r1, [sp, #0x11]
0054cc44  10 00 cd e5                                      strb r0, [sp, #0x10]
0054cc48  12 20 cd e5                                      strb r2, [sp, #0x12]
0054cc4c  13 30 cd e5                                      strb r3, [sp, #0x13]
0054cc50  10 20 9d e5                                      ldr r2, [sp, #0x10]
0054cc54  00 30 94 e5                                      ldr r3, [r4]
0054cc58  00 10 a0 e3                                      mov r1, #0
0054cc5c  34 20 8d e5                                      str r2, [sp, #0x34]
0054cc60  04 00 a0 e1                                      mov r0, r4
0054cc64  0f e0 a0 e1                                      mov lr, pc
0054cc68  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054cc6c  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054cc70  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054cc74  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054cc78  11 10 cd e5                                      strb r1, [sp, #0x11]
0054cc7c  12 20 cd e5                                      strb r2, [sp, #0x12]
0054cc80  10 00 cd e5                                      strb r0, [sp, #0x10]
0054cc84  13 30 cd e5                                      strb r3, [sp, #0x13]
0054cc88  10 30 9d e5                                      ldr r3, [sp, #0x10]
0054cc8c  cd 2c 0c e3                                      movw r2, #0xcccd
0054cc90  2c 10 8d e2                                      add r1, sp, #0x2c
0054cc94  cc 2e 43 e3                                      movt r2, #0x3ecc
0054cc98  34 00 8d e2                                      add r0, sp, #0x34
0054cc9c  2c 30 8d e5                                      str r3, [sp, #0x2c]
0054cca0  b9 d0 ff eb                                      bl #0x540f8c
0054cca4  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054cca8  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054ccac  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054ccb0  11 10 cd e5                                      strb r1, [sp, #0x11]
0054ccb4  12 20 cd e5                                      strb r2, [sp, #0x12]
0054ccb8  13 30 cd e5                                      strb r3, [sp, #0x13]
0054ccbc  10 00 cd e5                                      strb r0, [sp, #0x10]
0054ccc0  34 20 9d e5                                      ldr r2, [sp, #0x34]
0054ccc4  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054ccc8  34 03 94 e5                                      ldr r0, [r4, #0x334]
0054cccc  06 10 a0 e1                                      mov r1, r6
0054ccd0  02 30 a0 e1                                      mov r3, r2
0054ccd4  04 c0 8d e5                                      str ip, [sp, #4]
0054ccd8  08 50 8d e5                                      str r5, [sp, #8]
0054ccdc  30 c0 8d e5                                      str ip, [sp, #0x30]
0054cce0  00 c0 8d e5                                      str ip, [sp]
0054cce4  a5 4a 01 eb                                      bl #0x59f780
0054cce8  4c d0 8d e2                                      add sp, sp, #0x4c
0054ccec  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0054ccf0  00 30 94 e5                                      ldr r3, [r4]
0054ccf4  04 00 a0 e1                                      mov r0, r4
0054ccf8  02 10 a0 e3                                      mov r1, #2
0054ccfc  34 43 94 e5                                      ldr r4, [r4, #0x334]
0054cd00  0f e0 a0 e1                                      mov lr, pc
0054cd04  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054cd08  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0054cd0c  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054cd10  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0054cd14  11 10 cd e5                                      strb r1, [sp, #0x11]
0054cd18  12 20 cd e5                                      strb r2, [sp, #0x12]
0054cd1c  13 30 cd e5                                      strb r3, [sp, #0x13]
0054cd20  10 00 cd e5                                      strb r0, [sp, #0x10]
0054cd24  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0054cd28  04 00 a0 e1                                      mov r0, r4
0054cd2c  06 20 a0 e1                                      mov r2, r6
0054cd30  0c 10 a0 e1                                      mov r1, ip
0054cd34  05 30 a0 e1                                      mov r3, r5
0054cd38  38 c0 8d e5                                      str ip, [sp, #0x38]
0054cd3c  ce 4a 01 eb                                      bl #0x59f87c
0054cd40  e8 ff ff ea                                      b #0x54cce8

; SOURCE ASSEMBLY: glitch_video_C2DDriver-4c612ae259b8-001.asm
; FUNCTION 0x0059fa80, declared_size=20, range_size=20, mode=arm
; class-group: glitch::video::C2DDriver
; alias: _ZN6glitch5video9C2DDriver11draw2DImageEPNS0_12IVideoDriverERKN5boost13intrusive_ptrINS0_8ITextureEEERKNS_4core10position2dIiEERKNSA_4rectIiEEPSH_NS0_6SColorEb
; demangled: glitch::video::C2DDriver::draw2DImage(glitch::video::IVideoDriver*, boost::intrusive_ptr<glitch::video::ITexture> const&, glitch::core::position2d<int> const&, glitch::core::rect<int> const&, glitch::core::rect<int> const*, glitch::video::SColor, bool)
; decoder-mode: arm
0059fa80  d4 00 90 e5                                      ldr r0, [r0, #0xd4]
0059fa84  08 c0 dd e5                                      ldrb ip, [sp, #8]
0059fa88  14 00 90 e5                                      ldr r0, [r0, #0x14]
0059fa8c  08 c0 8d e5                                      str ip, [sp, #8]
0059fa90  be ff ff ea                                      b #0x59f990

; SOURCE ASSEMBLY: glitch_video_C2DDriver-4c612ae259b8-001.asm
; FUNCTION 0x0059f990, declared_size=240, range_size=240, mode=arm
; class-group: glitch::video::C2DDriver
; alias: _ZN6glitch5video9C2DDriver11draw2DImageERKN5boost13intrusive_ptrINS0_8ITextureEEERKNS_4core10position2dIiEERKNS8_4rectIiEEPSF_NS0_6SColorEb
; demangled: glitch::video::C2DDriver::draw2DImage(boost::intrusive_ptr<glitch::video::ITexture> const&, glitch::core::position2d<int> const&, glitch::core::rect<int> const&, glitch::core::rect<int> const*, glitch::video::SColor, bool)
; decoder-mode: arm
0059f990  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0059f994  34 d0 4d e2                                      sub sp, sp, #0x34
0059f998  2c a0 8d e2                                      add sl, sp, #0x2c
0059f99c  03 40 a0 e1                                      mov r4, r3
0059f9a0  02 90 a0 e1                                      mov sb, r2
0059f9a4  60 30 dd e5                                      ldrb r3, [sp, #0x60]
0059f9a8  01 20 a0 e1                                      mov r2, r1
0059f9ac  00 b0 a0 e1                                      mov fp, r0
0059f9b0  00 10 a0 e1                                      mov r1, r0
0059f9b4  0a 00 a0 e1                                      mov r0, sl
0059f9b8  5c 80 dd e5                                      ldrb r8, [sp, #0x5c]
0059f9bc  5d 50 dd e5                                      ldrb r5, [sp, #0x5d]
0059f9c0  5e 60 dd e5                                      ldrb r6, [sp, #0x5e]
0059f9c4  5f 70 dd e5                                      ldrb r7, [sp, #0x5f]
0059f9c8  fb fe ff eb                                      bl #0x59f5bc
0059f9cc  0a 00 a0 e1                                      mov r0, sl
0059f9d0  84 c4 f5 eb                                      bl #0x310be8
0059f9d4  0c c0 94 e5                                      ldr ip, [r4, #0xc]
0059f9d8  09 40 94 e8                                      ldm r4, {r0, r3, lr}
0059f9dc  06 00 99 e8                                      ldm sb, {r1, r2}
0059f9e0  0e 00 60 e0                                      rsb r0, r0, lr
0059f9e4  0c 30 63 e0                                      rsb r3, r3, ip
0059f9e8  c0 cf 20 e0                                      eor ip, r0, r0, asr #31
0059f9ec  c0 cf 4c e0                                      sub ip, ip, r0, asr #31
0059f9f0  c3 0f 23 e0                                      eor r0, r3, r3, asr #31
0059f9f4  c3 0f 40 e0                                      sub r0, r0, r3, asr #31
0059f9f8  08 30 9b e5                                      ldr r3, [fp, #8]
0059f9fc  02 00 80 e0                                      add r0, r0, r2
0059fa00  01 c0 8c e0                                      add ip, ip, r1
0059fa04  28 00 8d e5                                      str r0, [sp, #0x28]
0059fa08  1c 10 8d e5                                      str r1, [sp, #0x1c]
0059fa0c  20 20 8d e5                                      str r2, [sp, #0x20]
0059fa10  24 c0 8d e5                                      str ip, [sp, #0x24]
0059fa14  1b 70 cd e5                                      strb r7, [sp, #0x1b]
0059fa18  1a 60 cd e5                                      strb r6, [sp, #0x1a]
0059fa1c  19 50 cd e5                                      strb r5, [sp, #0x19]
0059fa20  18 80 cd e5                                      strb r8, [sp, #0x18]
0059fa24  0f 70 cd e5                                      strb r7, [sp, #0xf]
0059fa28  0e 60 cd e5                                      strb r6, [sp, #0xe]
0059fa2c  0d 50 cd e5                                      strb r5, [sp, #0xd]
0059fa30  0c 80 cd e5                                      strb r8, [sp, #0xc]
0059fa34  13 70 cd e5                                      strb r7, [sp, #0x13]
0059fa38  12 60 cd e5                                      strb r6, [sp, #0x12]
0059fa3c  11 50 cd e5                                      strb r5, [sp, #0x11]
0059fa40  10 80 cd e5                                      strb r8, [sp, #0x10]
0059fa44  17 70 cd e5                                      strb r7, [sp, #0x17]
0059fa48  16 60 cd e5                                      strb r6, [sp, #0x16]
0059fa4c  15 50 cd e5                                      strb r5, [sp, #0x15]
0059fa50  14 80 cd e5                                      strb r8, [sp, #0x14]
0059fa54  00 c0 93 e5                                      ldr ip, [r3]
0059fa58  03 00 a0 e1                                      mov r0, r3
0059fa5c  58 30 9d e5                                      ldr r3, [sp, #0x58]
0059fa60  04 20 a0 e1                                      mov r2, r4
0059fa64  1c 10 8d e2                                      add r1, sp, #0x1c
0059fa68  00 30 8d e5                                      str r3, [sp]
0059fa6c  0c 30 8d e2                                      add r3, sp, #0xc
0059fa70  0f e0 a0 e1                                      mov lr, pc
0059fa74  34 f0 9c e5                                      ldr pc, [ip, #0x34]
0059fa78  34 d0 8d e2                                      add sp, sp, #0x34
0059fa7c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; SOURCE ASSEMBLY: glitch_video_C2DDriver-4c612ae259b8-001.asm
; FUNCTION 0x0059f79c, declared_size=224, range_size=224, mode=arm
; class-group: glitch::video::C2DDriver
; alias: _ZN6glitch5video9C2DDriver15draw2DRectangleENS0_6SColorERKNS_4core4rectIiEEPS6_
; demangled: glitch::video::C2DDriver::draw2DRectangle(glitch::video::SColor, glitch::core::rect<int> const&, glitch::core::rect<int> const*)
; decoder-mode: arm
0059f79c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0059f7a0  3c d0 4d e2                                      sub sp, sp, #0x3c
0059f7a4  00 c0 a0 e3                                      mov ip, #0
0059f7a8  00 a0 a0 e1                                      mov sl, r0
0059f7ac  30 80 8d e2                                      add r8, sp, #0x30
0059f7b0  0c 10 8d e5                                      str r1, [sp, #0xc]
0059f7b4  08 00 a0 e1                                      mov r0, r8
0059f7b8  02 90 a0 e1                                      mov sb, r2
0059f7bc  03 b0 a0 e1                                      mov fp, r3
0059f7c0  34 20 8d e2                                      add r2, sp, #0x34
0059f7c4  0c 30 a0 e1                                      mov r3, ip
0059f7c8  21 7c a0 e1                                      lsr r7, r1, #0x18
0059f7cc  71 40 ef e6                                      uxtb r4, r1
0059f7d0  51 54 e7 e7                                      ubfx r5, r1, #8, #8
0059f7d4  51 68 e7 e7                                      ubfx r6, r1, #0x10, #8
0059f7d8  0a 10 a0 e1                                      mov r1, sl
0059f7dc  34 c0 8d e5                                      str ip, [sp, #0x34]
0059f7e0  75 ff ff eb                                      bl #0x59f5bc
0059f7e4  08 00 a0 e1                                      mov r0, r8
0059f7e8  fe c4 f5 eb                                      bl #0x310be8
0059f7ec  34 00 9d e5                                      ldr r0, [sp, #0x34]
0059f7f0  00 00 50 e3                                      cmp r0, #0
0059f7f4  00 00 00 0a                                      beq #0x59f7fc
0059f7f8  61 f7 f5 eb                                      bl #0x31d584
0059f7fc  08 30 9a e5                                      ldr r3, [sl, #8]
0059f800  00 20 a0 e3                                      mov r2, #0
0059f804  1c 20 8d e5                                      str r2, [sp, #0x1c]
0059f808  10 20 8d e5                                      str r2, [sp, #0x10]
0059f80c  14 20 8d e5                                      str r2, [sp, #0x14]
0059f810  18 20 8d e5                                      str r2, [sp, #0x18]
0059f814  2f 70 cd e5                                      strb r7, [sp, #0x2f]
0059f818  2e 60 cd e5                                      strb r6, [sp, #0x2e]
0059f81c  2d 50 cd e5                                      strb r5, [sp, #0x2d]
0059f820  2c 40 cd e5                                      strb r4, [sp, #0x2c]
0059f824  23 70 cd e5                                      strb r7, [sp, #0x23]
0059f828  22 60 cd e5                                      strb r6, [sp, #0x22]
0059f82c  21 50 cd e5                                      strb r5, [sp, #0x21]
0059f830  20 40 cd e5                                      strb r4, [sp, #0x20]
0059f834  27 70 cd e5                                      strb r7, [sp, #0x27]
0059f838  26 60 cd e5                                      strb r6, [sp, #0x26]
0059f83c  25 50 cd e5                                      strb r5, [sp, #0x25]
0059f840  24 40 cd e5                                      strb r4, [sp, #0x24]
0059f844  2b 70 cd e5                                      strb r7, [sp, #0x2b]
0059f848  2a 60 cd e5                                      strb r6, [sp, #0x2a]
0059f84c  29 50 cd e5                                      strb r5, [sp, #0x29]
0059f850  28 40 cd e5                                      strb r4, [sp, #0x28]
0059f854  00 c0 93 e5                                      ldr ip, [r3]
0059f858  03 00 a0 e1                                      mov r0, r3
0059f85c  09 10 a0 e1                                      mov r1, sb
0059f860  00 b0 8d e5                                      str fp, [sp]
0059f864  10 20 8d e2                                      add r2, sp, #0x10
0059f868  20 30 8d e2                                      add r3, sp, #0x20
0059f86c  0f e0 a0 e1                                      mov lr, pc
0059f870  34 f0 9c e5                                      ldr pc, [ip, #0x34]
0059f874  3c d0 8d e2                                      add sp, sp, #0x3c
0059f878  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; SOURCE ASSEMBLY: glitch_video_CCommonGLDriver_glitch_video_CProgrammableGLDriver_glitch_video_CGLSLShaderHa-569492699322-001.asm
; FUNCTION 0x005b2244, declared_size=548, range_size=548, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE15draw2DRectangleERKNS_4core4rectIiEESC_PKNS0_6SColorEPSB_
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::draw2DRectangle(glitch::core::rect<int> const&, glitch::core::rect<int> const&, glitch::video::SColor const*, glitch::core::rect<int> const*)
; decoder-mode: arm
005b2244  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005b2248  ec 80 90 e5                                      ldr r8, [r0, #0xec]
005b224c  44 d0 4d e2                                      sub sp, sp, #0x44
005b2250  00 50 a0 e3                                      mov r5, #0
005b2254  40 70 8d e2                                      add r7, sp, #0x40
005b2258  04 50 27 e5                                      str r5, [r7, #-4]!
005b225c  00 a0 a0 e1                                      mov sl, r0
005b2260  01 40 a0 e1                                      mov r4, r1
005b2264  04 00 98 e5                                      ldr r0, [r8, #4]
005b2268  02 10 a0 e3                                      mov r1, #2
005b226c  02 60 a0 e1                                      mov r6, r2
005b2270  05 20 a0 e1                                      mov r2, r5
005b2274  04 30 8d e5                                      str r3, [sp, #4]
005b2278  22 73 00 eb                                      bl #0x5cef08
005b227c  05 20 a0 e1                                      mov r2, r5
005b2280  00 10 a0 e1                                      mov r1, r0
005b2284  07 30 a0 e1                                      mov r3, r7
005b2288  08 00 a0 e1                                      mov r0, r8
005b228c  0a 6e 00 eb                                      bl #0x5cdabc
005b2290  3c 80 9d e5                                      ldr r8, [sp, #0x3c]
005b2294  05 00 58 e1                                      cmp r8, r5
005b2298  43 00 00 0a                                      beq #0x5b23ac
005b229c  20 00 98 e5                                      ldr r0, [r8, #0x20]
005b22a0  af 71 f5 eb                                      bl #0x30e964
005b22a4  00 10 a0 e1                                      mov r1, r0
005b22a8  fe 05 a0 e3                                      mov r0, #0x3f800000
005b22ac  78 72 f5 eb                                      bl #0x30ec94
005b22b0  00 70 a0 e1                                      mov r7, r0
005b22b4  24 00 98 e5                                      ldr r0, [r8, #0x24]
005b22b8  a9 71 f5 eb                                      bl #0x30e964
005b22bc  00 10 a0 e1                                      mov r1, r0
005b22c0  fe 05 a0 e3                                      mov r0, #0x3f800000
005b22c4  72 72 f5 eb                                      bl #0x30ec94
005b22c8  00 80 a0 e1                                      mov r8, r0
005b22cc  04 00 96 e5                                      ldr r0, [r6, #4]
005b22d0  a3 71 f5 eb                                      bl #0x30e964
005b22d4  08 10 a0 e1                                      mov r1, r8
005b22d8  a3 72 f5 eb                                      bl #0x30ed6c
005b22dc  00 b0 a0 e1                                      mov fp, r0
005b22e0  08 00 96 e5                                      ldr r0, [r6, #8]
005b22e4  9e 71 f5 eb                                      bl #0x30e964
005b22e8  07 10 a0 e1                                      mov r1, r7
005b22ec  9e 72 f5 eb                                      bl #0x30ed6c
005b22f0  00 90 a0 e1                                      mov sb, r0
005b22f4  0c 00 96 e5                                      ldr r0, [r6, #0xc]
005b22f8  99 71 f5 eb                                      bl #0x30e964
005b22fc  08 10 a0 e1                                      mov r1, r8
005b2300  99 72 f5 eb                                      bl #0x30ed6c
005b2304  00 80 a0 e1                                      mov r8, r0
005b2308  00 00 96 e5                                      ldr r0, [r6]
005b230c  94 71 f5 eb                                      bl #0x30e964
005b2310  07 10 a0 e1                                      mov r1, r7
005b2314  94 72 f5 eb                                      bl #0x30ed6c
005b2318  68 e0 9d e5                                      ldr lr, [sp, #0x68]
005b231c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005b2320  00 c0 94 e5                                      ldr ip, [r4]
005b2324  06 00 94 e9                                      ldmib r4, {r1, r2}
005b2328  05 00 5e e1                                      cmp lr, r5
005b232c  2c 00 8d e5                                      str r0, [sp, #0x2c]
005b2330  30 b0 8d e5                                      str fp, [sp, #0x30]
005b2334  34 90 8d e5                                      str sb, [sp, #0x34]
005b2338  38 80 8d e5                                      str r8, [sp, #0x38]
005b233c  1c c0 8d e5                                      str ip, [sp, #0x1c]
005b2340  20 10 8d e5                                      str r1, [sp, #0x20]
005b2344  24 20 8d e5                                      str r2, [sp, #0x24]
005b2348  28 30 8d e5                                      str r3, [sp, #0x28]
005b234c  0e 00 00 0a                                      beq #0x5b238c
005b2350  1c 60 8d e2                                      add r6, sp, #0x1c
005b2354  2c 40 8d e2                                      add r4, sp, #0x2c
005b2358  68 20 9d e5                                      ldr r2, [sp, #0x68]
005b235c  05 30 a0 e1                                      mov r3, r5
005b2360  06 00 a0 e1                                      mov r0, r6
005b2364  04 10 a0 e1                                      mov r1, r4
005b2368  63 db ff eb                                      bl #0x5a90fc
005b236c  00 00 50 e3                                      cmp r0, #0
005b2370  07 00 00 1a                                      bne #0x5b2394
005b2374  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
005b2378  00 00 50 e3                                      cmp r0, #0
005b237c  00 00 00 0a                                      beq #0x5b2384
005b2380  7f ac f5 eb                                      bl #0x31d584
005b2384  44 d0 8d e2                                      add sp, sp, #0x44
005b2388  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005b238c  1c 60 8d e2                                      add r6, sp, #0x1c
005b2390  2c 40 8d e2                                      add r4, sp, #0x2c
005b2394  0a 00 a0 e1                                      mov r0, sl
005b2398  06 10 a0 e1                                      mov r1, r6
005b239c  04 20 a0 e1                                      mov r2, r4
005b23a0  04 30 9d e5                                      ldr r3, [sp, #4]
005b23a4  11 af 04 eb                                      bl #0x6ddff0
005b23a8  f1 ff ff ea                                      b #0x5b2374
005b23ac  68 e0 9d e5                                      ldr lr, [sp, #0x68]
005b23b0  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005b23b4  09 00 94 e8                                      ldm r4, {r0, r3}
005b23b8  08 10 94 e5                                      ldr r1, [r4, #8]
005b23bc  00 00 5e e3                                      cmp lr, #0
005b23c0  1c 00 8d e5                                      str r0, [sp, #0x1c]
005b23c4  20 30 8d e5                                      str r3, [sp, #0x20]
005b23c8  24 10 8d e5                                      str r1, [sp, #0x24]
005b23cc  28 20 8d e5                                      str r2, [sp, #0x28]
005b23d0  19 00 00 0a                                      beq #0x5b243c
005b23d4  68 00 9d e5                                      ldr r0, [sp, #0x68]
005b23d8  68 c0 9d e5                                      ldr ip, [sp, #0x68]
005b23dc  08 30 90 e5                                      ldr r3, [r0, #8]
005b23e0  03 00 51 e1                                      cmp r1, r3
005b23e4  68 10 9d e5                                      ldr r1, [sp, #0x68]
005b23e8  24 30 8d c5                                      strgt r3, [sp, #0x24]
005b23ec  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005b23f0  03 00 52 e1                                      cmp r2, r3
005b23f4  28 30 8d c5                                      strgt r3, [sp, #0x28]
005b23f8  68 30 9d e5                                      ldr r3, [sp, #0x68]
005b23fc  00 20 93 e5                                      ldr r2, [r3]
005b2400  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
005b2404  03 00 52 e1                                      cmp r2, r3
005b2408  1c 20 8d c5                                      strgt r2, [sp, #0x1c]
005b240c  04 10 9c e5                                      ldr r1, [ip, #4]
005b2410  02 30 a0 c1                                      movgt r3, r2
005b2414  20 20 9d e5                                      ldr r2, [sp, #0x20]
005b2418  02 00 51 e1                                      cmp r1, r2
005b241c  20 10 8d c5                                      strgt r1, [sp, #0x20]
005b2420  01 20 a0 c1                                      movgt r2, r1
005b2424  28 10 9d e5                                      ldr r1, [sp, #0x28]
005b2428  02 00 51 e1                                      cmp r1, r2
005b242c  24 20 9d e5                                      ldr r2, [sp, #0x24]
005b2430  20 10 8d b5                                      strlt r1, [sp, #0x20]
005b2434  02 00 53 e1                                      cmp r3, r2
005b2438  1c 20 8d c5                                      strgt r2, [sp, #0x1c]
005b243c  00 c0 a0 e3                                      mov ip, #0
005b2440  0a 00 a0 e1                                      mov r0, sl
005b2444  04 30 9d e5                                      ldr r3, [sp, #4]
005b2448  1c 10 8d e2                                      add r1, sp, #0x1c
005b244c  0c 20 8d e2                                      add r2, sp, #0xc
005b2450  18 c0 8d e5                                      str ip, [sp, #0x18]
005b2454  0c c0 8d e5                                      str ip, [sp, #0xc]
005b2458  10 c0 8d e5                                      str ip, [sp, #0x10]
005b245c  14 c0 8d e5                                      str ip, [sp, #0x14]
005b2460  e2 ae 04 eb                                      bl #0x6ddff0
005b2464  c2 ff ff ea                                      b #0x5b2374

; SOURCE ASSEMBLY: glitch_video_CCommonGLDriverBase-a4332fc55909-001.asm
; FUNCTION 0x006ddff0, declared_size=504, range_size=504, mode=arm
; class-group: glitch::video::CCommonGLDriverBase
; alias: _ZN6glitch5video19CCommonGLDriverBase9drawQuadsERKNS_4core4rectIiEERKNS3_IfEEPKNS0_6SColorE
; demangled: glitch::video::CCommonGLDriverBase::drawQuads(glitch::core::rect<int> const&, glitch::core::rect<float> const&, glitch::video::SColor const*)
; decoder-mode: arm
006ddff0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
006ddff4  00 40 a0 e1                                      mov r4, r0
006ddff8  2c d0 4d e2                                      sub sp, sp, #0x2c
006ddffc  0c 00 91 e5                                      ldr r0, [r1, #0xc]
006de000  01 50 a0 e1                                      mov r5, r1
006de004  02 60 a0 e1                                      mov r6, r2
006de008  03 70 a0 e1                                      mov r7, r3
006de00c  54 c2 f0 eb                                      bl #0x30e964
006de010  00 a0 a0 e1                                      mov sl, r0
006de014  08 00 95 e5                                      ldr r0, [r5, #8]
006de018  51 c2 f0 eb                                      bl #0x30e964
006de01c  0c 30 96 e5                                      ldr r3, [r6, #0xc]
006de020  08 20 96 e5                                      ldr r2, [r6, #8]
006de024  00 80 a0 e3                                      mov r8, #0
006de028  68 31 84 e5                                      str r3, [r4, #0x168]
006de02c  08 10 87 e2                                      add r1, r7, #8
006de030  70 01 84 e5                                      str r0, [r4, #0x170]
006de034  74 a1 84 e5                                      str sl, [r4, #0x174]
006de038  64 21 84 e5                                      str r2, [r4, #0x164]
006de03c  78 81 84 e5                                      str r8, [r4, #0x178]
006de040  04 20 a0 e3                                      mov r2, #4
006de044  5b 0f 84 e2                                      add r0, r4, #0x16c
006de048  06 c2 f0 eb                                      bl #0x30e868
006de04c  04 00 95 e5                                      ldr r0, [r5, #4]
006de050  43 c2 f0 eb                                      bl #0x30e964
006de054  00 a0 a0 e1                                      mov sl, r0
006de058  08 00 95 e5                                      ldr r0, [r5, #8]
006de05c  40 c2 f0 eb                                      bl #0x30e964
006de060  04 30 96 e5                                      ldr r3, [r6, #4]
006de064  08 20 96 e5                                      ldr r2, [r6, #8]
006de068  0c 10 87 e2                                      add r1, r7, #0xc
006de06c  80 31 84 e5                                      str r3, [r4, #0x180]
006de070  88 01 84 e5                                      str r0, [r4, #0x188]
006de074  8c a1 84 e5                                      str sl, [r4, #0x18c]
006de078  7c 21 84 e5                                      str r2, [r4, #0x17c]
006de07c  90 81 84 e5                                      str r8, [r4, #0x190]
006de080  04 20 a0 e3                                      mov r2, #4
006de084  61 0f 84 e2                                      add r0, r4, #0x184
006de088  f6 c1 f0 eb                                      bl #0x30e868
006de08c  04 00 95 e5                                      ldr r0, [r5, #4]
006de090  33 c2 f0 eb                                      bl #0x30e964
006de094  00 a0 a0 e1                                      mov sl, r0
006de098  00 00 95 e5                                      ldr r0, [r5]
006de09c  30 c2 f0 eb                                      bl #0x30e964
006de0a0  04 30 96 e5                                      ldr r3, [r6, #4]
006de0a4  00 20 96 e5                                      ldr r2, [r6]
006de0a8  07 10 a0 e1                                      mov r1, r7
006de0ac  b0 31 84 e5                                      str r3, [r4, #0x1b0]
006de0b0  b8 01 84 e5                                      str r0, [r4, #0x1b8]
006de0b4  bc a1 84 e5                                      str sl, [r4, #0x1bc]
006de0b8  ac 21 84 e5                                      str r2, [r4, #0x1ac]
006de0bc  c0 81 84 e5                                      str r8, [r4, #0x1c0]
006de0c0  04 20 a0 e3                                      mov r2, #4
006de0c4  6d 0f 84 e2                                      add r0, r4, #0x1b4
006de0c8  e6 c1 f0 eb                                      bl #0x30e868
006de0cc  0c 00 95 e5                                      ldr r0, [r5, #0xc]
006de0d0  23 c2 f0 eb                                      bl #0x30e964
006de0d4  00 a0 a0 e1                                      mov sl, r0
006de0d8  00 00 95 e5                                      ldr r0, [r5]
006de0dc  20 c2 f0 eb                                      bl #0x30e964
006de0e0  0c 30 96 e5                                      ldr r3, [r6, #0xc]
006de0e4  00 20 96 e5                                      ldr r2, [r6]
006de0e8  04 10 87 e2                                      add r1, r7, #4
006de0ec  a0 01 84 e5                                      str r0, [r4, #0x1a0]
006de0f0  94 21 84 e5                                      str r2, [r4, #0x194]
006de0f4  98 31 84 e5                                      str r3, [r4, #0x198]
006de0f8  04 20 a0 e3                                      mov r2, #4
006de0fc  a4 a1 84 e5                                      str sl, [r4, #0x1a4]
006de100  a8 81 84 e5                                      str r8, [r4, #0x1a8]
006de104  67 0f 84 e2                                      add r0, r4, #0x19c
006de108  d6 c1 f0 eb                                      bl #0x30e868
006de10c  59 2f 84 e2                                      add r2, r4, #0x164
006de110  00 30 a0 e3                                      mov r3, #0
006de114  b0 00 94 e5                                      ldr r0, [r4, #0xb0]
006de118  60 10 a0 e3                                      mov r1, #0x60
006de11c  e4 0e fb eb                                      bl #0x5a1cb4
006de120  b0 30 94 e5                                      ldr r3, [r4, #0xb0]
006de124  11 20 d3 e5                                      ldrb r2, [r3, #0x11]
006de128  04 00 52 e3                                      cmp r2, #4
006de12c  04 00 00 0a                                      beq #0x6de144
006de130  08 20 93 e5                                      ldr r2, [r3, #8]
006de134  00 00 52 e3                                      cmp r2, #0
006de138  12 20 d3 15                                      ldrbne r2, [r3, #0x12]
006de13c  02 20 82 13                                      orrne r2, r2, #2
006de140  12 20 c3 15                                      strbne r2, [r3, #0x12]
006de144  ac 30 94 e5                                      ldr r3, [r4, #0xac]
006de148  04 20 a0 e3                                      mov r2, #4
006de14c  24 50 8d e2                                      add r5, sp, #0x24
006de150  08 20 83 e5                                      str r2, [r3, #8]
006de154  ac 30 94 e5                                      ldr r3, [r4, #0xac]
006de158  04 00 a0 e1                                      mov r0, r4
006de15c  00 00 53 e3                                      cmp r3, #0
006de160  24 30 8d e5                                      str r3, [sp, #0x24]
006de164  00 20 93 15                                      ldrne r2, [r3]
006de168  01 20 82 12                                      addne r2, r2, #1
006de16c  00 20 83 15                                      strne r2, [r3]
006de170  00 10 94 e5                                      ldr r1, [r4]
006de174  04 20 a0 e3                                      mov r2, #4
006de178  00 30 a0 e3                                      mov r3, #0
006de17c  be 21 cd e1                                      strh r2, [sp, #0x1e]
006de180  10 20 8d e5                                      str r2, [sp, #0x10]
006de184  18 20 8d e5                                      str r2, [sp, #0x18]
006de188  ff 20 a0 e3                                      mov r2, #0xff
006de18c  bc 21 cd e1                                      strh r2, [sp, #0x1c]
006de190  08 30 8d e5                                      str r3, [sp, #8]
006de194  0c 30 8d e5                                      str r3, [sp, #0xc]
006de198  14 30 8d e5                                      str r3, [sp, #0x14]
006de19c  20 20 8d e2                                      add r2, sp, #0x20
006de1a0  58 c0 91 e5                                      ldr ip, [r1, #0x58]
006de1a4  00 20 8d e5                                      str r2, [sp]
006de1a8  20 30 8d e5                                      str r3, [sp, #0x20]
006de1ac  05 10 a0 e1                                      mov r1, r5
006de1b0  08 20 8d e2                                      add r2, sp, #8
006de1b4  3c ff 2f e1                                      blx ip
006de1b8  20 00 9d e5                                      ldr r0, [sp, #0x20]
006de1bc  00 00 50 e3                                      cmp r0, #0
006de1c0  00 00 00 0a                                      beq #0x6de1c8
006de1c4  ee fc f0 eb                                      bl #0x31d584
006de1c8  08 00 9d e5                                      ldr r0, [sp, #8]
006de1cc  00 00 50 e3                                      cmp r0, #0
006de1d0  00 00 00 0a                                      beq #0x6de1d8
006de1d4  ea fc f0 eb                                      bl #0x31d584
006de1d8  05 00 a0 e1                                      mov r0, r5
006de1dc  6b 02 f2 eb                                      bl #0x35eb90
006de1e0  2c d0 8d e2                                      add sp, sp, #0x2c
006de1e4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; SOURCE ASSEMBLY: glitch_video_IVideoDriver-128257112762-001.asm
; FUNCTION 0x005adfa8, declared_size=56, range_size=56, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver4drawERKN5boost13intrusive_ptrIKNS0_14CVertexStreamsEEERKNS0_16CPrimitiveStreamEPPNS0_14CDriverBindingERKNS3_IKNS_5scene11CMeshBufferEEE
; demangled: glitch::video::IVideoDriver::draw(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&, glitch::video::CPrimitiveStream const&, glitch::video::CDriverBinding**, boost::intrusive_ptr<glitch::scene::CMeshBuffer const> const&)
; decoder-mode: arm
005adfa8  10 40 2d e9                                      push {r4, lr}
005adfac  08 c0 92 e5                                      ldr ip, [r2, #8]
005adfb0  00 40 a0 e1                                      mov r4, r0
005adfb4  00 00 5c e3                                      cmp ip, #0
005adfb8  05 00 00 0a                                      beq #0x5adfd4
005adfbc  88 c0 90 e5                                      ldr ip, [r0, #0x88]
005adfc0  01 0c 1c e3                                      tst ip, #0x100
005adfc4  03 00 00 1a                                      bne #0x5adfd8
005adfc8  00 c0 90 e5                                      ldr ip, [r0]
005adfcc  0f e0 a0 e1                                      mov lr, pc
005adfd0  00 f2 9c e5                                      ldr pc, [ip, #0x200]
005adfd4  10 80 bd e8                                      pop {r4, pc}
005adfd8  10 40 bd e8                                      pop {r4, lr}
005adfdc  ef fe ff ea                                      b #0x5adba0

; SOURCE ASSEMBLY: glitch_video_CCommonGLDriver_glitch_video_CProgrammableGLDriver_glitch_video_CGLSLShaderHa-569492699322-001.asm
; FUNCTION 0x005b8bc8, declared_size=448, range_size=448, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8drawImplERKN5boost13intrusive_ptrIKNS0_14CVertexStreamsEEERKNS0_16CPrimitiveStreamEPPNS0_14CDriverBindingE
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::drawImpl(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&, glitch::video::CPrimitiveStream const&, glitch::video::CDriverBinding**)
; decoder-mode: arm
005b8bc8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005b8bcc  ac c1 9f e5                                      ldr ip, [pc, #0x1ac]
005b8bd0  38 31 90 e5                                      ldr r3, [r0, #0x138]
005b8bd4  00 40 a0 e1                                      mov r4, r0
005b8bd8  a0 00 90 e5                                      ldr r0, [r0, #0xa0]
005b8bdc  02 30 83 e3                                      orr r3, r3, #2
005b8be0  1c d0 4d e2                                      sub sp, sp, #0x1c
005b8be4  0c c0 8f e0                                      add ip, pc, ip
005b8be8  01 00 50 e3                                      cmp r0, #1
005b8bec  38 31 84 e5                                      str r3, [r4, #0x138]
005b8bf0  10 c0 8d e5                                      str ip, [sp, #0x10]
005b8bf4  08 10 8d e5                                      str r1, [sp, #8]
005b8bf8  80 30 94 05                                      ldreq r3, [r4, #0x80]
005b8bfc  7c 30 94 15                                      ldrne r3, [r4, #0x7c]
005b8c00  02 90 a0 e1                                      mov sb, r2
005b8c04  01 30 83 02                                      addeq r3, r3, #1
005b8c08  02 20 a0 13                                      movne r2, #2
005b8c0c  01 30 83 12                                      addne r3, r3, #1
005b8c10  09 00 a0 e1                                      mov r0, sb
005b8c14  80 30 84 05                                      streq r3, [r4, #0x80]
005b8c18  a0 20 84 15                                      strne r2, [r4, #0xa0]
005b8c1c  7c 30 84 15                                      strne r3, [r4, #0x7c]
005b8c20  78 50 94 e5                                      ldr r5, [r4, #0x78]
005b8c24  b5 9d ff eb                                      bl #0x5a0300
005b8c28  05 00 80 e0                                      add r0, r0, r5
005b8c2c  78 00 84 e5                                      str r0, [r4, #0x78]
005b8c30  00 10 99 e5                                      ldr r1, [sb]
005b8c34  04 00 a0 e1                                      mov r0, r4
005b8c38  35 f6 ff eb                                      bl #0x5b6514
005b8c3c  0c 00 8d e5                                      str r0, [sp, #0xc]
005b8c40  ec 20 94 e5                                      ldr r2, [r4, #0xec]
005b8c44  f8 30 d4 e5                                      ldrb r3, [r4, #0xf8]
005b8c48  0c 10 a0 e3                                      mov r1, #0xc
005b8c4c  04 20 92 e5                                      ldr r2, [r2, #4]
005b8c50  18 20 92 e5                                      ldr r2, [r2, #0x18]
005b8c54  91 23 23 e0                                      mla r3, r1, r3, r2
005b8c58  04 b0 d3 e5                                      ldrb fp, [r3, #4]
005b8c5c  00 00 5b e3                                      cmp fp, #0
005b8c60  01 80 a0 03                                      moveq r8, #1
005b8c64  1e 00 00 0a                                      beq #0x5b8ce4
005b8c68  14 11 9f e5                                      ldr r1, [pc, #0x114]
005b8c6c  00 50 a0 e3                                      mov r5, #0
005b8c70  01 80 a0 e3                                      mov r8, #1
005b8c74  14 10 8d e5                                      str r1, [sp, #0x14]
005b8c78  05 a0 a0 e1                                      mov sl, r5
005b8c7c  e8 70 94 e5                                      ldr r7, [r4, #0xe8]
005b8c80  08 20 9d e5                                      ldr r2, [sp, #8]
005b8c84  00 00 57 e3                                      cmp r7, #0
005b8c88  00 60 92 e5                                      ldr r6, [r2]
005b8c8c  1a 00 00 0a                                      beq #0x5b8cfc
005b8c90  05 71 97 e7                                      ldr r7, [r7, r5, lsl #2]
005b8c94  04 70 87 e2                                      add r7, r7, #4
005b8c98  0a 10 a0 e1                                      mov r1, sl
005b8c9c  06 20 a0 e1                                      mov r2, r6
005b8ca0  07 30 a0 e1                                      mov r3, r7
005b8ca4  04 00 a0 e1                                      mov r0, r4
005b8ca8  b7 ff ff eb                                      bl #0x5b8b8c
005b8cac  04 00 a0 e1                                      mov r0, r4
005b8cb0  06 20 a0 e1                                      mov r2, r6
005b8cb4  07 30 a0 e1                                      mov r3, r7
005b8cb8  f4 10 94 e5                                      ldr r1, [r4, #0xf4]
005b8cbc  30 f6 ff eb                                      bl #0x5b6584
005b8cc0  09 00 a0 e1                                      mov r0, sb
005b8cc4  e4 11 94 e5                                      ldr r1, [r4, #0x1e4]
005b8cc8  0c 20 9d e5                                      ldr r2, [sp, #0xc]
005b8ccc  3d df ff eb                                      bl #0x5b09c8
005b8cd0  01 50 85 e2                                      add r5, r5, #1
005b8cd4  75 a0 ef e6                                      uxtb sl, r5
005b8cd8  0a 00 5b e1                                      cmp fp, sl
005b8cdc  08 80 00 e0                                      and r8, r0, r8
005b8ce0  e5 ff ff 8a                                      bhi #0x5b8c7c
005b8ce4  38 31 94 e5                                      ldr r3, [r4, #0x138]
005b8ce8  08 00 a0 e1                                      mov r0, r8
005b8cec  02 30 c3 e3                                      bic r3, r3, #2
005b8cf0  38 31 84 e5                                      str r3, [r4, #0x138]
005b8cf4  1c d0 8d e2                                      add sp, sp, #0x1c
005b8cf8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005b8cfc  10 10 9d e5                                      ldr r1, [sp, #0x10]
005b8d00  14 c0 9d e5                                      ldr ip, [sp, #0x14]
005b8d04  1e 20 a0 e3                                      mov r2, #0x1e
005b8d08  0c 30 91 e7                                      ldr r3, [r1, ip]
005b8d0c  ff 10 a0 e3                                      mov r1, #0xff
005b8d10  03 00 a0 e1                                      mov r0, r3
005b8d14  04 30 8d e5                                      str r3, [sp, #4]
005b8d18  d0 55 f5 eb                                      bl #0x30e460
005b8d1c  10 20 96 e5                                      ldr r2, [r6, #0x10]
005b8d20  14 10 86 e2                                      add r1, r6, #0x14
005b8d24  04 30 9d e5                                      ldr r3, [sp, #4]
005b8d28  01 00 52 e1                                      cmp r2, r1
005b8d2c  0f 00 00 0a                                      beq #0x5b8d70
005b8d30  24 10 86 e2                                      add r1, r6, #0x24
005b8d34  02 00 61 e0                                      rsb r0, r1, r2
005b8d38  0f 00 c0 e3                                      bic r0, r0, #0xf
005b8d3c  07 20 a0 e1                                      mov r2, r7
005b8d40  10 00 80 e2                                      add r0, r0, #0x10
005b8d44  03 70 a0 e1                                      mov r7, r3
005b8d48  bc 31 d6 e1                                      ldrh r3, [r6, #0x1c]
005b8d4c  42 12 a0 e1                                      asr r1, r2, #4
005b8d50  10 20 82 e2                                      add r2, r2, #0x10
005b8d54  00 00 52 e1                                      cmp r2, r0
005b8d58  07 10 c3 e7                                      strb r1, [r3, r7]
005b8d5c  10 60 86 e2                                      add r6, r6, #0x10
005b8d60  f8 ff ff 1a                                      bne #0x5b8d48
005b8d64  08 30 9d e5                                      ldr r3, [sp, #8]
005b8d68  00 60 93 e5                                      ldr r6, [r3]
005b8d6c  c9 ff ff ea                                      b #0x5b8c98
005b8d70  08 20 9d e5                                      ldr r2, [sp, #8]
005b8d74  03 70 a0 e1                                      mov r7, r3
005b8d78  00 60 92 e5                                      ldr r6, [r2]
005b8d7c  c5 ff ff ea                                      b #0x5b8c98
; mapping-symbol data/literal pool
005b8d80  ac be 3d 00 b8 39 00 00                          .byte 0xac, 0xbe, 0x3d, 0x00, 0xb8, 0x39, 0x00, 0x00

; SOURCE ASSEMBLY: bool_glitch_video_detail-e8dbf8a2ae8e-001.asm
; FUNCTION 0x005b09c8, declared_size=212, range_size=212, mode=arm
; class-group: bool glitch::video::detail
; alias: _ZN6glitch5video6detail14drawPrimitivesINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEEEEbRKNS0_16CPrimitiveStreamENS0_14E_POLYGON_MODEEPKh
; demangled: bool glitch::video::detail::drawPrimitives<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler> >(glitch::video::CPrimitiveStream const&, glitch::video::E_POLYGON_MODE, unsigned char const*)
; decoder-mode: arm
005b09c8  70 40 2d e9                                      push {r4, r5, r6, lr}
005b09cc  00 40 90 e5                                      ldr r4, [r0]
005b09d0  00 c0 a0 e1                                      mov ip, r0
005b09d4  01 50 a0 e1                                      mov r5, r1
005b09d8  00 00 54 e3                                      cmp r4, #0
005b09dc  14 00 00 0a                                      beq #0x5b0a34
005b09e0  00 00 51 e3                                      cmp r1, #0
005b09e4  04 30 90 e5                                      ldr r3, [r0, #4]
005b09e8  21 00 00 1a                                      bne #0x5b0a74
005b09ec  b6 11 d0 e1                                      ldrh r1, [r0, #0x16]
005b09f0  08 00 51 e3                                      cmp r1, #8
005b09f4  0b 00 00 0a                                      beq #0x5b0a28
005b09f8  94 00 9f e5                                      ldr r0, [pc, #0x94]
005b09fc  b4 e1 dc e1                                      ldrh lr, [ip, #0x14]
005b0a00  03 30 82 e0                                      add r3, r2, r3
005b0a04  00 00 8f e0                                      add r0, pc, r0
005b0a08  e0 20 80 e2                                      add r2, r0, #0xe0
005b0a0c  ec 00 80 e2                                      add r0, r0, #0xec
005b0a10  01 01 90 e7                                      ldr r0, [r0, r1, lsl #2]
005b0a14  0e 21 92 e7                                      ldr r2, [r2, lr, lsl #2]
005b0a18  08 10 9c e5                                      ldr r1, [ip, #8]
005b0a1c  ec 76 f5 eb                                      bl #0x30e5d4
005b0a20  01 00 a0 e3                                      mov r0, #1
005b0a24  70 80 bd e8                                      pop {r4, r5, r6, pc}
005b0a28  08 10 94 e5                                      ldr r1, [r4, #8]
005b0a2c  70 40 bd e8                                      pop {r4, r5, r6, lr}
005b0a30  4d ff ff ea                                      b #0x5b076c
005b0a34  00 00 51 e3                                      cmp r1, #0
005b0a38  10 00 00 1a                                      bne #0x5b0a80
005b0a3c  b6 31 dc e1                                      ldrh r3, [ip, #0x16]
005b0a40  08 00 53 e3                                      cmp r3, #8
005b0a44  0f 00 00 0a                                      beq #0x5b0a88
005b0a48  07 00 53 e3                                      cmp r3, #7
005b0a4c  0d 00 00 0a                                      beq #0x5b0a88
005b0a50  40 00 9f e5                                      ldr r0, [pc, #0x40]
005b0a54  08 20 9c e5                                      ldr r2, [ip, #8]
005b0a58  0c 10 9c e5                                      ldr r1, [ip, #0xc]
005b0a5c  00 00 8f e0                                      add r0, pc, r0
005b0a60  ec 00 80 e2                                      add r0, r0, #0xec
005b0a64  03 01 90 e7                                      ldr r0, [r0, r3, lsl #2]
005b0a68  cf 74 f5 eb                                      bl #0x30ddac
005b0a6c  01 00 a0 e3                                      mov r0, #1
005b0a70  70 80 bd e8                                      pop {r4, r5, r6, pc}
005b0a74  08 20 94 e5                                      ldr r2, [r4, #8]
005b0a78  70 40 bd e8                                      pop {r4, r5, r6, lr}
005b0a7c  ed fe ff ea                                      b #0x5b0638
005b0a80  70 40 bd e8                                      pop {r4, r5, r6, lr}
005b0a84  59 ff ff ea                                      b #0x5b07f0
005b0a88  0c 00 a0 e1                                      mov r0, ip
005b0a8c  70 40 bd e8                                      pop {r4, r5, r6, lr}
005b0a90  94 ff ff ea                                      b #0x5b08e8
; mapping-symbol data/literal pool
005b0a94  30 f6 32 00 d8 f5 32 00                          .byte 0x30, 0xf6, 0x32, 0x00, 0xd8, 0xf5, 0x32, 0x00
