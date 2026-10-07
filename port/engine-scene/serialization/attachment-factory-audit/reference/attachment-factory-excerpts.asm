; Raw excerpts from the recovered original ARM32 ELF. The listing rows are
; copied by address from the recovery export; full function bytes and vtable/GOT
; ranges are indexed and hashed in ../function-manifest.json.

; ============================================================================
; FUNCTION 0x3508f4, range_size=284, mode=arm
; demangled: _GLOBAL__I_.._.._sources_Core_Irrlicht_ColladaFactory.cpp
; sha256: 1ad2d115173a9a02780dd1ea5c0de862773df3f870a612108bf03729b488004b
; source_listing: recovered/native/assembly/libDungeonHunter2.so/global-functions-3d6ca95892b3-001.asm
; purpose: App ColladaFactory global initializer; stores its vptr in ColladaFactory::s_factory.
003508f4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003508f8  e0 40 9f e5                                      ldr r4, [pc, #0xe0]
003508fc  e0 c0 9f e5                                      ldr ip, [pc, #0xe0]
00350900  e0 20 9f e5                                      ldr r2, [pc, #0xe0]
00350904  e0 30 9f e5                                      ldr r3, [pc, #0xe0]
00350908  04 40 8f e0                                      add r4, pc, r4
0035090c  dc 50 9f e5                                      ldr r5, [pc, #0xdc]
00350910  0c c0 94 e7                                      ldr ip, [r4, ip]
00350914  03 30 94 e7                                      ldr r3, [r4, r3]
00350918  3f 14 a0 e3                                      mov r1, #0x3f000000
0035091c  02 20 8f e0                                      add r2, pc, r2
00350920  08 10 82 e5                                      str r1, [r2, #8]
00350924  00 10 82 e5                                      str r1, [r2]
00350928  04 10 82 e5                                      str r1, [r2, #4]
0035092c  05 60 94 e7                                      ldr r6, [r4, r5]
00350930  bc 20 9f e5                                      ldr r2, [pc, #0xbc]
00350934  08 c0 8c e2                                      add ip, ip, #8
00350938  00 c0 83 e5                                      str ip, [r3]
0035093c  00 c0 a0 e3                                      mov ip, #0
00350940  03 00 a0 e1                                      mov r0, r3
00350944  02 10 94 e7                                      ldr r1, [r4, r2]
00350948  04 c0 c3 e5                                      strb ip, [r3, #4]
0035094c  06 20 a0 e1                                      mov r2, r6
00350950  6b f6 fe eb                                      bl #0x30e304
00350954  9c 30 9f e5                                      ldr r3, [pc, #0x9c]
00350958  03 30 94 e7                                      ldr r3, [r4, r3]
0035095c  00 20 93 e5                                      ldr r2, [r3]
00350960  01 00 12 e3                                      tst r2, #1
00350964  11 00 00 0a                                      beq #0x3509b0
00350968  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
0035096c  03 30 94 e7                                      ldr r3, [r4, r3]
00350970  00 20 93 e5                                      ldr r2, [r3]
00350974  01 00 12 e3                                      tst r2, #1
00350978  00 00 00 0a                                      beq #0x350980
0035097c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00350980  01 20 a0 e3                                      mov r2, #1
00350984  00 20 83 e5                                      str r2, [r3]
00350988  70 30 9f e5                                      ldr r3, [pc, #0x70]
0035098c  03 60 94 e7                                      ldr r6, [r4, r3]
00350990  06 00 a0 e1                                      mov r0, r6
00350994  80 73 ff eb                                      bl #0x32d79c
00350998  64 30 9f e5                                      ldr r3, [pc, #0x64]
0035099c  05 20 94 e7                                      ldr r2, [r4, r5]
003509a0  06 00 a0 e1                                      mov r0, r6
003509a4  03 10 94 e7                                      ldr r1, [r4, r3]
003509a8  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
003509ac  54 f6 fe ea                                      b #0x30e304
003509b0  01 20 a0 e3                                      mov r2, #1
003509b4  00 20 83 e5                                      str r2, [r3]
003509b8  48 30 9f e5                                      ldr r3, [pc, #0x48]
003509bc  03 70 94 e7                                      ldr r7, [r4, r3]
003509c0  07 00 a0 e1                                      mov r0, r7
003509c4  b7 a1 00 eb                                      bl #0x3790a8
003509c8  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
003509cc  07 00 a0 e1                                      mov r0, r7
003509d0  06 20 a0 e1                                      mov r2, r6
003509d4  03 10 94 e7                                      ldr r1, [r4, r3]
003509d8  49 f6 fe eb                                      bl #0x30e304
003509dc  e1 ff ff ea                                      b #0x350968
003509e0  88 41 64 00 e4 09 00 00 a8 15 65 00 2c 0d 00 00  .byte 0x88, 0x41, 0x64, 0x00, 0xe4, 0x09, 0x00, 0x00, 0xa8, 0x15, 0x65, 0x00, 0x2c, 0x0d, 0x00, 0x00
003509f0  90 18 00 00 f8 10 00 00 f4 0c 00 00 ac 0f 00 00  .byte 0x90, 0x18, 0x00, 0x00, 0xf8, 0x10, 0x00, 0x00, 0xf4, 0x0c, 0x00, 0x00, 0xac, 0x0f, 0x00, 0x00
00350a00  f4 37 00 00 c0 08 00 00 14 27 00 00 9c 25 00 00  .byte 0xf4, 0x37, 0x00, 0x00, 0xc0, 0x08, 0x00, 0x00, 0x14, 0x27, 0x00, 0x00, 0x9c, 0x25, 0x00, 0x00

; ============================================================================
; FUNCTION 0x3596f8, range_size=832, mode=arm
; demangled: SceneManager::LoadScene(char const*, char const*, bool, bool)
; sha256: a3400f512e2359c9e9489575dc3b3ba5e4504c7a7737d52d9c5847950efe847e
; source_listing: recovered/native/assembly/libDungeonHunter2.so/SceneManager-18f407ee92a7-001.asm
; purpose: SceneManager load path passes the s_factory address to CColladaDatabase::constructScene.
003596f8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003596fc  08 43 9f e5                                      ldr r4, [pc, #0x308]
00359700  08 73 9f e5                                      ldr r7, [pc, #0x308]
00359704  00 50 52 e2                                      subs r5, r2, #0
00359708  04 40 8f e0                                      add r4, pc, r4
0035970c  07 20 94 e7                                      ldr r2, [r4, r7]
00359710  3c d0 4d e2                                      sub sp, sp, #0x3c
00359714  08 00 8d e5                                      str r0, [sp, #8]
00359718  00 20 92 e5                                      ldr r2, [r2]
0035971c  01 60 a0 e1                                      mov r6, r1
00359720  03 b0 a0 e1                                      mov fp, r3
00359724  60 90 dd e5                                      ldrb sb, [sp, #0x60]
00359728  34 20 8d e5                                      str r2, [sp, #0x34]
0035972c  02 00 00 0a                                      beq #0x35973c
00359730  d0 30 d5 e1                                      ldrsb r3, [r5]
00359734  00 00 53 e3                                      cmp r3, #0
00359738  94 00 00 1a                                      bne #0x359990
0035973c  d0 32 9f e5                                      ldr r3, [pc, #0x2d0]
00359740  d0 82 9f e5                                      ldr r8, [pc, #0x2d0]
00359744  06 10 a0 e1                                      mov r1, r6
00359748  03 00 94 e7                                      ldr r0, [r4, r3]
0035974c  01 20 a0 e3                                      mov r2, #1
00359750  08 30 94 e7                                      ldr r3, [r4, r8]
00359754  10 00 90 e5                                      ldr r0, [r0, #0x10]
00359758  10 00 90 e5                                      ldr r0, [r0, #0x10]
0035975c  1c 09 0b eb                                      bl #0x61bbd4
00359760  00 a0 a0 e1                                      mov sl, r0
00359764  00 00 5a e3                                      cmp sl, #0
00359768  10 00 00 0a                                      beq #0x3597b0
0035976c  06 00 a0 e1                                      mov r0, r6
00359770  b7 d1 fe eb                                      bl #0x30de54
00359774  06 10 a0 e1                                      mov r1, r6
00359778  00 20 86 e0                                      add r2, r6, r0
0035977c  6f 0f 8a e2                                      add r0, sl, #0x1bc
00359780  96 dc fe eb                                      bl #0x3109e0
00359784  00 00 55 e3                                      cmp r5, #0
00359788  75 3f 8a e2                                      add r3, sl, #0x1d4
0035978c  99 00 00 0a                                      beq #0x3599f8
00359790  05 00 a0 e1                                      mov r0, r5
00359794  04 30 8d e5                                      str r3, [sp, #4]
00359798  ad d1 fe eb                                      bl #0x30de54
0035979c  04 30 9d e5                                      ldr r3, [sp, #4]
003597a0  00 20 85 e0                                      add r2, r5, r0
003597a4  05 10 a0 e1                                      mov r1, r5
003597a8  03 00 a0 e1                                      mov r0, r3
003597ac  8b dc fe eb                                      bl #0x3109e0
003597b0  00 00 59 e3                                      cmp sb, #0
003597b4  03 00 00 0a                                      beq #0x3597c8
003597b8  00 00 5a e3                                      cmp sl, #0
003597bc  01 00 00 0a                                      beq #0x3597c8
003597c0  0a 00 a0 e1                                      mov r0, sl
003597c4  10 0d 00 eb                                      bl #0x35cc0c
003597c8  00 90 55 e2                                      subs sb, r5, #0
003597cc  01 90 a0 13                                      movne sb, #1
003597d0  00 00 5a e3                                      cmp sl, #0
003597d4  00 00 55 13                                      cmpne r5, #0
003597d8  5d 00 00 1a                                      bne #0x359954
003597dc  00 00 5a e3                                      cmp sl, #0
003597e0  2e 00 00 0a                                      beq #0x3598a0
003597e4  0a 00 a0 e1                                      mov r0, sl
003597e8  02 10 a0 e3                                      mov r1, #2
003597ec  6a f6 08 eb                                      bl #0x59719c
003597f0  00 00 59 e3                                      cmp sb, #0
003597f4  27 00 00 0a                                      beq #0x359898
003597f8  f4 80 9a e5                                      ldr r8, [sl, #0xf4]
003597fc  00 00 58 e3                                      cmp r8, #0
00359800  04 80 48 12                                      subne r8, r8, #4
00359804  00 30 98 e5                                      ldr r3, [r8]
00359808  08 00 a0 e1                                      mov r0, r8
0035980c  0f e0 a0 e1                                      mov lr, pc
00359810  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00359814  00 12 9f e5                                      ldr r1, [pc, #0x200]
00359818  01 10 8f e0                                      add r1, pc, r1
0035981c  ec d4 fe eb                                      bl #0x30ebd4
00359820  00 00 50 e3                                      cmp r0, #0
00359824  1b 00 00 0a                                      beq #0x359898
00359828  f4 50 b8 e5                                      ldr r5, [r8, #0xf4]!
0035982c  08 00 55 e1                                      cmp r5, r8
00359830  18 00 00 0a                                      beq #0x359898
00359834  e4 31 9f e5                                      ldr r3, [pc, #0x1e4]
00359838  e4 91 9f e5                                      ldr sb, [pc, #0x1e4]
0035983c  03 30 8f e0                                      add r3, pc, r3
00359840  0c 30 8d e5                                      str r3, [sp, #0xc]
00359844  dc 31 9f e5                                      ldr r3, [pc, #0x1dc]
00359848  09 90 8f e0                                      add sb, pc, sb
0035984c  03 30 8f e0                                      add r3, pc, r3
00359850  10 30 8d e5                                      str r3, [sp, #0x10]
00359854  d0 31 9f e5                                      ldr r3, [pc, #0x1d0]
00359858  03 30 8f e0                                      add r3, pc, r3
0035985c  14 30 8d e5                                      str r3, [sp, #0x14]
00359860  00 00 55 e3                                      cmp r5, #0
00359864  05 60 a0 01                                      moveq r6, r5
00359868  04 60 45 12                                      subne r6, r5, #4
0035986c  00 30 96 e5                                      ldr r3, [r6]
00359870  06 00 a0 e1                                      mov r0, r6
00359874  00 50 95 e5                                      ldr r5, [r5]
00359878  0f e0 a0 e1                                      mov lr, pc
0035987c  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00359880  09 10 a0 e1                                      mov r1, sb
00359884  d2 d4 fe eb                                      bl #0x30ebd4
00359888  00 00 50 e3                                      cmp r0, #0
0035988c  13 00 00 0a                                      beq #0x3598e0
00359890  05 00 58 e1                                      cmp r8, r5
00359894  f1 ff ff 1a                                      bne #0x359860
00359898  00 00 5b e3                                      cmp fp, #0
0035989c  07 00 00 1a                                      bne #0x3598c0
003598a0  07 30 94 e7                                      ldr r3, [r4, r7]
003598a4  34 20 9d e5                                      ldr r2, [sp, #0x34]
003598a8  0a 00 a0 e1                                      mov r0, sl
003598ac  00 30 93 e5                                      ldr r3, [r3]
003598b0  03 00 52 e1                                      cmp r2, r3
003598b4  53 00 00 1a                                      bne #0x359a08
003598b8  3c d0 8d e2                                      add sp, sp, #0x3c
003598bc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003598c0  08 20 9d e5                                      ldr r2, [sp, #8]
003598c4  0a 10 a0 e1                                      mov r1, sl
003598c8  04 30 92 e5                                      ldr r3, [r2, #4]
003598cc  03 00 a0 e1                                      mov r0, r3
003598d0  00 30 93 e5                                      ldr r3, [r3]
003598d4  0f e0 a0 e1                                      mov lr, pc
003598d8  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
003598dc  ef ff ff ea                                      b #0x3598a0
003598e0  00 30 96 e5                                      ldr r3, [r6]
003598e4  06 00 a0 e1                                      mov r0, r6
003598e8  0f e0 a0 e1                                      mov lr, pc
003598ec  24 f0 93 e5                                      ldr pc, [r3, #0x24]
003598f0  0c 10 9d e5                                      ldr r1, [sp, #0xc]
003598f4  b6 d4 fe eb                                      bl #0x30ebd4
003598f8  00 00 50 e3                                      cmp r0, #0
003598fc  e3 ff ff 1a                                      bne #0x359890
00359900  00 30 96 e5                                      ldr r3, [r6]
00359904  06 00 a0 e1                                      mov r0, r6
00359908  0f e0 a0 e1                                      mov lr, pc
0035990c  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00359910  10 10 9d e5                                      ldr r1, [sp, #0x10]
00359914  ae d4 fe eb                                      bl #0x30ebd4
00359918  00 00 50 e3                                      cmp r0, #0
0035991c  db ff ff 1a                                      bne #0x359890
00359920  00 30 96 e5                                      ldr r3, [r6]
00359924  06 00 a0 e1                                      mov r0, r6
00359928  0f e0 a0 e1                                      mov lr, pc
0035992c  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00359930  14 10 9d e5                                      ldr r1, [sp, #0x14]
00359934  a6 d4 fe eb                                      bl #0x30ebd4
00359938  00 00 50 e3                                      cmp r0, #0
0035993c  d3 ff ff 1a                                      bne #0x359890
00359940  06 00 a0 e1                                      mov r0, r6
00359944  00 30 96 e5                                      ldr r3, [r6]
00359948  0f e0 a0 e1                                      mov lr, pc
0035994c  68 f0 93 e5                                      ldr pc, [r3, #0x68]
00359950  ce ff ff ea                                      b #0x359890
00359954  06 00 a0 e1                                      mov r0, r6
00359958  08 10 94 e7                                      ldr r1, [r4, r8]
0035995c  46 ff 0a eb                                      bl #0x61967c
00359960  00 50 50 e2                                      subs r5, r0, #0
00359964  9c ff ff 0a                                      beq #0x3597dc
00359968  0a 00 a0 e1                                      mov r0, sl
0035996c  00 30 9a e5                                      ldr r3, [sl]
00359970  05 10 a0 e1                                      mov r1, r5
00359974  0f e0 a0 e1                                      mov lr, pc
00359978  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
0035997c  00 30 95 e5                                      ldr r3, [r5]
00359980  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
00359984  00 00 85 e0                                      add r0, r5, r0
00359988  fd 0e ff eb                                      bl #0x31d584
0035998c  92 ff ff ea                                      b #0x3597dc
00359990  1c c0 8d e2                                      add ip, sp, #0x1c
00359994  05 10 a0 e1                                      mov r1, r5
00359998  18 20 8d e2                                      add r2, sp, #0x18
0035999c  0c 00 a0 e1                                      mov r0, ip
003599a0  04 c0 8d e5                                      str ip, [sp, #4]
003599a4  d0 e9 fe eb                                      bl #0x3140ec
003599a8  80 10 9f e5                                      ldr r1, [pc, #0x80]
003599ac  04 c0 9d e5                                      ldr ip, [sp, #4]
003599b0  60 80 9f e5                                      ldr r8, [pc, #0x60]
003599b4  01 10 8f e0                                      add r1, pc, r1
003599b8  0c 00 a0 e1                                      mov r0, ip
003599bc  05 20 81 e2                                      add r2, r1, #5
003599c0  8f db fe eb                                      bl #0x310804
003599c4  48 30 9f e5                                      ldr r3, [pc, #0x48]
003599c8  06 10 a0 e1                                      mov r1, r6
003599cc  30 20 9d e5                                      ldr r2, [sp, #0x30]
003599d0  03 00 94 e7                                      ldr r0, [r4, r3]
003599d4  08 30 94 e7                                      ldr r3, [r4, r8]
003599d8  10 00 90 e5                                      ldr r0, [r0, #0x10]
003599dc  10 00 90 e5                                      ldr r0, [r0, #0x10]
003599e0  a4 0b 0b eb                                      bl #0x61c878
003599e4  04 c0 9d e5                                      ldr ip, [sp, #4]
003599e8  00 a0 a0 e1                                      mov sl, r0
003599ec  0c 00 a0 e1                                      mov r0, ip
003599f0  17 fa fe eb                                      bl #0x318254
003599f4  5a ff ff ea                                      b #0x359764
003599f8  34 20 9f e5                                      ldr r2, [pc, #0x34]
003599fc  02 20 8f e0                                      add r2, pc, r2
00359a00  02 10 a0 e1                                      mov r1, r2
00359a04  67 ff ff ea                                      b #0x3597a8
00359a08  40 d2 fe eb                                      bl #0x30e310
00359a0c  88 b3 63 00 ac 40 00 00 f4 37 00 00 2c 0d 00 00  .byte 0x88, 0xb3, 0x63, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x2c, 0x0d, 0x00, 0x00
00359a1c  e0 73 56 00 d4 73 56 00 b8 73 56 00 cc 73 56 00  .byte 0xe0, 0x73, 0x56, 0x00, 0xd4, 0x73, 0x56, 0x00, 0xb8, 0x73, 0x56, 0x00, 0xcc, 0x73, 0x56, 0x00
00359a2c  c8 73 56 00 3c 72 56 00 0c 1e 57 00              .byte 0xc8, 0x73, 0x56, 0x00, 0x3c, 0x72, 0x56, 0x00, 0x0c, 0x1e, 0x57, 0x00

; ============================================================================
; FUNCTION 0x3594a4, range_size=596, mode=arm
; demangled: SceneManager::LoadFXLib(char const*, char const*)
; sha256: 2da05cee0090574f38c7d1182cf97e0e919e04bb4bec31ce9dfa0203fcd5935a
; source_listing: recovered/native/assembly/libDungeonHunter2.so/SceneManager-18f407ee92a7-001.asm
; purpose: FX library load path passes the s_factory address to the CColladaDatabase constructor.
003594a4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003594a8  24 42 9f e5                                      ldr r4, [pc, #0x224]
003594ac  24 82 9f e5                                      ldr r8, [pc, #0x224]
003594b0  00 a0 52 e2                                      subs sl, r2, #0
003594b4  04 40 8f e0                                      add r4, pc, r4
003594b8  08 20 94 e7                                      ldr r2, [r4, r8]
003594bc  54 d0 4d e2                                      sub sp, sp, #0x54
003594c0  00 50 a0 e1                                      mov r5, r0
003594c4  00 20 92 e5                                      ldr r2, [r2]
003594c8  01 b0 a0 e1                                      mov fp, r1
003594cc  03 60 a0 e1                                      mov r6, r3
003594d0  4c 20 8d e5                                      str r2, [sp, #0x4c]
003594d4  2f 00 00 0a                                      beq #0x359598
003594d8  fc 31 9f e5                                      ldr r3, [pc, #0x1fc]
003594dc  10 70 8d e2                                      add r7, sp, #0x10
003594e0  0a 10 a0 e1                                      mov r1, sl
003594e4  03 20 94 e7                                      ldr r2, [r4, r3]
003594e8  07 00 a0 e1                                      mov r0, r7
003594ec  5a d7 0a eb                                      bl #0x60f25c
003594f0  00 90 a0 e3                                      mov sb, #0
003594f4  00 00 56 e3                                      cmp r6, #0
003594f8  00 90 85 e5                                      str sb, [r5]
003594fc  3a 00 00 0a                                      beq #0x3595ec
00359500  d8 a1 9f e5                                      ldr sl, [pc, #0x1d8]
00359504  06 00 a0 e1                                      mov r0, r6
00359508  0a a0 8f e0                                      add sl, pc, sl
0035950c  0a 10 a0 e1                                      mov r1, sl
00359510  3b f9 fe eb                                      bl #0x317a04
00359514  00 c0 50 e2                                      subs ip, r0, #0
00359518  49 00 00 0a                                      beq #0x359644
0035951c  28 a0 8d e2                                      add sl, sp, #0x28
00359520  14 20 9b e5                                      ldr r2, [fp, #0x14]
00359524  06 30 a0 e1                                      mov r3, r6
00359528  0a 00 a0 e1                                      mov r0, sl
0035952c  07 10 a0 e1                                      mov r1, r7
00359530  00 90 8d e5                                      str sb, [sp]
00359534  f4 06 0b eb                                      bl #0x61b10c
00359538  28 30 9d e5                                      ldr r3, [sp, #0x28]
0035953c  50 00 8d e2                                      add r0, sp, #0x50
00359540  1c 30 8d e5                                      str r3, [sp, #0x1c]
00359544  00 00 53 e3                                      cmp r3, #0
00359548  00 20 93 15                                      ldrne r2, [r3]
0035954c  01 20 82 12                                      addne r2, r2, #1
00359550  00 20 83 15                                      strne r2, [r3]
00359554  1c 30 9d 15                                      ldrne r3, [sp, #0x1c]
00359558  00 20 95 e5                                      ldr r2, [r5]
0035955c  00 30 85 e5                                      str r3, [r5]
00359560  34 20 20 e5                                      str r2, [r0, #-0x34]!
00359564  53 e3 ff eb                                      bl #0x3522b8
00359568  0a 00 a0 e1                                      mov r0, sl
0035956c  51 e3 ff eb                                      bl #0x3522b8
00359570  07 00 a0 e1                                      mov r0, r7
00359574  be ff 0a eb                                      bl #0x619474
00359578  08 30 94 e7                                      ldr r3, [r4, r8]
0035957c  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
00359580  05 00 a0 e1                                      mov r0, r5
00359584  00 30 93 e5                                      ldr r3, [r3]
00359588  03 00 52 e1                                      cmp r2, r3
0035958c  4f 00 00 1a                                      bne #0x3596d0
00359590  54 d0 8d e2                                      add sp, sp, #0x54
00359594  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00359598  44 31 9f e5                                      ldr r3, [pc, #0x144]
0035959c  03 30 94 e7                                      ldr r3, [r4, r3]
003595a0  00 30 93 e5                                      ldr r3, [r3]
003595a4  02 00 53 e3                                      cmp r3, #2
003595a8  00 a0 8a 05                                      streq sl, [sl]
003595ac  c9 ff ff 0a                                      beq #0x3594d8
003595b0  01 00 53 e3                                      cmp r3, #1
003595b4  c7 ff ff 1a                                      bne #0x3594d8
003595b8  28 01 9f e5                                      ldr r0, [pc, #0x128]
003595bc  28 11 9f e5                                      ldr r1, [pc, #0x128]
003595c0  28 21 9f e5                                      ldr r2, [pc, #0x128]
003595c4  00 00 94 e7                                      ldr r0, [r4, r0]
003595c8  24 31 9f e5                                      ldr r3, [pc, #0x124]
003595cc  12 c5 00 e3                                      movw ip, #0x512
003595d0  01 10 8f e0                                      add r1, pc, r1
003595d4  02 20 8f e0                                      add r2, pc, r2
003595d8  03 30 8f e0                                      add r3, pc, r3
003595dc  a8 00 80 e2                                      add r0, r0, #0xa8
003595e0  00 c0 8d e5                                      str ip, [sp]
003595e4  86 d2 fe eb                                      bl #0x30e004
003595e8  ba ff ff ea                                      b #0x3594d8
003595ec  2c a0 8d e2                                      add sl, sp, #0x2c
003595f0  14 20 9b e5                                      ldr r2, [fp, #0x14]
003595f4  06 30 a0 e1                                      mov r3, r6
003595f8  0a 00 a0 e1                                      mov r0, sl
003595fc  07 10 a0 e1                                      mov r1, r7
00359600  00 60 8d e5                                      str r6, [sp]
00359604  f6 d3 0a eb                                      bl #0x60e5e4
00359608  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
0035960c  50 00 8d e2                                      add r0, sp, #0x50
00359610  20 30 8d e5                                      str r3, [sp, #0x20]
00359614  09 00 53 e1                                      cmp r3, sb
00359618  00 20 93 15                                      ldrne r2, [r3]
0035961c  01 20 82 12                                      addne r2, r2, #1
00359620  00 20 83 15                                      strne r2, [r3]
00359624  20 60 9d 15                                      ldrne r6, [sp, #0x20]
00359628  00 30 95 e5                                      ldr r3, [r5]
0035962c  00 60 85 e5                                      str r6, [r5]
00359630  30 30 20 e5                                      str r3, [r0, #-0x30]!
00359634  1f e3 ff eb                                      bl #0x3522b8
00359638  0a 00 a0 e1                                      mov r0, sl
0035963c  1d e3 ff eb                                      bl #0x3522b8
00359640  ca ff ff ea                                      b #0x359570
00359644  34 90 8d e2                                      add sb, sp, #0x34
00359648  06 10 a0 e1                                      mov r1, r6
0035964c  30 20 8d e2                                      add r2, sp, #0x30
00359650  09 00 a0 e1                                      mov r0, sb
00359654  0c c0 8d e5                                      str ip, [sp, #0xc]
00359658  a3 ea fe eb                                      bl #0x3140ec
0035965c  0a 10 a0 e1                                      mov r1, sl
00359660  03 20 8a e2                                      add r2, sl, #3
00359664  09 00 a0 e1                                      mov r0, sb
00359668  65 dc fe eb                                      bl #0x310804
0035966c  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00359670  24 60 8d e2                                      add r6, sp, #0x24
00359674  14 20 9b e5                                      ldr r2, [fp, #0x14]
00359678  07 10 a0 e1                                      mov r1, r7
0035967c  48 30 9d e5                                      ldr r3, [sp, #0x48]
00359680  06 00 a0 e1                                      mov r0, r6
00359684  00 c0 8d e5                                      str ip, [sp]
00359688  9f 06 0b eb                                      bl #0x61b10c
0035968c  24 30 9d e5                                      ldr r3, [sp, #0x24]
00359690  50 00 8d e2                                      add r0, sp, #0x50
00359694  18 30 8d e5                                      str r3, [sp, #0x18]
00359698  00 00 53 e3                                      cmp r3, #0
0035969c  00 20 93 15                                      ldrne r2, [r3]
003596a0  01 20 82 12                                      addne r2, r2, #1
003596a4  00 20 83 15                                      strne r2, [r3]
003596a8  18 30 9d 15                                      ldrne r3, [sp, #0x18]
003596ac  00 20 95 e5                                      ldr r2, [r5]
003596b0  00 30 85 e5                                      str r3, [r5]
003596b4  38 20 20 e5                                      str r2, [r0, #-0x38]!
003596b8  fe e2 ff eb                                      bl #0x3522b8
003596bc  06 00 a0 e1                                      mov r0, r6
003596c0  fc e2 ff eb                                      bl #0x3522b8
003596c4  09 00 a0 e1                                      mov r0, sb
003596c8  e1 fa fe eb                                      bl #0x318254
003596cc  a7 ff ff ea                                      b #0x359570
003596d0  0e d3 fe eb                                      bl #0x30e310
003596d4  dc b5 63 00 ac 40 00 00 2c 0d 00 00 e0 76 56 00  .byte 0xdc, 0xb5, 0x63, 0x00, 0xac, 0x40, 0x00, 0x00, 0x2c, 0x0d, 0x00, 0x00, 0xe0, 0x76, 0x56, 0x00
003596e4  c0 39 00 00 c0 19 00 00 08 4e 56 00 04 76 56 00  .byte 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x08, 0x4e, 0x56, 0x00, 0x04, 0x76, 0x56, 0x00
003596f4  a0 75 56 00                                      .byte 0xa0, 0x75, 0x56, 0x00

; ============================================================================
; FUNCTION 0x60f25c, range_size=84, mode=arm
; demangled: glitch::collada::CColladaDatabase::CColladaDatabase(char const*, glitch::collada::CColladaFactory*)
; sha256: 8c3c3ac060641caf088f0f3f103889456804ae41790bebc09907a87314d3c4b0
; source_listing: recovered/native/assembly/libDungeonHunter2.so/glitch_collada_CColladaDatabase-f458595c81f3-001.asm
; purpose: CColladaDatabase constructor stores the supplied factory pointer at database offset +4.
0060f25c  44 c0 9f e5                                      ldr ip, [pc, #0x44]
0060f260  44 30 9f e5                                      ldr r3, [pc, #0x44]
0060f264  70 40 2d e9                                      push {r4, r5, r6, lr}
0060f268  0c c0 8f e0                                      add ip, pc, ip
0060f26c  03 30 9c e7                                      ldr r3, [ip, r3]
0060f270  02 50 a0 e1                                      mov r5, r2
0060f274  00 20 a0 e3                                      mov r2, #0
0060f278  00 40 a0 e1                                      mov r4, r0
0060f27c  00 00 93 e5                                      ldr r0, [r3]
0060f280  02 30 a0 e1                                      mov r3, r2
0060f284  74 2e 01 eb                                      bl #0x65ac5c
0060f288  04 50 84 e5                                      str r5, [r4, #4]
0060f28c  00 00 50 e3                                      cmp r0, #0
0060f290  00 00 84 e5                                      str r0, [r4]
0060f294  04 30 90 15                                      ldrne r3, [r0, #4]
0060f298  01 30 83 12                                      addne r3, r3, #1
0060f29c  04 30 80 15                                      strne r3, [r0, #4]
0060f2a0  04 00 a0 e1                                      mov r0, r4
0060f2a4  70 80 bd e8                                      pop {r4, r5, r6, pc}
0060f2a8  28 58 38 00 48 44 00 00                          .byte 0x28, 0x58, 0x38, 0x00, 0x48, 0x44, 0x00, 0x00

; ============================================================================
; FUNCTION 0x61bbd4, range_size=184, mode=arm
; demangled: glitch::collada::CColladaDatabase::constructScene(glitch::video::IVideoDriver*, char const*, bool, glitch::collada::CColladaFactory*)
; sha256: eccacb94336d0d5e6c394099341e90dc725750fa95c5118c2718137d4e52bf7a
; source_listing: recovered/native/assembly/libDungeonHunter2.so/glitch_collada_CColladaDatabase-f458595c81f3-001.asm
; purpose: Factory-taking scene construction overload reached by SceneManager::LoadScene.
0061bbd4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0061bbd8  a0 40 9f e5                                      ldr r4, [pc, #0xa0]
0061bbdc  00 70 53 e2                                      subs r7, r3, #0
0061bbe0  0c d0 4d e2                                      sub sp, sp, #0xc
0061bbe4  04 40 8f e0                                      add r4, pc, r4
0061bbe8  00 80 a0 e1                                      mov r8, r0
0061bbec  02 a0 a0 e1                                      mov sl, r2
0061bbf0  1f 00 00 0a                                      beq #0x61bc74
0061bbf4  88 50 9f e5                                      ldr r5, [pc, #0x88]
0061bbf8  00 20 a0 e3                                      mov r2, #0
0061bbfc  02 30 a0 e1                                      mov r3, r2
0061bc00  05 60 94 e7                                      ldr r6, [r4, r5]
0061bc04  00 00 96 e5                                      ldr r0, [r6]
0061bc08  13 fc 00 eb                                      bl #0x65ac5c
0061bc0c  00 00 50 e3                                      cmp r0, #0
0061bc10  00 80 a0 01                                      moveq r8, r0
0061bc14  13 00 00 0a                                      beq #0x61bc68
0061bc18  00 30 96 e5                                      ldr r3, [r6]
0061bc1c  00 20 a0 e3                                      mov r2, #0
0061bc20  08 10 a0 e1                                      mov r1, r8
0061bc24  28 60 d3 e5                                      ldrb r6, [r3, #0x28]
0061bc28  28 20 c3 e5                                      strb r2, [r3, #0x28]
0061bc2c  81 00 8d e8                                      stm sp, {r0, r7}
0061bc30  04 30 90 e5                                      ldr r3, [r0, #4]
0061bc34  0d 70 a0 e1                                      mov r7, sp
0061bc38  02 00 53 e1                                      cmp r3, r2
0061bc3c  01 30 83 12                                      addne r3, r3, #1
0061bc40  04 30 80 15                                      strne r3, [r0, #4]
0061bc44  0a 20 a0 e1                                      mov r2, sl
0061bc48  0d 00 a0 e1                                      mov r0, sp
0061bc4c  9a ff ff eb                                      bl #0x61babc
0061bc50  00 80 a0 e1                                      mov r8, r0
0061bc54  0d 00 a0 e1                                      mov r0, sp
0061bc58  05 f6 ff eb                                      bl #0x619474
0061bc5c  05 30 94 e7                                      ldr r3, [r4, r5]
0061bc60  00 30 93 e5                                      ldr r3, [r3]
0061bc64  28 60 c3 e5                                      strb r6, [r3, #0x28]
0061bc68  08 00 a0 e1                                      mov r0, r8
0061bc6c  0c d0 8d e2                                      add sp, sp, #0xc
0061bc70  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0061bc74  0c 30 9f e5                                      ldr r3, [pc, #0xc]
0061bc78  03 70 94 e7                                      ldr r7, [r4, r3]
0061bc7c  dc ff ff ea                                      b #0x61bbf4
0061bc80  ac 8e 37 00 48 44 00 00 10 47 00 00              .byte 0xac, 0x8e, 0x37, 0x00, 0x48, 0x44, 0x00, 0x00, 0x10, 0x47, 0x00, 0x00

; ============================================================================
; FUNCTION 0x61b9e8, range_size=212, mode=arm
; demangled: glitch::collada::CColladaDatabase::constructScene(glitch::video::IVideoDriver*) const
; sha256: f632c3e51c10a474b83195765435cbc4c622f13ad5ad3b53fffcea8cc1cfba6e
; source_listing: recovered/native/assembly/libDungeonHunter2.so/glitch_collada_CColladaDatabase-f458595c81f3-001.asm
; purpose: Walks root scene selectors and resolves tag-6 visual-scene names.
0061b9e8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061b9ec  00 60 90 e5                                      ldr r6, [r0]
0061b9f0  00 50 a0 e1                                      mov r5, r0
0061b9f4  01 70 a0 e1                                      mov r7, r1
0061b9f8  00 00 56 e3                                      cmp r6, #0
0061b9fc  2c 00 00 0a                                      beq #0x61bab4
0061ba00  04 30 90 e5                                      ldr r3, [r0, #4]
0061ba04  00 10 a0 e1                                      mov r1, r0
0061ba08  03 00 a0 e1                                      mov r0, r3
0061ba0c  00 30 93 e5                                      ldr r3, [r3]
0061ba10  0f e0 a0 e1                                      mov lr, pc
0061ba14  54 f0 93 e5                                      ldr pc, [r3, #0x54]
0061ba18  00 10 95 e5                                      ldr r1, [r5]
0061ba1c  00 60 a0 e1                                      mov r6, r0
0061ba20  24 30 91 e5                                      ldr r3, [r1, #0x24]
0061ba24  20 30 93 e5                                      ldr r3, [r3, #0x20]
0061ba28  b8 20 93 e5                                      ldr r2, [r3, #0xb8]
0061ba2c  00 00 52 e3                                      cmp r2, #0
0061ba30  19 00 00 da                                      ble #0x61ba9c
0061ba34  00 40 a0 e3                                      mov r4, #0
0061ba38  04 00 00 ea                                      b #0x61ba50
0061ba3c  24 30 91 e5                                      ldr r3, [r1, #0x24]
0061ba40  20 30 93 e5                                      ldr r3, [r3, #0x20]
0061ba44  b8 20 93 e5                                      ldr r2, [r3, #0xb8]
0061ba48  02 00 54 e1                                      cmp r4, r2
0061ba4c  12 00 00 aa                                      bge #0x61ba9c
0061ba50  bc 30 93 e5                                      ldr r3, [r3, #0xbc]
0061ba54  84 21 93 e7                                      ldr r2, [r3, r4, lsl #3]
0061ba58  84 31 83 e0                                      add r3, r3, r4, lsl #3
0061ba5c  01 40 84 e2                                      add r4, r4, #1
0061ba60  06 00 52 e3                                      cmp r2, #6
0061ba64  f4 ff ff 1a                                      bne #0x61ba3c
0061ba68  04 30 93 e5                                      ldr r3, [r3, #4]
0061ba6c  07 10 a0 e1                                      mov r1, r7
0061ba70  05 00 a0 e1                                      mov r0, r5
0061ba74  04 20 93 e5                                      ldr r2, [r3, #4]
0061ba78  06 30 a0 e1                                      mov r3, r6
0061ba7c  01 20 82 e2                                      add r2, r2, #1
0061ba80  cc ff ff eb                                      bl #0x61b9b8
0061ba84  00 10 95 e5                                      ldr r1, [r5]
0061ba88  24 30 91 e5                                      ldr r3, [r1, #0x24]
0061ba8c  20 30 93 e5                                      ldr r3, [r3, #0x20]
0061ba90  b8 20 93 e5                                      ldr r2, [r3, #0xb8]
0061ba94  02 00 54 e1                                      cmp r4, r2
0061ba98  ec ff ff ba                                      blt #0x61ba50
0061ba9c  06 00 a0 e1                                      mov r0, r6
0061baa0  4d fe 00 eb                                      bl #0x65b3dc
0061baa4  06 00 a0 e1                                      mov r0, r6
0061baa8  71 03 01 eb                                      bl #0x65c874
0061baac  06 00 a0 e1                                      mov r0, r6
0061bab0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0061bab4  06 00 a0 e1                                      mov r0, r6
0061bab8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; ============================================================================
; FUNCTION 0x61a690, range_size=96, mode=arm
; demangled: glitch::collada::CColladaDatabase::getVisualScene(char const*) const
; sha256: 81ca617bddf4b1f55186b62b5b917b758c0636b67cc21fb37f077cd15c9564d0
; source_listing: recovered/native/assembly/libDungeonHunter2.so/glitch_collada_CColladaDatabase-f458595c81f3-001.asm
; purpose: Looks up visual-scene descriptor by name in the root +0x98/+0x9c table.
0061a690  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061a694  00 30 90 e5                                      ldr r3, [r0]
0061a698  01 70 a0 e1                                      mov r7, r1
0061a69c  24 30 93 e5                                      ldr r3, [r3, #0x24]
0061a6a0  20 30 93 e5                                      ldr r3, [r3, #0x20]
0061a6a4  98 60 93 e5                                      ldr r6, [r3, #0x98]
0061a6a8  00 00 56 e3                                      cmp r6, #0
0061a6ac  0d 00 00 da                                      ble #0x61a6e8
0061a6b0  9c 40 93 e5                                      ldr r4, [r3, #0x9c]
0061a6b4  00 50 a0 e3                                      mov r5, #0
0061a6b8  02 00 00 ea                                      b #0x61a6c8
0061a6bc  06 00 55 e1                                      cmp r5, r6
0061a6c0  10 40 84 e2                                      add r4, r4, #0x10
0061a6c4  07 00 00 0a                                      beq #0x61a6e8
0061a6c8  00 00 94 e5                                      ldr r0, [r4]
0061a6cc  07 10 a0 e1                                      mov r1, r7
0061a6d0  11 cf f3 eb                                      bl #0x30e31c
0061a6d4  00 00 50 e3                                      cmp r0, #0
0061a6d8  01 50 85 e2                                      add r5, r5, #1
0061a6dc  f6 ff ff 1a                                      bne #0x61a6bc
0061a6e0  04 00 a0 e1                                      mov r0, r4
0061a6e4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0061a6e8  00 00 a0 e3                                      mov r0, #0
0061a6ec  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; ============================================================================
; FUNCTION 0x61b8bc, range_size=204, mode=arm
; demangled: glitch::collada::CColladaDatabase::constructVisualScene(glitch::video::IVideoDriver*, glitch::collada::SVisualScene*, glitch::collada::CRootSceneNode*) const
; sha256: d35fbff3ca43ca621f9e4304b4370c9908131faf71e941f0ab75a22916482258
; source_listing: recovered/native/assembly/libDungeonHunter2.so/glitch_collada_CColladaDatabase-f458595c81f3-001.asm
; purpose: Walks SVisualScene node records with 0x50-byte stride.
0061b8bc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0061b8c0  00 70 52 e2                                      subs r7, r2, #0
0061b8c4  00 80 a0 e1                                      mov r8, r0
0061b8c8  01 a0 a0 e1                                      mov sl, r1
0061b8cc  03 40 a0 e1                                      mov r4, r3
0061b8d0  22 00 00 0a                                      beq #0x61b960
0061b8d4  00 00 53 e3                                      cmp r3, #0
0061b8d8  22 00 00 0a                                      beq #0x61b968
0061b8dc  00 30 94 e5                                      ldr r3, [r4]
0061b8e0  04 00 a0 e1                                      mov r0, r4
0061b8e4  04 10 97 e5                                      ldr r1, [r7, #4]
0061b8e8  0f e0 a0 e1                                      mov lr, pc
0061b8ec  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0061b8f0  08 30 97 e5                                      ldr r3, [r7, #8]
0061b8f4  00 00 53 e3                                      cmp r3, #0
0061b8f8  16 00 00 da                                      ble #0x61b958
0061b8fc  00 50 a0 e3                                      mov r5, #0
0061b900  05 60 a0 e1                                      mov r6, r5
0061b904  0c 20 97 e5                                      ldr r2, [r7, #0xc]
0061b908  04 30 a0 e1                                      mov r3, r4
0061b90c  0a 10 a0 e1                                      mov r1, sl
0061b910  05 20 82 e0                                      add r2, r2, r5
0061b914  08 00 a0 e1                                      mov r0, r8
0061b918  75 fe ff eb                                      bl #0x61b2f4
0061b91c  00 30 94 e5                                      ldr r3, [r4]
0061b920  00 90 a0 e1                                      mov sb, r0
0061b924  00 10 a0 e1                                      mov r1, r0
0061b928  04 00 a0 e1                                      mov r0, r4
0061b92c  0f e0 a0 e1                                      mov lr, pc
0061b930  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
0061b934  00 30 99 e5                                      ldr r3, [sb]
0061b938  01 60 86 e2                                      add r6, r6, #1
0061b93c  50 50 85 e2                                      add r5, r5, #0x50
0061b940  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
0061b944  00 00 89 e0                                      add r0, sb, r0
0061b948  0d 07 f4 eb                                      bl #0x31d584
0061b94c  08 30 97 e5                                      ldr r3, [r7, #8]
0061b950  03 00 56 e1                                      cmp r6, r3
0061b954  ea ff ff ba                                      blt #0x61b904
0061b958  04 00 a0 e1                                      mov r0, r4
0061b95c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0061b960  07 00 a0 e1                                      mov r0, r7
0061b964  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0061b968  04 30 90 e5                                      ldr r3, [r0, #4]
0061b96c  00 10 a0 e1                                      mov r1, r0
0061b970  03 00 a0 e1                                      mov r0, r3
0061b974  00 30 93 e5                                      ldr r3, [r3]
0061b978  0f e0 a0 e1                                      mov lr, pc
0061b97c  54 f0 93 e5                                      ldr pc, [r3, #0x54]
0061b980  00 40 a0 e1                                      mov r4, r0
0061b984  d4 ff ff ea                                      b #0x61b8dc

; ============================================================================
; FUNCTION 0x61b2f4, range_size=1480, mode=arm
; demangled: glitch::collada::CColladaDatabase::constructNode(glitch::video::IVideoDriver*, glitch::collada::SNode*, glitch::collada::CRootSceneNode*) const
; sha256: 9e047558fe98fb8d63868ffd99023086eaeab7284e550954810440da90d88b59
; source_listing: recovered/native/assembly/libDungeonHunter2.so/glitch_collada_CColladaDatabase-f458595c81f3-001.asm
; purpose: Attachment selector switch; cases 5–8 branch to loop increment; case 13 passes its second word to constructModularSkin.
0061b2f4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0061b2f8  00 40 52 e2                                      subs r4, r2, #0
0061b2fc  44 d0 4d e2                                      sub sp, sp, #0x44
0061b300  00 80 a0 e1                                      mov r8, r0
0061b304  01 b0 a0 e1                                      mov fp, r1
0061b308  03 a0 a0 e1                                      mov sl, r3
0061b30c  04 60 a0 01                                      moveq r6, r4
0061b310  91 00 00 0a                                      beq #0x61b55c
0061b314  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
0061b318  00 00 53 e3                                      cmp r3, #0
0061b31c  54 01 00 0a                                      beq #0x61b874
0061b320  04 30 90 e5                                      ldr r3, [r0, #4]
0061b324  00 10 a0 e1                                      mov r1, r0
0061b328  03 00 a0 e1                                      mov r0, r3
0061b32c  00 30 93 e5                                      ldr r3, [r3]
0061b330  0f e0 a0 e1                                      mov lr, pc
0061b334  40 f0 93 e5                                      ldr pc, [r3, #0x40]
0061b338  00 60 a0 e1                                      mov r6, r0
0061b33c  40 10 94 e5                                      ldr r1, [r4, #0x40]
0061b340  00 00 51 e3                                      cmp r1, #0
0061b344  3a 00 00 da                                      ble #0x61b434
0061b348  38 30 8d e2                                      add r3, sp, #0x38
0061b34c  3c c0 8d e2                                      add ip, sp, #0x3c
0061b350  00 50 a0 e3                                      mov r5, #0
0061b354  08 30 8d e5                                      str r3, [sp, #8]
0061b358  0c c0 8d e5                                      str ip, [sp, #0xc]
0061b35c  06 70 a0 e1                                      mov r7, r6
0061b360  44 20 94 e5                                      ldr r2, [r4, #0x44]
0061b364  85 61 a0 e1                                      lsl r6, r5, #3
0061b368  85 31 92 e7                                      ldr r3, [r2, r5, lsl #3]
0061b36c  06 20 82 e0                                      add r2, r2, r6
0061b370  01 30 43 e2                                      sub r3, r3, #1
0061b374  0c 00 53 e3                                      cmp r3, #0xc
0061b378  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
0061b37c  28 00 00 ea                                      b #0x61b424
0061b380  31 01 00 ea                                      b #0x61b84c
0061b384  e5 00 00 ea                                      b #0x61b720
0061b388  bf 00 00 ea                                      b #0x61b68c
0061b38c  b4 00 00 ea                                      b #0x61b664
0061b390  23 00 00 ea                                      b #0x61b424
0061b394  22 00 00 ea                                      b #0x61b424
0061b398  21 00 00 ea                                      b #0x61b424
0061b39c  20 00 00 ea                                      b #0x61b424
0061b3a0  17 01 00 ea                                      b #0x61b804
0061b3a4  02 00 00 ea                                      b #0x61b3b4
0061b3a8  1e 01 00 ea                                      b #0x61b828
0061b3ac  98 00 00 ea                                      b #0x61b614
0061b3b0  6c 00 00 ea                                      b #0x61b568
0061b3b4  04 10 92 e5                                      ldr r1, [r2, #4]
0061b3b8  08 00 a0 e1                                      mov r0, r8
0061b3bc  0b 20 a0 e1                                      mov r2, fp
0061b3c0  0a 30 a0 e1                                      mov r3, sl
0061b3c4  8f fc ff eb                                      bl #0x61a608
0061b3c8  00 90 50 e2                                      subs sb, r0, #0
0061b3cc  8b 00 00 0a                                      beq #0x61b600
0061b3d0  44 20 94 e5                                      ldr r2, [r4, #0x44]
0061b3d4  00 30 99 e5                                      ldr r3, [sb]
0061b3d8  06 60 82 e0                                      add r6, r2, r6
0061b3dc  04 20 96 e5                                      ldr r2, [r6, #4]
0061b3e0  14 10 92 e5                                      ldr r1, [r2, #0x14]
0061b3e4  0f e0 a0 e1                                      mov lr, pc
0061b3e8  d4 f0 93 e5                                      ldr pc, [r3, #0xd4]
0061b3ec  09 00 a0 e1                                      mov r0, sb
0061b3f0  00 30 99 e5                                      ldr r3, [sb]
0061b3f4  0f e0 a0 e1                                      mov lr, pc
0061b3f8  04 f1 93 e5                                      ldr pc, [r3, #0x104]
0061b3fc  07 00 a0 e1                                      mov r0, r7
0061b400  00 30 97 e5                                      ldr r3, [r7]
0061b404  09 10 a0 e1                                      mov r1, sb
0061b408  0f e0 a0 e1                                      mov lr, pc
0061b40c  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
0061b410  00 30 99 e5                                      ldr r3, [sb]
0061b414  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
0061b418  00 00 89 e0                                      add r0, sb, r0
0061b41c  58 08 f4 eb                                      bl #0x31d584
0061b420  40 10 94 e5                                      ldr r1, [r4, #0x40]
0061b424  01 50 85 e2                                      add r5, r5, #1
0061b428  01 00 55 e1                                      cmp r5, r1
0061b42c  cb ff ff ba                                      blt #0x61b360
0061b430  07 60 a0 e1                                      mov r6, r7
0061b434  06 00 a0 e1                                      mov r0, r6
0061b438  04 10 94 e5                                      ldr r1, [r4, #4]
0061b43c  00 30 96 e5                                      ldr r3, [r6]
0061b440  0f e0 a0 e1                                      mov lr, pc
0061b444  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0061b448  00 30 96 e5                                      ldr r3, [r6]
0061b44c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0061b450  06 00 a0 e1                                      mov r0, r6
0061b454  a4 30 93 e5                                      ldr r3, [r3, #0xa4]
0061b458  2c 20 8d e5                                      str r2, [sp, #0x2c]
0061b45c  10 20 94 e5                                      ldr r2, [r4, #0x10]
0061b460  2c 10 8d e2                                      add r1, sp, #0x2c
0061b464  30 20 8d e5                                      str r2, [sp, #0x30]
0061b468  14 20 94 e5                                      ldr r2, [r4, #0x14]
0061b46c  34 20 8d e5                                      str r2, [sp, #0x34]
0061b470  33 ff 2f e1                                      blx r3
0061b474  00 30 96 e5                                      ldr r3, [r6]
0061b478  18 20 94 e5                                      ldr r2, [r4, #0x18]
0061b47c  06 00 a0 e1                                      mov r0, r6
0061b480  9c 30 93 e5                                      ldr r3, [r3, #0x9c]
0061b484  10 20 8d e5                                      str r2, [sp, #0x10]
0061b488  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
0061b48c  10 10 8d e2                                      add r1, sp, #0x10
0061b490  14 20 8d e5                                      str r2, [sp, #0x14]
0061b494  20 20 94 e5                                      ldr r2, [r4, #0x20]
0061b498  18 20 8d e5                                      str r2, [sp, #0x18]
0061b49c  24 20 94 e5                                      ldr r2, [r4, #0x24]
0061b4a0  1c 20 8d e5                                      str r2, [sp, #0x1c]
0061b4a4  33 ff 2f e1                                      blx r3
0061b4a8  00 30 96 e5                                      ldr r3, [r6]
0061b4ac  28 20 94 e5                                      ldr r2, [r4, #0x28]
0061b4b0  06 00 a0 e1                                      mov r0, r6
0061b4b4  94 30 93 e5                                      ldr r3, [r3, #0x94]
0061b4b8  20 20 8d e5                                      str r2, [sp, #0x20]
0061b4bc  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
0061b4c0  20 10 8d e2                                      add r1, sp, #0x20
0061b4c4  24 20 8d e5                                      str r2, [sp, #0x24]
0061b4c8  30 20 94 e5                                      ldr r2, [r4, #0x30]
0061b4cc  28 20 8d e5                                      str r2, [sp, #0x28]
0061b4d0  33 ff 2f e1                                      blx r3
0061b4d4  34 10 94 e5                                      ldr r1, [r4, #0x34]
0061b4d8  00 30 96 e5                                      ldr r3, [r6]
0061b4dc  06 00 a0 e1                                      mov r0, r6
0061b4e0  00 10 51 e2                                      subs r1, r1, #0
0061b4e4  01 10 a0 13                                      movne r1, #1
0061b4e8  0f e0 a0 e1                                      mov lr, pc
0061b4ec  48 f0 93 e5                                      ldr pc, [r3, #0x48]
0061b4f0  38 30 94 e5                                      ldr r3, [r4, #0x38]
0061b4f4  00 00 53 e3                                      cmp r3, #0
0061b4f8  17 00 00 da                                      ble #0x61b55c
0061b4fc  00 50 a0 e3                                      mov r5, #0
0061b500  05 70 a0 e1                                      mov r7, r5
0061b504  08 90 a0 e1                                      mov sb, r8
0061b508  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
0061b50c  0a 30 a0 e1                                      mov r3, sl
0061b510  0b 10 a0 e1                                      mov r1, fp
0061b514  05 20 82 e0                                      add r2, r2, r5
0061b518  09 00 a0 e1                                      mov r0, sb
0061b51c  74 ff ff eb                                      bl #0x61b2f4
0061b520  00 30 96 e5                                      ldr r3, [r6]
0061b524  00 80 a0 e1                                      mov r8, r0
0061b528  00 10 a0 e1                                      mov r1, r0
0061b52c  06 00 a0 e1                                      mov r0, r6
0061b530  0f e0 a0 e1                                      mov lr, pc
0061b534  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
0061b538  00 30 98 e5                                      ldr r3, [r8]
0061b53c  01 70 87 e2                                      add r7, r7, #1
0061b540  50 50 85 e2                                      add r5, r5, #0x50
0061b544  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
0061b548  00 00 88 e0                                      add r0, r8, r0
0061b54c  0c 08 f4 eb                                      bl #0x31d584
0061b550  38 30 94 e5                                      ldr r3, [r4, #0x38]
0061b554  03 00 57 e1                                      cmp r7, r3
0061b558  ea ff ff ba                                      blt #0x61b508
0061b55c  06 00 a0 e1                                      mov r0, r6
0061b560  44 d0 8d e2                                      add sp, sp, #0x44
0061b564  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0061b568  04 20 92 e5                                      ldr r2, [r2, #4]
0061b56c  08 00 9d e5                                      ldr r0, [sp, #8]
0061b570  08 10 a0 e1                                      mov r1, r8
0061b574  0a 30 a0 e1                                      mov r3, sl
0061b578  5c cc ff eb                                      bl #0x60e6f0
0061b57c  04 30 98 e5                                      ldr r3, [r8, #4]
0061b580  08 10 a0 e1                                      mov r1, r8
0061b584  08 20 9d e5                                      ldr r2, [sp, #8]
0061b588  03 00 a0 e1                                      mov r0, r3
0061b58c  00 c0 93 e5                                      ldr ip, [r3]
0061b590  48 30 94 e5                                      ldr r3, [r4, #0x48]
0061b594  0f e0 a0 e1                                      mov lr, pc
0061b598  50 f0 9c e5                                      ldr pc, [ip, #0x50]
0061b59c  00 90 50 e2                                      subs sb, r0, #0
0061b5a0  12 00 00 0a                                      beq #0x61b5f0
0061b5a4  44 20 94 e5                                      ldr r2, [r4, #0x44]
0061b5a8  00 30 99 e5                                      ldr r3, [sb]
0061b5ac  06 60 82 e0                                      add r6, r2, r6
0061b5b0  04 20 96 e5                                      ldr r2, [r6, #4]
0061b5b4  14 10 92 e5                                      ldr r1, [r2, #0x14]
0061b5b8  0f e0 a0 e1                                      mov lr, pc
0061b5bc  d4 f0 93 e5                                      ldr pc, [r3, #0xd4]
0061b5c0  09 00 a0 e1                                      mov r0, sb
0061b5c4  02 10 a0 e3                                      mov r1, #2
0061b5c8  f3 ee fd eb                                      bl #0x59719c
0061b5cc  07 00 a0 e1                                      mov r0, r7
0061b5d0  00 30 97 e5                                      ldr r3, [r7]
0061b5d4  09 10 a0 e1                                      mov r1, sb
0061b5d8  0f e0 a0 e1                                      mov lr, pc
0061b5dc  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
0061b5e0  00 30 99 e5                                      ldr r3, [sb]
0061b5e4  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
0061b5e8  00 00 89 e0                                      add r0, sb, r0
0061b5ec  e4 07 f4 eb                                      bl #0x31d584
0061b5f0  38 00 9d e5                                      ldr r0, [sp, #0x38]
0061b5f4  00 00 50 e3                                      cmp r0, #0
0061b5f8  00 00 00 0a                                      beq #0x61b600
0061b5fc  e0 07 f4 eb                                      bl #0x31d584
0061b600  40 10 94 e5                                      ldr r1, [r4, #0x40]
0061b604  01 50 85 e2                                      add r5, r5, #1
0061b608  01 00 55 e1                                      cmp r5, r1
0061b60c  53 ff ff ba                                      blt #0x61b360
0061b610  86 ff ff ea                                      b #0x61b430
0061b614  04 10 92 e5                                      ldr r1, [r2, #4]
0061b618  08 00 a0 e1                                      mov r0, r8
0061b61c  0a 20 a0 e1                                      mov r2, sl
0061b620  db fc ff eb                                      bl #0x61a994
0061b624  00 60 50 e2                                      subs r6, r0, #0
0061b628  f4 ff ff 0a                                      beq #0x61b600
0061b62c  06 10 a0 e1                                      mov r1, r6
0061b630  07 00 a0 e1                                      mov r0, r7
0061b634  00 30 97 e5                                      ldr r3, [r7]
0061b638  0f e0 a0 e1                                      mov lr, pc
0061b63c  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
0061b640  00 30 96 e5                                      ldr r3, [r6]
0061b644  01 50 85 e2                                      add r5, r5, #1
0061b648  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
0061b64c  00 00 86 e0                                      add r0, r6, r0
0061b650  cb 07 f4 eb                                      bl #0x31d584
0061b654  40 10 94 e5                                      ldr r1, [r4, #0x40]
0061b658  01 00 55 e1                                      cmp r5, r1
0061b65c  3f ff ff ba                                      blt #0x61b360
0061b660  72 ff ff ea                                      b #0x61b430
0061b664  04 30 92 e5                                      ldr r3, [r2, #4]
0061b668  08 00 a0 e1                                      mov r0, r8
0061b66c  0a 20 a0 e1                                      mov r2, sl
0061b670  04 10 93 e5                                      ldr r1, [r3, #4]
0061b674  01 10 81 e2                                      add r1, r1, #1
0061b678  f3 fe ff eb                                      bl #0x61b24c
0061b67c  00 60 50 e2                                      subs r6, r0, #0
0061b680  e9 ff ff 1a                                      bne #0x61b62c
0061b684  40 10 94 e5                                      ldr r1, [r4, #0x40]
0061b688  dd ff ff ea                                      b #0x61b604
0061b68c  04 30 92 e5                                      ldr r3, [r2, #4]
0061b690  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0061b694  08 10 a0 e1                                      mov r1, r8
0061b698  0b 20 a0 e1                                      mov r2, fp
0061b69c  00 a0 8d e5                                      str sl, [sp]
0061b6a0  04 fe ff eb                                      bl #0x61aeb8
0061b6a4  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
0061b6a8  00 00 50 e3                                      cmp r0, #0
0061b6ac  38 00 8d e5                                      str r0, [sp, #0x38]
0061b6b0  04 30 90 15                                      ldrne r3, [r0, #4]
0061b6b4  01 30 83 12                                      addne r3, r3, #1
0061b6b8  04 30 80 15                                      strne r3, [r0, #4]
0061b6bc  3c 00 9d 15                                      ldrne r0, [sp, #0x3c]
0061b6c0  00 00 50 e3                                      cmp r0, #0
0061b6c4  00 00 00 0a                                      beq #0x61b6cc
0061b6c8  ad 07 f4 eb                                      bl #0x31d584
0061b6cc  38 30 9d e5                                      ldr r3, [sp, #0x38]
0061b6d0  00 00 53 e3                                      cmp r3, #0
0061b6d4  c9 ff ff 0a                                      beq #0x61b600
0061b6d8  04 30 98 e5                                      ldr r3, [r8, #4]
0061b6dc  08 10 a0 e1                                      mov r1, r8
0061b6e0  08 20 9d e5                                      ldr r2, [sp, #8]
0061b6e4  03 00 a0 e1                                      mov r0, r3
0061b6e8  00 c0 93 e5                                      ldr ip, [r3]
0061b6ec  48 30 94 e5                                      ldr r3, [r4, #0x48]
0061b6f0  0f e0 a0 e1                                      mov lr, pc
0061b6f4  48 f0 9c e5                                      ldr pc, [ip, #0x48]
0061b6f8  00 90 50 e2                                      subs sb, r0, #0
0061b6fc  3b 00 00 0a                                      beq #0x61b7f0
0061b700  44 20 94 e5                                      ldr r2, [r4, #0x44]
0061b704  00 30 99 e5                                      ldr r3, [sb]
0061b708  06 60 82 e0                                      add r6, r2, r6
0061b70c  04 20 96 e5                                      ldr r2, [r6, #4]
0061b710  14 10 92 e5                                      ldr r1, [r2, #0x14]
0061b714  0f e0 a0 e1                                      mov lr, pc
0061b718  d4 f0 93 e5                                      ldr pc, [r3, #0xd4]
0061b71c  2a 00 00 ea                                      b #0x61b7cc
0061b720  04 30 92 e5                                      ldr r3, [r2, #4]
0061b724  01 c0 a0 e3                                      mov ip, #1
0061b728  08 00 9d e5                                      ldr r0, [sp, #8]
0061b72c  08 10 a0 e1                                      mov r1, r8
0061b730  0b 20 a0 e1                                      mov r2, fp
0061b734  00 14 8d e8                                      stm sp, {sl, ip}
0061b738  6a fd ff eb                                      bl #0x61ace8
0061b73c  38 30 9d e5                                      ldr r3, [sp, #0x38]
0061b740  03 00 a0 e1                                      mov r0, r3
0061b744  00 30 93 e5                                      ldr r3, [r3]
0061b748  0f e0 a0 e1                                      mov lr, pc
0061b74c  30 f0 93 e5                                      ldr pc, [r3, #0x30]
0061b750  02 00 50 e3                                      cmp r0, #2
0061b754  4e 00 00 0a                                      beq #0x61b894
0061b758  38 30 9d e5                                      ldr r3, [sp, #0x38]
0061b75c  03 00 a0 e1                                      mov r0, r3
0061b760  00 30 93 e5                                      ldr r3, [r3]
0061b764  0f e0 a0 e1                                      mov lr, pc
0061b768  30 f0 93 e5                                      ldr pc, [r3, #0x30]
0061b76c  03 00 50 e3                                      cmp r0, #3
0061b770  47 00 00 0a                                      beq #0x61b894
0061b774  04 30 98 e5                                      ldr r3, [r8, #4]
0061b778  08 10 a0 e1                                      mov r1, r8
0061b77c  08 20 9d e5                                      ldr r2, [sp, #8]
0061b780  03 00 a0 e1                                      mov r0, r3
0061b784  00 c0 93 e5                                      ldr ip, [r3]
0061b788  48 30 94 e5                                      ldr r3, [r4, #0x48]
0061b78c  0f e0 a0 e1                                      mov lr, pc
0061b790  48 f0 9c e5                                      ldr pc, [ip, #0x48]
0061b794  00 90 a0 e1                                      mov sb, r0
0061b798  00 00 59 e3                                      cmp sb, #0
0061b79c  13 00 00 0a                                      beq #0x61b7f0
0061b7a0  44 20 94 e5                                      ldr r2, [r4, #0x44]
0061b7a4  09 00 a0 e1                                      mov r0, sb
0061b7a8  00 30 99 e5                                      ldr r3, [sb]
0061b7ac  06 60 82 e0                                      add r6, r2, r6
0061b7b0  04 20 96 e5                                      ldr r2, [r6, #4]
0061b7b4  14 10 92 e5                                      ldr r1, [r2, #0x14]
0061b7b8  0f e0 a0 e1                                      mov lr, pc
0061b7bc  d4 f0 93 e5                                      ldr pc, [r3, #0xd4]
0061b7c0  09 00 a0 e1                                      mov r0, sb
0061b7c4  02 10 a0 e3                                      mov r1, #2
0061b7c8  73 ee fd eb                                      bl #0x59719c
0061b7cc  07 00 a0 e1                                      mov r0, r7
0061b7d0  00 30 97 e5                                      ldr r3, [r7]
0061b7d4  09 10 a0 e1                                      mov r1, sb
0061b7d8  0f e0 a0 e1                                      mov lr, pc
0061b7dc  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
0061b7e0  00 30 99 e5                                      ldr r3, [sb]
0061b7e4  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
0061b7e8  00 00 89 e0                                      add r0, sb, r0
0061b7ec  64 07 f4 eb                                      bl #0x31d584
0061b7f0  38 00 9d e5                                      ldr r0, [sp, #0x38]
0061b7f4  00 00 50 e3                                      cmp r0, #0
0061b7f8  07 ff ff 1a                                      bne #0x61b41c
0061b7fc  40 10 94 e5                                      ldr r1, [r4, #0x40]
0061b800  7f ff ff ea                                      b #0x61b604
0061b804  04 10 92 e5                                      ldr r1, [r2, #4]
0061b808  08 00 a0 e1                                      mov r0, r8
0061b80c  0b 20 a0 e1                                      mov r2, fp
0061b810  0a 30 a0 e1                                      mov r3, sl
0061b814  1b fc ff eb                                      bl #0x61a888
0061b818  00 90 50 e2                                      subs sb, r0, #0
0061b81c  eb fe ff 1a                                      bne #0x61b3d0
0061b820  40 10 94 e5                                      ldr r1, [r4, #0x40]
0061b824  76 ff ff ea                                      b #0x61b604
0061b828  04 10 92 e5                                      ldr r1, [r2, #4]
0061b82c  08 00 a0 e1                                      mov r0, r8
0061b830  0b 20 a0 e1                                      mov r2, fp
0061b834  0a 30 a0 e1                                      mov r3, sl
0061b838  cf fb ff eb                                      bl #0x61a77c
0061b83c  00 60 50 e2                                      subs r6, r0, #0
0061b840  79 ff ff 1a                                      bne #0x61b62c
0061b844  40 10 94 e5                                      ldr r1, [r4, #0x40]
0061b848  6d ff ff ea                                      b #0x61b604
0061b84c  04 30 92 e5                                      ldr r3, [r2, #4]
0061b850  08 00 a0 e1                                      mov r0, r8
0061b854  0a 20 a0 e1                                      mov r2, sl
0061b858  04 10 93 e5                                      ldr r1, [r3, #4]
0061b85c  01 10 81 e2                                      add r1, r1, #1
0061b860  9a fe ff eb                                      bl #0x61b2d0
0061b864  00 60 50 e2                                      subs r6, r0, #0
0061b868  6f ff ff 1a                                      bne #0x61b62c
0061b86c  40 10 94 e5                                      ldr r1, [r4, #0x40]
0061b870  63 ff ff ea                                      b #0x61b604
0061b874  04 30 90 e5                                      ldr r3, [r0, #4]
0061b878  00 10 a0 e1                                      mov r1, r0
0061b87c  03 00 a0 e1                                      mov r0, r3
0061b880  00 30 93 e5                                      ldr r3, [r3]
0061b884  0f e0 a0 e1                                      mov lr, pc
0061b888  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0061b88c  00 60 a0 e1                                      mov r6, r0
0061b890  a9 fe ff ea                                      b #0x61b33c
0061b894  04 30 98 e5                                      ldr r3, [r8, #4]
0061b898  08 10 a0 e1                                      mov r1, r8
0061b89c  08 20 9d e5                                      ldr r2, [sp, #8]
0061b8a0  03 00 a0 e1                                      mov r0, r3
0061b8a4  00 c0 93 e5                                      ldr ip, [r3]
0061b8a8  48 30 94 e5                                      ldr r3, [r4, #0x48]
0061b8ac  0f e0 a0 e1                                      mov lr, pc
0061b8b0  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
0061b8b4  00 90 a0 e1                                      mov sb, r0
0061b8b8  b6 ff ff ea                                      b #0x61b798

; ============================================================================
; FUNCTION 0x60e6f0, range_size=108, mode=arm
; demangled: glitch::collada::CColladaDatabase::constructModularSkin(glitch::collada::SInstanceModularSkin*, glitch::collada::CRootSceneNode*) const
; sha256: bba4a2973ad8f8946483fb05eb7edc4bee2cd371944b5a6311af8f583c369785
; source_listing: recovered/native/assembly/libDungeonHunter2.so/glitch_collada_CColladaDatabase-f458595c81f3-001.asm
; purpose: Named modular-skin route; calls the CColladaFactory createModularSkin virtual.
0060e6f0  30 40 2d e9                                      push {r4, r5, lr}
0060e6f4  04 c0 91 e5                                      ldr ip, [r1, #4]
0060e6f8  14 d0 4d e2                                      sub sp, sp, #0x14
0060e6fc  01 e0 a0 e1                                      mov lr, r1
0060e700  02 50 a0 e1                                      mov r5, r2
0060e704  00 40 a0 e1                                      mov r4, r0
0060e708  0c 10 a0 e1                                      mov r1, ip
0060e70c  0c 00 8d e2                                      add r0, sp, #0xc
0060e710  00 c0 9c e5                                      ldr ip, [ip]
0060e714  0e 20 a0 e1                                      mov r2, lr
0060e718  00 30 8d e5                                      str r3, [sp]
0060e71c  05 30 a0 e1                                      mov r3, r5
0060e720  0f e0 a0 e1                                      mov lr, pc
0060e724  5c f0 9c e5                                      ldr pc, [ip, #0x5c]
0060e728  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0060e72c  00 00 50 e3                                      cmp r0, #0
0060e730  00 00 84 e5                                      str r0, [r4]
0060e734  04 30 90 15                                      ldrne r3, [r0, #4]
0060e738  01 30 83 12                                      addne r3, r3, #1
0060e73c  04 30 80 15                                      strne r3, [r0, #4]
0060e740  0c 00 9d 15                                      ldrne r0, [sp, #0xc]
0060e744  00 00 50 e3                                      cmp r0, #0
0060e748  00 00 00 0a                                      beq #0x60e750
0060e74c  8c 3b f4 eb                                      bl #0x31d584
0060e750  04 00 a0 e1                                      mov r0, r4
0060e754  14 d0 8d e2                                      add sp, sp, #0x14
0060e758  30 80 bd e8                                      pop {r4, r5, pc}

; ============================================================================
; FUNCTION 0x631560, range_size=108, mode=arm
; demangled: glitch::collada::CColladaFactory::createModularSkin(glitch::collada::CColladaDatabase const&, glitch::collada::SInstanceModularSkin*, glitch::collada::CRootSceneNode*)
; sha256: 7c9060f8abc01e7f51409a29e6c16797f5c2375e10415fe79972d983182d109e
; source_listing: recovered/native/assembly/libDungeonHunter2.so/glitch_collada_CColladaFactory-db06bc565b1a-001.asm
; purpose: Base CColladaFactory::createModularSkin implementation; constructs CModularSkinnedMesh.
00631560  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00631564  00 10 a0 e3                                      mov r1, #0
00631568  14 d0 4d e2                                      sub sp, sp, #0x14
0063156c  00 50 a0 e1                                      mov r5, r0
00631570  5c 00 a0 e3                                      mov r0, #0x5c
00631574  02 60 a0 e1                                      mov r6, r2
00631578  03 70 a0 e1                                      mov r7, r3
0063157c  0a 0b fc eb                                      bl #0x5341ac
00631580  00 c0 e0 e3                                      mvn ip, #0
00631584  00 c0 8d e5                                      str ip, [sp]
00631588  01 c0 a0 e3                                      mov ip, #1
0063158c  28 30 9d e5                                      ldr r3, [sp, #0x28]
00631590  04 c0 8d e5                                      str ip, [sp, #4]
00631594  06 10 a0 e1                                      mov r1, r6
00631598  00 c0 a0 e3                                      mov ip, #0
0063159c  07 20 a0 e1                                      mov r2, r7
006315a0  00 40 a0 e1                                      mov r4, r0
006315a4  08 c0 8d e5                                      str ip, [sp, #8]
006315a8  dc 5e 00 eb                                      bl #0x649120
006315ac  00 00 54 e3                                      cmp r4, #0
006315b0  00 40 85 e5                                      str r4, [r5]
006315b4  04 30 94 15                                      ldrne r3, [r4, #4]
006315b8  05 00 a0 e1                                      mov r0, r5
006315bc  01 30 83 12                                      addne r3, r3, #1
006315c0  04 30 84 15                                      strne r3, [r4, #4]
006315c4  14 d0 8d e2                                      add sp, sp, #0x14
006315c8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; ============================================================================
; FUNCTION 0x649120, range_size=364, mode=arm
; demangled: glitch::collada::CModularSkinnedMesh::CModularSkinnedMesh(glitch::collada::CColladaDatabase const&, glitch::collada::SInstanceModularSkin*, glitch::collada::CRootSceneNode*, int, bool, glitch::video::IVideoDriver*)
; sha256: 1e1a0c7426d67b5ad7dc589e653dcf29c7e2e45097235ae0b5dc2491f6f7b799
; source_listing: recovered/native/assembly/libDungeonHunter2.so/glitch_collada_CModularSkinnedMesh-4f66c8d0a36d-001.asm
; purpose: CModularSkinnedMesh constructor reads selected SInstanceModularSkin fields and a 16-byte-stride array.
00649120  54 c1 9f e5                                      ldr ip, [pc, #0x154]
00649124  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00649128  50 e1 9f e5                                      ldr lr, [pc, #0x150]
0064912c  0c c0 8f e0                                      add ip, pc, ip
00649130  00 40 a0 e1                                      mov r4, r0
00649134  0e e0 9c e7                                      ldr lr, [ip, lr]
00649138  00 00 a0 e3                                      mov r0, #0
0064913c  04 00 84 e5                                      str r0, [r4, #4]
00649140  08 e0 8e e2                                      add lr, lr, #8
00649144  00 e0 84 e5                                      str lr, [r4]
00649148  00 00 91 e5                                      ldr r0, [r1]
0064914c  0c 00 84 e5                                      str r0, [r4, #0xc]
00649150  04 10 91 e5                                      ldr r1, [r1, #4]
00649154  00 00 50 e3                                      cmp r0, #0
00649158  10 10 84 e5                                      str r1, [r4, #0x10]
0064915c  1c 70 dd e5                                      ldrb r7, [sp, #0x1c]
00649160  03 00 00 0a                                      beq #0x649174
00649164  04 10 90 e5                                      ldr r1, [r0, #4]
00649168  00 00 51 e3                                      cmp r1, #0
0064916c  01 10 81 12                                      addne r1, r1, #1
00649170  04 10 80 15                                      strne r1, [r0, #4]
00649174  08 51 9f e5                                      ldr r5, [pc, #0x108]
00649178  08 11 9f e5                                      ldr r1, [pc, #0x108]
0064917c  bf e4 a0 e3                                      mov lr, #0xbf000000
00649180  05 50 9c e7                                      ldr r5, [ip, r5]
00649184  01 10 9c e7                                      ldr r1, [ip, r1]
00649188  02 e5 8e e2                                      add lr, lr, #0x800000
0064918c  fe 05 a0 e3                                      mov r0, #0x3f800000
00649190  08 60 81 e2                                      add r6, r1, #8
00649194  01 c0 a0 e3                                      mov ip, #1
00649198  00 10 a0 e3                                      mov r1, #0
0064919c  04 50 85 e2                                      add r5, r5, #4
006491a0  08 50 84 e5                                      str r5, [r4, #8]
006491a4  00 60 84 e5                                      str r6, [r4]
006491a8  20 30 84 e5                                      str r3, [r4, #0x20]
006491ac  48 e0 84 e5                                      str lr, [r4, #0x48]
006491b0  54 00 84 e5                                      str r0, [r4, #0x54]
006491b4  58 10 c4 e5                                      strb r1, [r4, #0x58]
006491b8  14 10 84 e5                                      str r1, [r4, #0x14]
006491bc  18 c0 c4 e5                                      strb ip, [r4, #0x18]
006491c0  1c 20 84 e5                                      str r2, [r4, #0x1c]
006491c4  24 10 84 e5                                      str r1, [r4, #0x24]
006491c8  28 10 84 e5                                      str r1, [r4, #0x28]
006491cc  2c 10 84 e5                                      str r1, [r4, #0x2c]
006491d0  30 10 84 e5                                      str r1, [r4, #0x30]
006491d4  34 10 84 e5                                      str r1, [r4, #0x34]
006491d8  38 10 84 e5                                      str r1, [r4, #0x38]
006491dc  3c 10 84 e5                                      str r1, [r4, #0x3c]
006491e0  40 e0 84 e5                                      str lr, [r4, #0x40]
006491e4  44 e0 84 e5                                      str lr, [r4, #0x44]
006491e8  4c 00 84 e5                                      str r0, [r4, #0x4c]
006491ec  50 00 84 e5                                      str r0, [r4, #0x50]
006491f0  59 c0 c4 e5                                      strb ip, [r4, #0x59]
006491f4  00 30 92 e5                                      ldr r3, [r2]
006491f8  08 60 92 e5                                      ldr r6, [r2, #8]
006491fc  18 20 9d e5                                      ldr r2, [sp, #0x18]
00649200  03 60 86 e0                                      add r6, r6, r3
00649204  01 00 52 e1                                      cmp r2, r1
00649208  19 00 00 da                                      ble #0x649274
0064920c  04 00 a0 e1                                      mov r0, r4
00649210  06 10 a0 e1                                      mov r1, r6
00649214  00 20 a0 e3                                      mov r2, #0
00649218  fe fe ff eb                                      bl #0x648e18
0064921c  00 00 56 e3                                      cmp r6, #0
00649220  0e 00 00 0a                                      beq #0x649260
00649224  00 50 a0 e3                                      mov r5, #0
00649228  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0064922c  04 00 a0 e1                                      mov r0, r4
00649230  04 30 93 e5                                      ldr r3, [r3, #4]
00649234  05 32 83 e0                                      add r3, r3, r5, lsl #4
00649238  04 10 93 e5                                      ldr r1, [r3, #4]
0064923c  9d f8 ff eb                                      bl #0x6474b8
00649240  05 10 a0 e1                                      mov r1, r5
00649244  00 20 a0 e1                                      mov r2, r0
00649248  01 50 85 e2                                      add r5, r5, #1
0064924c  04 00 a0 e1                                      mov r0, r4
00649250  00 30 a0 e3                                      mov r3, #0
00649254  5d ff ff eb                                      bl #0x648fd0
00649258  05 00 56 e1                                      cmp r6, r5
0064925c  f1 ff ff 1a                                      bne #0x649228
00649260  07 10 a0 e1                                      mov r1, r7
00649264  04 00 a0 e1                                      mov r0, r4
00649268  56 fc ff eb                                      bl #0x6483c8
0064926c  04 00 a0 e1                                      mov r0, r4
00649270  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00649274  3c c0 84 05                                      streq ip, [r4, #0x3c]
00649278  e3 ff ff ea                                      b #0x64920c
0064927c  64 b9 34 00 40 0a 00 00 b4 17 00 00 38 3a 00 00  .byte 0x64, 0xb9, 0x34, 0x00, 0x40, 0x0a, 0x00, 0x00, 0xb4, 0x17, 0x00, 0x00, 0x38, 0x3a, 0x00, 0x00

; ============================================================================
; FUNCTION 0x6474b8, range_size=128, mode=arm
; demangled: glitch::collada::CModularSkinnedMesh::getModuleId(char const*) const
; sha256: 76dfab0751340fa8f016159801aa8af5e3dad129a9947f88251c2884662bbf93
; source_listing: recovered/native/assembly/libDungeonHunter2.so/glitch_collada_CModularSkinnedMesh-4f66c8d0a36d-001.asm
; purpose: CModularSkinnedMesh::getModuleId(char const*) call target for each selected entry string.
006474b8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006474bc  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
006474c0  01 70 a0 e1                                      mov r7, r1
006474c4  00 a0 93 e5                                      ldr sl, [r3]
006474c8  00 00 5a e3                                      cmp sl, #0
006474cc  17 00 00 da                                      ble #0x647530
006474d0  04 90 93 e5                                      ldr sb, [r3, #4]
006474d4  00 80 a0 e3                                      mov r8, #0
006474d8  08 32 89 e0                                      add r3, sb, r8, lsl #4
006474dc  08 50 93 e5                                      ldr r5, [r3, #8]
006474e0  00 00 55 e3                                      cmp r5, #0
006474e4  0e 00 00 da                                      ble #0x647524
006474e8  0c 60 93 e5                                      ldr r6, [r3, #0xc]
006474ec  00 40 a0 e3                                      mov r4, #0
006474f0  02 00 00 ea                                      b #0x647500
006474f4  01 40 84 e2                                      add r4, r4, #1
006474f8  05 00 54 e1                                      cmp r4, r5
006474fc  08 00 00 0a                                      beq #0x647524
00647500  84 31 86 e0                                      add r3, r6, r4, lsl #3
00647504  04 30 93 e5                                      ldr r3, [r3, #4]
00647508  07 10 a0 e1                                      mov r1, r7
0064750c  04 00 93 e5                                      ldr r0, [r3, #4]
00647510  81 1b f3 eb                                      bl #0x30e31c
00647514  00 00 50 e3                                      cmp r0, #0
00647518  f5 ff ff 1a                                      bne #0x6474f4
0064751c  04 00 a0 e1                                      mov r0, r4
00647520  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00647524  01 80 88 e2                                      add r8, r8, #1
00647528  0a 00 58 e1                                      cmp r8, sl
0064752c  e9 ff ff 1a                                      bne #0x6474d8
00647530  00 40 e0 e3                                      mvn r4, #0
00647534  f8 ff ff ea                                      b #0x64751c

; ============================================================================
; FUNCTION 0x350854, range_size=40, mode=arm
; demangled: ColladaFactory::createModularSkinNode(glitch::collada::CColladaDatabase const&, boost::intrusive_ptr<glitch::collada::IMesh> const&, void*)
; sha256: 285a623d0144d77434683b4f2f86cbedbd094862b1340b25567f43322c0f9d5a
; source_listing: recovered/native/assembly/libDungeonHunter2.so/ColladaFactory-98195ab58b5b-001.asm
; purpose: Concrete app ColladaFactory::createModularSkinNode override; allocates ModularSkinnedMeshSceneNode.
00350854  70 40 2d e9                                      push {r4, r5, r6, lr}
00350858  00 10 a0 e3                                      mov r1, #0
0035085c  63 0f a0 e3                                      mov r0, #0x18c
00350860  02 50 a0 e1                                      mov r5, r2
00350864  50 8e 07 eb                                      bl #0x5341ac
00350868  05 10 a0 e1                                      mov r1, r5
0035086c  00 40 a0 e1                                      mov r4, r0
00350870  a2 29 00 eb                                      bl #0x35af00
00350874  04 00 a0 e1                                      mov r0, r4
00350878  70 80 bd e8                                      pop {r4, r5, r6, pc}

; ============================================================================
; FUNCTION 0x35af00, range_size=136, mode=arm
; demangled: ModularSkinnedMeshSceneNode::ModularSkinnedMeshSceneNode(boost::intrusive_ptr<glitch::collada::IMesh> const&)
; sha256: 77648e038a4f80f495167d9ea8a21334309598fdf766cf4ceb4ddd52be6957b4
; source_listing: recovered/native/assembly/libDungeonHunter2.so/ModularSkinnedMeshSceneNode-c83582bceede-001.asm
; purpose: ModularSkinnedMeshSceneNode constructor called by the concrete factory override.
0035af00  70 40 2d e9                                      push {r4, r5, r6, lr}
0035af04  6c 50 9f e5                                      ldr r5, [pc, #0x6c]
0035af08  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
0035af0c  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
0035af10  05 50 8f e0                                      add r5, pc, r5
0035af14  03 30 95 e7                                      ldr r3, [r5, r3]
0035af18  02 20 95 e7                                      ldr r2, [r5, r2]
0035af1c  01 e0 a0 e3                                      mov lr, #1
0035af20  54 c0 93 e5                                      ldr ip, [r3, #0x54]
0035af24  08 20 82 e2                                      add r2, r2, #8
0035af28  88 e1 80 e5                                      str lr, [r0, #0x188]
0035af2c  84 21 80 e5                                      str r2, [r0, #0x184]
0035af30  00 c0 80 e5                                      str ip, [r0]
0035af34  58 e0 93 e5                                      ldr lr, [r3, #0x58]
0035af38  0c c0 1c e5                                      ldr ip, [ip, #-0xc]
0035af3c  01 20 a0 e1                                      mov r2, r1
0035af40  04 10 83 e2                                      add r1, r3, #4
0035af44  0c e0 80 e7                                      str lr, [r0, ip]
0035af48  00 40 a0 e1                                      mov r4, r0
0035af4c  c2 ff ff eb                                      bl #0x35ae5c
0035af50  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0035af54  04 00 a0 e1                                      mov r0, r4
0035af58  03 30 95 e7                                      ldr r3, [r5, r3]
0035af5c  49 2f 83 e2                                      add r2, r3, #0x124
0035af60  1c 10 83 e2                                      add r1, r3, #0x1c
0035af64  4e 3f 83 e2                                      add r3, r3, #0x138
0035af68  00 10 84 e5                                      str r1, [r4]
0035af6c  84 31 84 e5                                      str r3, [r4, #0x184]
0035af70  80 21 84 e5                                      str r2, [r4, #0x180]
0035af74  70 80 bd e8                                      pop {r4, r5, r6, pc}
0035af78  80 9b 63 00 10 38 00 00 44 2b 00 00 e0 0c 00 00  .byte 0x80, 0x9b, 0x63, 0x00, 0x10, 0x38, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0xe0, 0x0c, 0x00, 0x00

; ============================================================================
; DATA vtable for ColladaFactory: VA 0x0095cc90, file offset 0x0095bc90, bytes 136, PT_LOAD-backed ELF bytes
0095cc90  00 00 00 00 00 00 00 00 ac 06 35 00 10 0a 35 00  .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xac, 0x06, 0x35, 0x00, 0x10, 0x0a, 0x35, 0x00
0095cca0  0c 07 35 00 f8 1a 63 00 04 ff 62 00 c4 1a 63 00  .byte 0x0c, 0x07, 0x35, 0x00, 0xf8, 0x1a, 0x63, 0x00, 0x04, 0xff, 0x62, 0x00, 0xc4, 0x1a, 0x63, 0x00
0095ccb0  a4 06 35 00 8c 6c 63 00 e0 06 35 00 20 45 63 00  .byte 0xa4, 0x06, 0x35, 0x00, 0x8c, 0x6c, 0x63, 0x00, 0xe0, 0x06, 0x35, 0x00, 0x20, 0x45, 0x63, 0x00
0095ccc0  08 ff 62 00 20 ff 62 00 38 ff 62 00 94 07 35 00  .byte 0x08, 0xff, 0x62, 0x00, 0x20, 0xff, 0x62, 0x00, 0x38, 0xff, 0x62, 0x00, 0x94, 0x07, 0x35, 0x00
0095ccd0  68 07 35 00 00 18 63 00 bc 07 35 00 d0 17 63 00  .byte 0x68, 0x07, 0x35, 0x00, 0x00, 0x18, 0x63, 0x00, 0xbc, 0x07, 0x35, 0x00, 0xd0, 0x17, 0x63, 0x00
0095cce0  a4 08 35 00 7c 08 35 00 54 08 35 00 cc 08 35 00  .byte 0xa4, 0x08, 0x35, 0x00, 0x7c, 0x08, 0x35, 0x00, 0x54, 0x08, 0x35, 0x00, 0xcc, 0x08, 0x35, 0x00
0095ccf0  3c 07 35 00 60 15 63 00 18 15 63 00 3c 13 63 00  .byte 0x3c, 0x07, 0x35, 0x00, 0x60, 0x15, 0x63, 0x00, 0x18, 0x15, 0x63, 0x00, 0x3c, 0x13, 0x63, 0x00
0095cd00  b8 07 35 00 74 12 63 00 44 12 63 00 38 11 63 00  .byte 0xb8, 0x07, 0x35, 0x00, 0x74, 0x12, 0x63, 0x00, 0x44, 0x12, 0x63, 0x00, 0x38, 0x11, 0x63, 0x00
0095cd10  10 00 63 00 08 00 63 00  .byte 0x10, 0x00, 0x63, 0x00, 0x08, 0x00, 0x63, 0x00

; ============================================================================
; DATA vtable for glitch::collada::CColladaFactory: VA 0x0097b7d8, file offset 0x0097a7d8, bytes 136, PT_LOAD-backed ELF bytes
0097b7d8  00 00 00 00 00 00 00 00 00 ff 62 00 4c 07 63 00  .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xff, 0x62, 0x00, 0x4c, 0x07, 0x63, 0x00
0097b7e8  28 1b 63 00 f8 1a 63 00 04 ff 62 00 c4 1a 63 00  .byte 0x28, 0x1b, 0x63, 0x00, 0xf8, 0x1a, 0x63, 0x00, 0x04, 0xff, 0x62, 0x00, 0xc4, 0x1a, 0x63, 0x00
0097b7f8  a4 06 35 00 8c 6c 63 00 d0 23 63 00 20 45 63 00  .byte 0xa4, 0x06, 0x35, 0x00, 0x8c, 0x6c, 0x63, 0x00, 0xd0, 0x23, 0x63, 0x00, 0x20, 0x45, 0x63, 0x00
0097b808  08 ff 62 00 20 ff 62 00 38 ff 62 00 24 19 63 00  .byte 0x08, 0xff, 0x62, 0x00, 0x20, 0xff, 0x62, 0x00, 0x38, 0xff, 0x62, 0x00, 0x24, 0x19, 0x63, 0x00
0097b818  c8 18 63 00 00 18 63 00 30 18 63 00 d0 17 63 00  .byte 0xc8, 0x18, 0x63, 0x00, 0x00, 0x18, 0x63, 0x00, 0x30, 0x18, 0x63, 0x00, 0xd0, 0x17, 0x63, 0x00
0097b828  50 17 63 00 d0 16 63 00 50 16 63 00 28 16 63 00  .byte 0x50, 0x17, 0x63, 0x00, 0xd0, 0x16, 0x63, 0x00, 0x50, 0x16, 0x63, 0x00, 0x28, 0x16, 0x63, 0x00
0097b838  cc 15 63 00 60 15 63 00 18 15 63 00 3c 13 63 00  .byte 0xcc, 0x15, 0x63, 0x00, 0x60, 0x15, 0x63, 0x00, 0x18, 0x15, 0x63, 0x00, 0x3c, 0x13, 0x63, 0x00
0097b848  64 4c 63 00 74 12 63 00 44 12 63 00 38 11 63 00  .byte 0x64, 0x4c, 0x63, 0x00, 0x74, 0x12, 0x63, 0x00, 0x44, 0x12, 0x63, 0x00, 0x38, 0x11, 0x63, 0x00
0097b858  10 00 63 00 08 00 63 00  .byte 0x10, 0x00, 0x63, 0x00, 0x08, 0x00, 0x63, 0x00

; ============================================================================
; DATA ColladaFactory vtable GOT slot: VA 0x0099547c, file offset 0x0099447c, bytes 4, PT_LOAD-backed ELF bytes
0099547c  90 cc 95 00  .byte 0x90, 0xcc, 0x95, 0x00

; ============================================================================
; DATA ColladaFactory::s_factory GOT slot: VA 0x009957c4, file offset 0x009947c4, bytes 4, PT_LOAD-backed ELF bytes
009957c4  d8 1e 9a 00  .byte 0xd8, 0x1e, 0x9a, 0x00
