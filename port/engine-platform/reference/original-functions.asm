; Selected original ARM function listings for the Android device/input lifecycle path.
; Source file lines are recorded here and in ../original-functions.json.
; Listing byte rows were compared byte-for-byte with the APK ELF PT_LOAD range.

; Source listing: global-functions-3d6ca95892b3-001.asm:77723-77746
; FUNCTION 0x005311c8, declared_size=76, range_size=76, mode=arm
; class-group: global-functions
; alias: Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeInit
; demangled: Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeInit
; decoder-mode: arm
005311c8  38 30 9f e5                                      ldr r3, [pc, #0x38]
005311cc  38 10 9f e5                                      ldr r1, [pc, #0x38]
005311d0  10 40 2d e9                                      push {r4, lr}
005311d4  03 30 8f e0                                      add r3, pc, r3
005311d8  01 40 93 e7                                      ldr r4, [r3, r1]
005311dc  00 10 94 e5                                      ldr r1, [r4]
005311e0  00 00 51 e3                                      cmp r1, #0
005311e4  03 00 00 0a                                      beq #0x5311f8
005311e8  20 10 9f e5                                      ldr r1, [pc, #0x20]
005311ec  01 30 93 e7                                      ldr r3, [r3, r1]
005311f0  00 20 83 e5                                      str r2, [r3]
005311f4  10 80 bd e8                                      pop {r4, pc}
005311f8  6a fe ff eb                                      bl #0x530ba8
005311fc  01 30 a0 e3                                      mov r3, #1
00531200  00 30 84 e5                                      str r3, [r4]
00531204  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00531208  bc 38 46 00 8c 0f 00 00 d4 0b 00 00              .byte 0xbc, 0x38, 0x46, 0x00, 0x8c, 0x0f, 0x00, 0x00, 0xd4, 0x0b, 0x00, 0x00


; Source listing: global-functions-3d6ca95892b3-001.asm:77297-77474
; FUNCTION 0x00530ba8, declared_size=772, range_size=772, mode=arm
; class-group: global-functions
; alias: appInit
; demangled: appInit
; decoder-mode: arm
00530ba8  70 40 2d e9                                      push {r4, r5, r6, lr}
00530bac  80 42 9f e5                                      ldr r4, [pc, #0x280]
00530bb0  80 32 9f e5                                      ldr r3, [pc, #0x280]
00530bb4  00 50 a0 e3                                      mov r5, #0
00530bb8  04 40 8f e0                                      add r4, pc, r4
00530bbc  03 30 94 e7                                      ldr r3, [r4, r3]
00530bc0  10 d0 4d e2                                      sub sp, sp, #0x10
00530bc4  00 50 83 e5                                      str r5, [r3]
00530bc8  ca 03 00 eb                                      bl #0x531af8
00530bcc  68 32 9f e5                                      ldr r3, [pc, #0x268]
00530bd0  68 e2 9f e5                                      ldr lr, [pc, #0x268]
00530bd4  03 60 94 e7                                      ldr r6, [r4, r3]
00530bd8  64 32 9f e5                                      ldr r3, [pc, #0x264]
00530bdc  0e e0 94 e7                                      ldr lr, [r4, lr]
00530be0  03 10 94 e7                                      ldr r1, [r4, r3]
00530be4  5c 32 9f e5                                      ldr r3, [pc, #0x25c]
00530be8  00 50 ce e5                                      strb r5, [lr]
00530bec  00 00 81 e5                                      str r0, [r1]
00530bf0  03 c0 94 e7                                      ldr ip, [r4, r3]
00530bf4  50 32 9f e5                                      ldr r3, [pc, #0x250]
00530bf8  50 02 9f e5                                      ldr r0, [pc, #0x250]
00530bfc  00 10 96 e5                                      ldr r1, [r6]
00530c00  03 20 94 e7                                      ldr r2, [r4, r3]
00530c04  48 32 9f e5                                      ldr r3, [pc, #0x248]
00530c08  00 00 8f e0                                      add r0, pc, r0
00530c0c  00 50 82 e5                                      str r5, [r2]
00530c10  03 30 94 e7                                      ldr r3, [r4, r3]
00530c14  00 50 cc e5                                      strb r5, [ip]
00530c18  00 50 c3 e5                                      strb r5, [r3]
00530c1c  3c cd f7 eb                                      bl #0x324114
00530c20  00 30 96 e5                                      ldr r3, [r6]
00530c24  56 23 00 e3                                      movw r2, #0x356
00530c28  02 00 53 e1                                      cmp r3, r2
00530c2c  61 00 00 0a                                      beq #0x530db8
00530c30  0f 0d 53 e3                                      cmp r3, #0x3c0
00530c34  59 00 00 0a                                      beq #0x530da0
00530c38  32 0e 53 e3                                      cmp r3, #0x320
00530c3c  47 00 00 0a                                      beq #0x530d60
00530c40  10 32 9f e5                                      ldr r3, [pc, #0x210]
00530c44  03 30 8f e0                                      add r3, pc, r3
00530c48  20 10 93 e5                                      ldr r1, [r3, #0x20]
00530c4c  24 20 93 e5                                      ldr r2, [r3, #0x24]
00530c50  06 00 83 e8                                      stm r3, {r1, r2}
00530c54  00 12 9f e5                                      ldr r1, [pc, #0x200]
00530c58  00 c0 a0 e3                                      mov ip, #0
00530c5c  0c 30 a0 e1                                      mov r3, ip
00530c60  01 10 8f e0                                      add r1, pc, r1
00530c64  10 20 a0 e3                                      mov r2, #0x10
00530c68  01 00 a0 e3                                      mov r0, #1
00530c6c  00 c0 8d e5                                      str ip, [sp]
00530c70  04 c0 8d e5                                      str ip, [sp, #4]
00530c74  08 c0 8d e5                                      str ip, [sp, #8]
00530c78  0b 0d 00 eb                                      bl #0x5340ac
00530c7c  dc 11 9f e5                                      ldr r1, [pc, #0x1dc]
00530c80  dc 21 9f e5                                      ldr r2, [pc, #0x1dc]
00530c84  00 30 a0 e1                                      mov r3, r0
00530c88  01 50 94 e7                                      ldr r5, [r4, r1]
00530c8c  d4 11 9f e5                                      ldr r1, [pc, #0x1d4]
00530c90  02 20 94 e7                                      ldr r2, [r4, r2]
00530c94  00 30 85 e5                                      str r3, [r5]
00530c98  01 c0 94 e7                                      ldr ip, [r4, r1]
00530c9c  02 00 a0 e1                                      mov r0, r2
00530ca0  03 10 a0 e1                                      mov r1, r3
00530ca4  00 20 8c e5                                      str r2, [ip]
00530ca8  81 fb f7 eb                                      bl #0x32fab4
00530cac  b8 31 9f e5                                      ldr r3, [pc, #0x1b8]
00530cb0  00 20 95 e5                                      ldr r2, [r5]
00530cb4  03 10 94 e7                                      ldr r1, [r4, r3]
00530cb8  b0 31 9f e5                                      ldr r3, [pc, #0x1b0]
00530cbc  03 00 94 e7                                      ldr r0, [r4, r3]
00530cc0  00 30 e0 e3                                      mvn r3, #0
00530cc4  00 30 81 e5                                      str r3, [r1]
00530cc8  00 30 80 e5                                      str r3, [r0]
00530ccc  a0 31 9f e5                                      ldr r3, [pc, #0x1a0]
00530cd0  10 20 92 e5                                      ldr r2, [r2, #0x10]
00530cd4  03 30 94 e7                                      ldr r3, [r4, r3]
00530cd8  00 20 83 e5                                      str r2, [r3]
00530cdc  0b 08 00 eb                                      bl #0x532d10
00530ce0  05 00 50 e3                                      cmp r0, #5
00530ce4  00 f1 8f 90                                      addls pc, pc, r0, lsl #2
00530ce8  09 00 00 ea                                      b #0x530d14
00530cec  4b 00 00 ea                                      b #0x530e20
00530cf0  45 00 00 ea                                      b #0x530e0c
00530cf4  3f 00 00 ea                                      b #0x530df8
00530cf8  39 00 00 ea                                      b #0x530de4
00530cfc  33 00 00 ea                                      b #0x530dd0
00530d00  ff ff ff ea                                      b #0x530d04
00530d04  6c 31 9f e5                                      ldr r3, [pc, #0x16c]
00530d08  01 20 a0 e3                                      mov r2, #1
00530d0c  03 30 94 e7                                      ldr r3, [r4, r3]
00530d10  00 20 c3 e5                                      strb r2, [r3]
00530d14  0f 08 00 eb                                      bl #0x532d58
00530d18  02 00 50 e3                                      cmp r0, #2
00530d1c  1a 00 00 0a                                      beq #0x530d8c
00530d20  63 00 50 e3                                      cmp r0, #0x63
00530d24  13 00 00 0a                                      beq #0x530d78
00530d28  01 00 50 e3                                      cmp r0, #1
00530d2c  06 00 00 1a                                      bne #0x530d4c
00530d30  44 01 9f e5                                      ldr r0, [pc, #0x144]
00530d34  00 00 8f e0                                      add r0, pc, r0
00530d38  f5 cc f7 eb                                      bl #0x324114
00530d3c  3c 31 9f e5                                      ldr r3, [pc, #0x13c]
00530d40  00 20 a0 e3                                      mov r2, #0
00530d44  03 30 94 e7                                      ldr r3, [r4, r3]
00530d48  00 20 c3 e5                                      strb r2, [r3]
00530d4c  30 01 9f e5                                      ldr r0, [pc, #0x130]
00530d50  00 00 8f e0                                      add r0, pc, r0
00530d54  10 d0 8d e2                                      add sp, sp, #0x10
00530d58  70 40 bd e8                                      pop {r4, r5, r6, lr}
00530d5c  ec cc f7 ea                                      b #0x324114
00530d60  20 31 9f e5                                      ldr r3, [pc, #0x120]
00530d64  03 30 8f e0                                      add r3, pc, r3
00530d68  08 10 93 e5                                      ldr r1, [r3, #8]
00530d6c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00530d70  06 00 83 e8                                      stm r3, {r1, r2}
00530d74  b6 ff ff ea                                      b #0x530c54
00530d78  0c 31 9f e5                                      ldr r3, [pc, #0x10c]
00530d7c  01 20 a0 e3                                      mov r2, #1
00530d80  03 30 94 e7                                      ldr r3, [r4, r3]
00530d84  00 20 c3 e5                                      strb r2, [r3]
00530d88  ef ff ff ea                                      b #0x530d4c
00530d8c  ec 30 9f e5                                      ldr r3, [pc, #0xec]
00530d90  00 20 a0 e3                                      mov r2, #0
00530d94  03 30 94 e7                                      ldr r3, [r4, r3]
00530d98  00 20 c3 e5                                      strb r2, [r3]
00530d9c  ea ff ff ea                                      b #0x530d4c
00530da0  e8 30 9f e5                                      ldr r3, [pc, #0xe8]
00530da4  03 30 8f e0                                      add r3, pc, r3
00530da8  18 10 93 e5                                      ldr r1, [r3, #0x18]
00530dac  1c 20 93 e5                                      ldr r2, [r3, #0x1c]
00530db0  06 00 83 e8                                      stm r3, {r1, r2}
00530db4  a6 ff ff ea                                      b #0x530c54
00530db8  d4 30 9f e5                                      ldr r3, [pc, #0xd4]
00530dbc  03 30 8f e0                                      add r3, pc, r3
00530dc0  10 10 93 e5                                      ldr r1, [r3, #0x10]
00530dc4  14 20 93 e5                                      ldr r2, [r3, #0x14]
00530dc8  06 00 83 e8                                      stm r3, {r1, r2}
00530dcc  a0 ff ff ea                                      b #0x530c54
00530dd0  c0 30 9f e5                                      ldr r3, [pc, #0xc0]
00530dd4  01 20 a0 e3                                      mov r2, #1
00530dd8  03 30 94 e7                                      ldr r3, [r4, r3]
00530ddc  00 20 c3 e5                                      strb r2, [r3]
00530de0  cb ff ff ea                                      b #0x530d14
00530de4  b0 30 9f e5                                      ldr r3, [pc, #0xb0]
00530de8  01 20 a0 e3                                      mov r2, #1
00530dec  03 30 94 e7                                      ldr r3, [r4, r3]
00530df0  00 20 c3 e5                                      strb r2, [r3]
00530df4  c6 ff ff ea                                      b #0x530d14
00530df8  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
00530dfc  01 20 a0 e3                                      mov r2, #1
00530e00  03 30 94 e7                                      ldr r3, [r4, r3]
00530e04  00 20 c3 e5                                      strb r2, [r3]
00530e08  c1 ff ff ea                                      b #0x530d14
00530e0c  90 30 9f e5                                      ldr r3, [pc, #0x90]
00530e10  01 20 a0 e3                                      mov r2, #1
00530e14  03 30 94 e7                                      ldr r3, [r4, r3]
00530e18  00 20 c3 e5                                      strb r2, [r3]
00530e1c  bc ff ff ea                                      b #0x530d14
00530e20  80 30 9f e5                                      ldr r3, [pc, #0x80]
00530e24  01 20 a0 e3                                      mov r2, #1
00530e28  03 30 94 e7                                      ldr r3, [r4, r3]
00530e2c  00 20 c3 e5                                      strb r2, [r3]
00530e30  b7 ff ff ea                                      b #0x530d14
; mapping-symbol data/literal pool
00530e34  d8 3e 46 00 48 17 00 00 c4 25 00 00 a8 26 00 00  .byte 0xd8, 0x3e, 0x46, 0x00, 0x48, 0x17, 0x00, 0x00, 0xc4, 0x25, 0x00, 0x00, 0xa8, 0x26, 0x00, 0x00
00530e44  00 06 00 00 60 41 00 00 d4 27 00 00 28 c8 3a 00  .byte 0x00, 0x06, 0x00, 0x00, 0x60, 0x41, 0x00, 0x00, 0xd4, 0x27, 0x00, 0x00, 0x28, 0xc8, 0x3a, 0x00
00530e54  28 49 00 00 64 57 4c 00 48 57 4c 00 e8 1e 00 00  .byte 0x28, 0x49, 0x00, 0x00, 0x64, 0x57, 0x4c, 0x00, 0x48, 0x57, 0x4c, 0x00, 0xe8, 0x1e, 0x00, 0x00
00530e64  f4 37 00 00 a4 46 00 00 f4 34 00 00 20 3f 00 00  .byte 0xf4, 0x37, 0x00, 0x00, 0xa4, 0x46, 0x00, 0x00, 0xf4, 0x34, 0x00, 0x00, 0x20, 0x3f, 0x00, 0x00
00530e74  60 37 00 00 a8 44 00 00 2c c7 3a 00 30 3b 00 00  .byte 0x60, 0x37, 0x00, 0x00, 0xa8, 0x44, 0x00, 0x00, 0x2c, 0xc7, 0x3a, 0x00, 0x30, 0x3b, 0x00, 0x00
00530e84  30 c7 3a 00 44 56 4c 00 e0 16 00 00 04 56 4c 00  .byte 0x30, 0xc7, 0x3a, 0x00, 0x44, 0x56, 0x4c, 0x00, 0xe0, 0x16, 0x00, 0x00, 0x04, 0x56, 0x4c, 0x00
00530e94  ec 55 4c 00 d0 3e 00 00 84 0f 00 00 58 44 00 00  .byte 0xec, 0x55, 0x4c, 0x00, 0xd0, 0x3e, 0x00, 0x00, 0x84, 0x0f, 0x00, 0x00, 0x58, 0x44, 0x00, 0x00
00530ea4  b0 1e 00 00 68 27 00 00                          .byte 0xb0, 0x1e, 0x00, 0x00, 0x68, 0x27, 0x00, 0x00


; Source listing: glitch-64aac4add68a-001.asm:23-80
; FUNCTION 0x005340ac, declared_size=204, range_size=204, mode=arm
; class-group: glitch
; alias: _ZN6glitch12createDeviceENS_5video13E_DRIVER_TYPEERKNS_4core11dimension2dIiEEjbbbPNS_14IEventReceiverE
; demangled: glitch::createDevice(glitch::video::E_DRIVER_TYPE, glitch::core::dimension2d<int> const&, unsigned int, bool, bool, bool, glitch::IEventReceiver*)
; decoder-mode: arm
005340ac  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005340b0  bc c0 9f e5                                      ldr ip, [pc, #0xbc]
005340b4  58 d0 4d e2                                      sub sp, sp, #0x58
005340b8  04 60 91 e5                                      ldr r6, [r1, #4]
005340bc  0c c0 8f e0                                      add ip, pc, ip
005340c0  00 70 91 e5                                      ldr r7, [r1]
005340c4  3c c0 8d e5                                      str ip, [sp, #0x3c]
005340c8  05 c6 a0 e3                                      mov ip, #0x500000
005340cc  40 c0 8d e5                                      str ip, [sp, #0x40]
005340d0  0a c8 a0 e3                                      mov ip, #0xa0000
005340d4  70 50 dd e5                                      ldrb r5, [sp, #0x70]
005340d8  74 40 dd e5                                      ldrb r4, [sp, #0x74]
005340dc  44 c0 8d e5                                      str ip, [sp, #0x44]
005340e0  0e 30 cd e5                                      strb r3, [sp, #0xe]
005340e4  02 c8 a0 e3                                      mov ip, #0x20000
005340e8  78 30 9d e5                                      ldr r3, [sp, #0x78]
005340ec  48 c0 8d e5                                      str ip, [sp, #0x48]
005340f0  10 80 a0 e3                                      mov r8, #0x10
005340f4  02 ca a0 e3                                      mov ip, #0x2000
005340f8  00 10 a0 e3                                      mov r1, #0
005340fc  00 00 8d e5                                      str r0, [sp]
00534100  00 e0 e0 e3                                      mvn lr, #0
00534104  0d 80 cd e5                                      strb r8, [sp, #0xd]
00534108  4c c0 8d e5                                      str ip, [sp, #0x4c]
0053410c  01 87 a0 e3                                      mov r8, #0x40000
00534110  fe c5 a0 e3                                      mov ip, #0x3f800000
00534114  0d 00 a0 e1                                      mov r0, sp
00534118  20 80 8d e5                                      str r8, [sp, #0x20]
0053411c  38 e0 8d e5                                      str lr, [sp, #0x38]
00534120  50 c0 8d e5                                      str ip, [sp, #0x50]
00534124  54 10 8d e5                                      str r1, [sp, #0x54]
00534128  04 70 8d e5                                      str r7, [sp, #4]
0053412c  08 60 8d e5                                      str r6, [sp, #8]
00534130  0c 20 cd e5                                      strb r2, [sp, #0xc]
00534134  0f 50 cd e5                                      strb r5, [sp, #0xf]
00534138  10 40 cd e5                                      strb r4, [sp, #0x10]
0053413c  28 30 8d e5                                      str r3, [sp, #0x28]
00534140  11 10 cd e5                                      strb r1, [sp, #0x11]
00534144  14 10 8d e5                                      str r1, [sp, #0x14]
00534148  18 10 8d e5                                      str r1, [sp, #0x18]
0053414c  1c 10 8d e5                                      str r1, [sp, #0x1c]
00534150  24 10 cd e5                                      strb r1, [sp, #0x24]
00534154  25 10 cd e5                                      strb r1, [sp, #0x25]
00534158  26 10 cd e5                                      strb r1, [sp, #0x26]
0053415c  2c 10 8d e5                                      str r1, [sp, #0x2c]
00534160  30 10 cd e5                                      strb r1, [sp, #0x30]
00534164  34 e0 8d e5                                      str lr, [sp, #0x34]
00534168  76 b1 05 eb                                      bl #0x6a0748
0053416c  58 d0 8d e2                                      add sp, sp, #0x58
00534170  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00534174  84 9b 3a 00                                      .byte 0x84, 0x9b, 0x3a, 0x00


; Source listing: glitch-64aac4add68a-001.asm:335-361
; FUNCTION 0x006a0748, declared_size=84, range_size=84, mode=arm
; class-group: glitch
; alias: _ZN6glitch14createDeviceExERKNS_19SCreationParametersE
; demangled: glitch::createDeviceEx(glitch::SCreationParameters const&)
; decoder-mode: arm
006a0748  70 40 2d e9                                      push {r4, r5, r6, lr}
006a074c  00 50 a0 e1                                      mov r5, r0
006a0750  43 0f a0 e3                                      mov r0, #0x10c
006a0754  4c b8 f1 eb                                      bl #0x30e88c
006a0758  05 10 a0 e1                                      mov r1, r5
006a075c  00 40 a0 e1                                      mov r4, r0
006a0760  b3 ff ff eb                                      bl #0x6a0634
006a0764  00 00 54 e3                                      cmp r4, #0
006a0768  02 00 00 0a                                      beq #0x6a0778
006a076c  10 60 94 e5                                      ldr r6, [r4, #0x10]
006a0770  00 00 56 e3                                      cmp r6, #0
006a0774  01 00 00 0a                                      beq #0x6a0780
006a0778  04 00 a0 e1                                      mov r0, r4
006a077c  70 80 bd e8                                      pop {r4, r5, r6, pc}
006a0780  00 30 95 e5                                      ldr r3, [r5]
006a0784  00 00 53 e3                                      cmp r3, #0
006a0788  fa ff ff 0a                                      beq #0x6a0778
006a078c  04 00 a0 e1                                      mov r0, r4
006a0790  7b f3 f1 eb                                      bl #0x31d584
006a0794  06 00 a0 e1                                      mov r0, r6
006a0798  70 80 bd e8                                      pop {r4, r5, r6, pc}


; Source listing: glitch_CAndroidOSDevice-c2fd4b7038c4-001.asm:319-392
; FUNCTION 0x006a0634, declared_size=276, range_size=276, mode=arm
; class-group: glitch::CAndroidOSDevice
; alias: _ZN6glitch16CAndroidOSDeviceC1ERKNS_19SCreationParametersE
; demangled: glitch::CAndroidOSDevice::CAndroidOSDevice(glitch::SCreationParameters const&)
; decoder-mode: arm
006a0634  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
006a0638  fc 50 9f e5                                      ldr r5, [pc, #0xfc]
006a063c  fc 60 9f e5                                      ldr r6, [pc, #0xfc]
006a0640  65 df 4d e2                                      sub sp, sp, #0x194
006a0644  05 50 8f e0                                      add r5, pc, r5
006a0648  06 30 95 e7                                      ldr r3, [r5, r6]
006a064c  00 40 a0 e1                                      mov r4, r0
006a0650  01 70 a0 e3                                      mov r7, #1
006a0654  00 30 93 e5                                      ldr r3, [r3]
006a0658  04 a0 8d e2                                      add sl, sp, #4
006a065c  c3 80 8a e2                                      add r8, sl, #0xc3
006a0660  8c 31 8d e5                                      str r3, [sp, #0x18c]
006a0664  08 47 ff eb                                      bl #0x67228c
006a0668  d4 10 9f e5                                      ldr r1, [pc, #0xd4]
006a066c  00 20 a0 e3                                      mov r2, #0
006a0670  04 30 a0 e1                                      mov r3, r4
006a0674  01 10 95 e7                                      ldr r1, [r5, r1]
006a0678  dc 20 84 e5                                      str r2, [r4, #0xdc]
006a067c  ec 20 84 e5                                      str r2, [r4, #0xec]
006a0680  08 10 81 e2                                      add r1, r1, #8
006a0684  00 10 84 e5                                      str r1, [r4]
006a0688  e8 20 e3 e5                                      strb r2, [r3, #0xe8]!
006a068c  f4 30 84 e5                                      str r3, [r4, #0xf4]
006a0690  f0 30 84 e5                                      str r3, [r4, #0xf0]
006a0694  f8 20 84 e5                                      str r2, [r4, #0xf8]
006a0698  0a 00 a0 e1                                      mov r0, sl
006a069c  08 71 c4 e5                                      strb r7, [r4, #0x108]
006a06a0  09 71 c4 e5                                      strb r7, [r4, #0x109]
006a06a4  3e b6 f1 eb                                      bl #0x30dfa4
006a06a8  50 00 a0 e3                                      mov r0, #0x50
006a06ac  76 b8 f1 eb                                      bl #0x30e88c
006a06b0  08 10 a0 e1                                      mov r1, r8
006a06b4  00 a0 a0 e1                                      mov sl, r0
006a06b8  ae 01 00 eb                                      bl #0x6a0d78
006a06bc  07 10 a0 e1                                      mov r1, r7
006a06c0  08 00 a0 e1                                      mov r0, r8
006a06c4  30 a0 84 e5                                      str sl, [r4, #0x30]
006a06c8  74 a9 fd eb                                      bl #0x60aca0
006a06cc  04 00 a0 e1                                      mov r0, r4
006a06d0  1a ff ff eb                                      bl #0x6a0340
006a06d4  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
006a06d8  00 00 53 e3                                      cmp r3, #0
006a06dc  12 00 00 1a                                      bne #0x6a072c
006a06e0  38 00 a0 e3                                      mov r0, #0x38
006a06e4  68 b8 f1 eb                                      bl #0x30e88c
006a06e8  04 20 a0 e1                                      mov r2, r4
006a06ec  60 10 84 e2                                      add r1, r4, #0x60
006a06f0  00 70 a0 e1                                      mov r7, r0
006a06f4  3b fe ff eb                                      bl #0x69ffe8
006a06f8  04 00 a0 e1                                      mov r0, r4
006a06fc  24 70 84 e5                                      str r7, [r4, #0x24]
006a0700  53 ff ff eb                                      bl #0x6a0454
006a0704  04 00 a0 e1                                      mov r0, r4
006a0708  91 43 ff eb                                      bl #0x671554
006a070c  06 30 95 e7                                      ldr r3, [r5, r6]
006a0710  8c 21 9d e5                                      ldr r2, [sp, #0x18c]
006a0714  04 00 a0 e1                                      mov r0, r4
006a0718  00 30 93 e5                                      ldr r3, [r3]
006a071c  03 00 52 e1                                      cmp r2, r3
006a0720  04 00 00 1a                                      bne #0x6a0738
006a0724  65 df 8d e2                                      add sp, sp, #0x194
006a0728  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
006a072c  04 00 a0 e1                                      mov r0, r4
006a0730  de fe ff eb                                      bl #0x6a02b0
006a0734  e9 ff ff ea                                      b #0x6a06e0
006a0738  f4 b6 f1 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
006a073c  4c 44 2f 00 ac 40 00 00 9c 34 00 00              .byte 0x4c, 0x44, 0x2f, 0x00, 0xac, 0x40, 0x00, 0x00, 0x9c, 0x34, 0x00, 0x00


; Source listing: glitch_CAndroidOSDevice-c2fd4b7038c4-001.asm:199-241
; FUNCTION 0x006a0454, declared_size=152, range_size=152, mode=arm
; class-group: glitch::CAndroidOSDevice
; alias: _ZN6glitch16CAndroidOSDevice12createDriverEv
; demangled: glitch::CAndroidOSDevice::createDriver()
; decoder-mode: arm
006a0454  10 40 2d e9                                      push {r4, lr}
006a0458  5c 30 90 e5                                      ldr r3, [r0, #0x5c]
006a045c  00 40 a0 e1                                      mov r4, r0
006a0460  01 00 53 e3                                      cmp r3, #1
006a0464  0e 00 00 0a                                      beq #0x6a04a4
006a0468  12 00 00 da                                      ble #0x6a04b8
006a046c  80 00 53 e3                                      cmp r3, #0x80
006a0470  06 00 00 0a                                      beq #0x6a0490
006a0474  01 0c 53 e3                                      cmp r3, #0x100
006a0478  04 00 00 0a                                      beq #0x6a0490
006a047c  5c 00 9f e5                                      ldr r0, [pc, #0x5c]
006a0480  03 10 a0 e3                                      mov r1, #3
006a0484  00 00 8f e0                                      add r0, pc, r0
006a0488  10 40 bd e8                                      pop {r4, lr}
006a048c  03 aa fd ea                                      b #0x60aca0
006a0490  4c 00 9f e5                                      ldr r0, [pc, #0x4c]
006a0494  03 10 a0 e3                                      mov r1, #3
006a0498  00 00 8f e0                                      add r0, pc, r0
006a049c  10 40 bd e8                                      pop {r4, lr}
006a04a0  fe a9 fd ea                                      b #0x60aca0
006a04a4  40 56 fc eb                                      bl #0x5b5dac
006a04a8  00 00 50 e3                                      cmp r0, #0
006a04ac  10 00 84 e5                                      str r0, [r4, #0x10]
006a04b0  05 00 00 0a                                      beq #0x6a04cc
006a04b4  10 80 bd e8                                      pop {r4, pc}
006a04b8  00 00 53 e3                                      cmp r3, #0
006a04bc  ee ff ff 1a                                      bne #0x6a047c
006a04c0  9c 65 fc eb                                      bl #0x5b9b38
006a04c4  10 00 84 e5                                      str r0, [r4, #0x10]
006a04c8  10 80 bd e8                                      pop {r4, pc}
006a04cc  14 00 9f e5                                      ldr r0, [pc, #0x14]
006a04d0  03 10 a0 e3                                      mov r1, #3
006a04d4  00 00 8f e0                                      add r0, pc, r0
006a04d8  10 40 bd e8                                      pop {r4, lr}
006a04dc  ef a9 fd ea                                      b #0x60aca0
; mapping-symbol data/literal pool
006a04e0  fc aa 24 00 a0 aa 24 00 44 aa 24 00              .byte 0xfc, 0xaa, 0x24, 0x00, 0xa0, 0xaa, 0x24, 0x00, 0x44, 0xaa, 0x24, 0x00


; Source listing: glitch_video-aadc65bf0959-001.asm:1562-1588
; FUNCTION 0x005b5dac, declared_size=84, range_size=84, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video21createOpenGLES2DriverEPNS_7IDeviceE
; demangled: glitch::video::createOpenGLES2Driver(glitch::IDevice*)
; decoder-mode: arm
005b5dac  70 40 2d e9                                      push {r4, r5, r6, lr}
005b5db0  00 10 a0 e3                                      mov r1, #0
005b5db4  00 50 a0 e1                                      mov r5, r0
005b5db8  f4 0d 00 e3                                      movw r0, #0xdf4
005b5dbc  fa f8 fd eb                                      bl #0x5341ac
005b5dc0  05 10 a0 e1                                      mov r1, r5
005b5dc4  00 40 a0 e1                                      mov r4, r0
005b5dc8  ea ff ff eb                                      bl #0x5b5d78
005b5dcc  d4 10 94 e5                                      ldr r1, [r4, #0xd4]
005b5dd0  04 00 a0 e1                                      mov r0, r4
005b5dd4  6b 20 d1 e5                                      ldrb r2, [r1, #0x6b]
005b5dd8  60 10 81 e2                                      add r1, r1, #0x60
005b5ddc  46 f7 ff eb                                      bl #0x5b3afc
005b5de0  00 50 50 e2                                      subs r5, r0, #0
005b5de4  01 00 00 0a                                      beq #0x5b5df0
005b5de8  04 00 a0 e1                                      mov r0, r4
005b5dec  70 80 bd e8                                      pop {r4, r5, r6, pc}
005b5df0  04 00 a0 e1                                      mov r0, r4
005b5df4  e2 9d f5 eb                                      bl #0x31d584
005b5df8  05 00 a0 e1                                      mov r0, r5
005b5dfc  70 80 bd e8                                      pop {r4, r5, r6, pc}


; Source listing: glitch_IDevice-5ff81d3a8772-001.asm:784-931
; FUNCTION 0x0067228c, declared_size=588, range_size=588, mode=arm
; class-group: glitch::IDevice
; alias: _ZN6glitch7IDeviceC2ERKNS_19SCreationParametersE
; demangled: glitch::IDevice::IDevice(glitch::SCreationParameters const&)
; decoder-mode: arm
0067228c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00672290  24 62 9f e5                                      ldr r6, [pc, #0x224]
00672294  24 32 9f e5                                      ldr r3, [pc, #0x224]
00672298  24 82 9f e5                                      ldr r8, [pc, #0x224]
0067229c  06 60 8f e0                                      add r6, pc, r6
006722a0  03 30 96 e7                                      ldr r3, [r6, r3]
006722a4  08 20 96 e7                                      ldr r2, [r6, r8]
006722a8  00 50 a0 e3                                      mov r5, #0
006722ac  08 30 83 e2                                      add r3, r3, #8
006722b0  01 a0 a0 e3                                      mov sl, #1
006722b4  00 20 92 e5                                      ldr r2, [r2]
006722b8  10 50 80 e5                                      str r5, [r0, #0x10]
006722bc  14 50 80 e5                                      str r5, [r0, #0x14]
006722c0  18 50 80 e5                                      str r5, [r0, #0x18]
006722c4  1c 50 80 e5                                      str r5, [r0, #0x1c]
006722c8  20 50 80 e5                                      str r5, [r0, #0x20]
006722cc  24 50 80 e5                                      str r5, [r0, #0x24]
006722d0  08 04 80 e8                                      stm r0, {r3, sl}
006722d4  28 30 91 e5                                      ldr r3, [r1, #0x28]
006722d8  00 40 a0 e1                                      mov r4, r0
006722dc  20 d0 4d e2                                      sub sp, sp, #0x20
006722e0  28 30 80 e5                                      str r3, [r0, #0x28]
006722e4  2c 50 80 e5                                      str r5, [r0, #0x2c]
006722e8  30 50 80 e5                                      str r5, [r0, #0x30]
006722ec  34 50 80 e5                                      str r5, [r0, #0x34]
006722f0  38 50 80 e5                                      str r5, [r0, #0x38]
006722f4  01 70 a0 e1                                      mov r7, r1
006722f8  3c 00 80 e2                                      add r0, r0, #0x3c
006722fc  1c 20 8d e5                                      str r2, [sp, #0x1c]
00672300  01 a2 01 eb                                      bl #0x6dab0c
00672304  58 20 a0 e3                                      mov r2, #0x58
00672308  07 10 a0 e1                                      mov r1, r7
0067230c  5c 00 84 e2                                      add r0, r4, #0x5c
00672310  54 71 f2 eb                                      bl #0x30e868
00672314  b4 50 84 e5                                      str r5, [r4, #0xb4]
00672318  b8 50 84 e5                                      str r5, [r4, #0xb8]
0067231c  bc 50 84 e5                                      str r5, [r4, #0xbc]
00672320  c0 50 84 e5                                      str r5, [r4, #0xc0]
00672324  c4 50 84 e5                                      str r5, [r4, #0xc4]
00672328  c8 50 84 e5                                      str r5, [r4, #0xc8]
0067232c  cc 50 84 e5                                      str r5, [r4, #0xcc]
00672330  d0 50 84 e5                                      str r5, [r4, #0xd0]
00672334  d4 50 84 e5                                      str r5, [r4, #0xd4]
00672338  d8 50 84 e5                                      str r5, [r4, #0xd8]
0067233c  b4 00 84 e2                                      add r0, r4, #0xb4
00672340  24 fe ff eb                                      bl #0x671bd8
00672344  36 bb 00 eb                                      bl #0x6a1024
00672348  05 10 a0 e1                                      mov r1, r5
0067234c  2c 00 a0 e3                                      mov r0, #0x2c
00672350  95 07 fb eb                                      bl #0x5341ac
00672354  04 10 a0 e1                                      mov r1, r4
00672358  00 90 a0 e1                                      mov sb, r0
0067235c  6c 95 ff eb                                      bl #0x657914
00672360  05 10 a0 e1                                      mov r1, r5
00672364  08 90 84 e5                                      str sb, [r4, #8]
00672368  20 00 a0 e3                                      mov r0, #0x20
0067236c  8e 07 fb eb                                      bl #0x5341ac
00672370  00 90 a0 e1                                      mov sb, r0
00672374  25 64 fe eb                                      bl #0x60b410
00672378  05 10 a0 e1                                      mov r1, r5
0067237c  0c 90 84 e5                                      str sb, [r4, #0xc]
00672380  08 00 a0 e3                                      mov r0, #8
00672384  88 07 fb eb                                      bl #0x5341ac
00672388  38 31 9f e5                                      ldr r3, [pc, #0x138]
0067238c  38 51 9f e5                                      ldr r5, [pc, #0x138]
00672390  04 a0 80 e5                                      str sl, [r0, #4]
00672394  03 30 96 e7                                      ldr r3, [r6, r3]
00672398  00 90 a0 e1                                      mov sb, r0
0067239c  08 30 83 e2                                      add r3, r3, #8
006723a0  00 30 80 e5                                      str r3, [r0]
006723a4  66 63 fe eb                                      bl #0x60b144
006723a8  05 20 96 e7                                      ldr r2, [r6, r5]
006723ac  20 90 84 e5                                      str sb, [r4, #0x20]
006723b0  00 30 92 e5                                      ldr r3, [r2]
006723b4  00 00 53 e3                                      cmp r3, #0
006723b8  06 00 00 0a                                      beq #0x6723d8
006723bc  04 10 93 e5                                      ldr r1, [r3, #4]
006723c0  0a 10 81 e0                                      add r1, r1, sl
006723c4  04 10 83 e5                                      str r1, [r3, #4]
006723c8  00 00 92 e5                                      ldr r0, [r2]
006723cc  28 10 94 e5                                      ldr r1, [r4, #0x28]
006723d0  2c 00 84 e5                                      str r0, [r4, #0x2c]
006723d4  58 b9 00 eb                                      bl #0x6a093c
006723d8  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
006723dc  05 30 96 e7                                      ldr r3, [r6, r5]
006723e0  00 20 83 e5                                      str r2, [r3]
006723e4  ff 06 fb eb                                      bl #0x533fe8
006723e8  00 30 90 e5                                      ldr r3, [r0]
006723ec  00 10 a0 e1                                      mov r1, r0
006723f0  0d 00 a0 e1                                      mov r0, sp
006723f4  0f e0 a0 e1                                      mov lr, pc
006723f8  08 f0 93 e5                                      ldr pc, [r3, #8]
006723fc  00 30 9d e5                                      ldr r3, [sp]
00672400  00 00 53 e3                                      cmp r3, #0
00672404  04 20 93 15                                      ldrne r2, [r3, #4]
00672408  01 20 82 12                                      addne r2, r2, #1
0067240c  04 20 83 15                                      strne r2, [r3, #4]
00672410  34 00 94 e5                                      ldr r0, [r4, #0x34]
00672414  34 30 84 e5                                      str r3, [r4, #0x34]
00672418  00 00 50 e3                                      cmp r0, #0
0067241c  00 00 00 0a                                      beq #0x672424
00672420  57 ac f2 eb                                      bl #0x31d584
00672424  00 00 9d e5                                      ldr r0, [sp]
00672428  00 00 50 e3                                      cmp r0, #0
0067242c  00 00 00 0a                                      beq #0x672434
00672430  53 ac f2 eb                                      bl #0x31d584
00672434  94 10 9f e5                                      ldr r1, [pc, #0x94]
00672438  04 50 8d e2                                      add r5, sp, #4
0067243c  05 00 a0 e1                                      mov r0, r5
00672440  01 10 8f e0                                      add r1, pc, r1
00672444  16 10 81 e2                                      add r1, r1, #0x16
00672448  14 50 8d e5                                      str r5, [sp, #0x14]
0067244c  18 50 8d e5                                      str r5, [sp, #0x18]
00672450  fd fd ff eb                                      bl #0x671c4c
00672454  78 10 9f e5                                      ldr r1, [pc, #0x78]
00672458  05 00 a0 e1                                      mov r0, r5
0067245c  01 10 8f e0                                      add r1, pc, r1
00672460  07 20 81 e2                                      add r2, r1, #7
00672464  78 b9 f2 eb                                      bl #0x320a4c
00672468  01 10 a0 e3                                      mov r1, #1
0067246c  18 00 9d e5                                      ldr r0, [sp, #0x18]
00672470  0a 62 fe eb                                      bl #0x60aca0
00672474  04 00 a0 e1                                      mov r0, r4
00672478  3c 10 97 e5                                      ldr r1, [r7, #0x3c]
0067247c  80 fe ff eb                                      bl #0x671e84
00672480  18 00 9d e5                                      ldr r0, [sp, #0x18]
00672484  05 00 50 e1                                      cmp r0, r5
00672488  02 00 00 0a                                      beq #0x672498
0067248c  00 00 50 e3                                      cmp r0, #0
00672490  00 00 00 0a                                      beq #0x672498
00672494  ed 77 f2 eb                                      bl #0x310450
00672498  08 30 96 e7                                      ldr r3, [r6, r8]
0067249c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
006724a0  04 00 a0 e1                                      mov r0, r4
006724a4  00 30 93 e5                                      ldr r3, [r3]
006724a8  03 00 52 e1                                      cmp r2, r3
006724ac  01 00 00 1a                                      bne #0x6724b8
006724b0  20 d0 8d e2                                      add sp, sp, #0x20
006724b4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006724b8  94 6f f2 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
006724bc  f4 27 32 00 d8 17 00 00 ac 40 00 00 2c 1a 00 00  .byte 0xf4, 0x27, 0x32, 0x00, 0xd8, 0x17, 0x00, 0x00, 0xac, 0x40, 0x00, 0x00, 0x2c, 0x1a, 0x00, 0x00
006724cc  3c 1c 00 00 70 34 27 00 e4 b7 26 00              .byte 0x3c, 0x1c, 0x00, 0x00, 0x70, 0x34, 0x27, 0x00, 0xe4, 0xb7, 0x26, 0x00

; Source listing: glitch_IDevice-5ff81d3a8772-001.asm:93-135
; FUNCTION 0x00671554, declared_size=148, range_size=148, mode=arm
; class-group: glitch::IDevice
; alias: _ZN6glitch7IDevice17createGUIAndSceneEv
; demangled: glitch::IDevice::createGUIAndScene()
; decoder-mode: arm
00671554  30 40 2d e9                                      push {r4, r5, lr}
00671558  10 30 90 e5                                      ldr r3, [r0, #0x10]
0067155c  0c d0 4d e2                                      sub sp, sp, #0xc
00671560  00 40 a0 e1                                      mov r4, r0
00671564  00 00 53 e3                                      cmp r3, #0
00671568  06 00 00 0a                                      beq #0x671588
0067156c  00 10 a0 e3                                      mov r1, #0
00671570  20 00 a0 e3                                      mov r0, #0x20
00671574  0c 0b fb eb                                      bl #0x5341ac
00671578  10 10 94 e5                                      ldr r1, [r4, #0x10]
0067157c  00 50 a0 e1                                      mov r5, r0
00671580  a0 b6 fc eb                                      bl #0x59f008
00671584  14 50 84 e5                                      str r5, [r4, #0x14]
00671588  96 0a fb eb                                      bl #0x533fe8
0067158c  34 50 84 e2                                      add r5, r4, #0x34
00671590  05 10 a0 e1                                      mov r1, r5
00671594  10 20 94 e5                                      ldr r2, [r4, #0x10]
00671598  30 30 94 e5                                      ldr r3, [r4, #0x30]
0067159c  00 c0 90 e5                                      ldr ip, [r0]
006715a0  0f e0 a0 e1                                      mov lr, pc
006715a4  10 f0 9c e5                                      ldr pc, [ip, #0x10]
006715a8  18 00 84 e5                                      str r0, [r4, #0x18]
006715ac  8d 0a fb eb                                      bl #0x533fe8
006715b0  18 e0 94 e5                                      ldr lr, [r4, #0x18]
006715b4  10 10 94 e5                                      ldr r1, [r4, #0x10]
006715b8  24 30 94 e5                                      ldr r3, [r4, #0x24]
006715bc  00 c0 90 e5                                      ldr ip, [r0]
006715c0  05 20 a0 e1                                      mov r2, r5
006715c4  00 e0 8d e5                                      str lr, [sp]
006715c8  0f e0 a0 e1                                      mov lr, pc
006715cc  0c f0 9c e5                                      ldr pc, [ip, #0xc]
006715d0  28 10 94 e5                                      ldr r1, [r4, #0x28]
006715d4  1c 00 84 e5                                      str r0, [r4, #0x1c]
006715d8  04 00 a0 e1                                      mov r0, r4
006715dc  0c d0 8d e2                                      add sp, sp, #0xc
006715e0  30 40 bd e8                                      pop {r4, r5, lr}
006715e4  b7 ff ff ea                                      b #0x6714c8


; Source listing: glitch_IDevice-5ff81d3a8772-001.asm:340-390
; FUNCTION 0x00671b24, declared_size=180, range_size=180, mode=arm
; class-group: glitch::IDevice
; alias: _ZN6glitch7IDevice3runEv
; demangled: glitch::IDevice::run()
; decoder-mode: arm
00671b24  70 40 2d e9                                      push {r4, r5, r6, lr}
00671b28  b4 c0 90 e5                                      ldr ip, [r0, #0xb4]
00671b2c  c4 30 90 e5                                      ldr r3, [r0, #0xc4]
00671b30  18 d0 4d e2                                      sub sp, sp, #0x18
00671b34  00 50 a0 e1                                      mov r5, r0
00671b38  0c 00 53 e1                                      cmp r3, ip
00671b3c  14 00 00 0a                                      beq #0x671b94
00671b40  0d 40 a0 e1                                      mov r4, sp
00671b44  0c e0 a0 e1                                      mov lr, ip
00671b48  04 60 a0 e1                                      mov r6, r4
00671b4c  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00671b50  0f 00 a6 e8                                      stm r6!, {r0, r1, r2, r3}
00671b54  bc 20 95 e5                                      ldr r2, [r5, #0xbc]
00671b58  03 00 9e e8                                      ldm lr, {r0, r1}
00671b5c  18 20 42 e2                                      sub r2, r2, #0x18
00671b60  02 00 5c e1                                      cmp ip, r2
00671b64  18 c0 8c 12                                      addne ip, ip, #0x18
00671b68  03 00 86 e8                                      stm r6, {r0, r1}
00671b6c  b4 c0 85 15                                      strne ip, [r5, #0xb4]
00671b70  0d 00 00 0a                                      beq #0x671bac
00671b74  05 00 a0 e1                                      mov r0, r5
00671b78  0d 10 a0 e1                                      mov r1, sp
00671b7c  00 20 a0 e3                                      mov r2, #0
00671b80  9e ff ff eb                                      bl #0x671a00
00671b84  b4 c0 95 e5                                      ldr ip, [r5, #0xb4]
00671b88  c4 30 95 e5                                      ldr r3, [r5, #0xc4]
00671b8c  0c 00 53 e1                                      cmp r3, ip
00671b90  eb ff ff 1a                                      bne #0x671b44
00671b94  05 00 a0 e1                                      mov r0, r5
00671b98  00 30 95 e5                                      ldr r3, [r5]
00671b9c  0f e0 a0 e1                                      mov lr, pc
00671ba0  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00671ba4  18 d0 8d e2                                      add sp, sp, #0x18
00671ba8  70 80 bd e8                                      pop {r4, r5, r6, pc}
00671bac  b8 00 95 e5                                      ldr r0, [r5, #0xb8]
00671bb0  26 7a f2 eb                                      bl #0x310450
00671bb4  c0 30 95 e5                                      ldr r3, [r5, #0xc0]
00671bb8  04 20 83 e2                                      add r2, r3, #4
00671bbc  c0 20 85 e5                                      str r2, [r5, #0xc0]
00671bc0  04 30 93 e5                                      ldr r3, [r3, #4]
00671bc4  78 20 83 e2                                      add r2, r3, #0x78
00671bc8  bc 20 85 e5                                      str r2, [r5, #0xbc]
00671bcc  b4 30 85 e5                                      str r3, [r5, #0xb4]
00671bd0  b8 30 85 e5                                      str r3, [r5, #0xb8]
00671bd4  e6 ff ff ea                                      b #0x671b74


; Source listing: glitch_CAndroidOSDevice-c2fd4b7038c4-001.asm:188-198
; FUNCTION 0x006a0440, declared_size=20, range_size=20, mode=arm
; class-group: glitch::CAndroidOSDevice
; alias: _ZN6glitch16CAndroidOSDevice7runImplEv
; demangled: glitch::CAndroidOSDevice::runImpl()
; decoder-mode: arm
006a0440  10 40 2d e9                                      push {r4, lr}
006a0444  00 40 a0 e1                                      mov r4, r0
006a0448  77 ab fd eb                                      bl #0x60b22c
006a044c  09 01 d4 e5                                      ldrb r0, [r4, #0x109]
006a0450  10 80 bd e8                                      pop {r4, pc}


; Source listing: glitch_os_Timer-c9682427ca55-001.asm:236-255
; FUNCTION 0x0060b22c, declared_size=64, range_size=64, mode=arm
; class-group: glitch::os::Timer
; alias: _ZN6glitch2os5Timer4tickEv
; demangled: glitch::os::Timer::tick()
; decoder-mode: arm
0060b22c  10 40 2d e9                                      push {r4, lr}
0060b230  a5 ff ff eb                                      bl #0x60b0cc
0060b234  24 30 9f e5                                      ldr r3, [pc, #0x24]
0060b238  24 20 9f e5                                      ldr r2, [pc, #0x24]
0060b23c  24 10 9f e5                                      ldr r1, [pc, #0x24]
0060b240  03 30 8f e0                                      add r3, pc, r3
0060b244  02 20 93 e7                                      ldr r2, [r3, r2]
0060b248  01 10 93 e7                                      ldr r1, [r3, r1]
0060b24c  00 30 92 e5                                      ldr r3, [r2]
0060b250  00 00 81 e5                                      str r0, [r1]
0060b254  01 30 83 e2                                      add r3, r3, #1
0060b258  00 30 82 e5                                      str r3, [r2]
0060b25c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0060b260  50 98 38 00 b0 07 00 00 38 08 00 00              .byte 0x50, 0x98, 0x38, 0x00, 0xb0, 0x07, 0x00, 0x00, 0x38, 0x08, 0x00, 0x00

; Source listing: global-functions-3d6ca95892b3-001.asm:77707-77722
; FUNCTION 0x005311a0, declared_size=40, range_size=40, mode=arm
; class-group: global-functions
; alias: Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeRender
; demangled: Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeRender
; decoder-mode: arm
005311a0  18 30 9f e5                                      ldr r3, [pc, #0x18]
005311a4  18 20 9f e5                                      ldr r2, [pc, #0x18]
005311a8  03 30 8f e0                                      add r3, pc, r3
005311ac  02 20 93 e7                                      ldr r2, [r3, r2]
005311b0  00 30 92 e5                                      ldr r3, [r2]
005311b4  00 00 53 e3                                      cmp r3, #0
005311b8  1e ff 2f 11                                      bxne lr
005311bc  81 ff ff ea                                      b #0x530fc8
; mapping-symbol data/literal pool
005311c0  e8 38 46 00 40 29 00 00                          .byte 0xe8, 0x38, 0x46, 0x00, 0x40, 0x29, 0x00, 0x00


; Source listing: global-functions-3d6ca95892b3-001.asm:77658-77664
; FUNCTION 0x00531158, declared_size=4, range_size=4, mode=arm
; class-group: global-functions
; alias: Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeOnDrawFrame
; demangled: Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeOnDrawFrame
; decoder-mode: arm
00531158  1e ff 2f e1                                      bx lr


; Source listing: global-functions-3d6ca95892b3-001.asm:77547-77643
; FUNCTION 0x00530fc8, declared_size=392, range_size=392, mode=arm
; class-group: global-functions
; alias: appUpdate
; demangled: appUpdate
; decoder-mode: arm
00530fc8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00530fcc  50 41 9f e5                                      ldr r4, [pc, #0x150]
00530fd0  50 31 9f e5                                      ldr r3, [pc, #0x150]
00530fd4  50 51 9f e5                                      ldr r5, [pc, #0x150]
00530fd8  04 40 8f e0                                      add r4, pc, r4
00530fdc  03 20 94 e7                                      ldr r2, [r4, r3]
00530fe0  05 30 94 e7                                      ldr r3, [r4, r5]
00530fe4  20 d0 4d e2                                      sub sp, sp, #0x20
00530fe8  00 60 d2 e5                                      ldrb r6, [r2]
00530fec  00 30 93 e5                                      ldr r3, [r3]
00530ff0  00 00 56 e3                                      cmp r6, #0
00530ff4  1c 30 8d e5                                      str r3, [sp, #0x1c]
00530ff8  07 00 00 0a                                      beq #0x53101c
00530ffc  05 30 94 e7                                      ldr r3, [r4, r5]
00531000  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00531004  01 00 a0 e3                                      mov r0, #1
00531008  00 30 93 e5                                      ldr r3, [r3]
0053100c  03 00 52 e1                                      cmp r2, r3
00531010  42 00 00 1a                                      bne #0x531120
00531014  20 d0 8d e2                                      add sp, sp, #0x20
00531018  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0053101c  0c 31 9f e5                                      ldr r3, [pc, #0x10c]
00531020  03 30 94 e7                                      ldr r3, [r4, r3]
00531024  00 00 93 e5                                      ldr r0, [r3]
00531028  bd 02 05 eb                                      bl #0x671b24
0053102c  00 00 50 e3                                      cmp r0, #0
00531030  f1 ff ff 0a                                      beq #0x530ffc
00531034  f8 20 9f e5                                      ldr r2, [pc, #0xf8]
00531038  f8 30 9f e5                                      ldr r3, [pc, #0xf8]
0053103c  04 70 8d e2                                      add r7, sp, #4
00531040  02 80 94 e7                                      ldr r8, [r4, r2]
00531044  03 30 94 e7                                      ldr r3, [r4, r3]
00531048  00 60 88 e5                                      str r6, [r8]
0053104c  00 00 93 e5                                      ldr r0, [r3]
00531050  1b ef f7 eb                                      bl #0x32ccc4
00531054  01 30 a0 e3                                      mov r3, #1
00531058  00 30 88 e5                                      str r3, [r8]
0053105c  d8 30 9f e5                                      ldr r3, [pc, #0xd8]
00531060  03 80 94 e7                                      ldr r8, [r4, r3]
00531064  08 00 a0 e1                                      mov r0, r8
00531068  06 1a f8 eb                                      bl #0x337888
0053106c  07 00 a0 e1                                      mov r0, r7
00531070  10 10 a0 e3                                      mov r1, #0x10
00531074  14 70 8d e5                                      str r7, [sp, #0x14]
00531078  18 70 8d e5                                      str r7, [sp, #0x18]
0053107c  7e 81 f7 eb                                      bl #0x31167c
00531080  b8 10 9f e5                                      ldr r1, [pc, #0xb8]
00531084  0f 20 a0 e3                                      mov r2, #0xf
00531088  18 00 9d e5                                      ldr r0, [sp, #0x18]
0053108c  01 10 8f e0                                      add r1, pc, r1
00531090  f4 75 f7 eb                                      bl #0x30e868
00531094  0f 30 80 e2                                      add r3, r0, #0xf
00531098  14 30 8d e5                                      str r3, [sp, #0x14]
0053109c  07 10 a0 e1                                      mov r1, r7
005310a0  0f 60 c0 e5                                      strb r6, [r0, #0xf]
005310a4  08 00 a0 e1                                      mov r0, r8
005310a8  76 1a f8 eb                                      bl #0x337a88
005310ac  00 60 a0 e1                                      mov r6, r0
005310b0  07 00 a0 e1                                      mov r0, r7
005310b4  3c 8a f7 eb                                      bl #0x3139ac
005310b8  00 00 56 e3                                      cmp r6, #0
005310bc  ce ff ff 0a                                      beq #0x530ffc
005310c0  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
005310c4  03 60 94 e7                                      ldr r6, [r4, r3]
005310c8  00 00 96 e5                                      ldr r0, [r6]
005310cc  91 e6 01 eb                                      bl #0x5aab18
005310d0  00 70 a0 e1                                      mov r7, r0
005310d4  00 00 96 e5                                      ldr r0, [r6]
005310d8  82 e6 01 eb                                      bl #0x5aaae8
005310dc  64 30 9f e5                                      ldr r3, [pc, #0x64]
005310e0  03 20 94 e7                                      ldr r2, [r4, r3]
005310e4  00 20 92 e5                                      ldr r2, [r2]
005310e8  02 00 57 e1                                      cmp r7, r2
005310ec  05 00 00 0a                                      beq #0x531108
005310f0  54 20 9f e5                                      ldr r2, [pc, #0x54]
005310f4  03 10 94 e7                                      ldr r1, [r4, r3]
005310f8  02 30 94 e7                                      ldr r3, [r4, r2]
005310fc  00 70 81 e5                                      str r7, [r1]
00531100  00 00 83 e5                                      str r0, [r3]
00531104  bc ff ff ea                                      b #0x530ffc
00531108  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0053110c  02 10 94 e7                                      ldr r1, [r4, r2]
00531110  00 10 91 e5                                      ldr r1, [r1]
00531114  01 00 50 e1                                      cmp r0, r1
00531118  f5 ff ff 1a                                      bne #0x5310f4
0053111c  b6 ff ff ea                                      b #0x530ffc
00531120  7a 74 f7 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00531124  b8 3a 46 00 98 2d 00 00 ac 40 00 00 e8 1e 00 00  .byte 0xb8, 0x3a, 0x46, 0x00, 0x98, 0x2d, 0x00, 0x00, 0xac, 0x40, 0x00, 0x00, 0xe8, 0x1e, 0x00, 0x00
00531134  98 23 00 00 a4 46 00 00 84 08 00 00 04 c4 3a 00  .byte 0x98, 0x23, 0x00, 0x00, 0xa4, 0x46, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x04, 0xc4, 0x3a, 0x00
00531144  60 37 00 00 f4 34 00 00 20 3f 00 00              .byte 0x60, 0x37, 0x00, 0x00, 0xf4, 0x34, 0x00, 0x00, 0x20, 0x3f, 0x00, 0x00


; Source listing: global-functions-3d6ca95892b3-001.asm:77679-77690
; FUNCTION 0x0053117c, declared_size=20, range_size=20, mode=arm
; class-group: global-functions
; alias: Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeResize
; demangled: Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeResize
; decoder-mode: arm
0053117c  08 10 9f e5                                      ldr r1, [pc, #8]
00531180  01 10 8f e0                                      add r1, pc, r1
00531184  0c 00 81 e8                                      stm r1, {r2, r3}
00531188  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0053118c  84 9f 46 00                                      .byte 0x84, 0x9f, 0x46, 0x00


; Source listing: global-functions-3d6ca95892b3-001.asm:77691-77699
; FUNCTION 0x00531190, declared_size=12, range_size=12, mode=arm
; class-group: global-functions
; alias: Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeOnSurfaceChanged
; demangled: Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeOnSurfaceChanged
; decoder-mode: arm
00531190  02 00 a0 e1                                      mov r0, r2
00531194  03 10 a0 e1                                      mov r1, r3
00531198  f7 ff ff ea                                      b #0x53117c


; Source listing: glitch_CAndroidOSDevice-c2fd4b7038c4-001.asm:22-28
; FUNCTION 0x006a02b8, declared_size=4, range_size=4, mode=arm
; class-group: glitch::CAndroidOSDevice
; alias: _ZN6glitch16CAndroidOSDevice9setResizeEii
; demangled: glitch::CAndroidOSDevice::setResize(int, int)
; decoder-mode: arm
006a02b8  1e ff 2f e1                                      bx lr


; Source listing: glitch_CAndroidOSDevice-c2fd4b7038c4-001.asm:14-21
; FUNCTION 0x006a02b0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::CAndroidOSDevice
; alias: _ZN6glitch16CAndroidOSDevice12createWindowEv
; demangled: glitch::CAndroidOSDevice::createWindow()
; decoder-mode: arm
006a02b0  01 00 a0 e3                                      mov r0, #1
006a02b4  1e ff 2f e1                                      bx lr


; Source listing: global-functions-3d6ca95892b3-001.asm:80215-80221
; FUNCTION 0x00533424, declared_size=4, range_size=4, mode=arm
; class-group: global-functions
; alias: Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativePause
; demangled: Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativePause
; decoder-mode: arm
00533424  6b f5 ff ea                                      b #0x5309d8


; Source listing: global-functions-3d6ca95892b3-001.asm:77157-77178
; FUNCTION 0x005309d8, declared_size=68, range_size=68, mode=arm
; class-group: global-functions
; alias: appPause
; demangled: appPause
; decoder-mode: arm
005309d8  30 30 9f e5                                      ldr r3, [pc, #0x30]
005309dc  30 20 9f e5                                      ldr r2, [pc, #0x30]
005309e0  10 40 2d e9                                      push {r4, lr}
005309e4  03 30 8f e0                                      add r3, pc, r3
005309e8  02 40 93 e7                                      ldr r4, [r3, r2]
005309ec  24 20 9f e5                                      ldr r2, [pc, #0x24]
005309f0  01 10 a0 e3                                      mov r1, #1
005309f4  04 00 a0 e1                                      mov r0, r4
005309f8  02 20 93 e7                                      ldr r2, [r3, r2]
005309fc  00 10 c2 e5                                      strb r1, [r2]
00530a00  c7 c7 f7 eb                                      bl #0x322924
00530a04  04 00 a0 e1                                      mov r0, r4
00530a08  10 40 bd e8                                      pop {r4, lr}
00530a0c  ff cd f7 ea                                      b #0x324210
; mapping-symbol data/literal pool
00530a10  ac 40 46 00 f4 37 00 00 a8 26 00 00              .byte 0xac, 0x40, 0x46, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xa8, 0x26, 0x00, 0x00


; Source listing: global-functions-3d6ca95892b3-001.asm:80291-80305
; FUNCTION 0x005334dc, declared_size=36, range_size=36, mode=arm
; class-group: global-functions
; alias: Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeResume
; demangled: Java_com_gameloft_android_GAND_GloftD2SS_DungeonHunter2_nativeResume
; decoder-mode: arm
005334dc  14 30 9f e5                                      ldr r3, [pc, #0x14]
005334e0  14 20 9f e5                                      ldr r2, [pc, #0x14]
005334e4  03 30 8f e0                                      add r3, pc, r3
005334e8  02 20 93 e7                                      ldr r2, [r3, r2]
005334ec  00 30 a0 e3                                      mov r3, #0
005334f0  00 30 82 e5                                      str r3, [r2]
005334f4  1e f5 ff ea                                      b #0x530974
; mapping-symbol data/literal pool
005334f8  ac 15 46 00 40 29 00 00                          .byte 0xac, 0x15, 0x46, 0x00, 0x40, 0x29, 0x00, 0x00


; Source listing: global-functions-3d6ca95892b3-001.asm:77128-77156
; FUNCTION 0x00530974, declared_size=100, range_size=100, mode=arm
; class-group: global-functions
; alias: appResume
; demangled: appResume
; decoder-mode: arm
00530974  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
00530978  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
0053097c  70 40 2d e9                                      push {r4, r5, r6, lr}
00530980  03 30 8f e0                                      add r3, pc, r3
00530984  02 40 93 e7                                      ldr r4, [r3, r2]
00530988  00 20 d4 e5                                      ldrb r2, [r4]
0053098c  00 00 52 e3                                      cmp r2, #0
00530990  0b 00 00 0a                                      beq #0x5309c4
00530994  34 20 9f e5                                      ldr r2, [pc, #0x34]
00530998  02 50 93 e7                                      ldr r5, [r3, r2]
0053099c  30 20 9f e5                                      ldr r2, [pc, #0x30]
005309a0  05 00 a0 e1                                      mov r0, r5
005309a4  02 30 93 e7                                      ldr r3, [r3, r2]
005309a8  01 20 a0 e3                                      mov r2, #1
005309ac  00 20 c3 e5                                      strb r2, [r3]
005309b0  00 ce f7 eb                                      bl #0x3241b8
005309b4  05 00 a0 e1                                      mov r0, r5
005309b8  88 e1 f7 eb                                      bl #0x328fe0
005309bc  00 30 a0 e3                                      mov r3, #0
005309c0  00 30 c4 e5                                      strb r3, [r4]
005309c4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005309c8  10 41 46 00 a8 26 00 00 f4 37 00 00 28 49 00 00  .byte 0x10, 0x41, 0x46, 0x00, 0xa8, 0x26, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x28, 0x49, 0x00, 0x00


; Source listing: global-functions-3d6ca95892b3-001.asm:80246-80290
; FUNCTION 0x00533440, declared_size=156, range_size=156, mode=arm
; class-group: global-functions
; alias: Java_com_gameloft_android_GAND_GloftD2SS_GameGLSurfaceView_nativeOnTouch
; demangled: Java_com_gameloft_android_GAND_GloftD2SS_GameGLSurfaceView_nativeOnTouch
; decoder-mode: arm
00533440  8c 10 9f e5                                      ldr r1, [pc, #0x8c]
00533444  70 40 2d e9                                      push {r4, r5, r6, lr}
00533448  02 60 a0 e1                                      mov r6, r2
0053344c  84 20 9f e5                                      ldr r2, [pc, #0x84]
00533450  01 10 8f e0                                      add r1, pc, r1
00533454  03 50 a0 e1                                      mov r5, r3
00533458  02 20 91 e7                                      ldr r2, [r1, r2]
0053345c  18 d0 4d e2                                      sub sp, sp, #0x18
00533460  30 40 9d e5                                      ldr r4, [sp, #0x30]
00533464  00 30 92 e5                                      ldr r3, [r2]
00533468  01 00 53 e3                                      cmp r3, #1
0053346c  16 00 00 0a                                      beq #0x5334cc
00533470  00 10 a0 e3                                      mov r1, #0
00533474  10 00 8d e2                                      add r0, sp, #0x10
00533478  a9 6c f7 eb                                      bl #0x30e724
0053347c  14 20 9d e5                                      ldr r2, [sp, #0x14]
00533480  d3 3d 04 e3                                      movw r3, #0x4dd3
00533484  62 30 41 e3                                      movt r3, #0x1062
00533488  93 12 c3 e0                                      smull r1, r3, r3, r2
0053348c  01 c0 a0 e3                                      mov ip, #1
00533490  00 c0 8d e5                                      str ip, [sp]
00533494  38 c0 9d e5                                      ldr ip, [sp, #0x38]
00533498  c2 2f a0 e1                                      asr r2, r2, #0x1f
0053349c  43 23 62 e0                                      rsb r2, r2, r3, asr #6
005334a0  10 30 9d e5                                      ldr r3, [sp, #0x10]
005334a4  04 c0 8d e5                                      str ip, [sp, #4]
005334a8  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
005334ac  fa 1f a0 e3                                      mov r1, #0x3e8
005334b0  91 23 23 e0                                      mla r3, r1, r3, r2
005334b4  06 00 a0 e1                                      mov r0, r6
005334b8  05 10 a0 e1                                      mov r1, r5
005334bc  28 20 9d e5                                      ldr r2, [sp, #0x28]
005334c0  08 c0 8d e5                                      str ip, [sp, #8]
005334c4  0c 40 8d e5                                      str r4, [sp, #0xc]
005334c8  13 ef ff eb                                      bl #0x52f11c
005334cc  18 d0 8d e2                                      add sp, sp, #0x18
005334d0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005334d4  40 16 46 00 60 2c 00 00                          .byte 0x40, 0x16, 0x46, 0x00, 0x60, 0x2c, 0x00, 0x00


; Source listing: global-functions-3d6ca95892b3-001.asm:75542-75621
; FUNCTION 0x0052f11c, declared_size=304, range_size=304, mode=arm
; class-group: global-functions
; alias: appOnTouch
; demangled: appOnTouch
; decoder-mode: arm
0052f11c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0052f120  00 60 a0 e1                                      mov r6, r0
0052f124  0c 01 9f e5                                      ldr r0, [pc, #0x10c]
0052f128  01 50 a0 e1                                      mov r5, r1
0052f12c  14 d0 4d e2                                      sub sp, sp, #0x14
0052f130  00 00 8f e0                                      add r0, pc, r0
0052f134  02 40 a0 e1                                      mov r4, r2
0052f138  34 70 9d e5                                      ldr r7, [sp, #0x34]
0052f13c  f4 d3 f7 eb                                      bl #0x324114
0052f140  4b 2f 45 e2                                      sub r2, r5, #0x12c
0052f144  01 20 42 e2                                      sub r2, r2, #1
0052f148  c6 00 52 e3                                      cmp r2, #0xc6
0052f14c  00 10 a0 83                                      movhi r1, #0
0052f150  01 10 a0 93                                      movls r1, #1
0052f154  e0 30 9f e5                                      ldr r3, [pc, #0xe0]
0052f158  fa 00 54 e3                                      cmp r4, #0xfa
0052f15c  00 10 a0 d3                                      movle r1, #0
0052f160  00 00 51 e3                                      cmp r1, #0
0052f164  03 30 8f e0                                      add r3, pc, r3
0052f168  01 00 00 0a                                      beq #0x52f174
0052f16c  19 0e 54 e3                                      cmp r4, #0x190
0052f170  19 00 00 ba                                      blt #0x52f1dc
0052f174  c4 20 9f e5                                      ldr r2, [pc, #0xc4]
0052f178  02 20 93 e7                                      ldr r2, [r3, r2]
0052f17c  00 20 92 e5                                      ldr r2, [r2]
0052f180  00 00 52 e3                                      cmp r2, #0
0052f184  12 00 00 0a                                      beq #0x52f1d4
0052f188  b4 10 9f e5                                      ldr r1, [pc, #0xb4]
0052f18c  01 30 93 e7                                      ldr r3, [r3, r1]
0052f190  00 30 d3 e5                                      ldrb r3, [r3]
0052f194  00 00 53 e3                                      cmp r3, #0
0052f198  0d 00 00 1a                                      bne #0x52f1d4
0052f19c  01 00 56 e3                                      cmp r6, #1
0052f1a0  12 00 00 0a                                      beq #0x52f1f0
0052f1a4  02 00 56 e3                                      cmp r6, #2
0052f1a8  19 00 00 0a                                      beq #0x52f214
0052f1ac  00 00 56 e3                                      cmp r6, #0
0052f1b0  07 00 00 1a                                      bne #0x52f1d4
0052f1b4  20 00 92 e5                                      ldr r0, [r2, #0x20]
0052f1b8  0c 10 8d e2                                      add r1, sp, #0xc
0052f1bc  07 20 a0 e1                                      mov r2, r7
0052f1c0  00 30 90 e5                                      ldr r3, [r0]
0052f1c4  28 30 93 e5                                      ldr r3, [r3, #0x28]
0052f1c8  bc 50 cd e1                                      strh r5, [sp, #0xc]
0052f1cc  be 40 cd e1                                      strh r4, [sp, #0xe]
0052f1d0  33 ff 2f e1                                      blx r3
0052f1d4  14 d0 8d e2                                      add sp, sp, #0x14
0052f1d8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0052f1dc  64 20 9f e5                                      ldr r2, [pc, #0x64]
0052f1e0  00 10 a0 e3                                      mov r1, #0
0052f1e4  02 20 93 e7                                      ldr r2, [r3, r2]
0052f1e8  00 10 c2 e5                                      strb r1, [r2]
0052f1ec  e0 ff ff ea                                      b #0x52f174
0052f1f0  20 00 92 e5                                      ldr r0, [r2, #0x20]
0052f1f4  08 10 8d e2                                      add r1, sp, #8
0052f1f8  07 20 a0 e1                                      mov r2, r7
0052f1fc  00 30 90 e5                                      ldr r3, [r0]
0052f200  20 30 93 e5                                      ldr r3, [r3, #0x20]
0052f204  b8 50 cd e1                                      strh r5, [sp, #8]
0052f208  ba 40 cd e1                                      strh r4, [sp, #0xa]
0052f20c  33 ff 2f e1                                      blx r3
0052f210  ef ff ff ea                                      b #0x52f1d4
0052f214  20 00 92 e5                                      ldr r0, [r2, #0x20]
0052f218  04 10 8d e2                                      add r1, sp, #4
0052f21c  07 20 a0 e1                                      mov r2, r7
0052f220  00 30 90 e5                                      ldr r3, [r0]
0052f224  24 30 93 e5                                      ldr r3, [r3, #0x24]
0052f228  b4 50 cd e1                                      strh r5, [sp, #4]
0052f22c  b6 40 cd e1                                      strh r4, [sp, #6]
0052f230  33 ff 2f e1                                      blx r3
0052f234  e6 ff ff ea                                      b #0x52f1d4
; mapping-symbol data/literal pool
0052f238  38 de 3a 00 2c 59 46 00 a4 46 00 00 b8 37 00 00  .byte 0x38, 0xde, 0x3a, 0x00, 0x2c, 0x59, 0x46, 0x00, 0xa4, 0x46, 0x00, 0x00, 0xb8, 0x37, 0x00, 0x00
0052f248  a4 1e 00 00                                      .byte 0xa4, 0x1e, 0x00, 0x00


; Source listing: global-functions-3d6ca95892b3-001.asm:77700-77706
; FUNCTION 0x0053119c, declared_size=4, range_size=4, mode=arm
; class-group: global-functions
; alias: Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeDone
; demangled: Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeDone
; decoder-mode: arm
0053119c  1e fe ff ea                                      b #0x530a1c


; Source listing: global-functions-3d6ca95892b3-001.asm:77179-77202
; FUNCTION 0x00530a1c, declared_size=80, range_size=80, mode=arm
; class-group: global-functions
; alias: appDestroy
; demangled: appDestroy
; decoder-mode: arm
00530a1c  10 40 2d e9                                      push {r4, lr}
00530a20  34 40 9f e5                                      ldr r4, [pc, #0x34]
00530a24  34 30 9f e5                                      ldr r3, [pc, #0x34]
00530a28  04 40 8f e0                                      add r4, pc, r4
00530a2c  03 20 94 e7                                      ldr r2, [r4, r3]
00530a30  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00530a34  00 00 92 e5                                      ldr r0, [r2]
00530a38  03 30 94 e7                                      ldr r3, [r4, r3]
00530a3c  01 20 a0 e3                                      mov r2, #1
00530a40  00 20 c3 e5                                      strb r2, [r3]
00530a44  ce b2 f7 eb                                      bl #0x31d584
00530a48  18 30 9f e5                                      ldr r3, [pc, #0x18]
00530a4c  03 30 94 e7                                      ldr r3, [r4, r3]
00530a50  00 00 93 e5                                      ldr r0, [r3]
00530a54  10 40 bd e8                                      pop {r4, lr}
00530a58  59 cc f7 ea                                      b #0x323bc4
; mapping-symbol data/literal pool
00530a5c  68 40 46 00 e8 1e 00 00 98 2d 00 00 a4 46 00 00  .byte 0x68, 0x40, 0x46, 0x00, 0xe8, 0x1e, 0x00, 0x00, 0x98, 0x2d, 0x00, 0x00, 0xa4, 0x46, 0x00, 0x00


; Source listing: glitch_CAndroidOSDevice-c2fd4b7038c4-001.asm:5-13
; FUNCTION 0x006a02a4, declared_size=12, range_size=12, mode=arm
; class-group: glitch::CAndroidOSDevice
; alias: _ZN6glitch16CAndroidOSDevice11closeDeviceEv
; demangled: glitch::CAndroidOSDevice::closeDevice()
; decoder-mode: arm
006a02a4  00 30 a0 e3                                      mov r3, #0
006a02a8  09 31 c0 e5                                      strb r3, [r0, #0x109]
006a02ac  1e ff 2f e1                                      bx lr

; Source listing: Application-e7ad522ea327-001.asm:4636-4829
; FUNCTION 0x0032ccc4, declared_size=772, range_size=772, mode=arm
; class-group: Application
; alias: _ZN11Application6UpdateEv
; demangled: Application::Update()
; decoder-mode: arm
0032ccc4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0032ccc8  d4 52 9f e5                                      ldr r5, [pc, #0x2d4]
0032cccc  d4 62 9f e5                                      ldr r6, [pc, #0x2d4]
0032ccd0  a4 20 d0 e5                                      ldrb r2, [r0, #0xa4]
0032ccd4  05 50 8f e0                                      add r5, pc, r5
0032ccd8  06 30 95 e7                                      ldr r3, [r5, r6]
0032ccdc  2c d0 4d e2                                      sub sp, sp, #0x2c
0032cce0  00 00 52 e3                                      cmp r2, #0
0032cce4  00 30 93 e5                                      ldr r3, [r3]
0032cce8  00 40 a0 e1                                      mov r4, r0
0032ccec  24 30 8d e5                                      str r3, [sp, #0x24]
0032ccf0  06 00 00 0a                                      beq #0x32cd10
0032ccf4  06 30 95 e7                                      ldr r3, [r5, r6]
0032ccf8  24 20 9d e5                                      ldr r2, [sp, #0x24]
0032ccfc  00 30 93 e5                                      ldr r3, [r3]
0032cd00  03 00 52 e1                                      cmp r2, r3
0032cd04  a5 00 00 1a                                      bne #0x32cfa0
0032cd08  2c d0 8d e2                                      add sp, sp, #0x2c
0032cd0c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0032cd10  9f 42 13 eb                                      bl #0x7fd794
0032cd14  05 30 d0 e5                                      ldrb r3, [r0, #5]
0032cd18  00 00 53 e3                                      cmp r3, #0
0032cd1c  61 00 00 1a                                      bne #0x32cea8
0032cd20  7a 30 d4 e5                                      ldrb r3, [r4, #0x7a]
0032cd24  00 00 53 e3                                      cmp r3, #0
0032cd28  00 30 a0 13                                      movne r3, #0
0032cd2c  7a 30 c4 15                                      strbne r3, [r4, #0x7a]
0032cd30  10 30 94 e5                                      ldr r3, [r4, #0x10]
0032cd34  20 30 93 e5                                      ldr r3, [r3, #0x20]
0032cd38  03 00 a0 e1                                      mov r0, r3
0032cd3c  00 30 93 e5                                      ldr r3, [r3]
0032cd40  0f e0 a0 e1                                      mov lr, pc
0032cd44  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0032cd48  70 30 94 e5                                      ldr r3, [r4, #0x70]
0032cd4c  00 70 a0 e1                                      mov r7, r0
0032cd50  00 30 63 e0                                      rsb r3, r3, r0
0032cd54  7d 0e 53 e3                                      cmp r3, #0x7d0
0032cd58  68 00 00 8a                                      bhi #0x32cf00
0032cd5c  28 00 94 e5                                      ldr r0, [r4, #0x28]
0032cd60  00 00 50 e3                                      cmp r0, #0
0032cd64  05 00 00 0a                                      beq #0x32cd80
0032cd68  3c 32 9f e5                                      ldr r3, [pc, #0x23c]
0032cd6c  03 30 8f e0                                      add r3, pc, r3
0032cd70  04 20 93 e5                                      ldr r2, [r3, #4]
0032cd74  07 20 62 e0                                      rsb r2, r2, r7
0032cd78  fa 0e 52 e3                                      cmp r2, #0xfa0
0032cd7c  46 00 00 ca                                      bgt #0x32ce9c
0032cd80  70 70 84 e5                                      str r7, [r4, #0x70]
0032cd84  82 42 13 eb                                      bl #0x7fd794
0032cd88  05 30 d0 e5                                      ldrb r3, [r0, #5]
0032cd8c  00 00 53 e3                                      cmp r3, #0
0032cd90  4a 00 00 1a                                      bne #0x32cec0
0032cd94  20 00 94 e5                                      ldr r0, [r4, #0x20]
0032cd98  f2 3d 00 eb                                      bl #0x33c568
0032cd9c  04 00 a0 e1                                      mov r0, r4
0032cda0  ff cf ff eb                                      bl #0x320da4
0032cda4  8c 00 94 e5                                      ldr r0, [r4, #0x8c]
0032cda8  4c 85 ff eb                                      bl #0x30e2e0
0032cdac  00 70 a0 e1                                      mov r7, r0
0032cdb0  00 10 a0 e1                                      mov r1, r0
0032cdb4  11 03 a0 e3                                      mov r0, #0x44000000
0032cdb8  7a 08 80 e2                                      add r0, r0, #0x7a0000
0032cdbc  b4 87 ff eb                                      bl #0x30ec94
0032cdc0  e8 31 9f e5                                      ldr r3, [pc, #0x1e8]
0032cdc4  07 10 a0 e1                                      mov r1, r7
0032cdc8  00 a0 a0 e1                                      mov sl, r0
0032cdcc  03 80 95 e7                                      ldr r8, [r5, r3]
0032cdd0  0c 70 8d e2                                      add r7, sp, #0xc
0032cdd4  08 00 a0 e1                                      mov r0, r8
0032cdd8  67 92 ff eb                                      bl #0x31177c
0032cddc  8c 10 94 e5                                      ldr r1, [r4, #0x8c]
0032cde0  04 00 a0 e1                                      mov r0, r4
0032cde4  93 fd ff eb                                      bl #0x32c438
0032cde8  04 00 a0 e1                                      mov r0, r4
0032cdec  fd f7 ff eb                                      bl #0x32ade8
0032cdf0  bc 11 9f e5                                      ldr r1, [pc, #0x1bc]
0032cdf4  08 20 8d e2                                      add r2, sp, #8
0032cdf8  07 00 a0 e1                                      mov r0, r7
0032cdfc  01 10 8f e0                                      add r1, pc, r1
0032ce00  b9 9c ff eb                                      bl #0x3140ec
0032ce04  42 c4 a0 e3                                      mov ip, #0x42000000
0032ce08  00 30 a0 e3                                      mov r3, #0
0032ce0c  07 c6 8c e2                                      add ip, ip, #0x700000
0032ce10  0a 20 a0 e1                                      mov r2, sl
0032ce14  07 10 a0 e1                                      mov r1, r7
0032ce18  08 00 a0 e1                                      mov r0, r8
0032ce1c  00 c0 8d e5                                      str ip, [sp]
0032ce20  43 96 ff eb                                      bl #0x312734
0032ce24  07 00 a0 e1                                      mov r0, r7
0032ce28  df 9a ff eb                                      bl #0x3139ac
0032ce2c  58 42 13 eb                                      bl #0x7fd794
0032ce30  05 30 d0 e5                                      ldrb r3, [r0, #5]
0032ce34  00 00 53 e3                                      cmp r3, #0
0032ce38  1d 00 00 1a                                      bne #0x32ceb4
0032ce3c  42 52 01 eb                                      bl #0x38174c
0032ce40  00 00 50 e3                                      cmp r0, #0
0032ce44  aa ff ff 0a                                      beq #0x32ccf4
0032ce48  68 31 9f e5                                      ldr r3, [pc, #0x168]
0032ce4c  03 30 8f e0                                      add r3, pc, r3
0032ce50  08 20 93 e5                                      ldr r2, [r3, #8]
0032ce54  0c 00 93 e5                                      ldr r0, [r3, #0xc]
0032ce58  01 20 82 e2                                      add r2, r2, #1
0032ce5c  08 20 83 e5                                      str r2, [r3, #8]
0032ce60  8c 10 94 e5                                      ldr r1, [r4, #0x8c]
0032ce64  0a 00 52 e3                                      cmp r2, #0xa
0032ce68  01 20 80 e0                                      add r2, r0, r1
0032ce6c  0c 20 83 e5                                      str r2, [r3, #0xc]
0032ce70  26 00 00 0a                                      beq #0x32cf10
0032ce74  10 10 93 e5                                      ldr r1, [r3, #0x10]
0032ce78  00 00 51 e3                                      cmp r1, #0
0032ce7c  9c ff ff da                                      ble #0x32ccf4
0032ce80  10 30 94 e5                                      ldr r3, [r4, #0x10]
0032ce84  00 20 a0 e3                                      mov r2, #0
0032ce88  03 00 a0 e1                                      mov r0, r3
0032ce8c  00 30 93 e5                                      ldr r3, [r3]
0032ce90  0f e0 a0 e1                                      mov lr, pc
0032ce94  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0032ce98  95 ff ff ea                                      b #0x32ccf4
0032ce9c  04 70 83 e5                                      str r7, [r3, #4]
0032cea0  96 30 00 eb                                      bl #0x339100
0032cea4  b5 ff ff ea                                      b #0x32cd80
0032cea8  39 42 13 eb                                      bl #0x7fd794
0032ceac  98 42 13 eb                                      bl #0x7fd914
0032ceb0  9a ff ff ea                                      b #0x32cd20
0032ceb4  36 42 13 eb                                      bl #0x7fd794
0032ceb8  dd 41 13 eb                                      bl #0x7fd634
0032cebc  de ff ff ea                                      b #0x32ce3c
0032cec0  f4 70 9f e5                                      ldr r7, [pc, #0xf4]
0032cec4  07 70 8f e0                                      add r7, pc, r7
0032cec8  07 00 a0 e1                                      mov r0, r7
0032cecc  f8 99 ff eb                                      bl #0x3136b4
0032ced0  2f 42 13 eb                                      bl #0x7fd794
0032ced4  00 80 a0 e1                                      mov r8, r0
0032ced8  8c 00 94 e5                                      ldr r0, [r4, #0x8c]
0032cedc  ff 84 ff eb                                      bl #0x30e2e0
0032cee0  00 10 a0 e1                                      mov r1, r0
0032cee4  08 00 a0 e1                                      mov r0, r8
0032cee8  11 e0 13 eb                                      bl #0x824f34
0032ceec  e9 cf ff eb                                      bl #0x320e98
0032cef0  29 cd 05 eb                                      bl #0x4a039c
0032cef4  07 00 a0 e1                                      mov r0, r7
0032cef8  ee 99 ff eb                                      bl #0x3136b8
0032cefc  a4 ff ff ea                                      b #0x32cd94
0032cf00  70 00 84 e5                                      str r0, [r4, #0x70]
0032cf04  04 00 a0 e1                                      mov r0, r4
0032cf08  a5 cf ff eb                                      bl #0x320da4
0032cf0c  78 ff ff ea                                      b #0x32ccf4
0032cf10  67 16 06 e3                                      movw r1, #0x6667
0032cf14  66 16 46 e3                                      movt r1, #0x6666
0032cf18  91 02 c1 e0                                      smull r0, r1, r1, r2
0032cf1c  10 00 93 e5                                      ldr r0, [r3, #0x10]
0032cf20  c2 2f a0 e1                                      asr r2, r2, #0x1f
0032cf24  41 11 62 e0                                      rsb r1, r2, r1, asr #2
0032cf28  01 10 60 e0                                      rsb r1, r0, r1
0032cf2c  0f 00 51 e3                                      cmp r1, #0xf
0032cf30  10 10 61 d2                                      rsble r1, r1, #0x10
0032cf34  10 10 83 d5                                      strle r1, [r3, #0x10]
0032cf38  0d 00 00 da                                      ble #0x32cf74
0032cf3c  20 00 51 e3                                      cmp r1, #0x20
0032cf40  21 10 61 d2                                      rsble r1, r1, #0x21
0032cf44  10 10 83 d5                                      strle r1, [r3, #0x10]
0032cf48  09 00 00 da                                      ble #0x32cf74
0032cf4c  31 00 51 e3                                      cmp r1, #0x31
0032cf50  32 10 61 d2                                      rsble r1, r1, #0x32
0032cf54  10 10 83 d5                                      strle r1, [r3, #0x10]
0032cf58  05 00 00 da                                      ble #0x32cf74
0032cf5c  00 20 a0 e3                                      mov r2, #0
0032cf60  0c 20 83 e5                                      str r2, [r3, #0xc]
0032cf64  10 20 83 e5                                      str r2, [r3, #0x10]
0032cf68  08 20 83 e5                                      str r2, [r3, #8]
0032cf6c  05 10 a0 e3                                      mov r1, #5
0032cf70  06 00 00 ea                                      b #0x32cf90
0032cf74  44 30 9f e5                                      ldr r3, [pc, #0x44]
0032cf78  00 20 a0 e3                                      mov r2, #0
0032cf7c  04 00 51 e3                                      cmp r1, #4
0032cf80  03 30 8f e0                                      add r3, pc, r3
0032cf84  0c 20 83 e5                                      str r2, [r3, #0xc]
0032cf88  08 20 83 e5                                      str r2, [r3, #8]
0032cf8c  f6 ff ff da                                      ble #0x32cf6c
0032cf90  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0032cf94  03 30 8f e0                                      add r3, pc, r3
0032cf98  10 10 83 e5                                      str r1, [r3, #0x10]
0032cf9c  b7 ff ff ea                                      b #0x32ce80
0032cfa0  da 84 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0032cfa4  bc 7d 66 00 ac 40 00 00 88 2c 67 00 fc 0c 00 00  .byte 0xbc, 0x7d, 0x66, 0x00, 0xac, 0x40, 0x00, 0x00, 0x88, 0x2c, 0x67, 0x00, 0xfc, 0x0c, 0x00, 0x00
0032cfb4  04 25 59 00 a8 2b 67 00 2c 24 59 00 74 2a 67 00  .byte 0x04, 0x25, 0x59, 0x00, 0xa8, 0x2b, 0x67, 0x00, 0x2c, 0x24, 0x59, 0x00, 0x74, 0x2a, 0x67, 0x00
0032cfc4  60 2a 67 00                                      .byte 0x60, 0x2a, 0x67, 0x00


; Source listing: TouchScreenBase-0ca9fd911a03-001.asm:189-259
; FUNCTION 0x0033ac24, declared_size=260, range_size=260, mode=arm
; class-group: TouchScreenBase
; alias: _ZN15TouchScreenBase10touchBeganERK7Point2DIsEl
; demangled: TouchScreenBase::touchBegan(Point2D<short> const&, long)
; decoder-mode: arm
0033ac24  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0033ac28  90 31 90 e5                                      ldr r3, [r0, #0x190]
0033ac2c  01 e0 82 e2                                      add lr, r2, #1
0033ac30  02 50 a0 e1                                      mov r5, r2
0033ac34  02 00 53 e1                                      cmp r3, r2
0033ac38  30 30 a0 e3                                      mov r3, #0x30
0033ac3c  93 02 23 e0                                      mla r3, r3, r2, r0
0033ac40  90 e1 80 b5                                      strlt lr, [r0, #0x190]
0033ac44  28 20 d3 e5                                      ldrb r2, [r3, #0x28]
0033ac48  0c d0 4d e2                                      sub sp, sp, #0xc
0033ac4c  00 40 a0 e1                                      mov r4, r0
0033ac50  00 00 52 e3                                      cmp r2, #0
0033ac54  01 60 a0 e1                                      mov r6, r1
0033ac58  09 00 00 1a                                      bne #0x33ac84
0033ac5c  06 10 a0 e3                                      mov r1, #6
0033ac60  91 05 01 e0                                      mul r1, r1, r5
0033ac64  b2 c0 d6 e1                                      ldrh ip, [r6, #2]
0033ac68  b0 70 d6 e1                                      ldrh r7, [r6]
0033ac6c  01 10 81 e2                                      add r1, r1, #1
0033ac70  81 11 a0 e1                                      lsl r1, r1, #3
0033ac74  01 00 80 e0                                      add r0, r0, r1
0033ac78  b1 70 84 e1                                      strh r7, [r4, r1]
0033ac7c  b2 c0 c0 e1                                      strh ip, [r0, #2]
0033ac80  24 20 83 e5                                      str r2, [r3, #0x24]
0033ac84  06 30 a0 e3                                      mov r3, #6
0033ac88  93 05 03 e0                                      mul r3, r3, r5
0033ac8c  85 20 85 e0                                      add r2, r5, r5, lsl #1
0033ac90  01 30 83 e2                                      add r3, r3, #1
0033ac94  83 31 84 e0                                      add r3, r4, r3, lsl #3
0033ac98  b4 10 d3 e1                                      ldrh r1, [r3, #4]
0033ac9c  01 20 82 e2                                      add r2, r2, #1
0033aca0  02 02 a0 e1                                      lsl r0, r2, #4
0033aca4  b0 10 84 e1                                      strh r1, [r4, r0]
0033aca8  b6 70 d3 e1                                      ldrh r7, [r3, #6]
0033acac  00 00 84 e0                                      add r0, r4, r0
0033acb0  30 c0 a0 e3                                      mov ip, #0x30
0033acb4  b2 70 c0 e1                                      strh r7, [r0, #2]
0033acb8  b0 00 d6 e1                                      ldrh r0, [r6]
0033acbc  9c 45 21 e0                                      mla r1, ip, r5, r4
0033acc0  b4 00 c3 e1                                      strh r0, [r3, #4]
0033acc4  b2 70 d6 e1                                      ldrh r7, [r6, #2]
0033acc8  01 00 a0 e3                                      mov r0, #1
0033accc  02 22 84 e0                                      add r2, r4, r2, lsl #4
0033acd0  b6 70 c3 e1                                      strh r7, [r3, #6]
0033acd4  9c 0e 0c e0                                      mul ip, ip, lr
0033acd8  28 00 c1 e5                                      strb r0, [r1, #0x28]
0033acdc  20 00 c1 e5                                      strb r0, [r1, #0x20]
0033ace0  62 3f a0 e3                                      mov r3, #0x188
0033ace4  d3 00 84 e1                                      ldrd r0, r1, [r4, r3]
0033ace8  f8 00 c2 e1                                      strd r0, r1, [r2, #8]
0033acec  00 70 a0 e3                                      mov r7, #0
0033acf0  0c 70 84 e7                                      str r7, [r4, ip]
0033acf4  f0 00 d6 e1                                      ldrsh r0, [r6]
0033acf8  19 4f ff eb                                      bl #0x30e964
0033acfc  00 00 8d e5                                      str r0, [sp]
0033ad00  f2 00 d6 e1                                      ldrsh r0, [r6, #2]
0033ad04  16 4f ff eb                                      bl #0x30e964
0033ad08  07 10 a0 e1                                      mov r1, r7
0033ad0c  04 00 8d e5                                      str r0, [sp, #4]
0033ad10  05 30 a0 e1                                      mov r3, r5
0033ad14  04 00 a0 e1                                      mov r0, r4
0033ad18  0d 20 a0 e1                                      mov r2, sp
0033ad1c  26 ff ff eb                                      bl #0x33a9bc
0033ad20  0c d0 8d e2                                      add sp, sp, #0xc
0033ad24  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}


; Source listing: TouchScreenBase-0ca9fd911a03-001.asm:260-334
; FUNCTION 0x0033ad28, declared_size=276, range_size=276, mode=arm
; class-group: TouchScreenBase
; alias: _ZN15TouchScreenBase10touchMovedERK7Point2DIsEl
; demangled: TouchScreenBase::touchMoved(Point2D<short> const&, long)
; decoder-mode: arm
0033ad28  f0 43 2d e9                                      push {r4, r5, r6, r7, r8, sb, lr}
0033ad2c  30 30 a0 e3                                      mov r3, #0x30
0033ad30  02 50 a0 e1                                      mov r5, r2
0033ad34  93 02 22 e0                                      mla r2, r3, r2, r0
0033ad38  01 60 a0 e1                                      mov r6, r1
0033ad3c  28 10 d2 e5                                      ldrb r1, [r2, #0x28]
0033ad40  0c d0 4d e2                                      sub sp, sp, #0xc
0033ad44  00 40 a0 e1                                      mov r4, r0
0033ad48  00 00 51 e3                                      cmp r1, #0
0033ad4c  2d 00 00 0a                                      beq #0x33ae08
0033ad50  06 00 a0 e3                                      mov r0, #6
0033ad54  90 05 00 e0                                      mul r0, r0, r5
0033ad58  85 c0 85 e0                                      add ip, r5, r5, lsl #1
0033ad5c  01 00 80 e2                                      add r0, r0, #1
0033ad60  80 01 a0 e1                                      lsl r0, r0, #3
0033ad64  00 10 84 e0                                      add r1, r4, r0
0033ad68  b4 70 d1 e1                                      ldrh r7, [r1, #4]
0033ad6c  01 c0 8c e2                                      add ip, ip, #1
0033ad70  0c e2 a0 e1                                      lsl lr, ip, #4
0033ad74  be 70 84 e1                                      strh r7, [r4, lr]
0033ad78  b6 70 d1 e1                                      ldrh r7, [r1, #6]
0033ad7c  0e e0 84 e0                                      add lr, r4, lr
0033ad80  0c c2 84 e0                                      add ip, r4, ip, lsl #4
0033ad84  b2 70 ce e1                                      strh r7, [lr, #2]
0033ad88  b0 e0 d6 e1                                      ldrh lr, [r6]
0033ad8c  95 33 23 e0                                      mla r3, r5, r3, r3
0033ad90  b4 e0 c1 e1                                      strh lr, [r1, #4]
0033ad94  b2 70 d6 e1                                      ldrh r7, [r6, #2]
0033ad98  62 ef a0 e3                                      mov lr, #0x188
0033ad9c  b6 70 c1 e1                                      strh r7, [r1, #6]
0033ada0  de 80 84 e1                                      ldrd r8, sb, [r4, lr]
0033ada4  f8 80 cc e1                                      strd r8, sb, [ip, #8]
0033ada8  01 c0 a0 e3                                      mov ip, #1
0033adac  03 c0 84 e7                                      str ip, [r4, r3]
0033adb0  f0 00 94 e1                                      ldrsh r0, [r4, r0]
0033adb4  f4 30 d1 e1                                      ldrsh r3, [r1, #4]
0033adb8  00 e0 63 e0                                      rsb lr, r3, r0
0033adbc  ce cf 2e e0                                      eor ip, lr, lr, asr #31
0033adc0  ce cf 4c e0                                      sub ip, ip, lr, asr #31
0033adc4  0b 00 5c e3                                      cmp ip, #0xb
0033adc8  0e 00 00 da                                      ble #0x33ae08
0033adcc  f6 c0 d1 e1                                      ldrsh ip, [r1, #6]
0033add0  f2 10 d1 e1                                      ldrsh r1, [r1, #2]
0033add4  01 c0 6c e0                                      rsb ip, ip, r1
0033add8  cc 1f 2c e0                                      eor r1, ip, ip, asr #31
0033addc  cc 1f 41 e0                                      sub r1, r1, ip, asr #31
0033ade0  04 00 51 e3                                      cmp r1, #4
0033ade4  07 00 00 ca                                      bgt #0x33ae08
0033ade8  20 20 82 e2                                      add r2, r2, #0x20
0033adec  04 10 92 e5                                      ldr r1, [r2, #4]
0033adf0  00 00 51 e3                                      cmp r1, #0
0033adf4  03 00 00 1a                                      bne #0x33ae08
0033adf8  03 00 50 e1                                      cmp r0, r3
0033adfc  01 30 a0 a3                                      movge r3, #1
0033ae00  02 30 a0 b3                                      movlt r3, #2
0033ae04  04 30 82 e5                                      str r3, [r2, #4]
0033ae08  f0 00 d6 e1                                      ldrsh r0, [r6]
0033ae0c  d4 4e ff eb                                      bl #0x30e964
0033ae10  00 00 8d e5                                      str r0, [sp]
0033ae14  f2 00 d6 e1                                      ldrsh r0, [r6, #2]
0033ae18  d1 4e ff eb                                      bl #0x30e964
0033ae1c  05 30 a0 e1                                      mov r3, r5
0033ae20  04 00 8d e5                                      str r0, [sp, #4]
0033ae24  01 10 a0 e3                                      mov r1, #1
0033ae28  04 00 a0 e1                                      mov r0, r4
0033ae2c  0d 20 a0 e1                                      mov r2, sp
0033ae30  e1 fe ff eb                                      bl #0x33a9bc
0033ae34  0c d0 8d e2                                      add sp, sp, #0xc
0033ae38  f0 83 bd e8                                      pop {r4, r5, r6, r7, r8, sb, pc}


; Source listing: TouchScreenBase-0ca9fd911a03-001.asm:372-378
; FUNCTION 0x0033aeb8, declared_size=4, range_size=4, mode=arm
; class-group: TouchScreenBase
; alias: _ZN15TouchScreenBase10touchEndedERK7Point2DIsEl
; demangled: TouchScreenBase::touchEnded(Point2D<short> const&, long)
; decoder-mode: arm
0033aeb8  df ff ff ea                                      b #0x33ae3c


; Source listing: TouchScreenBase-0ca9fd911a03-001.asm:335-371
; FUNCTION 0x0033ae3c, declared_size=124, range_size=124, mode=arm
; class-group: TouchScreenBase
; alias: _ZN15TouchScreenBase14touchCancelledERK7Point2DIsEl
; demangled: TouchScreenBase::touchCancelled(Point2D<short> const&, long)
; decoder-mode: arm
0033ae3c  70 40 2d e9                                      push {r4, r5, r6, lr}
0033ae40  30 30 a0 e3                                      mov r3, #0x30
0033ae44  02 50 a0 e1                                      mov r5, r2
0033ae48  92 33 22 e0                                      mla r2, r2, r3, r3
0033ae4c  93 05 23 e0                                      mla r3, r3, r5, r0
0033ae50  00 40 a0 e1                                      mov r4, r0
0033ae54  00 00 e0 e3                                      mvn r0, #0
0033ae58  2c 00 83 e5                                      str r0, [r3, #0x2c]
0033ae5c  00 00 a0 e3                                      mov r0, #0
0033ae60  28 00 c3 e5                                      strb r0, [r3, #0x28]
0033ae64  02 30 a0 e3                                      mov r3, #2
0033ae68  02 30 84 e7                                      str r3, [r4, r2]
0033ae6c  90 31 94 e5                                      ldr r3, [r4, #0x190]
0033ae70  08 d0 4d e2                                      sub sp, sp, #8
0033ae74  01 60 a0 e1                                      mov r6, r1
0033ae78  01 30 43 e2                                      sub r3, r3, #1
0033ae7c  05 00 53 e1                                      cmp r3, r5
0033ae80  90 51 84 05                                      streq r5, [r4, #0x190]
0033ae84  f0 00 d1 e1                                      ldrsh r0, [r1]
0033ae88  b5 4e ff eb                                      bl #0x30e964
0033ae8c  00 00 8d e5                                      str r0, [sp]
0033ae90  f2 00 d6 e1                                      ldrsh r0, [r6, #2]
0033ae94  b2 4e ff eb                                      bl #0x30e964
0033ae98  05 30 a0 e1                                      mov r3, r5
0033ae9c  04 00 8d e5                                      str r0, [sp, #4]
0033aea0  02 10 a0 e3                                      mov r1, #2
0033aea4  04 00 a0 e1                                      mov r0, r4
0033aea8  0d 20 a0 e1                                      mov r2, sp
0033aeac  c2 fe ff eb                                      bl #0x33a9bc
0033aeb0  08 d0 8d e2                                      add sp, sp, #8
0033aeb4  70 80 bd e8                                      pop {r4, r5, r6, pc}


; Source listing: TouchScreenBase-0ca9fd911a03-001.asm:17-93
; FUNCTION 0x0033a9bc, declared_size=284, range_size=284, mode=arm
; class-group: TouchScreenBase
; alias: _ZN15TouchScreenBase11_AddToQueueENS_10TouchEventERK7Point2DIfEl
; demangled: TouchScreenBase::_AddToQueue(TouchScreenBase::TouchEvent, Point2D<float> const&, long)
; decoder-mode: arm
0033a9bc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0033a9c0  a4 51 90 e5                                      ldr r5, [r0, #0x1a4]
0033a9c4  02 70 a0 e1                                      mov r7, r2
0033a9c8  03 80 a0 e1                                      mov r8, r3
0033a9cc  01 20 85 e2                                      add r2, r5, #1
0033a9d0  0f 00 52 e3                                      cmp r2, #0xf
0033a9d4  00 30 a0 83                                      movhi r3, #0
0033a9d8  a4 21 80 e5                                      str r2, [r0, #0x1a4]
0033a9dc  a4 31 80 85                                      strhi r3, [r0, #0x1a4]
0033a9e0  00 40 a0 e1                                      mov r4, r0
0033a9e4  01 60 a0 e1                                      mov r6, r1
0033a9e8  ed ff ff eb                                      bl #0x33a9a4
0033a9ec  00 00 50 e3                                      cmp r0, #0
0033a9f0  36 00 00 1a                                      bne #0x33aad0
0033a9f4  a0 c1 94 e5                                      ldr ip, [r4, #0x1a0]
0033a9f8  05 00 5c e1                                      cmp ip, r5
0033a9fc  94 e1 94 05                                      ldreq lr, [r4, #0x194]
0033aa00  22 00 00 0a                                      beq #0x33aa90
0033aa04  94 01 94 e5                                      ldr r0, [r4, #0x194]
0033aa08  05 20 a0 e1                                      mov r2, r5
0033aa0c  0c a0 a0 e3                                      mov sl, #0xc
0033aa10  00 e0 a0 e1                                      mov lr, r0
0033aa14  01 00 00 ea                                      b #0x33aa20
0033aa18  0c 00 52 e1                                      cmp r2, ip
0033aa1c  1b 00 00 0a                                      beq #0x33aa90
0033aa20  00 00 52 e3                                      cmp r2, #0
0033aa24  01 20 42 12                                      subne r2, r2, #1
0033aa28  9a 02 03 10                                      mulne r3, sl, r2
0033aa2c  b4 30 a0 03                                      moveq r3, #0xb4
0033aa30  03 10 80 e0                                      add r1, r0, r3
0033aa34  08 10 91 e5                                      ldr r1, [r1, #8]
0033aa38  0f 20 a0 03                                      moveq r2, #0xf
0033aa3c  08 00 51 e1                                      cmp r1, r8
0033aa40  f4 ff ff 1a                                      bne #0x33aa18
0033aa44  03 10 90 e7                                      ldr r1, [r0, r3]
0033aa48  02 00 51 e3                                      cmp r1, #2
0033aa4c  0f 00 00 0a                                      beq #0x33aa90
0033aa50  00 00 51 e3                                      cmp r1, #0
0033aa54  0d 00 00 0a                                      beq #0x33aa90
0033aa58  01 00 51 e3                                      cmp r1, #1
0033aa5c  ed ff ff 1a                                      bne #0x33aa18
0033aa60  a4 51 84 e5                                      str r5, [r4, #0x1a4]
0033aa64  03 60 80 e7                                      str r6, [r0, r3]
0033aa68  94 41 94 e5                                      ldr r4, [r4, #0x194]
0033aa6c  00 00 97 e5                                      ldr r0, [r7]
0033aa70  03 40 84 e0                                      add r4, r4, r3
0033aa74  94 4e ff eb                                      bl #0x30e4cc
0033aa78  70 50 ff e6                                      uxth r5, r0
0033aa7c  04 00 97 e5                                      ldr r0, [r7, #4]
0033aa80  91 4e ff eb                                      bl #0x30e4cc
0033aa84  b4 50 c4 e1                                      strh r5, [r4, #4]
0033aa88  b6 00 c4 e1                                      strh r0, [r4, #6]
0033aa8c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0033aa90  0c 30 a0 e3                                      mov r3, #0xc
0033aa94  93 05 05 e0                                      mul r5, r3, r5
0033aa98  05 60 8e e7                                      str r6, [lr, r5]
0033aa9c  00 00 97 e5                                      ldr r0, [r7]
0033aaa0  89 4e ff eb                                      bl #0x30e4cc
0033aaa4  70 a0 ff e6                                      uxth sl, r0
0033aaa8  04 00 97 e5                                      ldr r0, [r7, #4]
0033aaac  86 4e ff eb                                      bl #0x30e4cc
0033aab0  94 61 94 e5                                      ldr r6, [r4, #0x194]
0033aab4  05 60 86 e0                                      add r6, r6, r5
0033aab8  b6 00 c6 e1                                      strh r0, [r6, #6]
0033aabc  b4 a0 c6 e1                                      strh sl, [r6, #4]
0033aac0  94 31 94 e5                                      ldr r3, [r4, #0x194]
0033aac4  05 50 83 e0                                      add r5, r3, r5
0033aac8  08 80 85 e5                                      str r8, [r5, #8]
0033aacc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0033aad0  a4 51 84 e5                                      str r5, [r4, #0x1a4]
0033aad4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}


; Source listing: TouchScreenBase-0ca9fd911a03-001.asm:1170-1613
; FUNCTION 0x0033c568, declared_size=1776, range_size=1776, mode=arm
; class-group: TouchScreenBase
; alias: _ZN15TouchScreenBase13ProcessEventsEv
; demangled: TouchScreenBase::ProcessEvents()
; decoder-mode: arm
0033c568  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0033c56c  c0 56 9f e5                                      ldr r5, [pc, #0x6c0]
0033c570  c0 26 9f e5                                      ldr r2, [pc, #0x6c0]
0033c574  47 df 4d e2                                      sub sp, sp, #0x11c
0033c578  05 50 8f e0                                      add r5, pc, r5
0033c57c  02 30 95 e7                                      ldr r3, [r5, r2]
0033c580  2c 20 8d e5                                      str r2, [sp, #0x2c]
0033c584  b0 26 9f e5                                      ldr r2, [pc, #0x6b0]
0033c588  00 c0 93 e5                                      ldr ip, [r3]
0033c58c  ac 36 9f e5                                      ldr r3, [pc, #0x6ac]
0033c590  00 80 a0 e1                                      mov r8, r0
0033c594  a8 06 9f e5                                      ldr r0, [pc, #0x6a8]
0033c598  03 10 95 e7                                      ldr r1, [r5, r3]
0033c59c  a4 36 9f e5                                      ldr r3, [pc, #0x6a4]
0033c5a0  02 20 8f e0                                      add r2, pc, r2
0033c5a4  14 70 91 e5                                      ldr r7, [r1, #0x14]
0033c5a8  03 30 8f e0                                      add r3, pc, r3
0033c5ac  1d 30 83 e2                                      add r3, r3, #0x1d
0033c5b0  28 30 8d e5                                      str r3, [sp, #0x28]
0033c5b4  90 36 9f e5                                      ldr r3, [pc, #0x690]
0033c5b8  90 66 9f e5                                      ldr r6, [pc, #0x690]
0033c5bc  1d 20 82 e2                                      add r2, r2, #0x1d
0033c5c0  14 c1 8d e5                                      str ip, [sp, #0x114]
0033c5c4  24 20 8d e5                                      str r2, [sp, #0x24]
0033c5c8  20 30 8d e5                                      str r3, [sp, #0x20]
0033c5cc  18 00 8d e5                                      str r0, [sp, #0x18]
0033c5d0  08 00 a0 e1                                      mov r0, r8
0033c5d4  f2 f8 ff eb                                      bl #0x33a9a4
0033c5d8  00 00 50 e3                                      cmp r0, #0
0033c5dc  5a 00 00 1a                                      bne #0x33c74c
0033c5e0  08 00 a0 e1                                      mov r0, r8
0033c5e4  f5 fb ff eb                                      bl #0x33b5c0
0033c5e8  00 a0 a0 e1                                      mov sl, r0
0033c5ec  08 00 a0 e1                                      mov r0, r8
0033c5f0  c6 fb ff eb                                      bl #0x33b510
0033c5f4  a8 31 98 e5                                      ldr r3, [r8, #0x1a8]
0033c5f8  b4 00 da e1                                      ldrh r0, [sl, #4]
0033c5fc  b6 b0 da e1                                      ldrh fp, [sl, #6]
0033c600  02 00 53 e3                                      cmp r3, #2
0033c604  58 00 00 0a                                      beq #0x33c76c
0033c608  03 00 53 e3                                      cmp r3, #3
0033c60c  a1 00 00 0a                                      beq #0x33c898
0033c610  01 00 53 e3                                      cmp r3, #1
0033c614  03 00 00 1a                                      bne #0x33c628
0033c618  ae 31 00 e3                                      movw r3, #0x1ae
0033c61c  b3 30 98 e1                                      ldrh r3, [r8, r3]
0033c620  03 b0 6b e0                                      rsb fp, fp, r3
0033c624  7b b0 ff e6                                      uxth fp, fp
0033c628  b0 41 98 e5                                      ldr r4, [r8, #0x1b0]
0033c62c  70 00 bf e6                                      sxth r0, r0
0033c630  cb 48 ff eb                                      bl #0x30e964
0033c634  04 10 a0 e1                                      mov r1, r4
0033c638  cb 49 ff eb                                      bl #0x30ed6c
0033c63c  a2 47 ff eb                                      bl #0x30e4cc
0033c640  70 90 ff e6                                      uxth sb, r0
0033c644  7b 00 bf e6                                      sxth r0, fp
0033c648  c5 48 ff eb                                      bl #0x30e964
0033c64c  00 10 a0 e1                                      mov r1, r0
0033c650  04 00 a0 e1                                      mov r0, r4
0033c654  c4 49 ff eb                                      bl #0x30ed6c
0033c658  9b 47 ff eb                                      bl #0x30e4cc
0033c65c  00 30 9a e5                                      ldr r3, [sl]
0033c660  70 00 ff e6                                      uxth r0, r0
0033c664  04 00 8d e5                                      str r0, [sp, #4]
0033c668  01 00 53 e3                                      cmp r3, #1
0033c66c  77 00 00 0a                                      beq #0x33c850
0033c670  02 00 53 e3                                      cmp r3, #2
0033c674  45 00 00 0a                                      beq #0x33c790
0033c678  00 00 53 e3                                      cmp r3, #0
0033c67c  d3 ff ff 1a                                      bne #0x33c5d0
0033c680  18 20 9d e5                                      ldr r2, [sp, #0x18]
0033c684  fc 40 8d e2                                      add r4, sp, #0xfc
0033c688  02 b0 95 e7                                      ldr fp, [r5, r2]
0033c68c  0b 00 a0 e1                                      mov r0, fp
0033c690  7c ec ff eb                                      bl #0x337888
0033c694  04 00 a0 e1                                      mov r0, r4
0033c698  28 10 9d e5                                      ldr r1, [sp, #0x28]
0033c69c  0c 41 8d e5                                      str r4, [sp, #0x10c]
0033c6a0  10 41 8d e5                                      str r4, [sp, #0x110]
0033c6a4  9b ff ff eb                                      bl #0x33c518
0033c6a8  0b 00 a0 e1                                      mov r0, fp
0033c6ac  04 10 a0 e1                                      mov r1, r4
0033c6b0  f4 ec ff eb                                      bl #0x337a88
0033c6b4  00 b0 a0 e1                                      mov fp, r0
0033c6b8  10 01 9d e5                                      ldr r0, [sp, #0x110]
0033c6bc  04 00 50 e1                                      cmp r0, r4
0033c6c0  06 00 00 0a                                      beq #0x33c6e0
0033c6c4  00 00 50 e3                                      cmp r0, #0
0033c6c8  04 00 00 0a                                      beq #0x33c6e0
0033c6cc  fc 10 9d e5                                      ldr r1, [sp, #0xfc]
0033c6d0  01 10 60 e0                                      rsb r1, r0, r1
0033c6d4  80 00 51 e3                                      cmp r1, #0x80
0033c6d8  4c 01 00 8a                                      bhi #0x33cc10
0033c6dc  07 32 0f eb                                      bl #0x708f00
0033c6e0  00 00 5b e3                                      cmp fp, #0
0033c6e4  70 00 00 1a                                      bne #0x33c8ac
0033c6e8  64 35 9f e5                                      ldr r3, [pc, #0x564]
0033c6ec  0c 30 8d e5                                      str r3, [sp, #0xc]
0033c6f0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0033c6f4  08 30 9a e5                                      ldr r3, [sl, #8]
0033c6f8  04 c0 a0 e3                                      mov ip, #4
0033c6fc  00 20 95 e7                                      ldr r2, [r5, r0]
0033c700  84 10 8d e2                                      add r1, sp, #0x84
0033c704  07 00 a0 e1                                      mov r0, r7
0033c708  08 20 82 e2                                      add r2, r2, #8
0033c70c  84 20 8d e5                                      str r2, [sp, #0x84]
0033c710  04 20 9d e5                                      ldr r2, [sp, #4]
0033c714  90 30 8d e5                                      str r3, [sp, #0x90]
0033c718  01 30 a0 e3                                      mov r3, #1
0033c71c  88 c0 8d e5                                      str ip, [sp, #0x88]
0033c720  be 28 cd e1                                      strh r2, [sp, #0x8e]
0033c724  94 30 cd e5                                      strb r3, [sp, #0x94]
0033c728  bc 98 cd e1                                      strh sb, [sp, #0x8c]
0033c72c  e2 f1 ff eb                                      bl #0x338ebc
0033c730  06 30 95 e7                                      ldr r3, [r5, r6]
0033c734  08 00 a0 e1                                      mov r0, r8
0033c738  08 30 83 e2                                      add r3, r3, #8
0033c73c  84 30 8d e5                                      str r3, [sp, #0x84]
0033c740  97 f8 ff eb                                      bl #0x33a9a4
0033c744  00 00 50 e3                                      cmp r0, #0
0033c748  a4 ff ff 0a                                      beq #0x33c5e0
0033c74c  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
0033c750  14 21 9d e5                                      ldr r2, [sp, #0x114]
0033c754  00 30 95 e7                                      ldr r3, [r5, r0]
0033c758  00 30 93 e5                                      ldr r3, [r3]
0033c75c  03 00 52 e1                                      cmp r2, r3
0033c760  32 01 00 1a                                      bne #0x33cc30
0033c764  47 df 8d e2                                      add sp, sp, #0x11c
0033c768  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0033c76c  6b 3f a0 e3                                      mov r3, #0x1ac
0033c770  b3 20 98 e1                                      ldrh r2, [r8, r3]
0033c774  ae 31 00 e3                                      movw r3, #0x1ae
0033c778  b3 30 98 e1                                      ldrh r3, [r8, r3]
0033c77c  02 00 60 e0                                      rsb r0, r0, r2
0033c780  70 00 ff e6                                      uxth r0, r0
0033c784  03 b0 6b e0                                      rsb fp, fp, r3
0033c788  7b b0 ff e6                                      uxth fp, fp
0033c78c  a5 ff ff ea                                      b #0x33c628
0033c790  18 30 9d e5                                      ldr r3, [sp, #0x18]
0033c794  e4 40 8d e2                                      add r4, sp, #0xe4
0033c798  03 b0 95 e7                                      ldr fp, [r5, r3]
0033c79c  0b 00 a0 e1                                      mov r0, fp
0033c7a0  38 ec ff eb                                      bl #0x337888
0033c7a4  04 00 a0 e1                                      mov r0, r4
0033c7a8  24 10 9d e5                                      ldr r1, [sp, #0x24]
0033c7ac  f4 40 8d e5                                      str r4, [sp, #0xf4]
0033c7b0  f8 40 8d e5                                      str r4, [sp, #0xf8]
0033c7b4  57 ff ff eb                                      bl #0x33c518
0033c7b8  0b 00 a0 e1                                      mov r0, fp
0033c7bc  04 10 a0 e1                                      mov r1, r4
0033c7c0  b0 ec ff eb                                      bl #0x337a88
0033c7c4  00 b0 a0 e1                                      mov fp, r0
0033c7c8  f8 00 9d e5                                      ldr r0, [sp, #0xf8]
0033c7cc  04 00 50 e1                                      cmp r0, r4
0033c7d0  06 00 00 0a                                      beq #0x33c7f0
0033c7d4  00 00 50 e3                                      cmp r0, #0
0033c7d8  04 00 00 0a                                      beq #0x33c7f0
0033c7dc  e4 10 9d e5                                      ldr r1, [sp, #0xe4]
0033c7e0  01 10 60 e0                                      rsb r1, r0, r1
0033c7e4  80 00 51 e3                                      cmp r1, #0x80
0033c7e8  06 01 00 8a                                      bhi #0x33cc08
0033c7ec  c3 31 0f eb                                      bl #0x708f00
0033c7f0  00 00 5b e3                                      cmp fp, #0
0033c7f4  98 00 00 1a                                      bne #0x33ca5c
0033c7f8  54 04 9f e5                                      ldr r0, [pc, #0x454]
0033c7fc  0c 00 8d e5                                      str r0, [sp, #0xc]
0033c800  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0033c804  04 c0 a0 e3                                      mov ip, #4
0033c808  07 00 a0 e1                                      mov r0, r7
0033c80c  03 20 95 e7                                      ldr r2, [r5, r3]
0033c810  08 30 9a e5                                      ldr r3, [sl, #8]
0033c814  34 10 8d e2                                      add r1, sp, #0x34
0033c818  08 20 82 e2                                      add r2, r2, #8
0033c81c  34 20 8d e5                                      str r2, [sp, #0x34]
0033c820  04 20 9d e5                                      ldr r2, [sp, #4]
0033c824  40 30 8d e5                                      str r3, [sp, #0x40]
0033c828  00 30 a0 e3                                      mov r3, #0
0033c82c  44 30 cd e5                                      strb r3, [sp, #0x44]
0033c830  38 c0 8d e5                                      str ip, [sp, #0x38]
0033c834  bc 93 cd e1                                      strh sb, [sp, #0x3c]
0033c838  be 23 cd e1                                      strh r2, [sp, #0x3e]
0033c83c  9e f1 ff eb                                      bl #0x338ebc
0033c840  06 30 95 e7                                      ldr r3, [r5, r6]
0033c844  08 30 83 e2                                      add r3, r3, #8
0033c848  34 30 8d e5                                      str r3, [sp, #0x34]
0033c84c  5f ff ff ea                                      b #0x33c5d0
0033c850  20 30 9d e5                                      ldr r3, [sp, #0x20]
0033c854  05 c0 a0 e3                                      mov ip, #5
0033c858  07 00 a0 e1                                      mov r0, r7
0033c85c  03 20 95 e7                                      ldr r2, [r5, r3]
0033c860  08 30 9a e5                                      ldr r3, [sl, #8]
0033c864  d4 10 8d e2                                      add r1, sp, #0xd4
0033c868  08 20 82 e2                                      add r2, r2, #8
0033c86c  d4 20 8d e5                                      str r2, [sp, #0xd4]
0033c870  04 20 9d e5                                      ldr r2, [sp, #4]
0033c874  e0 30 8d e5                                      str r3, [sp, #0xe0]
0033c878  d8 c0 8d e5                                      str ip, [sp, #0xd8]
0033c87c  bc 9d cd e1                                      strh sb, [sp, #0xdc]
0033c880  be 2d cd e1                                      strh r2, [sp, #0xde]
0033c884  8c f1 ff eb                                      bl #0x338ebc
0033c888  06 30 95 e7                                      ldr r3, [r5, r6]
0033c88c  08 30 83 e2                                      add r3, r3, #8
0033c890  d4 30 8d e5                                      str r3, [sp, #0xd4]
0033c894  4d ff ff ea                                      b #0x33c5d0
0033c898  6b 3f a0 e3                                      mov r3, #0x1ac
0033c89c  b3 30 98 e1                                      ldrh r3, [r8, r3]
0033c8a0  03 00 60 e0                                      rsb r0, r0, r3
0033c8a4  70 00 ff e6                                      uxth r0, r0
0033c8a8  5e ff ff ea                                      b #0x33c628
0033c8ac  04 00 9d e5                                      ldr r0, [sp, #4]
0033c8b0  79 b0 bf e6                                      sxth fp, sb
0033c8b4  63 10 8b e2                                      add r1, fp, #0x63
0033c8b8  64 b0 4b e2                                      sub fp, fp, #0x64
0033c8bc  70 00 bf e6                                      sxth r0, r0
0033c8c0  01 00 5b e1                                      cmp fp, r1
0033c8c4  08 40 9a e5                                      ldr r4, [sl, #8]
0033c8c8  10 00 8d e5                                      str r0, [sp, #0x10]
0033c8cc  d1 00 00 ca                                      bgt #0x33cc18
0033c8d0  7c 33 9f e5                                      ldr r3, [pc, #0x37c]
0033c8d4  c0 20 8d e2                                      add r2, sp, #0xc0
0033c8d8  08 90 8d e5                                      str sb, [sp, #8]
0033c8dc  0c 30 8d e5                                      str r3, [sp, #0xc]
0033c8e0  03 30 95 e7                                      ldr r3, [r5, r3]
0033c8e4  14 a0 8d e5                                      str sl, [sp, #0x14]
0033c8e8  1c 80 8d e5                                      str r8, [sp, #0x1c]
0033c8ec  08 30 83 e2                                      add r3, r3, #8
0033c8f0  01 80 a0 e1                                      mov r8, r1
0033c8f4  02 a0 a0 e1                                      mov sl, r2
0033c8f8  03 90 a0 e1                                      mov sb, r3
0033c8fc  c4 2f a0 e1                                      asr r2, r4, #0x1f
0033c900  07 00 a0 e1                                      mov r0, r7
0033c904  a2 2e a0 e1                                      lsr r2, r2, #0x1d
0033c908  02 30 84 e0                                      add r3, r4, r2
0033c90c  07 30 03 e2                                      and r3, r3, #7
0033c910  03 30 62 e0                                      rsb r3, r2, r3
0033c914  04 20 9d e5                                      ldr r2, [sp, #4]
0033c918  cc 30 8d e5                                      str r3, [sp, #0xcc]
0033c91c  04 30 a0 e3                                      mov r3, #4
0033c920  c4 30 8d e5                                      str r3, [sp, #0xc4]
0033c924  0a 10 a0 e1                                      mov r1, sl
0033c928  01 30 a0 e3                                      mov r3, #1
0033c92c  b8 bc cd e1                                      strh fp, [sp, #0xc8]
0033c930  d0 30 cd e5                                      strb r3, [sp, #0xd0]
0033c934  c0 90 8d e5                                      str sb, [sp, #0xc0]
0033c938  ba 2c cd e1                                      strh r2, [sp, #0xca]
0033c93c  5e f1 ff eb                                      bl #0x338ebc
0033c940  06 30 95 e7                                      ldr r3, [r5, r6]
0033c944  32 b0 8b e2                                      add fp, fp, #0x32
0033c948  08 00 5b e1                                      cmp fp, r8
0033c94c  08 30 83 e2                                      add r3, r3, #8
0033c950  c0 30 8d e5                                      str r3, [sp, #0xc0]
0033c954  01 40 84 e2                                      add r4, r4, #1
0033c958  e7 ff ff da                                      ble #0x33c8fc
0033c95c  08 90 9d e5                                      ldr sb, [sp, #8]
0033c960  14 a0 9d e5                                      ldr sl, [sp, #0x14]
0033c964  1c 80 9d e5                                      ldr r8, [sp, #0x1c]
0033c968  10 00 9d e5                                      ldr r0, [sp, #0x10]
0033c96c  10 20 9d e5                                      ldr r2, [sp, #0x10]
0033c970  63 00 80 e2                                      add r0, r0, #0x63
0033c974  64 b0 42 e2                                      sub fp, r2, #0x64
0033c978  00 00 5b e1                                      cmp fp, r0
0033c97c  08 00 8d e5                                      str r0, [sp, #8]
0033c980  21 00 00 ca                                      bgt #0x33ca0c
0033c984  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0033c988  ac 20 8d e2                                      add r2, sp, #0xac
0033c98c  10 a0 8d e5                                      str sl, [sp, #0x10]
0033c990  00 30 95 e7                                      ldr r3, [r5, r0]
0033c994  14 80 8d e5                                      str r8, [sp, #0x14]
0033c998  02 80 a0 e1                                      mov r8, r2
0033c99c  08 30 83 e2                                      add r3, r3, #8
0033c9a0  03 a0 a0 e1                                      mov sl, r3
0033c9a4  c4 2f a0 e1                                      asr r2, r4, #0x1f
0033c9a8  07 00 a0 e1                                      mov r0, r7
0033c9ac  a2 2e a0 e1                                      lsr r2, r2, #0x1d
0033c9b0  02 30 84 e0                                      add r3, r4, r2
0033c9b4  07 30 03 e2                                      and r3, r3, #7
0033c9b8  03 30 62 e0                                      rsb r3, r2, r3
0033c9bc  b8 30 8d e5                                      str r3, [sp, #0xb8]
0033c9c0  01 20 a0 e3                                      mov r2, #1
0033c9c4  04 30 a0 e3                                      mov r3, #4
0033c9c8  08 10 a0 e1                                      mov r1, r8
0033c9cc  b6 bb cd e1                                      strh fp, [sp, #0xb6]
0033c9d0  b0 30 8d e5                                      str r3, [sp, #0xb0]
0033c9d4  ac a0 8d e5                                      str sl, [sp, #0xac]
0033c9d8  b4 9b cd e1                                      strh sb, [sp, #0xb4]
0033c9dc  bc 20 cd e5                                      strb r2, [sp, #0xbc]
0033c9e0  35 f1 ff eb                                      bl #0x338ebc
0033c9e4  06 30 95 e7                                      ldr r3, [r5, r6]
0033c9e8  08 00 9d e5                                      ldr r0, [sp, #8]
0033c9ec  32 b0 8b e2                                      add fp, fp, #0x32
0033c9f0  08 30 83 e2                                      add r3, r3, #8
0033c9f4  00 00 5b e1                                      cmp fp, r0
0033c9f8  ac 30 8d e5                                      str r3, [sp, #0xac]
0033c9fc  01 40 84 e2                                      add r4, r4, #1
0033ca00  e7 ff ff da                                      ble #0x33c9a4
0033ca04  10 a0 9d e5                                      ldr sl, [sp, #0x10]
0033ca08  14 80 9d e5                                      ldr r8, [sp, #0x14]
0033ca0c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0033ca10  07 00 a0 e1                                      mov r0, r7
0033ca14  98 10 8d e2                                      add r1, sp, #0x98
0033ca18  02 30 95 e7                                      ldr r3, [r5, r2]
0033ca1c  04 20 a0 e3                                      mov r2, #4
0033ca20  9c 20 8d e5                                      str r2, [sp, #0x9c]
0033ca24  08 30 83 e2                                      add r3, r3, #8
0033ca28  98 30 8d e5                                      str r3, [sp, #0x98]
0033ca2c  00 30 a0 e3                                      mov r3, #0
0033ca30  a4 30 8d e5                                      str r3, [sp, #0xa4]
0033ca34  01 30 a0 e3                                      mov r3, #1
0033ca38  a8 30 cd e5                                      strb r3, [sp, #0xa8]
0033ca3c  19 30 a0 e3                                      mov r3, #0x19
0033ca40  b0 3a cd e1                                      strh r3, [sp, #0xa0]
0033ca44  b2 3a cd e1                                      strh r3, [sp, #0xa2]
0033ca48  1b f1 ff eb                                      bl #0x338ebc
0033ca4c  06 30 95 e7                                      ldr r3, [r5, r6]
0033ca50  08 30 83 e2                                      add r3, r3, #8
0033ca54  98 30 8d e5                                      str r3, [sp, #0x98]
0033ca58  24 ff ff ea                                      b #0x33c6f0
0033ca5c  04 20 9d e5                                      ldr r2, [sp, #4]
0033ca60  79 b0 bf e6                                      sxth fp, sb
0033ca64  63 10 8b e2                                      add r1, fp, #0x63
0033ca68  64 b0 4b e2                                      sub fp, fp, #0x64
0033ca6c  72 20 bf e6                                      sxth r2, r2
0033ca70  01 00 5b e1                                      cmp fp, r1
0033ca74  08 40 9a e5                                      ldr r4, [sl, #8]
0033ca78  10 20 8d e5                                      str r2, [sp, #0x10]
0033ca7c  68 00 00 ca                                      bgt #0x33cc24
0033ca80  cc 01 9f e5                                      ldr r0, [pc, #0x1cc]
0033ca84  70 20 8d e2                                      add r2, sp, #0x70
0033ca88  08 90 8d e5                                      str sb, [sp, #8]
0033ca8c  00 30 95 e7                                      ldr r3, [r5, r0]
0033ca90  14 a0 8d e5                                      str sl, [sp, #0x14]
0033ca94  1c 80 8d e5                                      str r8, [sp, #0x1c]
0033ca98  08 30 83 e2                                      add r3, r3, #8
0033ca9c  0c 00 8d e5                                      str r0, [sp, #0xc]
0033caa0  01 80 a0 e1                                      mov r8, r1
0033caa4  02 a0 a0 e1                                      mov sl, r2
0033caa8  03 90 a0 e1                                      mov sb, r3
0033caac  c4 2f a0 e1                                      asr r2, r4, #0x1f
0033cab0  07 00 a0 e1                                      mov r0, r7
0033cab4  a2 2e a0 e1                                      lsr r2, r2, #0x1d
0033cab8  02 30 84 e0                                      add r3, r4, r2
0033cabc  07 30 03 e2                                      and r3, r3, #7
0033cac0  03 30 62 e0                                      rsb r3, r2, r3
0033cac4  04 20 9d e5                                      ldr r2, [sp, #4]
0033cac8  7c 30 8d e5                                      str r3, [sp, #0x7c]
0033cacc  04 30 a0 e3                                      mov r3, #4
0033cad0  74 30 8d e5                                      str r3, [sp, #0x74]
0033cad4  0a 10 a0 e1                                      mov r1, sl
0033cad8  00 30 a0 e3                                      mov r3, #0
0033cadc  b8 b7 cd e1                                      strh fp, [sp, #0x78]
0033cae0  80 30 cd e5                                      strb r3, [sp, #0x80]
0033cae4  70 90 8d e5                                      str sb, [sp, #0x70]
0033cae8  ba 27 cd e1                                      strh r2, [sp, #0x7a]
0033caec  f2 f0 ff eb                                      bl #0x338ebc
0033caf0  06 30 95 e7                                      ldr r3, [r5, r6]
0033caf4  32 b0 8b e2                                      add fp, fp, #0x32
0033caf8  08 00 5b e1                                      cmp fp, r8
0033cafc  08 30 83 e2                                      add r3, r3, #8
0033cb00  70 30 8d e5                                      str r3, [sp, #0x70]
0033cb04  01 40 84 e2                                      add r4, r4, #1
0033cb08  e7 ff ff da                                      ble #0x33caac
0033cb0c  08 90 9d e5                                      ldr sb, [sp, #8]
0033cb10  14 a0 9d e5                                      ldr sl, [sp, #0x14]
0033cb14  1c 80 9d e5                                      ldr r8, [sp, #0x1c]
0033cb18  10 00 9d e5                                      ldr r0, [sp, #0x10]
0033cb1c  10 20 9d e5                                      ldr r2, [sp, #0x10]
0033cb20  63 00 80 e2                                      add r0, r0, #0x63
0033cb24  64 b0 42 e2                                      sub fp, r2, #0x64
0033cb28  00 00 5b e1                                      cmp fp, r0
0033cb2c  08 00 8d e5                                      str r0, [sp, #8]
0033cb30  21 00 00 ca                                      bgt #0x33cbbc
0033cb34  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0033cb38  5c 20 8d e2                                      add r2, sp, #0x5c
0033cb3c  10 a0 8d e5                                      str sl, [sp, #0x10]
0033cb40  00 30 95 e7                                      ldr r3, [r5, r0]
0033cb44  14 80 8d e5                                      str r8, [sp, #0x14]
0033cb48  02 80 a0 e1                                      mov r8, r2
0033cb4c  08 30 83 e2                                      add r3, r3, #8
0033cb50  03 a0 a0 e1                                      mov sl, r3
0033cb54  c4 2f a0 e1                                      asr r2, r4, #0x1f
0033cb58  07 00 a0 e1                                      mov r0, r7
0033cb5c  a2 2e a0 e1                                      lsr r2, r2, #0x1d
0033cb60  02 30 84 e0                                      add r3, r4, r2
0033cb64  07 30 03 e2                                      and r3, r3, #7
0033cb68  03 30 62 e0                                      rsb r3, r2, r3
0033cb6c  68 30 8d e5                                      str r3, [sp, #0x68]
0033cb70  00 20 a0 e3                                      mov r2, #0
0033cb74  04 30 a0 e3                                      mov r3, #4
0033cb78  08 10 a0 e1                                      mov r1, r8
0033cb7c  b6 b6 cd e1                                      strh fp, [sp, #0x66]
0033cb80  60 30 8d e5                                      str r3, [sp, #0x60]
0033cb84  5c a0 8d e5                                      str sl, [sp, #0x5c]
0033cb88  b4 96 cd e1                                      strh sb, [sp, #0x64]
0033cb8c  6c 20 cd e5                                      strb r2, [sp, #0x6c]
0033cb90  c9 f0 ff eb                                      bl #0x338ebc
0033cb94  06 30 95 e7                                      ldr r3, [r5, r6]
0033cb98  08 00 9d e5                                      ldr r0, [sp, #8]
0033cb9c  32 b0 8b e2                                      add fp, fp, #0x32
0033cba0  08 30 83 e2                                      add r3, r3, #8
0033cba4  00 00 5b e1                                      cmp fp, r0
0033cba8  5c 30 8d e5                                      str r3, [sp, #0x5c]
0033cbac  01 40 84 e2                                      add r4, r4, #1
0033cbb0  e7 ff ff da                                      ble #0x33cb54
0033cbb4  10 a0 9d e5                                      ldr sl, [sp, #0x10]
0033cbb8  14 80 9d e5                                      ldr r8, [sp, #0x14]
0033cbbc  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0033cbc0  00 30 a0 e3                                      mov r3, #0
0033cbc4  07 00 a0 e1                                      mov r0, r7
0033cbc8  02 c0 95 e7                                      ldr ip, [r5, r2]
0033cbcc  04 20 a0 e3                                      mov r2, #4
0033cbd0  4c 20 8d e5                                      str r2, [sp, #0x4c]
0033cbd4  08 c0 8c e2                                      add ip, ip, #8
0033cbd8  19 20 a0 e3                                      mov r2, #0x19
0033cbdc  48 10 8d e2                                      add r1, sp, #0x48
0033cbe0  58 30 cd e5                                      strb r3, [sp, #0x58]
0033cbe4  54 30 8d e5                                      str r3, [sp, #0x54]
0033cbe8  48 c0 8d e5                                      str ip, [sp, #0x48]
0033cbec  b0 25 cd e1                                      strh r2, [sp, #0x50]
0033cbf0  b2 25 cd e1                                      strh r2, [sp, #0x52]
0033cbf4  b0 f0 ff eb                                      bl #0x338ebc
0033cbf8  06 30 95 e7                                      ldr r3, [r5, r6]
0033cbfc  08 30 83 e2                                      add r3, r3, #8
0033cc00  48 30 8d e5                                      str r3, [sp, #0x48]
0033cc04  fd fe ff ea                                      b #0x33c800
0033cc08  0c 4e ff eb                                      bl #0x310440
0033cc0c  f7 fe ff ea                                      b #0x33c7f0
0033cc10  0a 4e ff eb                                      bl #0x310440
0033cc14  b1 fe ff ea                                      b #0x33c6e0
0033cc18  34 20 9f e5                                      ldr r2, [pc, #0x34]
0033cc1c  0c 20 8d e5                                      str r2, [sp, #0xc]
0033cc20  50 ff ff ea                                      b #0x33c968
0033cc24  28 30 9f e5                                      ldr r3, [pc, #0x28]
0033cc28  0c 30 8d e5                                      str r3, [sp, #0xc]
0033cc2c  b9 ff ff ea                                      b #0x33cb18
0033cc30  b6 45 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0033cc34  18 85 65 00 ac 40 00 00 20 3b 58 00 f4 37 00 00  .byte 0x18, 0x85, 0x65, 0x00, 0xac, 0x40, 0x00, 0x00, 0x20, 0x3b, 0x58, 0x00, 0xf4, 0x37, 0x00, 0x00
0033cc44  84 08 00 00 18 3b 58 00 e8 0b 00 00 b0 0b 00 00  .byte 0x84, 0x08, 0x00, 0x00, 0x18, 0x3b, 0x58, 0x00, 0xe8, 0x0b, 0x00, 0x00, 0xb0, 0x0b, 0x00, 0x00
0033cc54  2c 33 00 00                                      .byte 0x2c, 0x33, 0x00, 0x00
