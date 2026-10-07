; PACKAGE FUNCTION vox_engine_initialize
; ELF VA 0x00862d10, range_size=352, SHA-256=5eea97fb7c6d0efc860651175dc9a0e4e465655577143d930735577079df6e68
; Original assembly source vox_VoxEngine-d5560c86480d-001.asm lines 2058-2137
; FUNCTION 0x00862d10, declared_size=352, range_size=352, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine10InitializeEv
; demangled: vox::VoxEngine::Initialize()
; decoder-mode: arm
00862d10  70 40 2d e9                                      push {r4, r5, r6, lr}
00862d14  20 41 9f e5                                      ldr r4, [pc, #0x120]
00862d18  20 31 9f e5                                      ldr r3, [pc, #0x120]
00862d1c  08 d0 4d e2                                      sub sp, sp, #8
00862d20  04 40 8f e0                                      add r4, pc, r4
00862d24  03 30 94 e7                                      ldr r3, [r4, r3]
00862d28  00 50 a0 e1                                      mov r5, r0
00862d2c  00 30 93 e5                                      ldr r3, [r3]
00862d30  00 00 53 e3                                      cmp r3, #0
00862d34  3e 00 00 0a                                      beq #0x862e34
00862d38  03 00 a0 e1                                      mov r0, r3
00862d3c  00 30 93 e5                                      ldr r3, [r3]
00862d40  0f e0 a0 e1                                      mov lr, pc
00862d44  08 f0 93 e5                                      ldr pc, [r3, #8]
00862d48  f4 30 9f e5                                      ldr r3, [pc, #0xf4]
00862d4c  05 00 a0 e1                                      mov r0, r5
00862d50  03 10 94 e7                                      ldr r1, [r4, r3]
00862d54  db fe ff eb                                      bl #0x8628c8
00862d58  e8 30 9f e5                                      ldr r3, [pc, #0xe8]
00862d5c  05 00 a0 e1                                      mov r0, r5
00862d60  03 10 94 e7                                      ldr r1, [r4, r3]
00862d64  d7 fe ff eb                                      bl #0x8628c8
00862d68  dc 30 9f e5                                      ldr r3, [pc, #0xdc]
00862d6c  05 00 a0 e1                                      mov r0, r5
00862d70  03 10 94 e7                                      ldr r1, [r4, r3]
00862d74  c7 fe ff eb                                      bl #0x862898
00862d78  d0 30 9f e5                                      ldr r3, [pc, #0xd0]
00862d7c  05 00 a0 e1                                      mov r0, r5
00862d80  03 10 94 e7                                      ldr r1, [r4, r3]
00862d84  c3 fe ff eb                                      bl #0x862898
00862d88  c4 30 9f e5                                      ldr r3, [pc, #0xc4]
00862d8c  05 00 a0 e1                                      mov r0, r5
00862d90  03 10 94 e7                                      ldr r1, [r4, r3]
00862d94  bf fe ff eb                                      bl #0x862898
00862d98  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
00862d9c  05 00 a0 e1                                      mov r0, r5
00862da0  03 10 94 e7                                      ldr r1, [r4, r3]
00862da4  bb fe ff eb                                      bl #0x862898
00862da8  ac 30 9f e5                                      ldr r3, [pc, #0xac]
00862dac  05 00 a0 e1                                      mov r0, r5
00862db0  03 10 94 e7                                      ldr r1, [r4, r3]
00862db4  b7 fe ff eb                                      bl #0x862898
00862db8  00 10 a0 e3                                      mov r1, #0
00862dbc  05 00 a0 e1                                      mov r0, r5
00862dc0  b4 fe ff eb                                      bl #0x862898
00862dc4  00 10 a0 e3                                      mov r1, #0
00862dc8  68 00 a0 e3                                      mov r0, #0x68
00862dcc  1d b6 ea eb                                      bl #0x310648
00862dd0  88 30 9f e5                                      ldr r3, [pc, #0x88]
00862dd4  88 c0 9f e5                                      ldr ip, [pc, #0x88]
00862dd8  00 60 a0 e1                                      mov r6, r0
00862ddc  05 20 a0 e1                                      mov r2, r5
00862de0  0c c0 8f e0                                      add ip, pc, ip
00862de4  03 10 94 e7                                      ldr r1, [r4, r3]
00862de8  00 30 a0 e3                                      mov r3, #0
00862dec  00 c0 8d e5                                      str ip, [sp]
00862df0  63 c2 00 eb                                      bl #0x893784
00862df4  04 60 85 e5                                      str r6, [r5, #4]
00862df8  00 10 a0 e3                                      mov r1, #0
00862dfc  68 00 a0 e3                                      mov r0, #0x68
00862e00  10 b6 ea eb                                      bl #0x310648
00862e04  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
00862e08  5c c0 9f e5                                      ldr ip, [pc, #0x5c]
00862e0c  00 60 a0 e1                                      mov r6, r0
00862e10  03 10 94 e7                                      ldr r1, [r4, r3]
00862e14  0c c0 8f e0                                      add ip, pc, ip
00862e18  05 20 a0 e1                                      mov r2, r5
00862e1c  00 30 a0 e3                                      mov r3, #0
00862e20  00 c0 8d e5                                      str ip, [sp]
00862e24  56 c2 00 eb                                      bl #0x893784
00862e28  08 60 85 e5                                      str r6, [r5, #8]
00862e2c  70 ff ff eb                                      bl #0x862bf4
00862e30  f0 01 c5 e1                                      strd r0, r1, [r5, #0x10]
00862e34  08 d0 8d e2                                      add sp, sp, #8
00862e38  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00862e3c  70 1d 13 00 9c 17 00 00 04 20 00 00 74 3e 00 00  .byte 0x70, 0x1d, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00, 0x04, 0x20, 0x00, 0x00, 0x74, 0x3e, 0x00, 0x00
00862e4c  7c 24 00 00 f0 3e 00 00 b8 26 00 00 64 13 00 00  .byte 0x7c, 0x24, 0x00, 0x00, 0xf0, 0x3e, 0x00, 0x00, 0xb8, 0x26, 0x00, 0x00, 0x64, 0x13, 0x00, 0x00
00862e5c  4c 3a 00 00 c8 0d 00 00 d8 e0 0a 00 8c 3b 00 00  .byte 0x4c, 0x3a, 0x00, 0x00, 0xc8, 0x0d, 0x00, 0x00, 0xd8, 0xe0, 0x0a, 0x00, 0x8c, 0x3b, 0x00, 0x00
00862e6c  c4 e0 0a 00                                      .byte 0xc4, 0xe0, 0x0a, 0x00

; PACKAGE FUNCTION vox_internal_initialize
; ELF VA 0x0086934c, range_size=40, SHA-256=d92db80e280461ce46e295891914b6588818373e3c05f8eb2ae6025ace55e2a4
; Original assembly source vox_VoxEngineInternal-87edcdaf697c-001.asm lines 2791-2800
; FUNCTION 0x0086934c, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal10InitializeEv
; demangled: vox::VoxEngineInternal::Initialize()
; decoder-mode: arm
0086934c  10 40 2d e9                                      push {r4, lr}
00869350  4c 35 90 e5                                      ldr r3, [r0, #0x54c]
00869354  00 40 a0 e1                                      mov r4, r0
00869358  00 00 53 e3                                      cmp r3, #0
0086935c  01 00 00 0a                                      beq #0x869368
00869360  10 40 bd e8                                      pop {r4, lr}
00869364  8e ac 00 ea                                      b #0x8945a4
00869368  d5 99 00 eb                                      bl #0x88fac4
0086936c  4c 05 84 e5                                      str r0, [r4, #0x54c]
00869370  fa ff ff ea                                      b #0x869360


; PACKAGE FUNCTION create_driver_android
; ELF VA 0x0088fac4, range_size=32, SHA-256=bd4449abd412eb5366ea05b10947fdcbdae9c889c775820a0eb04e86cc0db270
; Original assembly source vox-b675469b940b-001.asm lines 123-130
; FUNCTION 0x0088fac4, declared_size=32, range_size=32, mode=arm
; class-group: vox
; alias: _ZN3vox12CreateDriverEv
; demangled: vox::CreateDriver()
; decoder-mode: arm
0088fac4  10 40 2d e9                                      push {r4, lr}
0088fac8  00 10 a0 e3                                      mov r1, #0
0088facc  6c 00 a0 e3                                      mov r0, #0x6c
0088fad0  dc 02 ea eb                                      bl #0x310648
0088fad4  00 40 a0 e1                                      mov r4, r0
0088fad8  e8 ff ff eb                                      bl #0x88fa80
0088fadc  04 00 a0 e1                                      mov r0, r4
0088fae0  10 80 bd e8                                      pop {r4, pc}


; PACKAGE FUNCTION driver_android_init
; ELF VA 0x0088f9a0, range_size=76, SHA-256=1235af33f258d6e2f71768190881012063b6110d1bbb9c4c9586438828804d28
; Original assembly source vox_DriverAndroid-34a0f8ecbdd8-001.asm lines 749-767
; FUNCTION 0x0088f9a0, declared_size=76, range_size=76, mode=arm
; class-group: vox::DriverAndroid
; alias: _ZN3vox13DriverAndroid4InitEPv
; demangled: vox::DriverAndroid::Init(void*)
; decoder-mode: arm
0088f9a0  70 40 2d e9                                      push {r4, r5, r6, lr}
0088f9a4  04 50 80 e2                                      add r5, r0, #4
0088f9a8  00 40 a0 e1                                      mov r4, r0
0088f9ac  01 60 a0 e1                                      mov r6, r1
0088f9b0  05 00 a0 e1                                      mov r0, r5
0088f9b4  b0 0e 00 eb                                      bl #0x89347c
0088f9b8  06 10 a0 e1                                      mov r1, r6
0088f9bc  04 00 a0 e1                                      mov r0, r4
0088f9c0  38 02 00 eb                                      bl #0x8902a8
0088f9c4  04 00 a0 e1                                      mov r0, r4
0088f9c8  73 02 00 eb                                      bl #0x89039c
0088f9cc  04 00 a0 e1                                      mov r0, r4
0088f9d0  06 10 a0 e1                                      mov r1, r6
0088f9d4  21 ff ff eb                                      bl #0x88f660
0088f9d8  04 00 a0 e1                                      mov r0, r4
0088f9dc  6e 02 00 eb                                      bl #0x89039c
0088f9e0  05 00 a0 e1                                      mov r0, r5
0088f9e4  70 40 bd e8                                      pop {r4, r5, r6, lr}
0088f9e8  a2 0e 00 ea                                      b #0x893478


; PACKAGE FUNCTION driver_android_init_audio_track
; ELF VA 0x0088f660, range_size=832, SHA-256=c40bcc143dcbba6f8d202276c10d4a40b6c3a9fa86ea44e66b0a4e3f23d0b518
; Original assembly source vox_DriverAndroid-34a0f8ecbdd8-001.asm lines 555-742
; FUNCTION 0x0088f660, declared_size=832, range_size=832, mode=arm
; class-group: vox::DriverAndroid
; alias: _ZN3vox13DriverAndroid7_InitATEPv
; demangled: vox::DriverAndroid::_InitAT(void*)
; decoder-mode: arm
0088f660  f0 43 2d e9                                      push {r4, r5, r6, r7, r8, sb, lr}
0088f664  00 50 a0 e1                                      mov r5, r0
0088f668  14 d0 4d e2                                      sub sp, sp, #0x14
0088f66c  bc 42 9f e5                                      ldr r4, [pc, #0x2bc]
0088f670  44 0c 0a e3                                      movw r0, #0xac44
0088f674  03 03 00 eb                                      bl #0x890288
0088f678  b4 32 9f e5                                      ldr r3, [pc, #0x2b4]
0088f67c  04 40 8f e0                                      add r4, pc, r4
0088f680  03 30 94 e7                                      ldr r3, [r4, r3]
0088f684  00 30 93 e5                                      ldr r3, [r3]
0088f688  00 00 53 e3                                      cmp r3, #0
0088f68c  4a 00 00 0a                                      beq #0x88f7bc
0088f690  10 10 8d e2                                      add r1, sp, #0x10
0088f694  00 20 a0 e3                                      mov r2, #0
0088f698  04 20 21 e5                                      str r2, [r1, #-4]!
0088f69c  01 28 a0 e3                                      mov r2, #0x10000
0088f6a0  03 00 a0 e1                                      mov r0, r3
0088f6a4  02 20 82 e2                                      add r2, r2, #2
0088f6a8  00 30 93 e5                                      ldr r3, [r3]
0088f6ac  0f e0 a0 e1                                      mov lr, pc
0088f6b0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0088f6b4  7c 32 9f e5                                      ldr r3, [pc, #0x27c]
0088f6b8  03 60 94 e7                                      ldr r6, [r4, r3]
0088f6bc  00 10 96 e5                                      ldr r1, [r6]
0088f6c0  00 00 51 e3                                      cmp r1, #0
0088f6c4  3e 00 00 0a                                      beq #0x88f7c4
0088f6c8  6c 72 9f e5                                      ldr r7, [pc, #0x26c]
0088f6cc  07 30 94 e7                                      ldr r3, [r4, r7]
0088f6d0  0c c0 a0 e3                                      mov ip, #0xc
0088f6d4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0088f6d8  00 20 93 e5                                      ldr r2, [r3]
0088f6dc  44 3c 0a e3                                      movw r3, #0xac44
0088f6e0  00 c0 8d e5                                      str ip, [sp]
0088f6e4  02 c0 a0 e3                                      mov ip, #2
0088f6e8  04 c0 8d e5                                      str ip, [sp, #4]
0088f6ec  11 fe ff eb                                      bl #0x88ef38
0088f6f0  03 30 80 e2                                      add r3, r0, #3
0088f6f4  00 00 50 e3                                      cmp r0, #0
0088f6f8  03 00 a0 b1                                      movlt r0, r3
0088f6fc  40 01 a0 e1                                      asr r0, r0, #2
0088f700  01 0b 50 e3                                      cmp r0, #0x400
0088f704  01 3b a0 e3                                      mov r3, #0x400
0088f708  5c 30 85 e5                                      str r3, [r5, #0x5c]
0088f70c  58 00 85 e5                                      str r0, [r5, #0x58]
0088f710  03 00 a0 a1                                      movge r0, r3
0088f714  24 32 9f e5                                      ldr r3, [pc, #0x224]
0088f718  5c 00 85 b5                                      strlt r0, [r5, #0x5c]
0088f71c  00 80 a0 e3                                      mov r8, #0
0088f720  03 60 94 e7                                      ldr r6, [r4, r3]
0088f724  81 fd e9 eb                                      bl #0x30ed30
0088f728  80 38 08 e3                                      movw r3, #0x8880
0088f72c  00 20 a0 e3                                      mov r2, #0
0088f730  e5 30 44 e3                                      movt r3, #0x40e5
0088f734  01 fb e9 eb                                      bl #0x30e340
0088f738  04 32 9f e5                                      ldr r3, [pc, #0x204]
0088f73c  f0 00 c6 e1                                      strd r0, r1, [r6]
0088f740  03 70 94 e7                                      ldr r7, [r4, r3]
0088f744  fc 31 9f e5                                      ldr r3, [pc, #0x1fc]
0088f748  58 00 95 e5                                      ldr r0, [r5, #0x58]
0088f74c  00 90 a0 e3                                      mov sb, #0
0088f750  03 60 94 e7                                      ldr r6, [r4, r3]
0088f754  75 fd e9 eb                                      bl #0x30ed30
0088f758  80 38 08 e3                                      movw r3, #0x8880
0088f75c  00 20 a0 e3                                      mov r2, #0
0088f760  e5 30 44 e3                                      movt r3, #0x40e5
0088f764  f5 fa e9 eb                                      bl #0x30e340
0088f768  d0 20 c7 e1                                      ldrd r2, r3, [r7]
0088f76c  d0 fc e9 eb                                      bl #0x30eab4
0088f770  d4 31 9f e5                                      ldr r3, [pc, #0x1d4]
0088f774  02 11 81 e2                                      add r1, r1, #0x80000000
0088f778  01 e0 a0 e3                                      mov lr, #1
0088f77c  03 20 94 e7                                      ldr r2, [r4, r3]
0088f780  c8 31 9f e5                                      ldr r3, [pc, #0x1c8]
0088f784  04 10 86 e5                                      str r1, [r6, #4]
0088f788  f0 80 c2 e1                                      strd r8, sb, [r2]
0088f78c  03 c0 94 e7                                      ldr ip, [r4, r3]
0088f790  bc 21 9f e5                                      ldr r2, [pc, #0x1bc]
0088f794  00 30 a0 e3                                      mov r3, #0
0088f798  00 00 86 e5                                      str r0, [r6]
0088f79c  03 10 a0 e1                                      mov r1, r3
0088f7a0  54 e0 85 e5                                      str lr, [r5, #0x54]
0088f7a4  02 20 94 e7                                      ldr r2, [r4, r2]
0088f7a8  00 e0 cc e5                                      strb lr, [ip]
0088f7ac  68 00 85 e2                                      add r0, r5, #0x68
0088f7b0  60 30 c5 e5                                      strb r3, [r5, #0x60]
0088f7b4  05 30 a0 e1                                      mov r3, r5
0088f7b8  08 fa e9 eb                                      bl #0x30dfe0
0088f7bc  14 d0 8d e2                                      add sp, sp, #0x14
0088f7c0  f0 83 bd e8                                      pop {r4, r5, r6, r7, r8, sb, pc}
0088f7c4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0088f7c8  88 11 9f e5                                      ldr r1, [pc, #0x188]
0088f7cc  03 00 a0 e1                                      mov r0, r3
0088f7d0  01 10 8f e0                                      add r1, pc, r1
0088f7d4  00 30 93 e5                                      ldr r3, [r3]
0088f7d8  0f e0 a0 e1                                      mov lr, pc
0088f7dc  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0088f7e0  00 00 50 e3                                      cmp r0, #0
0088f7e4  00 00 86 e5                                      str r0, [r6]
0088f7e8  f3 ff ff 0a                                      beq #0x88f7bc
0088f7ec  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0088f7f0  00 10 a0 e1                                      mov r1, r0
0088f7f4  40 71 9f e5                                      ldr r7, [pc, #0x140]
0088f7f8  03 00 a0 e1                                      mov r0, r3
0088f7fc  00 30 93 e5                                      ldr r3, [r3]
0088f800  0f e0 a0 e1                                      mov lr, pc
0088f804  54 f0 93 e5                                      ldr pc, [r3, #0x54]
0088f808  4c 21 9f e5                                      ldr r2, [pc, #0x14c]
0088f80c  4c 31 9f e5                                      ldr r3, [pc, #0x14c]
0088f810  00 c0 a0 e1                                      mov ip, r0
0088f814  00 10 a0 e1                                      mov r1, r0
0088f818  02 20 8f e0                                      add r2, pc, r2
0088f81c  03 30 8f e0                                      add r3, pc, r3
0088f820  00 c0 86 e5                                      str ip, [r6]
0088f824  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0088f828  52 fd ff eb                                      bl #0x88ed78
0088f82c  30 31 9f e5                                      ldr r3, [pc, #0x130]
0088f830  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0088f834  2c 21 9f e5                                      ldr r2, [pc, #0x12c]
0088f838  03 30 94 e7                                      ldr r3, [r4, r3]
0088f83c  00 10 96 e5                                      ldr r1, [r6]
0088f840  02 20 8f e0                                      add r2, pc, r2
0088f844  00 00 83 e5                                      str r0, [r3]
0088f848  1c 31 9f e5                                      ldr r3, [pc, #0x11c]
0088f84c  0c 00 a0 e1                                      mov r0, ip
0088f850  00 c0 9c e5                                      ldr ip, [ip]
0088f854  03 30 8f e0                                      add r3, pc, r3
0088f858  0f e0 a0 e1                                      mov lr, pc
0088f85c  c4 f1 9c e5                                      ldr pc, [ip, #0x1c4]
0088f860  08 81 9f e5                                      ldr r8, [pc, #0x108]
0088f864  07 30 94 e7                                      ldr r3, [r4, r7]
0088f868  04 21 9f e5                                      ldr r2, [pc, #0x104]
0088f86c  08 80 8f e0                                      add r8, pc, r8
0088f870  00 00 83 e5                                      str r0, [r3]
0088f874  02 20 8f e0                                      add r2, pc, r2
0088f878  00 10 96 e5                                      ldr r1, [r6]
0088f87c  08 30 a0 e1                                      mov r3, r8
0088f880  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0088f884  3b fd ff eb                                      bl #0x88ed78
0088f888  e8 30 9f e5                                      ldr r3, [pc, #0xe8]
0088f88c  e8 20 9f e5                                      ldr r2, [pc, #0xe8]
0088f890  00 10 96 e5                                      ldr r1, [r6]
0088f894  03 c0 94 e7                                      ldr ip, [r4, r3]
0088f898  02 20 8f e0                                      add r2, pc, r2
0088f89c  08 30 a0 e1                                      mov r3, r8
0088f8a0  00 00 8c e5                                      str r0, [ip]
0088f8a4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0088f8a8  32 fd ff eb                                      bl #0x88ed78
0088f8ac  cc 30 9f e5                                      ldr r3, [pc, #0xcc]
0088f8b0  cc 20 9f e5                                      ldr r2, [pc, #0xcc]
0088f8b4  00 10 96 e5                                      ldr r1, [r6]
0088f8b8  03 c0 94 e7                                      ldr ip, [r4, r3]
0088f8bc  02 20 8f e0                                      add r2, pc, r2
0088f8c0  08 30 a0 e1                                      mov r3, r8
0088f8c4  00 00 8c e5                                      str r0, [ip]
0088f8c8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0088f8cc  29 fd ff eb                                      bl #0x88ed78
0088f8d0  b0 20 9f e5                                      ldr r2, [pc, #0xb0]
0088f8d4  08 30 a0 e1                                      mov r3, r8
0088f8d8  00 10 96 e5                                      ldr r1, [r6]
0088f8dc  02 c0 94 e7                                      ldr ip, [r4, r2]
0088f8e0  a4 20 9f e5                                      ldr r2, [pc, #0xa4]
0088f8e4  00 00 8c e5                                      str r0, [ip]
0088f8e8  02 20 8f e0                                      add r2, pc, r2
0088f8ec  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0088f8f0  20 fd ff eb                                      bl #0x88ed78
0088f8f4  94 30 9f e5                                      ldr r3, [pc, #0x94]
0088f8f8  94 20 9f e5                                      ldr r2, [pc, #0x94]
0088f8fc  03 10 94 e7                                      ldr r1, [r4, r3]
0088f900  90 30 9f e5                                      ldr r3, [pc, #0x90]
0088f904  02 20 8f e0                                      add r2, pc, r2
0088f908  00 00 81 e5                                      str r0, [r1]
0088f90c  03 30 8f e0                                      add r3, pc, r3
0088f910  00 10 96 e5                                      ldr r1, [r6]
0088f914  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0088f918  16 fd ff eb                                      bl #0x88ed78
0088f91c  78 30 9f e5                                      ldr r3, [pc, #0x78]
0088f920  00 10 96 e5                                      ldr r1, [r6]
0088f924  03 30 94 e7                                      ldr r3, [r4, r3]
0088f928  00 00 83 e5                                      str r0, [r3]
0088f92c  66 ff ff ea                                      b #0x88f6cc
; mapping-symbol data/literal pool
0088f930  14 54 10 00 f8 4a 00 00 14 43 00 00 7c 35 00 00  .byte 0x14, 0x54, 0x10, 0x00, 0xf8, 0x4a, 0x00, 0x00, 0x14, 0x43, 0x00, 0x00, 0x7c, 0x35, 0x00, 0x00
0088f940  10 07 00 00 58 14 00 00 90 07 00 00 b4 43 00 00  .byte 0x10, 0x07, 0x00, 0x00, 0x58, 0x14, 0x00, 0x00, 0x90, 0x07, 0x00, 0x00, 0xb4, 0x43, 0x00, 0x00
0088f950  f4 07 00 00 9c 3a 00 00 b0 21 08 00 88 21 08 00  .byte 0xf4, 0x07, 0x00, 0x00, 0x9c, 0x3a, 0x00, 0x00, 0xb0, 0x21, 0x08, 0x00, 0x88, 0x21, 0x08, 0x00
0088f960  8c 21 08 00 d8 11 00 00 78 21 08 00 7c 21 08 00  .byte 0x8c, 0x21, 0x08, 0x00, 0xd8, 0x11, 0x00, 0x00, 0x78, 0x21, 0x08, 0x00, 0x7c, 0x21, 0x08, 0x00
0088f970  c4 de 04 00 44 9b 07 00 a8 46 00 00 40 21 08 00  .byte 0xc4, 0xde, 0x04, 0x00, 0x44, 0x9b, 0x07, 0x00, 0xa8, 0x46, 0x00, 0x00, 0x40, 0x21, 0x08, 0x00
0088f980  a4 0a 00 00 04 9b 07 00 c8 2b 00 00 f0 52 03 00  .byte 0xa4, 0x0a, 0x00, 0x00, 0x04, 0x9b, 0x07, 0x00, 0xc8, 0x2b, 0x00, 0x00, 0xf0, 0x52, 0x03, 0x00
0088f990  f0 19 00 00 dc 20 08 00 dc 20 08 00 c4 21 00 00  .byte 0xf0, 0x19, 0x00, 0x00, 0xdc, 0x20, 0x08, 0x00, 0xdc, 0x20, 0x08, 0x00, 0xc4, 0x21, 0x00, 0x00


; PACKAGE FUNCTION driver_android_audio_callback
; ELF VA 0x0088f14c, range_size=476, SHA-256=6b657d01ba0d183f72b0cffc2278ede0a7c8920d85a45ac21f5df871f47929e9
; Original assembly source vox_DriverAndroid-34a0f8ecbdd8-001.asm lines 211-324
; FUNCTION 0x0088f14c, declared_size=476, range_size=476, mode=arm
; class-group: vox::DriverAndroid
; alias: _ZN3vox13DriverAndroid12DoCallbackATERP7_jarray
; demangled: vox::DriverAndroid::DoCallbackAT(_jarray*&)
; decoder-mode: arm
0088f14c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0088f150  ac 41 9f e5                                      ldr r4, [pc, #0x1ac]
0088f154  ac 31 9f e5                                      ldr r3, [pc, #0x1ac]
0088f158  18 d0 4d e2                                      sub sp, sp, #0x18
0088f15c  04 40 8f e0                                      add r4, pc, r4
0088f160  03 20 94 e7                                      ldr r2, [r4, r3]
0088f164  00 50 a0 e3                                      mov r5, #0
0088f168  18 30 8d e2                                      add r3, sp, #0x18
0088f16c  00 c0 92 e5                                      ldr ip, [r2]
0088f170  04 50 23 e5                                      str r5, [r3, #-4]!
0088f174  01 28 a0 e3                                      mov r2, #0x10000
0088f178  01 60 a0 e1                                      mov r6, r1
0088f17c  02 20 82 e2                                      add r2, r2, #2
0088f180  03 10 a0 e1                                      mov r1, r3
0088f184  00 70 a0 e1                                      mov r7, r0
0088f188  00 30 9c e5                                      ldr r3, [ip]
0088f18c  0c 00 a0 e1                                      mov r0, ip
0088f190  0f e0 a0 e1                                      mov lr, pc
0088f194  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0088f198  14 30 9d e5                                      ldr r3, [sp, #0x14]
0088f19c  00 10 96 e5                                      ldr r1, [r6]
0088f1a0  05 20 a0 e1                                      mov r2, r5
0088f1a4  03 00 a0 e1                                      mov r0, r3
0088f1a8  00 30 93 e5                                      ldr r3, [r3]
0088f1ac  0f e0 a0 e1                                      mov lr, pc
0088f1b0  78 f3 93 e5                                      ldr pc, [r3, #0x378]
0088f1b4  00 80 50 e2                                      subs r8, r0, #0
0088f1b8  48 00 00 0a                                      beq #0x88f2e0
0088f1bc  5c 90 97 e5                                      ldr sb, [r7, #0x5c]
0088f1c0  04 a0 87 e2                                      add sl, r7, #4
0088f1c4  0a 00 a0 e1                                      mov r0, sl
0088f1c8  ab 10 00 eb                                      bl #0x89347c
0088f1cc  09 20 a0 e1                                      mov r2, sb
0088f1d0  08 10 a0 e1                                      mov r1, r8
0088f1d4  07 00 a0 e1                                      mov r0, r7
0088f1d8  da 04 00 eb                                      bl #0x890548
0088f1dc  0a 00 a0 e1                                      mov r0, sl
0088f1e0  a4 10 00 eb                                      bl #0x893478
0088f1e4  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0088f1e8  00 10 96 e5                                      ldr r1, [r6]
0088f1ec  05 30 a0 e1                                      mov r3, r5
0088f1f0  0c 00 a0 e1                                      mov r0, ip
0088f1f4  08 20 a0 e1                                      mov r2, r8
0088f1f8  00 c0 9c e5                                      ldr ip, [ip]
0088f1fc  0f e0 a0 e1                                      mov lr, pc
0088f200  7c f3 9c e5                                      ldr pc, [ip, #0x37c]
0088f204  00 31 9f e5                                      ldr r3, [pc, #0x100]
0088f208  00 c0 96 e5                                      ldr ip, [r6]
0088f20c  64 10 97 e5                                      ldr r1, [r7, #0x64]
0088f210  03 20 94 e7                                      ldr r2, [r4, r3]
0088f214  f4 30 9f e5                                      ldr r3, [pc, #0xf4]
0088f218  09 91 a0 e1                                      lsl sb, sb, #2
0088f21c  00 20 92 e5                                      ldr r2, [r2]
0088f220  03 30 94 e7                                      ldr r3, [r4, r3]
0088f224  14 00 9d e5                                      ldr r0, [sp, #0x14]
0088f228  00 30 93 e5                                      ldr r3, [r3]
0088f22c  00 c0 8d e5                                      str ip, [sp]
0088f230  20 02 8d e9                                      stmib sp, {r5, sb}
0088f234  d8 50 9f e5                                      ldr r5, [pc, #0xd8]
0088f238  30 ff ff eb                                      bl #0x88ef00
0088f23c  d4 30 9f e5                                      ldr r3, [pc, #0xd4]
0088f240  05 60 94 e7                                      ldr r6, [r4, r5]
0088f244  03 30 94 e7                                      ldr r3, [r4, r3]
0088f248  d0 00 c6 e1                                      ldrd r0, r1, [r6]
0088f24c  d0 20 c3 e1                                      ldrd r2, r3, [r3]
0088f250  3b fe e9 eb                                      bl #0x30eb44
0088f254  f0 00 c6 e1                                      strd r0, r1, [r6]
0088f258  bc 60 9f e5                                      ldr r6, [pc, #0xbc]
0088f25c  06 60 8f e0                                      add r6, pc, r6
0088f260  00 30 d6 e5                                      ldrb r3, [r6]
0088f264  00 00 53 e3                                      cmp r3, #0
0088f268  1e 00 00 1a                                      bne #0x88f2e8
0088f26c  ac 80 9f e5                                      ldr r8, [pc, #0xac]
0088f270  05 30 94 e7                                      ldr r3, [r4, r5]
0088f274  d0 60 c3 e1                                      ldrd r6, r7, [r3]
0088f278  5d 4e ff eb                                      bl #0x862bf4
0088f27c  08 30 94 e7                                      ldr r3, [r4, r8]
0088f280  d0 20 c3 e1                                      ldrd r2, r3, [r3]
0088f284  a8 fc e9 eb                                      bl #0x30e52c
0088f288  00 20 a0 e1                                      mov r2, r0
0088f28c  01 30 a0 e1                                      mov r3, r1
0088f290  06 00 a0 e1                                      mov r0, r6
0088f294  07 10 a0 e1                                      mov r1, r7
0088f298  a3 fc e9 eb                                      bl #0x30e52c
0088f29c  80 30 9f e5                                      ldr r3, [pc, #0x80]
0088f2a0  03 30 94 e7                                      ldr r3, [r4, r3]
0088f2a4  d0 20 c3 e1                                      ldrd r2, r3, [r3]
0088f2a8  ec fa e9 eb                                      bl #0x30de60
0088f2ac  00 00 50 e3                                      cmp r0, #0
0088f2b0  08 00 00 0a                                      beq #0x88f2d8
0088f2b4  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
0088f2b8  80 34 08 e3                                      movw r3, #0x8480
0088f2bc  00 20 a0 e3                                      mov r2, #0
0088f2c0  01 10 94 e7                                      ldr r1, [r4, r1]
0088f2c4  2e 31 44 e3                                      movt r3, #0x412e
0088f2c8  d0 00 c1 e1                                      ldrd r0, r1, [r1]
0088f2cc  f8 fd e9 eb                                      bl #0x30eab4
0088f2d0  be fd e9 eb                                      bl #0x30e9d0
0088f2d4  69 fd e9 eb                                      bl #0x30e880
0088f2d8  18 d0 8d e2                                      add sp, sp, #0x18
0088f2dc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0088f2e0  2c 50 9f e5                                      ldr r5, [pc, #0x2c]
0088f2e4  db ff ff ea                                      b #0x88f258
0088f2e8  41 4e ff eb                                      bl #0x862bf4
0088f2ec  2c 80 9f e5                                      ldr r8, [pc, #0x2c]
0088f2f0  00 30 a0 e3                                      mov r3, #0
0088f2f4  00 30 c6 e5                                      strb r3, [r6]
0088f2f8  08 30 94 e7                                      ldr r3, [r4, r8]
0088f2fc  f0 00 c3 e1                                      strd r0, r1, [r3]
0088f300  da ff ff ea                                      b #0x88f270
; mapping-symbol data/literal pool
0088f304  34 59 10 00 f8 4a 00 00 14 43 00 00 c4 21 00 00  .byte 0x34, 0x59, 0x10, 0x00, 0xf8, 0x4a, 0x00, 0x00, 0x14, 0x43, 0x00, 0x00, 0xc4, 0x21, 0x00, 0x00
0088f314  b4 43 00 00 10 07 00 00 ec ef 10 00 88 07 00 00  .byte 0xb4, 0x43, 0x00, 0x00, 0x10, 0x07, 0x00, 0x00, 0xec, 0xef, 0x10, 0x00, 0x88, 0x07, 0x00, 0x00
0088f324  90 07 00 00                                      .byte 0x90, 0x07, 0x00, 0x00


; PACKAGE FUNCTION driver_android_update_audio_thread
; ELF VA 0x0088f328, range_size=628, SHA-256=e0654d26aaa865f7b296f54289445ef81175d6d2645b6775de0073d34ec1e9c6
; Original assembly source vox_DriverAndroid-34a0f8ecbdd8-001.asm lines 331-481
; FUNCTION 0x0088f328, declared_size=628, range_size=628, mode=arm
; class-group: vox::DriverAndroid
; alias: _ZN3vox13DriverAndroid16UpdateThreadedATEPv
; demangled: vox::DriverAndroid::UpdateThreadedAT(void*)
; decoder-mode: arm
0088f328  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0088f32c  40 52 9f e5                                      ldr r5, [pc, #0x240]
0088f330  00 40 50 e2                                      subs r4, r0, #0
0088f334  2c d0 4d e2                                      sub sp, sp, #0x2c
0088f338  05 50 8f e0                                      add r5, pc, r5
0088f33c  81 00 00 0a                                      beq #0x88f548
0088f340  30 b2 9f e5                                      ldr fp, [pc, #0x230]
0088f344  00 60 a0 e3                                      mov r6, #0
0088f348  28 80 8d e2                                      add r8, sp, #0x28
0088f34c  04 90 84 e2                                      add sb, r4, #4
0088f350  09 00 a0 e1                                      mov r0, sb
0088f354  08 60 28 e5                                      str r6, [r8, #-8]!
0088f358  24 60 8d e5                                      str r6, [sp, #0x24]
0088f35c  46 10 00 eb                                      bl #0x89347c
0088f360  0b 70 95 e7                                      ldr r7, [r5, fp]
0088f364  08 10 a0 e1                                      mov r1, r8
0088f368  06 20 a0 e1                                      mov r2, r6
0088f36c  00 30 97 e5                                      ldr r3, [r7]
0088f370  03 00 a0 e1                                      mov r0, r3
0088f374  00 30 93 e5                                      ldr r3, [r3]
0088f378  0f e0 a0 e1                                      mov lr, pc
0088f37c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0088f380  20 30 9d e5                                      ldr r3, [sp, #0x20]
0088f384  06 00 53 e1                                      cmp r3, r6
0088f388  6c 00 00 0a                                      beq #0x88f540
0088f38c  03 00 a0 e1                                      mov r0, r3
0088f390  02 10 a0 e3                                      mov r1, #2
0088f394  00 30 93 e5                                      ldr r3, [r3]
0088f398  0f e0 a0 e1                                      mov lr, pc
0088f39c  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
0088f3a0  d4 31 9f e5                                      ldr r3, [pc, #0x1d4]
0088f3a4  44 2c 0a e3                                      movw r2, #0xac44
0088f3a8  00 20 8d e5                                      str r2, [sp]
0088f3ac  1c 30 8d e5                                      str r3, [sp, #0x1c]
0088f3b0  03 60 95 e7                                      ldr r6, [r5, r3]
0088f3b4  0c 20 a0 e3                                      mov r2, #0xc
0088f3b8  c0 31 9f e5                                      ldr r3, [pc, #0x1c0]
0088f3bc  04 20 8d e5                                      str r2, [sp, #4]
0088f3c0  02 20 a0 e3                                      mov r2, #2
0088f3c4  08 20 8d e5                                      str r2, [sp, #8]
0088f3c8  58 c0 94 e5                                      ldr ip, [r4, #0x58]
0088f3cc  03 30 95 e7                                      ldr r3, [r5, r3]
0088f3d0  00 10 96 e5                                      ldr r1, [r6]
0088f3d4  0c c1 a0 e1                                      lsl ip, ip, #2
0088f3d8  00 20 93 e5                                      ldr r2, [r3]
0088f3dc  20 00 9d e5                                      ldr r0, [sp, #0x20]
0088f3e0  01 80 a0 e3                                      mov r8, #1
0088f3e4  03 30 a0 e3                                      mov r3, #3
0088f3e8  0c c0 8d e5                                      str ip, [sp, #0xc]
0088f3ec  10 80 8d e5                                      str r8, [sp, #0x10]
0088f3f0  a7 fe ff eb                                      bl #0x88ee94
0088f3f4  00 00 50 e3                                      cmp r0, #0
0088f3f8  64 00 84 e5                                      str r0, [r4, #0x64]
0088f3fc  56 00 00 0a                                      beq #0x88f55c
0088f400  7c 31 9f e5                                      ldr r3, [pc, #0x17c]
0088f404  00 10 a0 e1                                      mov r1, r0
0088f408  00 20 96 e5                                      ldr r2, [r6]
0088f40c  03 30 95 e7                                      ldr r3, [r5, r3]
0088f410  20 00 9d e5                                      ldr r0, [sp, #0x20]
0088f414  00 30 93 e5                                      ldr r3, [r3]
0088f418  aa fe ff eb                                      bl #0x88eec8
0088f41c  20 30 9d e5                                      ldr r3, [sp, #0x20]
0088f420  58 10 94 e5                                      ldr r1, [r4, #0x58]
0088f424  03 00 a0 e1                                      mov r0, r3
0088f428  01 11 a0 e1                                      lsl r1, r1, #2
0088f42c  00 30 93 e5                                      ldr r3, [r3]
0088f430  0f e0 a0 e1                                      mov lr, pc
0088f434  c0 f2 93 e5                                      ldr pc, [r3, #0x2c0]
0088f438  00 00 50 e3                                      cmp r0, #0
0088f43c  24 00 8d e5                                      str r0, [sp, #0x24]
0088f440  45 00 00 0a                                      beq #0x88f55c
0088f444  08 80 c4 e5                                      strb r8, [r4, #8]
0088f448  09 00 a0 e1                                      mov r0, sb
0088f44c  09 10 00 eb                                      bl #0x893478
0088f450  e7 4d ff eb                                      bl #0x862bf4
0088f454  2c 31 9f e5                                      ldr r3, [pc, #0x12c]
0088f458  2c 21 9f e5                                      ldr r2, [pc, #0x12c]
0088f45c  2c a1 9f e5                                      ldr sl, [pc, #0x12c]
0088f460  03 30 95 e7                                      ldr r3, [r5, r3]
0088f464  02 80 95 e7                                      ldr r8, [r5, r2]
0088f468  24 70 8d e2                                      add r7, sp, #0x24
0088f46c  f0 00 c3 e1                                      strd r0, r1, [r3]
0088f470  00 60 d8 e5                                      ldrb r6, [r8]
0088f474  04 00 a0 e1                                      mov r0, r4
0088f478  07 10 a0 e1                                      mov r1, r7
0088f47c  00 00 56 e3                                      cmp r6, #0
0088f480  0f 00 00 0a                                      beq #0x88f4c4
0088f484  60 c0 d4 e5                                      ldrb ip, [r4, #0x60]
0088f488  80 34 08 e3                                      movw r3, #0x8480
0088f48c  00 20 a0 e3                                      mov r2, #0
0088f490  00 00 5c e3                                      cmp ip, #0
0088f494  2e 31 44 e3                                      movt r3, #0x412e
0088f498  2d 00 00 0a                                      beq #0x88f554
0088f49c  0a 10 95 e7                                      ldr r1, [r5, sl]
0088f4a0  d0 00 c1 e1                                      ldrd r0, r1, [r1]
0088f4a4  82 fd e9 eb                                      bl #0x30eab4
0088f4a8  5d fd e9 eb                                      bl #0x30ea24
0088f4ac  f3 fc e9 eb                                      bl #0x30e880
0088f4b0  00 60 d8 e5                                      ldrb r6, [r8]
0088f4b4  04 00 a0 e1                                      mov r0, r4
0088f4b8  07 10 a0 e1                                      mov r1, r7
0088f4bc  00 00 56 e3                                      cmp r6, #0
0088f4c0  ef ff ff 1a                                      bne #0x88f484
0088f4c4  09 00 a0 e1                                      mov r0, sb
0088f4c8  08 60 c4 e5                                      strb r6, [r4, #8]
0088f4cc  ea 0f 00 eb                                      bl #0x89347c
0088f4d0  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0088f4d4  20 00 9d e5                                      ldr r0, [sp, #0x20]
0088f4d8  64 10 94 e5                                      ldr r1, [r4, #0x64]
0088f4dc  03 70 95 e7                                      ldr r7, [r5, r3]
0088f4e0  ac 30 9f e5                                      ldr r3, [pc, #0xac]
0088f4e4  00 20 97 e5                                      ldr r2, [r7]
0088f4e8  03 30 95 e7                                      ldr r3, [r5, r3]
0088f4ec  00 30 93 e5                                      ldr r3, [r3]
0088f4f0  74 fe ff eb                                      bl #0x88eec8
0088f4f4  9c 30 9f e5                                      ldr r3, [pc, #0x9c]
0088f4f8  00 20 97 e5                                      ldr r2, [r7]
0088f4fc  64 10 94 e5                                      ldr r1, [r4, #0x64]
0088f500  03 30 95 e7                                      ldr r3, [r5, r3]
0088f504  20 00 9d e5                                      ldr r0, [sp, #0x20]
0088f508  00 30 93 e5                                      ldr r3, [r3]
0088f50c  6d fe ff eb                                      bl #0x88eec8
0088f510  20 30 9d e5                                      ldr r3, [sp, #0x20]
0088f514  06 10 a0 e1                                      mov r1, r6
0088f518  03 00 a0 e1                                      mov r0, r3
0088f51c  00 30 93 e5                                      ldr r3, [r3]
0088f520  0f e0 a0 e1                                      mov lr, pc
0088f524  50 f0 93 e5                                      ldr pc, [r3, #0x50]
0088f528  0b 30 95 e7                                      ldr r3, [r5, fp]
0088f52c  00 30 93 e5                                      ldr r3, [r3]
0088f530  03 00 a0 e1                                      mov r0, r3
0088f534  00 30 93 e5                                      ldr r3, [r3]
0088f538  0f e0 a0 e1                                      mov lr, pc
0088f53c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0088f540  09 00 a0 e1                                      mov r0, sb
0088f544  cb 0f 00 eb                                      bl #0x893478
0088f548  00 00 a0 e3                                      mov r0, #0
0088f54c  2c d0 8d e2                                      add sp, sp, #0x2c
0088f550  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0088f554  fc fe ff eb                                      bl #0x88f14c
0088f558  c4 ff ff ea                                      b #0x88f470
0088f55c  00 30 97 e5                                      ldr r3, [r7]
0088f560  03 00 a0 e1                                      mov r0, r3
0088f564  00 30 93 e5                                      ldr r3, [r3]
0088f568  0f e0 a0 e1                                      mov lr, pc
0088f56c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0088f570  f2 ff ff ea                                      b #0x88f540
; mapping-symbol data/literal pool
0088f574  58 57 10 00 f8 4a 00 00 14 43 00 00 d8 11 00 00  .byte 0x58, 0x57, 0x10, 0x00, 0xf8, 0x4a, 0x00, 0x00, 0x14, 0x43, 0x00, 0x00, 0xd8, 0x11, 0x00, 0x00
0088f584  a8 46 00 00 88 07 00 00 f4 07 00 00 10 07 00 00  .byte 0xa8, 0x46, 0x00, 0x00, 0x88, 0x07, 0x00, 0x00, 0xf4, 0x07, 0x00, 0x00, 0x10, 0x07, 0x00, 0x00
0088f594  c8 2b 00 00 f0 19 00 00                          .byte 0xc8, 0x2b, 0x00, 0x00, 0xf0, 0x19, 0x00, 0x00


; PACKAGE FUNCTION driver_android_init_opensl_stub
; ELF VA 0x0088ee5c, range_size=4, SHA-256=379bec29dccd0a93c94826144d7ef6e42fab64ef195a3b8313a16926f66f388f
; Original assembly source vox_DriverAndroid-34a0f8ecbdd8-001.asm lines 10-10
; FUNCTION 0x0088ee5c, declared_size=4, range_size=4, mode=arm
; class-group: vox::DriverAndroid
; alias: _ZN3vox13DriverAndroid8_InitOSLEPv
; demangled: vox::DriverAndroid::_InitOSL(void*)
; decoder-mode: arm
0088ee5c  1e ff 2f e1                                      bx lr


; PACKAGE FUNCTION driver_android_shutdown_opensl_stub
; ELF VA 0x0088ee60, range_size=4, SHA-256=379bec29dccd0a93c94826144d7ef6e42fab64ef195a3b8313a16926f66f388f
; Original assembly source vox_DriverAndroid-34a0f8ecbdd8-001.asm lines 17-17
; FUNCTION 0x0088ee60, declared_size=4, range_size=4, mode=arm
; class-group: vox::DriverAndroid
; alias: _ZN3vox13DriverAndroid12_ShutdownOSLEv
; demangled: vox::DriverAndroid::_ShutdownOSL()
; decoder-mode: arm
0088ee60  1e ff 2f e1                                      bx lr


; PACKAGE FUNCTION driver_android_suspend_opensl_stub
; ELF VA 0x0088ee64, range_size=4, SHA-256=379bec29dccd0a93c94826144d7ef6e42fab64ef195a3b8313a16926f66f388f
; Original assembly source vox_DriverAndroid-34a0f8ecbdd8-001.asm lines 24-24
; FUNCTION 0x0088ee64, declared_size=4, range_size=4, mode=arm
; class-group: vox::DriverAndroid
; alias: _ZN3vox13DriverAndroid11_SuspendOSLEv
; demangled: vox::DriverAndroid::_SuspendOSL()
; decoder-mode: arm
0088ee64  1e ff 2f e1                                      bx lr


; PACKAGE FUNCTION driver_android_resume_opensl_stub
; ELF VA 0x0088ee68, range_size=4, SHA-256=379bec29dccd0a93c94826144d7ef6e42fab64ef195a3b8313a16926f66f388f
; Original assembly source vox_DriverAndroid-34a0f8ecbdd8-001.asm lines 31-31
; FUNCTION 0x0088ee68, declared_size=4, range_size=4, mode=arm
; class-group: vox::DriverAndroid
; alias: _ZN3vox13DriverAndroid10_ResumeOSLEv
; demangled: vox::DriverAndroid::_ResumeOSL()
; decoder-mode: arm
0088ee68  1e ff 2f e1                                      bx lr


; PACKAGE FUNCTION driver_android_update_opensl_stub
; ELF VA 0x0088ee74, range_size=4, SHA-256=379bec29dccd0a93c94826144d7ef6e42fab64ef195a3b8313a16926f66f388f
; Original assembly source vox_DriverAndroid-34a0f8ecbdd8-001.asm lines 52-52
; FUNCTION 0x0088ee74, declared_size=4, range_size=4, mode=arm
; class-group: vox::DriverAndroid
; alias: _ZN3vox13DriverAndroid10_UpdateOSLEf
; demangled: vox::DriverAndroid::_UpdateOSL(float)
; decoder-mode: arm
0088ee74  1e ff 2f e1                                      bx lr


; PACKAGE FUNCTION callback_mixer_fill_buffer
; ELF VA 0x00890548, range_size=344, SHA-256=364158e08c2be052a7273e3888037cc55065f80d6632e0293c333f49191ffa68
; Original assembly source vox_DriverCallbackInterface-c5e710cbfcc1-001.asm lines 168-253
; FUNCTION 0x00890548, declared_size=344, range_size=344, mode=arm
; class-group: vox::DriverCallbackInterface
; alias: _ZN3vox23DriverCallbackInterface11_FillBufferEPsi
; demangled: vox::DriverCallbackInterface::_FillBuffer(short*, int)
; decoder-mode: arm
00890548  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0089054c  18 e0 90 e5                                      ldr lr, [r0, #0x18]
00890550  1c c0 90 e5                                      ldr ip, [r0, #0x1c]
00890554  30 d0 4d e2                                      sub sp, sp, #0x30
00890558  00 70 a0 e1                                      mov r7, r0
0089055c  20 00 90 e5                                      ldr r0, [r0, #0x20]
00890560  24 30 8d e2                                      add r3, sp, #0x24
00890564  20 e0 8d e5                                      str lr, [sp, #0x20]
00890568  04 c0 83 e4                                      str ip, [r3], #4
0089056c  00 00 83 e5                                      str r0, [r3]
00890570  34 e0 87 e2                                      add lr, r7, #0x34
00890574  0d 80 a0 e1                                      mov r8, sp
00890578  02 50 a0 e1                                      mov r5, r2
0089057c  01 a0 a0 e1                                      mov sl, r1
00890580  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00890584  0f 00 a8 e8                                      stm r8!, {r0, r1, r2, r3}
00890588  0f 00 9e e8                                      ldm lr, {r0, r1, r2, r3}
0089058c  0f 00 88 e8                                      stm r8, {r0, r1, r2, r3}
00890590  00 41 9f e5                                      ldr r4, [pc, #0x100]
00890594  00 61 9f e5                                      ldr r6, [pc, #0x100]
00890598  24 c0 87 e2                                      add ip, r7, #0x24
0089059c  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
008905a0  04 40 8f e0                                      add r4, pc, r4
008905a4  fb fe ff eb                                      bl #0x890198
008905a8  06 20 94 e7                                      ldr r2, [r4, r6]
008905ac  85 90 a0 e1                                      lsl sb, r5, #1
008905b0  00 30 92 e5                                      ldr r3, [r2]
008905b4  03 00 55 e1                                      cmp r5, r3
008905b8  0c 00 00 da                                      ble #0x8905f0
008905bc  04 00 92 e5                                      ldr r0, [r2, #4]
008905c0  00 00 50 e3                                      cmp r0, #0
008905c4  00 00 00 0a                                      beq #0x8905cc
008905c8  9d ff e9 eb                                      bl #0x310444
008905cc  09 01 a0 e1                                      lsl r0, sb, #2
008905d0  c8 ff e9 eb                                      bl #0x3104f8
008905d4  06 30 94 e7                                      ldr r3, [r4, r6]
008905d8  00 00 50 e3                                      cmp r0, #0
008905dc  04 00 83 e5                                      str r0, [r3, #4]
008905e0  00 50 83 15                                      strne r5, [r3]
008905e4  00 00 83 05                                      streq r0, [r3]
008905e8  05 30 a0 11                                      movne r3, r5
008905ec  27 00 00 0a                                      beq #0x890690
008905f0  00 00 53 e3                                      cmp r3, #0
008905f4  25 00 00 da                                      ble #0x890690
008905f8  06 30 94 e7                                      ldr r3, [r4, r6]
008905fc  00 10 a0 e3                                      mov r1, #0
00890600  09 21 a0 e1                                      lsl r2, sb, #2
00890604  04 00 93 e5                                      ldr r0, [r3, #4]
00890608  94 f7 e9 eb                                      bl #0x30e460
0089060c  10 80 b7 e5                                      ldr r8, [r7, #0x10]!
00890610  08 00 00 ea                                      b #0x890638
00890614  08 30 98 e5                                      ldr r3, [r8, #8]
00890618  06 10 94 e7                                      ldr r1, [r4, r6]
0089061c  05 20 a0 e1                                      mov r2, r5
00890620  03 00 a0 e1                                      mov r0, r3
00890624  04 10 91 e5                                      ldr r1, [r1, #4]
00890628  00 30 93 e5                                      ldr r3, [r3]
0089062c  0f e0 a0 e1                                      mov lr, pc
00890630  60 f0 93 e5                                      ldr pc, [r3, #0x60]
00890634  00 80 98 e5                                      ldr r8, [r8]
00890638  07 00 58 e1                                      cmp r8, r7
0089063c  f4 ff ff 1a                                      bne #0x890614
00890640  06 30 94 e7                                      ldr r3, [r4, r6]
00890644  00 00 59 e3                                      cmp sb, #0
00890648  04 00 93 e5                                      ldr r0, [r3, #4]
0089064c  0f 00 00 da                                      ble #0x890690
00890650  89 90 a0 e1                                      lsl sb, sb, #1
00890654  00 30 a0 e3                                      mov r3, #0
00890658  ff cf 0f e3                                      movw ip, #0xffff
0089065c  ff 4f 07 e3                                      movw r4, #0x7fff
00890660  83 20 90 e7                                      ldr r2, [r0, r3, lsl #1]
00890664  02 19 82 e2                                      add r1, r2, #0x8000
00890668  0c 00 51 e1                                      cmp r1, ip
0089066c  b3 20 8a 91                                      strhls r2, [sl, r3]
00890670  03 00 00 9a                                      bls #0x890684
00890674  00 00 52 e3                                      cmp r2, #0
00890678  04 20 a0 a1                                      movge r2, r4
0089067c  02 29 a0 b3                                      movlt r2, #0x8000
00890680  b3 20 8a e1                                      strh r2, [sl, r3]
00890684  02 30 83 e2                                      add r3, r3, #2
00890688  09 00 53 e1                                      cmp r3, sb
0089068c  f3 ff ff 1a                                      bne #0x890660
00890690  30 d0 8d e2                                      add sp, sp, #0x30
00890694  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
00890698  f0 44 10 00 74 28 00 00                          .byte 0xf0, 0x44, 0x10, 0x00, 0x74, 0x28, 0x00, 0x00


; PACKAGE FUNCTION callback_source_get_work_data
; ELF VA 0x008915c0, range_size=672, SHA-256=1c4932db192e394de943b3921e0dfadc1326c4df4fce90fe3dec85aba7869c57
; Original assembly source vox_DriverCallbackSourceInterface-530254aaed21-001.asm lines 1304-1471
; FUNCTION 0x008915c0, declared_size=672, range_size=672, mode=arm
; class-group: vox::DriverCallbackSourceInterface
; alias: _ZN3vox29DriverCallbackSourceInterface11GetWorkDataEPhii
; demangled: vox::DriverCallbackSourceInterface::GetWorkData(unsigned char*, int, int)
; decoder-mode: arm
008915c0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
008915c4  00 40 a0 e1                                      mov r4, r0
008915c8  60 c0 94 e5                                      ldr ip, [r4, #0x60]
008915cc  4c 00 90 e5                                      ldr r0, [r0, #0x4c]
008915d0  1c d0 4d e2                                      sub sp, sp, #0x1c
008915d4  18 60 a0 e3                                      mov r6, #0x18
008915d8  04 10 8d e5                                      str r1, [sp, #4]
008915dc  96 c0 21 e0                                      mla r1, r6, r0, ip
008915e0  08 20 8d e5                                      str r2, [sp, #8]
008915e4  14 20 d1 e5                                      ldrb r2, [r1, #0x14]
008915e8  03 90 a0 e1                                      mov sb, r3
008915ec  00 00 52 e3                                      cmp r2, #0
008915f0  00 00 a0 13                                      movne r0, #0
008915f4  08 00 8d 15                                      strne r0, [sp, #8]
008915f8  30 00 00 1a                                      bne #0x8916c0
008915fc  08 10 9d e5                                      ldr r1, [sp, #8]
00891600  00 00 51 e3                                      cmp r1, #0
00891604  08 20 8d d5                                      strle r2, [sp, #8]
00891608  28 00 00 da                                      ble #0x8916b0
0089160c  08 50 9d e5                                      ldr r5, [sp, #8]
00891610  00 10 a0 e1                                      mov r1, r0
00891614  96 01 0e e0                                      mul lr, r6, r1
00891618  5c 20 94 e5                                      ldr r2, [r4, #0x5c]
0089161c  0e 30 8c e0                                      add r3, ip, lr
00891620  10 10 93 e5                                      ldr r1, [r3, #0x10]
00891624  08 80 9d e5                                      ldr r8, [sp, #8]
00891628  04 70 93 e5                                      ldr r7, [r3, #4]
0089162c  91 02 01 e0                                      mul r1, r1, r2
00891630  08 a0 65 e0                                      rsb sl, r5, r8
00891634  04 80 9d e5                                      ldr r8, [sp, #4]
00891638  07 70 61 e0                                      rsb r7, r1, r7
0089163c  05 00 57 e1                                      cmp r7, r5
00891640  0a 00 88 e0                                      add r0, r8, sl
00891644  07 20 a0 e1                                      mov r2, r7
00891648  18 80 a0 e3                                      mov r8, #0x18
0089164c  1e 00 00 da                                      ble #0x8916cc
00891650  00 30 93 e5                                      ldr r3, [r3]
00891654  05 20 a0 e1                                      mov r2, r5
00891658  01 10 83 e0                                      add r1, r3, r1
0089165c  81 f4 e9 eb                                      bl #0x30e868
00891660  60 30 94 e5                                      ldr r3, [r4, #0x60]
00891664  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
00891668  98 32 22 e0                                      mla r2, r8, r2, r3
0089166c  0c 30 92 e5                                      ldr r3, [r2, #0xc]
00891670  09 90 83 e0                                      add sb, r3, sb
00891674  0c 90 82 e5                                      str sb, [r2, #0xc]
00891678  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
0089167c  60 30 94 e5                                      ldr r3, [r4, #0x60]
00891680  98 32 23 e0                                      mla r3, r8, r2, r3
00891684  10 20 93 e5                                      ldr r2, [r3, #0x10]
00891688  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0089168c  41 27 82 e0                                      add r2, r2, r1, asr #14
00891690  10 20 83 e5                                      str r2, [r3, #0x10]
00891694  60 30 94 e5                                      ldr r3, [r4, #0x60]
00891698  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
0089169c  98 32 28 e0                                      mla r8, r8, r2, r3
008916a0  0c 30 98 e5                                      ldr r3, [r8, #0xc]
008916a4  03 39 a0 e1                                      lsl r3, r3, #0x12
008916a8  23 39 a0 e1                                      lsr r3, r3, #0x12
008916ac  0c 30 88 e5                                      str r3, [r8, #0xc]
008916b0  58 30 94 e5                                      ldr r3, [r4, #0x58]
008916b4  08 10 9d e5                                      ldr r1, [sp, #8]
008916b8  01 30 83 e0                                      add r3, r3, r1
008916bc  58 30 84 e5                                      str r3, [r4, #0x58]
008916c0  08 00 9d e5                                      ldr r0, [sp, #8]
008916c4  1c d0 8d e2                                      add sp, sp, #0x1c
008916c8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
008916cc  0e 30 9c e7                                      ldr r3, [ip, lr]
008916d0  05 50 67 e0                                      rsb r5, r7, r5
008916d4  01 10 83 e0                                      add r1, r3, r1
008916d8  62 f4 e9 eb                                      bl #0x30e868
008916dc  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
008916e0  60 30 94 e5                                      ldr r3, [r4, #0x60]
008916e4  96 32 23 e0                                      mla r3, r6, r2, r3
008916e8  0c 20 93 e5                                      ldr r2, [r3, #0xc]
008916ec  09 90 82 e0                                      add sb, r2, sb
008916f0  0c 90 83 e5                                      str sb, [r3, #0xc]
008916f4  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
008916f8  60 30 94 e5                                      ldr r3, [r4, #0x60]
008916fc  96 32 23 e0                                      mla r3, r6, r2, r3
00891700  10 20 93 e5                                      ldr r2, [r3, #0x10]
00891704  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00891708  41 27 82 e0                                      add r2, r2, r1, asr #14
0089170c  10 20 83 e5                                      str r2, [r3, #0x10]
00891710  60 30 94 e5                                      ldr r3, [r4, #0x60]
00891714  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
00891718  96 32 22 e0                                      mla r2, r6, r2, r3
0089171c  0c 30 92 e5                                      ldr r3, [r2, #0xc]
00891720  03 39 a0 e1                                      lsl r3, r3, #0x12
00891724  23 39 a0 e1                                      lsr r3, r3, #0x12
00891728  0c 30 82 e5                                      str r3, [r2, #0xc]
0089172c  60 30 94 e5                                      ldr r3, [r4, #0x60]
00891730  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
00891734  0c 30 8d e5                                      str r3, [sp, #0xc]
00891738  5c 00 94 e5                                      ldr r0, [r4, #0x5c]
0089173c  96 32 2b e0                                      mla fp, r6, r2, r3
00891740  10 00 8d e5                                      str r0, [sp, #0x10]
00891744  00 10 a0 e1                                      mov r1, r0
00891748  04 00 9b e5                                      ldr r0, [fp, #4]
0089174c  10 90 9b e5                                      ldr sb, [fp, #0x10]
00891750  00 20 8d e5                                      str r2, [sp]
00891754  d2 f2 e9 eb                                      bl #0x30e2a4
00891758  0c 10 9b e5                                      ldr r1, [fp, #0xc]
0089175c  00 00 59 e1                                      cmp sb, r0
00891760  00 30 a0 e1                                      mov r3, r0
00891764  14 10 8d e5                                      str r1, [sp, #0x14]
00891768  00 20 9d e5                                      ldr r2, [sp]
0089176c  26 00 00 3a                                      blo #0x89180c
00891770  01 00 a0 e3                                      mov r0, #1
00891774  14 00 cb e5                                      strb r0, [fp, #0x14]
00891778  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
0089177c  44 10 94 e5                                      ldr r1, [r4, #0x44]
00891780  01 00 80 e2                                      add r0, r0, #1
00891784  4c 00 84 e5                                      str r0, [r4, #0x4c]
00891788  00 30 8d e5                                      str r3, [sp]
0089178c  5c f4 e9 eb                                      bl #0x30e904
00891790  4c 10 84 e5                                      str r1, [r4, #0x4c]
00891794  00 30 9d e5                                      ldr r3, [sp]
00891798  60 c0 94 e5                                      ldr ip, [r4, #0x60]
0089179c  09 90 63 e0                                      rsb sb, r3, sb
008917a0  96 c1 22 e0                                      mla r2, r6, r1, ip
008917a4  14 30 9d e5                                      ldr r3, [sp, #0x14]
008917a8  09 97 83 e0                                      add sb, r3, sb, lsl #14
008917ac  14 30 d2 e5                                      ldrb r3, [r2, #0x14]
008917b0  00 00 53 e3                                      cmp r3, #0
008917b4  10 00 00 1a                                      bne #0x8917fc
008917b8  00 00 55 e3                                      cmp r5, #0
008917bc  94 ff ff ca                                      bgt #0x891614
008917c0  08 00 9d e5                                      ldr r0, [sp, #8]
008917c4  00 00 65 e0                                      rsb r0, r5, r0
008917c8  08 00 8d e5                                      str r0, [sp, #8]
008917cc  b7 ff ff ea                                      b #0x8916b0
008917d0  00 00 55 e3                                      cmp r5, #0
008917d4  08 00 00 da                                      ble #0x8917fc
008917d8  04 20 9d e5                                      ldr r2, [sp, #4]
008917dc  0c 30 9d e5                                      ldr r3, [sp, #0xc]
008917e0  0a 00 87 e0                                      add r0, r7, sl
008917e4  00 00 82 e0                                      add r0, r2, r0
008917e8  01 10 93 e7                                      ldr r1, [r3, r1]
008917ec  10 20 9d e5                                      ldr r2, [sp, #0x10]
008917f0  1c f4 e9 eb                                      bl #0x30e868
008917f4  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
008917f8  05 50 63 e0                                      rsb r5, r3, r5
008917fc  08 80 9d e5                                      ldr r8, [sp, #8]
00891800  08 80 65 e0                                      rsb r8, r5, r8
00891804  08 80 8d e5                                      str r8, [sp, #8]
00891808  a8 ff ff ea                                      b #0x8916b0
0089180c  01 00 82 e2                                      add r0, r2, #1
00891810  44 10 94 e5                                      ldr r1, [r4, #0x44]
00891814  3a f4 e9 eb                                      bl #0x30e904
00891818  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0089181c  98 01 01 e0                                      mul r1, r8, r1
00891820  01 30 82 e0                                      add r3, r2, r1
00891824  14 30 d3 e5                                      ldrb r3, [r3, #0x14]
00891828  00 00 53 e3                                      cmp r3, #0
0089182c  e7 ff ff 0a                                      beq #0x8917d0
00891830  01 30 a0 e3                                      mov r3, #1
00891834  14 30 cb e5                                      strb r3, [fp, #0x14]
00891838  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
0089183c  08 30 9d e5                                      ldr r3, [sp, #8]
00891840  44 10 94 e5                                      ldr r1, [r4, #0x44]
00891844  01 00 80 e2                                      add r0, r0, #1
00891848  03 30 65 e0                                      rsb r3, r5, r3
0089184c  08 30 8d e5                                      str r3, [sp, #8]
00891850  4c 00 84 e5                                      str r0, [r4, #0x4c]
00891854  2a f4 e9 eb                                      bl #0x30e904
00891858  4c 10 84 e5                                      str r1, [r4, #0x4c]
0089185c  93 ff ff ea                                      b #0x8916b0


; PACKAGE FUNCTION callback_source_fill_stereo16
; ELF VA 0x00891860, range_size=800, SHA-256=c5f6abcf3d58f02d2925392cf7340de81f57d97cb5c146604329f73e1aa74c43
; Original assembly source vox_DriverCallbackSourceInterface-530254aaed21-001.asm lines 1478-1677
; FUNCTION 0x00891860, declared_size=800, range_size=800, mode=arm
; class-group: vox::DriverCallbackSourceInterface
; alias: _ZN3vox29DriverCallbackSourceInterface18FillBufferStereo16EPii
; demangled: vox::DriverCallbackSourceInterface::FillBufferStereo16(int*, int)
; decoder-mode: arm
00891860  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00891864  50 30 90 e5                                      ldr r3, [r0, #0x50]
00891868  1c d0 4d e2                                      sub sp, sp, #0x1c
0089186c  00 50 a0 e1                                      mov r5, r0
00891870  01 00 53 e3                                      cmp r3, #1
00891874  01 40 a0 e1                                      mov r4, r1
00891878  02 70 a0 e1                                      mov r7, r2
0089187c  01 00 00 0a                                      beq #0x891888
00891880  1c d0 8d e2                                      add sp, sp, #0x1c
00891884  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00891888  4c 30 90 e5                                      ldr r3, [r0, #0x4c]
0089188c  60 20 90 e5                                      ldr r2, [r0, #0x60]
00891890  18 10 a0 e3                                      mov r1, #0x18
00891894  91 23 23 e0                                      mla r3, r1, r3, r2
00891898  14 a0 d3 e5                                      ldrb sl, [r3, #0x14]
0089189c  00 00 5a e3                                      cmp sl, #0
008918a0  f6 ff ff 1a                                      bne #0x891880
008918a4  40 90 90 e5                                      ldr sb, [r0, #0x40]
008918a8  0c 60 93 e5                                      ldr r6, [r3, #0xc]
008918ac  99 07 09 e0                                      mul sb, sb, r7
008918b0  49 b7 a0 e1                                      asr fp, sb, #0xe
008918b4  03 b0 8b e2                                      add fp, fp, #3
008918b8  0b b1 a0 e1                                      lsl fp, fp, #2
008918bc  0b 00 a0 e1                                      mov r0, fp
008918c0  08 fb ff eb                                      bl #0x8904e8
008918c4  00 30 90 e5                                      ldr r3, [r0]
008918c8  00 80 a0 e1                                      mov r8, r0
008918cc  00 00 53 e3                                      cmp r3, #0
008918d0  00 30 e0 03                                      mvneq r3, #0
008918d4  50 30 85 05                                      streq r3, [r5, #0x50]
008918d8  e8 ff ff 0a                                      beq #0x891880
008918dc  04 10 90 e5                                      ldr r1, [r0, #4]
008918e0  0b 20 a0 e1                                      mov r2, fp
008918e4  09 30 a0 e1                                      mov r3, sb
008918e8  05 00 a0 e1                                      mov r0, r5
008918ec  33 ff ff eb                                      bl #0x8915c0
008918f0  00 00 50 e3                                      cmp r0, #0
008918f4  03 30 80 e2                                      add r3, r0, #3
008918f8  03 00 a0 b1                                      movlt r0, r3
008918fc  40 01 a0 e1                                      asr r0, r0, #2
00891900  40 10 95 e5                                      ldr r1, [r5, #0x40]
00891904  00 07 a0 e1                                      lsl r0, r0, #0xe
00891908  65 f2 e9 eb                                      bl #0x30e2a4
0089190c  00 00 57 e1                                      cmp r7, r0
00891910  04 80 98 e5                                      ldr r8, [r8, #4]
00891914  87 00 00 ca                                      bgt #0x891b38
00891918  20 30 95 e5                                      ldr r3, [r5, #0x20]
0089191c  0a b0 a0 e1                                      mov fp, sl
00891920  01 90 87 e2                                      add sb, r7, #1
00891924  08 70 8d e5                                      str r7, [sp, #8]
00891928  14 a0 8d e5                                      str sl, [sp, #0x14]
0089192c  03 00 59 e1                                      cmp sb, r3
00891930  0c 90 8d b5                                      strlt sb, [sp, #0xc]
00891934  02 00 00 ba                                      blt #0x891944
00891938  07 00 53 e1                                      cmp r3, r7
0089193c  07 30 a0 a1                                      movge r3, r7
00891940  0c 30 8d e5                                      str r3, [sp, #0xc]
00891944  24 30 d5 e5                                      ldrb r3, [r5, #0x24]
00891948  2c a0 95 e5                                      ldr sl, [r5, #0x2c]
0089194c  00 00 53 e3                                      cmp r3, #0
00891950  73 00 00 0a                                      beq #0x891b24
00891954  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00891958  00 00 52 e3                                      cmp r2, #0
0089195c  00 30 a0 d3                                      movle r3, #0
00891960  10 30 8d d5                                      strle r3, [sp, #0x10]
00891964  06 00 00 da                                      ble #0x891984
00891968  28 00 95 e5                                      ldr r0, [r5, #0x28]
0089196c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00891970  00 00 6a e0                                      rsb r0, sl, r0
00891974  4a f2 e9 eb                                      bl #0x30e2a4
00891978  10 00 8d e5                                      str r0, [sp, #0x10]
0089197c  00 30 50 e2                                      subs r3, r0, #0
00891980  01 30 a0 13                                      movne r3, #1
00891984  0b b0 93 e1                                      orrs fp, r3, fp
00891988  3d 00 00 0a                                      beq #0x891a84
0089198c  08 30 9d e5                                      ldr r3, [sp, #8]
00891990  00 00 53 e3                                      cmp r3, #0
00891994  37 00 00 da                                      ble #0x891a78
00891998  00 70 a0 e3                                      mov r7, #0
0089199c  04 50 8d e5                                      str r5, [sp, #4]
008919a0  2a 00 00 ea                                      b #0x891a50
008919a4  46 17 a0 e1                                      asr r1, r6, #0xe
008919a8  0c b0 9d e5                                      ldr fp, [sp, #0xc]
008919ac  01 20 81 e2                                      add r2, r1, #1
008919b0  01 c1 a0 e1                                      lsl ip, r1, #2
008919b4  02 01 a0 e1                                      lsl r0, r2, #2
008919b8  fc c0 98 e1                                      ldrsh ip, [r8, ip]
008919bc  f0 00 98 e1                                      ldrsh r0, [r8, r0]
008919c0  0b 00 57 e1                                      cmp r7, fp
008919c4  00 50 a0 a3                                      movge r5, #0
008919c8  01 50 a0 b3                                      movlt r5, #1
008919cc  06 39 a0 e1                                      lsl r3, r6, #0x12
008919d0  09 00 57 e1                                      cmp r7, sb
008919d4  01 50 85 a3                                      orrge r5, r5, #1
008919d8  00 00 55 e3                                      cmp r5, #0
008919dc  23 39 a0 e1                                      lsr r3, r3, #0x12
008919e0  00 00 6c e0                                      rsb r0, ip, r0
008919e4  10 50 9d 15                                      ldrne r5, [sp, #0x10]
008919e8  93 00 00 e0                                      mul r0, r3, r0
008919ec  05 a0 8a 10                                      addne sl, sl, r5
008919f0  40 07 8c e0                                      add r0, ip, r0, asr #14
008919f4  00 50 94 e5                                      ldr r5, [r4]
008919f8  90 0a 00 e0                                      mul r0, r0, sl
008919fc  08 b0 9d e5                                      ldr fp, [sp, #8]
00891a00  40 07 85 e0                                      add r0, r5, r0, asr #14
00891a04  00 00 84 e5                                      str r0, [r4]
00891a08  01 11 88 e0                                      add r1, r8, r1, lsl #2
00891a0c  02 21 88 e0                                      add r2, r8, r2, lsl #2
00891a10  f2 10 d1 e1                                      ldrsh r1, [r1, #2]
00891a14  f2 20 d2 e1                                      ldrsh r2, [r2, #2]
00891a18  01 70 87 e2                                      add r7, r7, #1
00891a1c  0b 00 57 e1                                      cmp r7, fp
00891a20  02 20 61 e0                                      rsb r2, r1, r2
00891a24  93 02 03 e0                                      mul r3, r3, r2
00891a28  04 20 94 e5                                      ldr r2, [r4, #4]
00891a2c  43 37 81 e0                                      add r3, r1, r3, asr #14
00891a30  93 0a 03 e0                                      mul r3, r3, sl
00891a34  43 37 82 e0                                      add r3, r2, r3, asr #14
00891a38  04 30 84 e5                                      str r3, [r4, #4]
00891a3c  0c 00 00 0a                                      beq #0x891a74
00891a40  04 50 9d e5                                      ldr r5, [sp, #4]
00891a44  08 40 84 e2                                      add r4, r4, #8
00891a48  40 30 95 e5                                      ldr r3, [r5, #0x40]
00891a4c  03 60 86 e0                                      add r6, r6, r3
00891a50  09 00 57 e1                                      cmp r7, sb
00891a54  d2 ff ff 1a                                      bne #0x8919a4
00891a58  0a 00 a0 e1                                      mov r0, sl
00891a5c  14 10 9d e5                                      ldr r1, [sp, #0x14]
00891a60  0f f2 e9 eb                                      bl #0x30e2a4
00891a64  c0 5f 20 e0                                      eor r5, r0, r0, asr #31
00891a68  c0 5f 65 e0                                      rsb r5, r5, r0, asr #31
00891a6c  10 50 8d e5                                      str r5, [sp, #0x10]
00891a70  cb ff ff ea                                      b #0x8919a4
00891a74  04 50 9d e5                                      ldr r5, [sp, #4]
00891a78  28 a0 95 e5                                      ldr sl, [r5, #0x28]
00891a7c  2c a0 85 e5                                      str sl, [r5, #0x2c]
00891a80  7e ff ff ea                                      b #0x891880
00891a84  00 00 5a e3                                      cmp sl, #0
00891a88  fb ff ff 0a                                      beq #0x891a7c
00891a8c  08 20 9d e5                                      ldr r2, [sp, #8]
00891a90  00 00 52 e3                                      cmp r2, #0
00891a94  f8 ff ff da                                      ble #0x891a7c
00891a98  02 90 a0 e1                                      mov sb, r2
00891a9c  46 27 a0 e1                                      asr r2, r6, #0xe
00891aa0  01 10 82 e2                                      add r1, r2, #1
00891aa4  01 31 a0 e1                                      lsl r3, r1, #2
00891aa8  02 01 a0 e1                                      lsl r0, r2, #2
00891aac  f0 00 98 e1                                      ldrsh r0, [r8, r0]
00891ab0  f3 70 98 e1                                      ldrsh r7, [r8, r3]
00891ab4  06 39 a0 e1                                      lsl r3, r6, #0x12
00891ab8  00 c0 94 e5                                      ldr ip, [r4]
00891abc  23 39 a0 e1                                      lsr r3, r3, #0x12
00891ac0  07 70 60 e0                                      rsb r7, r0, r7
00891ac4  93 07 07 e0                                      mul r7, r3, r7
00891ac8  01 11 88 e0                                      add r1, r8, r1, lsl #2
00891acc  47 07 80 e0                                      add r0, r0, r7, asr #14
00891ad0  9a 00 00 e0                                      mul r0, sl, r0
00891ad4  02 21 88 e0                                      add r2, r8, r2, lsl #2
00891ad8  40 07 8c e0                                      add r0, ip, r0, asr #14
00891adc  00 00 84 e5                                      str r0, [r4]
00891ae0  f2 20 d2 e1                                      ldrsh r2, [r2, #2]
00891ae4  f2 00 d1 e1                                      ldrsh r0, [r1, #2]
00891ae8  04 10 94 e5                                      ldr r1, [r4, #4]
00891aec  01 b0 8b e2                                      add fp, fp, #1
00891af0  00 00 62 e0                                      rsb r0, r2, r0
00891af4  93 00 03 e0                                      mul r3, r3, r0
00891af8  09 00 5b e1                                      cmp fp, sb
00891afc  43 27 82 e0                                      add r2, r2, r3, asr #14
00891b00  9a 02 02 e0                                      mul r2, sl, r2
00891b04  42 27 81 e0                                      add r2, r1, r2, asr #14
00891b08  04 20 84 e5                                      str r2, [r4, #4]
00891b0c  40 30 95 e5                                      ldr r3, [r5, #0x40]
00891b10  08 40 84 e2                                      add r4, r4, #8
00891b14  03 60 86 e0                                      add r6, r6, r3
00891b18  df ff ff 1a                                      bne #0x891a9c
00891b1c  2c a0 85 e5                                      str sl, [r5, #0x2c]
00891b20  56 ff ff ea                                      b #0x891880
00891b24  01 20 a0 e3                                      mov r2, #1
00891b28  28 a0 95 e5                                      ldr sl, [r5, #0x28]
00891b2c  24 20 c5 e5                                      strb r2, [r5, #0x24]
00891b30  10 30 8d e5                                      str r3, [sp, #0x10]
00891b34  92 ff ff ea                                      b #0x891984
00891b38  20 20 95 e5                                      ldr r2, [r5, #0x20]
00891b3c  01 00 40 e2                                      sub r0, r0, #1
00891b40  08 00 8d e5                                      str r0, [sp, #8]
00891b44  02 90 50 e0                                      subs sb, r0, r2
00891b48  14 20 8d e5                                      str r2, [sp, #0x14]
00891b4c  04 00 00 4a                                      bmi #0x891b64
00891b50  14 30 9d e5                                      ldr r3, [sp, #0x14]
00891b54  00 00 53 e3                                      cmp r3, #0
00891b58  00 b0 a0 d3                                      movle fp, #0
00891b5c  01 b0 a0 c3                                      movgt fp, #1
00891b60  71 ff ff ea                                      b #0x89192c
00891b64  02 30 a0 e1                                      mov r3, r2
00891b68  00 00 50 e3                                      cmp r0, #0
00891b6c  00 b0 a0 d3                                      movle fp, #0
00891b70  01 b0 a0 c3                                      movgt fp, #1
00891b74  0a 90 a0 e1                                      mov sb, sl
00891b78  14 00 8d e5                                      str r0, [sp, #0x14]
00891b7c  6a ff ff ea                                      b #0x89192c


; PACKAGE FUNCTION callback_source_upload_data
; ELF VA 0x00890d40, range_size=204, SHA-256=20481fe8db6cd69ef1ad4aa090864247db5f1af4e3f7da1fe9834c7d8f915167
; Original assembly source vox_DriverCallbackSourceInterface-530254aaed21-001.asm lines 881-931
; FUNCTION 0x00890d40, declared_size=204, range_size=204, mode=arm
; class-group: vox::DriverCallbackSourceInterface
; alias: _ZN3vox29DriverCallbackSourceInterface10UploadDataEPvi
; demangled: vox::DriverCallbackSourceInterface::UploadData(void*, int)
; decoder-mode: arm
00890d40  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00890d44  08 50 80 e2                                      add r5, r0, #8
00890d48  00 40 a0 e1                                      mov r4, r0
00890d4c  05 00 a0 e1                                      mov r0, r5
00890d50  02 60 a0 e1                                      mov r6, r2
00890d54  01 70 a0 e1                                      mov r7, r1
00890d58  c7 09 00 eb                                      bl #0x89347c
00890d5c  50 30 94 e5                                      ldr r3, [r4, #0x50]
00890d60  01 00 73 e3                                      cmn r3, #1
00890d64  00 00 56 13                                      cmpne r6, #0
00890d68  00 20 a0 c3                                      movgt r2, #0
00890d6c  01 20 a0 d3                                      movle r2, #1
00890d70  22 00 00 da                                      ble #0x890e00
00890d74  48 10 94 e5                                      ldr r1, [r4, #0x48]
00890d78  18 30 a0 e3                                      mov r3, #0x18
00890d7c  60 00 94 e5                                      ldr r0, [r4, #0x60]
00890d80  93 01 01 e0                                      mul r1, r3, r1
00890d84  01 c0 80 e0                                      add ip, r0, r1
00890d88  14 c0 dc e5                                      ldrb ip, [ip, #0x14]
00890d8c  00 00 5c e3                                      cmp ip, #0
00890d90  1a 00 00 0a                                      beq #0x890e00
00890d94  01 70 80 e7                                      str r7, [r0, r1]
00890d98  48 00 94 e5                                      ldr r0, [r4, #0x48]
00890d9c  60 10 94 e5                                      ldr r1, [r4, #0x60]
00890da0  93 10 21 e0                                      mla r1, r3, r0, r1
00890da4  04 60 81 e5                                      str r6, [r1, #4]
00890da8  48 00 94 e5                                      ldr r0, [r4, #0x48]
00890dac  60 10 94 e5                                      ldr r1, [r4, #0x60]
00890db0  93 10 21 e0                                      mla r1, r3, r0, r1
00890db4  08 60 81 e5                                      str r6, [r1, #8]
00890db8  48 00 94 e5                                      ldr r0, [r4, #0x48]
00890dbc  60 10 94 e5                                      ldr r1, [r4, #0x60]
00890dc0  93 10 21 e0                                      mla r1, r3, r0, r1
00890dc4  14 20 c1 e5                                      strb r2, [r1, #0x14]
00890dc8  48 00 94 e5                                      ldr r0, [r4, #0x48]
00890dcc  60 10 94 e5                                      ldr r1, [r4, #0x60]
00890dd0  93 10 21 e0                                      mla r1, r3, r0, r1
00890dd4  0c 20 81 e5                                      str r2, [r1, #0xc]
00890dd8  48 00 94 e5                                      ldr r0, [r4, #0x48]
00890ddc  60 10 94 e5                                      ldr r1, [r4, #0x60]
00890de0  93 10 23 e0                                      mla r3, r3, r0, r1
00890de4  10 20 83 e5                                      str r2, [r3, #0x10]
00890de8  48 00 94 e5                                      ldr r0, [r4, #0x48]
00890dec  44 10 94 e5                                      ldr r1, [r4, #0x44]
00890df0  01 00 80 e2                                      add r0, r0, #1
00890df4  48 00 84 e5                                      str r0, [r4, #0x48]
00890df8  c1 f6 e9 eb                                      bl #0x30e904
00890dfc  48 10 84 e5                                      str r1, [r4, #0x48]
00890e00  05 00 a0 e1                                      mov r0, r5
00890e04  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00890e08  9a 09 00 ea                                      b #0x893478


; PACKAGE FUNCTION callback_source_need_data
; ELF VA 0x00890e0c, range_size=128, SHA-256=f02f8db79c9f380943fb6fbd6d3125fa35bbb3ec6499de8ea801c095293ab837
; Original assembly source vox_DriverCallbackSourceInterface-530254aaed21-001.asm lines 938-969
; FUNCTION 0x00890e0c, declared_size=128, range_size=128, mode=arm
; class-group: vox::DriverCallbackSourceInterface
; alias: _ZN3vox29DriverCallbackSourceInterface8NeedDataEv
; demangled: vox::DriverCallbackSourceInterface::NeedData()
; decoder-mode: arm
00890e0c  70 40 2d e9                                      push {r4, r5, r6, lr}
00890e10  08 50 80 e2                                      add r5, r0, #8
00890e14  00 40 a0 e1                                      mov r4, r0
00890e18  05 00 a0 e1                                      mov r0, r5
00890e1c  96 09 00 eb                                      bl #0x89347c
00890e20  50 30 94 e5                                      ldr r3, [r4, #0x50]
00890e24  01 00 73 e3                                      cmn r3, #1
00890e28  0a 00 00 0a                                      beq #0x890e58
00890e2c  60 10 94 e5                                      ldr r1, [r4, #0x60]
00890e30  64 30 94 e5                                      ldr r3, [r4, #0x64]
00890e34  03 30 61 e0                                      rsb r3, r1, r3
00890e38  c3 31 a0 e1                                      asr r3, r3, #3
00890e3c  03 21 83 e0                                      add r2, r3, r3, lsl #2
00890e40  02 22 82 e0                                      add r2, r2, r2, lsl #4
00890e44  02 24 82 e0                                      add r2, r2, r2, lsl #8
00890e48  02 28 82 e0                                      add r2, r2, r2, lsl #16
00890e4c  82 30 83 e0                                      add r3, r3, r2, lsl #1
00890e50  00 00 53 e3                                      cmp r3, #0
00890e54  04 00 00 1a                                      bne #0x890e6c
00890e58  05 00 a0 e1                                      mov r0, r5
00890e5c  00 40 a0 e3                                      mov r4, #0
00890e60  84 09 00 eb                                      bl #0x893478
00890e64  04 00 a0 e1                                      mov r0, r4
00890e68  70 80 bd e8                                      pop {r4, r5, r6, pc}
00890e6c  48 30 94 e5                                      ldr r3, [r4, #0x48]
00890e70  18 20 a0 e3                                      mov r2, #0x18
00890e74  05 00 a0 e1                                      mov r0, r5
00890e78  92 13 21 e0                                      mla r1, r2, r3, r1
00890e7c  14 40 d1 e5                                      ldrb r4, [r1, #0x14]
00890e80  7c 09 00 eb                                      bl #0x893478
00890e84  04 00 a0 e1                                      mov r0, r4
00890e88  70 80 bd e8                                      pop {r4, r5, r6, pc}


; PACKAGE FUNCTION callback_source_get_state
; ELF VA 0x00890e8c, range_size=92, SHA-256=48fdc87f113646a1236a9b3d5c69117ab4ba8b5c7416b88371dc292bf6a2a775
; Original assembly source vox_DriverCallbackSourceInterface-530254aaed21-001.asm lines 976-998
; FUNCTION 0x00890e8c, declared_size=92, range_size=92, mode=arm
; class-group: vox::DriverCallbackSourceInterface
; alias: _ZN3vox29DriverCallbackSourceInterface8GetStateEv
; demangled: vox::DriverCallbackSourceInterface::GetState()
; decoder-mode: arm
00890e8c  70 40 2d e9                                      push {r4, r5, r6, lr}
00890e90  08 60 80 e2                                      add r6, r0, #8
00890e94  00 50 a0 e1                                      mov r5, r0
00890e98  06 00 a0 e1                                      mov r0, r6
00890e9c  76 09 00 eb                                      bl #0x89347c
00890ea0  50 40 95 e5                                      ldr r4, [r5, #0x50]
00890ea4  01 00 54 e3                                      cmp r4, #1
00890ea8  03 00 00 0a                                      beq #0x890ebc
00890eac  06 00 a0 e1                                      mov r0, r6
00890eb0  70 09 00 eb                                      bl #0x893478
00890eb4  04 00 a0 e1                                      mov r0, r4
00890eb8  70 80 bd e8                                      pop {r4, r5, r6, pc}
00890ebc  60 20 95 e5                                      ldr r2, [r5, #0x60]
00890ec0  4c 30 95 e5                                      ldr r3, [r5, #0x4c]
00890ec4  18 10 a0 e3                                      mov r1, #0x18
00890ec8  06 00 a0 e1                                      mov r0, r6
00890ecc  91 23 23 e0                                      mla r3, r1, r3, r2
00890ed0  14 30 d3 e5                                      ldrb r3, [r3, #0x14]
00890ed4  00 00 53 e3                                      cmp r3, #0
00890ed8  03 40 a0 13                                      movne r4, #3
00890edc  65 09 00 eb                                      bl #0x893478
00890ee0  04 00 a0 e1                                      mov r0, r4
00890ee4  70 80 bd e8                                      pop {r4, r5, r6, pc}


; PACKAGE FUNCTION callback_source_reset
; ELF VA 0x00890ee8, range_size=96, SHA-256=174be986e6ff4575503d3666ec474bd6e4d02c47a3a8250bb64269b54fe07a9e
; Original assembly source vox_DriverCallbackSourceInterface-530254aaed21-001.asm lines 1005-1028
; FUNCTION 0x00890ee8, declared_size=96, range_size=96, mode=arm
; class-group: vox::DriverCallbackSourceInterface
; alias: _ZN3vox29DriverCallbackSourceInterface5ResetEv
; demangled: vox::DriverCallbackSourceInterface::Reset()
; decoder-mode: arm
00890ee8  70 40 2d e9                                      push {r4, r5, r6, lr}
00890eec  08 50 80 e2                                      add r5, r0, #8
00890ef0  00 40 a0 e1                                      mov r4, r0
00890ef4  05 00 a0 e1                                      mov r0, r5
00890ef8  5f 09 00 eb                                      bl #0x89347c
00890efc  64 20 94 e5                                      ldr r2, [r4, #0x64]
00890f00  60 30 94 e5                                      ldr r3, [r4, #0x60]
00890f04  02 30 63 e0                                      rsb r3, r3, r2
00890f08  c3 31 a0 e1                                      asr r3, r3, #3
00890f0c  03 21 83 e0                                      add r2, r3, r3, lsl #2
00890f10  02 22 82 e0                                      add r2, r2, r2, lsl #4
00890f14  02 24 82 e0                                      add r2, r2, r2, lsl #8
00890f18  02 28 82 e0                                      add r2, r2, r2, lsl #16
00890f1c  82 30 83 e0                                      add r3, r3, r2, lsl #1
00890f20  00 00 53 e3                                      cmp r3, #0
00890f24  04 00 00 0a                                      beq #0x890f3c
00890f28  00 60 a0 e3                                      mov r6, #0
00890f2c  50 60 84 e5                                      str r6, [r4, #0x50]
00890f30  04 00 a0 e1                                      mov r0, r4
00890f34  83 fc ff eb                                      bl #0x890148
00890f38  58 60 84 e5                                      str r6, [r4, #0x58]
00890f3c  05 00 a0 e1                                      mov r0, r5
00890f40  70 40 bd e8                                      pop {r4, r5, r6, lr}
00890f44  4b 09 00 ea                                      b #0x893478


; PACKAGE FUNCTION callback_source_pause
; ELF VA 0x00890f48, range_size=60, SHA-256=7ffcfc86d6518194e669f467505e49be0bb430cfffe9b0a69678189e0742dbe8
; Original assembly source vox_DriverCallbackSourceInterface-530254aaed21-001.asm lines 1035-1049
; FUNCTION 0x00890f48, declared_size=60, range_size=60, mode=arm
; class-group: vox::DriverCallbackSourceInterface
; alias: _ZN3vox29DriverCallbackSourceInterface5PauseEv
; demangled: vox::DriverCallbackSourceInterface::Pause()
; decoder-mode: arm
00890f48  70 40 2d e9                                      push {r4, r5, r6, lr}
00890f4c  08 50 80 e2                                      add r5, r0, #8
00890f50  00 40 a0 e1                                      mov r4, r0
00890f54  05 00 a0 e1                                      mov r0, r5
00890f58  47 09 00 eb                                      bl #0x89347c
00890f5c  50 30 94 e5                                      ldr r3, [r4, #0x50]
00890f60  05 00 a0 e1                                      mov r0, r5
00890f64  01 00 53 e3                                      cmp r3, #1
00890f68  00 30 a0 03                                      moveq r3, #0
00890f6c  02 20 a0 03                                      moveq r2, #2
00890f70  2c 30 84 05                                      streq r3, [r4, #0x2c]
00890f74  50 20 84 05                                      streq r2, [r4, #0x50]
00890f78  30 30 84 05                                      streq r3, [r4, #0x30]
00890f7c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00890f80  3c 09 00 ea                                      b #0x893478


; PACKAGE FUNCTION callback_source_stop
; ELF VA 0x00890f84, range_size=76, SHA-256=8d7a992039ce5e625390250611d72d725832572a71bc08d2e32cc9280ca5c28a
; Original assembly source vox_DriverCallbackSourceInterface-530254aaed21-001.asm lines 1056-1074
; FUNCTION 0x00890f84, declared_size=76, range_size=76, mode=arm
; class-group: vox::DriverCallbackSourceInterface
; alias: _ZN3vox29DriverCallbackSourceInterface4StopEv
; demangled: vox::DriverCallbackSourceInterface::Stop()
; decoder-mode: arm
00890f84  70 40 2d e9                                      push {r4, r5, r6, lr}
00890f88  08 50 80 e2                                      add r5, r0, #8
00890f8c  00 40 a0 e1                                      mov r4, r0
00890f90  05 00 a0 e1                                      mov r0, r5
00890f94  38 09 00 eb                                      bl #0x89347c
00890f98  50 30 94 e5                                      ldr r3, [r4, #0x50]
00890f9c  01 00 73 e3                                      cmn r3, #1
00890fa0  07 00 00 0a                                      beq #0x890fc4
00890fa4  03 30 a0 e3                                      mov r3, #3
00890fa8  50 30 84 e5                                      str r3, [r4, #0x50]
00890fac  04 00 a0 e1                                      mov r0, r4
00890fb0  64 fc ff eb                                      bl #0x890148
00890fb4  00 30 a0 e3                                      mov r3, #0
00890fb8  2c 30 84 e5                                      str r3, [r4, #0x2c]
00890fbc  58 30 84 e5                                      str r3, [r4, #0x58]
00890fc0  30 30 84 e5                                      str r3, [r4, #0x30]
00890fc4  05 00 a0 e1                                      mov r0, r5
00890fc8  70 40 bd e8                                      pop {r4, r5, r6, lr}
00890fcc  29 09 00 ea                                      b #0x893478


; PACKAGE FUNCTION callback_source_play
; ELF VA 0x00890fd0, range_size=48, SHA-256=b731dd9c0c010d2aab0c524a0e80d60bceb062fed061b8e14456c7bf1d605559
; Original assembly source vox_DriverCallbackSourceInterface-530254aaed21-001.asm lines 1081-1092
; FUNCTION 0x00890fd0, declared_size=48, range_size=48, mode=arm
; class-group: vox::DriverCallbackSourceInterface
; alias: _ZN3vox29DriverCallbackSourceInterface4PlayEv
; demangled: vox::DriverCallbackSourceInterface::Play()
; decoder-mode: arm
00890fd0  70 40 2d e9                                      push {r4, r5, r6, lr}
00890fd4  08 50 80 e2                                      add r5, r0, #8
00890fd8  00 40 a0 e1                                      mov r4, r0
00890fdc  05 00 a0 e1                                      mov r0, r5
00890fe0  25 09 00 eb                                      bl #0x89347c
00890fe4  50 30 94 e5                                      ldr r3, [r4, #0x50]
00890fe8  05 00 a0 e1                                      mov r0, r5
00890fec  01 00 73 e3                                      cmn r3, #1
00890ff0  01 30 a0 13                                      movne r3, #1
00890ff4  50 30 84 15                                      strne r3, [r4, #0x50]
00890ff8  70 40 bd e8                                      pop {r4, r5, r6, lr}
00890ffc  1d 09 00 ea                                      b #0x893478


; PACKAGE FUNCTION engine_load_source_async
; ELF VA 0x0086aee8, range_size=604, SHA-256=a5359574fb3f38e4155149ee30e9b8c8dd60c7d79ddbb9ec3e5bb58d52266247
; Original assembly source vox_VoxEngineInternal-87edcdaf697c-001.asm lines 3920-4068
; FUNCTION 0x0086aee8, declared_size=604, range_size=604, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal19LoadDataSourceAsyncEiPviS1_iNS_21VoxSourceLoadingFlagsE
; demangled: vox::VoxEngineInternal::LoadDataSourceAsync(int, void*, int, void*, int, vox::VoxSourceLoadingFlags)
; decoder-mode: arm
0086aee8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0086aeec  40 72 9f e5                                      ldr r7, [pc, #0x240]
0086aef0  40 d0 4d e2                                      sub sp, sp, #0x40
0086aef4  00 00 52 e3                                      cmp r2, #0
0086aef8  07 70 8f e0                                      add r7, pc, r7
0086aefc  00 80 a0 e1                                      mov r8, r0
0086af00  01 50 a0 e1                                      mov r5, r1
0086af04  60 40 9d e5                                      ldr r4, [sp, #0x60]
0086af08  13 00 00 ba                                      blt #0x86af5c
0086af0c  c4 14 91 e5                                      ldr r1, [r1, #0x4c4]
0086af10  01 00 52 e1                                      cmp r2, r1
0086af14  10 00 00 aa                                      bge #0x86af5c
0086af18  02 21 85 e0                                      add r2, r5, r2, lsl #2
0086af1c  44 24 92 e5                                      ldr r2, [r2, #0x444]
0086af20  00 00 52 e3                                      cmp r2, #0
0086af24  0c 00 00 0a                                      beq #0x86af5c
0086af28  03 00 a0 e1                                      mov r0, r3
0086af2c  32 ff 2f e1                                      blx r2
0086af30  00 a0 50 e2                                      subs sl, r0, #0
0086af34  08 00 00 0a                                      beq #0x86af5c
0086af38  00 00 54 e3                                      cmp r4, #0
0086af3c  02 00 00 ba                                      blt #0x86af4c
0086af40  48 35 95 e5                                      ldr r3, [r5, #0x548]
0086af44  03 00 54 e1                                      cmp r4, r3
0086af48  0f 00 00 ba                                      blt #0x86af8c
0086af4c  0a 00 a0 e1                                      mov r0, sl
0086af50  c5 e1 ff eb                                      bl #0x86366c
0086af54  0a 00 a0 e1                                      mov r0, sl
0086af58  39 95 ea eb                                      bl #0x310444
0086af5c  00 10 a0 e3                                      mov r1, #0
0086af60  08 00 a0 e1                                      mov r0, r8
0086af64  00 20 e0 e3                                      mvn r2, #0
0086af68  00 30 e0 e3                                      mvn r3, #0
0086af6c  0c 10 8d e5                                      str r1, [sp, #0xc]
0086af70  00 10 8d e5                                      str r1, [sp]
0086af74  04 10 8d e5                                      str r1, [sp, #4]
0086af78  08 10 8d e5                                      str r1, [sp, #8]
0086af7c  74 f7 ff eb                                      bl #0x868d54
0086af80  08 00 a0 e1                                      mov r0, r8
0086af84  40 d0 8d e2                                      add sp, sp, #0x40
0086af88  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0086af8c  13 4e 84 e2                                      add r4, r4, #0x130
0086af90  02 40 84 e2                                      add r4, r4, #2
0086af94  04 31 95 e7                                      ldr r3, [r5, r4, lsl #2]
0086af98  00 00 53 e3                                      cmp r3, #0
0086af9c  ea ff ff 0a                                      beq #0x86af4c
0086afa0  64 00 9d e5                                      ldr r0, [sp, #0x64]
0086afa4  33 ff 2f e1                                      blx r3
0086afa8  00 90 50 e2                                      subs sb, r0, #0
0086afac  e6 ff ff 0a                                      beq #0x86af4c
0086afb0  05 00 a0 e1                                      mov r0, r5
0086afb4  d6 f8 ff eb                                      bl #0x869314
0086afb8  00 20 a0 e1                                      mov r2, r0
0086afbc  01 30 a0 e1                                      mov r3, r1
0086afc0  60 00 a0 e3                                      mov r0, #0x60
0086afc4  00 10 a0 e3                                      mov r1, #0
0086afc8  14 20 8d e5                                      str r2, [sp, #0x14]
0086afcc  10 30 8d e5                                      str r3, [sp, #0x10]
0086afd0  9c 95 ea eb                                      bl #0x310648
0086afd4  5c 11 9f e5                                      ldr r1, [pc, #0x15c]
0086afd8  14 20 9d e5                                      ldr r2, [sp, #0x14]
0086afdc  10 30 9d e5                                      ldr r3, [sp, #0x10]
0086afe0  01 10 97 e7                                      ldr r1, [r7, r1]
0086afe4  00 40 a0 e1                                      mov r4, r0
0086afe8  00 60 a0 e3                                      mov r6, #0
0086afec  08 10 81 e2                                      add r1, r1, #8
0086aff0  f8 20 c0 e1                                      strd r2, r3, [r0, #8]
0086aff4  10 60 80 e5                                      str r6, [r0, #0x10]
0086aff8  00 10 84 e5                                      str r1, [r4]
0086affc  18 00 80 e2                                      add r0, r0, #0x18
0086b000  72 a1 00 eb                                      bl #0x8935d0
0086b004  30 31 9f e5                                      ldr r3, [pc, #0x130]
0086b008  bc 06 dd e1                                      ldrh r0, [sp, #0x6c]
0086b00c  40 20 84 e2                                      add r2, r4, #0x40
0086b010  03 30 97 e7                                      ldr r3, [r7, r3]
0086b014  00 10 e0 e3                                      mvn r1, #0
0086b018  08 30 83 e2                                      add r3, r3, #8
0086b01c  00 30 84 e5                                      str r3, [r4]
0086b020  68 30 9d e5                                      ldr r3, [sp, #0x68]
0086b024  38 a0 84 e5                                      str sl, [r4, #0x38]
0086b028  44 20 84 e5                                      str r2, [r4, #0x44]
0086b02c  1c 30 84 e5                                      str r3, [r4, #0x1c]
0086b030  03 30 a0 e3                                      mov r3, #3
0086b034  48 10 84 e5                                      str r1, [r4, #0x48]
0086b038  50 30 84 e5                                      str r3, [r4, #0x50]
0086b03c  54 00 84 e5                                      str r0, [r4, #0x54]
0086b040  24 10 84 e5                                      str r1, [r4, #0x24]
0086b044  40 20 84 e5                                      str r2, [r4, #0x40]
0086b048  3c 90 84 e5                                      str sb, [r4, #0x3c]
0086b04c  20 60 84 e5                                      str r6, [r4, #0x20]
0086b050  28 60 84 e5                                      str r6, [r4, #0x28]
0086b054  2c 60 84 e5                                      str r6, [r4, #0x2c]
0086b058  30 60 84 e5                                      str r6, [r4, #0x30]
0086b05c  34 60 84 e5                                      str r6, [r4, #0x34]
0086b060  4c 60 c4 e5                                      strb r6, [r4, #0x4c]
0086b064  4d 60 c4 e5                                      strb r6, [r4, #0x4d]
0086b068  58 00 84 e2                                      add r0, r4, #0x58
0086b06c  57 a1 00 eb                                      bl #0x8935d0
0086b070  d8 20 c4 e1                                      ldrd r2, r3, [r4, #8]
0086b074  90 15 95 e5                                      ldr r1, [r5, #0x590]
0086b078  c0 00 9f e5                                      ldr r0, [pc, #0xc0]
0086b07c  18 a0 8d e2                                      add sl, sp, #0x18
0086b080  14 10 84 e5                                      str r1, [r4, #0x14]
0086b084  90 15 95 e5                                      ldr r1, [r5, #0x590]
0086b088  00 e0 97 e7                                      ldr lr, [r7, r0]
0086b08c  60 70 85 e2                                      add r7, r5, #0x60
0086b090  55 0f 81 e2                                      add r0, r1, #0x154
0086b094  00 c1 95 e7                                      ldr ip, [r5, r0, lsl #2]
0086b098  0a 00 a0 e1                                      mov r0, sl
0086b09c  00 e0 8d e5                                      str lr, [sp]
0086b0a0  08 c0 8d e5                                      str ip, [sp, #8]
0086b0a4  0c 10 8d e5                                      str r1, [sp, #0xc]
0086b0a8  04 40 8d e5                                      str r4, [sp, #4]
0086b0ac  28 f7 ff eb                                      bl #0x868d54
0086b0b0  90 35 95 e5                                      ldr r3, [r5, #0x590]
0086b0b4  07 00 a0 e1                                      mov r0, r7
0086b0b8  01 30 83 e2                                      add r3, r3, #1
0086b0bc  0f 30 03 e2                                      and r3, r3, #0xf
0086b0c0  90 35 85 e5                                      str r3, [r5, #0x590]
0086b0c4  f8 a0 00 eb                                      bl #0x8934ac
0086b0c8  04 10 a0 e1                                      mov r1, r4
0086b0cc  28 00 85 e2                                      add r0, r5, #0x28
0086b0d0  07 e6 ff eb                                      bl #0x8648f4
0086b0d4  07 00 a0 e1                                      mov r0, r7
0086b0d8  74 70 85 e2                                      add r7, r5, #0x74
0086b0dc  e7 a0 00 eb                                      bl #0x893480
0086b0e0  07 00 a0 e1                                      mov r0, r7
0086b0e4  e4 a0 00 eb                                      bl #0x89347c
0086b0e8  01 30 a0 e3                                      mov r3, #1
0086b0ec  06 10 a0 e1                                      mov r1, r6
0086b0f0  4c 30 c4 e5                                      strb r3, [r4, #0x4c]
0086b0f4  0c 00 a0 e3                                      mov r0, #0xc
0086b0f8  52 95 ea eb                                      bl #0x310648
0086b0fc  08 40 80 e5                                      str r4, [r0, #8]
0086b100  70 30 95 e5                                      ldr r3, [r5, #0x70]
0086b104  6c 20 85 e2                                      add r2, r5, #0x6c
0086b108  0c 00 80 e8                                      stm r0, {r2, r3}
0086b10c  00 00 83 e5                                      str r0, [r3]
0086b110  70 00 85 e5                                      str r0, [r5, #0x70]
0086b114  07 00 a0 e1                                      mov r0, r7
0086b118  d6 a0 00 eb                                      bl #0x893478
0086b11c  08 00 a0 e1                                      mov r0, r8
0086b120  0a 10 a0 e1                                      mov r1, sl
0086b124  54 f7 ff eb                                      bl #0x868e7c
0086b128  0a 00 a0 e1                                      mov r0, sl
0086b12c  bd fe ff eb                                      bl #0x86ac28
0086b130  92 ff ff ea                                      b #0x86af80
; mapping-symbol data/literal pool
0086b134  98 9b 12 00 34 47 00 00 f0 17 00 00 98 38 00 00  .byte 0x98, 0x9b, 0x12, 0x00, 0x34, 0x47, 0x00, 0x00, 0xf0, 0x17, 0x00, 0x00, 0x98, 0x38, 0x00, 0x00


; PACKAGE FUNCTION engine_load_source_sync
; ELF VA 0x0086b144, range_size=732, SHA-256=b2a23c2be622b7c15acb48530c93798f75d7856f370231af3820a992f46c4da2
; Original assembly source vox_VoxEngineInternal-87edcdaf697c-001.asm lines 4075-4255
; FUNCTION 0x0086b144, declared_size=732, range_size=732, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal14LoadDataSourceEiPviS1_i
; demangled: vox::VoxEngineInternal::LoadDataSource(int, void*, int, void*, int)
; decoder-mode: arm
0086b144  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0086b148  c0 62 9f e5                                      ldr r6, [pc, #0x2c0]
0086b14c  54 d0 4d e2                                      sub sp, sp, #0x54
0086b150  00 00 52 e3                                      cmp r2, #0
0086b154  06 60 8f e0                                      add r6, pc, r6
0086b158  00 70 a0 e1                                      mov r7, r0
0086b15c  01 40 a0 e1                                      mov r4, r1
0086b160  78 50 9d e5                                      ldr r5, [sp, #0x78]
0086b164  13 00 00 ba                                      blt #0x86b1b8
0086b168  c4 14 91 e5                                      ldr r1, [r1, #0x4c4]
0086b16c  01 00 52 e1                                      cmp r2, r1
0086b170  10 00 00 aa                                      bge #0x86b1b8
0086b174  02 21 84 e0                                      add r2, r4, r2, lsl #2
0086b178  44 24 92 e5                                      ldr r2, [r2, #0x444]
0086b17c  00 00 52 e3                                      cmp r2, #0
0086b180  0c 00 00 0a                                      beq #0x86b1b8
0086b184  03 00 a0 e1                                      mov r0, r3
0086b188  32 ff 2f e1                                      blx r2
0086b18c  00 80 50 e2                                      subs r8, r0, #0
0086b190  08 00 00 0a                                      beq #0x86b1b8
0086b194  00 00 55 e3                                      cmp r5, #0
0086b198  02 00 00 ba                                      blt #0x86b1a8
0086b19c  48 35 94 e5                                      ldr r3, [r4, #0x548]
0086b1a0  03 00 55 e1                                      cmp r5, r3
0086b1a4  0f 00 00 ba                                      blt #0x86b1e8
0086b1a8  08 00 a0 e1                                      mov r0, r8
0086b1ac  2e e1 ff eb                                      bl #0x86366c
0086b1b0  08 00 a0 e1                                      mov r0, r8
0086b1b4  a2 94 ea eb                                      bl #0x310444
0086b1b8  00 10 a0 e3                                      mov r1, #0
0086b1bc  07 00 a0 e1                                      mov r0, r7
0086b1c0  00 20 e0 e3                                      mvn r2, #0
0086b1c4  00 30 e0 e3                                      mvn r3, #0
0086b1c8  0c 10 8d e5                                      str r1, [sp, #0xc]
0086b1cc  00 10 8d e5                                      str r1, [sp]
0086b1d0  04 10 8d e5                                      str r1, [sp, #4]
0086b1d4  08 10 8d e5                                      str r1, [sp, #8]
0086b1d8  dd f6 ff eb                                      bl #0x868d54
0086b1dc  07 00 a0 e1                                      mov r0, r7
0086b1e0  54 d0 8d e2                                      add sp, sp, #0x54
0086b1e4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0086b1e8  13 5e 85 e2                                      add r5, r5, #0x130
0086b1ec  02 50 85 e2                                      add r5, r5, #2
0086b1f0  05 31 94 e7                                      ldr r3, [r4, r5, lsl #2]
0086b1f4  00 00 53 e3                                      cmp r3, #0
0086b1f8  ea ff ff 0a                                      beq #0x86b1a8
0086b1fc  7c 00 9d e5                                      ldr r0, [sp, #0x7c]
0086b200  33 ff 2f e1                                      blx r3
0086b204  00 a0 50 e2                                      subs sl, r0, #0
0086b208  e6 ff ff 0a                                      beq #0x86b1a8
0086b20c  00 30 98 e5                                      ldr r3, [r8]
0086b210  08 00 a0 e1                                      mov r0, r8
0086b214  0f e0 a0 e1                                      mov lr, pc
0086b218  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0086b21c  00 90 50 e2                                      subs sb, r0, #0
0086b220  6f 00 00 0a                                      beq #0x86b3e4
0086b224  00 30 9a e5                                      ldr r3, [sl]
0086b228  0a 00 a0 e1                                      mov r0, sl
0086b22c  09 10 a0 e1                                      mov r1, sb
0086b230  0f e0 a0 e1                                      mov lr, pc
0086b234  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0086b238  00 30 50 e2                                      subs r3, r0, #0
0086b23c  63 00 00 0a                                      beq #0x86b3d0
0086b240  10 c0 93 e5                                      ldr ip, [r3, #0x10]
0086b244  04 b0 93 e5                                      ldr fp, [r3, #4]
0086b248  00 20 9a e5                                      ldr r2, [sl]
0086b24c  14 c0 8d e5                                      str ip, [sp, #0x14]
0086b250  0c c0 93 e5                                      ldr ip, [r3, #0xc]
0086b254  03 10 a0 e1                                      mov r1, r3
0086b258  0a 00 a0 e1                                      mov r0, sl
0086b25c  18 c0 8d e5                                      str ip, [sp, #0x18]
0086b260  08 30 93 e5                                      ldr r3, [r3, #8]
0086b264  1c 30 8d e5                                      str r3, [sp, #0x1c]
0086b268  0f e0 a0 e1                                      mov lr, pc
0086b26c  14 f0 92 e5                                      ldr pc, [r2, #0x14]
0086b270  00 00 5b e3                                      cmp fp, #0
0086b274  55 00 00 da                                      ble #0x86b3d0
0086b278  04 00 a0 e1                                      mov r0, r4
0086b27c  24 f8 ff eb                                      bl #0x869314
0086b280  f0 02 cd e1                                      strd r0, r1, [sp, #0x20]
0086b284  00 10 a0 e3                                      mov r1, #0
0086b288  60 00 a0 e3                                      mov r0, #0x60
0086b28c  ed 94 ea eb                                      bl #0x310648
0086b290  7c 21 9f e5                                      ldr r2, [pc, #0x17c]
0086b294  00 50 a0 e1                                      mov r5, r0
0086b298  00 30 a0 e3                                      mov r3, #0
0086b29c  02 20 96 e7                                      ldr r2, [r6, r2]
0086b2a0  d0 02 cd e1                                      ldrd r0, r1, [sp, #0x20]
0086b2a4  10 30 85 e5                                      str r3, [r5, #0x10]
0086b2a8  08 20 82 e2                                      add r2, r2, #8
0086b2ac  f8 00 c5 e1                                      strd r0, r1, [r5, #8]
0086b2b0  00 20 85 e5                                      str r2, [r5]
0086b2b4  18 00 85 e2                                      add r0, r5, #0x18
0086b2b8  10 30 8d e5                                      str r3, [sp, #0x10]
0086b2bc  c3 a0 00 eb                                      bl #0x8935d0
0086b2c0  80 c0 9d e5                                      ldr ip, [sp, #0x80]
0086b2c4  4c 21 9f e5                                      ldr r2, [pc, #0x14c]
0086b2c8  40 10 85 e2                                      add r1, r5, #0x40
0086b2cc  1c c0 85 e5                                      str ip, [r5, #0x1c]
0086b2d0  02 20 96 e7                                      ldr r2, [r6, r2]
0086b2d4  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0086b2d8  00 00 e0 e3                                      mvn r0, #0
0086b2dc  08 20 82 e2                                      add r2, r2, #8
0086b2e0  34 c0 85 e5                                      str ip, [r5, #0x34]
0086b2e4  00 20 85 e5                                      str r2, [r5]
0086b2e8  18 20 9d e5                                      ldr r2, [sp, #0x18]
0086b2ec  30 20 85 e5                                      str r2, [r5, #0x30]
0086b2f0  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
0086b2f4  44 10 85 e5                                      str r1, [r5, #0x44]
0086b2f8  48 00 85 e5                                      str r0, [r5, #0x48]
0086b2fc  2c c0 85 e5                                      str ip, [r5, #0x2c]
0086b300  28 b0 85 e5                                      str fp, [r5, #0x28]
0086b304  10 30 9d e5                                      ldr r3, [sp, #0x10]
0086b308  24 00 85 e5                                      str r0, [r5, #0x24]
0086b30c  40 10 85 e5                                      str r1, [r5, #0x40]
0086b310  50 30 85 e5                                      str r3, [r5, #0x50]
0086b314  20 30 85 e5                                      str r3, [r5, #0x20]
0086b318  4c 30 c5 e5                                      strb r3, [r5, #0x4c]
0086b31c  4d 30 c5 e5                                      strb r3, [r5, #0x4d]
0086b320  38 80 85 e5                                      str r8, [r5, #0x38]
0086b324  3c a0 85 e5                                      str sl, [r5, #0x3c]
0086b328  58 00 85 e2                                      add r0, r5, #0x58
0086b32c  a7 a0 00 eb                                      bl #0x8935d0
0086b330  09 10 a0 e1                                      mov r1, sb
0086b334  00 30 98 e5                                      ldr r3, [r8]
0086b338  08 00 a0 e1                                      mov r0, r8
0086b33c  0f e0 a0 e1                                      mov lr, pc
0086b340  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0086b344  00 00 55 e3                                      cmp r5, #0
0086b348  25 00 00 0a                                      beq #0x86b3e4
0086b34c  90 35 94 e5                                      ldr r3, [r4, #0x590]
0086b350  28 80 8d e2                                      add r8, sp, #0x28
0086b354  14 30 85 e5                                      str r3, [r5, #0x14]
0086b358  90 15 94 e5                                      ldr r1, [r4, #0x590]
0086b35c  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
0086b360  55 0f 81 e2                                      add r0, r1, #0x154
0086b364  00 c1 94 e7                                      ldr ip, [r4, r0, lsl #2]
0086b368  03 e0 96 e7                                      ldr lr, [r6, r3]
0086b36c  08 00 a0 e1                                      mov r0, r8
0086b370  d8 20 c5 e1                                      ldrd r2, r3, [r5, #8]
0086b374  00 e0 8d e5                                      str lr, [sp]
0086b378  08 c0 8d e5                                      str ip, [sp, #8]
0086b37c  0c 10 8d e5                                      str r1, [sp, #0xc]
0086b380  04 50 8d e5                                      str r5, [sp, #4]
0086b384  72 f6 ff eb                                      bl #0x868d54
0086b388  90 35 94 e5                                      ldr r3, [r4, #0x590]
0086b38c  60 60 84 e2                                      add r6, r4, #0x60
0086b390  06 00 a0 e1                                      mov r0, r6
0086b394  01 30 83 e2                                      add r3, r3, #1
0086b398  0f 30 03 e2                                      and r3, r3, #0xf
0086b39c  90 35 84 e5                                      str r3, [r4, #0x590]
0086b3a0  41 a0 00 eb                                      bl #0x8934ac
0086b3a4  05 10 a0 e1                                      mov r1, r5
0086b3a8  28 00 84 e2                                      add r0, r4, #0x28
0086b3ac  50 e5 ff eb                                      bl #0x8648f4
0086b3b0  06 00 a0 e1                                      mov r0, r6
0086b3b4  31 a0 00 eb                                      bl #0x893480
0086b3b8  07 00 a0 e1                                      mov r0, r7
0086b3bc  08 10 a0 e1                                      mov r1, r8
0086b3c0  ad f6 ff eb                                      bl #0x868e7c
0086b3c4  08 00 a0 e1                                      mov r0, r8
0086b3c8  16 fe ff eb                                      bl #0x86ac28
0086b3cc  82 ff ff ea                                      b #0x86b1dc
0086b3d0  09 10 a0 e1                                      mov r1, sb
0086b3d4  00 30 98 e5                                      ldr r3, [r8]
0086b3d8  08 00 a0 e1                                      mov r0, r8
0086b3dc  0f e0 a0 e1                                      mov lr, pc
0086b3e0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0086b3e4  08 00 a0 e1                                      mov r0, r8
0086b3e8  9f e0 ff eb                                      bl #0x86366c
0086b3ec  08 00 a0 e1                                      mov r0, r8
0086b3f0  13 94 ea eb                                      bl #0x310444
0086b3f4  00 30 9a e5                                      ldr r3, [sl]
0086b3f8  0a 00 a0 e1                                      mov r0, sl
0086b3fc  0f e0 a0 e1                                      mov lr, pc
0086b400  00 f0 93 e5                                      ldr pc, [r3]
0086b404  0a 00 a0 e1                                      mov r0, sl
0086b408  0d 94 ea eb                                      bl #0x310444
0086b40c  69 ff ff ea                                      b #0x86b1b8
; mapping-symbol data/literal pool
0086b410  3c 99 12 00 34 47 00 00 f0 17 00 00 98 38 00 00  .byte 0x3c, 0x99, 0x12, 0x00, 0x34, 0x47, 0x00, 0x00, 0xf0, 0x17, 0x00, 0x00, 0x98, 0x38, 0x00, 0x00


; PACKAGE FUNCTION factory_stream_c_file
; ELF VA 0x00888f98, range_size=40, SHA-256=23b8894a833a2a8f4f4baa7a9a5a12024f2ede745f3554731660cedecadca0e2
; Original assembly source vox-b675469b940b-001.asm lines 91-100
; FUNCTION 0x00888f98, declared_size=40, range_size=40, mode=arm
; class-group: vox
; alias: _ZN3vox18StreamCFileFactoryEPv
; demangled: vox::StreamCFileFactory(void*)
; decoder-mode: arm
00888f98  70 40 2d e9                                      push {r4, r5, r6, lr}
00888f9c  00 10 a0 e3                                      mov r1, #0
00888fa0  00 50 a0 e1                                      mov r5, r0
00888fa4  24 00 a0 e3                                      mov r0, #0x24
00888fa8  a6 1d ea eb                                      bl #0x310648
00888fac  05 10 a0 e1                                      mov r1, r5
00888fb0  00 40 a0 e1                                      mov r4, r0
00888fb4  d7 ff ff eb                                      bl #0x888f18
00888fb8  04 00 a0 e1                                      mov r0, r4
00888fbc  70 80 bd e8                                      pop {r4, r5, r6, pc}


; PACKAGE FUNCTION factory_stream_memory
; ELF VA 0x008891dc, range_size=40, SHA-256=b69ee93a8e6e8875c19ce2a8f50770aa2398e82cbe02e5bf7326e5fc691c2e1f
; Original assembly source vox-b675469b940b-001.asm lines 107-116
; FUNCTION 0x008891dc, declared_size=40, range_size=40, mode=arm
; class-group: vox
; alias: _ZN3vox25StreamMemoryBufferFactoryEPv
; demangled: vox::StreamMemoryBufferFactory(void*)
; decoder-mode: arm
008891dc  70 40 2d e9                                      push {r4, r5, r6, lr}
008891e0  00 10 a0 e3                                      mov r1, #0
008891e4  00 50 a0 e1                                      mov r5, r0
008891e8  10 00 a0 e3                                      mov r0, #0x10
008891ec  15 1d ea eb                                      bl #0x310648
008891f0  05 10 a0 e1                                      mov r1, r5
008891f4  00 40 a0 e1                                      mov r4, r0
008891f8  cb ff ff eb                                      bl #0x88912c
008891fc  04 00 a0 e1                                      mov r0, r4
00889200  70 80 bd e8                                      pop {r4, r5, r6, pc}


; PACKAGE FUNCTION factory_decoder_raw
; ELF VA 0x00874e2c, range_size=40, SHA-256=3de8864244fe4cd128260ddf64854156643da0cc04966e83d57d64408ffe48fd
; Original assembly source vox-b675469b940b-001.asm lines 54-63
; FUNCTION 0x00874e2c, declared_size=40, range_size=40, mode=arm
; class-group: vox
; alias: _ZN3vox17DecoderRawFactoryEPv
; demangled: vox::DecoderRawFactory(void*)
; decoder-mode: arm
00874e2c  70 40 2d e9                                      push {r4, r5, r6, lr}
00874e30  00 10 a0 e3                                      mov r1, #0
00874e34  00 50 a0 e1                                      mov r5, r0
00874e38  14 00 a0 e3                                      mov r0, #0x14
00874e3c  01 6e ea eb                                      bl #0x310648
00874e40  05 10 a0 e1                                      mov r1, r5
00874e44  00 40 a0 e1                                      mov r4, r0
00874e48  05 ff ff eb                                      bl #0x874a64
00874e4c  04 00 a0 e1                                      mov r0, r4
00874e50  70 80 bd e8                                      pop {r4, r5, r6, pc}


; PACKAGE FUNCTION factory_decoder_wav
; ELF VA 0x008709b8, range_size=32, SHA-256=2edb14acbd8a5d014b39b2cbc2ed760062d7bd80afce5c12427d8e1f0c9e80af
; Original assembly source vox-b675469b940b-001.asm lines 26-33
; FUNCTION 0x008709b8, declared_size=32, range_size=32, mode=arm
; class-group: vox
; alias: _ZN3vox19DecoderMSWavFactoryEPv
; demangled: vox::DecoderMSWavFactory(void*)
; decoder-mode: arm
008709b8  10 40 2d e9                                      push {r4, lr}
008709bc  00 10 a0 e3                                      mov r1, #0
008709c0  44 00 a0 e3                                      mov r0, #0x44
008709c4  1f 7f ea eb                                      bl #0x310648
008709c8  00 40 a0 e1                                      mov r4, r0
008709cc  dd fe ff eb                                      bl #0x870548
008709d0  04 00 a0 e1                                      mov r0, r4
008709d4  10 80 bd e8                                      pop {r4, pc}


; PACKAGE FUNCTION factory_decoder_vorbis
; ELF VA 0x008753d8, range_size=60, SHA-256=64bb953a2501eeb4e79eae85dbfa9ca3db6a327cf6d70a632c0f9eedd1adbc99
; Original assembly source vox-b675469b940b-001.asm lines 70-84
; FUNCTION 0x008753d8, declared_size=60, range_size=60, mode=arm
; class-group: vox
; alias: _ZN3vox23DecoderStbVorbisFactoryEPv
; demangled: vox::DecoderStbVorbisFactory(void*)
; decoder-mode: arm
008753d8  10 40 2d e9                                      push {r4, lr}
008753dc  00 10 a0 e3                                      mov r1, #0
008753e0  0c 00 a0 e3                                      mov r0, #0xc
008753e4  97 6c ea eb                                      bl #0x310648
008753e8  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
008753ec  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
008753f0  00 10 a0 e3                                      mov r1, #0
008753f4  04 40 8f e0                                      add r4, pc, r4
008753f8  03 30 94 e7                                      ldr r3, [r4, r3]
008753fc  04 10 80 e5                                      str r1, [r0, #4]
00875400  08 30 83 e2                                      add r3, r3, #8
00875404  00 30 80 e5                                      str r3, [r0]
00875408  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0087540c  9c f6 11 00 c4 07 00 00                          .byte 0x9c, 0xf6, 0x11, 0x00, 0xc4, 0x07, 0x00, 0x00


; PACKAGE FUNCTION factory_decoder_mpc8
; ELF VA 0x008704dc, range_size=40, SHA-256=9123535df06df8d1a264e22eee810b10508c760f97d46a4a5f6c6cf9f1af4f29
; Original assembly source vox-b675469b940b-001.asm lines 10-19
; FUNCTION 0x008704dc, declared_size=40, range_size=40, mode=arm
; class-group: vox
; alias: _ZN3vox18DecoderMPC8FactoryEPv
; demangled: vox::DecoderMPC8Factory(void*)
; decoder-mode: arm
008704dc  70 40 2d e9                                      push {r4, r5, r6, lr}
008704e0  00 10 a0 e3                                      mov r1, #0
008704e4  00 50 a0 e1                                      mov r5, r0
008704e8  08 00 a0 e3                                      mov r0, #8
008704ec  55 80 ea eb                                      bl #0x310648
008704f0  05 10 a0 e1                                      mov r1, r5
008704f4  00 40 a0 e1                                      mov r4, r0
008704f8  ec fd ff eb                                      bl #0x86fcb0
008704fc  04 00 a0 e1                                      mov r0, r4
00870500  70 80 bd e8                                      pop {r4, r5, r6, pc}


; PACKAGE FUNCTION factory_decoder_native
; ELF VA 0x00872b78, range_size=32, SHA-256=b48f880c946e5c8c1b2f5a161c6b58cc73bff6a25acdaf2f382dba6636fadab2
; Original assembly source vox-b675469b940b-001.asm lines 40-47
; FUNCTION 0x00872b78, declared_size=32, range_size=32, mode=arm
; class-group: vox
; alias: _ZN3vox20DecoderNativeFactoryEPv
; demangled: vox::DecoderNativeFactory(void*)
; decoder-mode: arm
00872b78  10 40 2d e9                                      push {r4, lr}
00872b7c  00 10 a0 e3                                      mov r1, #0
00872b80  8c 00 a0 e3                                      mov r0, #0x8c
00872b84  af 76 ea eb                                      bl #0x310648
00872b88  00 40 a0 e1                                      mov r4, r0
00872b8c  cf ff ff eb                                      bl #0x872ad0
00872b90  04 00 a0 e1                                      mov r0, r4
00872b94  10 80 bd e8                                      pop {r4, pc}


; PACKAGE FUNCTION raw_decode_ref
; ELF VA 0x00874b84, range_size=192, SHA-256=17b3fde5a4bf552631b3ebba7b9d525223b9a7fe06dbebad797521d43b039161
; Original assembly source vox_DecoderRawCursor-22c58dafbacf-001.asm lines 96-143
; FUNCTION 0x00874b84, declared_size=192, range_size=192, mode=arm
; class-group: vox::DecoderRawCursor
; alias: _ZN3vox16DecoderRawCursor9DecodeRefERPvi
; demangled: vox::DecoderRawCursor::DecodeRef(void*&, int)
; decoder-mode: arm
00874b84  70 40 2d e9                                      push {r4, r5, r6, lr}
00874b88  18 30 90 e5                                      ldr r3, [r0, #0x18]
00874b8c  00 40 a0 e1                                      mov r4, r0
00874b90  01 60 a0 e1                                      mov r6, r1
00874b94  03 00 a0 e1                                      mov r0, r3
00874b98  00 30 93 e5                                      ldr r3, [r3]
00874b9c  02 50 a0 e1                                      mov r5, r2
00874ba0  0f e0 a0 e1                                      mov lr, pc
00874ba4  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00874ba8  00 00 50 e3                                      cmp r0, #0
00874bac  0c 00 00 0a                                      beq #0x874be4
00874bb0  18 30 94 e5                                      ldr r3, [r4, #0x18]
00874bb4  05 20 a0 e1                                      mov r2, r5
00874bb8  06 10 a0 e1                                      mov r1, r6
00874bbc  03 00 a0 e1                                      mov r0, r3
00874bc0  00 30 93 e5                                      ldr r3, [r3]
00874bc4  0f e0 a0 e1                                      mov lr, pc
00874bc8  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00874bcc  1c 30 d4 e5                                      ldrb r3, [r4, #0x1c]
00874bd0  00 50 a0 e1                                      mov r5, r0
00874bd4  00 00 53 e3                                      cmp r3, #0
00874bd8  0a 00 00 1a                                      bne #0x874c08
00874bdc  05 00 a0 e1                                      mov r0, r5
00874be0  70 80 bd e8                                      pop {r4, r5, r6, pc}
00874be4  05 20 a0 e1                                      mov r2, r5
00874be8  04 00 a0 e1                                      mov r0, r4
00874bec  00 10 96 e5                                      ldr r1, [r6]
00874bf0  00 30 94 e5                                      ldr r3, [r4]
00874bf4  0f e0 a0 e1                                      mov lr, pc
00874bf8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00874bfc  00 50 a0 e1                                      mov r5, r0
00874c00  05 00 a0 e1                                      mov r0, r5
00874c04  70 80 bd e8                                      pop {r4, r5, r6, pc}
00874c08  18 30 94 e5                                      ldr r3, [r4, #0x18]
00874c0c  03 00 a0 e1                                      mov r0, r3
00874c10  00 30 93 e5                                      ldr r3, [r3]
00874c14  0f e0 a0 e1                                      mov lr, pc
00874c18  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00874c1c  00 00 50 e3                                      cmp r0, #0
00874c20  ed ff ff 0a                                      beq #0x874bdc
00874c24  18 30 94 e5                                      ldr r3, [r4, #0x18]
00874c28  00 10 a0 e3                                      mov r1, #0
00874c2c  01 20 a0 e1                                      mov r2, r1
00874c30  03 00 a0 e1                                      mov r0, r3
00874c34  00 30 93 e5                                      ldr r3, [r3]
00874c38  0f e0 a0 e1                                      mov lr, pc
00874c3c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00874c40  e5 ff ff ea                                      b #0x874bdc


; PACKAGE FUNCTION raw_decode_copy
; ELF VA 0x00874c44, range_size=172, SHA-256=cc356e9f8ef1462499d2b2f30e3d4b449444a72585b04d29848a3a6df3b12423
; Original assembly source vox_DecoderRawCursor-22c58dafbacf-001.asm lines 150-192
; FUNCTION 0x00874c44, declared_size=172, range_size=172, mode=arm
; class-group: vox::DecoderRawCursor
; alias: _ZN3vox16DecoderRawCursor6DecodeEPvi
; demangled: vox::DecoderRawCursor::Decode(void*, int)
; decoder-mode: arm
00874c44  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00874c48  00 70 52 e2                                      subs r7, r2, #0
00874c4c  00 60 a0 e1                                      mov r6, r0
00874c50  01 80 a0 e1                                      mov r8, r1
00874c54  00 40 a0 d3                                      movle r4, #0
00874c58  22 00 00 da                                      ble #0x874ce8
00874c5c  07 50 a0 e1                                      mov r5, r7
00874c60  00 40 a0 e3                                      mov r4, #0
00874c64  01 00 00 ea                                      b #0x874c70
00874c68  04 00 57 e1                                      cmp r7, r4
00874c6c  1d 00 00 da                                      ble #0x874ce8
00874c70  18 30 96 e5                                      ldr r3, [r6, #0x18]
00874c74  04 10 88 e0                                      add r1, r8, r4
00874c78  05 20 a0 e1                                      mov r2, r5
00874c7c  03 00 a0 e1                                      mov r0, r3
00874c80  00 30 93 e5                                      ldr r3, [r3]
00874c84  0f e0 a0 e1                                      mov lr, pc
00874c88  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00874c8c  00 00 50 e3                                      cmp r0, #0
00874c90  14 00 00 da                                      ble #0x874ce8
00874c94  1c 30 d6 e5                                      ldrb r3, [r6, #0x1c]
00874c98  00 40 84 e0                                      add r4, r4, r0
00874c9c  05 50 60 e0                                      rsb r5, r0, r5
00874ca0  00 00 53 e3                                      cmp r3, #0
00874ca4  ef ff ff 0a                                      beq #0x874c68
00874ca8  18 30 96 e5                                      ldr r3, [r6, #0x18]
00874cac  03 00 a0 e1                                      mov r0, r3
00874cb0  00 30 93 e5                                      ldr r3, [r3]
00874cb4  0f e0 a0 e1                                      mov lr, pc
00874cb8  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00874cbc  00 00 50 e3                                      cmp r0, #0
00874cc0  e8 ff ff 0a                                      beq #0x874c68
00874cc4  18 30 96 e5                                      ldr r3, [r6, #0x18]
00874cc8  00 10 a0 e3                                      mov r1, #0
00874ccc  01 20 a0 e1                                      mov r2, r1
00874cd0  03 00 a0 e1                                      mov r0, r3
00874cd4  00 30 93 e5                                      ldr r3, [r3]
00874cd8  0f e0 a0 e1                                      mov lr, pc
00874cdc  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00874ce0  00 00 50 e3                                      cmp r0, #0
00874ce4  df ff ff 0a                                      beq #0x874c68
00874ce8  04 00 a0 e1                                      mov r0, r4
00874cec  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}


; PACKAGE FUNCTION wav_parse_chunks
; ELF VA 0x00870610, range_size=936, SHA-256=6db3c5b5905b71fe4facb7f5b79991383eff03dc8af695610045993394faa29e
; Original assembly source vox_DecoderMSWavCursor-19d5e4f075fa-001.asm lines 71-302
; FUNCTION 0x00870610, declared_size=936, range_size=936, mode=arm
; class-group: vox::DecoderMSWavCursor
; alias: _ZN3vox18DecoderMSWavCursor9ParseFileEv
; demangled: vox::DecoderMSWavCursor::ParseFile()
; decoder-mode: arm
00870610  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00870614  18 30 90 e5                                      ldr r3, [r0, #0x18]
00870618  1c d0 4d e2                                      sub sp, sp, #0x1c
0087061c  00 40 a0 e1                                      mov r4, r0
00870620  00 00 53 e3                                      cmp r3, #0
00870624  dd 00 00 0a                                      beq #0x8709a0
00870628  03 00 a0 e1                                      mov r0, r3
0087062c  00 30 93 e5                                      ldr r3, [r3]
00870630  0f e0 a0 e1                                      mov lr, pc
00870634  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00870638  0c 00 8d e5                                      str r0, [sp, #0xc]
0087063c  18 30 94 e5                                      ldr r3, [r4, #0x18]
00870640  00 10 a0 e3                                      mov r1, #0
00870644  01 20 a0 e1                                      mov r2, r1
00870648  03 00 a0 e1                                      mov r0, r3
0087064c  00 30 93 e5                                      ldr r3, [r3]
00870650  0f e0 a0 e1                                      mov lr, pc
00870654  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00870658  48 33 9f e5                                      ldr r3, [pc, #0x348]
0087065c  48 63 9f e5                                      ldr r6, [pc, #0x348]
00870660  48 83 9f e5                                      ldr r8, [pc, #0x348]
00870664  48 a3 9f e5                                      ldr sl, [pc, #0x348]
00870668  03 30 8f e0                                      add r3, pc, r3
0087066c  06 60 8f e0                                      add r6, pc, r6
00870670  08 80 8f e0                                      add r8, pc, r8
00870674  0a a0 8f e0                                      add sl, pc, sl
00870678  08 30 8d e5                                      str r3, [sp, #8]
0087067c  00 70 a0 e3                                      mov r7, #0
00870680  10 50 8d e2                                      add r5, sp, #0x10
00870684  18 30 94 e5                                      ldr r3, [r4, #0x18]
00870688  03 00 a0 e1                                      mov r0, r3
0087068c  00 30 93 e5                                      ldr r3, [r3]
00870690  0f e0 a0 e1                                      mov lr, pc
00870694  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00870698  00 00 50 e3                                      cmp r0, #0
0087069c  52 00 00 1a                                      bne #0x8707ec
008706a0  18 30 94 e5                                      ldr r3, [r4, #0x18]
008706a4  03 00 a0 e1                                      mov r0, r3
008706a8  00 30 93 e5                                      ldr r3, [r3]
008706ac  0f e0 a0 e1                                      mov lr, pc
008706b0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
008706b4  01 00 10 e3                                      tst r0, #1
008706b8  55 00 00 1a                                      bne #0x870814
008706bc  18 30 94 e5                                      ldr r3, [r4, #0x18]
008706c0  05 10 a0 e1                                      mov r1, r5
008706c4  08 20 a0 e3                                      mov r2, #8
008706c8  03 00 a0 e1                                      mov r0, r3
008706cc  00 30 93 e5                                      ldr r3, [r3]
008706d0  0f e0 a0 e1                                      mov lr, pc
008706d4  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
008706d8  08 00 50 e3                                      cmp r0, #8
008706dc  42 00 00 1a                                      bne #0x8707ec
008706e0  05 00 a0 e1                                      mov r0, r5
008706e4  06 10 a0 e1                                      mov r1, r6
008706e8  04 20 a0 e3                                      mov r2, #4
008706ec  62 79 ea eb                                      bl #0x30ec7c
008706f0  00 00 50 e3                                      cmp r0, #0
008706f4  4e 00 00 0a                                      beq #0x870834
008706f8  05 00 a0 e1                                      mov r0, r5
008706fc  08 10 a0 e1                                      mov r1, r8
00870700  04 20 a0 e3                                      mov r2, #4
00870704  5c 79 ea eb                                      bl #0x30ec7c
00870708  00 00 50 e3                                      cmp r0, #0
0087070c  59 00 00 0a                                      beq #0x870878
00870710  05 00 a0 e1                                      mov r0, r5
00870714  0a 10 a0 e1                                      mov r1, sl
00870718  04 20 a0 e3                                      mov r2, #4
0087071c  56 79 ea eb                                      bl #0x30ec7c
00870720  00 00 50 e3                                      cmp r0, #0
00870724  78 00 00 0a                                      beq #0x87090c
00870728  05 00 a0 e1                                      mov r0, r5
0087072c  08 10 9d e5                                      ldr r1, [sp, #8]
00870730  04 20 a0 e3                                      mov r2, #4
00870734  50 79 ea eb                                      bl #0x30ec7c
00870738  00 00 50 e3                                      cmp r0, #0
0087073c  6a 00 00 1a                                      bne #0x8708ec
00870740  20 00 94 e5                                      ldr r0, [r4, #0x20]
00870744  04 20 a0 e3                                      mov r2, #4
00870748  05 10 a0 e1                                      mov r1, r5
0087074c  24 00 80 e2                                      add r0, r0, #0x24
00870750  b3 75 ea eb                                      bl #0x30de24
00870754  20 30 94 e5                                      ldr r3, [r4, #0x20]
00870758  14 20 9d e5                                      ldr r2, [sp, #0x14]
0087075c  28 20 83 e5                                      str r2, [r3, #0x28]
00870760  20 30 94 e5                                      ldr r3, [r4, #0x20]
00870764  38 90 93 e5                                      ldr sb, [r3, #0x38]
00870768  00 00 59 e3                                      cmp sb, #0
0087076c  77 00 00 0a                                      beq #0x870950
00870770  18 30 94 e5                                      ldr r3, [r4, #0x18]
00870774  03 00 a0 e1                                      mov r0, r3
00870778  00 30 93 e5                                      ldr r3, [r3]
0087077c  0f e0 a0 e1                                      mov lr, pc
00870780  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00870784  20 20 94 e5                                      ldr r2, [r4, #0x20]
00870788  08 30 40 e2                                      sub r3, r0, #8
0087078c  28 20 92 e5                                      ldr r2, [r2, #0x28]
00870790  09 b0 a0 e1                                      mov fp, sb
00870794  08 90 99 e5                                      ldr sb, [sb, #8]
00870798  00 00 59 e3                                      cmp sb, #0
0087079c  fb ff ff 1a                                      bne #0x870790
008707a0  0c 00 a0 e3                                      mov r0, #0xc
008707a4  09 10 a0 e1                                      mov r1, sb
008707a8  0c 00 8d e8                                      stm sp, {r2, r3}
008707ac  a5 7f ea eb                                      bl #0x310648
008707b0  04 30 9d e5                                      ldr r3, [sp, #4]
008707b4  00 30 80 e5                                      str r3, [r0]
008707b8  00 20 9d e5                                      ldr r2, [sp]
008707bc  04 02 80 e9                                      stmib r0, {r2, sb}
008707c0  08 00 8b e5                                      str r0, [fp, #8]
008707c4  20 20 94 e5                                      ldr r2, [r4, #0x20]
008707c8  18 30 94 e5                                      ldr r3, [r4, #0x18]
008707cc  28 10 92 e5                                      ldr r1, [r2, #0x28]
008707d0  01 20 a0 e3                                      mov r2, #1
008707d4  03 00 a0 e1                                      mov r0, r3
008707d8  00 30 93 e5                                      ldr r3, [r3]
008707dc  0f e0 a0 e1                                      mov lr, pc
008707e0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
008707e4  00 00 57 e3                                      cmp r7, #0
008707e8  a5 ff ff 1a                                      bne #0x870684
008707ec  18 30 94 e5                                      ldr r3, [r4, #0x18]
008707f0  0c 10 9d e5                                      ldr r1, [sp, #0xc]
008707f4  00 20 a0 e3                                      mov r2, #0
008707f8  03 00 a0 e1                                      mov r0, r3
008707fc  00 30 93 e5                                      ldr r3, [r3]
00870800  0f e0 a0 e1                                      mov lr, pc
00870804  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00870808  01 00 a0 e3                                      mov r0, #1
0087080c  1c d0 8d e2                                      add sp, sp, #0x1c
00870810  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00870814  18 30 94 e5                                      ldr r3, [r4, #0x18]
00870818  01 10 a0 e3                                      mov r1, #1
0087081c  01 20 a0 e1                                      mov r2, r1
00870820  03 00 a0 e1                                      mov r0, r3
00870824  00 30 93 e5                                      ldr r3, [r3]
00870828  0f e0 a0 e1                                      mov lr, pc
0087082c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00870830  a1 ff ff ea                                      b #0x8706bc
00870834  05 10 a0 e1                                      mov r1, r5
00870838  04 20 a0 e3                                      mov r2, #4
0087083c  20 00 94 e5                                      ldr r0, [r4, #0x20]
00870840  77 75 ea eb                                      bl #0x30de24
00870844  20 30 94 e5                                      ldr r3, [r4, #0x20]
00870848  14 10 9d e5                                      ldr r1, [sp, #0x14]
0087084c  04 20 a0 e3                                      mov r2, #4
00870850  01 70 a0 e3                                      mov r7, #1
00870854  04 10 83 e5                                      str r1, [r3, #4]
00870858  18 30 94 e5                                      ldr r3, [r4, #0x18]
0087085c  20 10 94 e5                                      ldr r1, [r4, #0x20]
00870860  03 00 a0 e1                                      mov r0, r3
00870864  08 10 81 e2                                      add r1, r1, #8
00870868  00 30 93 e5                                      ldr r3, [r3]
0087086c  0f e0 a0 e1                                      mov lr, pc
00870870  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00870874  82 ff ff ea                                      b #0x870684
00870878  20 00 94 e5                                      ldr r0, [r4, #0x20]
0087087c  05 10 a0 e1                                      mov r1, r5
00870880  04 20 a0 e3                                      mov r2, #4
00870884  0c 00 80 e2                                      add r0, r0, #0xc
00870888  65 75 ea eb                                      bl #0x30de24
0087088c  20 30 94 e5                                      ldr r3, [r4, #0x20]
00870890  14 10 9d e5                                      ldr r1, [sp, #0x14]
00870894  10 20 a0 e3                                      mov r2, #0x10
00870898  10 10 83 e5                                      str r1, [r3, #0x10]
0087089c  18 30 94 e5                                      ldr r3, [r4, #0x18]
008708a0  20 10 94 e5                                      ldr r1, [r4, #0x20]
008708a4  03 00 a0 e1                                      mov r0, r3
008708a8  14 10 81 e2                                      add r1, r1, #0x14
008708ac  00 30 93 e5                                      ldr r3, [r3]
008708b0  0f e0 a0 e1                                      mov lr, pc
008708b4  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
008708b8  20 30 94 e5                                      ldr r3, [r4, #0x20]
008708bc  10 10 93 e5                                      ldr r1, [r3, #0x10]
008708c0  08 30 81 e2                                      add r3, r1, #8
008708c4  18 00 53 e3                                      cmp r3, #0x18
008708c8  c5 ff ff 9a                                      bls #0x8707e4
008708cc  18 30 94 e5                                      ldr r3, [r4, #0x18]
008708d0  10 10 41 e2                                      sub r1, r1, #0x10
008708d4  01 20 a0 e3                                      mov r2, #1
008708d8  03 00 a0 e1                                      mov r0, r3
008708dc  00 30 93 e5                                      ldr r3, [r3]
008708e0  0f e0 a0 e1                                      mov lr, pc
008708e4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
008708e8  bd ff ff ea                                      b #0x8707e4
008708ec  18 30 94 e5                                      ldr r3, [r4, #0x18]
008708f0  14 10 9d e5                                      ldr r1, [sp, #0x14]
008708f4  01 20 a0 e3                                      mov r2, #1
008708f8  03 00 a0 e1                                      mov r0, r3
008708fc  00 30 93 e5                                      ldr r3, [r3]
00870900  0f e0 a0 e1                                      mov lr, pc
00870904  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00870908  b5 ff ff ea                                      b #0x8707e4
0087090c  20 00 94 e5                                      ldr r0, [r4, #0x20]
00870910  05 10 a0 e1                                      mov r1, r5
00870914  04 20 a0 e3                                      mov r2, #4
00870918  2c 00 80 e2                                      add r0, r0, #0x2c
0087091c  40 75 ea eb                                      bl #0x30de24
00870920  20 30 94 e5                                      ldr r3, [r4, #0x20]
00870924  14 10 9d e5                                      ldr r1, [sp, #0x14]
00870928  04 20 a0 e3                                      mov r2, #4
0087092c  30 10 83 e5                                      str r1, [r3, #0x30]
00870930  18 30 94 e5                                      ldr r3, [r4, #0x18]
00870934  20 10 94 e5                                      ldr r1, [r4, #0x20]
00870938  03 00 a0 e1                                      mov r0, r3
0087093c  34 10 81 e2                                      add r1, r1, #0x34
00870940  00 30 93 e5                                      ldr r3, [r3]
00870944  0f e0 a0 e1                                      mov lr, pc
00870948  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0087094c  a4 ff ff ea                                      b #0x8707e4
00870950  18 30 94 e5                                      ldr r3, [r4, #0x18]
00870954  03 00 a0 e1                                      mov r0, r3
00870958  00 30 93 e5                                      ldr r3, [r3]
0087095c  0f e0 a0 e1                                      mov lr, pc
00870960  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00870964  09 10 a0 e1                                      mov r1, sb
00870968  00 b0 a0 e1                                      mov fp, r0
0087096c  0c 00 a0 e3                                      mov r0, #0xc
00870970  34 7f ea eb                                      bl #0x310648
00870974  20 30 94 e5                                      ldr r3, [r4, #0x20]
00870978  08 b0 4b e2                                      sub fp, fp, #8
0087097c  28 30 93 e5                                      ldr r3, [r3, #0x28]
00870980  00 b0 80 e5                                      str fp, [r0]
00870984  08 02 80 e9                                      stmib r0, {r3, sb}
00870988  20 30 94 e5                                      ldr r3, [r4, #0x20]
0087098c  38 00 83 e5                                      str r0, [r3, #0x38]
00870990  20 20 94 e5                                      ldr r2, [r4, #0x20]
00870994  38 30 92 e5                                      ldr r3, [r2, #0x38]
00870998  00 00 53 e3                                      cmp r3, #0
0087099c  89 ff ff 1a                                      bne #0x8707c8
008709a0  00 00 a0 e3                                      mov r0, #0
008709a4  98 ff ff ea                                      b #0x87080c
; mapping-symbol data/literal pool
008709a8  f0 24 05 00 ac 08 0a 00 b0 08 0a 00 b4 08 0a 00  .byte 0xf0, 0x24, 0x05, 0x00, 0xac, 0x08, 0x0a, 0x00, 0xb0, 0x08, 0x0a, 0x00, 0xb4, 0x08, 0x0a, 0x00


; PACKAGE FUNCTION wav_constructor_codec_dispatch
; ELF VA 0x00870c98, range_size=416, SHA-256=00b654dfabcdd09c40eb9bc8e17e7bbf0fd88e74882f2c8f48e54ee393d08964
; Original assembly source vox_DecoderMSWavCursor-19d5e4f075fa-001.asm lines 484-585
; FUNCTION 0x00870c98, declared_size=416, range_size=416, mode=arm
; class-group: vox::DecoderMSWavCursor
; alias: _ZN3vox18DecoderMSWavCursorC2EPNS_16DecoderInterfaceEPNS_21StreamCursorInterfaceE
; demangled: vox::DecoderMSWavCursor::DecoderMSWavCursor(vox::DecoderInterface*, vox::StreamCursorInterface*)
; decoder-mode: arm
00870c98  88 31 9f e5                                      ldr r3, [pc, #0x188]
00870c9c  88 c1 9f e5                                      ldr ip, [pc, #0x188]
00870ca0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00870ca4  03 30 8f e0                                      add r3, pc, r3
00870ca8  0c c0 93 e7                                      ldr ip, [r3, ip]
00870cac  00 70 a0 e3                                      mov r7, #0
00870cb0  00 40 a0 e1                                      mov r4, r0
00870cb4  08 c0 8c e2                                      add ip, ip, #8
00870cb8  04 50 81 e2                                      add r5, r1, #4
00870cbc  00 c0 80 e5                                      str ip, [r0]
00870cc0  04 70 80 e5                                      str r7, [r0, #4]
00870cc4  08 70 80 e5                                      str r7, [r0, #8]
00870cc8  0c 70 80 e5                                      str r7, [r0, #0xc]
00870ccc  10 70 80 e5                                      str r7, [r0, #0x10]
00870cd0  14 10 80 e5                                      str r1, [r0, #0x14]
00870cd4  18 20 84 e5                                      str r2, [r4, #0x18]
00870cd8  1c 70 c0 e5                                      strb r7, [r0, #0x1c]
00870cdc  24 70 80 e5                                      str r7, [r0, #0x24]
00870ce0  20 50 80 e5                                      str r5, [r0, #0x20]
00870ce4  02 60 a0 e1                                      mov r6, r2
00870ce8  40 20 d1 e5                                      ldrb r2, [r1, #0x40]
00870cec  07 00 52 e1                                      cmp r2, r7
00870cf0  39 00 00 1a                                      bne #0x870ddc
00870cf4  34 11 9f e5                                      ldr r1, [pc, #0x134]
00870cf8  05 00 a0 e1                                      mov r0, r5
00870cfc  04 20 a0 e3                                      mov r2, #4
00870d00  01 10 8f e0                                      add r1, pc, r1
00870d04  dc 77 ea eb                                      bl #0x30ec7c
00870d08  00 00 50 e3                                      cmp r0, #0
00870d0c  00 00 a0 13                                      movne r0, #0
00870d10  11 00 00 0a                                      beq #0x870d5c
00870d14  b4 31 d5 e1                                      ldrh r3, [r5, #0x14]
00870d18  01 00 53 e3                                      cmp r3, #1
00870d1c  18 00 00 0a                                      beq #0x870d84
00870d20  11 00 53 e3                                      cmp r3, #0x11
00870d24  21 00 00 0a                                      beq #0x870db0
00870d28  24 50 94 e5                                      ldr r5, [r4, #0x24]
00870d2c  00 00 55 e3                                      cmp r5, #0
00870d30  36 00 00 0a                                      beq #0x870e10
00870d34  1c 00 95 e5                                      ldr r0, [r5, #0x1c]
00870d38  18 10 95 e5                                      ldr r1, [r5, #0x18]
00870d3c  14 20 95 e5                                      ldr r2, [r5, #0x14]
00870d40  10 30 95 e5                                      ldr r3, [r5, #0x10]
00870d44  10 00 84 e5                                      str r0, [r4, #0x10]
00870d48  0c 10 84 e5                                      str r1, [r4, #0xc]
00870d4c  08 20 84 e5                                      str r2, [r4, #8]
00870d50  04 30 84 e5                                      str r3, [r4, #4]
00870d54  04 00 a0 e1                                      mov r0, r4
00870d58  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00870d5c  d0 10 9f e5                                      ldr r1, [pc, #0xd0]
00870d60  08 00 85 e2                                      add r0, r5, #8
00870d64  04 20 a0 e3                                      mov r2, #4
00870d68  01 10 8f e0                                      add r1, pc, r1
00870d6c  c2 77 ea eb                                      bl #0x30ec7c
00870d70  b4 31 d5 e1                                      ldrh r3, [r5, #0x14]
00870d74  01 00 70 e2                                      rsbs r0, r0, #1
00870d78  00 00 a0 33                                      movlo r0, #0
00870d7c  01 00 53 e3                                      cmp r3, #1
00870d80  e6 ff ff 1a                                      bne #0x870d20
00870d84  00 00 50 e3                                      cmp r0, #0
00870d88  e6 ff ff 0a                                      beq #0x870d28
00870d8c  00 10 a0 e3                                      mov r1, #0
00870d90  2c 00 a0 e3                                      mov r0, #0x2c
00870d94  2b 7e ea eb                                      bl #0x310648
00870d98  06 10 a0 e1                                      mov r1, r6
00870d9c  00 50 a0 e1                                      mov r5, r0
00870da0  20 20 94 e5                                      ldr r2, [r4, #0x20]
00870da4  ef 14 00 eb                                      bl #0x876168
00870da8  24 50 84 e5                                      str r5, [r4, #0x24]
00870dac  de ff ff ea                                      b #0x870d2c
00870db0  00 00 50 e3                                      cmp r0, #0
00870db4  db ff ff 0a                                      beq #0x870d28
00870db8  00 10 a0 e3                                      mov r1, #0
00870dbc  6c 00 a0 e3                                      mov r0, #0x6c
00870dc0  20 7e ea eb                                      bl #0x310648
00870dc4  06 10 a0 e1                                      mov r1, r6
00870dc8  00 50 a0 e1                                      mov r5, r0
00870dcc  20 20 94 e5                                      ldr r2, [r4, #0x20]
00870dd0  f6 11 00 eb                                      bl #0x8755b0
00870dd4  24 50 84 e5                                      str r5, [r4, #0x24]
00870dd8  d3 ff ff ea                                      b #0x870d2c
00870ddc  0b fe ff eb                                      bl #0x870610
00870de0  00 00 50 e3                                      cmp r0, #0
00870de4  03 00 00 0a                                      beq #0x870df8
00870de8  14 30 94 e5                                      ldr r3, [r4, #0x14]
00870dec  40 70 c3 e5                                      strb r7, [r3, #0x40]
00870df0  20 50 94 e5                                      ldr r5, [r4, #0x20]
00870df4  be ff ff ea                                      b #0x870cf4
00870df8  10 00 84 e5                                      str r0, [r4, #0x10]
00870dfc  04 00 84 e5                                      str r0, [r4, #4]
00870e00  08 00 84 e5                                      str r0, [r4, #8]
00870e04  0c 00 84 e5                                      str r0, [r4, #0xc]
00870e08  04 00 a0 e1                                      mov r0, r4
00870e0c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00870e10  10 50 84 e5                                      str r5, [r4, #0x10]
00870e14  04 50 84 e5                                      str r5, [r4, #4]
00870e18  08 50 84 e5                                      str r5, [r4, #8]
00870e1c  0c 50 84 e5                                      str r5, [r4, #0xc]
00870e20  04 00 a0 e1                                      mov r0, r4
00870e24  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00870e28  ec 3d 12 00 c8 3f 00 00 18 02 0a 00 c8 01 0a 00  .byte 0xec, 0x3d, 0x12, 0x00, 0xc8, 0x3f, 0x00, 0x00, 0x18, 0x02, 0x0a, 0x00, 0xc8, 0x01, 0x0a, 0x00

; PACKAGE FUNCTION wav_pcm_decode
; ELF VA 0x00875fd0, range_size=408, SHA-256=0727c1166d0e56a3c707c6233d53ad41dfcafb2572ca4191dc791fe9d3ab2aba
; Original assembly source vox_VoxMSWavSubDecoderPCM-8207487971b4-001.asm lines 147-248
; FUNCTION 0x00875fd0, declared_size=408, range_size=408, mode=arm
; class-group: vox::VoxMSWavSubDecoderPCM
; alias: _ZN3vox21VoxMSWavSubDecoderPCM6DecodeEPvi
; demangled: vox::VoxMSWavSubDecoderPCM::Decode(void*, int)
; decoder-mode: arm
00875fd0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00875fd4  08 30 90 e5                                      ldr r3, [r0, #8]
00875fd8  20 c0 90 e5                                      ldr ip, [r0, #0x20]
00875fdc  00 40 a0 e1                                      mov r4, r0
00875fe0  28 60 93 e5                                      ldr r6, [r3, #0x28]
00875fe4  01 80 a0 e1                                      mov r8, r1
00875fe8  02 70 a0 e1                                      mov r7, r2
00875fec  06 00 5c e1                                      cmp ip, r6
00875ff0  55 00 00 2a                                      bhs #0x87614c
00875ff4  07 00 a0 e1                                      mov r0, r7
00875ff8  b0 12 d3 e1                                      ldrh r1, [r3, #0x20]
00875ffc  40 62 ea eb                                      bl #0x30e904
00876000  07 70 61 e0                                      rsb r7, r1, r7
00876004  00 00 57 e3                                      cmp r7, #0
00876008  00 50 a0 d3                                      movle r5, #0
0087600c  3c 00 00 da                                      ble #0x876104
00876010  00 50 a0 e3                                      mov r5, #0
00876014  24 00 00 ea                                      b #0x8760ac
00876018  04 30 94 e5                                      ldr r3, [r4, #4]
0087601c  05 10 88 e0                                      add r1, r8, r5
00876020  03 00 a0 e1                                      mov r0, r3
00876024  00 30 93 e5                                      ldr r3, [r3]
00876028  0f e0 a0 e1                                      mov lr, pc
0087602c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00876030  20 90 94 e5                                      ldr sb, [r4, #0x20]
00876034  00 a0 a0 e1                                      mov sl, r0
00876038  00 90 89 e0                                      add sb, sb, r0
0087603c  20 90 84 e5                                      str sb, [r4, #0x20]
00876040  18 30 94 e5                                      ldr r3, [r4, #0x18]
00876044  10 10 94 e5                                      ldr r1, [r4, #0x10]
00876048  0a 00 a0 e1                                      mov r0, sl
0087604c  c3 31 a0 e1                                      asr r3, r3, #3
00876050  91 03 01 e0                                      mul r1, r1, r3
00876054  92 60 ea eb                                      bl #0x30e2a4
00876058  24 30 94 e5                                      ldr r3, [r4, #0x24]
0087605c  06 00 59 e1                                      cmp sb, r6
00876060  0a 50 85 e0                                      add r5, r5, sl
00876064  03 30 80 e0                                      add r3, r0, r3
00876068  24 30 84 e5                                      str r3, [r4, #0x24]
0087606c  1f 00 00 3a                                      blo #0x8760f0
00876070  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
00876074  02 00 53 e1                                      cmp r3, r2
00876078  23 00 00 3a                                      blo #0x87610c
0087607c  28 30 d4 e5                                      ldrb r3, [r4, #0x28]
00876080  00 00 53 e3                                      cmp r3, #0
00876084  1e 00 00 0a                                      beq #0x876104
00876088  00 30 94 e5                                      ldr r3, [r4]
0087608c  04 00 a0 e1                                      mov r0, r4
00876090  00 10 a0 e3                                      mov r1, #0
00876094  0f e0 a0 e1                                      mov lr, pc
00876098  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0087609c  00 00 50 e3                                      cmp r0, #0
008760a0  17 00 00 1a                                      bne #0x876104
008760a4  05 00 57 e1                                      cmp r7, r5
008760a8  15 00 00 da                                      ble #0x876104
008760ac  20 10 94 e5                                      ldr r1, [r4, #0x20]
008760b0  07 20 65 e0                                      rsb r2, r5, r7
008760b4  01 30 82 e0                                      add r3, r2, r1
008760b8  06 00 53 e1                                      cmp r3, r6
008760bc  d5 ff ff 9a                                      bls #0x876018
008760c0  04 30 94 e5                                      ldr r3, [r4, #4]
008760c4  06 20 61 e0                                      rsb r2, r1, r6
008760c8  05 10 88 e0                                      add r1, r8, r5
008760cc  03 00 a0 e1                                      mov r0, r3
008760d0  00 30 93 e5                                      ldr r3, [r3]
008760d4  0f e0 a0 e1                                      mov lr, pc
008760d8  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
008760dc  08 30 94 e5                                      ldr r3, [r4, #8]
008760e0  00 a0 a0 e1                                      mov sl, r0
008760e4  28 90 93 e5                                      ldr sb, [r3, #0x28]
008760e8  20 90 84 e5                                      str sb, [r4, #0x20]
008760ec  d3 ff ff ea                                      b #0x876040
008760f0  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
008760f4  02 00 53 e1                                      cmp r3, r2
008760f8  df ff ff 2a                                      bhs #0x87607c
008760fc  00 00 5a e3                                      cmp sl, #0
00876100  e7 ff ff 1a                                      bne #0x8760a4
00876104  05 00 a0 e1                                      mov r0, r5
00876108  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0087610c  04 00 a0 e1                                      mov r0, r4
00876110  d4 7f 00 eb                                      bl #0x896068
00876114  08 30 94 e5                                      ldr r3, [r4, #8]
00876118  28 10 93 e5                                      ldr r1, [r3, #0x28]
0087611c  00 00 51 e3                                      cmp r1, #0
00876120  df ff ff 1a                                      bne #0x8760a4
00876124  28 30 d4 e5                                      ldrb r3, [r4, #0x28]
00876128  00 00 53 e3                                      cmp r3, #0
0087612c  0a 00 00 0a                                      beq #0x87615c
00876130  00 30 94 e5                                      ldr r3, [r4]
00876134  04 00 a0 e1                                      mov r0, r4
00876138  0f e0 a0 e1                                      mov lr, pc
0087613c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00876140  00 00 50 e3                                      cmp r0, #0
00876144  d6 ff ff 0a                                      beq #0x8760a4
00876148  ed ff ff ea                                      b #0x876104
0087614c  c5 7f 00 eb                                      bl #0x896068
00876150  08 30 94 e5                                      ldr r3, [r4, #8]
00876154  28 60 93 e5                                      ldr r6, [r3, #0x28]
00876158  a5 ff ff ea                                      b #0x875ff4
0087615c  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00876160  24 30 84 e5                                      str r3, [r4, #0x24]
00876164  e6 ff ff ea                                      b #0x876104


; PACKAGE FUNCTION wav_ima_adpcm_decode
; ELF VA 0x00875cc8, range_size=348, SHA-256=96537cbbf4277fb43d19ab5972e0ccdaad0eed0e77c248e914e722b3586d5af8
; Original assembly source vox_VoxMSWavSubDecoderIMAADPCM-e5f4552dc727-001.asm lines 608-694
; FUNCTION 0x00875cc8, declared_size=348, range_size=348, mode=arm
; class-group: vox::VoxMSWavSubDecoderIMAADPCM
; alias: _ZN3vox26VoxMSWavSubDecoderIMAADPCM6DecodeEPvi
; demangled: vox::VoxMSWavSubDecoderIMAADPCM::Decode(void*, int)
; decoder-mode: arm
00875cc8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00875ccc  00 40 a0 e1                                      mov r4, r0
00875cd0  18 00 90 e5                                      ldr r0, [r0, #0x18]
00875cd4  10 30 94 e5                                      ldr r3, [r4, #0x10]
00875cd8  01 80 a0 e1                                      mov r8, r1
00875cdc  c0 11 a0 e1                                      asr r1, r0, #3
00875ce0  93 01 01 e0                                      mul r1, r3, r1
00875ce4  02 00 a0 e1                                      mov r0, r2
00875ce8  6d 61 ea eb                                      bl #0x30e2a4
00875cec  00 70 50 e2                                      subs r7, r0, #0
00875cf0  07 60 a0 c1                                      movgt r6, r7
00875cf4  00 a0 a0 c3                                      movgt sl, #0
00875cf8  0a 00 00 ca                                      bgt #0x875d28
00875cfc  46 00 00 ea                                      b #0x875e1c
00875d00  08 30 94 e5                                      ldr r3, [r4, #8]
00875d04  54 c0 94 e5                                      ldr ip, [r4, #0x54]
00875d08  28 30 93 e5                                      ldr r3, [r3, #0x28]
00875d0c  03 00 5c e1                                      cmp ip, r3
00875d10  02 00 00 3a                                      blo #0x875d20
00875d14  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
00875d18  03 00 52 e1                                      cmp r2, r3
00875d1c  1f 00 00 0a                                      beq #0x875da0
00875d20  00 00 56 e3                                      cmp r6, #0
00875d24  35 00 00 da                                      ble #0x875e00
00875d28  60 10 94 e5                                      ldr r1, [r4, #0x60]
00875d2c  5c 00 94 e5                                      ldr r0, [r4, #0x5c]
00875d30  00 00 51 e1                                      cmp r1, r0
00875d34  28 00 00 0a                                      beq #0x875ddc
00875d38  10 20 94 e5                                      ldr r2, [r4, #0x10]
00875d3c  91 02 03 e0                                      mul r3, r1, r2
00875d40  83 30 a0 e1                                      lsl r3, r3, #1
00875d44  00 50 61 e0                                      rsb r5, r1, r0
00875d48  06 00 55 e1                                      cmp r5, r6
00875d4c  06 50 a0 a1                                      movge r5, r6
00875d50  07 00 66 e0                                      rsb r0, r6, r7
00875d54  90 02 00 e0                                      mul r0, r0, r2
00875d58  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
00875d5c  92 05 02 e0                                      mul r2, r2, r5
00875d60  03 10 81 e0                                      add r1, r1, r3
00875d64  82 20 a0 e1                                      lsl r2, r2, #1
00875d68  80 00 88 e0                                      add r0, r8, r0, lsl #1
00875d6c  bd 62 ea eb                                      bl #0x30e868
00875d70  64 30 94 e5                                      ldr r3, [r4, #0x64]
00875d74  60 20 94 e5                                      ldr r2, [r4, #0x60]
00875d78  1c c0 94 e5                                      ldr ip, [r4, #0x1c]
00875d7c  03 30 85 e0                                      add r3, r5, r3
00875d80  02 20 85 e0                                      add r2, r5, r2
00875d84  0c 00 53 e1                                      cmp r3, ip
00875d88  04 00 a0 e1                                      mov r0, r4
00875d8c  00 10 a0 e3                                      mov r1, #0
00875d90  60 20 84 e5                                      str r2, [r4, #0x60]
00875d94  64 30 84 e5                                      str r3, [r4, #0x64]
00875d98  06 60 65 e0                                      rsb r6, r5, r6
00875d9c  d7 ff ff 3a                                      blo #0x875d00
00875da0  28 30 d4 e5                                      ldrb r3, [r4, #0x28]
00875da4  00 00 53 e3                                      cmp r3, #0
00875da8  04 00 00 0a                                      beq #0x875dc0
00875dac  00 30 94 e5                                      ldr r3, [r4]
00875db0  0f e0 a0 e1                                      mov lr, pc
00875db4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00875db8  00 00 50 e3                                      cmp r0, #0
00875dbc  d7 ff ff 0a                                      beq #0x875d20
00875dc0  18 30 94 e5                                      ldr r3, [r4, #0x18]
00875dc4  10 00 94 e5                                      ldr r0, [r4, #0x10]
00875dc8  07 60 66 e0                                      rsb r6, r6, r7
00875dcc  c3 31 a0 e1                                      asr r3, r3, #3
00875dd0  90 03 03 e0                                      mul r3, r0, r3
00875dd4  96 03 00 e0                                      mul r0, r6, r3
00875dd8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00875ddc  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
00875de0  04 00 a0 e1                                      mov r0, r4
00875de4  bb fe ff eb                                      bl #0x8758d8
00875de8  10 20 94 e5                                      ldr r2, [r4, #0x10]
00875dec  5c 00 84 e5                                      str r0, [r4, #0x5c]
00875df0  60 a0 84 e5                                      str sl, [r4, #0x60]
00875df4  0a 30 a0 e1                                      mov r3, sl
00875df8  0a 10 a0 e1                                      mov r1, sl
00875dfc  d0 ff ff ea                                      b #0x875d44
00875e00  18 30 94 e5                                      ldr r3, [r4, #0x18]
00875e04  10 00 94 e5                                      ldr r0, [r4, #0x10]
00875e08  07 60 66 e0                                      rsb r6, r6, r7
00875e0c  c3 31 a0 e1                                      asr r3, r3, #3
00875e10  90 03 03 e0                                      mul r3, r0, r3
00875e14  96 03 00 e0                                      mul r0, r6, r3
00875e18  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00875e1c  00 00 a0 e3                                      mov r0, #0
00875e20  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; PACKAGE FUNCTION wav_ima_adpcm_decode_block
; ELF VA 0x008758d8, range_size=860, SHA-256=81a2c965bda8ca625dbd7cdaa676a9482f54b6e5f2ad54328a6d3ea326773b9f
; Original assembly source vox_VoxMSWavSubDecoderIMAADPCM-e5f4552dc727-001.asm lines 345-558
; FUNCTION 0x008758d8, declared_size=860, range_size=860, mode=arm
; class-group: vox::VoxMSWavSubDecoderIMAADPCM
; alias: _ZN3vox26VoxMSWavSubDecoderIMAADPCM11DecodeBlockEPv
; demangled: vox::VoxMSWavSubDecoderIMAADPCM::DecodeBlock(void*)
; decoder-mode: arm
008758d8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
008758dc  54 d0 4d e2                                      sub sp, sp, #0x54
008758e0  18 00 8d e5                                      str r0, [sp, #0x18]
008758e4  08 30 90 e5                                      ldr r3, [r0, #8]
008758e8  18 20 9d e5                                      ldr r2, [sp, #0x18]
008758ec  18 e0 9d e5                                      ldr lr, [sp, #0x18]
008758f0  28 c0 93 e5                                      ldr ip, [r3, #0x28]
008758f4  54 00 90 e5                                      ldr r0, [r0, #0x54]
008758f8  68 40 92 e5                                      ldr r4, [r2, #0x68]
008758fc  b0 22 d3 e1                                      ldrh r2, [r3, #0x20]
00875900  04 30 9e e5                                      ldr r3, [lr, #4]
00875904  0c 00 60 e0                                      rsb r0, r0, ip
00875908  02 00 50 e1                                      cmp r0, r2
0087590c  00 20 a0 31                                      movlo r2, r0
00875910  01 50 a0 e1                                      mov r5, r1
00875914  03 00 a0 e1                                      mov r0, r3
00875918  04 10 a0 e1                                      mov r1, r4
0087591c  00 30 93 e5                                      ldr r3, [r3]
00875920  0f e0 a0 e1                                      mov lr, pc
00875924  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00875928  2c 00 8d e5                                      str r0, [sp, #0x2c]
0087592c  b0 10 d4 e1                                      ldrh r1, [r4]
00875930  18 00 9d e5                                      ldr r0, [sp, #0x18]
00875934  ec c2 9f e5                                      ldr ip, [pc, #0x2ec]
00875938  ba 12 c0 e1                                      strh r1, [r0, #0x2a]
0087593c  b2 30 d4 e1                                      ldrh r3, [r4, #2]
00875940  08 20 90 e5                                      ldr r2, [r0, #8]
00875944  0c c0 8f e0                                      add ip, pc, ip
00875948  bc 32 c0 e1                                      strh r3, [r0, #0x2c]
0087594c  b6 01 d2 e1                                      ldrh r0, [r2, #0x16]
00875950  24 c0 8d e5                                      str ip, [sp, #0x24]
00875954  01 00 50 e3                                      cmp r0, #1
00875958  30 50 8d d5                                      strle r5, [sp, #0x30]
0087595c  1a 00 00 da                                      ble #0x8759cc
00875960  18 10 9d e5                                      ldr r1, [sp, #0x18]
00875964  01 30 a0 e3                                      mov r3, #1
00875968  01 c0 a0 e1                                      mov ip, r1
0087596c  03 01 a0 e1                                      lsl r0, r3, #2
00875970  04 20 a0 e1                                      mov r2, r4
00875974  b0 00 b2 e1                                      ldrh r0, [r2, r0]!
00875978  01 30 83 e2                                      add r3, r3, #1
0087597c  be 02 c1 e1                                      strh r0, [r1, #0x2e]
00875980  b2 20 d2 e1                                      ldrh r2, [r2, #2]
00875984  b0 23 c1 e1                                      strh r2, [r1, #0x30]
00875988  08 20 9c e5                                      ldr r2, [ip, #8]
0087598c  04 10 81 e2                                      add r1, r1, #4
00875990  b6 01 d2 e1                                      ldrh r0, [r2, #0x16]
00875994  03 00 50 e1                                      cmp r0, r3
00875998  f3 ff ff ca                                      bgt #0x87596c
0087599c  01 00 50 e3                                      cmp r0, #1
008759a0  30 50 8d e5                                      str r5, [sp, #0x30]
008759a4  08 00 00 da                                      ble #0x8759cc
008759a8  30 60 8d e2                                      add r6, sp, #0x30
008759ac  00 11 86 e0                                      add r1, r6, r0, lsl #2
008759b0  04 30 86 e2                                      add r3, r6, #4
008759b4  00 00 00 ea                                      b #0x8759bc
008759b8  04 50 13 e5                                      ldr r5, [r3, #-4]
008759bc  02 c0 85 e2                                      add ip, r5, #2
008759c0  04 c0 83 e4                                      str ip, [r3], #4
008759c4  01 00 53 e1                                      cmp r3, r1
008759c8  fa ff ff 1a                                      bne #0x8759b8
008759cc  00 00 50 e3                                      cmp r0, #0
008759d0  00 10 a0 01                                      moveq r1, r0
008759d4  10 00 00 0a                                      beq #0x875a1c
008759d8  18 c0 9d e5                                      ldr ip, [sp, #0x18]
008759dc  00 30 a0 e3                                      mov r3, #0
008759e0  03 00 a0 e1                                      mov r0, r3
008759e4  30 60 8d e2                                      add r6, sp, #0x30
008759e8  0c 70 a0 e1                                      mov r7, ip
008759ec  03 50 96 e7                                      ldr r5, [r6, r3]
008759f0  ba 12 dc e1                                      ldrh r1, [ip, #0x2a]
008759f4  01 00 80 e2                                      add r0, r0, #1
008759f8  04 c0 8c e2                                      add ip, ip, #4
008759fc  b0 10 c5 e1                                      strh r1, [r5]
00875a00  08 20 97 e5                                      ldr r2, [r7, #8]
00875a04  b6 11 d2 e1                                      ldrh r1, [r2, #0x16]
00875a08  81 50 85 e0                                      add r5, r5, r1, lsl #1
00875a0c  00 00 51 e1                                      cmp r1, r0
00875a10  03 50 86 e7                                      str r5, [r6, r3]
00875a14  04 30 83 e2                                      add r3, r3, #4
00875a18  f3 ff ff ca                                      bgt #0x8759ec
00875a1c  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
00875a20  01 11 a0 e1                                      lsl r1, r1, #2
00875a24  03 30 61 e0                                      rsb r3, r1, r3
00875a28  00 00 53 e3                                      cmp r3, #0
00875a2c  28 30 8d e5                                      str r3, [sp, #0x28]
00875a30  01 30 a0 d3                                      movle r3, #1
00875a34  20 30 8d d5                                      strle r3, [sp, #0x20]
00875a38  6a 00 00 da                                      ble #0x875be8
00875a3c  02 c1 a0 e3                                      mov ip, #0x80000000
00875a40  01 b0 84 e0                                      add fp, r4, r1
00875a44  4c c8 a0 e1                                      asr ip, ip, #0x10
00875a48  01 00 a0 e3                                      mov r0, #1
00875a4c  00 10 a0 e3                                      mov r1, #0
00875a50  04 c0 8d e5                                      str ip, [sp, #4]
00875a54  20 00 8d e5                                      str r0, [sp, #0x20]
00875a58  1c 10 8d e5                                      str r1, [sp, #0x1c]
00875a5c  b6 a1 d2 e1                                      ldrh sl, [r2, #0x16]
00875a60  00 00 5a e3                                      cmp sl, #0
00875a64  58 00 00 0a                                      beq #0x875bcc
00875a68  bc 31 9f e5                                      ldr r3, [pc, #0x1bc]
00875a6c  24 10 9d e5                                      ldr r1, [sp, #0x24]
00875a70  18 90 9d e5                                      ldr sb, [sp, #0x18]
00875a74  00 00 a0 e3                                      mov r0, #0
00875a78  03 80 91 e7                                      ldr r8, [r1, r3]
00875a7c  ac 31 9f e5                                      ldr r3, [pc, #0x1ac]
00875a80  30 20 8d e2                                      add r2, sp, #0x30
00875a84  08 00 8d e5                                      str r0, [sp, #8]
00875a88  03 70 91 e7                                      ldr r7, [r1, r3]
00875a8c  0c 00 8d e5                                      str r0, [sp, #0xc]
00875a90  14 20 8d e5                                      str r2, [sp, #0x14]
00875a94  02 60 db e5                                      ldrb r6, [fp, #2]
00875a98  14 00 9d e5                                      ldr r0, [sp, #0x14]
00875a9c  08 c0 9d e5                                      ldr ip, [sp, #8]
00875aa0  01 10 db e5                                      ldrb r1, [fp, #1]
00875aa4  00 20 db e5                                      ldrb r2, [fp]
00875aa8  0c c0 90 e7                                      ldr ip, [r0, ip]
00875aac  03 30 db e5                                      ldrb r3, [fp, #3]
00875ab0  06 68 a0 e1                                      lsl r6, r6, #0x10
00875ab4  01 64 86 e0                                      add r6, r6, r1, lsl #8
00875ab8  02 60 86 e0                                      add r6, r6, r2
00875abc  10 c0 8d e5                                      str ip, [sp, #0x10]
00875ac0  03 6c 86 e0                                      add r6, r6, r3, lsl #24
00875ac4  0c 50 a0 e1                                      mov r5, ip
00875ac8  fa 42 d9 e1                                      ldrsh r4, [sb, #0x2a]
00875acc  2c 00 d9 e5                                      ldrb r0, [sb, #0x2c]
00875ad0  8a a0 a0 e1                                      lsl sl, sl, #1
00875ad4  0f 30 06 e2                                      and r3, r6, #0xf
00875ad8  00 c0 a0 e3                                      mov ip, #0
00875adc  13 00 00 ea                                      b #0x875b30
00875ae0  04 10 9d e5                                      ldr r1, [sp, #4]
00875ae4  04 40 62 e0                                      rsb r4, r2, r4
00875ae8  01 00 54 e1                                      cmp r4, r1
00875aec  01 40 a0 b1                                      movlt r4, r1
00875af0  03 30 d7 e7                                      ldrb r3, [r7, r3]
00875af4  03 00 80 e0                                      add r0, r0, r3
00875af8  70 00 ef e6                                      uxtb r0, r0
00875afc  80 00 10 e3                                      tst r0, #0x80
00875b00  00 00 a0 13                                      movne r0, #0
00875b04  01 00 00 1a                                      bne #0x875b10
00875b08  58 00 50 e3                                      cmp r0, #0x58
00875b0c  58 00 a0 23                                      movhs r0, #0x58
00875b10  01 c0 8c e2                                      add ip, ip, #1
00875b14  74 30 ff e6                                      uxth r3, r4
00875b18  08 00 5c e3                                      cmp ip, #8
00875b1c  b0 30 c5 e1                                      strh r3, [r5]
00875b20  12 00 00 0a                                      beq #0x875b70
00875b24  46 62 a0 e1                                      asr r6, r6, #4
00875b28  0a 50 85 e0                                      add r5, r5, sl
00875b2c  0f 30 06 e2                                      and r3, r6, #0xf
00875b30  80 20 a0 e1                                      lsl r2, r0, #1
00875b34  f2 10 98 e1                                      ldrsh r1, [r8, r2]
00875b38  04 00 13 e3                                      tst r3, #4
00875b3c  c1 21 a0 e1                                      asr r2, r1, #3
00875b40  01 20 82 10                                      addne r2, r2, r1
00875b44  02 00 13 e3                                      tst r3, #2
00875b48  c1 20 82 10                                      addne r2, r2, r1, asr #1
00875b4c  01 00 13 e3                                      tst r3, #1
00875b50  41 21 82 10                                      addne r2, r2, r1, asr #2
00875b54  08 00 13 e3                                      tst r3, #8
00875b58  e0 ff ff 1a                                      bne #0x875ae0
00875b5c  04 40 82 e0                                      add r4, r2, r4
00875b60  ff 2f 07 e3                                      movw r2, #0x7fff
00875b64  02 00 54 e1                                      cmp r4, r2
00875b68  02 40 a0 a1                                      movge r4, r2
00875b6c  df ff ff ea                                      b #0x875af0
00875b70  ba 32 c9 e1                                      strh r3, [sb, #0x2a]
00875b74  2c 00 c9 e5                                      strb r0, [sb, #0x2c]
00875b78  18 30 9d e5                                      ldr r3, [sp, #0x18]
00875b7c  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00875b80  10 00 9d e5                                      ldr r0, [sp, #0x10]
00875b84  08 20 93 e5                                      ldr r2, [r3, #8]
00875b88  01 c0 8c e2                                      add ip, ip, #1
00875b8c  0c c0 8d e5                                      str ip, [sp, #0xc]
00875b90  b6 31 d2 e1                                      ldrh r3, [r2, #0x16]
00875b94  08 10 9d e5                                      ldr r1, [sp, #8]
00875b98  04 b0 8b e2                                      add fp, fp, #4
00875b9c  03 a0 a0 e1                                      mov sl, r3
00875ba0  0c 00 5a e1                                      cmp sl, ip
00875ba4  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00875ba8  03 32 80 e0                                      add r3, r0, r3, lsl #4
00875bac  04 90 89 e2                                      add sb, sb, #4
00875bb0  01 30 8c e7                                      str r3, [ip, r1]
00875bb4  04 10 81 e2                                      add r1, r1, #4
00875bb8  08 10 8d e5                                      str r1, [sp, #8]
00875bbc  b4 ff ff ca                                      bgt #0x875a94
00875bc0  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00875bc4  00 00 81 e0                                      add r0, r1, r0
00875bc8  1c 00 8d e5                                      str r0, [sp, #0x1c]
00875bcc  20 c0 9d e5                                      ldr ip, [sp, #0x20]
00875bd0  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00875bd4  28 30 9d e5                                      ldr r3, [sp, #0x28]
00875bd8  08 c0 8c e2                                      add ip, ip, #8
00875bdc  20 c0 8d e5                                      str ip, [sp, #0x20]
00875be0  03 00 51 e1                                      cmp r1, r3
00875be4  9c ff ff ba                                      blt #0x875a5c
00875be8  18 c0 9d e5                                      ldr ip, [sp, #0x18]
00875bec  64 30 9c e5                                      ldr r3, [ip, #0x64]
00875bf0  1c 20 9c e5                                      ldr r2, [ip, #0x1c]
00875bf4  54 10 9c e5                                      ldr r1, [ip, #0x54]
00875bf8  20 c0 9d e5                                      ldr ip, [sp, #0x20]
00875bfc  03 00 8c e0                                      add r0, ip, r3
00875c00  02 00 50 e1                                      cmp r0, r2
00875c04  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
00875c08  18 c0 9d e5                                      ldr ip, [sp, #0x18]
00875c0c  02 30 63 80                                      rsbhi r3, r3, r2
00875c10  00 10 81 e0                                      add r1, r1, r0
00875c14  54 10 8c e5                                      str r1, [ip, #0x54]
00875c18  20 30 8d 85                                      strhi r3, [sp, #0x20]
00875c1c  20 00 9d e5                                      ldr r0, [sp, #0x20]
00875c20  54 d0 8d e2                                      add sp, sp, #0x54
00875c24  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
00875c28  4c f1 11 00 94 38 00 00 60 21 00 00              .byte 0x4c, 0xf1, 0x11, 0x00, 0x94, 0x38, 0x00, 0x00, 0x60, 0x21, 0x00, 0x00


; PACKAGE FUNCTION vorbis_cursor_constructor
; ELF VA 0x008751fc, range_size=192, SHA-256=fcfc33fb3211872eae3e76ece4d37e1fe712a5fe1ac487d03f86136962147133
; Original assembly source vox_DecoderStbVorbisCursor-b8ac654d0639-001.asm lines 187-234
; FUNCTION 0x008751fc, declared_size=192, range_size=192, mode=arm
; class-group: vox::DecoderStbVorbisCursor
; alias: _ZN3vox22DecoderStbVorbisCursorC1EPNS_16DecoderInterfaceEPNS_21StreamCursorInterfaceE
; demangled: vox::DecoderStbVorbisCursor::DecoderStbVorbisCursor(vox::DecoderInterface*, vox::StreamCursorInterface*)
; decoder-mode: arm
008751fc  b0 c0 9f e5                                      ldr ip, [pc, #0xb0]
00875200  b0 30 9f e5                                      ldr r3, [pc, #0xb0]
00875204  10 40 2d e9                                      push {r4, lr}
00875208  0c c0 8f e0                                      add ip, pc, ip
0087520c  03 30 9c e7                                      ldr r3, [ip, r3]
00875210  00 e0 a0 e3                                      mov lr, #0
00875214  20 d0 4d e2                                      sub sp, sp, #0x20
00875218  08 30 83 e2                                      add r3, r3, #8
0087521c  14 10 80 e5                                      str r1, [r0, #0x14]
00875220  00 30 80 e5                                      str r3, [r0]
00875224  18 20 80 e5                                      str r2, [r0, #0x18]
00875228  00 40 a0 e1                                      mov r4, r0
0087522c  04 e0 80 e5                                      str lr, [r0, #4]
00875230  08 e0 80 e5                                      str lr, [r0, #8]
00875234  0c e0 80 e5                                      str lr, [r0, #0xc]
00875238  10 e0 80 e5                                      str lr, [r0, #0x10]
0087523c  1c e0 c0 e5                                      strb lr, [r0, #0x1c]
00875240  20 e0 80 e5                                      str lr, [r0, #0x20]
00875244  24 e0 80 e5                                      str lr, [r0, #0x24]
00875248  0e 10 a0 e1                                      mov r1, lr
0087524c  02 00 a0 e1                                      mov r0, r2
00875250  0e 30 a0 e1                                      mov r3, lr
00875254  1c 20 8d e2                                      add r2, sp, #0x1c
00875258  9a 23 00 eb                                      bl #0x87e0c8
0087525c  00 00 50 e3                                      cmp r0, #0
00875260  20 00 84 e5                                      str r0, [r4, #0x20]
00875264  0d 00 00 0a                                      beq #0x8752a0
00875268  00 10 a0 e1                                      mov r1, r0
0087526c  04 00 8d e2                                      add r0, sp, #4
00875270  ed 06 00 eb                                      bl #0x876e2c
00875274  08 20 9d e5                                      ldr r2, [sp, #8]
00875278  04 30 9d e5                                      ldr r3, [sp, #4]
0087527c  10 10 a0 e3                                      mov r1, #0x10
00875280  0c 10 84 e5                                      str r1, [r4, #0xc]
00875284  0c 00 84 e9                                      stmib r4, {r2, r3}
00875288  20 00 94 e5                                      ldr r0, [r4, #0x20]
0087528c  36 0c 00 eb                                      bl #0x87836c
00875290  10 00 84 e5                                      str r0, [r4, #0x10]
00875294  04 00 a0 e1                                      mov r0, r4
00875298  20 d0 8d e2                                      add sp, sp, #0x20
0087529c  10 80 bd e8                                      pop {r4, pc}
008752a0  10 00 84 e5                                      str r0, [r4, #0x10]
008752a4  04 00 84 e5                                      str r0, [r4, #4]
008752a8  08 00 84 e5                                      str r0, [r4, #8]
008752ac  0c 00 84 e5                                      str r0, [r4, #0xc]
008752b0  f7 ff ff ea                                      b #0x875294
; mapping-symbol data/literal pool
008752b4  88 f8 11 00 08 18 00 00                          .byte 0x88, 0xf8, 0x11, 0x00, 0x08, 0x18, 0x00, 0x00


; PACKAGE FUNCTION vorbis_decode
; ELF VA 0x00874fec, range_size=216, SHA-256=92d98c1dddceb27eb5b889460de63ade6b19f0ce7ce673ae689e38176e8cf3c3
; Original assembly source vox_DecoderStbVorbisCursor-b8ac654d0639-001.asm lines 70-123
; FUNCTION 0x00874fec, declared_size=216, range_size=216, mode=arm
; class-group: vox::DecoderStbVorbisCursor
; alias: _ZN3vox22DecoderStbVorbisCursor6DecodeEPvi
; demangled: vox::DecoderStbVorbisCursor::Decode(void*, int)
; decoder-mode: arm
00874fec  70 40 2d e9                                      push {r4, r5, r6, lr}
00874ff0  00 40 a0 e1                                      mov r4, r0
00874ff4  20 00 90 e5                                      ldr r0, [r0, #0x20]
00874ff8  02 30 a0 e1                                      mov r3, r2
00874ffc  00 00 50 e3                                      cmp r0, #0
00875000  1f 00 00 0a                                      beq #0x875084
00875004  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00875008  20 00 52 e3                                      cmp r2, #0x20
0087500c  26 00 00 0a                                      beq #0x8750ac
00875010  01 20 a0 e1                                      mov r2, r1
00875014  a3 30 a0 e1                                      lsr r3, r3, #1
00875018  04 10 94 e5                                      ldr r1, [r4, #4]
0087501c  55 25 00 eb                                      bl #0x87e578
00875020  00 50 a0 e1                                      mov r5, r0
00875024  24 30 94 e5                                      ldr r3, [r4, #0x24]
00875028  00 00 55 e3                                      cmp r5, #0
0087502c  03 30 85 e0                                      add r3, r5, r3
00875030  24 30 84 e5                                      str r3, [r4, #0x24]
00875034  13 00 00 1a                                      bne #0x875088
00875038  1c 30 d4 e5                                      ldrb r3, [r4, #0x1c]
0087503c  00 00 53 e3                                      cmp r3, #0
00875040  05 00 00 1a                                      bne #0x87505c
00875044  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00875048  04 30 94 e5                                      ldr r3, [r4, #4]
0087504c  c0 01 a0 e1                                      asr r0, r0, #3
00875050  93 00 00 e0                                      mul r0, r3, r0
00875054  95 00 00 e0                                      mul r0, r5, r0
00875058  70 80 bd e8                                      pop {r4, r5, r6, pc}
0087505c  00 30 94 e5                                      ldr r3, [r4]
00875060  04 00 a0 e1                                      mov r0, r4
00875064  00 10 a0 e3                                      mov r1, #0
00875068  0f e0 a0 e1                                      mov lr, pc
0087506c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00875070  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00875074  04 30 94 e5                                      ldr r3, [r4, #4]
00875078  c0 01 a0 e1                                      asr r0, r0, #3
0087507c  93 00 00 e0                                      mul r0, r3, r0
00875080  95 00 00 e0                                      mul r0, r5, r0
00875084  70 80 bd e8                                      pop {r4, r5, r6, pc}
00875088  10 20 94 e5                                      ldr r2, [r4, #0x10]
0087508c  02 00 53 e1                                      cmp r3, r2
00875090  e8 ff ff 0a                                      beq #0x875038
00875094  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00875098  04 30 94 e5                                      ldr r3, [r4, #4]
0087509c  c0 01 a0 e1                                      asr r0, r0, #3
008750a0  93 00 00 e0                                      mul r0, r3, r0
008750a4  95 00 00 e0                                      mul r0, r5, r0
008750a8  70 80 bd e8                                      pop {r4, r5, r6, pc}
008750ac  01 20 a0 e1                                      mov r2, r1
008750b0  23 31 a0 e1                                      lsr r3, r3, #2
008750b4  04 10 94 e5                                      ldr r1, [r4, #4]
008750b8  a6 24 00 eb                                      bl #0x87e358
008750bc  00 50 a0 e1                                      mov r5, r0
008750c0  d7 ff ff ea                                      b #0x875024


; PACKAGE FUNCTION mpc8_cursor_constructor
; ELF VA 0x0087018c, range_size=400, SHA-256=a30b38956ca4ef13fcb50bb43b68dedeb3f5d9d1932d83f4ab3f00c0e4865aa1
; Original assembly source vox_DecoderMPC8Cursor-8c6baaf1ac2d-001.asm lines 328-422
; FUNCTION 0x0087018c, declared_size=400, range_size=400, mode=arm
; class-group: vox::DecoderMPC8Cursor
; alias: _ZN3vox17DecoderMPC8CursorC1EPNS_16DecoderInterfaceEPNS_21StreamCursorInterfaceE
; demangled: vox::DecoderMPC8Cursor::DecoderMPC8Cursor(vox::DecoderInterface*, vox::StreamCursorInterface*)
; decoder-mode: arm
0087018c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00870190  64 51 9f e5                                      ldr r5, [pc, #0x164]
00870194  64 c1 9f e5                                      ldr ip, [pc, #0x164]
00870198  64 71 9f e5                                      ldr r7, [pc, #0x164]
0087019c  05 50 8f e0                                      add r5, pc, r5
008701a0  0c 80 95 e7                                      ldr r8, [r5, ip]
008701a4  5c c1 9f e5                                      ldr ip, [pc, #0x15c]
008701a8  5c 61 9f e5                                      ldr r6, [pc, #0x15c]
008701ac  5c 31 9f e5                                      ldr r3, [pc, #0x15c]
008701b0  0c e0 95 e7                                      ldr lr, [r5, ip]
008701b4  07 b0 95 e7                                      ldr fp, [r5, r7]
008701b8  54 c1 9f e5                                      ldr ip, [pc, #0x154]
008701bc  54 71 9f e5                                      ldr r7, [pc, #0x154]
008701c0  06 40 95 e7                                      ldr r4, [r5, r6]
008701c4  03 30 95 e7                                      ldr r3, [r5, r3]
008701c8  07 a0 95 e7                                      ldr sl, [r5, r7]
008701cc  0c c0 95 e7                                      ldr ip, [r5, ip]
008701d0  00 90 94 e5                                      ldr sb, [r4]
008701d4  01 70 a0 e1                                      mov r7, r1
008701d8  08 30 83 e2                                      add r3, r3, #8
008701dc  00 10 a0 e3                                      mov r1, #0
008701e0  00 40 a0 e1                                      mov r4, r0
008701e4  00 30 80 e5                                      str r3, [r0]
008701e8  48 10 80 e5                                      str r1, [r0, #0x48]
008701ec  30 80 80 e5                                      str r8, [r0, #0x30]
008701f0  34 e0 80 e5                                      str lr, [r0, #0x34]
008701f4  38 c0 80 e5                                      str ip, [r0, #0x38]
008701f8  40 b0 80 e5                                      str fp, [r0, #0x40]
008701fc  3c a0 80 e5                                      str sl, [r0, #0x3c]
00870200  44 20 80 e5                                      str r2, [r0, #0x44]
00870204  04 10 80 e5                                      str r1, [r0, #4]
00870208  08 10 80 e5                                      str r1, [r0, #8]
0087020c  0c 10 80 e5                                      str r1, [r0, #0xc]
00870210  10 10 80 e5                                      str r1, [r0, #0x10]
00870214  14 70 80 e5                                      str r7, [r0, #0x14]
00870218  18 20 80 e5                                      str r2, [r0, #0x18]
0087021c  1c 10 c0 e5                                      strb r1, [r0, #0x1c]
00870220  20 10 80 e5                                      str r1, [r0, #0x20]
00870224  24 10 80 e5                                      str r1, [r0, #0x24]
00870228  28 10 80 e5                                      str r1, [r0, #0x28]
0087022c  2c 10 80 e5                                      str r1, [r0, #0x2c]
00870230  5d df 4d e2                                      sub sp, sp, #0x174
00870234  12 0b a0 e3                                      mov r0, #0x4800
00870238  6c 91 8d e5                                      str sb, [sp, #0x16c]
0087023c  ad 80 ea eb                                      bl #0x3104f8
00870240  00 00 50 e3                                      cmp r0, #0
00870244  48 00 84 e5                                      str r0, [r4, #0x48]
00870248  2c 00 94 05                                      ldreq r0, [r4, #0x2c]
0087024c  02 00 00 0a                                      beq #0x87025c
00870250  30 00 84 e2                                      add r0, r4, #0x30
00870254  f8 40 00 eb                                      bl #0x88063c
00870258  2c 00 84 e5                                      str r0, [r4, #0x2c]
0087025c  00 00 50 e3                                      cmp r0, #0
00870260  1f 00 00 0a                                      beq #0x8702e4
00870264  04 30 90 e5                                      ldr r3, [r0, #4]
00870268  00 00 53 e3                                      cmp r3, #0
0087026c  16 00 00 0a                                      beq #0x8702cc
00870270  00 30 90 e5                                      ldr r3, [r0]
00870274  00 00 53 e3                                      cmp r3, #0
00870278  13 00 00 0a                                      beq #0x8702cc
0087027c  0d 10 a0 e1                                      mov r1, sp
00870280  22 3f 00 eb                                      bl #0x87ff10
00870284  04 30 9d e5                                      ldr r3, [sp, #4]
00870288  10 20 a0 e3                                      mov r2, #0x10
0087028c  0c 20 84 e5                                      str r2, [r4, #0xc]
00870290  04 30 84 e5                                      str r3, [r4, #4]
00870294  04 30 97 e5                                      ldr r3, [r7, #4]
00870298  00 00 53 e3                                      cmp r3, #0
0087029c  00 30 9d d5                                      ldrle r3, [sp]
008702a0  08 30 84 e5                                      str r3, [r4, #8]
008702a4  38 30 9d e5                                      ldr r3, [sp, #0x38]
008702a8  10 30 84 e5                                      str r3, [r4, #0x10]
008702ac  06 30 95 e7                                      ldr r3, [r5, r6]
008702b0  6c 21 9d e5                                      ldr r2, [sp, #0x16c]
008702b4  04 00 a0 e1                                      mov r0, r4
008702b8  00 30 93 e5                                      ldr r3, [r3]
008702bc  03 00 52 e1                                      cmp r2, r3
008702c0  0c 00 00 1a                                      bne #0x8702f8
008702c4  5d df 8d e2                                      add sp, sp, #0x174
008702c8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
008702cc  00 30 a0 e3                                      mov r3, #0
008702d0  10 30 84 e5                                      str r3, [r4, #0x10]
008702d4  04 30 84 e5                                      str r3, [r4, #4]
008702d8  08 30 84 e5                                      str r3, [r4, #8]
008702dc  0c 30 84 e5                                      str r3, [r4, #0xc]
008702e0  f1 ff ff ea                                      b #0x8702ac
008702e4  10 00 84 e5                                      str r0, [r4, #0x10]
008702e8  04 00 84 e5                                      str r0, [r4, #4]
008702ec  08 00 84 e5                                      str r0, [r4, #8]
008702f0  0c 00 84 e5                                      str r0, [r4, #0xc]
008702f4  ec ff ff ea                                      b #0x8702ac
008702f8  04 78 ea eb                                      bl #0x30e310
; mapping-symbol data/literal pool
008702fc  f4 48 12 00 c0 26 00 00 68 25 00 00 0c 2d 00 00  .byte 0xf4, 0x48, 0x12, 0x00, 0xc0, 0x26, 0x00, 0x00, 0x68, 0x25, 0x00, 0x00, 0x0c, 0x2d, 0x00, 0x00
0087030c  ac 40 00 00 8c 1b 00 00 44 11 00 00 30 06 00 00  .byte 0xac, 0x40, 0x00, 0x00, 0x8c, 0x1b, 0x00, 0x00, 0x44, 0x11, 0x00, 0x00, 0x30, 0x06, 0x00, 0x00


; PACKAGE FUNCTION mpc8_decode
; ELF VA 0x0086fe38, range_size=620, SHA-256=54017a66c69ab95463c60c360ca89508884a7c921f09e7665358cc1539e190b3
; Original assembly source vox_DecoderMPC8Cursor-8c6baaf1ac2d-001.asm lines 102-256
; FUNCTION 0x0086fe38, declared_size=620, range_size=620, mode=arm
; class-group: vox::DecoderMPC8Cursor
; alias: _ZN3vox17DecoderMPC8Cursor6DecodeEPvi
; demangled: vox::DecoderMPC8Cursor::Decode(void*, int)
; decoder-mode: arm
0086fe38  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0086fe3c  0c a0 90 e5                                      ldr sl, [r0, #0xc]
0086fe40  04 50 90 e5                                      ldr r5, [r0, #4]
0086fe44  01 70 a0 e1                                      mov r7, r1
0086fe48  ca 11 a0 e1                                      asr r1, sl, #3
0086fe4c  00 40 a0 e1                                      mov r4, r0
0086fe50  95 01 01 e0                                      mul r1, r5, r1
0086fe54  14 d0 4d e2                                      sub sp, sp, #0x14
0086fe58  02 00 a0 e1                                      mov r0, r2
0086fe5c  10 79 ea eb                                      bl #0x30e2a4
0086fe60  28 10 94 e5                                      ldr r1, [r4, #0x28]
0086fe64  24 80 94 e5                                      ldr r8, [r4, #0x24]
0086fe68  00 60 a0 e1                                      mov r6, r0
0086fe6c  08 00 51 e1                                      cmp r1, r8
0086fe70  00 50 a0 a1                                      movge r5, r0
0086fe74  2a 00 00 aa                                      bge #0x86ff24
0086fe78  08 80 61 e0                                      rsb r8, r1, r8
0086fe7c  08 00 50 e1                                      cmp r0, r8
0086fe80  17 00 00 aa                                      bge #0x86fee4
0086fe84  20 00 5a e3                                      cmp sl, #0x20
0086fe88  75 00 00 0a                                      beq #0x870064
0086fe8c  95 01 00 e0                                      mul r0, r5, r1
0086fe90  48 20 94 e5                                      ldr r2, [r4, #0x48]
0086fe94  07 10 a0 e1                                      mov r1, r7
0086fe98  95 06 03 e0                                      mul r3, r5, r6
0086fe9c  00 21 82 e0                                      add r2, r2, r0, lsl #2
0086fea0  04 00 a0 e1                                      mov r0, r4
0086fea4  ab ff ff eb                                      bl #0x86fd58
0086fea8  28 20 94 e5                                      ldr r2, [r4, #0x28]
0086feac  20 30 94 e5                                      ldr r3, [r4, #0x20]
0086feb0  00 50 a0 e3                                      mov r5, #0
0086feb4  06 20 82 e0                                      add r2, r2, r6
0086feb8  06 30 83 e0                                      add r3, r3, r6
0086febc  28 20 84 e5                                      str r2, [r4, #0x28]
0086fec0  20 30 84 e5                                      str r3, [r4, #0x20]
0086fec4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0086fec8  04 20 94 e5                                      ldr r2, [r4, #4]
0086fecc  06 00 65 e0                                      rsb r0, r5, r6
0086fed0  c3 31 a0 e1                                      asr r3, r3, #3
0086fed4  92 03 03 e0                                      mul r3, r2, r3
0086fed8  90 03 00 e0                                      mul r0, r0, r3
0086fedc  14 d0 8d e2                                      add sp, sp, #0x14
0086fee0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0086fee4  20 00 5a e3                                      cmp sl, #0x20
0086fee8  65 00 00 0a                                      beq #0x870084
0086feec  95 01 01 e0                                      mul r1, r5, r1
0086fef0  48 20 94 e5                                      ldr r2, [r4, #0x48]
0086fef4  95 08 03 e0                                      mul r3, r5, r8
0086fef8  01 21 82 e0                                      add r2, r2, r1, lsl #2
0086fefc  04 00 a0 e1                                      mov r0, r4
0086ff00  07 10 a0 e1                                      mov r1, r7
0086ff04  93 ff ff eb                                      bl #0x86fd58
0086ff08  28 30 94 e5                                      ldr r3, [r4, #0x28]
0086ff0c  20 20 94 e5                                      ldr r2, [r4, #0x20]
0086ff10  06 50 68 e0                                      rsb r5, r8, r6
0086ff14  08 30 83 e0                                      add r3, r3, r8
0086ff18  08 80 82 e0                                      add r8, r2, r8
0086ff1c  28 30 84 e5                                      str r3, [r4, #0x28]
0086ff20  20 80 84 e5                                      str r8, [r4, #0x20]
0086ff24  48 30 94 e5                                      ldr r3, [r4, #0x48]
0086ff28  00 00 55 e3                                      cmp r5, #0
0086ff2c  08 30 8d e5                                      str r3, [sp, #8]
0086ff30  e3 ff ff da                                      ble #0x86fec4
0086ff34  0d 80 a0 e1                                      mov r8, sp
0086ff38  00 a0 a0 e3                                      mov sl, #0
0086ff3c  13 00 00 ea                                      b #0x86ff90
0086ff40  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0086ff44  20 00 52 e3                                      cmp r2, #0x20
0086ff48  39 00 00 0a                                      beq #0x870034
0086ff4c  81 10 87 e0                                      add r1, r7, r1, lsl #1
0086ff50  93 05 03 e0                                      mul r3, r3, r5
0086ff54  04 00 a0 e1                                      mov r0, r4
0086ff58  08 20 9d e5                                      ldr r2, [sp, #8]
0086ff5c  7d ff ff eb                                      bl #0x86fd58
0086ff60  28 20 94 e5                                      ldr r2, [r4, #0x28]
0086ff64  20 30 94 e5                                      ldr r3, [r4, #0x20]
0086ff68  05 20 82 e0                                      add r2, r2, r5
0086ff6c  28 20 84 e5                                      str r2, [r4, #0x28]
0086ff70  10 20 94 e5                                      ldr r2, [r4, #0x10]
0086ff74  03 30 85 e0                                      add r3, r5, r3
0086ff78  20 30 84 e5                                      str r3, [r4, #0x20]
0086ff7c  03 00 52 e1                                      cmp r2, r3
0086ff80  00 50 a0 e3                                      mov r5, #0
0086ff84  1f 00 00 0a                                      beq #0x870008
0086ff88  00 00 55 e3                                      cmp r5, #0
0086ff8c  cc ff ff da                                      ble #0x86fec4
0086ff90  0d 10 a0 e1                                      mov r1, sp
0086ff94  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
0086ff98  c8 3e 00 eb                                      bl #0x87fac0
0086ff9c  00 20 9d e5                                      ldr r2, [sp]
0086ffa0  04 30 94 e5                                      ldr r3, [r4, #4]
0086ffa4  06 10 65 e0                                      rsb r1, r5, r6
0086ffa8  05 00 52 e1                                      cmp r2, r5
0086ffac  28 a0 84 e5                                      str sl, [r4, #0x28]
0086ffb0  24 20 84 e5                                      str r2, [r4, #0x24]
0086ffb4  93 01 01 e0                                      mul r1, r3, r1
0086ffb8  e0 ff ff ca                                      bgt #0x86ff40
0086ffbc  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0086ffc0  20 00 50 e3                                      cmp r0, #0x20
0086ffc4  20 00 00 0a                                      beq #0x87004c
0086ffc8  93 02 03 e0                                      mul r3, r3, r2
0086ffcc  81 10 87 e0                                      add r1, r7, r1, lsl #1
0086ffd0  04 00 a0 e1                                      mov r0, r4
0086ffd4  08 20 9d e5                                      ldr r2, [sp, #8]
0086ffd8  5e ff ff eb                                      bl #0x86fd58
0086ffdc  24 30 94 e5                                      ldr r3, [r4, #0x24]
0086ffe0  28 20 94 e5                                      ldr r2, [r4, #0x28]
0086ffe4  20 10 94 e5                                      ldr r1, [r4, #0x20]
0086ffe8  05 50 63 e0                                      rsb r5, r3, r5
0086ffec  03 20 82 e0                                      add r2, r2, r3
0086fff0  28 20 84 e5                                      str r2, [r4, #0x28]
0086fff4  10 20 94 e5                                      ldr r2, [r4, #0x10]
0086fff8  01 30 83 e0                                      add r3, r3, r1
0086fffc  20 30 84 e5                                      str r3, [r4, #0x20]
00870000  03 00 52 e1                                      cmp r2, r3
00870004  df ff ff 1a                                      bne #0x86ff88
00870008  1c 30 d4 e5                                      ldrb r3, [r4, #0x1c]
0087000c  00 00 53 e3                                      cmp r3, #0
00870010  ab ff ff 0a                                      beq #0x86fec4
00870014  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
00870018  00 20 a0 e3                                      mov r2, #0
0087001c  00 30 a0 e3                                      mov r3, #0
00870020  a1 3d 00 eb                                      bl #0x87f6ac
00870024  00 00 50 e3                                      cmp r0, #0
00870028  a5 ff ff 1a                                      bne #0x86fec4
0087002c  20 00 84 e5                                      str r0, [r4, #0x20]
00870030  d4 ff ff ea                                      b #0x86ff88
00870034  93 05 03 e0                                      mul r3, r3, r5
00870038  01 01 87 e0                                      add r0, r7, r1, lsl #2
0087003c  03 21 a0 e1                                      lsl r2, r3, #2
00870040  08 10 9d e5                                      ldr r1, [sp, #8]
00870044  07 7a ea eb                                      bl #0x30e868
00870048  c4 ff ff ea                                      b #0x86ff60
0087004c  93 02 03 e0                                      mul r3, r3, r2
00870050  01 01 87 e0                                      add r0, r7, r1, lsl #2
00870054  03 21 a0 e1                                      lsl r2, r3, #2
00870058  08 10 9d e5                                      ldr r1, [sp, #8]
0087005c  01 7a ea eb                                      bl #0x30e868
00870060  dd ff ff ea                                      b #0x86ffdc
00870064  95 00 02 e0                                      mul r2, r5, r0
00870068  95 01 01 e0                                      mul r1, r5, r1
0087006c  48 30 94 e5                                      ldr r3, [r4, #0x48]
00870070  07 00 a0 e1                                      mov r0, r7
00870074  02 21 a0 e1                                      lsl r2, r2, #2
00870078  01 11 83 e0                                      add r1, r3, r1, lsl #2
0087007c  f9 79 ea eb                                      bl #0x30e868
00870080  88 ff ff ea                                      b #0x86fea8
00870084  95 01 01 e0                                      mul r1, r5, r1
00870088  95 08 02 e0                                      mul r2, r5, r8
0087008c  48 30 94 e5                                      ldr r3, [r4, #0x48]
00870090  02 21 a0 e1                                      lsl r2, r2, #2
00870094  07 00 a0 e1                                      mov r0, r7
00870098  01 11 83 e0                                      add r1, r3, r1, lsl #2
0087009c  f1 79 ea eb                                      bl #0x30e868
008700a0  98 ff ff ea                                      b #0x86ff08


; PACKAGE FUNCTION native_parse
; ELF VA 0x008738bc, range_size=2616, SHA-256=db37531fce39bdf9c8d2a98084ddb31360fb81ddae015d34a1474f5d9b294674
; Original assembly source vox_DecoderNativeCursor-d698012fa4b6-001.asm lines 577-1230
; FUNCTION 0x008738bc, declared_size=2616, range_size=2616, mode=arm
; class-group: vox::DecoderNativeCursor
; alias: _ZN3vox19DecoderNativeCursor9ParseFileEv
; demangled: vox::DecoderNativeCursor::ParseFile()
; decoder-mode: arm
008738bc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
008738c0  24 4a 9f e5                                      ldr r4, [pc, #0xa24]
008738c4  24 7a 9f e5                                      ldr r7, [pc, #0xa24]
008738c8  18 30 90 e5                                      ldr r3, [r0, #0x18]
008738cc  04 40 8f e0                                      add r4, pc, r4
008738d0  07 20 94 e7                                      ldr r2, [r4, r7]
008738d4  b4 d0 4d e2                                      sub sp, sp, #0xb4
008738d8  00 00 53 e3                                      cmp r3, #0
008738dc  00 20 92 e5                                      ldr r2, [r2]
008738e0  00 50 a0 e1                                      mov r5, r0
008738e4  ac 20 8d e5                                      str r2, [sp, #0xac]
008738e8  0f 00 00 0a                                      beq #0x87392c
008738ec  03 00 a0 e1                                      mov r0, r3
008738f0  00 30 93 e5                                      ldr r3, [r3]
008738f4  0f e0 a0 e1                                      mov lr, pc
008738f8  18 f0 93 e5                                      ldr pc, [r3, #0x18]
008738fc  00 00 50 e3                                      cmp r0, #0
00873900  a8 00 00 1a                                      bne #0x873ba8
00873904  18 30 95 e5                                      ldr r3, [r5, #0x18]
00873908  68 b0 8d e2                                      add fp, sp, #0x68
0087390c  0b 10 a0 e1                                      mov r1, fp
00873910  03 00 a0 e1                                      mov r0, r3
00873914  08 20 a0 e3                                      mov r2, #8
00873918  00 30 93 e5                                      ldr r3, [r3]
0087391c  0f e0 a0 e1                                      mov lr, pc
00873920  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00873924  08 00 50 e3                                      cmp r0, #8
00873928  07 00 00 0a                                      beq #0x87394c
0087392c  00 00 a0 e3                                      mov r0, #0
00873930  07 30 94 e7                                      ldr r3, [r4, r7]
00873934  ac 20 9d e5                                      ldr r2, [sp, #0xac]
00873938  00 30 93 e5                                      ldr r3, [r3]
0087393c  03 00 52 e1                                      cmp r2, r3
00873940  68 02 00 1a                                      bne #0x8742e8
00873944  b4 d0 8d e2                                      add sp, sp, #0xb4
00873948  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0087394c  68 20 9d e5                                      ldr r2, [sp, #0x68]
00873950  56 3f 06 e3                                      movw r3, #0x6f56
00873954  78 3e 44 e3                                      movt r3, #0x4e78
00873958  03 00 52 e1                                      cmp r2, r3
0087395c  f2 ff ff 1a                                      bne #0x87392c
00873960  20 30 95 e5                                      ldr r3, [r5, #0x20]
00873964  00 20 83 e5                                      str r2, [r3]
00873968  20 30 95 e5                                      ldr r3, [r5, #0x20]
0087396c  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
00873970  04 20 83 e5                                      str r2, [r3, #4]
00873974  18 30 95 e5                                      ldr r3, [r5, #0x18]
00873978  20 10 95 e5                                      ldr r1, [r5, #0x20]
0087397c  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
00873980  03 00 a0 e1                                      mov r0, r3
00873984  08 10 81 e2                                      add r1, r1, #8
00873988  00 30 93 e5                                      ldr r3, [r3]
0087398c  0f e0 a0 e1                                      mov lr, pc
00873990  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00873994  20 30 95 e5                                      ldr r3, [r5, #0x20]
00873998  14 20 93 e5                                      ldr r2, [r3, #0x14]
0087399c  04 30 93 e5                                      ldr r3, [r3, #4]
008739a0  10 20 42 e2                                      sub r2, r2, #0x10
008739a4  02 30 63 e0                                      rsb r3, r3, r2
008739a8  03 00 a0 e1                                      mov r0, r3
008739ac  0c 30 8d e5                                      str r3, [sp, #0xc]
008739b0  d0 72 ea eb                                      bl #0x3104f8
008739b4  00 00 50 e3                                      cmp r0, #0
008739b8  24 00 8d e5                                      str r0, [sp, #0x24]
008739bc  da ff ff 0a                                      beq #0x87392c
008739c0  18 30 95 e5                                      ldr r3, [r5, #0x18]
008739c4  00 10 a0 e1                                      mov r1, r0
008739c8  0c 20 9d e5                                      ldr r2, [sp, #0xc]
008739cc  03 00 a0 e1                                      mov r0, r3
008739d0  00 30 93 e5                                      ldr r3, [r3]
008739d4  0f e0 a0 e1                                      mov lr, pc
008739d8  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
008739dc  0c 00 9d e5                                      ldr r0, [sp, #0xc]
008739e0  00 00 50 e3                                      cmp r0, #0
008739e4  00 10 a0 d3                                      movle r1, #0
008739e8  30 10 8d d5                                      strle r1, [sp, #0x30]
008739ec  2c 10 8d d5                                      strle r1, [sp, #0x2c]
008739f0  32 02 00 da                                      ble #0x8742c0
008739f4  74 20 8d e2                                      add r2, sp, #0x74
008739f8  00 60 a0 e3                                      mov r6, #0
008739fc  04 30 82 e2                                      add r3, r2, #4
00873a00  70 00 8d e2                                      add r0, sp, #0x70
00873a04  10 b0 8d e5                                      str fp, [sp, #0x10]
00873a08  34 20 8d e5                                      str r2, [sp, #0x34]
00873a0c  28 60 8d e5                                      str r6, [sp, #0x28]
00873a10  30 60 8d e5                                      str r6, [sp, #0x30]
00873a14  2c 60 8d e5                                      str r6, [sp, #0x2c]
00873a18  40 30 8d e5                                      str r3, [sp, #0x40]
00873a1c  20 00 8d e5                                      str r0, [sp, #0x20]
00873a20  38 40 8d e5                                      str r4, [sp, #0x38]
00873a24  3c 70 8d e5                                      str r7, [sp, #0x3c]
00873a28  24 b0 9d e5                                      ldr fp, [sp, #0x24]
00873a2c  1c 00 00 ea                                      b #0x873aa4
00873a30  47 12 07 e3                                      movw r1, #0x7247
00873a34  70 13 47 e3                                      movt r1, #0x7370
00873a38  01 00 52 e1                                      cmp r2, r1
00873a3c  e1 00 00 0a                                      beq #0x873dc8
00873a40  47 12 07 e3                                      movw r1, #0x7247
00873a44  70 15 46 e3                                      movt r1, #0x6570
00873a48  01 00 52 e1                                      cmp r2, r1
00873a4c  01 01 00 0a                                      beq #0x873e58
00873a50  52 15 07 e3                                      movw r1, #0x7552
00873a54  6c 15 46 e3                                      movt r1, #0x656c
00873a58  01 00 52 e1                                      cmp r2, r1
00873a5c  1f 01 00 0a                                      beq #0x873ee0
00873a60  50 1c 06 e3                                      movw r1, #0x6c50
00873a64  73 14 47 e3                                      movt r1, #0x7473
00873a68  01 00 52 e1                                      cmp r2, r1
00873a6c  a7 00 00 0a                                      beq #0x873d10
00873a70  53 14 07 e3                                      movw r1, #0x7453
00873a74  61 14 47 e3                                      movt r1, #0x7461
00873a78  01 00 52 e1                                      cmp r2, r1
00873a7c  3c 01 00 0a                                      beq #0x873f74
00873a80  54 12 07 e3                                      movw r1, #0x7254
00873a84  73 1e 46 e3                                      movt r1, #0x6e73
00873a88  01 00 52 e1                                      cmp r2, r1
00873a8c  8f 01 00 0a                                      beq #0x8740d0
00873a90  6c 60 9d e5                                      ldr r6, [sp, #0x6c]
00873a94  06 60 84 e0                                      add r6, r4, r6
00873a98  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00873a9c  06 00 53 e1                                      cmp r3, r6
00873aa0  04 02 00 da                                      ble #0x8742b8
00873aa4  08 20 a0 e3                                      mov r2, #8
00873aa8  10 00 9d e5                                      ldr r0, [sp, #0x10]
00873aac  06 10 8b e0                                      add r1, fp, r6
00873ab0  6c 6b ea eb                                      bl #0x30e868
00873ab4  68 20 9d e5                                      ldr r2, [sp, #0x68]
00873ab8  41 36 06 e3                                      movw r3, #0x6641
00873abc  6d 34 47 e3                                      movt r3, #0x746d
00873ac0  03 00 52 e1                                      cmp r2, r3
00873ac4  08 40 86 e2                                      add r4, r6, #8
00873ac8  06 30 a0 e1                                      mov r3, r6
00873acc  41 00 00 0a                                      beq #0x873bd8
00873ad0  53 15 06 e3                                      movw r1, #0x6553
00873ad4  67 1d 46 e3                                      movt r1, #0x6d67
00873ad8  01 00 52 e1                                      cmp r2, r1
00873adc  4d 00 00 0a                                      beq #0x873c18
00873ae0  43 15 07 e3                                      movw r1, #0x7543
00873ae4  65 13 47 e3                                      movt r1, #0x7365
00873ae8  01 00 52 e1                                      cmp r2, r1
00873aec  cf ff ff 1a                                      bne #0x873a30
00873af0  00 20 e0 e3                                      mvn r2, #0
00873af4  00 a0 a0 e3                                      mov sl, #0
00873af8  5c 20 8d e5                                      str r2, [sp, #0x5c]
00873afc  58 20 8d e5                                      str r2, [sp, #0x58]
00873b00  60 a0 8d e5                                      str sl, [sp, #0x60]
00873b04  04 90 9b e7                                      ldr sb, [fp, r4]
00873b08  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
00873b0c  04 30 8d e5                                      str r3, [sp, #4]
00873b10  09 10 a0 e1                                      mov r1, sb
00873b14  04 00 40 e2                                      sub r0, r0, #4
00873b18  4b 6c ea eb                                      bl #0x30ec4c
00873b1c  0a 00 59 e1                                      cmp sb, sl
00873b20  0c 60 86 e2                                      add r6, r6, #0xc
00873b24  00 80 a0 e1                                      mov r8, r0
00873b28  04 30 9d e5                                      ldr r3, [sp, #4]
00873b2c  d9 ff ff da                                      ble #0x873a98
00873b30  0c 70 83 e2                                      add r7, r3, #0xc
00873b34  0a 40 a0 e1                                      mov r4, sl
00873b38  07 70 8b e0                                      add r7, fp, r7
00873b3c  58 a0 8d e2                                      add sl, sp, #0x58
00873b40  07 00 00 ea                                      b #0x873b64
00873b44  00 30 81 e5                                      str r3, [r1]
00873b48  04 30 90 e5                                      ldr r3, [r0, #4]
00873b4c  04 30 83 e2                                      add r3, r3, #4
00873b50  04 30 80 e5                                      str r3, [r0, #4]
00873b54  01 40 84 e2                                      add r4, r4, #1
00873b58  09 00 54 e1                                      cmp r4, sb
00873b5c  08 70 87 e0                                      add r7, r7, r8
00873b60  18 00 00 0a                                      beq #0x873bc8
00873b64  07 10 a0 e1                                      mov r1, r7
00873b68  08 20 a0 e1                                      mov r2, r8
00873b6c  0a 00 a0 e1                                      mov r0, sl
00873b70  3c 6b ea eb                                      bl #0x30e868
00873b74  60 30 9d e5                                      ldr r3, [sp, #0x60]
00873b78  34 20 95 e5                                      ldr r2, [r5, #0x34]
00873b7c  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
00873b80  70 30 8d e5                                      str r3, [sp, #0x70]
00873b84  00 20 92 e5                                      ldr r2, [r2]
00873b88  0c 10 a0 e3                                      mov r1, #0xc
00873b8c  91 20 20 e0                                      mla r0, r1, r0, r2
00873b90  06 00 90 e9                                      ldmib r0, {r1, r2}
00873b94  02 00 51 e1                                      cmp r1, r2
00873b98  e9 ff ff 1a                                      bne #0x873b44
00873b9c  20 20 9d e5                                      ldr r2, [sp, #0x20]
00873ba0  26 fc ff eb                                      bl #0x872c40
00873ba4  ea ff ff ea                                      b #0x873b54
00873ba8  18 30 95 e5                                      ldr r3, [r5, #0x18]
00873bac  00 10 a0 e3                                      mov r1, #0
00873bb0  01 20 a0 e1                                      mov r2, r1
00873bb4  03 00 a0 e1                                      mov r0, r3
00873bb8  00 30 93 e5                                      ldr r3, [r3]
00873bbc  0f e0 a0 e1                                      mov lr, pc
00873bc0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00873bc4  4e ff ff ea                                      b #0x873904
00873bc8  06 60 88 e0                                      add r6, r8, r6
00873bcc  01 40 44 e2                                      sub r4, r4, #1
00873bd0  98 64 26 e0                                      mla r6, r8, r4, r6
00873bd4  af ff ff ea                                      b #0x873a98
00873bd8  20 30 95 e5                                      ldr r3, [r5, #0x20]
00873bdc  04 10 8b e0                                      add r1, fp, r4
00873be0  18 20 83 e5                                      str r2, [r3, #0x18]
00873be4  20 30 95 e5                                      ldr r3, [r5, #0x20]
00873be8  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
00873bec  1c 20 83 e5                                      str r2, [r3, #0x1c]
00873bf0  20 00 95 e5                                      ldr r0, [r5, #0x20]
00873bf4  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
00873bf8  20 00 80 e2                                      add r0, r0, #0x20
00873bfc  19 6b ea eb                                      bl #0x30e868
00873c00  6c 60 9d e5                                      ldr r6, [sp, #0x6c]
00873c04  20 30 95 e5                                      ldr r3, [r5, #0x20]
00873c08  10 10 a0 e3                                      mov r1, #0x10
00873c0c  06 60 84 e0                                      add r6, r4, r6
00873c10  ba 12 c3 e1                                      strh r1, [r3, #0x2a]
00873c14  9f ff ff ea                                      b #0x873a98
00873c18  04 c0 9b e7                                      ldr ip, [fp, r4]
00873c1c  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
00873c20  04 60 8d e5                                      str r6, [sp, #4]
00873c24  0c 10 a0 e1                                      mov r1, ip
00873c28  04 00 40 e2                                      sub r0, r0, #4
00873c2c  08 c0 8d e5                                      str ip, [sp, #8]
00873c30  05 6c ea eb                                      bl #0x30ec4c
00873c34  08 c0 9d e5                                      ldr ip, [sp, #8]
00873c38  00 90 a0 e1                                      mov sb, r0
00873c3c  09 20 a0 e1                                      mov r2, sb
00873c40  0c 10 a0 e1                                      mov r1, ip
00873c44  14 00 95 e5                                      ldr r0, [r5, #0x14]
00873c48  57 f9 ff eb                                      bl #0x8721ac
00873c4c  14 20 95 e5                                      ldr r2, [r5, #0x14]
00873c50  30 00 82 e2                                      add r0, r2, #0x30
00873c54  58 10 82 e2                                      add r1, r2, #0x58
00873c58  24 00 85 e5                                      str r0, [r5, #0x24]
00873c5c  34 10 85 e5                                      str r1, [r5, #0x34]
00873c60  34 70 92 e5                                      ldr r7, [r2, #0x34]
00873c64  08 10 9d e9                                      ldmib sp, {r3, ip}
00873c68  00 00 57 e3                                      cmp r7, #0
00873c6c  52 00 00 0a                                      beq #0x873dbc
00873c70  00 00 5c e3                                      cmp ip, #0
00873c74  0c 60 86 e2                                      add r6, r6, #0xc
00873c78  86 ff ff da                                      ble #0x873a98
00873c7c  0c 30 83 e2                                      add r3, r3, #0xc
00873c80  00 40 a0 e3                                      mov r4, #0
00873c84  14 60 8d e5                                      str r6, [sp, #0x14]
00873c88  03 a0 8b e0                                      add sl, fp, r3
00873c8c  04 80 a0 e1                                      mov r8, r4
00873c90  0c 60 a0 e1                                      mov r6, ip
00873c94  08 00 00 ea                                      b #0x873cbc
00873c98  00 20 81 e5                                      str r2, [r1]
00873c9c  04 30 90 e5                                      ldr r3, [r0, #4]
00873ca0  04 30 83 e2                                      add r3, r3, #4
00873ca4  04 30 80 e5                                      str r3, [r0, #4]
00873ca8  01 80 88 e2                                      add r8, r8, #1
00873cac  06 00 58 e1                                      cmp r8, r6
00873cb0  09 a0 8a e0                                      add sl, sl, sb
00873cb4  0c 40 84 e2                                      add r4, r4, #0xc
00873cb8  0f 00 00 0a                                      beq #0x873cfc
00873cbc  07 00 a0 e1                                      mov r0, r7
00873cc0  0a 10 a0 e1                                      mov r1, sl
00873cc4  09 20 a0 e1                                      mov r2, sb
00873cc8  e6 6a ea eb                                      bl #0x30e868
00873ccc  34 30 95 e5                                      ldr r3, [r5, #0x34]
00873cd0  00 20 a0 e3                                      mov r2, #0
00873cd4  70 20 8d e5                                      str r2, [sp, #0x70]
00873cd8  00 00 93 e5                                      ldr r0, [r3]
00873cdc  18 70 87 e2                                      add r7, r7, #0x18
00873ce0  04 00 80 e0                                      add r0, r0, r4
00873ce4  0a 00 90 e9                                      ldmib r0, {r1, r3}
00873ce8  03 00 51 e1                                      cmp r1, r3
00873cec  e9 ff ff 1a                                      bne #0x873c98
00873cf0  20 20 9d e5                                      ldr r2, [sp, #0x20]
00873cf4  d1 fb ff eb                                      bl #0x872c40
00873cf8  ea ff ff ea                                      b #0x873ca8
00873cfc  14 60 9d e5                                      ldr r6, [sp, #0x14]
00873d00  01 80 48 e2                                      sub r8, r8, #1
00873d04  06 60 89 e0                                      add r6, sb, r6
00873d08  99 68 26 e0                                      mla r6, sb, r8, r6
00873d0c  61 ff ff ea                                      b #0x873a98
00873d10  04 80 9b e7                                      ldr r8, [fp, r4]
00873d14  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
00873d18  0c 60 86 e2                                      add r6, r6, #0xc
00873d1c  08 10 a0 e1                                      mov r1, r8
00873d20  04 00 40 e2                                      sub r0, r0, #4
00873d24  c8 6b ea eb                                      bl #0x30ec4c
00873d28  08 10 a0 e1                                      mov r1, r8
00873d2c  00 70 a0 e1                                      mov r7, r0
00873d30  14 00 95 e5                                      ldr r0, [r5, #0x14]
00873d34  63 fb ff eb                                      bl #0x872ac8
00873d38  14 30 95 e5                                      ldr r3, [r5, #0x14]
00873d3c  38 30 83 e2                                      add r3, r3, #0x38
00873d40  03 00 a0 e1                                      mov r0, r3
00873d44  28 30 8d e5                                      str r3, [sp, #0x28]
00873d48  dc 39 00 eb                                      bl #0x8824c0
00873d4c  00 00 50 e3                                      cmp r0, #0
00873d50  50 ff ff 0a                                      beq #0x873a98
00873d54  00 40 a0 e3                                      mov r4, #0
00873d58  01 30 a0 e3                                      mov r3, #1
00873d5c  00 00 58 e3                                      cmp r8, #0
00873d60  5c 30 8d e5                                      str r3, [sp, #0x5c]
00873d64  58 40 8d e5                                      str r4, [sp, #0x58]
00873d68  4a ff ff da                                      ble #0x873a98
00873d6c  05 90 a0 e1                                      mov sb, r5
00873d70  58 a0 8d e2                                      add sl, sp, #0x58
00873d74  28 50 9d e5                                      ldr r5, [sp, #0x28]
00873d78  03 00 00 ea                                      b #0x873d8c
00873d7c  01 40 84 e2                                      add r4, r4, #1
00873d80  08 00 54 e1                                      cmp r4, r8
00873d84  07 60 86 e0                                      add r6, r6, r7
00873d88  30 00 00 0a                                      beq #0x873e50
00873d8c  06 10 8b e0                                      add r1, fp, r6
00873d90  07 20 a0 e1                                      mov r2, r7
00873d94  0a 00 a0 e1                                      mov r0, sl
00873d98  b2 6a ea eb                                      bl #0x30e868
00873d9c  05 00 a0 e1                                      mov r0, r5
00873da0  04 10 a0 e1                                      mov r1, r4
00873da4  0a 20 a0 e1                                      mov r2, sl
00873da8  ee 39 00 eb                                      bl #0x882568
00873dac  05 00 a0 e1                                      mov r0, r5
00873db0  c2 39 00 eb                                      bl #0x8824c0
00873db4  00 00 50 e3                                      cmp r0, #0
00873db8  ef ff ff 1a                                      bne #0x873d7c
00873dbc  38 40 9d e5                                      ldr r4, [sp, #0x38]
00873dc0  3c 70 9d e5                                      ldr r7, [sp, #0x3c]
00873dc4  d8 fe ff ea                                      b #0x87392c
00873dc8  04 80 9b e7                                      ldr r8, [fp, r4]
00873dcc  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
00873dd0  08 10 a0 e1                                      mov r1, r8
00873dd4  04 00 40 e2                                      sub r0, r0, #4
00873dd8  9b 6b ea eb                                      bl #0x30ec4c
00873ddc  00 70 a0 e1                                      mov r7, r0
00873de0  c4 71 ea eb                                      bl #0x3104f8
00873de4  00 00 50 e3                                      cmp r0, #0
00873de8  2c 00 8d e5                                      str r0, [sp, #0x2c]
00873dec  f2 ff ff 0a                                      beq #0x873dbc
00873df0  00 00 58 e3                                      cmp r8, #0
00873df4  0c 60 86 e2                                      add r6, r6, #0xc
00873df8  26 ff ff da                                      ble #0x873a98
00873dfc  05 90 a0 e1                                      mov sb, r5
00873e00  00 40 a0 e3                                      mov r4, #0
00873e04  28 a0 9d e5                                      ldr sl, [sp, #0x28]
00873e08  00 50 a0 e1                                      mov r5, r0
00873e0c  03 00 00 ea                                      b #0x873e20
00873e10  01 40 84 e2                                      add r4, r4, #1
00873e14  08 00 54 e1                                      cmp r4, r8
00873e18  07 60 86 e0                                      add r6, r6, r7
00873e1c  0b 00 00 0a                                      beq #0x873e50
00873e20  07 20 a0 e1                                      mov r2, r7
00873e24  06 10 8b e0                                      add r1, fp, r6
00873e28  05 00 a0 e1                                      mov r0, r5
00873e2c  8d 6a ea eb                                      bl #0x30e868
00873e30  0a 00 a0 e1                                      mov r0, sl
00873e34  05 10 a0 e1                                      mov r1, r5
00873e38  99 3f 00 eb                                      bl #0x883ca4
00873e3c  0a 00 a0 e1                                      mov r0, sl
00873e40  9e 39 00 eb                                      bl #0x8824c0
00873e44  00 00 50 e3                                      cmp r0, #0
00873e48  f0 ff ff 1a                                      bne #0x873e10
00873e4c  da ff ff ea                                      b #0x873dbc
00873e50  09 50 a0 e1                                      mov r5, sb
00873e54  0f ff ff ea                                      b #0x873a98
00873e58  04 80 9b e7                                      ldr r8, [fp, r4]
00873e5c  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
00873e60  08 10 a0 e1                                      mov r1, r8
00873e64  04 00 40 e2                                      sub r0, r0, #4
00873e68  77 6b ea eb                                      bl #0x30ec4c
00873e6c  00 70 a0 e1                                      mov r7, r0
00873e70  a0 71 ea eb                                      bl #0x3104f8
00873e74  00 00 50 e3                                      cmp r0, #0
00873e78  30 00 8d e5                                      str r0, [sp, #0x30]
00873e7c  ce ff ff 0a                                      beq #0x873dbc
00873e80  00 00 58 e3                                      cmp r8, #0
00873e84  0c 60 86 e2                                      add r6, r6, #0xc
00873e88  02 ff ff da                                      ble #0x873a98
00873e8c  05 90 a0 e1                                      mov sb, r5
00873e90  00 40 a0 e3                                      mov r4, #0
00873e94  28 a0 9d e5                                      ldr sl, [sp, #0x28]
00873e98  00 50 a0 e1                                      mov r5, r0
00873e9c  03 00 00 ea                                      b #0x873eb0
00873ea0  01 40 84 e2                                      add r4, r4, #1
00873ea4  08 00 54 e1                                      cmp r4, r8
00873ea8  07 60 86 e0                                      add r6, r6, r7
00873eac  e7 ff ff 0a                                      beq #0x873e50
00873eb0  07 20 a0 e1                                      mov r2, r7
00873eb4  06 10 8b e0                                      add r1, fp, r6
00873eb8  05 00 a0 e1                                      mov r0, r5
00873ebc  69 6a ea eb                                      bl #0x30e868
00873ec0  0a 00 a0 e1                                      mov r0, sl
00873ec4  05 10 a0 e1                                      mov r1, r5
00873ec8  be 3e 00 eb                                      bl #0x8839c8
00873ecc  0a 00 a0 e1                                      mov r0, sl
00873ed0  7a 39 00 eb                                      bl #0x8824c0
00873ed4  00 00 50 e3                                      cmp r0, #0
00873ed8  f0 ff ff 1a                                      bne #0x873ea0
00873edc  b6 ff ff ea                                      b #0x873dbc
00873ee0  04 90 9b e7                                      ldr sb, [fp, r4]
00873ee4  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
00873ee8  04 60 8d e5                                      str r6, [sp, #4]
00873eec  09 10 a0 e1                                      mov r1, sb
00873ef0  04 00 40 e2                                      sub r0, r0, #4
00873ef4  54 6b ea eb                                      bl #0x30ec4c
00873ef8  00 a0 a0 e1                                      mov sl, r0
00873efc  09 10 a0 e1                                      mov r1, sb
00873f00  0a 20 a0 e1                                      mov r2, sl
00873f04  14 00 95 e5                                      ldr r0, [r5, #0x14]
00873f08  93 f8 ff eb                                      bl #0x87215c
00873f0c  14 10 95 e5                                      ldr r1, [r5, #0x14]
00873f10  50 20 81 e2                                      add r2, r1, #0x50
00873f14  2c 20 85 e5                                      str r2, [r5, #0x2c]
00873f18  54 40 91 e5                                      ldr r4, [r1, #0x54]
00873f1c  04 30 9d e5                                      ldr r3, [sp, #4]
00873f20  00 00 54 e3                                      cmp r4, #0
00873f24  a4 ff ff 0a                                      beq #0x873dbc
00873f28  00 00 59 e3                                      cmp sb, #0
00873f2c  0c 60 86 e2                                      add r6, r6, #0xc
00873f30  d8 fe ff da                                      ble #0x873a98
00873f34  0c 30 83 e2                                      add r3, r3, #0xc
00873f38  03 80 8b e0                                      add r8, fp, r3
00873f3c  00 70 a0 e3                                      mov r7, #0
00873f40  04 00 a0 e1                                      mov r0, r4
00873f44  08 10 a0 e1                                      mov r1, r8
00873f48  01 70 87 e2                                      add r7, r7, #1
00873f4c  0a 20 a0 e1                                      mov r2, sl
00873f50  44 6a ea eb                                      bl #0x30e868
00873f54  09 00 57 e1                                      cmp r7, sb
00873f58  24 40 84 e2                                      add r4, r4, #0x24
00873f5c  0a 80 88 e0                                      add r8, r8, sl
00873f60  f6 ff ff 1a                                      bne #0x873f40
00873f64  06 60 8a e0                                      add r6, sl, r6
00873f68  01 70 47 e2                                      sub r7, r7, #1
00873f6c  9a 67 26 e0                                      mla r6, sl, r7, r6
00873f70  c8 fe ff ea                                      b #0x873a98
00873f74  04 40 9b e7                                      ldr r4, [fp, r4]
00873f78  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
00873f7c  04 60 8d e5                                      str r6, [sp, #4]
00873f80  04 10 a0 e1                                      mov r1, r4
00873f84  04 00 40 e2                                      sub r0, r0, #4
00873f88  18 40 8d e5                                      str r4, [sp, #0x18]
00873f8c  2e 6b ea eb                                      bl #0x30ec4c
00873f90  18 10 9d e5                                      ldr r1, [sp, #0x18]
00873f94  00 a0 a0 e1                                      mov sl, r0
00873f98  14 00 95 e5                                      ldr r0, [r5, #0x14]
00873f9c  79 f8 ff eb                                      bl #0x872188
00873fa0  14 20 95 e5                                      ldr r2, [r5, #0x14]
00873fa4  48 10 82 e2                                      add r1, r2, #0x48
00873fa8  28 10 85 e5                                      str r1, [r5, #0x28]
00873fac  4c 10 92 e5                                      ldr r1, [r2, #0x4c]
00873fb0  04 30 9d e5                                      ldr r3, [sp, #4]
00873fb4  00 00 51 e3                                      cmp r1, #0
00873fb8  7f ff ff 0a                                      beq #0x873dbc
00873fbc  94 80 8d e2                                      add r8, sp, #0x94
00873fc0  70 20 82 e2                                      add r2, r2, #0x70
00873fc4  38 20 85 e5                                      str r2, [r5, #0x38]
00873fc8  00 40 a0 e3                                      mov r4, #0
00873fcc  00 20 e0 e3                                      mvn r2, #0
00873fd0  08 00 a0 e1                                      mov r0, r8
00873fd4  10 10 a0 e3                                      mov r1, #0x10
00873fd8  74 20 8d e5                                      str r2, [sp, #0x74]
00873fdc  04 30 8d e5                                      str r3, [sp, #4]
00873fe0  78 40 cd e5                                      strb r4, [sp, #0x78]
00873fe4  a4 80 8d e5                                      str r8, [sp, #0xa4]
00873fe8  a8 80 8d e5                                      str r8, [sp, #0xa8]
00873fec  ab ec ff eb                                      bl #0x86f2a0
00873ff0  18 20 9d e5                                      ldr r2, [sp, #0x18]
00873ff4  0c 60 86 e2                                      add r6, r6, #0xc
00873ff8  04 00 52 e1                                      cmp r2, r4
00873ffc  a4 20 9d e5                                      ldr r2, [sp, #0xa4]
00874000  00 40 c2 e5                                      strb r4, [r2]
00874004  04 30 9d e5                                      ldr r3, [sp, #4]
00874008  a8 00 9d d5                                      ldrle r0, [sp, #0xa8]
0087400c  29 00 00 da                                      ble #0x8740b8
00874010  0c 30 83 e2                                      add r3, r3, #0xc
00874014  03 70 8b e0                                      add r7, fp, r3
00874018  14 60 8d e5                                      str r6, [sp, #0x14]
0087401c  1c b0 8d e5                                      str fp, [sp, #0x1c]
00874020  40 60 9d e5                                      ldr r6, [sp, #0x40]
00874024  34 b0 9d e5                                      ldr fp, [sp, #0x34]
00874028  00 40 a0 e3                                      mov r4, #0
0087402c  04 90 a0 e1                                      mov sb, r4
00874030  07 10 a0 e1                                      mov r1, r7
00874034  0a 20 a0 e1                                      mov r2, sl
00874038  0b 00 a0 e1                                      mov r0, fp
0087403c  09 6a ea eb                                      bl #0x30e868
00874040  28 30 95 e5                                      ldr r3, [r5, #0x28]
00874044  74 20 9d e5                                      ldr r2, [sp, #0x74]
00874048  06 00 a0 e1                                      mov r0, r6
0087404c  04 30 93 e5                                      ldr r3, [r3, #4]
00874050  0a 70 87 e0                                      add r7, r7, sl
00874054  04 21 83 e7                                      str r2, [r3, r4, lsl #2]
00874058  7d 67 ea eb                                      bl #0x30de54
0087405c  06 10 a0 e1                                      mov r1, r6
00874060  00 20 86 e0                                      add r2, r6, r0
00874064  08 00 a0 e1                                      mov r0, r8
00874068  aa f5 ff eb                                      bl #0x871718
0087406c  38 00 95 e5                                      ldr r0, [r5, #0x38]
00874070  08 10 a0 e1                                      mov r1, r8
00874074  ad fd ff eb                                      bl #0x873730
00874078  00 40 80 e5                                      str r4, [r0]
0087407c  a8 00 9d e5                                      ldr r0, [sp, #0xa8]
00874080  a4 30 9d e5                                      ldr r3, [sp, #0xa4]
00874084  01 40 84 e2                                      add r4, r4, #1
00874088  03 00 50 e1                                      cmp r0, r3
0087408c  00 90 c0 15                                      strbne sb, [r0]
00874090  a8 00 9d 15                                      ldrne r0, [sp, #0xa8]
00874094  18 30 9d e5                                      ldr r3, [sp, #0x18]
00874098  a4 00 8d 15                                      strne r0, [sp, #0xa4]
0087409c  03 00 54 e1                                      cmp r4, r3
008740a0  e2 ff ff 1a                                      bne #0x874030
008740a4  14 60 9d e5                                      ldr r6, [sp, #0x14]
008740a8  01 30 43 e2                                      sub r3, r3, #1
008740ac  1c b0 9d e5                                      ldr fp, [sp, #0x1c]
008740b0  06 60 8a e0                                      add r6, sl, r6
008740b4  9a 63 26 e0                                      mla r6, sl, r3, r6
008740b8  08 00 50 e1                                      cmp r0, r8
008740bc  75 fe ff 0a                                      beq #0x873a98
008740c0  00 00 50 e3                                      cmp r0, #0
008740c4  73 fe ff 0a                                      beq #0x873a98
008740c8  dd 70 ea eb                                      bl #0x310444
008740cc  71 fe ff ea                                      b #0x873a98
008740d0  04 40 9b e7                                      ldr r4, [fp, r4]
008740d4  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
008740d8  04 30 8d e5                                      str r3, [sp, #4]
008740dc  04 10 a0 e1                                      mov r1, r4
008740e0  04 00 40 e2                                      sub r0, r0, #4
008740e4  14 40 8d e5                                      str r4, [sp, #0x14]
008740e8  d7 6a ea eb                                      bl #0x30ec4c
008740ec  44 00 8d e5                                      str r0, [sp, #0x44]
008740f0  18 10 9d e5                                      ldr r1, [sp, #0x18]
008740f4  14 00 95 e5                                      ldr r0, [r5, #0x14]
008740f8  61 fa ff eb                                      bl #0x872a84
008740fc  14 10 95 e5                                      ldr r1, [r5, #0x14]
00874100  14 00 9d e5                                      ldr r0, [sp, #0x14]
00874104  00 20 a0 e3                                      mov r2, #0
00874108  64 10 81 e2                                      add r1, r1, #0x64
0087410c  30 10 85 e5                                      str r1, [r5, #0x30]
00874110  00 00 50 e3                                      cmp r0, #0
00874114  00 10 e0 e3                                      mvn r1, #0
00874118  0c 60 86 e2                                      add r6, r6, #0xc
0087411c  60 10 8d e5                                      str r1, [sp, #0x60]
00874120  64 20 cd e5                                      strb r2, [sp, #0x64]
00874124  58 20 8d e5                                      str r2, [sp, #0x58]
00874128  5c 20 8d e5                                      str r2, [sp, #0x5c]
0087412c  04 30 9d e5                                      ldr r3, [sp, #4]
00874130  58 fe ff da                                      ble #0x873a98
00874134  4c 60 8d e5                                      str r6, [sp, #0x4c]
00874138  44 60 9d e5                                      ldr r6, [sp, #0x44]
0087413c  0c 30 83 e2                                      add r3, r3, #0xc
00874140  58 a0 8d e2                                      add sl, sp, #0x58
00874144  03 90 8b e0                                      add sb, fp, r3
00874148  02 40 a0 e1                                      mov r4, r2
0087414c  50 b0 8d e5                                      str fp, [sp, #0x50]
00874150  1c a0 8d e5                                      str sl, [sp, #0x1c]
00874154  09 10 a0 e1                                      mov r1, sb
00874158  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0087415c  06 20 a0 e1                                      mov r2, r6
00874160  c0 69 ea eb                                      bl #0x30e868
00874164  30 30 95 e5                                      ldr r3, [r5, #0x30]
00874168  58 a0 9d e5                                      ldr sl, [sp, #0x58]
0087416c  0c 10 a0 e3                                      mov r1, #0xc
00874170  00 b0 93 e5                                      ldr fp, [r3]
00874174  91 0a 0a e0                                      mul sl, r1, sl
00874178  0a 70 8b e0                                      add r7, fp, sl
0087417c  04 80 97 e5                                      ldr r8, [r7, #4]
00874180  08 30 97 e5                                      ldr r3, [r7, #8]
00874184  03 00 58 e1                                      cmp r8, r3
00874188  12 00 00 0a                                      beq #0x8741d8
0087418c  60 30 9d e5                                      ldr r3, [sp, #0x60]
00874190  00 30 88 e5                                      str r3, [r8]
00874194  64 30 dd e5                                      ldrb r3, [sp, #0x64]
00874198  04 30 c8 e5                                      strb r3, [r8, #4]
0087419c  04 30 97 e5                                      ldr r3, [r7, #4]
008741a0  08 30 83 e2                                      add r3, r3, #8
008741a4  04 30 87 e5                                      str r3, [r7, #4]
008741a8  14 10 9d e5                                      ldr r1, [sp, #0x14]
008741ac  01 40 84 e2                                      add r4, r4, #1
008741b0  06 90 89 e0                                      add sb, sb, r6
008741b4  01 00 54 e1                                      cmp r4, r1
008741b8  e5 ff ff 1a                                      bne #0x874154
008741bc  44 20 9d e5                                      ldr r2, [sp, #0x44]
008741c0  4c 60 9d e5                                      ldr r6, [sp, #0x4c]
008741c4  01 40 44 e2                                      sub r4, r4, #1
008741c8  50 b0 9d e5                                      ldr fp, [sp, #0x50]
008741cc  06 60 82 e0                                      add r6, r2, r6
008741d0  92 64 26 e0                                      mla r6, r2, r4, r6
008741d4  2f fe ff ea                                      b #0x873a98
008741d8  0a 30 9b e7                                      ldr r3, [fp, sl]
008741dc  08 30 63 e0                                      rsb r3, r3, r8
008741e0  c3 31 a0 e1                                      asr r3, r3, #3
008741e4  01 00 53 e3                                      cmp r3, #1
008741e8  03 20 83 20                                      addhs r2, r3, r3
008741ec  01 20 83 32                                      addlo r2, r3, #1
008741f0  1e 02 72 e3                                      cmn r2, #0xe0000001
008741f4  03 00 00 8a                                      bhi #0x874208
008741f8  02 00 53 e1                                      cmp r3, r2
008741fc  82 21 a0 91                                      lslls r2, r2, #3
00874200  48 20 8d 95                                      strls r2, [sp, #0x48]
00874204  01 00 00 9a                                      bls #0x874210
00874208  07 20 e0 e3                                      mvn r2, #7
0087420c  48 20 8d e5                                      str r2, [sp, #0x48]
00874210  48 00 9d e5                                      ldr r0, [sp, #0x48]
00874214  00 10 a0 e3                                      mov r1, #0
00874218  0a 71 ea eb                                      bl #0x310648
0087421c  0a 20 9b e7                                      ldr r2, [fp, sl]
00874220  00 30 a0 e1                                      mov r3, r0
00874224  08 80 62 e0                                      rsb r8, r2, r8
00874228  c8 81 a0 e1                                      asr r8, r8, #3
0087422c  00 00 58 e3                                      cmp r8, #0
00874230  00 80 a0 d1                                      movle r8, r0
00874234  0e 00 00 da                                      ble #0x874274
00874238  54 90 8d e5                                      str sb, [sp, #0x54]
0087423c  08 00 a0 e1                                      mov r0, r8
00874240  00 c0 a0 e3                                      mov ip, #0
00874244  02 90 a0 e1                                      mov sb, r2
00874248  09 10 a0 e1                                      mov r1, sb
0087424c  0c e0 b1 e7                                      ldr lr, [r1, ip]!
00874250  03 20 a0 e1                                      mov r2, r3
00874254  01 00 50 e2                                      subs r0, r0, #1
00874258  0c e0 a2 e7                                      str lr, [r2, ip]!
0087425c  04 10 d1 e5                                      ldrb r1, [r1, #4]
00874260  08 c0 8c e2                                      add ip, ip, #8
00874264  04 10 c2 e5                                      strb r1, [r2, #4]
00874268  f6 ff ff 1a                                      bne #0x874248
0087426c  54 90 9d e5                                      ldr sb, [sp, #0x54]
00874270  88 81 83 e0                                      add r8, r3, r8, lsl #3
00874274  60 20 9d e5                                      ldr r2, [sp, #0x60]
00874278  08 10 88 e2                                      add r1, r8, #8
0087427c  00 20 88 e5                                      str r2, [r8]
00874280  64 20 dd e5                                      ldrb r2, [sp, #0x64]
00874284  04 20 c8 e5                                      strb r2, [r8, #4]
00874288  0a 00 9b e7                                      ldr r0, [fp, sl]
0087428c  08 10 8d e5                                      str r1, [sp, #8]
00874290  04 30 8d e5                                      str r3, [sp, #4]
00874294  6a 70 ea eb                                      bl #0x310444
00874298  04 30 9d e5                                      ldr r3, [sp, #4]
0087429c  48 00 9d e5                                      ldr r0, [sp, #0x48]
008742a0  0a 30 8b e7                                      str r3, [fp, sl]
008742a4  00 20 83 e0                                      add r2, r3, r0
008742a8  08 20 87 e5                                      str r2, [r7, #8]
008742ac  08 10 9d e5                                      ldr r1, [sp, #8]
008742b0  04 10 87 e5                                      str r1, [r7, #4]
008742b4  bb ff ff ea                                      b #0x8741a8
008742b8  38 40 9d e5                                      ldr r4, [sp, #0x38]
008742bc  3c 70 9d e5                                      ldr r7, [sp, #0x3c]
008742c0  05 00 a0 e1                                      mov r0, r5
008742c4  89 fa ff eb                                      bl #0x872cf0
008742c8  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
008742cc  5c 70 ea eb                                      bl #0x310444
008742d0  30 00 9d e5                                      ldr r0, [sp, #0x30]
008742d4  5a 70 ea eb                                      bl #0x310444
008742d8  24 00 9d e5                                      ldr r0, [sp, #0x24]
008742dc  58 70 ea eb                                      bl #0x310444
008742e0  01 00 a0 e3                                      mov r0, #1
008742e4  91 fd ff ea                                      b #0x873930
008742e8  08 68 ea eb                                      bl #0x30e310
; mapping-symbol data/literal pool
008742ec  c4 11 12 00 ac 40 00 00                          .byte 0xc4, 0x11, 0x12, 0x00, 0xac, 0x40, 0x00, 0x00


; PACKAGE FUNCTION native_subdecoder_decode
; ELF VA 0x00885c1c, range_size=296, SHA-256=a3de1e57db993e85cc4f46c895e5e1670be2a01c19c217ea6d8cbdbfa1cac579
; Original assembly source vox_VoxNativeSubDecoder-445e1a438638-001.asm lines 1779-1852
; FUNCTION 0x00885c1c, declared_size=296, range_size=296, mode=arm
; class-group: vox::VoxNativeSubDecoder
; alias: _ZN3vox19VoxNativeSubDecoder6DecodeEPvi
; demangled: vox::VoxNativeSubDecoder::Decode(void*, int)
; decoder-mode: arm
00885c1c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00885c20  f2 81 d0 e1                                      ldrsh r8, [r0, #0x12]
00885c24  fa 30 d0 e1                                      ldrsh r3, [r0, #0xa]
00885c28  00 40 a0 e1                                      mov r4, r0
00885c2c  c8 81 a0 e1                                      asr r8, r8, #3
00885c30  93 08 08 e0                                      mul r8, r3, r8
00885c34  01 a0 a0 e1                                      mov sl, r1
00885c38  02 00 a0 e1                                      mov r0, r2
00885c3c  08 10 a0 e1                                      mov r1, r8
00885c40  02 60 a0 e1                                      mov r6, r2
00885c44  2e 23 ea eb                                      bl #0x30e904
00885c48  64 71 94 e5                                      ldr r7, [r4, #0x164]
00885c4c  06 60 61 e0                                      rsb r6, r1, r6
00885c50  00 00 57 e3                                      cmp r7, #0
00885c54  06 00 00 ba                                      blt #0x885c74
00885c58  08 10 a0 e1                                      mov r1, r8
00885c5c  06 00 a0 e1                                      mov r0, r6
00885c60  8f 21 ea eb                                      bl #0x30e2a4
00885c64  2c 31 94 e5                                      ldr r3, [r4, #0x12c]
00885c68  03 00 80 e0                                      add r0, r0, r3
00885c6c  00 00 57 e1                                      cmp r7, r0
00885c70  1f 00 00 da                                      ble #0x885cf4
00885c74  94 30 94 e5                                      ldr r3, [r4, #0x94]
00885c78  01 00 53 e3                                      cmp r3, #1
00885c7c  0f 00 00 da                                      ble #0x885cc0
00885c80  0a 10 a0 e1                                      mov r1, sl
00885c84  06 20 a0 e1                                      mov r2, r6
00885c88  04 00 a0 e1                                      mov r0, r4
00885c8c  71 fd ff eb                                      bl #0x885258
00885c90  00 50 a0 e1                                      mov r5, r0
00885c94  bc 30 94 e5                                      ldr r3, [r4, #0xbc]
00885c98  01 00 53 e3                                      cmp r3, #1
00885c9c  1e 00 00 da                                      ble #0x885d1c
00885ca0  00 31 94 e5                                      ldr r3, [r4, #0x100]
00885ca4  01 00 53 e3                                      cmp r3, #1
00885ca8  21 00 00 da                                      ble #0x885d34
00885cac  44 31 94 e5                                      ldr r3, [r4, #0x144]
00885cb0  01 00 53 e3                                      cmp r3, #1
00885cb4  13 00 00 da                                      ble #0x885d08
00885cb8  05 00 a0 e1                                      mov r0, r5
00885cbc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00885cc0  f3 ff ff 1a                                      bne #0x885c94
00885cc4  50 31 94 e5                                      ldr r3, [r4, #0x150]
00885cc8  00 00 53 e3                                      cmp r3, #0
00885ccc  eb ff ff ca                                      bgt #0x885c80
00885cd0  04 30 a0 e1                                      mov r3, r4
00885cd4  20 c1 93 e4                                      ldr ip, [r3], #0x120
00885cd8  0a 10 a0 e1                                      mov r1, sl
00885cdc  06 20 a0 e1                                      mov r2, r6
00885ce0  04 00 a0 e1                                      mov r0, r4
00885ce4  0f e0 a0 e1                                      mov lr, pc
00885ce8  18 f0 9c e5                                      ldr pc, [ip, #0x18]
00885cec  00 50 a0 e1                                      mov r5, r0
00885cf0  e7 ff ff ea                                      b #0x885c94
00885cf4  07 70 63 e0                                      rsb r7, r3, r7
00885cf8  68 71 84 e5                                      str r7, [r4, #0x168]
00885cfc  04 00 a0 e1                                      mov r0, r4
00885d00  8e fe ff eb                                      bl #0x885740
00885d04  da ff ff ea                                      b #0x885c74
00885d08  04 00 a0 e1                                      mov r0, r4
00885d0c  12 1e 84 e2                                      add r1, r4, #0x120
00885d10  87 fa ff eb                                      bl #0x884734
00885d14  05 00 a0 e1                                      mov r0, r5
00885d18  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00885d1c  04 00 a0 e1                                      mov r0, r4
00885d20  98 10 84 e2                                      add r1, r4, #0x98
00885d24  82 fa ff eb                                      bl #0x884734
00885d28  00 31 94 e5                                      ldr r3, [r4, #0x100]
00885d2c  01 00 53 e3                                      cmp r3, #1
00885d30  dd ff ff ca                                      bgt #0x885cac
00885d34  04 00 a0 e1                                      mov r0, r4
00885d38  dc 10 84 e2                                      add r1, r4, #0xdc
00885d3c  7c fa ff eb                                      bl #0x884734
00885d40  d9 ff ff ea                                      b #0x885cac


; PACKAGE FUNCTION c_file_stream_read
; ELF VA 0x0088885c, range_size=356, SHA-256=2ed63277aed897b755353380e1a3e6a6f6b8c73a7a3204987444d5e62f1b3650
; Original assembly source vox_StreamCFileCursor-01879ad8bca1-001.asm lines 67-155
; FUNCTION 0x0088885c, declared_size=356, range_size=356, mode=arm
; class-group: vox::StreamCFileCursor
; alias: _ZN3vox17StreamCFileCursor4ReadEPhi
; demangled: vox::StreamCFileCursor::Read(unsigned char*, int)
; decoder-mode: arm
0088885c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00888860  08 30 90 e5                                      ldr r3, [r0, #8]
00888864  0c d0 4d e2                                      sub sp, sp, #0xc
00888868  00 40 a0 e1                                      mov r4, r0
0088886c  00 00 53 e3                                      cmp r3, #0
00888870  00 00 52 13                                      cmpne r2, #0
00888874  02 50 a0 e1                                      mov r5, r2
00888878  01 90 a0 e1                                      mov sb, r1
0088887c  00 60 a0 d3                                      movle r6, #0
00888880  01 60 a0 c3                                      movgt r6, #1
00888884  44 00 00 da                                      ble #0x88899c
00888888  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0088888c  00 00 52 e3                                      cmp r2, #0
00888890  44 00 00 ba                                      blt #0x8889a8
00888894  10 a0 08 e3                                      movw sl, #0x8010
00888898  14 70 08 e3                                      movw r7, #0x8014
0088889c  07 30 94 e7                                      ldr r3, [r4, r7]
008888a0  0a 80 94 e7                                      ldr r8, [r4, sl]
008888a4  00 60 a0 e3                                      mov r6, #0
008888a8  18 b0 08 e3                                      movw fp, #0x8018
008888ac  08 80 63 e0                                      rsb r8, r3, r8
008888b0  10 30 84 e2                                      add r3, r4, #0x10
008888b4  04 30 8d e5                                      str r3, [sp, #4]
008888b8  0c 00 00 ea                                      b #0x8888f0
008888bc  05 20 a0 e1                                      mov r2, r5
008888c0  e8 17 ea eb                                      bl #0x30e868
008888c4  07 30 94 e7                                      ldr r3, [r4, r7]
008888c8  0a 80 94 e7                                      ldr r8, [r4, sl]
008888cc  05 60 86 e0                                      add r6, r6, r5
008888d0  03 50 85 e0                                      add r5, r5, r3
008888d4  08 80 65 e0                                      rsb r8, r5, r8
008888d8  07 50 84 e7                                      str r5, [r4, r7]
008888dc  00 50 a0 e3                                      mov r5, #0
008888e0  00 00 58 e3                                      cmp r8, #0
008888e4  17 00 00 0a                                      beq #0x888948
008888e8  00 00 55 e3                                      cmp r5, #0
008888ec  27 00 00 da                                      ble #0x888990
008888f0  00 00 55 e3                                      cmp r5, #0
008888f4  00 00 58 c3                                      cmpgt r8, #0
008888f8  07 30 94 c7                                      ldrgt r3, [r4, r7]
008888fc  f7 ff ff da                                      ble #0x8888e0
00888900  10 10 83 e2                                      add r1, r3, #0x10
00888904  08 00 55 e1                                      cmp r5, r8
00888908  01 10 84 e0                                      add r1, r4, r1
0088890c  06 00 89 e0                                      add r0, sb, r6
00888910  08 20 a0 e1                                      mov r2, r8
00888914  e8 ff ff da                                      ble #0x8888bc
00888918  d2 17 ea eb                                      bl #0x30e868
0088891c  07 30 94 e7                                      ldr r3, [r4, r7]
00888920  0a 20 94 e7                                      ldr r2, [r4, sl]
00888924  05 50 68 e0                                      rsb r5, r8, r5
00888928  03 30 88 e0                                      add r3, r8, r3
0088892c  08 60 86 e0                                      add r6, r6, r8
00888930  02 80 63 e0                                      rsb r8, r3, r2
00888934  00 00 58 e3                                      cmp r8, #0
00888938  00 00 55 c3                                      cmpgt r5, #0
0088893c  07 30 84 e7                                      str r3, [r4, r7]
00888940  ee ff ff ca                                      bgt #0x888900
00888944  e5 ff ff ea                                      b #0x8888e0
00888948  0a 00 94 e7                                      ldr r0, [r4, sl]
0088894c  0b 20 94 e7                                      ldr r2, [r4, fp]
00888950  08 30 94 e5                                      ldr r3, [r4, #8]
00888954  04 10 9d e5                                      ldr r1, [sp, #4]
00888958  02 20 80 e0                                      add r2, r0, r2
0088895c  0b 20 84 e7                                      str r2, [r4, fp]
00888960  03 00 a0 e1                                      mov r0, r3
00888964  00 c0 93 e5                                      ldr ip, [r3]
00888968  01 20 a0 e3                                      mov r2, #1
0088896c  02 39 a0 e3                                      mov r3, #0x8000
00888970  0f e0 a0 e1                                      mov lr, pc
00888974  08 f0 9c e5                                      ldr pc, [ip, #8]
00888978  00 30 a0 e3                                      mov r3, #0
0088897c  00 00 50 e3                                      cmp r0, #0
00888980  0a 00 84 e7                                      str r0, [r4, sl]
00888984  00 80 a0 e1                                      mov r8, r0
00888988  07 30 84 e7                                      str r3, [r4, r7]
0088898c  d5 ff ff 1a                                      bne #0x8888e8
00888990  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00888994  06 30 83 e0                                      add r3, r3, r6
00888998  0c 30 84 e5                                      str r3, [r4, #0xc]
0088899c  06 00 a0 e1                                      mov r0, r6
008889a0  0c d0 8d e2                                      add sp, sp, #0xc
008889a4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
008889a8  03 00 a0 e1                                      mov r0, r3
008889ac  00 30 93 e5                                      ldr r3, [r3]
008889b0  0f e0 a0 e1                                      mov lr, pc
008889b4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
008889b8  0c 00 84 e5                                      str r0, [r4, #0xc]
008889bc  b4 ff ff ea                                      b #0x888894


; PACKAGE FUNCTION c_file_stream_seek
; ELF VA 0x00888db8, range_size=352, SHA-256=db26c75a7c6d6d72751d02454ac81911e9e2208512b52c32c43d29880622101b
; Original assembly source vox_StreamCFileCursor-01879ad8bca1-001.asm lines 270-357
; FUNCTION 0x00888db8, declared_size=352, range_size=352, mode=arm
; class-group: vox::StreamCFileCursor
; alias: _ZN3vox17StreamCFileCursor4SeekEii
; demangled: vox::StreamCFileCursor::Seek(int, int)
; decoder-mode: arm
00888db8  70 40 2d e9                                      push {r4, r5, r6, lr}
00888dbc  08 30 90 e5                                      ldr r3, [r0, #8]
00888dc0  00 40 a0 e1                                      mov r4, r0
00888dc4  01 50 a0 e1                                      mov r5, r1
00888dc8  00 00 53 e3                                      cmp r3, #0
00888dcc  49 00 00 0a                                      beq #0x888ef8
00888dd0  01 00 52 e3                                      cmp r2, #1
00888dd4  41 00 00 0a                                      beq #0x888ee0
00888dd8  02 00 52 e3                                      cmp r2, #2
00888ddc  11 00 00 0a                                      beq #0x888e28
00888de0  00 00 52 e3                                      cmp r2, #0
00888de4  0c 50 90 15                                      ldrne r5, [r0, #0xc]
00888de8  18 00 00 0a                                      beq #0x888e50
00888dec  00 00 55 e3                                      cmp r5, #0
00888df0  09 00 00 ba                                      blt #0x888e1c
00888df4  04 30 94 e5                                      ldr r3, [r4, #4]
00888df8  00 00 53 e3                                      cmp r3, #0
00888dfc  03 00 a0 01                                      moveq r0, r3
00888e00  03 00 00 0a                                      beq #0x888e14
00888e04  03 00 a0 e1                                      mov r0, r3
00888e08  00 30 93 e5                                      ldr r3, [r3]
00888e0c  0f e0 a0 e1                                      mov lr, pc
00888e10  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00888e14  00 00 55 e1                                      cmp r5, r0
00888e18  0e 00 00 da                                      ble #0x888e58
00888e1c  00 00 e0 e3                                      mvn r0, #0
00888e20  0c 00 84 e5                                      str r0, [r4, #0xc]
00888e24  70 80 bd e8                                      pop {r4, r5, r6, pc}
00888e28  04 30 90 e5                                      ldr r3, [r0, #4]
00888e2c  00 00 53 e3                                      cmp r3, #0
00888e30  03 00 a0 01                                      moveq r0, r3
00888e34  03 00 00 0a                                      beq #0x888e48
00888e38  03 00 a0 e1                                      mov r0, r3
00888e3c  00 30 93 e5                                      ldr r3, [r3]
00888e40  0f e0 a0 e1                                      mov lr, pc
00888e44  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00888e48  05 50 e0 e1                                      mvn r5, r5
00888e4c  00 50 85 e0                                      add r5, r5, r0
00888e50  0c 50 84 e5                                      str r5, [r4, #0xc]
00888e54  e4 ff ff ea                                      b #0x888dec
00888e58  18 30 08 e3                                      movw r3, #0x8018
00888e5c  03 30 94 e7                                      ldr r3, [r4, r3]
00888e60  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00888e64  03 00 51 e1                                      cmp r1, r3
00888e68  04 00 00 ba                                      blt #0x888e80
00888e6c  10 20 08 e3                                      movw r2, #0x8010
00888e70  02 20 94 e7                                      ldr r2, [r4, r2]
00888e74  02 20 83 e0                                      add r2, r3, r2
00888e78  02 00 51 e1                                      cmp r1, r2
00888e7c  12 00 00 ba                                      blt #0x888ecc
00888e80  08 30 94 e5                                      ldr r3, [r4, #8]
00888e84  00 20 a0 e3                                      mov r2, #0
00888e88  10 00 08 e3                                      movw r0, #0x8010
00888e8c  00 20 84 e7                                      str r2, [r4, r0]
00888e90  18 50 08 e3                                      movw r5, #0x8018
00888e94  14 00 08 e3                                      movw r0, #0x8014
00888e98  00 20 84 e7                                      str r2, [r4, r0]
00888e9c  05 20 84 e7                                      str r2, [r4, r5]
00888ea0  03 00 a0 e1                                      mov r0, r3
00888ea4  00 30 93 e5                                      ldr r3, [r3]
00888ea8  0f e0 a0 e1                                      mov lr, pc
00888eac  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00888eb0  00 00 50 e3                                      cmp r0, #0
00888eb4  0c 30 94 05                                      ldreq r3, [r4, #0xc]
00888eb8  00 30 e0 13                                      mvnne r3, #0
00888ebc  05 30 84 17                                      strne r3, [r4, r5]
00888ec0  05 30 84 07                                      streq r3, [r4, r5]
00888ec4  0c 30 84 15                                      strne r3, [r4, #0xc]
00888ec8  70 80 bd e8                                      pop {r4, r5, r6, pc}
00888ecc  01 10 63 e0                                      rsb r1, r3, r1
00888ed0  14 20 08 e3                                      movw r2, #0x8014
00888ed4  02 10 84 e7                                      str r1, [r4, r2]
00888ed8  00 00 a0 e3                                      mov r0, #0
00888edc  70 80 bd e8                                      pop {r4, r5, r6, pc}
00888ee0  0c 00 90 e5                                      ldr r0, [r0, #0xc]
00888ee4  00 00 50 e3                                      cmp r0, #0
00888ee8  04 00 00 ba                                      blt #0x888f00
00888eec  00 50 85 e0                                      add r5, r5, r0
00888ef0  0c 50 84 e5                                      str r5, [r4, #0xc]
00888ef4  bc ff ff ea                                      b #0x888dec
00888ef8  00 00 e0 e3                                      mvn r0, #0
00888efc  70 80 bd e8                                      pop {r4, r5, r6, pc}
00888f00  03 00 a0 e1                                      mov r0, r3
00888f04  00 30 93 e5                                      ldr r3, [r3]
00888f08  0f e0 a0 e1                                      mov lr, pc
00888f0c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00888f10  0c 00 84 e5                                      str r0, [r4, #0xc]
00888f14  f4 ff ff ea                                      b #0x888eec

; PACKAGE FUNCTION memory_stream_seek
; ELF VA 0x008892f0, range_size=164, SHA-256=e9537124522b6b3ba813705184389c69935c08f95b70b3022e190a26d40010f0
; Original assembly source vox_StreamMemoryBufferCursor-80c958f8cc33-001.asm lines 73-113
; FUNCTION 0x008892f0, declared_size=164, range_size=164, mode=arm
; class-group: vox::StreamMemoryBufferCursor
; alias: _ZN3vox24StreamMemoryBufferCursor4SeekEii
; demangled: vox::StreamMemoryBufferCursor::Seek(int, int)
; decoder-mode: arm
008892f0  30 40 2d e9                                      push {r4, r5, lr}
008892f4  08 50 90 e5                                      ldr r5, [r0, #8]
008892f8  01 00 52 e3                                      cmp r2, #1
008892fc  0c d0 4d e2                                      sub sp, sp, #0xc
00889300  00 40 a0 e1                                      mov r4, r0
00889304  01 50 85 00                                      addeq r5, r5, r1
00889308  03 00 00 0a                                      beq #0x88931c
0088930c  02 00 52 e3                                      cmp r2, #2
00889310  12 00 00 0a                                      beq #0x889360
00889314  00 00 52 e3                                      cmp r2, #0
00889318  01 50 a0 01                                      moveq r5, r1
0088931c  00 00 55 e3                                      cmp r5, #0
00889320  0b 00 00 ba                                      blt #0x889354
00889324  04 30 94 e5                                      ldr r3, [r4, #4]
00889328  00 00 53 e3                                      cmp r3, #0
0088932c  03 00 a0 01                                      moveq r0, r3
00889330  03 00 00 0a                                      beq #0x889344
00889334  03 00 a0 e1                                      mov r0, r3
00889338  00 30 93 e5                                      ldr r3, [r3]
0088933c  0f e0 a0 e1                                      mov lr, pc
00889340  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00889344  00 00 55 e1                                      cmp r5, r0
00889348  08 50 84 d5                                      strle r5, [r4, #8]
0088934c  00 00 a0 d3                                      movle r0, #0
00889350  00 00 00 da                                      ble #0x889358
00889354  00 00 e0 e3                                      mvn r0, #0
00889358  0c d0 8d e2                                      add sp, sp, #0xc
0088935c  30 80 bd e8                                      pop {r4, r5, pc}
00889360  04 50 90 e5                                      ldr r5, [r0, #4]
00889364  00 00 55 e3                                      cmp r5, #0
00889368  05 00 a0 01                                      moveq r0, r5
0088936c  05 00 00 0a                                      beq #0x889388
00889370  00 30 95 e5                                      ldr r3, [r5]
00889374  05 00 a0 e1                                      mov r0, r5
00889378  04 10 8d e5                                      str r1, [sp, #4]
0088937c  0f e0 a0 e1                                      mov lr, pc
00889380  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00889384  04 10 9d e5                                      ldr r1, [sp, #4]
00889388  01 10 e0 e1                                      mvn r1, r1
0088938c  00 50 81 e0                                      add r5, r1, r0
00889390  e1 ff ff ea                                      b #0x88931c


; PACKAGE FUNCTION memory_stream_read_ref
; ELF VA 0x00889394, range_size=116, SHA-256=15f5cb96498f8f90935e1fbfe02c993c7e5f7ece839f671e04b0917d3155cba7
; Original assembly source vox_StreamMemoryBufferCursor-80c958f8cc33-001.asm lines 120-148
; FUNCTION 0x00889394, declared_size=116, range_size=116, mode=arm
; class-group: vox::StreamMemoryBufferCursor
; alias: _ZN3vox24StreamMemoryBufferCursor7ReadRefERPhi
; demangled: vox::StreamMemoryBufferCursor::ReadRef(unsigned char*&, int)
; decoder-mode: arm
00889394  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00889398  04 40 90 e5                                      ldr r4, [r0, #4]
0088939c  00 50 a0 e1                                      mov r5, r0
008893a0  01 60 a0 e1                                      mov r6, r1
008893a4  00 00 54 e3                                      cmp r4, #0
008893a8  02 70 a0 e1                                      mov r7, r2
008893ac  13 00 00 0a                                      beq #0x889400
008893b0  08 30 94 e5                                      ldr r3, [r4, #8]
008893b4  00 00 53 e3                                      cmp r3, #0
008893b8  10 00 00 0a                                      beq #0x889400
008893bc  00 00 52 e3                                      cmp r2, #0
008893c0  0e 00 00 da                                      ble #0x889400
008893c4  00 30 94 e5                                      ldr r3, [r4]
008893c8  04 00 a0 e1                                      mov r0, r4
008893cc  0f e0 a0 e1                                      mov lr, pc
008893d0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
008893d4  08 30 95 e5                                      ldr r3, [r5, #8]
008893d8  08 20 94 e5                                      ldr r2, [r4, #8]
008893dc  00 00 63 e0                                      rsb r0, r3, r0
008893e0  03 20 82 e0                                      add r2, r2, r3
008893e4  00 20 86 e5                                      str r2, [r6]
008893e8  08 20 95 e5                                      ldr r2, [r5, #8]
008893ec  07 00 50 e1                                      cmp r0, r7
008893f0  07 00 a0 a1                                      movge r0, r7
008893f4  00 20 82 e0                                      add r2, r2, r0
008893f8  08 20 85 e5                                      str r2, [r5, #8]
008893fc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00889400  00 00 a0 e3                                      mov r0, #0
00889404  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}


; PACKAGE FUNCTION memory_stream_read
; ELF VA 0x00889408, range_size=136, SHA-256=2ab31eaf8a13e584557df188330d8fa7cf13c3783855c9a80b206c25490b8c10
; Original assembly source vox_StreamMemoryBufferCursor-80c958f8cc33-001.asm lines 155-188
; FUNCTION 0x00889408, declared_size=136, range_size=136, mode=arm
; class-group: vox::StreamMemoryBufferCursor
; alias: _ZN3vox24StreamMemoryBufferCursor4ReadEPhi
; demangled: vox::StreamMemoryBufferCursor::Read(unsigned char*, int)
; decoder-mode: arm
00889408  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0088940c  04 40 90 e5                                      ldr r4, [r0, #4]
00889410  00 50 a0 e1                                      mov r5, r0
00889414  01 60 a0 e1                                      mov r6, r1
00889418  00 00 51 e3                                      cmp r1, #0
0088941c  00 00 54 13                                      cmpne r4, #0
00889420  02 70 a0 e1                                      mov r7, r2
00889424  16 00 00 0a                                      beq #0x889484
00889428  08 30 94 e5                                      ldr r3, [r4, #8]
0088942c  00 00 53 e3                                      cmp r3, #0
00889430  13 00 00 0a                                      beq #0x889484
00889434  00 00 52 e3                                      cmp r2, #0
00889438  11 00 00 da                                      ble #0x889484
0088943c  00 30 94 e5                                      ldr r3, [r4]
00889440  04 00 a0 e1                                      mov r0, r4
00889444  0f e0 a0 e1                                      mov lr, pc
00889448  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0088944c  08 30 95 e5                                      ldr r3, [r5, #8]
00889450  08 10 94 e5                                      ldr r1, [r4, #8]
00889454  00 40 63 e0                                      rsb r4, r3, r0
00889458  07 00 54 e1                                      cmp r4, r7
0088945c  07 40 a0 a1                                      movge r4, r7
00889460  03 10 81 e0                                      add r1, r1, r3
00889464  06 00 a0 e1                                      mov r0, r6
00889468  04 20 a0 e1                                      mov r2, r4
0088946c  fd 14 ea eb                                      bl #0x30e868
00889470  08 30 95 e5                                      ldr r3, [r5, #8]
00889474  04 00 a0 e1                                      mov r0, r4
00889478  04 30 83 e0                                      add r3, r3, r4
0088947c  08 30 85 e5                                      str r3, [r5, #8]
00889480  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00889484  00 40 a0 e3                                      mov r4, #0
00889488  04 00 a0 e1                                      mov r0, r4
0088948c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; PACKAGE FUNCTION vox_engine_load_source_async_api
; ELF VA 0x00862760, range_size=128, SHA-256=96acb800663c41d573f2a48b75bba878b4de774ae7b01e4222be4be5ec5758c7
; Original assembly source vox_VoxEngine-d5560c86480d-001.asm lines 1618-1649
; FUNCTION 0x00862760, declared_size=128, range_size=128, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine19LoadDataSourceAsyncEiPviS1_iNS_21VoxSourceLoadingFlagsE
; demangled: vox::VoxEngine::LoadDataSourceAsync(int, void*, int, void*, int, vox::VoxSourceLoadingFlags)
; decoder-mode: arm
00862760  70 10 9f e5                                      ldr r1, [pc, #0x70]
00862764  70 c0 9f e5                                      ldr ip, [pc, #0x70]
00862768  10 40 2d e9                                      push {r4, lr}
0086276c  01 10 8f e0                                      add r1, pc, r1
00862770  0c c0 91 e7                                      ldr ip, [r1, ip]
00862774  10 d0 4d e2                                      sub sp, sp, #0x10
00862778  00 40 a0 e1                                      mov r4, r0
0086277c  00 10 9c e5                                      ldr r1, [ip]
00862780  00 00 51 e3                                      cmp r1, #0
00862784  0b 00 00 0a                                      beq #0x8627b8
00862788  18 c0 9d e5                                      ldr ip, [sp, #0x18]
0086278c  00 c0 8d e5                                      str ip, [sp]
00862790  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
00862794  04 c0 8d e5                                      str ip, [sp, #4]
00862798  20 c0 9d e5                                      ldr ip, [sp, #0x20]
0086279c  08 c0 8d e5                                      str ip, [sp, #8]
008627a0  24 c0 9d e5                                      ldr ip, [sp, #0x24]
008627a4  0c c0 8d e5                                      str ip, [sp, #0xc]
008627a8  ce 21 00 eb                                      bl #0x86aee8
008627ac  04 00 a0 e1                                      mov r0, r4
008627b0  10 d0 8d e2                                      add sp, sp, #0x10
008627b4  10 80 bd e8                                      pop {r4, pc}
008627b8  00 20 e0 e3                                      mvn r2, #0
008627bc  00 30 e0 e3                                      mvn r3, #0
008627c0  0c 10 8d e5                                      str r1, [sp, #0xc]
008627c4  00 10 8d e5                                      str r1, [sp]
008627c8  04 10 8d e5                                      str r1, [sp, #4]
008627cc  08 10 8d e5                                      str r1, [sp, #8]
008627d0  5f 19 00 eb                                      bl #0x868d54
008627d4  f4 ff ff ea                                      b #0x8627ac
; mapping-symbol data/literal pool
008627d8  24 23 13 00 9c 17 00 00                          .byte 0x24, 0x23, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00


; PACKAGE FUNCTION vox_engine_load_source_sync_api
; ELF VA 0x008627e0, range_size=120, SHA-256=e612bb6951c83da9d19d27aa97a06af53ac2b235e015791d2f7213503cd9c7b2
; Original assembly source vox_VoxEngine-d5560c86480d-001.asm lines 1656-1685
; FUNCTION 0x008627e0, declared_size=120, range_size=120, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine14LoadDataSourceEiPviS1_i
; demangled: vox::VoxEngine::LoadDataSource(int, void*, int, void*, int)
; decoder-mode: arm
008627e0  68 10 9f e5                                      ldr r1, [pc, #0x68]
008627e4  68 c0 9f e5                                      ldr ip, [pc, #0x68]
008627e8  10 40 2d e9                                      push {r4, lr}
008627ec  01 10 8f e0                                      add r1, pc, r1
008627f0  0c c0 91 e7                                      ldr ip, [r1, ip]
008627f4  10 d0 4d e2                                      sub sp, sp, #0x10
008627f8  00 40 a0 e1                                      mov r4, r0
008627fc  00 10 9c e5                                      ldr r1, [ip]
00862800  00 00 51 e3                                      cmp r1, #0
00862804  09 00 00 0a                                      beq #0x862830
00862808  18 c0 9d e5                                      ldr ip, [sp, #0x18]
0086280c  00 c0 8d e5                                      str ip, [sp]
00862810  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
00862814  04 c0 8d e5                                      str ip, [sp, #4]
00862818  20 c0 9d e5                                      ldr ip, [sp, #0x20]
0086281c  08 c0 8d e5                                      str ip, [sp, #8]
00862820  47 22 00 eb                                      bl #0x86b144
00862824  04 00 a0 e1                                      mov r0, r4
00862828  10 d0 8d e2                                      add sp, sp, #0x10
0086282c  10 80 bd e8                                      pop {r4, pc}
00862830  00 20 e0 e3                                      mvn r2, #0
00862834  00 30 e0 e3                                      mvn r3, #0
00862838  0c 10 8d e5                                      str r1, [sp, #0xc]
0086283c  00 10 8d e5                                      str r1, [sp]
00862840  04 10 8d e5                                      str r1, [sp, #4]
00862844  08 10 8d e5                                      str r1, [sp, #8]
00862848  41 19 00 eb                                      bl #0x868d54
0086284c  f4 ff ff ea                                      b #0x862824
; mapping-symbol data/literal pool
00862850  a4 22 13 00 9c 17 00 00                          .byte 0xa4, 0x22, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00


; PACKAGE FUNCTION vox_engine_register_decoder_api
; ELF VA 0x00862898, range_size=48, SHA-256=ae2140739e6cc14757f4032d48af80d07cdc112908c55b8434a3d83fe8aa88e8
; Original assembly source vox_VoxEngine-d5560c86480d-001.asm lines 1714-1725
; FUNCTION 0x00862898, declared_size=48, range_size=48, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine19RegisterDecoderTypeEPFPNS_16DecoderInterfaceEPvE
; demangled: vox::VoxEngine::RegisterDecoderType(vox::DecoderInterface* (*)(void*))
; decoder-mode: arm
00862898  20 30 9f e5                                      ldr r3, [pc, #0x20]
0086289c  20 20 9f e5                                      ldr r2, [pc, #0x20]
008628a0  03 30 8f e0                                      add r3, pc, r3
008628a4  02 20 93 e7                                      ldr r2, [r3, r2]
008628a8  00 00 92 e5                                      ldr r0, [r2]
008628ac  00 00 50 e3                                      cmp r0, #0
008628b0  00 00 00 0a                                      beq #0x8628b8
008628b4  76 01 00 ea                                      b #0x862e94
008628b8  00 00 e0 e3                                      mvn r0, #0
008628bc  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
008628c0  f0 21 13 00 9c 17 00 00                          .byte 0xf0, 0x21, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00


; PACKAGE FUNCTION vox_engine_register_stream_api
; ELF VA 0x008628c8, range_size=48, SHA-256=81c15da184be25e5e095e5d01a453b83541a2c34e5be2db7093714b009e5852d
; Original assembly source vox_VoxEngine-d5560c86480d-001.asm lines 1732-1743
; FUNCTION 0x008628c8, declared_size=48, range_size=48, mode=arm
; class-group: vox::VoxEngine
; alias: _ZN3vox9VoxEngine18RegisterStreamTypeEPFPNS_15StreamInterfaceEPvE
; demangled: vox::VoxEngine::RegisterStreamType(vox::StreamInterface* (*)(void*))
; decoder-mode: arm
008628c8  20 30 9f e5                                      ldr r3, [pc, #0x20]
008628cc  20 20 9f e5                                      ldr r2, [pc, #0x20]
008628d0  03 30 8f e0                                      add r3, pc, r3
008628d4  02 20 93 e7                                      ldr r2, [r3, r2]
008628d8  00 00 92 e5                                      ldr r0, [r2]
008628dc  00 00 50 e3                                      cmp r0, #0
008628e0  00 00 00 0a                                      beq #0x8628e8
008628e4  61 01 00 ea                                      b #0x862e70
008628e8  00 00 e0 e3                                      mvn r0, #0
008628ec  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
008628f0  c0 21 13 00 9c 17 00 00                          .byte 0xc0, 0x21, 0x13, 0x00, 0x9c, 0x17, 0x00, 0x00


; PACKAGE FUNCTION internal_register_stream_factory
; ELF VA 0x00862e70, range_size=36, SHA-256=c4407fe73a7b7035cc0eb66a7d0c7e83edb1d7fe9b84f1483e621640cf16d1c2
; Original assembly source vox_VoxEngineInternal-87edcdaf697c-001.asm lines 10-18
; FUNCTION 0x00862e70, declared_size=36, range_size=36, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal18RegisterStreamTypeEPFPNS_15StreamInterfaceEPvE
; demangled: vox::VoxEngineInternal::RegisterStreamType(vox::StreamInterface* (*)(void*))
; decoder-mode: arm
00862e70  c4 34 90 e5                                      ldr r3, [r0, #0x4c4]
00862e74  1e 00 53 e3                                      cmp r3, #0x1e
00862e78  03 21 80 d0                                      addle r2, r0, r3, lsl #2
00862e7c  00 30 e0 c3                                      mvngt r3, #0
00862e80  01 c0 83 d2                                      addle ip, r3, #1
00862e84  c4 c4 80 d5                                      strle ip, [r0, #0x4c4]
00862e88  44 14 82 d5                                      strle r1, [r2, #0x444]
00862e8c  03 00 a0 e1                                      mov r0, r3
00862e90  1e ff 2f e1                                      bx lr


; PACKAGE FUNCTION internal_register_decoder_factory
; ELF VA 0x00862e94, range_size=40, SHA-256=94392e480cec1df9377f1d7e1ed930b0d94f2a9f32103e2212b55c32e27e8fec
; Original assembly source vox_VoxEngineInternal-87edcdaf697c-001.asm lines 25-34
; FUNCTION 0x00862e94, declared_size=40, range_size=40, mode=arm
; class-group: vox::VoxEngineInternal
; alias: _ZN3vox17VoxEngineInternal19RegisterDecoderTypeEPFPNS_16DecoderInterfaceEPvE
; demangled: vox::VoxEngineInternal::RegisterDecoderType(vox::DecoderInterface* (*)(void*))
; decoder-mode: arm
00862e94  48 35 90 e5                                      ldr r3, [r0, #0x548]
00862e98  1e 00 53 e3                                      cmp r3, #0x1e
00862e9c  13 2e 83 d2                                      addle r2, r3, #0x130
00862ea0  00 30 e0 c3                                      mvngt r3, #0
00862ea4  02 20 82 d2                                      addle r2, r2, #2
00862ea8  01 c0 83 d2                                      addle ip, r3, #1
00862eac  48 c5 80 d5                                      strle ip, [r0, #0x548]
00862eb0  02 11 80 d7                                      strle r1, [r0, r2, lsl #2]
00862eb4  03 00 a0 e1                                      mov r0, r3
00862eb8  1e ff 2f e1                                      bx lr

