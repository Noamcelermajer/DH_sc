; Exact ARM listings recovered from the supplied APK ELF.
; The address, size and bytes in each function block are original ELF evidence.
; No instructions were reconstructed or rewritten here.


; Evidence owner: engine | Registers default loader list; PNG is fifth.
; FUNCTION 0x005eaed8, declared_size=1116, range_size=1116, mode=arm
; class-group: glitch::video::CTextureManager
; alias: _ZN6glitch5video15CTextureManagerC2EPNS0_12IVideoDriverE
; demangled: glitch::video::CTextureManager::CTextureManager(glitch::video::IVideoDriver*)
; decoder-mode: arm
005eaed8  30 40 2d e9                                      push {r4, r5, lr}
005eaedc  2c d0 4d e2                                      sub sp, sp, #0x2c
005eaee0  00 40 a0 e1                                      mov r4, r0
005eaee4  01 50 a0 e1                                      mov r5, r1
005eaee8  47 f5 ff eb                                      bl #0x5e840c
005eaeec  28 50 84 e5                                      str r5, [r4, #0x28]
005eaef0  d4 30 95 e5                                      ldr r3, [r5, #0xd4]
005eaef4  30 50 84 e2                                      add r5, r4, #0x30
005eaef8  34 30 93 e5                                      ldr r3, [r3, #0x34]
005eaefc  00 00 53 e3                                      cmp r3, #0
005eaf00  2c 30 84 e5                                      str r3, [r4, #0x2c]
005eaf04  04 20 93 15                                      ldrne r2, [r3, #4]
005eaf08  01 20 82 12                                      addne r2, r2, #1
005eaf0c  04 20 83 15                                      strne r2, [r3, #4]
005eaf10  00 30 a0 e3                                      mov r3, #0
005eaf14  43 20 a0 e3                                      mov r2, #0x43
005eaf18  64 30 84 e5                                      str r3, [r4, #0x64]
005eaf1c  30 30 84 e5                                      str r3, [r4, #0x30]
005eaf20  34 30 84 e5                                      str r3, [r4, #0x34]
005eaf24  38 30 84 e5                                      str r3, [r4, #0x38]
005eaf28  3c 30 84 e5                                      str r3, [r4, #0x3c]
005eaf2c  40 30 84 e5                                      str r3, [r4, #0x40]
005eaf30  44 30 84 e5                                      str r3, [r4, #0x44]
005eaf34  68 30 84 e5                                      str r3, [r4, #0x68]
005eaf38  6c 30 84 e5                                      str r3, [r4, #0x6c]
005eaf3c  70 30 84 e5                                      str r3, [r4, #0x70]
005eaf40  48 30 84 e5                                      str r3, [r4, #0x48]
005eaf44  4c 30 84 e5                                      str r3, [r4, #0x4c]
005eaf48  50 30 84 e5                                      str r3, [r4, #0x50]
005eaf4c  54 30 84 e5                                      str r3, [r4, #0x54]
005eaf50  58 30 84 e5                                      str r3, [r4, #0x58]
005eaf54  5c 30 84 e5                                      str r3, [r4, #0x5c]
005eaf58  60 30 84 e5                                      str r3, [r4, #0x60]
005eaf5c  74 20 84 e5                                      str r2, [r4, #0x74]
005eaf60  46 61 00 eb                                      bl #0x603480
005eaf64  00 00 50 e3                                      cmp r0, #0
005eaf68  24 00 8d e5                                      str r0, [sp, #0x24]
005eaf6c  04 30 90 15                                      ldrne r3, [r0, #4]
005eaf70  01 30 83 12                                      addne r3, r3, #1
005eaf74  04 30 80 15                                      strne r3, [r0, #4]
005eaf78  34 10 94 e5                                      ldr r1, [r4, #0x34]
005eaf7c  38 30 94 e5                                      ldr r3, [r4, #0x38]
005eaf80  03 00 51 e1                                      cmp r1, r3
005eaf84  e6 00 00 0a                                      beq #0x5eb324
005eaf88  24 30 9d e5                                      ldr r3, [sp, #0x24]
005eaf8c  00 00 53 e3                                      cmp r3, #0
005eaf90  00 30 81 e5                                      str r3, [r1]
005eaf94  04 20 93 15                                      ldrne r2, [r3, #4]
005eaf98  01 20 82 12                                      addne r2, r2, #1
005eaf9c  04 20 83 15                                      strne r2, [r3, #4]
005eafa0  34 30 94 e5                                      ldr r3, [r4, #0x34]
005eafa4  04 30 83 e2                                      add r3, r3, #4
005eafa8  34 30 84 e5                                      str r3, [r4, #0x34]
005eafac  24 00 9d e5                                      ldr r0, [sp, #0x24]
005eafb0  00 00 50 e3                                      cmp r0, #0
005eafb4  00 00 00 0a                                      beq #0x5eafbc
005eafb8  71 c9 f4 eb                                      bl #0x31d584
005eafbc  ff 66 00 eb                                      bl #0x604bc0
005eafc0  00 00 50 e3                                      cmp r0, #0
005eafc4  20 00 8d e5                                      str r0, [sp, #0x20]
005eafc8  04 30 90 15                                      ldrne r3, [r0, #4]
005eafcc  01 30 83 12                                      addne r3, r3, #1
005eafd0  04 30 80 15                                      strne r3, [r0, #4]
005eafd4  34 10 94 e5                                      ldr r1, [r4, #0x34]
005eafd8  38 30 94 e5                                      ldr r3, [r4, #0x38]
005eafdc  03 00 51 e1                                      cmp r1, r3
005eafe0  bb 00 00 0a                                      beq #0x5eb2d4
005eafe4  20 30 9d e5                                      ldr r3, [sp, #0x20]
005eafe8  00 00 53 e3                                      cmp r3, #0
005eafec  00 30 81 e5                                      str r3, [r1]
005eaff0  04 20 93 15                                      ldrne r2, [r3, #4]
005eaff4  01 20 82 12                                      addne r2, r2, #1
005eaff8  04 20 83 15                                      strne r2, [r3, #4]
005eaffc  34 30 94 e5                                      ldr r3, [r4, #0x34]
005eb000  04 30 83 e2                                      add r3, r3, #4
005eb004  34 30 84 e5                                      str r3, [r4, #0x34]
005eb008  20 00 9d e5                                      ldr r0, [sp, #0x20]
005eb00c  00 00 50 e3                                      cmp r0, #0
005eb010  00 00 00 0a                                      beq #0x5eb018
005eb014  5a c9 f4 eb                                      bl #0x31d584
005eb018  c3 6c 00 eb                                      bl #0x60632c
005eb01c  00 00 50 e3                                      cmp r0, #0
005eb020  1c 00 8d e5                                      str r0, [sp, #0x1c]
005eb024  04 30 90 15                                      ldrne r3, [r0, #4]
005eb028  01 30 83 12                                      addne r3, r3, #1
005eb02c  04 30 80 15                                      strne r3, [r0, #4]
005eb030  34 10 94 e5                                      ldr r1, [r4, #0x34]
005eb034  38 30 94 e5                                      ldr r3, [r4, #0x38]
005eb038  03 00 51 e1                                      cmp r1, r3
005eb03c  a0 00 00 0a                                      beq #0x5eb2c4
005eb040  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
005eb044  00 00 53 e3                                      cmp r3, #0
005eb048  00 30 81 e5                                      str r3, [r1]
005eb04c  04 20 93 15                                      ldrne r2, [r3, #4]
005eb050  01 20 82 12                                      addne r2, r2, #1
005eb054  04 20 83 15                                      strne r2, [r3, #4]
005eb058  34 30 94 e5                                      ldr r3, [r4, #0x34]
005eb05c  04 30 83 e2                                      add r3, r3, #4
005eb060  34 30 84 e5                                      str r3, [r4, #0x34]
005eb064  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
005eb068  00 00 50 e3                                      cmp r0, #0
005eb06c  00 00 00 0a                                      beq #0x5eb074
005eb070  43 c9 f4 eb                                      bl #0x31d584
005eb074  52 5f 00 eb                                      bl #0x602dc4
005eb078  00 00 50 e3                                      cmp r0, #0
005eb07c  18 00 8d e5                                      str r0, [sp, #0x18]
005eb080  04 30 90 15                                      ldrne r3, [r0, #4]
005eb084  01 30 83 12                                      addne r3, r3, #1
005eb088  04 30 80 15                                      strne r3, [r0, #4]
005eb08c  34 10 94 e5                                      ldr r1, [r4, #0x34]
005eb090  38 30 94 e5                                      ldr r3, [r4, #0x38]
005eb094  03 00 51 e1                                      cmp r1, r3
005eb098  95 00 00 0a                                      beq #0x5eb2f4
005eb09c  18 30 9d e5                                      ldr r3, [sp, #0x18]
005eb0a0  00 00 53 e3                                      cmp r3, #0
005eb0a4  00 30 81 e5                                      str r3, [r1]
005eb0a8  04 20 93 15                                      ldrne r2, [r3, #4]
005eb0ac  01 20 82 12                                      addne r2, r2, #1
005eb0b0  04 20 83 15                                      strne r2, [r3, #4]
005eb0b4  34 30 94 e5                                      ldr r3, [r4, #0x34]
005eb0b8  04 30 83 e2                                      add r3, r3, #4
005eb0bc  34 30 84 e5                                      str r3, [r4, #0x34]
005eb0c0  18 00 9d e5                                      ldr r0, [sp, #0x18]
005eb0c4  00 00 50 e3                                      cmp r0, #0
005eb0c8  00 00 00 0a                                      beq #0x5eb0d0
005eb0cc  2c c9 f4 eb                                      bl #0x31d584
005eb0d0  cd 67 00 eb                                      bl #0x60500c
005eb0d4  00 00 50 e3                                      cmp r0, #0
005eb0d8  14 00 8d e5                                      str r0, [sp, #0x14]
005eb0dc  04 30 90 15                                      ldrne r3, [r0, #4]
005eb0e0  01 30 83 12                                      addne r3, r3, #1
005eb0e4  04 30 80 15                                      strne r3, [r0, #4]
005eb0e8  34 10 94 e5                                      ldr r1, [r4, #0x34]
005eb0ec  38 30 94 e5                                      ldr r3, [r4, #0x38]
005eb0f0  03 00 51 e1                                      cmp r1, r3
005eb0f4  82 00 00 0a                                      beq #0x5eb304
005eb0f8  14 30 9d e5                                      ldr r3, [sp, #0x14]
005eb0fc  00 00 53 e3                                      cmp r3, #0
005eb100  00 30 81 e5                                      str r3, [r1]
005eb104  04 20 93 15                                      ldrne r2, [r3, #4]
005eb108  01 20 82 12                                      addne r2, r2, #1
005eb10c  04 20 83 15                                      strne r2, [r3, #4]
005eb110  34 30 94 e5                                      ldr r3, [r4, #0x34]
005eb114  04 30 83 e2                                      add r3, r3, #4
005eb118  34 30 84 e5                                      str r3, [r4, #0x34]
005eb11c  14 00 9d e5                                      ldr r0, [sp, #0x14]
005eb120  00 00 50 e3                                      cmp r0, #0
005eb124  00 00 00 0a                                      beq #0x5eb12c
005eb128  15 c9 f4 eb                                      bl #0x31d584
005eb12c  84 64 00 eb                                      bl #0x604344
005eb130  00 00 50 e3                                      cmp r0, #0
005eb134  10 00 8d e5                                      str r0, [sp, #0x10]
005eb138  04 30 90 15                                      ldrne r3, [r0, #4]
005eb13c  01 30 83 12                                      addne r3, r3, #1
005eb140  04 30 80 15                                      strne r3, [r0, #4]
005eb144  34 10 94 e5                                      ldr r1, [r4, #0x34]
005eb148  38 30 94 e5                                      ldr r3, [r4, #0x38]
005eb14c  03 00 51 e1                                      cmp r1, r3
005eb150  6f 00 00 0a                                      beq #0x5eb314
005eb154  10 30 9d e5                                      ldr r3, [sp, #0x10]
005eb158  00 00 53 e3                                      cmp r3, #0
005eb15c  00 30 81 e5                                      str r3, [r1]
005eb160  04 20 93 15                                      ldrne r2, [r3, #4]
005eb164  01 20 82 12                                      addne r2, r2, #1
005eb168  04 20 83 15                                      strne r2, [r3, #4]
005eb16c  34 30 94 e5                                      ldr r3, [r4, #0x34]
005eb170  04 30 83 e2                                      add r3, r3, #4
005eb174  34 30 84 e5                                      str r3, [r4, #0x34]
005eb178  10 00 9d e5                                      ldr r0, [sp, #0x10]
005eb17c  00 00 50 e3                                      cmp r0, #0
005eb180  00 00 00 0a                                      beq #0x5eb188
005eb184  fe c8 f4 eb                                      bl #0x31d584
005eb188  8c 69 00 eb                                      bl #0x6057c0
005eb18c  00 00 50 e3                                      cmp r0, #0
005eb190  0c 00 8d e5                                      str r0, [sp, #0xc]
005eb194  04 30 90 15                                      ldrne r3, [r0, #4]
005eb198  01 30 83 12                                      addne r3, r3, #1
005eb19c  04 30 80 15                                      strne r3, [r0, #4]
005eb1a0  34 10 94 e5                                      ldr r1, [r4, #0x34]
005eb1a4  38 30 94 e5                                      ldr r3, [r4, #0x38]
005eb1a8  03 00 51 e1                                      cmp r1, r3
005eb1ac  4c 00 00 0a                                      beq #0x5eb2e4
005eb1b0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005eb1b4  00 00 53 e3                                      cmp r3, #0
005eb1b8  00 30 81 e5                                      str r3, [r1]
005eb1bc  04 20 93 15                                      ldrne r2, [r3, #4]
005eb1c0  01 20 82 12                                      addne r2, r2, #1
005eb1c4  04 20 83 15                                      strne r2, [r3, #4]
005eb1c8  34 30 94 e5                                      ldr r3, [r4, #0x34]
005eb1cc  04 30 83 e2                                      add r3, r3, #4
005eb1d0  34 30 84 e5                                      str r3, [r4, #0x34]
005eb1d4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
005eb1d8  00 00 50 e3                                      cmp r0, #0
005eb1dc  00 00 00 0a                                      beq #0x5eb1e4
005eb1e0  e7 c8 f4 eb                                      bl #0x31d584
005eb1e4  c9 6e 00 eb                                      bl #0x606d10
005eb1e8  40 10 94 e5                                      ldr r1, [r4, #0x40]
005eb1ec  44 30 94 e5                                      ldr r3, [r4, #0x44]
005eb1f0  3c 50 84 e2                                      add r5, r4, #0x3c
005eb1f4  08 00 8d e5                                      str r0, [sp, #8]
005eb1f8  03 00 51 e1                                      cmp r1, r3
005eb1fc  1a 00 00 0a                                      beq #0x5eb26c
005eb200  00 00 81 e5                                      str r0, [r1]
005eb204  40 30 94 e5                                      ldr r3, [r4, #0x40]
005eb208  04 30 83 e2                                      add r3, r3, #4
005eb20c  40 30 84 e5                                      str r3, [r4, #0x40]
005eb210  05 71 00 eb                                      bl #0x60762c
005eb214  40 10 94 e5                                      ldr r1, [r4, #0x40]
005eb218  44 30 94 e5                                      ldr r3, [r4, #0x44]
005eb21c  04 00 8d e5                                      str r0, [sp, #4]
005eb220  03 00 51 e1                                      cmp r1, r3
005eb224  19 00 00 0a                                      beq #0x5eb290
005eb228  00 00 81 e5                                      str r0, [r1]
005eb22c  40 30 94 e5                                      ldr r3, [r4, #0x40]
005eb230  04 30 83 e2                                      add r3, r3, #4
005eb234  40 30 84 e5                                      str r3, [r4, #0x40]
005eb238  20 70 00 eb                                      bl #0x6072c0
005eb23c  40 10 94 e5                                      ldr r1, [r4, #0x40]
005eb240  44 30 94 e5                                      ldr r3, [r4, #0x44]
005eb244  00 00 8d e5                                      str r0, [sp]
005eb248  03 00 51 e1                                      cmp r1, r3
005eb24c  18 00 00 0a                                      beq #0x5eb2b4
005eb250  00 00 81 e5                                      str r0, [r1]
005eb254  40 30 94 e5                                      ldr r3, [r4, #0x40]
005eb258  04 30 83 e2                                      add r3, r3, #4
005eb25c  40 30 84 e5                                      str r3, [r4, #0x40]
005eb260  04 00 a0 e1                                      mov r0, r4
005eb264  2c d0 8d e2                                      add sp, sp, #0x2c
005eb268  30 80 bd e8                                      pop {r4, r5, pc}
005eb26c  05 00 a0 e1                                      mov r0, r5
005eb270  08 20 8d e2                                      add r2, sp, #8
005eb274  c5 fd ff eb                                      bl #0x5ea990
005eb278  eb 70 00 eb                                      bl #0x60762c
005eb27c  40 10 94 e5                                      ldr r1, [r4, #0x40]
005eb280  44 30 94 e5                                      ldr r3, [r4, #0x44]
005eb284  04 00 8d e5                                      str r0, [sp, #4]
005eb288  03 00 51 e1                                      cmp r1, r3
005eb28c  e5 ff ff 1a                                      bne #0x5eb228
005eb290  05 00 a0 e1                                      mov r0, r5
005eb294  04 20 8d e2                                      add r2, sp, #4
005eb298  bc fd ff eb                                      bl #0x5ea990
005eb29c  07 70 00 eb                                      bl #0x6072c0
005eb2a0  40 10 94 e5                                      ldr r1, [r4, #0x40]
005eb2a4  44 30 94 e5                                      ldr r3, [r4, #0x44]
005eb2a8  00 00 8d e5                                      str r0, [sp]
005eb2ac  03 00 51 e1                                      cmp r1, r3
005eb2b0  e6 ff ff 1a                                      bne #0x5eb250
005eb2b4  05 00 a0 e1                                      mov r0, r5
005eb2b8  0d 20 a0 e1                                      mov r2, sp
005eb2bc  b3 fd ff eb                                      bl #0x5ea990
005eb2c0  e6 ff ff ea                                      b #0x5eb260
005eb2c4  05 00 a0 e1                                      mov r0, r5
005eb2c8  1c 20 8d e2                                      add r2, sp, #0x1c
005eb2cc  42 f7 ff eb                                      bl #0x5e8fdc
005eb2d0  63 ff ff ea                                      b #0x5eb064
005eb2d4  05 00 a0 e1                                      mov r0, r5
005eb2d8  20 20 8d e2                                      add r2, sp, #0x20
005eb2dc  3e f7 ff eb                                      bl #0x5e8fdc
005eb2e0  48 ff ff ea                                      b #0x5eb008
005eb2e4  05 00 a0 e1                                      mov r0, r5
005eb2e8  0c 20 8d e2                                      add r2, sp, #0xc
005eb2ec  3a f7 ff eb                                      bl #0x5e8fdc
005eb2f0  b7 ff ff ea                                      b #0x5eb1d4
005eb2f4  05 00 a0 e1                                      mov r0, r5
005eb2f8  18 20 8d e2                                      add r2, sp, #0x18
005eb2fc  36 f7 ff eb                                      bl #0x5e8fdc
005eb300  6e ff ff ea                                      b #0x5eb0c0
005eb304  05 00 a0 e1                                      mov r0, r5
005eb308  14 20 8d e2                                      add r2, sp, #0x14
005eb30c  32 f7 ff eb                                      bl #0x5e8fdc
005eb310  81 ff ff ea                                      b #0x5eb11c
005eb314  05 00 a0 e1                                      mov r0, r5
005eb318  10 20 8d e2                                      add r2, sp, #0x10
005eb31c  2e f7 ff eb                                      bl #0x5e8fdc
005eb320  94 ff ff ea                                      b #0x5eb178
005eb324  05 00 a0 e1                                      mov r0, r5
005eb328  24 20 8d e2                                      add r2, sp, #0x24
005eb32c  2a f7 ff eb                                      bl #0x5e8fdc
005eb330  1d ff ff ea                                      b #0x5eafac

; Evidence owner: engine | Content probes in registration order, restoring cursor, then extension fallback.
; FUNCTION 0x005e8144, declared_size=284, range_size=284, mode=arm
; class-group: glitch::video::CTextureManager
; alias: _ZNK6glitch5video15CTextureManager14getImageLoaderEPNS_2io9IReadFileE
; demangled: glitch::video::CTextureManager::getImageLoader(glitch::io::IReadFile*) const
; decoder-mode: arm
005e8144  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005e8148  00 40 52 e2                                      subs r4, r2, #0
005e814c  00 90 a0 e1                                      mov sb, r0
005e8150  01 a0 a0 e1                                      mov sl, r1
005e8154  24 00 00 0a                                      beq #0x5e81ec
005e8158  00 30 94 e5                                      ldr r3, [r4]
005e815c  04 00 a0 e1                                      mov r0, r4
005e8160  0f e0 a0 e1                                      mov lr, pc
005e8164  24 f0 93 e5                                      ldr pc, [r3, #0x24]
005e8168  30 50 9a e5                                      ldr r5, [sl, #0x30]
005e816c  34 70 9a e5                                      ldr r7, [sl, #0x34]
005e8170  00 80 a0 e1                                      mov r8, r0
005e8174  07 00 55 e1                                      cmp r5, r7
005e8178  03 00 00 1a                                      bne #0x5e818c
005e817c  1a 00 00 ea                                      b #0x5e81ec
005e8180  04 50 85 e2                                      add r5, r5, #4
005e8184  07 00 55 e1                                      cmp r5, r7
005e8188  1b 00 00 0a                                      beq #0x5e81fc
005e818c  00 30 95 e5                                      ldr r3, [r5]
005e8190  04 10 a0 e1                                      mov r1, r4
005e8194  03 00 a0 e1                                      mov r0, r3
005e8198  00 30 93 e5                                      ldr r3, [r3]
005e819c  0f e0 a0 e1                                      mov lr, pc
005e81a0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
005e81a4  00 30 94 e5                                      ldr r3, [r4]
005e81a8  00 60 a0 e1                                      mov r6, r0
005e81ac  08 10 a0 e1                                      mov r1, r8
005e81b0  04 00 a0 e1                                      mov r0, r4
005e81b4  00 20 a0 e3                                      mov r2, #0
005e81b8  0f e0 a0 e1                                      mov lr, pc
005e81bc  18 f0 93 e5                                      ldr pc, [r3, #0x18]
005e81c0  00 00 56 e3                                      cmp r6, #0
005e81c4  ed ff ff 0a                                      beq #0x5e8180
005e81c8  00 30 95 e5                                      ldr r3, [r5]
005e81cc  00 00 53 e3                                      cmp r3, #0
005e81d0  00 30 89 e5                                      str r3, [sb]
005e81d4  02 00 00 0a                                      beq #0x5e81e4
005e81d8  04 20 93 e5                                      ldr r2, [r3, #4]
005e81dc  01 20 82 e2                                      add r2, r2, #1
005e81e0  04 20 83 e5                                      str r2, [r3, #4]
005e81e4  09 00 a0 e1                                      mov r0, sb
005e81e8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005e81ec  00 30 a0 e3                                      mov r3, #0
005e81f0  00 30 89 e5                                      str r3, [sb]
005e81f4  09 00 a0 e1                                      mov r0, sb
005e81f8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005e81fc  34 70 9a e5                                      ldr r7, [sl, #0x34]
005e8200  30 50 9a e5                                      ldr r5, [sl, #0x30]
005e8204  07 00 55 e1                                      cmp r5, r7
005e8208  03 00 00 1a                                      bne #0x5e821c
005e820c  f6 ff ff ea                                      b #0x5e81ec
005e8210  04 50 85 e2                                      add r5, r5, #4
005e8214  07 00 55 e1                                      cmp r5, r7
005e8218  f3 ff ff 0a                                      beq #0x5e81ec
005e821c  00 80 95 e5                                      ldr r8, [r5]
005e8220  00 30 94 e5                                      ldr r3, [r4]
005e8224  04 00 a0 e1                                      mov r0, r4
005e8228  00 20 98 e5                                      ldr r2, [r8]
005e822c  0c 60 92 e5                                      ldr r6, [r2, #0xc]
005e8230  0f e0 a0 e1                                      mov lr, pc
005e8234  28 f0 93 e5                                      ldr pc, [r3, #0x28]
005e8238  00 10 a0 e1                                      mov r1, r0
005e823c  08 00 a0 e1                                      mov r0, r8
005e8240  36 ff 2f e1                                      blx r6
005e8244  00 00 50 e3                                      cmp r0, #0
005e8248  f0 ff ff 0a                                      beq #0x5e8210
005e824c  00 30 95 e5                                      ldr r3, [r5]
005e8250  00 00 53 e3                                      cmp r3, #0
005e8254  00 30 89 e5                                      str r3, [sb]
005e8258  de ff ff 1a                                      bne #0x5e81d8
005e825c  e0 ff ff ea                                      b #0x5e81e4

; Evidence owner: engine | Selects direct texture interface or decoded-image route.
; FUNCTION 0x005ecba4, declared_size=912, range_size=912, mode=arm
; class-group: glitch::video::CTextureManager
; alias: _ZN6glitch5video15CTextureManager19loadTextureFromFileEPNS_2io9IReadFileEPKcRNS0_14E_PIXEL_FORMATEb
; demangled: glitch::video::CTextureManager::loadTextureFromFile(glitch::io::IReadFile*, char const*, glitch::video::E_PIXEL_FORMAT&, bool)
; decoder-mode: arm
005ecba4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005ecba8  74 c0 91 e5                                      ldr ip, [r1, #0x74]
005ecbac  3c d0 4d e2                                      sub sp, sp, #0x3c
005ecbb0  00 40 a0 e3                                      mov r4, #0
005ecbb4  01 c0 8c e3                                      orr ip, ip, #1
005ecbb8  74 c0 81 e5                                      str ip, [r1, #0x74]
005ecbbc  00 60 a0 e1                                      mov r6, r0
005ecbc0  30 00 8d e2                                      add r0, sp, #0x30
005ecbc4  03 80 a0 e1                                      mov r8, r3
005ecbc8  01 50 a0 e1                                      mov r5, r1
005ecbcc  34 40 8d e5                                      str r4, [sp, #0x34]
005ecbd0  02 70 a0 e1                                      mov r7, r2
005ecbd4  60 b0 9d e5                                      ldr fp, [sp, #0x60]
005ecbd8  59 ed ff eb                                      bl #0x5e8144
005ecbdc  30 30 9d e5                                      ldr r3, [sp, #0x30]
005ecbe0  04 00 53 e1                                      cmp r3, r4
005ecbe4  81 00 00 0a                                      beq #0x5ecdf0
005ecbe8  03 00 a0 e1                                      mov r0, r3
005ecbec  00 30 93 e5                                      ldr r3, [r3]
005ecbf0  0f e0 a0 e1                                      mov lr, pc
005ecbf4  18 f0 93 e5                                      ldr pc, [r3, #0x18]
005ecbf8  00 a0 50 e2                                      subs sl, r0, #0
005ecbfc  5e 00 00 0a                                      beq #0x5ecd7c
005ecc00  30 30 9d e5                                      ldr r3, [sp, #0x30]
005ecc04  01 20 a0 e3                                      mov r2, #1
005ecc08  0c 10 a0 e3                                      mov r1, #0xc
005ecc0c  0c 10 8d e5                                      str r1, [sp, #0xc]
005ecc10  20 20 8d e5                                      str r2, [sp, #0x20]
005ecc14  26 40 cd e5                                      strb r4, [sp, #0x26]
005ecc18  08 40 8d e5                                      str r4, [sp, #8]
005ecc1c  10 40 8d e5                                      str r4, [sp, #0x10]
005ecc20  14 40 8d e5                                      str r4, [sp, #0x14]
005ecc24  18 20 8d e5                                      str r2, [sp, #0x18]
005ecc28  1c 20 8d e5                                      str r2, [sp, #0x1c]
005ecc2c  24 40 cd e5                                      strb r4, [sp, #0x24]
005ecc30  25 40 cd e5                                      strb r4, [sp, #0x25]
005ecc34  08 40 8d e2                                      add r4, sp, #8
005ecc38  03 00 a0 e1                                      mov r0, r3
005ecc3c  07 10 a0 e1                                      mov r1, r7
005ecc40  00 30 93 e5                                      ldr r3, [r3]
005ecc44  04 20 a0 e1                                      mov r2, r4
005ecc48  0f e0 a0 e1                                      mov lr, pc
005ecc4c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
005ecc50  00 a0 50 e2                                      subs sl, r0, #0
005ecc54  96 00 00 0a                                      beq #0x5eceb4
005ecc58  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005ecc5c  24 a0 dd e5                                      ldrb sl, [sp, #0x24]
005ecc60  00 30 8b e5                                      str r3, [fp]
005ecc64  28 10 95 e5                                      ldr r1, [r5, #0x28]
005ecc68  00 00 5a e3                                      cmp sl, #0
005ecc6c  74 30 95 15                                      ldrne r3, [r5, #0x74]
005ecc70  88 20 91 e5                                      ldr r2, [r1, #0x88]
005ecc74  74 30 95 05                                      ldreq r3, [r5, #0x74]
005ecc78  53 93 e0 17                                      ubfxne sb, r3, #6, #1
005ecc7c  0a 90 a0 01                                      moveq sb, sl
005ecc80  10 00 12 e3                                      tst r2, #0x10
005ecc84  09 20 a0 01                                      moveq r2, sb
005ecc88  01 20 a0 13                                      movne r2, #1
005ecc8c  20 00 13 e3                                      tst r3, #0x20
005ecc90  03 30 a0 13                                      movne r3, #3
005ecc94  24 20 cd e5                                      strb r2, [sp, #0x24]
005ecc98  14 30 8d 15                                      strne r3, [sp, #0x14]
005ecc9c  64 00 00 0a                                      beq #0x5ece34
005ecca0  08 20 a0 e1                                      mov r2, r8
005ecca4  2c 00 8d e2                                      add r0, sp, #0x2c
005ecca8  04 30 a0 e1                                      mov r3, r4
005eccac  51 f6 fe eb                                      bl #0x5aa5f8
005eccb0  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
005eccb4  00 00 53 e3                                      cmp r3, #0
005eccb8  04 20 93 15                                      ldrne r2, [r3, #4]
005eccbc  01 20 82 12                                      addne r2, r2, #1
005eccc0  04 20 83 15                                      strne r2, [r3, #4]
005eccc4  34 00 9d e5                                      ldr r0, [sp, #0x34]
005eccc8  34 30 8d e5                                      str r3, [sp, #0x34]
005ecccc  00 00 50 e3                                      cmp r0, #0
005eccd0  00 00 00 0a                                      beq #0x5eccd8
005eccd4  2a c2 f4 eb                                      bl #0x31d584
005eccd8  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
005eccdc  00 00 50 e3                                      cmp r0, #0
005ecce0  00 00 00 0a                                      beq #0x5ecce8
005ecce4  26 c2 f4 eb                                      bl #0x31d584
005ecce8  34 00 9d e5                                      ldr r0, [sp, #0x34]
005eccec  24 a0 cd e5                                      strb sl, [sp, #0x24]
005eccf0  00 00 50 e3                                      cmp r0, #0
005eccf4  00 00 86 05                                      streq r0, [r6]
005eccf8  42 00 00 0a                                      beq #0x5ece08
005eccfc  01 30 29 e2                                      eor r3, sb, #1
005ecd00  00 10 a0 e3                                      mov r1, #0
005ecd04  01 20 a0 e3                                      mov r2, #1
005ecd08  99 44 00 eb                                      bl #0x5fdf74
005ecd0c  28 80 95 e5                                      ldr r8, [r5, #0x28]
005ecd10  9c 30 98 e5                                      ldr r3, [r8, #0x9c]
005ecd14  02 0a 13 e3                                      tst r3, #0x2000
005ecd18  49 00 00 1a                                      bne #0x5ece44
005ecd1c  30 20 9d e5                                      ldr r2, [sp, #0x30]
005ecd20  04 30 a0 e1                                      mov r3, r4
005ecd24  07 10 a0 e1                                      mov r1, r7
005ecd28  02 00 a0 e1                                      mov r0, r2
005ecd2c  00 c0 92 e5                                      ldr ip, [r2]
005ecd30  34 20 8d e2                                      add r2, sp, #0x34
005ecd34  0f e0 a0 e1                                      mov lr, pc
005ecd38  20 f0 9c e5                                      ldr pc, [ip, #0x20]
005ecd3c  00 40 50 e2                                      subs r4, r0, #0
005ecd40  6e 00 00 0a                                      beq #0x5ecf00
005ecd44  34 00 9d e5                                      ldr r0, [sp, #0x34]
005ecd48  3f 30 d0 e5                                      ldrb r3, [r0, #0x3f]
005ecd4c  08 00 13 e3                                      tst r3, #8
005ecd50  62 00 00 0a                                      beq #0x5ecee0
005ecd54  2c 30 90 e5                                      ldr r3, [r0, #0x2c]
005ecd58  00 00 53 e3                                      cmp r3, #0
005ecd5c  24 00 00 0a                                      beq #0x5ecdf4
005ecd60  74 30 95 e5                                      ldr r3, [r5, #0x74]
005ecd64  01 00 13 e3                                      tst r3, #1
005ecd68  21 00 00 1a                                      bne #0x5ecdf4
005ecd6c  01 10 a0 e3                                      mov r1, #1
005ecd70  49 44 00 eb                                      bl #0x5fde9c
005ecd74  34 00 9d e5                                      ldr r0, [sp, #0x34]
005ecd78  1d 00 00 ea                                      b #0x5ecdf4
005ecd7c  30 30 9d e5                                      ldr r3, [sp, #0x30]
005ecd80  08 90 8d e2                                      add sb, sp, #8
005ecd84  07 20 a0 e1                                      mov r2, r7
005ecd88  03 10 a0 e1                                      mov r1, r3
005ecd8c  09 00 a0 e1                                      mov r0, sb
005ecd90  00 30 93 e5                                      ldr r3, [r3]
005ecd94  0f e0 a0 e1                                      mov lr, pc
005ecd98  14 f0 93 e5                                      ldr pc, [r3, #0x14]
005ecd9c  08 30 9d e5                                      ldr r3, [sp, #8]
005ecda0  00 00 53 e3                                      cmp r3, #0
005ecda4  11 00 00 0a                                      beq #0x5ecdf0
005ecda8  20 30 93 e5                                      ldr r3, [r3, #0x20]
005ecdac  28 40 8d e2                                      add r4, sp, #0x28
005ecdb0  08 20 a0 e1                                      mov r2, r8
005ecdb4  00 30 8b e5                                      str r3, [fp]
005ecdb8  05 10 a0 e1                                      mov r1, r5
005ecdbc  09 30 a0 e1                                      mov r3, sb
005ecdc0  04 00 a0 e1                                      mov r0, r4
005ecdc4  00 a0 8d e5                                      str sl, [sp]
005ecdc8  a4 fd ff eb                                      bl #0x5ec460
005ecdcc  04 10 a0 e1                                      mov r1, r4
005ecdd0  34 00 8d e2                                      add r0, sp, #0x34
005ecdd4  07 60 f6 eb                                      bl #0x384df8
005ecdd8  04 00 a0 e1                                      mov r0, r4
005ecddc  92 a9 f8 eb                                      bl #0x41742c
005ecde0  08 00 9d e5                                      ldr r0, [sp, #8]
005ecde4  00 00 50 e3                                      cmp r0, #0
005ecde8  00 00 00 0a                                      beq #0x5ecdf0
005ecdec  e4 c1 f4 eb                                      bl #0x31d584
005ecdf0  34 00 9d e5                                      ldr r0, [sp, #0x34]
005ecdf4  00 00 50 e3                                      cmp r0, #0
005ecdf8  00 00 86 e5                                      str r0, [r6]
005ecdfc  04 30 90 15                                      ldrne r3, [r0, #4]
005ece00  01 30 83 12                                      addne r3, r3, #1
005ece04  04 30 80 15                                      strne r3, [r0, #4]
005ece08  30 00 9d e5                                      ldr r0, [sp, #0x30]
005ece0c  00 00 50 e3                                      cmp r0, #0
005ece10  00 00 00 0a                                      beq #0x5ece18
005ece14  da c1 f4 eb                                      bl #0x31d584
005ece18  34 00 9d e5                                      ldr r0, [sp, #0x34]
005ece1c  00 00 50 e3                                      cmp r0, #0
005ece20  00 00 00 0a                                      beq #0x5ece28
005ece24  d6 c1 f4 eb                                      bl #0x31d584
005ece28  06 00 a0 e1                                      mov r0, r6
005ece2c  3c d0 8d e2                                      add sp, sp, #0x3c
005ece30  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005ece34  10 00 13 e3                                      tst r3, #0x10
005ece38  01 30 a0 13                                      movne r3, #1
005ece3c  14 30 8d 15                                      strne r3, [sp, #0x14]
005ece40  96 ff ff ea                                      b #0x5ecca0
005ece44  74 20 95 e5                                      ldr r2, [r5, #0x74]
005ece48  02 00 12 e3                                      tst r2, #2
005ece4c  b2 ff ff 0a                                      beq #0x5ecd1c
005ece50  01 20 12 e2                                      ands r2, r2, #1
005ece54  b0 ff ff 1a                                      bne #0x5ecd1c
005ece58  88 a0 98 e5                                      ldr sl, [r8, #0x88]
005ece5c  02 aa 1a e2                                      ands sl, sl, #0x2000
005ece60  05 00 00 0a                                      beq #0x5ece7c
005ece64  00 30 98 e5                                      ldr r3, [r8]
005ece68  08 00 a0 e1                                      mov r0, r8
005ece6c  02 1a a0 e3                                      mov r1, #0x2000
005ece70  0f e0 a0 e1                                      mov lr, pc
005ece74  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
005ece78  01 a0 a0 e3                                      mov sl, #1
005ece7c  34 00 9d e5                                      ldr r0, [sp, #0x34]
005ece80  00 10 a0 e3                                      mov r1, #0
005ece84  04 44 00 eb                                      bl #0x5fde9c
005ece88  88 30 98 e5                                      ldr r3, [r8, #0x88]
005ece8c  d3 36 e0 e7                                      ubfx r3, r3, #0xd, #1
005ece90  03 00 5a e1                                      cmp sl, r3
005ece94  a0 ff ff 0a                                      beq #0x5ecd1c
005ece98  08 00 a0 e1                                      mov r0, r8
005ece9c  0a 20 a0 e1                                      mov r2, sl
005ecea0  00 30 98 e5                                      ldr r3, [r8]
005ecea4  02 1a a0 e3                                      mov r1, #0x2000
005ecea8  0f e0 a0 e1                                      mov lr, pc
005eceac  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
005eceb0  99 ff ff ea                                      b #0x5ecd1c
005eceb4  00 30 97 e5                                      ldr r3, [r7]
005eceb8  07 00 a0 e1                                      mov r0, r7
005ecebc  0f e0 a0 e1                                      mov lr, pc
005ecec0  28 f0 93 e5                                      ldr pc, [r3, #0x28]
005ecec4  60 10 9f e5                                      ldr r1, [pc, #0x60]
005ecec8  00 20 a0 e1                                      mov r2, r0
005ececc  03 00 a0 e3                                      mov r0, #3
005eced0  01 10 8f e0                                      add r1, pc, r1
005eced4  56 78 00 eb                                      bl #0x60b034
005eced8  00 a0 86 e5                                      str sl, [r6]
005ecedc  c9 ff ff ea                                      b #0x5ece08
005ecee0  74 30 95 e5                                      ldr r3, [r5, #0x74]
005ecee4  02 00 13 e3                                      tst r3, #2
005ecee8  c1 ff ff 0a                                      beq #0x5ecdf4
005eceec  01 30 23 e2                                      eor r3, r3, #1
005ecef0  01 10 03 e2                                      and r1, r3, #1
005ecef4  e8 43 00 eb                                      bl #0x5fde9c
005ecef8  34 00 9d e5                                      ldr r0, [sp, #0x34]
005ecefc  bc ff ff ea                                      b #0x5ecdf4
005ecf00  00 30 97 e5                                      ldr r3, [r7]
005ecf04  07 00 a0 e1                                      mov r0, r7
005ecf08  0f e0 a0 e1                                      mov lr, pc
005ecf0c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
005ecf10  18 10 9f e5                                      ldr r1, [pc, #0x18]
005ecf14  00 20 a0 e1                                      mov r2, r0
005ecf18  03 00 a0 e3                                      mov r0, #3
005ecf1c  01 10 8f e0                                      add r1, pc, r1
005ecf20  43 78 00 eb                                      bl #0x60b034
005ecf24  00 40 86 e5                                      str r4, [r6]
005ecf28  b6 ff ff ea                                      b #0x5ece08
; mapping-symbol data/literal pool
005ecf2c  c0 66 2f 00 94 66 2f 00                          .byte 0xc0, 0x66, 0x2f, 0x00, 0x94, 0x66, 0x2f, 0x00

; Evidence owner: engine | Base image loader returns false; PNG uses image path.
; FUNCTION 0x00602c84, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::IImageLoader
; alias: _ZN6glitch5video12IImageLoader23hasTextureLoadInterfaceEv
; demangled: glitch::video::IImageLoader::hasTextureLoadInterface()
; decoder-mode: arm
00602c84  00 00 a0 e3                                      mov r0, #0
00602c88  1e ff 2f e1                                      bx lr

; Evidence owner: engine | Reads eight bytes from IReadFile and checks PNG signature with png_sig_cmp.
; FUNCTION 0x00605048, declared_size=148, range_size=148, mode=arm
; class-group: glitch::video::CImageLoaderPng
; alias: _ZNK6glitch5video15CImageLoaderPng21isALoadableFileFormatEPNS_2io9IReadFileE
; demangled: glitch::video::CImageLoaderPng::isALoadableFileFormat(glitch::io::IReadFile*) const
; decoder-mode: arm
00605048  70 40 2d e9                                      push {r4, r5, r6, lr}
0060504c  80 40 9f e5                                      ldr r4, [pc, #0x80]
00605050  80 50 9f e5                                      ldr r5, [pc, #0x80]
00605054  10 d0 4d e2                                      sub sp, sp, #0x10
00605058  04 40 8f e0                                      add r4, pc, r4
0060505c  05 30 94 e7                                      ldr r3, [r4, r5]
00605060  00 00 51 e3                                      cmp r1, #0
00605064  00 30 93 e5                                      ldr r3, [r3]
00605068  0c 30 8d e5                                      str r3, [sp, #0xc]
0060506c  09 00 00 0a                                      beq #0x605098
00605070  04 60 8d e2                                      add r6, sp, #4
00605074  01 00 a0 e1                                      mov r0, r1
00605078  00 30 91 e5                                      ldr r3, [r1]
0060507c  08 20 a0 e3                                      mov r2, #8
00605080  06 10 a0 e1                                      mov r1, r6
00605084  0f e0 a0 e1                                      mov lr, pc
00605088  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0060508c  08 00 50 e3                                      cmp r0, #8
00605090  00 20 a0 e1                                      mov r2, r0
00605094  07 00 00 0a                                      beq #0x6050b8
00605098  00 00 a0 e3                                      mov r0, #0
0060509c  05 30 94 e7                                      ldr r3, [r4, r5]
006050a0  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006050a4  00 30 93 e5                                      ldr r3, [r3]
006050a8  03 00 52 e1                                      cmp r2, r3
006050ac  07 00 00 1a                                      bne #0x6050d0
006050b0  10 d0 8d e2                                      add sp, sp, #0x10
006050b4  70 80 bd e8                                      pop {r4, r5, r6, pc}
006050b8  06 00 a0 e1                                      mov r0, r6
006050bc  00 10 a0 e3                                      mov r1, #0
006050c0  43 fc 01 eb                                      bl #0x6841d4
006050c4  01 00 70 e2                                      rsbs r0, r0, #1
006050c8  00 00 a0 33                                      movlo r0, #0
006050cc  f2 ff ff ea                                      b #0x60509c
006050d0  8e 24 f4 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
006050d4  38 fa 38 00 ac 40 00 00                          .byte 0x38, 0xfa, 0x38, 0x00, 0xac, 0x40, 0x00, 0x00

; Evidence owner: engine | PNG loader policy, libpng API setup, transformations, CImage allocation, row table, cleanup.
; FUNCTION 0x006050dc, declared_size=1392, range_size=1392, mode=arm
; class-group: glitch::video::CImageLoaderPng
; alias: _ZNK6glitch5video15CImageLoaderPng9loadImageEPNS_2io9IReadFileE
; demangled: glitch::video::CImageLoaderPng::loadImage(glitch::io::IReadFile*) const
; decoder-mode: arm
006050dc  3c 15 9f e5                                      ldr r1, [pc, #0x53c]
006050e0  3c 35 9f e5                                      ldr r3, [pc, #0x53c]
006050e4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006050e8  01 10 8f e0                                      add r1, pc, r1
006050ec  03 30 91 e7                                      ldr r3, [r1, r3]
006050f0  68 d0 4d e2                                      sub sp, sp, #0x68
006050f4  00 00 52 e3                                      cmp r2, #0
006050f8  00 30 93 e5                                      ldr r3, [r3]
006050fc  18 10 8d e5                                      str r1, [sp, #0x18]
00605100  1c 20 8d e5                                      str r2, [sp, #0x1c]
00605104  64 30 8d e5                                      str r3, [sp, #0x64]
00605108  00 30 a0 01                                      moveq r3, r0
0060510c  20 00 8d e5                                      str r0, [sp, #0x20]
00605110  00 20 83 05                                      streq r2, [r3]
00605114  1c 00 00 0a                                      beq #0x60518c
00605118  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
0060511c  5c 40 8d e2                                      add r4, sp, #0x5c
00605120  08 20 a0 e3                                      mov r2, #8
00605124  00 30 9c e5                                      ldr r3, [ip]
00605128  0c 00 a0 e1                                      mov r0, ip
0060512c  04 10 a0 e1                                      mov r1, r4
00605130  0f e0 a0 e1                                      mov lr, pc
00605134  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00605138  08 00 50 e3                                      cmp r0, #8
0060513c  00 20 a0 e1                                      mov r2, r0
00605140  1b 00 00 0a                                      beq #0x6051b4
00605144  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00605148  00 30 90 e5                                      ldr r3, [r0]
0060514c  0f e0 a0 e1                                      mov lr, pc
00605150  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00605154  00 10 a0 e1                                      mov r1, r0
00605158  c8 04 9f e5                                      ldr r0, [pc, #0x4c8]
0060515c  03 20 a0 e3                                      mov r2, #3
00605160  00 00 8f e0                                      add r0, pc, r0
00605164  df 16 00 eb                                      bl #0x60ace8
00605168  20 10 9d e5                                      ldr r1, [sp, #0x20]
0060516c  00 30 a0 e3                                      mov r3, #0
00605170  00 30 81 e5                                      str r3, [r1]
00605174  24 30 8d e5                                      str r3, [sp, #0x24]
00605178  24 10 9d e5                                      ldr r1, [sp, #0x24]
0060517c  00 00 51 e3                                      cmp r1, #0
00605180  01 00 00 0a                                      beq #0x60518c
00605184  24 00 9d e5                                      ldr r0, [sp, #0x24]
00605188  fd 60 f4 eb                                      bl #0x31d584
0060518c  90 34 9f e5                                      ldr r3, [pc, #0x490]
00605190  18 c0 9d e5                                      ldr ip, [sp, #0x18]
00605194  64 20 9d e5                                      ldr r2, [sp, #0x64]
00605198  20 00 9d e5                                      ldr r0, [sp, #0x20]
0060519c  03 30 9c e7                                      ldr r3, [ip, r3]
006051a0  00 30 93 e5                                      ldr r3, [r3]
006051a4  03 00 52 e1                                      cmp r2, r3
006051a8  1b 01 00 1a                                      bne #0x60561c
006051ac  68 d0 8d e2                                      add sp, sp, #0x68
006051b0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006051b4  00 10 a0 e3                                      mov r1, #0
006051b8  04 00 a0 e1                                      mov r0, r4
006051bc  04 fc 01 eb                                      bl #0x6841d4
006051c0  00 10 50 e2                                      subs r1, r0, #0
006051c4  9b 00 00 1a                                      bne #0x605438
006051c8  5c 04 9f e5                                      ldr r0, [pc, #0x45c]
006051cc  5c 24 9f e5                                      ldr r2, [pc, #0x45c]
006051d0  01 30 a0 e1                                      mov r3, r1
006051d4  00 00 8f e0                                      add r0, pc, r0
006051d8  02 20 8f e0                                      add r2, pc, r2
006051dc  1a 0b 02 eb                                      bl #0x687e4c
006051e0  00 00 50 e3                                      cmp r0, #0
006051e4  00 40 a0 e1                                      mov r4, r0
006051e8  58 00 8d e5                                      str r0, [sp, #0x58]
006051ec  a8 00 00 0a                                      beq #0x605494
006051f0  0b fe 01 eb                                      bl #0x684a24
006051f4  00 00 50 e3                                      cmp r0, #0
006051f8  00 40 a0 e1                                      mov r4, r0
006051fc  54 00 8d e5                                      str r0, [sp, #0x54]
00605200  c3 00 00 0a                                      beq #0x605514
00605204  58 00 9d e5                                      ldr r0, [sp, #0x58]
00605208  32 26 f4 eb                                      bl #0x30ead8
0060520c  00 40 50 e2                                      subs r4, r0, #0
00605210  96 00 00 1a                                      bne #0x605470
00605214  18 34 9f e5                                      ldr r3, [pc, #0x418]
00605218  18 c0 9d e5                                      ldr ip, [sp, #0x18]
0060521c  58 00 9d e5                                      ldr r0, [sp, #0x58]
00605220  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00605224  03 20 9c e7                                      ldr r2, [ip, r3]
00605228  10 0b 02 eb                                      bl #0x687e70
0060522c  58 00 9d e5                                      ldr r0, [sp, #0x58]
00605230  08 10 a0 e3                                      mov r1, #8
00605234  26 fe 01 eb                                      bl #0x684ad4
00605238  58 00 9d e5                                      ldr r0, [sp, #0x58]
0060523c  54 10 9d e5                                      ldr r1, [sp, #0x54]
00605240  08 07 02 eb                                      bl #0x686e68
00605244  48 c0 8d e2                                      add ip, sp, #0x48
00605248  3c 30 8d e2                                      add r3, sp, #0x3c
0060524c  00 c0 8d e5                                      str ip, [sp]
00605250  58 00 9d e5                                      ldr r0, [sp, #0x58]
00605254  44 c0 8d e2                                      add ip, sp, #0x44
00605258  54 10 9d e5                                      ldr r1, [sp, #0x54]
0060525c  40 20 8d e2                                      add r2, sp, #0x40
00605260  04 c0 8d e5                                      str ip, [sp, #4]
00605264  10 40 8d e5                                      str r4, [sp, #0x10]
00605268  08 40 8d e5                                      str r4, [sp, #8]
0060526c  0c 40 8d e5                                      str r4, [sp, #0xc]
00605270  10 02 02 eb                                      bl #0x685ab8
00605274  44 30 9d e5                                      ldr r3, [sp, #0x44]
00605278  03 00 53 e3                                      cmp r3, #3
0060527c  40 30 9d e5                                      ldr r3, [sp, #0x40]
00605280  50 30 8d e5                                      str r3, [sp, #0x50]
00605284  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
00605288  4c 30 8d e5                                      str r3, [sp, #0x4c]
0060528c  cb 00 00 0a                                      beq #0x6055c0
00605290  48 30 9d e5                                      ldr r3, [sp, #0x48]
00605294  07 00 53 e3                                      cmp r3, #7
00605298  05 00 00 ca                                      bgt #0x6052b4
0060529c  44 30 9d e5                                      ldr r3, [sp, #0x44]
006052a0  00 00 53 e3                                      cmp r3, #0
006052a4  04 00 53 13                                      cmpne r3, #4
006052a8  b0 00 00 1a                                      bne #0x605570
006052ac  58 00 9d e5                                      ldr r0, [sp, #0x58]
006052b0  7d 0b 02 eb                                      bl #0x6880ac
006052b4  58 00 9d e5                                      ldr r0, [sp, #0x58]
006052b8  54 10 9d e5                                      ldr r1, [sp, #0x54]
006052bc  10 20 a0 e3                                      mov r2, #0x10
006052c0  63 ff 01 eb                                      bl #0x685054
006052c4  00 00 50 e3                                      cmp r0, #0
006052c8  a5 00 00 1a                                      bne #0x605564
006052cc  48 30 9d e5                                      ldr r3, [sp, #0x48]
006052d0  10 00 53 e3                                      cmp r3, #0x10
006052d4  bc 00 00 0a                                      beq #0x6055cc
006052d8  44 30 9d e5                                      ldr r3, [sp, #0x44]
006052dc  00 00 53 e3                                      cmp r3, #0
006052e0  04 00 53 13                                      cmpne r3, #4
006052e4  9b 00 00 0a                                      beq #0x605558
006052e8  50 50 8d e2                                      add r5, sp, #0x50
006052ec  58 00 9d e5                                      ldr r0, [sp, #0x58]
006052f0  54 10 9d e5                                      ldr r1, [sp, #0x54]
006052f4  4c 60 8d e2                                      add r6, sp, #0x4c
006052f8  c8 06 02 eb                                      bl #0x686e20
006052fc  00 40 a0 e3                                      mov r4, #0
00605300  05 20 a0 e1                                      mov r2, r5
00605304  54 10 9d e5                                      ldr r1, [sp, #0x54]
00605308  48 70 8d e2                                      add r7, sp, #0x48
0060530c  44 80 8d e2                                      add r8, sp, #0x44
00605310  06 30 a0 e1                                      mov r3, r6
00605314  58 00 9d e5                                      ldr r0, [sp, #0x58]
00605318  80 01 8d e8                                      stm sp, {r7, r8}
0060531c  08 40 8d e5                                      str r4, [sp, #8]
00605320  0c 40 8d e5                                      str r4, [sp, #0xc]
00605324  10 40 8d e5                                      str r4, [sp, #0x10]
00605328  e2 01 02 eb                                      bl #0x685ab8
0060532c  44 c0 9d e5                                      ldr ip, [sp, #0x44]
00605330  05 20 a0 e1                                      mov r2, r5
00605334  06 30 a0 e1                                      mov r3, r6
00605338  06 00 5c e3                                      cmp ip, #6
0060533c  54 10 9d e5                                      ldr r1, [sp, #0x54]
00605340  58 00 9d e5                                      ldr r0, [sp, #0x58]
00605344  0e 50 a0 03                                      moveq r5, #0xe
00605348  0a 50 a0 13                                      movne r5, #0xa
0060534c  80 01 8d e8                                      stm sp, {r7, r8}
00605350  08 40 8d e5                                      str r4, [sp, #8]
00605354  0c 40 8d e5                                      str r4, [sp, #0xc]
00605358  10 40 8d e5                                      str r4, [sp, #0x10]
0060535c  d5 01 02 eb                                      bl #0x685ab8
00605360  50 30 9d e5                                      ldr r3, [sp, #0x50]
00605364  04 10 a0 e1                                      mov r1, r4
00605368  2c 00 a0 e3                                      mov r0, #0x2c
0060536c  34 30 8d e5                                      str r3, [sp, #0x34]
00605370  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
00605374  38 30 8d e5                                      str r3, [sp, #0x38]
00605378  8b bb fc eb                                      bl #0x5341ac
0060537c  05 10 a0 e1                                      mov r1, r5
00605380  34 20 8d e2                                      add r2, sp, #0x34
00605384  24 00 8d e5                                      str r0, [sp, #0x24]
00605388  60 f3 ff eb                                      bl #0x602110
0060538c  24 10 9d e5                                      ldr r1, [sp, #0x24]
00605390  04 00 51 e1                                      cmp r1, r4
00605394  78 00 00 0a                                      beq #0x60557c
00605398  04 30 91 e5                                      ldr r3, [r1, #4]
0060539c  24 20 9d e5                                      ldr r2, [sp, #0x24]
006053a0  04 10 a0 e1                                      mov r1, r4
006053a4  01 30 83 e2                                      add r3, r3, #1
006053a8  2c 20 8d e5                                      str r2, [sp, #0x2c]
006053ac  04 30 82 e5                                      str r3, [r2, #4]
006053b0  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
006053b4  00 01 a0 e1                                      lsl r0, r0, #2
006053b8  7a bb fc eb                                      bl #0x5341a8
006053bc  00 00 50 e3                                      cmp r0, #0
006053c0  28 00 8d e5                                      str r0, [sp, #0x28]
006053c4  83 00 00 0a                                      beq #0x6055d8
006053c8  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
006053cc  24 10 9d e5                                      ldr r1, [sp, #0x24]
006053d0  00 00 52 e3                                      cmp r2, #0
006053d4  08 30 91 e5                                      ldr r3, [r1, #8]
006053d8  08 00 00 0a                                      beq #0x605400
006053dc  28 20 9d e5                                      ldr r2, [sp, #0x28]
006053e0  04 31 82 e7                                      str r3, [r2, r4, lsl #2]
006053e4  24 c0 9d e5                                      ldr ip, [sp, #0x24]
006053e8  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
006053ec  01 40 84 e2                                      add r4, r4, #1
006053f0  18 20 9c e5                                      ldr r2, [ip, #0x18]
006053f4  04 00 51 e1                                      cmp r1, r4
006053f8  02 30 83 e0                                      add r3, r3, r2
006053fc  f6 ff ff 8a                                      bhi #0x6053dc
00605400  58 00 9d e5                                      ldr r0, [sp, #0x58]
00605404  b3 25 f4 eb                                      bl #0x30ead8
00605408  00 40 50 e2                                      subs r4, r0, #0
0060540c  2d 00 00 0a                                      beq #0x6054c8
00605410  54 10 8d e2                                      add r1, sp, #0x54
00605414  58 00 8d e2                                      add r0, sp, #0x58
00605418  00 20 a0 e3                                      mov r2, #0
0060541c  37 03 02 eb                                      bl #0x686100
00605420  20 10 9d e5                                      ldr r1, [sp, #0x20]
00605424  00 30 a0 e3                                      mov r3, #0
00605428  00 30 81 e5                                      str r3, [r1]
0060542c  28 00 9d e5                                      ldr r0, [sp, #0x28]
00605430  20 23 f4 eb                                      bl #0x30e0b8
00605434  52 ff ff ea                                      b #0x605184
00605438  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0060543c  00 30 90 e5                                      ldr r3, [r0]
00605440  0f e0 a0 e1                                      mov lr, pc
00605444  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00605448  00 10 a0 e1                                      mov r1, r0
0060544c  e4 01 9f e5                                      ldr r0, [pc, #0x1e4]
00605450  03 20 a0 e3                                      mov r2, #3
00605454  00 00 8f e0                                      add r0, pc, r0
00605458  22 16 00 eb                                      bl #0x60ace8
0060545c  20 20 9d e5                                      ldr r2, [sp, #0x20]
00605460  00 30 a0 e3                                      mov r3, #0
00605464  00 30 82 e5                                      str r3, [r2]
00605468  24 30 8d e5                                      str r3, [sp, #0x24]
0060546c  41 ff ff ea                                      b #0x605178
00605470  54 10 8d e2                                      add r1, sp, #0x54
00605474  58 00 8d e2                                      add r0, sp, #0x58
00605478  00 20 a0 e3                                      mov r2, #0
0060547c  1f 03 02 eb                                      bl #0x686100
00605480  20 10 9d e5                                      ldr r1, [sp, #0x20]
00605484  00 30 a0 e3                                      mov r3, #0
00605488  00 30 81 e5                                      str r3, [r1]
0060548c  24 30 8d e5                                      str r3, [sp, #0x24]
00605490  38 ff ff ea                                      b #0x605178
00605494  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00605498  00 30 90 e5                                      ldr r3, [r0]
0060549c  0f e0 a0 e1                                      mov lr, pc
006054a0  28 f0 93 e5                                      ldr pc, [r3, #0x28]
006054a4  00 10 a0 e1                                      mov r1, r0
006054a8  8c 01 9f e5                                      ldr r0, [pc, #0x18c]
006054ac  03 20 a0 e3                                      mov r2, #3
006054b0  00 00 8f e0                                      add r0, pc, r0
006054b4  0b 16 00 eb                                      bl #0x60ace8
006054b8  20 30 9d e5                                      ldr r3, [sp, #0x20]
006054bc  24 40 8d e5                                      str r4, [sp, #0x24]
006054c0  00 40 83 e5                                      str r4, [r3]
006054c4  2b ff ff ea                                      b #0x605178
006054c8  58 00 9d e5                                      ldr r0, [sp, #0x58]
006054cc  28 10 9d e5                                      ldr r1, [sp, #0x28]
006054d0  68 50 8d e2                                      add r5, sp, #0x68
006054d4  06 06 02 eb                                      bl #0x686cf4
006054d8  10 00 35 e5                                      ldr r0, [r5, #-0x10]!
006054dc  04 10 a0 e1                                      mov r1, r4
006054e0  3b 03 02 eb                                      bl #0x6861d4
006054e4  04 20 a0 e1                                      mov r2, r4
006054e8  05 00 a0 e1                                      mov r0, r5
006054ec  54 10 8d e2                                      add r1, sp, #0x54
006054f0  02 03 02 eb                                      bl #0x686100
006054f4  20 30 9d e5                                      ldr r3, [sp, #0x20]
006054f8  24 20 9d e5                                      ldr r2, [sp, #0x24]
006054fc  00 20 83 e5                                      str r2, [r3]
00605500  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
00605504  04 30 9c e5                                      ldr r3, [ip, #4]
00605508  01 30 83 e2                                      add r3, r3, #1
0060550c  04 30 8c e5                                      str r3, [ip, #4]
00605510  c5 ff ff ea                                      b #0x60542c
00605514  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00605518  00 30 90 e5                                      ldr r3, [r0]
0060551c  0f e0 a0 e1                                      mov lr, pc
00605520  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00605524  00 10 a0 e1                                      mov r1, r0
00605528  10 01 9f e5                                      ldr r0, [pc, #0x110]
0060552c  03 20 a0 e3                                      mov r2, #3
00605530  00 00 8f e0                                      add r0, pc, r0
00605534  eb 15 00 eb                                      bl #0x60ace8
00605538  58 00 8d e2                                      add r0, sp, #0x58
0060553c  04 10 a0 e1                                      mov r1, r4
00605540  04 20 a0 e1                                      mov r2, r4
00605544  ed 02 02 eb                                      bl #0x686100
00605548  20 c0 9d e5                                      ldr ip, [sp, #0x20]
0060554c  24 40 8d e5                                      str r4, [sp, #0x24]
00605550  00 40 8c e5                                      str r4, [ip]
00605554  07 ff ff ea                                      b #0x605178
00605558  58 00 9d e5                                      ldr r0, [sp, #0x58]
0060555c  e0 0a 02 eb                                      bl #0x6880e4
00605560  60 ff ff ea                                      b #0x6052e8
00605564  58 00 9d e5                                      ldr r0, [sp, #0x58]
00605568  d5 0a 02 eb                                      bl #0x6880c4
0060556c  56 ff ff ea                                      b #0x6052cc
00605570  58 00 9d e5                                      ldr r0, [sp, #0x58]
00605574  67 39 02 eb                                      bl #0x693b18
00605578  4d ff ff ea                                      b #0x6052b4
0060557c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00605580  00 30 90 e5                                      ldr r3, [r0]
00605584  0f e0 a0 e1                                      mov lr, pc
00605588  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0060558c  00 10 a0 e1                                      mov r1, r0
00605590  ac 00 9f e5                                      ldr r0, [pc, #0xac]
00605594  03 20 a0 e3                                      mov r2, #3
00605598  00 00 8f e0                                      add r0, pc, r0
0060559c  d1 15 00 eb                                      bl #0x60ace8
006055a0  24 10 9d e5                                      ldr r1, [sp, #0x24]
006055a4  58 00 8d e2                                      add r0, sp, #0x58
006055a8  01 20 a0 e1                                      mov r2, r1
006055ac  d3 02 02 eb                                      bl #0x686100
006055b0  24 20 9d e5                                      ldr r2, [sp, #0x24]
006055b4  20 30 9d e5                                      ldr r3, [sp, #0x20]
006055b8  00 20 83 e5                                      str r2, [r3]
006055bc  ed fe ff ea                                      b #0x605178
006055c0  58 00 9d e5                                      ldr r0, [sp, #0x58]
006055c4  a5 0a 02 eb                                      bl #0x688060
006055c8  30 ff ff ea                                      b #0x605290
006055cc  58 00 9d e5                                      ldr r0, [sp, #0x58]
006055d0  63 0a 02 eb                                      bl #0x687f64
006055d4  3f ff ff ea                                      b #0x6052d8
006055d8  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006055dc  00 30 90 e5                                      ldr r3, [r0]
006055e0  0f e0 a0 e1                                      mov lr, pc
006055e4  28 f0 93 e5                                      ldr pc, [r3, #0x28]
006055e8  00 10 a0 e1                                      mov r1, r0
006055ec  54 00 9f e5                                      ldr r0, [pc, #0x54]
006055f0  03 20 a0 e3                                      mov r2, #3
006055f4  00 00 8f e0                                      add r0, pc, r0
006055f8  ba 15 00 eb                                      bl #0x60ace8
006055fc  28 10 9d e5                                      ldr r1, [sp, #0x28]
00605600  58 00 8d e2                                      add r0, sp, #0x58
00605604  01 20 a0 e1                                      mov r2, r1
00605608  bc 02 02 eb                                      bl #0x686100
0060560c  28 30 9d e5                                      ldr r3, [sp, #0x28]
00605610  20 c0 9d e5                                      ldr ip, [sp, #0x20]
00605614  00 30 8c e5                                      str r3, [ip]
00605618  d6 fe ff ea                                      b #0x605178
0060561c  3b 23 f4 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00605620  a8 f9 38 00 ac 40 00 00 70 f6 2d 00 3c f6 2d 00  .byte 0xa8, 0xf9, 0x38, 0x00, 0xac, 0x40, 0x00, 0x00, 0x70, 0xf6, 0x2d, 0x00, 0x3c, 0xf6, 0x2d, 0x00
00605630  6c 04 00 00 d8 2d 00 00 9c f3 2d 00 68 f3 2d 00  .byte 0x6c, 0x04, 0x00, 0x00, 0xd8, 0x2d, 0x00, 0x00, 0x9c, 0xf3, 0x2d, 0x00, 0x68, 0xf3, 0x2d, 0x00
00605640  20 f3 2d 00 28 f3 2d 00 94 f2 2d 00              .byte 0x20, 0xf3, 0x2d, 0x00, 0x28, 0xf3, 0x2d, 0x00, 0x94, 0xf2, 0x2d, 0x00

; Evidence owner: engine | Logs fatal PNG error at engine log level 3, then longjmp(png_struct,1).
; FUNCTION 0x0060564c, declared_size=40, range_size=40, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video12_GLOBAL__N_118png_cpexcept_errorEP14png_struct_defPKc
; demangled: glitch::video::(anonymous namespace)::png_cpexcept_error(png_struct_def*, char const*)
; decoder-mode: arm
0060564c  10 40 2d e9                                      push {r4, lr}
00605650  00 40 a0 e1                                      mov r4, r0
00605654  14 00 9f e5                                      ldr r0, [pc, #0x14]
00605658  03 20 a0 e3                                      mov r2, #3
0060565c  00 00 8f e0                                      add r0, pc, r0
00605660  a0 15 00 eb                                      bl #0x60ace8
00605664  04 00 a0 e1                                      mov r0, r4
00605668  01 10 a0 e3                                      mov r1, #1
0060566c  c0 23 f4 eb                                      bl #0x30e574
; mapping-symbol data/literal pool
00605670  9c f2 2d 00                                      .byte 0x9c, 0xf2, 0x2d, 0x00

; Evidence owner: engine | Suffix fallback compares .png and .PNG.
; FUNCTION 0x00605674, declared_size=96, range_size=96, mode=arm
; class-group: glitch::video::CImageLoaderPng
; alias: _ZNK6glitch5video15CImageLoaderPng24isALoadableFileExtensionEPKc
; demangled: glitch::video::CImageLoaderPng::isALoadableFileExtension(char const*) const
; decoder-mode: arm
00605674  10 40 2d e9                                      push {r4, lr}
00605678  01 00 a0 e1                                      mov r0, r1
0060567c  2e 10 a0 e3                                      mov r1, #0x2e
00605680  67 23 f4 eb                                      bl #0x30e424
00605684  00 40 50 e2                                      subs r4, r0, #0
00605688  0d 00 00 0a                                      beq #0x6056c4
0060568c  38 10 9f e5                                      ldr r1, [pc, #0x38]
00605690  01 10 8f e0                                      add r1, pc, r1
00605694  20 23 f4 eb                                      bl #0x30e31c
00605698  00 00 50 e3                                      cmp r0, #0
0060569c  01 00 00 1a                                      bne #0x6056a8
006056a0  01 00 a0 e3                                      mov r0, #1
006056a4  10 80 bd e8                                      pop {r4, pc}
006056a8  20 10 9f e5                                      ldr r1, [pc, #0x20]
006056ac  04 00 a0 e1                                      mov r0, r4
006056b0  01 10 8f e0                                      add r1, pc, r1
006056b4  18 23 f4 eb                                      bl #0x30e31c
006056b8  01 00 70 e2                                      rsbs r0, r0, #1
006056bc  00 00 a0 33                                      movlo r0, #0
006056c0  10 80 bd e8                                      pop {r4, pc}
006056c4  04 00 a0 e1                                      mov r0, r4
006056c8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006056cc  78 f2 2d 00 60 f2 2d 00                          .byte 0x78, 0xf2, 0x2d, 0x00, 0x60, 0xf2, 0x2d, 0x00

; Evidence owner: engine | Reads requested bytes through IReadFile vtable +0xc; calls png_error on short read.
; FUNCTION 0x006056d4, declared_size=68, range_size=68, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video18user_read_data_fcnEP14png_struct_defPhj
; demangled: glitch::video::user_read_data_fcn(png_struct_def*, unsigned char*, unsigned int)
; decoder-mode: arm
006056d4  70 40 2d e9                                      push {r4, r5, r6, lr}
006056d8  14 31 90 e5                                      ldr r3, [r0, #0x114]
006056dc  00 40 a0 e1                                      mov r4, r0
006056e0  02 50 a0 e1                                      mov r5, r2
006056e4  03 00 a0 e1                                      mov r0, r3
006056e8  00 30 93 e5                                      ldr r3, [r3]
006056ec  0f e0 a0 e1                                      mov lr, pc
006056f0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006056f4  05 00 50 e1                                      cmp r0, r5
006056f8  04 00 00 0a                                      beq #0x605710
006056fc  10 10 9f e5                                      ldr r1, [pc, #0x10]
00605700  04 00 a0 e1                                      mov r0, r4
00605704  01 10 8f e0                                      add r1, pc, r1
00605708  70 40 bd e8                                      pop {r4, r5, r6, lr}
0060570c  b8 fd 01 ea                                      b #0x684df4
00605710  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00605714  14 f2 2d 00                                      .byte 0x14, 0xf2, 0x2d, 0x00

; Evidence owner: engine | Stores format/dimensions and calls initData(true).
; FUNCTION 0x00602110, declared_size=116, range_size=116, mode=arm
; class-group: glitch::video::CImage
; alias: _ZN6glitch5video6CImageC1ENS0_14E_PIXEL_FORMATERKNS_4core11dimension2dIiEE
; demangled: glitch::video::CImage::CImage(glitch::video::E_PIXEL_FORMAT, glitch::core::dimension2d<int> const&)
; decoder-mode: arm
00602110  64 c0 9f e5                                      ldr ip, [pc, #0x64]
00602114  70 40 2d e9                                      push {r4, r5, r6, lr}
00602118  60 e0 9f e5                                      ldr lr, [pc, #0x60]
0060211c  0c c0 8f e0                                      add ip, pc, ip
00602120  00 30 a0 e3                                      mov r3, #0
00602124  0e e0 9c e7                                      ldr lr, [ip, lr]
00602128  04 30 80 e5                                      str r3, [r0, #4]
0060212c  08 30 80 e5                                      str r3, [r0, #8]
00602130  08 e0 8e e2                                      add lr, lr, #8
00602134  00 e0 80 e5                                      str lr, [r0]
00602138  0c 30 80 e5                                      str r3, [r0, #0xc]
0060213c  00 50 92 e5                                      ldr r5, [r2]
00602140  01 e0 a0 e3                                      mov lr, #1
00602144  00 40 a0 e1                                      mov r4, r0
00602148  10 50 80 e5                                      str r5, [r0, #0x10]
0060214c  04 20 92 e5                                      ldr r2, [r2, #4]
00602150  20 10 80 e5                                      str r1, [r0, #0x20]
00602154  28 30 c0 e5                                      strb r3, [r0, #0x28]
00602158  14 20 80 e5                                      str r2, [r0, #0x14]
0060215c  18 30 80 e5                                      str r3, [r0, #0x18]
00602160  1c 30 80 e5                                      str r3, [r0, #0x1c]
00602164  24 30 80 e5                                      str r3, [r0, #0x24]
00602168  29 e0 c0 e5                                      strb lr, [r0, #0x29]
0060216c  0e 10 a0 e1                                      mov r1, lr
00602170  04 fe ff eb                                      bl #0x601988
00602174  04 00 a0 e1                                      mov r0, r4
00602178  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0060217c  74 29 39 00 10 06 00 00                          .byte 0x74, 0x29, 0x39, 0x00, 0x10, 0x06, 0x00, 0x00

; Evidence owner: engine | Computes pitch, allocates base pixels, records dimensions/pitch, initializes optional mip chain.
; FUNCTION 0x00601988, declared_size=392, range_size=392, mode=arm
; class-group: glitch::video::CImage
; alias: _ZN6glitch5video6CImage8initDataEb
; demangled: glitch::video::CImage::initData(bool)
; decoder-mode: arm
00601988  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0060198c  00 40 a0 e1                                      mov r4, r0
00601990  01 50 a0 e1                                      mov r5, r1
00601994  20 00 90 e5                                      ldr r0, [r0, #0x20]
00601998  10 10 94 e5                                      ldr r1, [r4, #0x10]
0060199c  52 b0 ff eb                                      bl #0x5edaec
006019a0  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
006019a4  18 00 84 e5                                      str r0, [r4, #0x18]
006019a8  08 10 94 e5                                      ldr r1, [r4, #8]
006019ac  00 00 53 e3                                      cmp r3, #0
006019b0  14 30 94 05                                      ldreq r3, [r4, #0x14]
006019b4  4c a1 9f e5                                      ldr sl, [pc, #0x14c]
006019b8  93 00 00 00                                      muleq r0, r3, r0
006019bc  0a a0 8f e0                                      add sl, pc, sl
006019c0  1c 00 84 05                                      streq r0, [r4, #0x1c]
006019c4  00 00 51 e3                                      cmp r1, #0
006019c8  4a 00 00 0a                                      beq #0x601af8
006019cc  00 00 55 e3                                      cmp r5, #0
006019d0  07 00 00 0a                                      beq #0x6019f4
006019d4  28 30 d4 e5                                      ldrb r3, [r4, #0x28]
006019d8  00 20 a0 e3                                      mov r2, #0
006019dc  24 20 84 e5                                      str r2, [r4, #0x24]
006019e0  02 00 53 e1                                      cmp r3, r2
006019e4  02 00 00 0a                                      beq #0x6019f4
006019e8  0c 30 94 e5                                      ldr r3, [r4, #0xc]
006019ec  02 00 53 e1                                      cmp r3, r2
006019f0  00 00 00 0a                                      beq #0x6019f8
006019f4  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
006019f8  10 20 94 e5                                      ldr r2, [r4, #0x10]
006019fc  14 30 94 e5                                      ldr r3, [r4, #0x14]
00601a00  01 00 52 e3                                      cmp r2, #1
00601a04  01 00 53 03                                      cmpeq r3, #1
00601a08  04 00 a0 03                                      moveq r0, #4
00601a0c  0b 00 00 0a                                      beq #0x601a40
00601a10  01 00 a0 e3                                      mov r0, #1
00601a14  01 00 52 e3                                      cmp r2, #1
00601a18  a2 20 a0 81                                      lsrhi r2, r2, #1
00601a1c  01 00 53 e3                                      cmp r3, #1
00601a20  a3 30 a0 81                                      lsrhi r3, r3, #1
00601a24  01 00 52 e3                                      cmp r2, #1
00601a28  01 00 53 03                                      cmpeq r3, #1
00601a2c  01 00 80 e2                                      add r0, r0, #1
00601a30  f7 ff ff 1a                                      bne #0x601a14
00601a34  01 30 40 e2                                      sub r3, r0, #1
00601a38  24 30 84 e5                                      str r3, [r4, #0x24]
00601a3c  00 01 a0 e1                                      lsl r0, r0, #2
00601a40  00 10 a0 e3                                      mov r1, #0
00601a44  d7 c9 fc eb                                      bl #0x5341a8
00601a48  10 60 94 e5                                      ldr r6, [r4, #0x10]
00601a4c  14 50 94 e5                                      ldr r5, [r4, #0x14]
00601a50  00 b0 a0 e1                                      mov fp, r0
00601a54  0c 00 84 e5                                      str r0, [r4, #0xc]
00601a58  01 00 55 e3                                      cmp r5, #1
00601a5c  01 00 56 03                                      cmpeq r6, #1
00601a60  00 70 a0 03                                      moveq r7, #0
00601a64  01 70 a0 13                                      movne r7, #1
00601a68  1f 00 00 0a                                      beq #0x601aec
00601a6c  98 30 9f e5                                      ldr r3, [pc, #0x98]
00601a70  00 80 a0 e3                                      mov r8, #0
00601a74  08 70 a0 e1                                      mov r7, r8
00601a78  03 a0 9a e7                                      ldr sl, [sl, r3]
00601a7c  00 00 00 ea                                      b #0x601a84
00601a80  0c b0 94 e5                                      ldr fp, [r4, #0xc]
00601a84  20 30 94 e5                                      ldr r3, [r4, #0x20]
00601a88  28 20 a0 e3                                      mov r2, #0x28
00601a8c  01 00 56 e3                                      cmp r6, #1
00601a90  92 a3 23 e0                                      mla r3, r2, r3, sl
00601a94  a6 60 a0 81                                      lsrhi r6, r6, #1
00601a98  15 90 d3 e5                                      ldrb sb, [r3, #0x15]
00601a9c  01 00 55 e3                                      cmp r5, #1
00601aa0  a5 50 a0 81                                      lsrhi r5, r5, #1
00601aa4  99 06 09 e0                                      mul sb, sb, r6
00601aa8  00 10 a0 e3                                      mov r1, #0
00601aac  95 09 09 e0                                      mul sb, r5, sb
00601ab0  09 00 a0 e1                                      mov r0, sb
00601ab4  bb c9 fc eb                                      bl #0x5341a8
00601ab8  07 01 8b e7                                      str r0, [fp, r7, lsl #2]
00601abc  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00601ac0  08 10 a0 e1                                      mov r1, r8
00601ac4  09 20 a0 e1                                      mov r2, sb
00601ac8  07 01 93 e7                                      ldr r0, [r3, r7, lsl #2]
00601acc  63 32 f4 eb                                      bl #0x30e460
00601ad0  01 00 56 e3                                      cmp r6, #1
00601ad4  01 00 55 03                                      cmpeq r5, #1
00601ad8  01 70 87 e2                                      add r7, r7, #1
00601adc  0f 80 88 e2                                      add r8, r8, #0xf
00601ae0  e6 ff ff 1a                                      bne #0x601a80
00601ae4  0c b0 94 e5                                      ldr fp, [r4, #0xc]
00601ae8  07 71 a0 e1                                      lsl r7, r7, #2
00601aec  00 30 a0 e3                                      mov r3, #0
00601af0  07 30 8b e7                                      str r3, [fp, r7]
00601af4  be ff ff ea                                      b #0x6019f4
00601af8  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
00601afc  a9 c9 fc eb                                      bl #0x5341a8
00601b00  08 00 84 e5                                      str r0, [r4, #8]
00601b04  b0 ff ff ea                                      b #0x6019cc
; mapping-symbol data/literal pool
00601b08  d4 30 39 00 34 1f 00 00                          .byte 0xd4, 0x30, 0x39, 0x00, 0x34, 0x1f, 0x00, 0x00

; Evidence owner: engine | Computes row pitch from PFDTable bit-depth and packed type fields.
; FUNCTION 0x005edaec, declared_size=92, range_size=92, mode=arm
; class-group: glitch::video::pixel_format
; alias: _ZN6glitch5video12pixel_format12computePitchENS0_14E_PIXEL_FORMATEj
; demangled: glitch::video::pixel_format::computePitch(glitch::video::E_PIXEL_FORMAT, unsigned int)
; decoder-mode: arm
005edaec  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
005edaf0  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
005edaf4  10 40 2d e9                                      push {r4, lr}
005edaf8  03 30 8f e0                                      add r3, pc, r3
005edafc  02 20 93 e7                                      ldr r2, [r3, r2]
005edb00  28 40 a0 e3                                      mov r4, #0x28
005edb04  94 20 24 e0                                      mla r4, r4, r0, r2
005edb08  24 30 d4 e5                                      ldrb r3, [r4, #0x24]
005edb0c  01 00 53 e3                                      cmp r3, #1
005edb10  06 00 00 9a                                      bls #0x5edb30
005edb14  01 00 43 e2                                      sub r0, r3, #1
005edb18  01 00 80 e0                                      add r0, r0, r1
005edb1c  03 10 a0 e1                                      mov r1, r3
005edb20  49 84 f4 eb                                      bl #0x30ec4c
005edb24  15 10 d4 e5                                      ldrb r1, [r4, #0x15]
005edb28  91 00 00 e0                                      mul r0, r1, r0
005edb2c  10 80 bd e8                                      pop {r4, pc}
005edb30  16 00 d4 e5                                      ldrb r0, [r4, #0x16]
005edb34  90 01 01 e0                                      mul r1, r0, r1
005edb38  a1 01 a0 e1                                      lsr r0, r1, #3
005edb3c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
005edb40  98 6f 3a 00 34 1f 00 00                          .byte 0x98, 0x6f, 0x3a, 0x00, 0x34, 0x1f, 0x00, 0x00

; Evidence owner: embedded-libpng | PNG signature comparison called by engine probe and loadImage.
; FUNCTION 0x006841d4, declared_size=168, range_size=168, mode=arm
; class-group: global-functions
; alias: png_sig_cmp
; demangled: png_sig_cmp
; decoder-mode: arm
006841d4  70 40 2d e9                                      push {r4, r5, r6, lr}
006841d8  90 40 9f e5                                      ldr r4, [pc, #0x90]
006841dc  90 50 9f e5                                      ldr r5, [pc, #0x90]
006841e0  90 30 9f e5                                      ldr r3, [pc, #0x90]
006841e4  04 40 8f e0                                      add r4, pc, r4
006841e8  05 60 94 e7                                      ldr r6, [r4, r5]
006841ec  03 30 8f e0                                      add r3, pc, r3
006841f0  04 c0 93 e5                                      ldr ip, [r3, #4]
006841f4  00 60 96 e5                                      ldr r6, [r6]
006841f8  00 30 93 e5                                      ldr r3, [r3]
006841fc  10 d0 4d e2                                      sub sp, sp, #0x10
00684200  08 00 52 e3                                      cmp r2, #8
00684204  04 30 8d e5                                      str r3, [sp, #4]
00684208  0c 60 8d e5                                      str r6, [sp, #0xc]
0068420c  08 c0 8d e5                                      str ip, [sp, #8]
00684210  01 30 a0 e1                                      mov r3, r1
00684214  08 20 a0 83                                      movhi r2, #8
00684218  09 00 00 8a                                      bhi #0x684244
0068421c  00 00 52 e3                                      cmp r2, #0
00684220  07 00 00 1a                                      bne #0x684244
00684224  00 00 e0 e3                                      mvn r0, #0
00684228  05 30 94 e7                                      ldr r3, [r4, r5]
0068422c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00684230  00 30 93 e5                                      ldr r3, [r3]
00684234  03 00 52 e1                                      cmp r2, r3
00684238  0b 00 00 1a                                      bne #0x68426c
0068423c  10 d0 8d e2                                      add sp, sp, #0x10
00684240  70 80 bd e8                                      pop {r4, r5, r6, pc}
00684244  07 00 53 e3                                      cmp r3, #7
00684248  f5 ff ff 8a                                      bhi #0x684224
0068424c  03 10 82 e0                                      add r1, r2, r3
00684250  08 00 51 e3                                      cmp r1, #8
00684254  04 10 8d e2                                      add r1, sp, #4
00684258  08 20 63 82                                      rsbhi r2, r3, #8
0068425c  03 10 81 e0                                      add r1, r1, r3
00684260  03 00 80 e0                                      add r0, r0, r3
00684264  dd 28 f2 eb                                      bl #0x30e5e0
00684268  ee ff ff ea                                      b #0x684228
0068426c  27 28 f2 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00684270  ac 08 31 00 ac 40 00 00 cc 3d 26 00              .byte 0xac, 0x08, 0x31, 0x00, 0xac, 0x40, 0x00, 0x00, 0xcc, 0x3d, 0x26, 0x00

; Evidence owner: embedded-libpng | Creates libpng read struct with engine error callback.
; FUNCTION 0x00687e4c, declared_size=36, range_size=36, mode=arm
; class-group: global-functions
; alias: png_create_read_struct
; demangled: png_create_read_struct
; decoder-mode: arm
00687e4c  04 e0 2d e5                                      str lr, [sp, #-4]!
00687e50  00 c0 a0 e3                                      mov ip, #0
00687e54  14 d0 4d e2                                      sub sp, sp, #0x14
00687e58  08 c0 8d e5                                      str ip, [sp, #8]
00687e5c  00 c0 8d e5                                      str ip, [sp]
00687e60  04 c0 8d e5                                      str ip, [sp, #4]
00687e64  0c ff ff eb                                      bl #0x687a9c
00687e68  14 d0 8d e2                                      add sp, sp, #0x14
00687e6c  00 80 bd e8                                      ldm sp!, {pc}

; Evidence owner: embedded-libpng | Creates info struct.
; FUNCTION 0x00684a24, declared_size=72, range_size=72, mode=arm
; class-group: global-functions
; alias: png_create_info_struct
; demangled: png_create_info_struct
; decoder-mode: arm
00684a24  04 e0 2d e5                                      str lr, [sp, #-4]!
00684a28  00 30 50 e2                                      subs r3, r0, #0
00684a2c  0c d0 4d e2                                      sub sp, sp, #0xc
00684a30  03 00 a0 01                                      moveq r0, r3
00684a34  0a 00 00 0a                                      beq #0x684a64
00684a38  04 23 93 e5                                      ldr r2, [r3, #0x304]
00684a3c  02 00 a0 e3                                      mov r0, #2
00684a40  08 13 93 e5                                      ldr r1, [r3, #0x308]
00684a44  dc 04 00 eb                                      bl #0x685dbc
00684a48  00 00 50 e3                                      cmp r0, #0
00684a4c  04 00 8d e5                                      str r0, [sp, #4]
00684a50  03 00 00 0a                                      beq #0x684a64
00684a54  04 00 8d e2                                      add r0, sp, #4
00684a58  12 1e a0 e3                                      mov r1, #0x120
00684a5c  af ff ff eb                                      bl #0x684920
00684a60  04 00 9d e5                                      ldr r0, [sp, #4]
00684a64  0c d0 8d e2                                      add sp, sp, #0xc
00684a68  00 80 bd e8                                      ldm sp!, {pc}

; Evidence owner: embedded-libpng | Stores file context at png_struct+0x114 and callback at +0x110.
; FUNCTION 0x00687e70, declared_size=132, range_size=132, mode=arm
; class-group: global-functions
; alias: png_set_read_fn
; demangled: png_set_read_fn
; decoder-mode: arm
00687e70  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
00687e74  10 40 2d e9                                      push {r4, lr}
00687e78  00 40 50 e2                                      subs r4, r0, #0
00687e7c  03 30 8f e0                                      add r3, pc, r3
00687e80  12 00 00 0a                                      beq #0x687ed0
00687e84  00 00 52 e3                                      cmp r2, #0
00687e88  14 11 84 e5                                      str r1, [r4, #0x114]
00687e8c  10 21 84 15                                      strne r2, [r4, #0x110]
00687e90  0f 00 00 0a                                      beq #0x687ed4
00687e94  0c 31 94 e5                                      ldr r3, [r4, #0x10c]
00687e98  00 00 53 e3                                      cmp r3, #0
00687e9c  09 00 00 0a                                      beq #0x687ec8
00687ea0  40 10 9f e5                                      ldr r1, [pc, #0x40]
00687ea4  00 30 a0 e3                                      mov r3, #0
00687ea8  04 00 a0 e1                                      mov r0, r4
00687eac  01 10 8f e0                                      add r1, pc, r1
00687eb0  0c 31 84 e5                                      str r3, [r4, #0x10c]
00687eb4  58 f3 ff eb                                      bl #0x684c1c
00687eb8  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
00687ebc  04 00 a0 e1                                      mov r0, r4
00687ec0  01 10 8f e0                                      add r1, pc, r1
00687ec4  54 f3 ff eb                                      bl #0x684c1c
00687ec8  00 30 a0 e3                                      mov r3, #0
00687ecc  0c 32 84 e5                                      str r3, [r4, #0x20c]
00687ed0  10 80 bd e8                                      pop {r4, pc}
00687ed4  14 20 9f e5                                      ldr r2, [pc, #0x14]
00687ed8  02 30 93 e7                                      ldr r3, [r3, r2]
00687edc  10 31 84 e5                                      str r3, [r4, #0x110]
00687ee0  eb ff ff ea                                      b #0x687e94
; mapping-symbol data/literal pool
00687ee4  14 cc 30 00 6c 08 26 00 a0 08 26 00 54 22 00 00  .byte 0x14, 0xcc, 0x30, 0x00, 0x6c, 0x08, 0x26, 0x00, 0xa0, 0x08, 0x26, 0x00, 0x54, 0x22, 0x00, 0x00

; Evidence owner: embedded-libpng | Marks eight signature bytes as already consumed.
; FUNCTION 0x00684ad4, declared_size=56, range_size=56, mode=arm
; class-group: global-functions
; alias: png_set_sig_bytes
; demangled: png_set_sig_bytes
; decoder-mode: arm
00684ad4  70 40 2d e9                                      push {r4, r5, r6, lr}
00684ad8  00 50 50 e2                                      subs r5, r0, #0
00684adc  01 40 a0 e1                                      mov r4, r1
00684ae0  03 00 00 0a                                      beq #0x684af4
00684ae4  08 00 51 e3                                      cmp r1, #8
00684ae8  02 00 00 ca                                      bgt #0x684af8
00684aec  c4 4f c4 e1                                      bic r4, r4, r4, asr #31
00684af0  ec 41 c5 e5                                      strb r4, [r5, #0x1ec]
00684af4  70 80 bd e8                                      pop {r4, r5, r6, pc}
00684af8  08 10 9f e5                                      ldr r1, [pc, #8]
00684afc  01 10 8f e0                                      add r1, pc, r1
00684b00  bb 00 00 eb                                      bl #0x684df4
00684b04  f8 ff ff ea                                      b #0x684aec
; mapping-symbol data/literal pool
00684b08  2c 37 26 00                                      .byte 0x2c, 0x37, 0x26, 0x00

; Evidence owner: embedded-libpng | Parses PNG header/chunk metadata via configured callback.
; FUNCTION 0x00686e68, declared_size=1728, range_size=1728, mode=arm
; class-group: global-functions
; alias: png_read_info
; demangled: png_read_info
; decoder-mode: arm
00686e68  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00686e6c  48 56 9f e5                                      ldr r5, [pc, #0x648]
00686e70  00 00 50 e3                                      cmp r0, #0
00686e74  00 00 51 13                                      cmpne r1, #0
00686e78  2c d0 4d e2                                      sub sp, sp, #0x2c
00686e7c  05 50 8f e0                                      add r5, pc, r5
00686e80  01 a0 a0 e1                                      mov sl, r1
00686e84  00 60 a0 e1                                      mov r6, r0
00686e88  e7 00 00 0a                                      beq #0x68722c
00686e8c  ec 41 d0 e5                                      ldrb r4, [r0, #0x1ec]
00686e90  07 00 54 e3                                      cmp r4, #7
00686e94  1d 01 00 9a                                      bls #0x687310
00686e98  20 36 9f e5                                      ldr r3, [pc, #0x620]
00686e9c  20 86 9f e5                                      ldr r8, [pc, #0x620]
00686ea0  20 96 9f e5                                      ldr sb, [pc, #0x620]
00686ea4  00 30 8d e5                                      str r3, [sp]
00686ea8  1c 36 9f e5                                      ldr r3, [pc, #0x61c]
00686eac  1c b6 9f e5                                      ldr fp, [pc, #0x61c]
00686eb0  77 4f 86 e2                                      add r4, r6, #0x1dc
00686eb4  04 30 8d e5                                      str r3, [sp, #4]
00686eb8  14 36 9f e5                                      ldr r3, [pc, #0x614]
00686ebc  08 30 8d e5                                      str r3, [sp, #8]
00686ec0  10 36 9f e5                                      ldr r3, [pc, #0x610]
00686ec4  0c 30 8d e5                                      str r3, [sp, #0xc]
00686ec8  0c 36 9f e5                                      ldr r3, [pc, #0x60c]
00686ecc  10 30 8d e5                                      str r3, [sp, #0x10]
00686ed0  08 36 9f e5                                      ldr r3, [pc, #0x608]
00686ed4  14 30 8d e5                                      str r3, [sp, #0x14]
00686ed8  04 36 9f e5                                      ldr r3, [pc, #0x604]
00686edc  18 30 8d e5                                      str r3, [sp, #0x18]
00686ee0  00 36 9f e5                                      ldr r3, [pc, #0x600]
00686ee4  1c 30 8d e5                                      str r3, [sp, #0x1c]
00686ee8  fc 35 9f e5                                      ldr r3, [pc, #0x5fc]
00686eec  20 30 8d e5                                      str r3, [sp, #0x20]
00686ef0  f8 35 9f e5                                      ldr r3, [pc, #0x5f8]
00686ef4  24 30 8d e5                                      str r3, [sp, #0x24]
00686ef8  06 00 a0 e1                                      mov r0, r6
00686efc  d9 2b 00 eb                                      bl #0x691e68
00686f00  08 10 95 e7                                      ldr r1, [r5, r8]
00686f04  00 70 a0 e1                                      mov r7, r0
00686f08  04 20 a0 e3                                      mov r2, #4
00686f0c  04 00 a0 e1                                      mov r0, r4
00686f10  b2 1d f2 eb                                      bl #0x30e5e0
00686f14  00 00 50 e3                                      cmp r0, #0
00686f18  03 00 00 1a                                      bne #0x686f2c
00686f1c  28 31 96 e5                                      ldr r3, [r6, #0x128]
00686f20  08 00 13 e3                                      tst r3, #8
00686f24  02 3a 83 13                                      orrne r3, r3, #0x2000
00686f28  28 31 86 15                                      strne r3, [r6, #0x128]
00686f2c  04 00 a0 e1                                      mov r0, r4
00686f30  09 10 95 e7                                      ldr r1, [r5, sb]
00686f34  04 20 a0 e3                                      mov r2, #4
00686f38  a8 1d f2 eb                                      bl #0x30e5e0
00686f3c  00 00 50 e3                                      cmp r0, #0
00686f40  21 00 00 0a                                      beq #0x686fcc
00686f44  04 00 a0 e1                                      mov r0, r4
00686f48  0b 10 95 e7                                      ldr r1, [r5, fp]
00686f4c  04 20 a0 e3                                      mov r2, #4
00686f50  a2 1d f2 eb                                      bl #0x30e5e0
00686f54  00 00 50 e3                                      cmp r0, #0
00686f58  a2 00 00 0a                                      beq #0x6871e8
00686f5c  06 00 a0 e1                                      mov r0, r6
00686f60  04 10 a0 e1                                      mov r1, r4
00686f64  7c f4 ff eb                                      bl #0x68415c
00686f68  00 00 50 e3                                      cmp r0, #0
00686f6c  1b 00 00 0a                                      beq #0x686fe0
00686f70  08 10 95 e7                                      ldr r1, [r5, r8]
00686f74  04 20 a0 e3                                      mov r2, #4
00686f78  04 00 a0 e1                                      mov r0, r4
00686f7c  97 1d f2 eb                                      bl #0x30e5e0
00686f80  00 00 50 e3                                      cmp r0, #0
00686f84  28 31 96 05                                      ldreq r3, [r6, #0x128]
00686f88  07 20 a0 e1                                      mov r2, r7
00686f8c  0a 10 a0 e1                                      mov r1, sl
00686f90  04 30 83 03                                      orreq r3, r3, #4
00686f94  28 31 86 05                                      streq r3, [r6, #0x128]
00686f98  06 00 a0 e1                                      mov r0, r6
00686f9c  33 21 00 eb                                      bl #0x68f470
00686fa0  00 30 9d e5                                      ldr r3, [sp]
00686fa4  04 00 a0 e1                                      mov r0, r4
00686fa8  04 20 a0 e3                                      mov r2, #4
00686fac  03 10 95 e7                                      ldr r1, [r5, r3]
00686fb0  8a 1d f2 eb                                      bl #0x30e5e0
00686fb4  00 00 50 e3                                      cmp r0, #0
00686fb8  8f 00 00 1a                                      bne #0x6871fc
00686fbc  28 31 96 e5                                      ldr r3, [r6, #0x128]
00686fc0  02 30 83 e3                                      orr r3, r3, #2
00686fc4  28 31 86 e5                                      str r3, [r6, #0x128]
00686fc8  ca ff ff ea                                      b #0x686ef8
00686fcc  07 20 a0 e1                                      mov r2, r7
00686fd0  06 00 a0 e1                                      mov r0, r6
00686fd4  0a 10 a0 e1                                      mov r1, sl
00686fd8  34 2b 00 eb                                      bl #0x691cb0
00686fdc  c5 ff ff ea                                      b #0x686ef8
00686fe0  00 30 9d e5                                      ldr r3, [sp]
00686fe4  04 00 a0 e1                                      mov r0, r4
00686fe8  04 20 a0 e3                                      mov r2, #4
00686fec  03 10 95 e7                                      ldr r1, [r5, r3]
00686ff0  7a 1d f2 eb                                      bl #0x30e5e0
00686ff4  00 00 50 e3                                      cmp r0, #0
00686ff8  8d 00 00 0a                                      beq #0x687234
00686ffc  04 00 a0 e1                                      mov r0, r4
00687000  08 10 95 e7                                      ldr r1, [r5, r8]
00687004  04 20 a0 e3                                      mov r2, #4
00687008  74 1d f2 eb                                      bl #0x30e5e0
0068700c  00 00 50 e3                                      cmp r0, #0
00687010  af 00 00 0a                                      beq #0x6872d4
00687014  04 30 9d e5                                      ldr r3, [sp, #4]
00687018  04 00 a0 e1                                      mov r0, r4
0068701c  04 20 a0 e3                                      mov r2, #4
00687020  03 10 95 e7                                      ldr r1, [r5, r3]
00687024  6d 1d f2 eb                                      bl #0x30e5e0
00687028  00 00 50 e3                                      cmp r0, #0
0068702c  85 00 00 0a                                      beq #0x687248
00687030  08 30 9d e5                                      ldr r3, [sp, #8]
00687034  04 00 a0 e1                                      mov r0, r4
00687038  04 20 a0 e3                                      mov r2, #4
0068703c  03 10 95 e7                                      ldr r1, [r5, r3]
00687040  66 1d f2 eb                                      bl #0x30e5e0
00687044  00 00 50 e3                                      cmp r0, #0
00687048  83 00 00 0a                                      beq #0x68725c
0068704c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00687050  04 00 a0 e1                                      mov r0, r4
00687054  04 20 a0 e3                                      mov r2, #4
00687058  03 10 95 e7                                      ldr r1, [r5, r3]
0068705c  5f 1d f2 eb                                      bl #0x30e5e0
00687060  00 00 50 e3                                      cmp r0, #0
00687064  81 00 00 0a                                      beq #0x687270
00687068  10 30 9d e5                                      ldr r3, [sp, #0x10]
0068706c  04 00 a0 e1                                      mov r0, r4
00687070  04 20 a0 e3                                      mov r2, #4
00687074  03 10 95 e7                                      ldr r1, [r5, r3]
00687078  58 1d f2 eb                                      bl #0x30e5e0
0068707c  00 00 50 e3                                      cmp r0, #0
00687080  7f 00 00 0a                                      beq #0x687284
00687084  14 30 9d e5                                      ldr r3, [sp, #0x14]
00687088  04 00 a0 e1                                      mov r0, r4
0068708c  04 20 a0 e3                                      mov r2, #4
00687090  03 10 95 e7                                      ldr r1, [r5, r3]
00687094  51 1d f2 eb                                      bl #0x30e5e0
00687098  00 00 50 e3                                      cmp r0, #0
0068709c  7d 00 00 0a                                      beq #0x687298
006870a0  18 30 9d e5                                      ldr r3, [sp, #0x18]
006870a4  04 00 a0 e1                                      mov r0, r4
006870a8  04 20 a0 e3                                      mov r2, #4
006870ac  03 10 95 e7                                      ldr r1, [r5, r3]
006870b0  4a 1d f2 eb                                      bl #0x30e5e0
006870b4  00 00 50 e3                                      cmp r0, #0
006870b8  80 00 00 0a                                      beq #0x6872c0
006870bc  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006870c0  04 00 a0 e1                                      mov r0, r4
006870c4  04 20 a0 e3                                      mov r2, #4
006870c8  03 10 95 e7                                      ldr r1, [r5, r3]
006870cc  43 1d f2 eb                                      bl #0x30e5e0
006870d0  00 00 50 e3                                      cmp r0, #0
006870d4  88 00 00 0a                                      beq #0x6872fc
006870d8  20 30 9d e5                                      ldr r3, [sp, #0x20]
006870dc  04 00 a0 e1                                      mov r0, r4
006870e0  04 20 a0 e3                                      mov r2, #4
006870e4  03 10 95 e7                                      ldr r1, [r5, r3]
006870e8  3c 1d f2 eb                                      bl #0x30e5e0
006870ec  00 00 50 e3                                      cmp r0, #0
006870f0  6d 00 00 0a                                      beq #0x6872ac
006870f4  24 30 9d e5                                      ldr r3, [sp, #0x24]
006870f8  04 00 a0 e1                                      mov r0, r4
006870fc  04 20 a0 e3                                      mov r2, #4
00687100  03 10 95 e7                                      ldr r1, [r5, r3]
00687104  35 1d f2 eb                                      bl #0x30e5e0
00687108  00 00 50 e3                                      cmp r0, #0
0068710c  b8 00 00 0a                                      beq #0x6873f4
00687110  dc 33 9f e5                                      ldr r3, [pc, #0x3dc]
00687114  04 00 a0 e1                                      mov r0, r4
00687118  04 20 a0 e3                                      mov r2, #4
0068711c  03 10 95 e7                                      ldr r1, [r5, r3]
00687120  2e 1d f2 eb                                      bl #0x30e5e0
00687124  00 00 50 e3                                      cmp r0, #0
00687128  b6 00 00 0a                                      beq #0x687408
0068712c  c4 33 9f e5                                      ldr r3, [pc, #0x3c4]
00687130  04 00 a0 e1                                      mov r0, r4
00687134  04 20 a0 e3                                      mov r2, #4
00687138  03 10 95 e7                                      ldr r1, [r5, r3]
0068713c  27 1d f2 eb                                      bl #0x30e5e0
00687140  00 00 50 e3                                      cmp r0, #0
00687144  9c 00 00 0a                                      beq #0x6873bc
00687148  ac 33 9f e5                                      ldr r3, [pc, #0x3ac]
0068714c  04 00 a0 e1                                      mov r0, r4
00687150  04 20 a0 e3                                      mov r2, #4
00687154  03 10 95 e7                                      ldr r1, [r5, r3]
00687158  20 1d f2 eb                                      bl #0x30e5e0
0068715c  00 00 50 e3                                      cmp r0, #0
00687160  bc 00 00 0a                                      beq #0x687458
00687164  94 33 9f e5                                      ldr r3, [pc, #0x394]
00687168  04 00 a0 e1                                      mov r0, r4
0068716c  04 20 a0 e3                                      mov r2, #4
00687170  03 10 95 e7                                      ldr r1, [r5, r3]
00687174  19 1d f2 eb                                      bl #0x30e5e0
00687178  00 00 50 e3                                      cmp r0, #0
0068717c  bf 00 00 0a                                      beq #0x687480
00687180  7c 33 9f e5                                      ldr r3, [pc, #0x37c]
00687184  04 00 a0 e1                                      mov r0, r4
00687188  04 20 a0 e3                                      mov r2, #4
0068718c  03 10 95 e7                                      ldr r1, [r5, r3]
00687190  12 1d f2 eb                                      bl #0x30e5e0
00687194  00 00 50 e3                                      cmp r0, #0
00687198  bd 00 00 0a                                      beq #0x687494
0068719c  64 33 9f e5                                      ldr r3, [pc, #0x364]
006871a0  04 00 a0 e1                                      mov r0, r4
006871a4  04 20 a0 e3                                      mov r2, #4
006871a8  03 10 95 e7                                      ldr r1, [r5, r3]
006871ac  0b 1d f2 eb                                      bl #0x30e5e0
006871b0  00 00 50 e3                                      cmp r0, #0
006871b4  ac 00 00 0a                                      beq #0x68746c
006871b8  4c 33 9f e5                                      ldr r3, [pc, #0x34c]
006871bc  04 00 a0 e1                                      mov r0, r4
006871c0  04 20 a0 e3                                      mov r2, #4
006871c4  03 10 95 e7                                      ldr r1, [r5, r3]
006871c8  04 1d f2 eb                                      bl #0x30e5e0
006871cc  00 00 50 e3                                      cmp r0, #0
006871d0  b4 00 00 1a                                      bne #0x6874a8
006871d4  07 20 a0 e1                                      mov r2, r7
006871d8  06 00 a0 e1                                      mov r0, r6
006871dc  0a 10 a0 e1                                      mov r1, sl
006871e0  0a 21 00 eb                                      bl #0x68f610
006871e4  43 ff ff ea                                      b #0x686ef8
006871e8  07 20 a0 e1                                      mov r2, r7
006871ec  06 00 a0 e1                                      mov r0, r6
006871f0  0a 10 a0 e1                                      mov r1, sl
006871f4  b1 1f 00 eb                                      bl #0x68f0c0
006871f8  3e ff ff ea                                      b #0x686ef8
006871fc  04 00 a0 e1                                      mov r0, r4
00687200  08 10 95 e7                                      ldr r1, [r5, r8]
00687204  04 20 a0 e3                                      mov r2, #4
00687208  f4 1c f2 eb                                      bl #0x30e5e0
0068720c  00 00 50 e3                                      cmp r0, #0
00687210  38 ff ff 1a                                      bne #0x686ef8
00687214  28 31 96 e5                                      ldr r3, [r6, #0x128]
00687218  01 00 13 e3                                      tst r3, #1
0068721c  87 00 00 0a                                      beq #0x687440
00687220  e6 21 d6 e5                                      ldrb r2, [r6, #0x1e6]
00687224  03 00 52 e3                                      cmp r2, #3
00687228  5b 00 00 0a                                      beq #0x68739c
0068722c  2c d0 8d e2                                      add sp, sp, #0x2c
00687230  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00687234  07 20 a0 e1                                      mov r2, r7
00687238  06 00 a0 e1                                      mov r0, r6
0068723c  0a 10 a0 e1                                      mov r1, sl
00687240  0e 2a 00 eb                                      bl #0x691a80
00687244  2b ff ff ea                                      b #0x686ef8
00687248  07 20 a0 e1                                      mov r2, r7
0068724c  06 00 a0 e1                                      mov r0, r6
00687250  0a 10 a0 e1                                      mov r1, sl
00687254  88 24 00 eb                                      bl #0x69047c
00687258  26 ff ff ea                                      b #0x686ef8
0068725c  07 20 a0 e1                                      mov r2, r7
00687260  06 00 a0 e1                                      mov r0, r6
00687264  0a 10 a0 e1                                      mov r1, sl
00687268  c8 27 00 eb                                      bl #0x691190
0068726c  21 ff ff ea                                      b #0x686ef8
00687270  07 20 a0 e1                                      mov r2, r7
00687274  06 00 a0 e1                                      mov r0, r6
00687278  0a 10 a0 e1                                      mov r1, sl
0068727c  84 29 00 eb                                      bl #0x691894
00687280  1c ff ff ea                                      b #0x686ef8
00687284  07 20 a0 e1                                      mov r2, r7
00687288  06 00 a0 e1                                      mov r0, r6
0068728c  0a 10 a0 e1                                      mov r1, sl
00687290  19 24 00 eb                                      bl #0x6902fc
00687294  17 ff ff ea                                      b #0x686ef8
00687298  07 20 a0 e1                                      mov r2, r7
0068729c  06 00 a0 e1                                      mov r0, r6
006872a0  0a 10 a0 e1                                      mov r1, sl
006872a4  66 23 00 eb                                      bl #0x690044
006872a8  12 ff ff ea                                      b #0x686ef8
006872ac  07 20 a0 e1                                      mov r2, r7
006872b0  06 00 a0 e1                                      mov r0, r6
006872b4  0a 10 a0 e1                                      mov r1, sl
006872b8  b8 23 00 eb                                      bl #0x6901a0
006872bc  0d ff ff ea                                      b #0x686ef8
006872c0  07 20 a0 e1                                      mov r2, r7
006872c4  06 00 a0 e1                                      mov r0, r6
006872c8  0a 10 a0 e1                                      mov r1, sl
006872cc  91 22 00 eb                                      bl #0x68fd18
006872d0  08 ff ff ea                                      b #0x686ef8
006872d4  28 31 96 e5                                      ldr r3, [r6, #0x128]
006872d8  01 00 13 e3                                      tst r3, #1
006872dc  4e 00 00 0a                                      beq #0x68741c
006872e0  e6 21 d6 e5                                      ldrb r2, [r6, #0x1e6]
006872e4  03 00 52 e3                                      cmp r2, #3
006872e8  23 00 00 0a                                      beq #0x68737c
006872ec  04 30 83 e3                                      orr r3, r3, #4
006872f0  28 31 86 e5                                      str r3, [r6, #0x128]
006872f4  cc 71 86 e5                                      str r7, [r6, #0x1cc]
006872f8  cb ff ff ea                                      b #0x68722c
006872fc  07 20 a0 e1                                      mov r2, r7
00687300  06 00 a0 e1                                      mov r0, r6
00687304  0a 10 a0 e1                                      mov r1, sl
00687308  ec 21 00 eb                                      bl #0x68fac0
0068730c  f9 fe ff ea                                      b #0x686ef8
00687310  08 70 64 e2                                      rsb r7, r4, #8
00687314  20 10 84 e2                                      add r1, r4, #0x20
00687318  01 10 8a e0                                      add r1, sl, r1
0068731c  07 20 a0 e1                                      mov r2, r7
00687320  04 03 00 eb                                      bl #0x687f38
00687324  20 80 8a e2                                      add r8, sl, #0x20
00687328  08 30 a0 e3                                      mov r3, #8
0068732c  ec 31 c6 e5                                      strb r3, [r6, #0x1ec]
00687330  08 00 a0 e1                                      mov r0, r8
00687334  04 10 a0 e1                                      mov r1, r4
00687338  07 20 a0 e1                                      mov r2, r7
0068733c  a4 f3 ff eb                                      bl #0x6841d4
00687340  00 00 50 e3                                      cmp r0, #0
00687344  25 00 00 0a                                      beq #0x6873e0
00687348  03 00 54 e3                                      cmp r4, #3
0068734c  1f 00 00 8a                                      bhi #0x6873d0
00687350  08 00 a0 e1                                      mov r0, r8
00687354  04 20 47 e2                                      sub r2, r7, #4
00687358  04 10 a0 e1                                      mov r1, r4
0068735c  9c f3 ff eb                                      bl #0x6841d4
00687360  00 00 50 e3                                      cmp r0, #0
00687364  19 00 00 0a                                      beq #0x6873d0
00687368  a0 11 9f e5                                      ldr r1, [pc, #0x1a0]
0068736c  06 00 a0 e1                                      mov r0, r6
00687370  01 10 8f e0                                      add r1, pc, r1
00687374  9e f6 ff eb                                      bl #0x684df4
00687378  18 00 00 ea                                      b #0x6873e0
0068737c  02 00 13 e3                                      tst r3, #2
00687380  d9 ff ff 1a                                      bne #0x6872ec
00687384  88 11 9f e5                                      ldr r1, [pc, #0x188]
00687388  06 00 a0 e1                                      mov r0, r6
0068738c  01 10 8f e0                                      add r1, pc, r1
00687390  97 f6 ff eb                                      bl #0x684df4
00687394  28 31 96 e5                                      ldr r3, [r6, #0x128]
00687398  d3 ff ff ea                                      b #0x6872ec
0068739c  02 00 13 e3                                      tst r3, #2
006873a0  a1 ff ff 1a                                      bne #0x68722c
006873a4  6c 11 9f e5                                      ldr r1, [pc, #0x16c]
006873a8  06 00 a0 e1                                      mov r0, r6
006873ac  01 10 8f e0                                      add r1, pc, r1
006873b0  2c d0 8d e2                                      add sp, sp, #0x2c
006873b4  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006873b8  8d f6 ff ea                                      b #0x684df4
006873bc  07 20 a0 e1                                      mov r2, r7
006873c0  06 00 a0 e1                                      mov r0, r6
006873c4  0a 10 a0 e1                                      mov r1, sl
006873c8  35 26 00 eb                                      bl #0x690ca4
006873cc  c9 fe ff ea                                      b #0x686ef8
006873d0  44 11 9f e5                                      ldr r1, [pc, #0x144]
006873d4  06 00 a0 e1                                      mov r0, r6
006873d8  01 10 8f e0                                      add r1, pc, r1
006873dc  84 f6 ff eb                                      bl #0x684df4
006873e0  02 00 54 e3                                      cmp r4, #2
006873e4  28 31 96 95                                      ldrls r3, [r6, #0x128]
006873e8  01 3a 83 93                                      orrls r3, r3, #0x1000
006873ec  28 31 86 95                                      strls r3, [r6, #0x128]
006873f0  a8 fe ff ea                                      b #0x686e98
006873f4  07 20 a0 e1                                      mov r2, r7
006873f8  06 00 a0 e1                                      mov r0, r6
006873fc  0a 10 a0 e1                                      mov r1, sl
00687400  bf 28 00 eb                                      bl #0x691704
00687404  bb fe ff ea                                      b #0x686ef8
00687408  07 20 a0 e1                                      mov r2, r7
0068740c  06 00 a0 e1                                      mov r0, r6
00687410  0a 10 a0 e1                                      mov r1, sl
00687414  c3 26 00 eb                                      bl #0x690f28
00687418  b6 fe ff ea                                      b #0x686ef8
0068741c  fc 10 9f e5                                      ldr r1, [pc, #0xfc]
00687420  06 00 a0 e1                                      mov r0, r6
00687424  01 10 8f e0                                      add r1, pc, r1
00687428  71 f6 ff eb                                      bl #0x684df4
0068742c  28 31 96 e5                                      ldr r3, [r6, #0x128]
00687430  cc 71 86 e5                                      str r7, [r6, #0x1cc]
00687434  04 30 83 e3                                      orr r3, r3, #4
00687438  28 31 86 e5                                      str r3, [r6, #0x128]
0068743c  7a ff ff ea                                      b #0x68722c
00687440  dc 10 9f e5                                      ldr r1, [pc, #0xdc]
00687444  06 00 a0 e1                                      mov r0, r6
00687448  01 10 8f e0                                      add r1, pc, r1
0068744c  2c d0 8d e2                                      add sp, sp, #0x2c
00687450  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00687454  66 f6 ff ea                                      b #0x684df4
00687458  07 20 a0 e1                                      mov r2, r7
0068745c  06 00 a0 e1                                      mov r0, r6
00687460  0a 10 a0 e1                                      mov r1, sl
00687464  47 25 00 eb                                      bl #0x690988
00687468  a2 fe ff ea                                      b #0x686ef8
0068746c  07 20 a0 e1                                      mov r2, r7
00687470  06 00 a0 e1                                      mov r0, r6
00687474  0a 10 a0 e1                                      mov r1, sl
00687478  8b 24 00 eb                                      bl #0x6906ac
0068747c  9d fe ff ea                                      b #0x686ef8
00687480  07 20 a0 e1                                      mov r2, r7
00687484  06 00 a0 e1                                      mov r0, r6
00687488  0a 10 a0 e1                                      mov r1, sl
0068748c  e5 20 00 eb                                      bl #0x68f828
00687490  98 fe ff ea                                      b #0x686ef8
00687494  07 20 a0 e1                                      mov r2, r7
00687498  06 00 a0 e1                                      mov r0, r6
0068749c  0a 10 a0 e1                                      mov r1, sl
006874a0  3f 21 00 eb                                      bl #0x68f9a4
006874a4  93 fe ff ea                                      b #0x686ef8
006874a8  07 20 a0 e1                                      mov r2, r7
006874ac  06 00 a0 e1                                      mov r0, r6
006874b0  0a 10 a0 e1                                      mov r1, sl
006874b4  ed 1f 00 eb                                      bl #0x68f470
006874b8  8e fe ff ea                                      b #0x686ef8
; mapping-symbol data/literal pool
006874bc  14 dc 30 00 18 18 00 00 48 4b 00 00 f8 3d 00 00  .byte 0x14, 0xdc, 0x30, 0x00, 0x18, 0x18, 0x00, 0x00, 0x48, 0x4b, 0x00, 0x00, 0xf8, 0x3d, 0x00, 0x00
006874cc  64 32 00 00 70 26 00 00 e0 2d 00 00 60 31 00 00  .byte 0x64, 0x32, 0x00, 0x00, 0x70, 0x26, 0x00, 0x00, 0xe0, 0x2d, 0x00, 0x00, 0x60, 0x31, 0x00, 0x00
006874dc  0c 3d 00 00 78 20 00 00 3c 2a 00 00 48 08 00 00  .byte 0x0c, 0x3d, 0x00, 0x00, 0x78, 0x20, 0x00, 0x00, 0x3c, 0x2a, 0x00, 0x00, 0x48, 0x08, 0x00, 0x00
006874ec  70 07 00 00 fc 26 00 00 6c 15 00 00 1c 40 00 00  .byte 0x70, 0x07, 0x00, 0x00, 0xfc, 0x26, 0x00, 0x00, 0x6c, 0x15, 0x00, 0x00, 0x1c, 0x40, 0x00, 0x00
006874fc  10 3b 00 00 88 08 00 00 cc 08 00 00 68 19 00 00  .byte 0x10, 0x3b, 0x00, 0x00, 0x88, 0x08, 0x00, 0x00, 0xcc, 0x08, 0x00, 0x00, 0x68, 0x19, 0x00, 0x00
0068750c  28 23 00 00 f8 10 26 00 34 11 26 00 14 11 26 00  .byte 0x28, 0x23, 0x00, 0x00, 0xf8, 0x10, 0x26, 0x00, 0x34, 0x11, 0x26, 0x00, 0x14, 0x11, 0x26, 0x00
0068751c  a0 10 26 00 7c 10 26 00 58 10 26 00              .byte 0xa0, 0x10, 0x26, 0x00, 0x7c, 0x10, 0x26, 0x00, 0x58, 0x10, 0x26, 0x00

; Evidence owner: embedded-libpng | Reads header fields before and after transform registration.
; FUNCTION 0x00685ab8, declared_size=388, range_size=388, mode=arm
; class-group: global-functions
; alias: png_get_IHDR
; demangled: png_get_IHDR
; decoder-mode: arm
00685ab8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00685abc  00 00 51 e3                                      cmp r1, #0
00685ac0  00 00 50 13                                      cmpne r0, #0
00685ac4  0c d0 4d e2                                      sub sp, sp, #0xc
00685ac8  01 40 a0 e1                                      mov r4, r1
00685acc  28 10 8d e2                                      add r1, sp, #0x28
00685ad0  62 01 91 e8                                      ldm r1, {r1, r5, r6, r8}
00685ad4  38 70 9d e5                                      ldr r7, [sp, #0x38]
00685ad8  00 a0 a0 e1                                      mov sl, r0
00685adc  2b 00 00 0a                                      beq #0x685b90
00685ae0  00 00 53 e3                                      cmp r3, #0
00685ae4  00 00 52 13                                      cmpne r2, #0
00685ae8  28 00 00 0a                                      beq #0x685b90
00685aec  00 00 55 e3                                      cmp r5, #0
00685af0  00 00 51 13                                      cmpne r1, #0
00685af4  25 00 00 0a                                      beq #0x685b90
00685af8  00 c0 94 e5                                      ldr ip, [r4]
00685afc  00 c0 82 e5                                      str ip, [r2]
00685b00  04 c0 94 e5                                      ldr ip, [r4, #4]
00685b04  00 c0 83 e5                                      str ip, [r3]
00685b08  18 c0 d4 e5                                      ldrb ip, [r4, #0x18]
00685b0c  00 c0 81 e5                                      str ip, [r1]
00685b10  18 10 d4 e5                                      ldrb r1, [r4, #0x18]
00685b14  01 10 41 e2                                      sub r1, r1, #1
00685b18  71 10 ef e6                                      uxtb r1, r1
00685b1c  0f 00 51 e3                                      cmp r1, #0xf
00685b20  2c 00 00 8a                                      bhi #0x685bd8
00685b24  19 10 d4 e5                                      ldrb r1, [r4, #0x19]
00685b28  00 10 85 e5                                      str r1, [r5]
00685b2c  19 10 d4 e5                                      ldrb r1, [r4, #0x19]
00685b30  06 00 51 e3                                      cmp r1, #6
00685b34  1e 00 00 8a                                      bhi #0x685bb4
00685b38  00 00 58 e3                                      cmp r8, #0
00685b3c  1a 10 d4 15                                      ldrbne r1, [r4, #0x1a]
00685b40  00 10 88 15                                      strne r1, [r8]
00685b44  00 00 57 e3                                      cmp r7, #0
00685b48  1b 10 d4 15                                      ldrbne r1, [r4, #0x1b]
00685b4c  00 10 87 15                                      strne r1, [r7]
00685b50  00 00 56 e3                                      cmp r6, #0
00685b54  1c 10 d4 15                                      ldrbne r1, [r4, #0x1c]
00685b58  00 10 86 15                                      strne r1, [r6]
00685b5c  00 20 92 e5                                      ldr r2, [r2]
00685b60  00 00 52 e3                                      cmp r2, #0
00685b64  28 00 00 da                                      ble #0x685c0c
00685b68  00 30 93 e5                                      ldr r3, [r3]
00685b6c  00 00 53 e3                                      cmp r3, #0
00685b70  20 00 00 da                                      ble #0x685bf8
00685b74  00 20 94 e5                                      ldr r2, [r4]
00685b78  02 32 a0 e3                                      mov r3, #0x20000000
00685b7c  82 30 43 e2                                      sub r3, r3, #0x82
00685b80  03 00 52 e1                                      cmp r2, r3
00685b84  04 00 00 8a                                      bhi #0x685b9c
00685b88  01 00 a0 e3                                      mov r0, #1
00685b8c  00 00 00 ea                                      b #0x685b94
00685b90  00 00 a0 e3                                      mov r0, #0
00685b94  0c d0 8d e2                                      add sp, sp, #0xc
00685b98  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00685b9c  84 10 9f e5                                      ldr r1, [pc, #0x84]
00685ba0  0a 00 a0 e1                                      mov r0, sl
00685ba4  01 10 8f e0                                      add r1, pc, r1
00685ba8  1b fc ff eb                                      bl #0x684c1c
00685bac  01 00 a0 e3                                      mov r0, #1
00685bb0  f7 ff ff ea                                      b #0x685b94
00685bb4  70 10 9f e5                                      ldr r1, [pc, #0x70]
00685bb8  0a 00 a0 e1                                      mov r0, sl
00685bbc  04 20 8d e5                                      str r2, [sp, #4]
00685bc0  01 10 8f e0                                      add r1, pc, r1
00685bc4  00 30 8d e5                                      str r3, [sp]
00685bc8  89 fc ff eb                                      bl #0x684df4
00685bcc  00 30 9d e5                                      ldr r3, [sp]
00685bd0  04 20 9d e5                                      ldr r2, [sp, #4]
00685bd4  d7 ff ff ea                                      b #0x685b38
00685bd8  50 10 9f e5                                      ldr r1, [pc, #0x50]
00685bdc  04 20 8d e5                                      str r2, [sp, #4]
00685be0  00 30 8d e5                                      str r3, [sp]
00685be4  01 10 8f e0                                      add r1, pc, r1
00685be8  81 fc ff eb                                      bl #0x684df4
00685bec  00 30 9d e5                                      ldr r3, [sp]
00685bf0  04 20 9d e5                                      ldr r2, [sp, #4]
00685bf4  ca ff ff ea                                      b #0x685b24
00685bf8  34 10 9f e5                                      ldr r1, [pc, #0x34]
00685bfc  0a 00 a0 e1                                      mov r0, sl
00685c00  01 10 8f e0                                      add r1, pc, r1
00685c04  7a fc ff eb                                      bl #0x684df4
00685c08  d9 ff ff ea                                      b #0x685b74
00685c0c  24 10 9f e5                                      ldr r1, [pc, #0x24]
00685c10  0a 00 a0 e1                                      mov r0, sl
00685c14  00 30 8d e5                                      str r3, [sp]
00685c18  01 10 8f e0                                      add r1, pc, r1
00685c1c  74 fc ff eb                                      bl #0x684df4
00685c20  00 30 9d e5                                      ldr r3, [sp]
00685c24  cf ff ff ea                                      b #0x685b68
; mapping-symbol data/literal pool
00685c28  ac 27 26 00 48 27 26 00 0c 27 26 00 38 27 26 00  .byte 0xac, 0x27, 0x26, 0x00, 0x48, 0x27, 0x26, 0x00, 0x0c, 0x27, 0x26, 0x00, 0x38, 0x27, 0x26, 0x00
00685c38  08 27 26 00                                      .byte 0x08, 0x27, 0x26, 0x00

; Evidence owner: embedded-libpng | Registers palette expansion.
; FUNCTION 0x00688060, declared_size=40, range_size=40, mode=arm
; class-group: global-functions
; alias: png_set_palette_to_rgb
; demangled: png_set_palette_to_rgb
; decoder-mode: arm
00688060  00 00 50 e3                                      cmp r0, #0
00688064  1e ff 2f 01                                      bxeq lr
00688068  30 31 90 e5                                      ldr r3, [r0, #0x130]
0068806c  2c 21 90 e5                                      ldr r2, [r0, #0x12c]
00688070  02 34 83 e3                                      orr r3, r3, #0x2000000
00688074  01 3a 83 e3                                      orr r3, r3, #0x1000
00688078  40 20 c2 e3                                      bic r2, r2, #0x40
0068807c  2c 21 80 e5                                      str r2, [r0, #0x12c]
00688080  30 31 80 e5                                      str r3, [r0, #0x130]
00688084  1e ff 2f e1                                      bx lr

; Evidence owner: embedded-libpng | Registers low-bit-depth grayscale expansion.
; FUNCTION 0x006880ac, declared_size=24, range_size=24, mode=arm
; class-group: global-functions
; alias: png_set_gray_1_2_4_to_8
; demangled: png_set_gray_1_2_4_to_8
; decoder-mode: arm
006880ac  00 00 50 e3                                      cmp r0, #0
006880b0  30 31 90 15                                      ldrne r3, [r0, #0x130]
006880b4  02 34 83 13                                      orrne r3, r3, #0x2000000
006880b8  01 3a 83 13                                      orrne r3, r3, #0x1000
006880bc  30 31 80 15                                      strne r3, [r0, #0x130]
006880c0  1e ff 2f e1                                      bx lr

; Evidence owner: embedded-libpng | Registers unpacking for other low-bit-depth color forms.
; FUNCTION 0x00693b18, declared_size=40, range_size=40, mode=arm
; class-group: global-functions
; alias: png_set_packing
; demangled: png_set_packing
; decoder-mode: arm
00693b18  00 00 50 e3                                      cmp r0, #0
00693b1c  1e ff 2f 01                                      bxeq lr
00693b20  e7 31 d0 e5                                      ldrb r3, [r0, #0x1e7]
00693b24  07 00 53 e3                                      cmp r3, #7
00693b28  30 31 90 95                                      ldrls r3, [r0, #0x130]
00693b2c  08 20 a0 93                                      movls r2, #8
00693b30  e8 21 c0 95                                      strbls r2, [r0, #0x1e8]
00693b34  04 30 83 93                                      orrls r3, r3, #4
00693b38  30 31 80 95                                      strls r3, [r0, #0x130]
00693b3c  1e ff 2f e1                                      bx lr

; Evidence owner: embedded-libpng | Tests tRNS validity flag 0x10.
; FUNCTION 0x00685054, declared_size=28, range_size=28, mode=arm
; class-group: global-functions
; alias: png_get_valid
; demangled: png_get_valid
; decoder-mode: arm
00685054  00 00 51 e3                                      cmp r1, #0
00685058  00 00 50 13                                      cmpne r0, #0
0068505c  00 00 a0 03                                      moveq r0, #0
00685060  01 00 a0 13                                      movne r0, #1
00685064  08 00 91 15                                      ldrne r0, [r1, #8]
00685068  00 00 02 10                                      andne r0, r2, r0
0068506c  1e ff 2f e1                                      bx lr

; Evidence owner: embedded-libpng | Registers tRNS-to-alpha expansion.
; FUNCTION 0x006880c4, declared_size=32, range_size=32, mode=arm
; class-group: global-functions
; alias: png_set_tRNS_to_alpha
; demangled: png_set_tRNS_to_alpha
; decoder-mode: arm
006880c4  30 31 90 e5                                      ldr r3, [r0, #0x130]
006880c8  2c 21 90 e5                                      ldr r2, [r0, #0x12c]
006880cc  02 34 83 e3                                      orr r3, r3, #0x2000000
006880d0  01 3a 83 e3                                      orr r3, r3, #0x1000
006880d4  40 20 c2 e3                                      bic r2, r2, #0x40
006880d8  2c 21 80 e5                                      str r2, [r0, #0x12c]
006880dc  30 31 80 e5                                      str r3, [r0, #0x130]
006880e0  1e ff 2f e1                                      bx lr

; Evidence owner: embedded-libpng | Registers 16-bit sample stripping.
; FUNCTION 0x00687f64, declared_size=20, range_size=20, mode=arm
; class-group: global-functions
; alias: png_set_strip_16
; demangled: png_set_strip_16
; decoder-mode: arm
00687f64  00 00 50 e3                                      cmp r0, #0
00687f68  30 31 90 15                                      ldrne r3, [r0, #0x130]
00687f6c  01 3b 83 13                                      orrne r3, r3, #0x400
00687f70  30 31 80 15                                      strne r3, [r0, #0x130]
00687f74  1e ff 2f e1                                      bx lr

; Evidence owner: embedded-libpng | Registers grayscale to RGB conversion.
; FUNCTION 0x006880e4, declared_size=28, range_size=28, mode=arm
; class-group: global-functions
; alias: png_set_gray_to_rgb
; demangled: png_set_gray_to_rgb
; decoder-mode: arm
006880e4  30 31 90 e5                                      ldr r3, [r0, #0x130]
006880e8  2c 21 90 e5                                      ldr r2, [r0, #0x12c]
006880ec  01 39 83 e3                                      orr r3, r3, #0x4000
006880f0  40 20 c2 e3                                      bic r2, r2, #0x40
006880f4  2c 21 80 e5                                      str r2, [r0, #0x12c]
006880f8  30 31 80 e5                                      str r3, [r0, #0x130]
006880fc  1e ff 2f e1                                      bx lr

; Evidence owner: embedded-libpng | Updates output row layout after transformations.
; FUNCTION 0x00686e20, declared_size=72, range_size=72, mode=arm
; class-group: global-functions
; alias: png_read_update_info
; demangled: png_read_update_info
; decoder-mode: arm
00686e20  70 40 2d e9                                      push {r4, r5, r6, lr}
00686e24  00 40 50 e2                                      subs r4, r0, #0
00686e28  01 50 a0 e1                                      mov r5, r1
00686e2c  0b 00 00 0a                                      beq #0x686e60
00686e30  2c 31 94 e5                                      ldr r3, [r4, #0x12c]
00686e34  40 00 13 e3                                      tst r3, #0x40
00686e38  06 00 00 0a                                      beq #0x686e58
00686e3c  20 10 9f e5                                      ldr r1, [pc, #0x20]
00686e40  01 10 8f e0                                      add r1, pc, r1
00686e44  74 f7 ff eb                                      bl #0x684c1c
00686e48  04 00 a0 e1                                      mov r0, r4
00686e4c  05 10 a0 e1                                      mov r1, r5
00686e50  70 40 bd e8                                      pop {r4, r5, r6, lr}
00686e54  af 04 00 ea                                      b #0x688118
00686e58  b4 1b 00 eb                                      bl #0x68dd30
00686e5c  f9 ff ff ea                                      b #0x686e48
00686e60  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00686e64  e0 15 26 00                                      .byte 0xe0, 0x15, 0x26, 0x00

; Evidence owner: embedded-libpng | Reads rows using engine-provided row pointer table.
; FUNCTION 0x00686cf4, declared_size=96, range_size=96, mode=arm
; class-group: global-functions
; alias: png_read_image
; demangled: png_read_image
; decoder-mode: arm
00686cf4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00686cf8  00 60 50 e2                                      subs r6, r0, #0
00686cfc  01 70 a0 e1                                      mov r7, r1
00686d00  12 00 00 0a                                      beq #0x686d50
00686d04  a0 33 00 eb                                      bl #0x693b8c
00686d08  8c 51 96 e5                                      ldr r5, [r6, #0x18c]
00686d0c  00 a0 50 e2                                      subs sl, r0, #0
00686d10  00 80 a0 c3                                      movgt r8, #0
00686d14  90 51 86 e5                                      str r5, [r6, #0x190]
00686d18  0c 00 00 da                                      ble #0x686d50
00686d1c  00 00 55 e3                                      cmp r5, #0
00686d20  00 40 a0 13                                      movne r4, #0
00686d24  06 00 00 0a                                      beq #0x686d44
00686d28  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
00686d2c  06 00 a0 e1                                      mov r0, r6
00686d30  01 40 84 e2                                      add r4, r4, #1
00686d34  00 20 a0 e3                                      mov r2, #0
00686d38  93 fe ff eb                                      bl #0x68678c
00686d3c  05 00 54 e1                                      cmp r4, r5
00686d40  f8 ff ff 1a                                      bne #0x686d28
00686d44  01 80 88 e2                                      add r8, r8, #1
00686d48  0a 00 58 e1                                      cmp r8, sl
00686d4c  f2 ff ff 1a                                      bne #0x686d1c
00686d50  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; Evidence owner: embedded-libpng | Reads/validates end of image stream.
; FUNCTION 0x006861d4, declared_size=1440, range_size=1440, mode=arm
; class-group: global-functions
; alias: png_read_end
; demangled: png_read_end
; decoder-mode: arm
006861d4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006861d8  38 55 9f e5                                      ldr r5, [pc, #0x538]
006861dc  00 40 50 e2                                      subs r4, r0, #0
006861e0  1c d0 4d e2                                      sub sp, sp, #0x1c
006861e4  01 a0 a0 e1                                      mov sl, r1
006861e8  05 50 8f e0                                      add r5, pc, r5
006861ec  4b 00 00 0a                                      beq #0x686320
006861f0  00 10 a0 e3                                      mov r1, #0
006861f4  7e 23 00 eb                                      bl #0x68eff4
006861f8  1c 35 9f e5                                      ldr r3, [pc, #0x51c]
006861fc  1c 85 9f e5                                      ldr r8, [pc, #0x51c]
00686200  1c 95 9f e5                                      ldr sb, [pc, #0x51c]
00686204  04 30 8d e5                                      str r3, [sp, #4]
00686208  18 35 9f e5                                      ldr r3, [pc, #0x518]
0068620c  18 b5 9f e5                                      ldr fp, [pc, #0x518]
00686210  77 6f 84 e2                                      add r6, r4, #0x1dc
00686214  08 30 8d e5                                      str r3, [sp, #8]
00686218  10 35 9f e5                                      ldr r3, [pc, #0x510]
0068621c  14 30 8d e5                                      str r3, [sp, #0x14]
00686220  0c 35 9f e5                                      ldr r3, [pc, #0x50c]
00686224  03 30 8f e0                                      add r3, pc, r3
00686228  0c 30 8d e5                                      str r3, [sp, #0xc]
0068622c  04 35 9f e5                                      ldr r3, [pc, #0x504]
00686230  03 30 8f e0                                      add r3, pc, r3
00686234  10 30 8d e5                                      str r3, [sp, #0x10]
00686238  06 00 00 ea                                      b #0x686258
0068623c  07 20 a0 e1                                      mov r2, r7
00686240  04 00 a0 e1                                      mov r0, r4
00686244  0a 10 a0 e1                                      mov r1, sl
00686248  9c 23 00 eb                                      bl #0x68f0c0
0068624c  28 31 94 e5                                      ldr r3, [r4, #0x128]
00686250  10 00 13 e3                                      tst r3, #0x10
00686254  31 00 00 1a                                      bne #0x686320
00686258  04 00 a0 e1                                      mov r0, r4
0068625c  01 2f 00 eb                                      bl #0x691e68
00686260  08 10 95 e7                                      ldr r1, [r5, r8]
00686264  00 70 a0 e1                                      mov r7, r0
00686268  04 20 a0 e3                                      mov r2, #4
0068626c  06 00 a0 e1                                      mov r0, r6
00686270  da 20 f2 eb                                      bl #0x30e5e0
00686274  00 00 50 e3                                      cmp r0, #0
00686278  2a 00 00 0a                                      beq #0x686328
0068627c  06 00 a0 e1                                      mov r0, r6
00686280  09 10 95 e7                                      ldr r1, [r5, sb]
00686284  04 20 a0 e3                                      mov r2, #4
00686288  d4 20 f2 eb                                      bl #0x30e5e0
0068628c  00 00 50 e3                                      cmp r0, #0
00686290  e9 ff ff 0a                                      beq #0x68623c
00686294  04 00 a0 e1                                      mov r0, r4
00686298  06 10 a0 e1                                      mov r1, r6
0068629c  ae f7 ff eb                                      bl #0x68415c
006862a0  00 00 50 e3                                      cmp r0, #0
006862a4  25 00 00 0a                                      beq #0x686340
006862a8  06 00 a0 e1                                      mov r0, r6
006862ac  0b 10 95 e7                                      ldr r1, [r5, fp]
006862b0  04 20 a0 e3                                      mov r2, #4
006862b4  c9 20 f2 eb                                      bl #0x30e5e0
006862b8  00 00 50 e3                                      cmp r0, #0
006862bc  07 00 00 1a                                      bne #0x6862e0
006862c0  00 00 57 e3                                      cmp r7, #0
006862c4  02 00 00 1a                                      bne #0x6862d4
006862c8  28 31 94 e5                                      ldr r3, [r4, #0x128]
006862cc  02 0a 13 e3                                      tst r3, #0x2000
006862d0  02 00 00 0a                                      beq #0x6862e0
006862d4  04 00 a0 e1                                      mov r0, r4
006862d8  10 10 9d e5                                      ldr r1, [sp, #0x10]
006862dc  c4 fa ff eb                                      bl #0x684df4
006862e0  07 20 a0 e1                                      mov r2, r7
006862e4  0a 10 a0 e1                                      mov r1, sl
006862e8  04 00 a0 e1                                      mov r0, r4
006862ec  5f 24 00 eb                                      bl #0x68f470
006862f0  04 30 9d e5                                      ldr r3, [sp, #4]
006862f4  06 00 a0 e1                                      mov r0, r6
006862f8  04 20 a0 e3                                      mov r2, #4
006862fc  03 10 95 e7                                      ldr r1, [r5, r3]
00686300  b6 20 f2 eb                                      bl #0x30e5e0
00686304  00 00 50 e3                                      cmp r0, #0
00686308  93 00 00 1a                                      bne #0x68655c
0068630c  28 31 94 e5                                      ldr r3, [r4, #0x128]
00686310  02 30 83 e3                                      orr r3, r3, #2
00686314  10 00 13 e3                                      tst r3, #0x10
00686318  28 31 84 e5                                      str r3, [r4, #0x128]
0068631c  cd ff ff 0a                                      beq #0x686258
00686320  1c d0 8d e2                                      add sp, sp, #0x1c
00686324  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00686328  07 20 a0 e1                                      mov r2, r7
0068632c  04 00 a0 e1                                      mov r0, r4
00686330  0a 10 a0 e1                                      mov r1, sl
00686334  5d 2e 00 eb                                      bl #0x691cb0
00686338  28 31 94 e5                                      ldr r3, [r4, #0x128]
0068633c  c3 ff ff ea                                      b #0x686250
00686340  06 00 a0 e1                                      mov r0, r6
00686344  0b 10 95 e7                                      ldr r1, [r5, fp]
00686348  04 20 a0 e3                                      mov r2, #4
0068634c  a3 20 f2 eb                                      bl #0x30e5e0
00686350  00 00 50 e3                                      cmp r0, #0
00686354  82 00 00 0a                                      beq #0x686564
00686358  04 30 9d e5                                      ldr r3, [sp, #4]
0068635c  06 00 a0 e1                                      mov r0, r6
00686360  04 20 a0 e3                                      mov r2, #4
00686364  03 10 95 e7                                      ldr r1, [r5, r3]
00686368  9c 20 f2 eb                                      bl #0x30e5e0
0068636c  00 00 50 e3                                      cmp r0, #0
00686370  8e 00 00 0a                                      beq #0x6865b0
00686374  08 30 9d e5                                      ldr r3, [sp, #8]
00686378  06 00 a0 e1                                      mov r0, r6
0068637c  04 20 a0 e3                                      mov r2, #4
00686380  03 10 95 e7                                      ldr r1, [r5, r3]
00686384  95 20 f2 eb                                      bl #0x30e5e0
00686388  00 00 50 e3                                      cmp r0, #0
0068638c  8d 00 00 0a                                      beq #0x6865c8
00686390  14 30 9d e5                                      ldr r3, [sp, #0x14]
00686394  06 00 a0 e1                                      mov r0, r6
00686398  04 20 a0 e3                                      mov r2, #4
0068639c  03 10 95 e7                                      ldr r1, [r5, r3]
006863a0  8e 20 f2 eb                                      bl #0x30e5e0
006863a4  00 00 50 e3                                      cmp r0, #0
006863a8  7a 00 00 0a                                      beq #0x686598
006863ac  88 33 9f e5                                      ldr r3, [pc, #0x388]
006863b0  06 00 a0 e1                                      mov r0, r6
006863b4  04 20 a0 e3                                      mov r2, #4
006863b8  03 10 95 e7                                      ldr r1, [r5, r3]
006863bc  87 20 f2 eb                                      bl #0x30e5e0
006863c0  00 00 50 e3                                      cmp r0, #0
006863c4  85 00 00 0a                                      beq #0x6865e0
006863c8  70 33 9f e5                                      ldr r3, [pc, #0x370]
006863cc  06 00 a0 e1                                      mov r0, r6
006863d0  04 20 a0 e3                                      mov r2, #4
006863d4  03 10 95 e7                                      ldr r1, [r5, r3]
006863d8  80 20 f2 eb                                      bl #0x30e5e0
006863dc  00 00 50 e3                                      cmp r0, #0
006863e0  8a 00 00 0a                                      beq #0x686610
006863e4  58 33 9f e5                                      ldr r3, [pc, #0x358]
006863e8  06 00 a0 e1                                      mov r0, r6
006863ec  04 20 a0 e3                                      mov r2, #4
006863f0  03 10 95 e7                                      ldr r1, [r5, r3]
006863f4  79 20 f2 eb                                      bl #0x30e5e0
006863f8  00 00 50 e3                                      cmp r0, #0
006863fc  89 00 00 0a                                      beq #0x686628
00686400  40 33 9f e5                                      ldr r3, [pc, #0x340]
00686404  06 00 a0 e1                                      mov r0, r6
00686408  04 20 a0 e3                                      mov r2, #4
0068640c  03 10 95 e7                                      ldr r1, [r5, r3]
00686410  72 20 f2 eb                                      bl #0x30e5e0
00686414  00 00 50 e3                                      cmp r0, #0
00686418  76 00 00 0a                                      beq #0x6865f8
0068641c  28 33 9f e5                                      ldr r3, [pc, #0x328]
00686420  06 00 a0 e1                                      mov r0, r6
00686424  04 20 a0 e3                                      mov r2, #4
00686428  03 10 95 e7                                      ldr r1, [r5, r3]
0068642c  6b 20 f2 eb                                      bl #0x30e5e0
00686430  00 00 50 e3                                      cmp r0, #0
00686434  81 00 00 0a                                      beq #0x686640
00686438  10 33 9f e5                                      ldr r3, [pc, #0x310]
0068643c  06 00 a0 e1                                      mov r0, r6
00686440  04 20 a0 e3                                      mov r2, #4
00686444  03 10 95 e7                                      ldr r1, [r5, r3]
00686448  64 20 f2 eb                                      bl #0x30e5e0
0068644c  00 00 50 e3                                      cmp r0, #0
00686450  80 00 00 0a                                      beq #0x686658
00686454  f8 32 9f e5                                      ldr r3, [pc, #0x2f8]
00686458  06 00 a0 e1                                      mov r0, r6
0068645c  04 20 a0 e3                                      mov r2, #4
00686460  03 10 95 e7                                      ldr r1, [r5, r3]
00686464  5d 20 f2 eb                                      bl #0x30e5e0
00686468  00 00 50 e3                                      cmp r0, #0
0068646c  7f 00 00 0a                                      beq #0x686670
00686470  e0 32 9f e5                                      ldr r3, [pc, #0x2e0]
00686474  06 00 a0 e1                                      mov r0, r6
00686478  04 20 a0 e3                                      mov r2, #4
0068647c  03 10 95 e7                                      ldr r1, [r5, r3]
00686480  56 20 f2 eb                                      bl #0x30e5e0
00686484  00 00 50 e3                                      cmp r0, #0
00686488  7e 00 00 0a                                      beq #0x686688
0068648c  c8 32 9f e5                                      ldr r3, [pc, #0x2c8]
00686490  06 00 a0 e1                                      mov r0, r6
00686494  04 20 a0 e3                                      mov r2, #4
00686498  03 10 95 e7                                      ldr r1, [r5, r3]
0068649c  4f 20 f2 eb                                      bl #0x30e5e0
006864a0  00 00 50 e3                                      cmp r0, #0
006864a4  7d 00 00 0a                                      beq #0x6866a0
006864a8  b0 32 9f e5                                      ldr r3, [pc, #0x2b0]
006864ac  06 00 a0 e1                                      mov r0, r6
006864b0  04 20 a0 e3                                      mov r2, #4
006864b4  03 10 95 e7                                      ldr r1, [r5, r3]
006864b8  48 20 f2 eb                                      bl #0x30e5e0
006864bc  00 00 50 e3                                      cmp r0, #0
006864c0  7c 00 00 0a                                      beq #0x6866b8
006864c4  98 32 9f e5                                      ldr r3, [pc, #0x298]
006864c8  06 00 a0 e1                                      mov r0, r6
006864cc  04 20 a0 e3                                      mov r2, #4
006864d0  03 10 95 e7                                      ldr r1, [r5, r3]
006864d4  41 20 f2 eb                                      bl #0x30e5e0
006864d8  00 00 50 e3                                      cmp r0, #0
006864dc  7b 00 00 0a                                      beq #0x6866d0
006864e0  80 32 9f e5                                      ldr r3, [pc, #0x280]
006864e4  06 00 a0 e1                                      mov r0, r6
006864e8  04 20 a0 e3                                      mov r2, #4
006864ec  03 10 95 e7                                      ldr r1, [r5, r3]
006864f0  3a 20 f2 eb                                      bl #0x30e5e0
006864f4  00 00 50 e3                                      cmp r0, #0
006864f8  7a 00 00 0a                                      beq #0x6866e8
006864fc  68 32 9f e5                                      ldr r3, [pc, #0x268]
00686500  06 00 a0 e1                                      mov r0, r6
00686504  04 20 a0 e3                                      mov r2, #4
00686508  03 10 95 e7                                      ldr r1, [r5, r3]
0068650c  33 20 f2 eb                                      bl #0x30e5e0
00686510  00 00 50 e3                                      cmp r0, #0
00686514  79 00 00 0a                                      beq #0x686700
00686518  50 32 9f e5                                      ldr r3, [pc, #0x250]
0068651c  06 00 a0 e1                                      mov r0, r6
00686520  04 20 a0 e3                                      mov r2, #4
00686524  03 10 95 e7                                      ldr r1, [r5, r3]
00686528  2c 20 f2 eb                                      bl #0x30e5e0
0068652c  00 00 50 e3                                      cmp r0, #0
00686530  05 00 00 1a                                      bne #0x68654c
00686534  07 20 a0 e1                                      mov r2, r7
00686538  04 00 a0 e1                                      mov r0, r4
0068653c  0a 10 a0 e1                                      mov r1, sl
00686540  32 24 00 eb                                      bl #0x68f610
00686544  28 31 94 e5                                      ldr r3, [r4, #0x128]
00686548  40 ff ff ea                                      b #0x686250
0068654c  07 20 a0 e1                                      mov r2, r7
00686550  04 00 a0 e1                                      mov r0, r4
00686554  0a 10 a0 e1                                      mov r1, sl
00686558  c4 23 00 eb                                      bl #0x68f470
0068655c  28 31 94 e5                                      ldr r3, [r4, #0x128]
00686560  3a ff ff ea                                      b #0x686250
00686564  00 00 57 e3                                      cmp r7, #0
00686568  02 00 00 1a                                      bne #0x686578
0068656c  28 31 94 e5                                      ldr r3, [r4, #0x128]
00686570  02 0a 13 e3                                      tst r3, #0x2000
00686574  02 00 00 0a                                      beq #0x686584
00686578  04 00 a0 e1                                      mov r0, r4
0068657c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00686580  1b fa ff eb                                      bl #0x684df4
00686584  07 10 a0 e1                                      mov r1, r7
00686588  04 00 a0 e1                                      mov r0, r4
0068658c  98 22 00 eb                                      bl #0x68eff4
00686590  28 31 94 e5                                      ldr r3, [r4, #0x128]
00686594  2d ff ff ea                                      b #0x686250
00686598  07 20 a0 e1                                      mov r2, r7
0068659c  04 00 a0 e1                                      mov r0, r4
006865a0  0a 10 a0 e1                                      mov r1, sl
006865a4  f9 2a 00 eb                                      bl #0x691190
006865a8  28 31 94 e5                                      ldr r3, [r4, #0x128]
006865ac  27 ff ff ea                                      b #0x686250
006865b0  07 20 a0 e1                                      mov r2, r7
006865b4  04 00 a0 e1                                      mov r0, r4
006865b8  0a 10 a0 e1                                      mov r1, sl
006865bc  2f 2d 00 eb                                      bl #0x691a80
006865c0  28 31 94 e5                                      ldr r3, [r4, #0x128]
006865c4  21 ff ff ea                                      b #0x686250
006865c8  07 20 a0 e1                                      mov r2, r7
006865cc  04 00 a0 e1                                      mov r0, r4
006865d0  0a 10 a0 e1                                      mov r1, sl
006865d4  a8 27 00 eb                                      bl #0x69047c
006865d8  28 31 94 e5                                      ldr r3, [r4, #0x128]
006865dc  1b ff ff ea                                      b #0x686250
006865e0  07 20 a0 e1                                      mov r2, r7
006865e4  04 00 a0 e1                                      mov r0, r4
006865e8  0a 10 a0 e1                                      mov r1, sl
006865ec  a8 2c 00 eb                                      bl #0x691894
006865f0  28 31 94 e5                                      ldr r3, [r4, #0x128]
006865f4  15 ff ff ea                                      b #0x686250
006865f8  07 20 a0 e1                                      mov r2, r7
006865fc  04 00 a0 e1                                      mov r0, r4
00686600  0a 10 a0 e1                                      mov r1, sl
00686604  c3 25 00 eb                                      bl #0x68fd18
00686608  28 31 94 e5                                      ldr r3, [r4, #0x128]
0068660c  0f ff ff ea                                      b #0x686250
00686610  07 20 a0 e1                                      mov r2, r7
00686614  04 00 a0 e1                                      mov r0, r4
00686618  0a 10 a0 e1                                      mov r1, sl
0068661c  36 27 00 eb                                      bl #0x6902fc
00686620  28 31 94 e5                                      ldr r3, [r4, #0x128]
00686624  09 ff ff ea                                      b #0x686250
00686628  07 20 a0 e1                                      mov r2, r7
0068662c  04 00 a0 e1                                      mov r0, r4
00686630  0a 10 a0 e1                                      mov r1, sl
00686634  82 26 00 eb                                      bl #0x690044
00686638  28 31 94 e5                                      ldr r3, [r4, #0x128]
0068663c  03 ff ff ea                                      b #0x686250
00686640  07 20 a0 e1                                      mov r2, r7
00686644  04 00 a0 e1                                      mov r0, r4
00686648  0a 10 a0 e1                                      mov r1, sl
0068664c  1b 25 00 eb                                      bl #0x68fac0
00686650  28 31 94 e5                                      ldr r3, [r4, #0x128]
00686654  fd fe ff ea                                      b #0x686250
00686658  07 20 a0 e1                                      mov r2, r7
0068665c  04 00 a0 e1                                      mov r0, r4
00686660  0a 10 a0 e1                                      mov r1, sl
00686664  cd 26 00 eb                                      bl #0x6901a0
00686668  28 31 94 e5                                      ldr r3, [r4, #0x128]
0068666c  f7 fe ff ea                                      b #0x686250
00686670  07 20 a0 e1                                      mov r2, r7
00686674  04 00 a0 e1                                      mov r0, r4
00686678  0a 10 a0 e1                                      mov r1, sl
0068667c  20 2c 00 eb                                      bl #0x691704
00686680  28 31 94 e5                                      ldr r3, [r4, #0x128]
00686684  f1 fe ff ea                                      b #0x686250
00686688  07 20 a0 e1                                      mov r2, r7
0068668c  04 00 a0 e1                                      mov r0, r4
00686690  0a 10 a0 e1                                      mov r1, sl
00686694  23 2a 00 eb                                      bl #0x690f28
00686698  28 31 94 e5                                      ldr r3, [r4, #0x128]
0068669c  eb fe ff ea                                      b #0x686250
006866a0  07 20 a0 e1                                      mov r2, r7
006866a4  04 00 a0 e1                                      mov r0, r4
006866a8  0a 10 a0 e1                                      mov r1, sl
006866ac  7c 29 00 eb                                      bl #0x690ca4
006866b0  28 31 94 e5                                      ldr r3, [r4, #0x128]
006866b4  e5 fe ff ea                                      b #0x686250
006866b8  07 20 a0 e1                                      mov r2, r7
006866bc  04 00 a0 e1                                      mov r0, r4
006866c0  0a 10 a0 e1                                      mov r1, sl
006866c4  af 28 00 eb                                      bl #0x690988
006866c8  28 31 94 e5                                      ldr r3, [r4, #0x128]
006866cc  df fe ff ea                                      b #0x686250
006866d0  07 20 a0 e1                                      mov r2, r7
006866d4  04 00 a0 e1                                      mov r0, r4
006866d8  0a 10 a0 e1                                      mov r1, sl
006866dc  51 24 00 eb                                      bl #0x68f828
006866e0  28 31 94 e5                                      ldr r3, [r4, #0x128]
006866e4  d9 fe ff ea                                      b #0x686250
006866e8  07 20 a0 e1                                      mov r2, r7
006866ec  04 00 a0 e1                                      mov r0, r4
006866f0  0a 10 a0 e1                                      mov r1, sl
006866f4  aa 24 00 eb                                      bl #0x68f9a4
006866f8  28 31 94 e5                                      ldr r3, [r4, #0x128]
006866fc  d3 fe ff ea                                      b #0x686250
00686700  07 20 a0 e1                                      mov r2, r7
00686704  04 00 a0 e1                                      mov r0, r4
00686708  0a 10 a0 e1                                      mov r1, sl
0068670c  e6 27 00 eb                                      bl #0x6906ac
00686710  28 31 94 e5                                      ldr r3, [r4, #0x128]
00686714  cd fe ff ea                                      b #0x686250
; mapping-symbol data/literal pool
00686718  a8 e8 30 00 18 18 00 00 f8 3d 00 00 70 26 00 00  .byte 0xa8, 0xe8, 0x30, 0x00, 0x18, 0x18, 0x00, 0x00, 0xf8, 0x3d, 0x00, 0x00, 0x70, 0x26, 0x00, 0x00
00686728  64 32 00 00 48 4b 00 00 e0 2d 00 00 74 21 26 00  .byte 0x64, 0x32, 0x00, 0x00, 0x48, 0x4b, 0x00, 0x00, 0xe0, 0x2d, 0x00, 0x00, 0x74, 0x21, 0x26, 0x00
00686738  68 21 26 00 60 31 00 00 0c 3d 00 00 78 20 00 00  .byte 0x68, 0x21, 0x26, 0x00, 0x60, 0x31, 0x00, 0x00, 0x0c, 0x3d, 0x00, 0x00, 0x78, 0x20, 0x00, 0x00
00686748  3c 2a 00 00 48 08 00 00 70 07 00 00 fc 26 00 00  .byte 0x3c, 0x2a, 0x00, 0x00, 0x48, 0x08, 0x00, 0x00, 0x70, 0x07, 0x00, 0x00, 0xfc, 0x26, 0x00, 0x00
00686758  6c 15 00 00 1c 40 00 00 10 3b 00 00 88 08 00 00  .byte 0x6c, 0x15, 0x00, 0x00, 0x1c, 0x40, 0x00, 0x00, 0x10, 0x3b, 0x00, 0x00, 0x88, 0x08, 0x00, 0x00
00686768  cc 08 00 00 68 19 00 00 28 23 00 00              .byte 0xcc, 0x08, 0x00, 0x00, 0x68, 0x19, 0x00, 0x00, 0x28, 0x23, 0x00, 0x00

; Evidence owner: embedded-libpng | Releases libpng structs on success and failure.
; FUNCTION 0x00686100, declared_size=212, range_size=212, mode=arm
; class-group: global-functions
; alias: png_destroy_read_struct
; demangled: png_destroy_read_struct
; decoder-mode: arm
00686100  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00686104  00 b0 50 e2                                      subs fp, r0, #0
00686108  01 70 a0 e1                                      mov r7, r1
0068610c  02 80 a0 e1                                      mov r8, r2
00686110  2e 00 00 0a                                      beq #0x6861d0
00686114  00 40 9b e5                                      ldr r4, [fp]
00686118  00 00 54 e3                                      cmp r4, #0
0068611c  2b 00 00 0a                                      beq #0x6861d0
00686120  00 00 51 e3                                      cmp r1, #0
00686124  00 60 91 15                                      ldrne r6, [r1]
00686128  01 60 a0 01                                      moveq r6, r1
0068612c  00 00 52 e3                                      cmp r2, #0
00686130  00 50 92 15                                      ldrne r5, [r2]
00686134  02 50 a0 01                                      moveq r5, r2
00686138  04 00 a0 e1                                      mov r0, r4
0068613c  06 10 a0 e1                                      mov r1, r6
00686140  05 20 a0 e1                                      mov r2, r5
00686144  0c a3 94 e5                                      ldr sl, [r4, #0x30c]
00686148  04 93 94 e5                                      ldr sb, [r4, #0x304]
0068614c  41 ff ff eb                                      bl #0x685e58
00686150  00 00 56 e3                                      cmp r6, #0
00686154  0a 00 00 0a                                      beq #0x686184
00686158  00 30 e0 e3                                      mvn r3, #0
0068615c  04 00 a0 e1                                      mov r0, r4
00686160  06 10 a0 e1                                      mov r1, r6
00686164  01 29 a0 e3                                      mov r2, #0x4000
00686168  90 f8 ff eb                                      bl #0x6843b0
0068616c  06 00 a0 e1                                      mov r0, r6
00686170  0a 10 a0 e1                                      mov r1, sl
00686174  09 20 a0 e1                                      mov r2, sb
00686178  d0 fe ff eb                                      bl #0x685cc0
0068617c  00 30 a0 e3                                      mov r3, #0
00686180  00 30 87 e5                                      str r3, [r7]
00686184  00 00 55 e3                                      cmp r5, #0
00686188  0a 00 00 0a                                      beq #0x6861b8
0068618c  00 30 e0 e3                                      mvn r3, #0
00686190  04 00 a0 e1                                      mov r0, r4
00686194  05 10 a0 e1                                      mov r1, r5
00686198  01 29 a0 e3                                      mov r2, #0x4000
0068619c  83 f8 ff eb                                      bl #0x6843b0
006861a0  05 00 a0 e1                                      mov r0, r5
006861a4  0a 10 a0 e1                                      mov r1, sl
006861a8  09 20 a0 e1                                      mov r2, sb
006861ac  c3 fe ff eb                                      bl #0x685cc0
006861b0  00 30 a0 e3                                      mov r3, #0
006861b4  00 30 88 e5                                      str r3, [r8]
006861b8  04 00 a0 e1                                      mov r0, r4
006861bc  0a 10 a0 e1                                      mov r1, sl
006861c0  09 20 a0 e1                                      mov r2, sb
006861c4  bd fe ff eb                                      bl #0x685cc0
006861c8  00 30 a0 e3                                      mov r3, #0
006861cc  00 30 8b e5                                      str r3, [fp]
006861d0  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; Evidence owner: embedded-libpng | Dispatches to callback at png_struct+0x110, else png_error.
; FUNCTION 0x00687f38, declared_size=44, range_size=44, mode=arm
; class-group: global-functions
; alias: png_read_data
; demangled: png_read_data
; decoder-mode: arm
00687f38  10 40 2d e9                                      push {r4, lr}
00687f3c  10 31 90 e5                                      ldr r3, [r0, #0x110]
00687f40  00 00 53 e3                                      cmp r3, #0
00687f44  01 00 00 0a                                      beq #0x687f50
00687f48  33 ff 2f e1                                      blx r3
00687f4c  10 80 bd e8                                      pop {r4, pc}
00687f50  08 10 9f e5                                      ldr r1, [pc, #8]
00687f54  01 10 8f e0                                      add r1, pc, r1
00687f58  10 40 bd e8                                      pop {r4, lr}
00687f5c  a4 f3 ff ea                                      b #0x684df4
; mapping-symbol data/literal pool
00687f60  44 08 26 00                                      .byte 0x44, 0x08, 0x26, 0x00

; Evidence owner: embedded-libpng | Invokes configured error callback from png_struct+0x100 and handles libpng fatal path.
; FUNCTION 0x00684df4, declared_size=500, range_size=500, mode=arm
; class-group: global-functions
; alias: png_error
; demangled: png_error
; decoder-mode: arm
00684df4  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00684df8  d0 41 9f e5                                      ldr r4, [pc, #0x1d0]
00684dfc  d0 61 9f e5                                      ldr r6, [pc, #0x1d0]
00684e00  2c d0 4d e2                                      sub sp, sp, #0x2c
00684e04  04 40 8f e0                                      add r4, pc, r4
00684e08  06 30 94 e7                                      ldr r3, [r4, r6]
00684e0c  00 50 50 e2                                      subs r5, r0, #0
00684e10  01 70 a0 e1                                      mov r7, r1
00684e14  00 30 93 e5                                      ldr r3, [r3]
00684e18  24 30 8d e5                                      str r3, [sp, #0x24]
00684e1c  08 00 00 0a                                      beq #0x684e44
00684e20  2c 21 95 e5                                      ldr r2, [r5, #0x12c]
00684e24  03 07 12 e3                                      tst r2, #0xc0000
00684e28  18 00 00 1a                                      bne #0x684e90
00684e2c  00 31 95 e5                                      ldr r3, [r5, #0x100]
00684e30  00 00 53 e3                                      cmp r3, #0
00684e34  02 00 00 0a                                      beq #0x684e44
00684e38  05 00 a0 e1                                      mov r0, r5
00684e3c  07 10 a0 e1                                      mov r1, r7
00684e40  33 ff 2f e1                                      blx r3
00684e44  d0 30 d7 e1                                      ldrsb r3, [r7]
00684e48  23 00 53 e3                                      cmp r3, #0x23
00684e4c  1a 00 00 0a                                      beq #0x684ebc
00684e50  80 01 9f e5                                      ldr r0, [pc, #0x180]
00684e54  80 11 9f e5                                      ldr r1, [pc, #0x180]
00684e58  07 20 a0 e1                                      mov r2, r7
00684e5c  00 00 94 e7                                      ldr r0, [r4, r0]
00684e60  01 10 8f e0                                      add r1, pc, r1
00684e64  a8 00 80 e2                                      add r0, r0, #0xa8
00684e68  65 24 f2 eb                                      bl #0x30e004
00684e6c  00 00 55 e3                                      cmp r5, #0
00684e70  53 00 00 1a                                      bne #0x684fc4
00684e74  06 30 94 e7                                      ldr r3, [r4, r6]
00684e78  24 20 9d e5                                      ldr r2, [sp, #0x24]
00684e7c  00 30 93 e5                                      ldr r3, [r3]
00684e80  03 00 52 e1                                      cmp r2, r3
00684e84  4d 00 00 1a                                      bne #0x684fc0
00684e88  2c d0 8d e2                                      add sp, sp, #0x2c
00684e8c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00684e90  d0 30 d1 e1                                      ldrsb r3, [r1]
00684e94  23 00 53 e3                                      cmp r3, #0x23
00684e98  2c 00 00 0a                                      beq #0x684f50
00684e9c  02 07 12 e3                                      tst r2, #0x80000
00684ea0  e1 ff ff 0a                                      beq #0x684e2c
00684ea4  30 30 a0 e3                                      mov r3, #0x30
00684ea8  14 30 cd e5                                      strb r3, [sp, #0x14]
00684eac  00 30 a0 e3                                      mov r3, #0
00684eb0  15 30 cd e5                                      strb r3, [sp, #0x15]
00684eb4  14 70 8d e2                                      add r7, sp, #0x14
00684eb8  db ff ff ea                                      b #0x684e2c
00684ebc  01 30 a0 e3                                      mov r3, #1
00684ec0  00 c0 a0 e3                                      mov ip, #0
00684ec4  04 20 8d e2                                      add r2, sp, #4
00684ec8  03 10 d7 e7                                      ldrb r1, [r7, r3]
00684ecc  0c 10 c2 e7                                      strb r1, [r2, ip]
00684ed0  dc 10 97 e1                                      ldrsb r1, [r7, ip]
00684ed4  20 00 51 e3                                      cmp r1, #0x20
00684ed8  0c 00 00 0a                                      beq #0x684f10
00684edc  01 c0 8c e2                                      add ip, ip, #1
00684ee0  0f 00 5c e3                                      cmp ip, #0xf
00684ee4  01 30 83 e2                                      add r3, r3, #1
00684ee8  f6 ff ff 1a                                      bne #0x684ec8
00684eec  e4 00 9f e5                                      ldr r0, [pc, #0xe4]
00684ef0  e8 10 9f e5                                      ldr r1, [pc, #0xe8]
00684ef4  07 20 a0 e1                                      mov r2, r7
00684ef8  00 00 94 e7                                      ldr r0, [r4, r0]
00684efc  01 10 8f e0                                      add r1, pc, r1
00684f00  0c 30 a0 e1                                      mov r3, ip
00684f04  a8 00 80 e2                                      add r0, r0, #0xa8
00684f08  3d 24 f2 eb                                      bl #0x30e004
00684f0c  d6 ff ff ea                                      b #0x684e6c
00684f10  02 30 4c e2                                      sub r3, ip, #2
00684f14  0c 00 53 e3                                      cmp r3, #0xc
00684f18  f3 ff ff 8a                                      bhi #0x684eec
00684f1c  b4 00 9f e5                                      ldr r0, [pc, #0xb4]
00684f20  bc 10 9f e5                                      ldr r1, [pc, #0xbc]
00684f24  28 e0 8d e2                                      add lr, sp, #0x28
00684f28  00 00 94 e7                                      ldr r0, [r4, r0]
00684f2c  01 30 8c e2                                      add r3, ip, #1
00684f30  0c c0 8e e0                                      add ip, lr, ip
00684f34  00 e0 a0 e3                                      mov lr, #0
00684f38  03 30 87 e0                                      add r3, r7, r3
00684f3c  01 10 8f e0                                      add r1, pc, r1
00684f40  25 e0 4c e5                                      strb lr, [ip, #-0x25]
00684f44  a8 00 80 e2                                      add r0, r0, #0xa8
00684f48  2d 24 f2 eb                                      bl #0x30e004
00684f4c  c6 ff ff ea                                      b #0x684e6c
00684f50  01 30 a0 e3                                      mov r3, #1
00684f54  d3 10 97 e1                                      ldrsb r1, [r7, r3]
00684f58  20 00 51 e3                                      cmp r1, #0x20
00684f5c  02 00 00 0a                                      beq #0x684f6c
00684f60  01 30 83 e2                                      add r3, r3, #1
00684f64  0f 00 53 e3                                      cmp r3, #0xf
00684f68  f9 ff ff 1a                                      bne #0x684f54
00684f6c  02 07 12 e3                                      tst r2, #0x80000
00684f70  03 70 87 00                                      addeq r7, r7, r3
00684f74  ac ff ff 0a                                      beq #0x684e2c
00684f78  01 30 53 e2                                      subs r3, r3, #1
00684f7c  14 c0 8d 02                                      addeq ip, sp, #0x14
00684f80  08 00 00 0a                                      beq #0x684fa8
00684f84  01 10 a0 e3                                      mov r1, #1
00684f88  00 20 a0 e3                                      mov r2, #0
00684f8c  14 c0 8d e2                                      add ip, sp, #0x14
00684f90  01 00 d7 e7                                      ldrb r0, [r7, r1]
00684f94  01 10 81 e2                                      add r1, r1, #1
00684f98  02 00 cc e7                                      strb r0, [ip, r2]
00684f9c  01 20 82 e2                                      add r2, r2, #1
00684fa0  03 00 52 e1                                      cmp r2, r3
00684fa4  f9 ff ff ba                                      blt #0x684f90
00684fa8  28 20 8d e2                                      add r2, sp, #0x28
00684fac  03 30 82 e0                                      add r3, r2, r3
00684fb0  00 20 a0 e3                                      mov r2, #0
00684fb4  15 20 43 e5                                      strb r2, [r3, #-0x15]
00684fb8  0c 70 a0 e1                                      mov r7, ip
00684fbc  9a ff ff ea                                      b #0x684e2c
00684fc0  d2 24 f2 eb                                      bl #0x30e310
00684fc4  05 00 a0 e1                                      mov r0, r5
00684fc8  01 10 a0 e3                                      mov r1, #1
00684fcc  68 25 f2 eb                                      bl #0x30e574
; mapping-symbol data/literal pool
00684fd0  8c fc 30 00 ac 40 00 00 c0 19 00 00 78 34 26 00  .byte 0x8c, 0xfc, 0x30, 0x00, 0xac, 0x40, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x78, 0x34, 0x26, 0x00
00684fe0  bc 33 26 00 5c 33 26 00                          .byte 0xbc, 0x33, 0x26, 0x00, 0x5c, 0x33, 0x26, 0x00

; FUNCTION 0x0030ead8, declared_size=12, mode=arm | external libc PLT stub: setjmp@plt

0030ead8  06 c6 8f e2

0030eadc  86 ca 8c e2

0030eae0  34 f4 bc e5

; FUNCTION 0x0030e574, declared_size=12, mode=arm | external libc PLT stub: longjmp@plt

0030e574  06 c6 8f e2

0030e578  86 ca 8c e2

0030e57c  cc f7 bc e5
