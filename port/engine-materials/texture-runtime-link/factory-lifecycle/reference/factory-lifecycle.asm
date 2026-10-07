; Listings copied from the recovered original-APK assembly views. Address ranges and hashes are in factory-lifecycle-ranges.json.
; The original-file-byte hashes were re-computed from the APK member in this analysis.

; CResFileManager C1 constructor. It stores &DefaultResFactory at this+0x24 and this in Inst.
; FUNCTION 0x00657914, declared_size=128, range_size=128, mode=arm
; class-group: glitch::collada::CResFileManager
; alias: _ZN6glitch7collada15CResFileManagerC1EPNS_7IDeviceE
; demangled: glitch::collada::CResFileManager::CResFileManager(glitch::IDevice*)
; decoder-mode: arm
00657914  68 20 9f e5                                      ldr r2, [pc, #0x68]
00657918  68 30 9f e5                                      ldr r3, [pc, #0x68]
0065791c  68 c0 9f e5                                      ldr ip, [pc, #0x68]
00657920  02 20 8f e0                                      add r2, pc, r2
00657924  f0 01 2d e9                                      push {r4, r5, r6, r7, r8}
00657928  03 70 92 e7                                      ldr r7, [r2, r3]
0065792c  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
00657930  0c c0 92 e7                                      ldr ip, [r2, ip]
00657934  00 40 a0 e3                                      mov r4, #0
00657938  03 60 92 e7                                      ldr r6, [r2, r3]
0065793c  00 50 a0 e1                                      mov r5, r0
00657940  08 80 8c e2                                      add r8, ip, #8
00657944  01 c0 a0 e3                                      mov ip, #1
00657948  00 11 80 e8                                      stm r0, {r8, ip}
0065794c  0c 40 80 e5                                      str r4, [r0, #0xc]
00657950  08 40 e5 e5                                      strb r4, [r5, #8]!
00657954  14 50 80 e5                                      str r5, [r0, #0x14]
00657958  20 10 80 e5                                      str r1, [r0, #0x20]
0065795c  24 70 80 e5                                      str r7, [r0, #0x24]
00657960  29 40 c0 e5                                      strb r4, [r0, #0x29]
00657964  2b c0 c0 e5                                      strb ip, [r0, #0x2b]
00657968  10 50 80 e5                                      str r5, [r0, #0x10]
0065796c  18 40 80 e5                                      str r4, [r0, #0x18]
00657970  28 c0 c0 e5                                      strb ip, [r0, #0x28]
00657974  2a c0 c0 e5                                      strb ip, [r0, #0x2a]
00657978  00 00 86 e5                                      str r0, [r6]
0065797c  f0 01 bd e8                                      pop {r4, r5, r6, r7, r8}
00657980  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00657984  70 d1 33 00 ec 1b 00 00 58 22 00 00 48 44 00 00  .byte 0x70, 0xd1, 0x33, 0x00, 0xec, 0x1b, 0x00, 0x00, 0x58, 0x22, 0x00, 0x00, 0x48, 0x44, 0x00, 0x00


; Translation-unit global initializer registered in .init_array. It installs CResFactory vptr at DefaultResFactory.
; FUNCTION 0x00657a24, declared_size=112, range_size=112, mode=arm
; class-group: global-functions
; alias: _GLOBAL__I_.._source_glitch_collada_CColladaResFileManager.cpp
; demangled: _GLOBAL__I_.._source_glitch_collada_CColladaResFileManager.cpp
; decoder-mode: arm
00657a24  50 30 9f e5                                      ldr r3, [pc, #0x50]
00657a28  50 10 9f e5                                      ldr r1, [pc, #0x50]
00657a2c  50 20 9f e5                                      ldr r2, [pc, #0x50]
00657a30  04 40 2d e5                                      str r4, [sp, #-4]!
00657a34  03 30 8f e0                                      add r3, pc, r3
00657a38  3f 04 a0 e3                                      mov r0, #0x3f000000
00657a3c  01 10 8f e0                                      add r1, pc, r1
00657a40  40 40 9f e5                                      ldr r4, [pc, #0x40]
00657a44  02 c0 93 e7                                      ldr ip, [r3, r2]
00657a48  08 00 81 e5                                      str r0, [r1, #8]
00657a4c  00 00 81 e5                                      str r0, [r1]
00657a50  04 00 81 e5                                      str r0, [r1, #4]
00657a54  30 20 9f e5                                      ldr r2, [pc, #0x30]
00657a58  30 10 9f e5                                      ldr r1, [pc, #0x30]
00657a5c  04 40 93 e7                                      ldr r4, [r3, r4]
00657a60  02 20 93 e7                                      ldr r2, [r3, r2]
00657a64  01 10 93 e7                                      ldr r1, [r3, r1]
00657a68  08 40 84 e2                                      add r4, r4, #8
00657a6c  0c 00 a0 e1                                      mov r0, ip
00657a70  00 40 8c e5                                      str r4, [ip]
00657a74  10 00 bd e8                                      ldm sp!, {r4}
00657a78  21 da f2 ea                                      b #0x30e304
; mapping-symbol data/literal pool
00657a7c  5c d0 33 00 c8 f5 39 00 ec 1b 00 00 20 2e 00 00  .byte 0x5c, 0xd0, 0x33, 0x00, 0xc8, 0xf5, 0x39, 0x00, 0xec, 0x1b, 0x00, 0x00, 0x20, 0x2e, 0x00, 0x00
00657a8c  90 18 00 00 7c 2d 00 00                          .byte 0x90, 0x18, 0x00, 0x00, 0x7c, 0x2d, 0x00, 0x00


; Engine scene-loader entrypoint: reads CResFileManager::Inst and calls load(IReadFile*,...).
; FUNCTION 0x006b9458, declared_size=224, range_size=224, mode=arm
; class-group: glitch::scene::CColladaBinaryFileLoader
; alias: _ZN6glitch5scene24CColladaBinaryFileLoader10createMeshEPNS_2io9IReadFileE
; demangled: glitch::scene::CColladaBinaryFileLoader::createMesh(glitch::io::IReadFile*)
; decoder-mode: arm
006b9458  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
006b945c  c8 40 9f e5                                      ldr r4, [pc, #0xc8]
006b9460  c8 30 9f e5                                      ldr r3, [pc, #0xc8]
006b9464  00 c0 a0 e3                                      mov ip, #0
006b9468  04 40 8f e0                                      add r4, pc, r4
006b946c  03 30 94 e7                                      ldr r3, [r4, r3]
006b9470  14 d0 4d e2                                      sub sp, sp, #0x14
006b9474  01 60 a0 e1                                      mov r6, r1
006b9478  00 30 93 e5                                      ldr r3, [r3]
006b947c  02 10 a0 e1                                      mov r1, r2
006b9480  00 50 a0 e1                                      mov r5, r0
006b9484  0c 20 a0 e1                                      mov r2, ip
006b9488  03 00 a0 e1                                      mov r0, r3
006b948c  0c 30 a0 e1                                      mov r3, ip
006b9490  00 c0 8d e5                                      str ip, [sp]
006b9494  3c 85 fe eb                                      bl #0x65a98c
006b9498  94 30 9f e5                                      ldr r3, [pc, #0x94]
006b949c  00 00 50 e3                                      cmp r0, #0
006b94a0  08 00 8d e5                                      str r0, [sp, #8]
006b94a4  03 30 94 e7                                      ldr r3, [r4, r3]
006b94a8  0c 30 8d e5                                      str r3, [sp, #0xc]
006b94ac  03 00 00 0a                                      beq #0x6b94c0
006b94b0  04 30 90 e5                                      ldr r3, [r0, #4]
006b94b4  00 00 53 e3                                      cmp r3, #0
006b94b8  01 30 83 12                                      addne r3, r3, #1
006b94bc  04 30 80 15                                      strne r3, [r0, #4]
006b94c0  08 30 96 e5                                      ldr r3, [r6, #8]
006b94c4  08 40 8d e2                                      add r4, sp, #8
006b94c8  04 00 a0 e1                                      mov r0, r4
006b94cc  14 10 93 e5                                      ldr r1, [r3, #0x14]
006b94d0  44 89 fd eb                                      bl #0x61b9e8
006b94d4  00 70 a0 e1                                      mov r7, r0
006b94d8  04 00 a0 e1                                      mov r0, r4
006b94dc  9c 59 fd eb                                      bl #0x60fb54
006b94e0  00 30 97 e5                                      ldr r3, [r7]
006b94e4  00 10 a0 e1                                      mov r1, r0
006b94e8  07 00 a0 e1                                      mov r0, r7
006b94ec  0f e0 a0 e1                                      mov lr, pc
006b94f0  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
006b94f4  08 30 96 e5                                      ldr r3, [r6, #8]
006b94f8  07 10 a0 e1                                      mov r1, r7
006b94fc  04 30 93 e5                                      ldr r3, [r3, #4]
006b9500  03 00 a0 e1                                      mov r0, r3
006b9504  00 30 93 e5                                      ldr r3, [r3]
006b9508  0f e0 a0 e1                                      mov lr, pc
006b950c  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
006b9510  00 30 a0 e3                                      mov r3, #0
006b9514  00 30 85 e5                                      str r3, [r5]
006b9518  04 00 a0 e1                                      mov r0, r4
006b951c  d4 7f fd eb                                      bl #0x619474
006b9520  05 00 a0 e1                                      mov r0, r5
006b9524  14 d0 8d e2                                      add sp, sp, #0x14
006b9528  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
006b952c  28 b6 2d 00 48 44 00 00 10 47 00 00              .byte 0x28, 0xb6, 0x2d, 0x00, 0x48, 0x44, 0x00, 0x00, 0x10, 0x47, 0x00, 0x00


; The load wrapper branches to the core resource get routine when r2==0.
; FUNCTION 0x0065a98c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CResFileManager
; alias: _ZN6glitch7collada15CResFileManager4loadEPNS_2io9IReadFileEbPFvPKcPKNS0_8SColladaEEb
; demangled: glitch::collada::CResFileManager::load(glitch::io::IReadFile*, bool, void (*)(char const*, glitch::collada::SCollada const*), bool)
; decoder-mode: arm
0065a98c  00 00 52 e3                                      cmp r2, #0
0065a990  00 30 dd e5                                      ldrb r3, [sp]
0065a994  01 00 00 0a                                      beq #0x65a9a0
0065a998  00 00 a0 e3                                      mov r0, #0
0065a99c  1e ff 2f e1                                      bx lr
0065a9a0  01 20 a0 e3                                      mov r2, #1
0065a9a4  67 ff ff ea                                      b #0x65a748


; Core get path. Relevant direct call to postLoadProcess occurs at 0x65a954.
; FUNCTION 0x0065a748, declared_size=580, range_size=580, mode=arm
; class-group: glitch::collada::CResFileManager
; alias: _ZN6glitch7collada15CResFileManager3getEPNS_2io9IReadFileEbb
; demangled: glitch::collada::CResFileManager::get(glitch::io::IReadFile*, bool, bool)
; decoder-mode: arm
0065a748  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0065a74c  20 42 9f e5                                      ldr r4, [pc, #0x220]
0065a750  20 b2 9f e5                                      ldr fp, [pc, #0x220]
0065a754  20 92 9f e5                                      ldr sb, [pc, #0x220]
0065a758  04 40 8f e0                                      add r4, pc, r4
0065a75c  0b e0 94 e7                                      ldr lr, [r4, fp]
0065a760  09 c0 94 e7                                      ldr ip, [r4, sb]
0065a764  54 d0 4d e2                                      sub sp, sp, #0x54
0065a768  00 e0 9e e5                                      ldr lr, [lr]
0065a76c  00 c0 9c e5                                      ldr ip, [ip]
0065a770  00 80 a0 e1                                      mov r8, r0
0065a774  4c e0 8d e5                                      str lr, [sp, #0x4c]
0065a778  28 00 dc e5                                      ldrb r0, [ip, #0x28]
0065a77c  01 70 a0 e1                                      mov r7, r1
0065a780  1c a0 8d e2                                      add sl, sp, #0x1c
0065a784  04 00 8d e5                                      str r0, [sp, #4]
0065a788  00 00 a0 e3                                      mov r0, #0
0065a78c  28 00 cc e5                                      strb r0, [ip, #0x28]
0065a790  20 00 98 e5                                      ldr r0, [r8, #0x20]
0065a794  00 10 91 e5                                      ldr r1, [r1]
0065a798  34 50 8d e2                                      add r5, sp, #0x34
0065a79c  34 60 90 e5                                      ldr r6, [r0, #0x34]
0065a7a0  0c 30 8d e5                                      str r3, [sp, #0xc]
0065a7a4  07 00 a0 e1                                      mov r0, r7
0065a7a8  00 30 96 e5                                      ldr r3, [r6]
0065a7ac  08 20 8d e5                                      str r2, [sp, #8]
0065a7b0  34 30 93 e5                                      ldr r3, [r3, #0x34]
0065a7b4  00 30 8d e5                                      str r3, [sp]
0065a7b8  0f e0 a0 e1                                      mov lr, pc
0065a7bc  28 f0 91 e5                                      ldr pc, [r1, #0x28]
0065a7c0  18 20 8d e2                                      add r2, sp, #0x18
0065a7c4  00 10 a0 e1                                      mov r1, r0
0065a7c8  0a 00 a0 e1                                      mov r0, sl
0065a7cc  1a 2e f3 eb                                      bl #0x32603c
0065a7d0  05 00 a0 e1                                      mov r0, r5
0065a7d4  06 10 a0 e1                                      mov r1, r6
0065a7d8  0a 20 a0 e1                                      mov r2, sl
0065a7dc  00 30 9d e5                                      ldr r3, [sp]
0065a7e0  33 ff 2f e1                                      blx r3
0065a7e4  30 00 9d e5                                      ldr r0, [sp, #0x30]
0065a7e8  0a 00 50 e1                                      cmp r0, sl
0065a7ec  02 00 00 0a                                      beq #0x65a7fc
0065a7f0  00 00 50 e3                                      cmp r0, #0
0065a7f4  00 00 00 0a                                      beq #0x65a7fc
0065a7f8  14 d7 f2 eb                                      bl #0x310450
0065a7fc  08 60 88 e2                                      add r6, r8, #8
0065a800  06 00 a0 e1                                      mov r0, r6
0065a804  05 10 a0 e1                                      mov r1, r5
0065a808  9f fc ff eb                                      bl #0x659a8c
0065a80c  06 00 50 e1                                      cmp r0, r6
0065a810  00 a0 a0 e1                                      mov sl, r0
0065a814  2e 00 00 0a                                      beq #0x65a8d4
0065a818  05 10 a0 e1                                      mov r1, r5
0065a81c  06 00 a0 e1                                      mov r0, r6
0065a820  06 ff ff eb                                      bl #0x65a440
0065a824  48 30 9d e5                                      ldr r3, [sp, #0x48]
0065a828  50 10 8d e2                                      add r1, sp, #0x50
0065a82c  06 00 a0 e1                                      mov r0, r6
0065a830  40 30 21 e5                                      str r3, [r1, #-0x40]!
0065a834  64 ff ff eb                                      bl #0x65a5cc
0065a838  00 60 90 e5                                      ldr r6, [r0]
0065a83c  3c 31 9f e5                                      ldr r3, [pc, #0x13c]
0065a840  24 20 96 e5                                      ldr r2, [r6, #0x24]
0065a844  03 10 94 e7                                      ldr r1, [r4, r3]
0065a848  34 31 9f e5                                      ldr r3, [pc, #0x134]
0065a84c  14 c0 92 e5                                      ldr ip, [r2, #0x14]
0065a850  03 30 94 e7                                      ldr r3, [r4, r3]
0065a854  ac cf a0 e1                                      lsr ip, ip, #0x1f
0065a858  0c 21 81 e7                                      str r2, [r1, ip, lsl #2]
0065a85c  24 20 96 e5                                      ldr r2, [r6, #0x24]
0065a860  20 11 9f e5                                      ldr r1, [pc, #0x120]
0065a864  00 00 93 e5                                      ldr r0, [r3]
0065a868  10 c0 92 e5                                      ldr ip, [r2, #0x10]
0065a86c  14 20 92 e5                                      ldr r2, [r2, #0x14]
0065a870  01 10 94 e7                                      ldr r1, [r4, r1]
0065a874  0c 01 80 e0                                      add r0, r0, ip, lsl #2
0065a878  a2 2f a0 e1                                      lsr r2, r2, #0x1f
0065a87c  02 01 81 e7                                      str r0, [r1, r2, lsl #2]
0065a880  24 20 96 e5                                      ldr r2, [r6, #0x24]
0065a884  08 20 92 e5                                      ldr r2, [r2, #8]
0065a888  00 20 83 e5                                      str r2, [r3]
0065a88c  48 00 9d e5                                      ldr r0, [sp, #0x48]
0065a890  05 00 50 e1                                      cmp r0, r5
0065a894  02 00 00 0a                                      beq #0x65a8a4
0065a898  00 00 50 e3                                      cmp r0, #0
0065a89c  00 00 00 0a                                      beq #0x65a8a4
0065a8a0  ea d6 f2 eb                                      bl #0x310450
0065a8a4  09 20 94 e7                                      ldr r2, [r4, sb]
0065a8a8  04 10 9d e5                                      ldr r1, [sp, #4]
0065a8ac  0b 30 94 e7                                      ldr r3, [r4, fp]
0065a8b0  00 20 92 e5                                      ldr r2, [r2]
0065a8b4  06 00 a0 e1                                      mov r0, r6
0065a8b8  28 10 c2 e5                                      strb r1, [r2, #0x28]
0065a8bc  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
0065a8c0  00 30 93 e5                                      ldr r3, [r3]
0065a8c4  03 00 52 e1                                      cmp r2, r3
0065a8c8  28 00 00 1a                                      bne #0x65a970
0065a8cc  54 d0 8d e2                                      add sp, sp, #0x54
0065a8d0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0065a8d4  08 10 9d e5                                      ldr r1, [sp, #8]
0065a8d8  00 00 51 e3                                      cmp r1, #0
0065a8dc  00 60 a0 03                                      moveq r6, #0
0065a8e0  e9 ff ff 0a                                      beq #0x65a88c
0065a8e4  48 30 9d e5                                      ldr r3, [sp, #0x48]
0065a8e8  00 10 a0 e3                                      mov r1, #0
0065a8ec  50 00 a0 e3                                      mov r0, #0x50
0065a8f0  00 30 8d e5                                      str r3, [sp]
0065a8f4  2c 66 fb eb                                      bl #0x5341ac
0065a8f8  00 30 9d e5                                      ldr r3, [sp]
0065a8fc  07 20 a0 e1                                      mov r2, r7
0065a900  00 60 a0 e1                                      mov r6, r0
0065a904  03 10 a0 e1                                      mov r1, r3
0065a908  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0065a90c  cd f5 ff eb                                      bl #0x658048
0065a910  48 30 9d e5                                      ldr r3, [sp, #0x48]
0065a914  50 10 8d e2                                      add r1, sp, #0x50
0065a918  0a 00 a0 e1                                      mov r0, sl
0065a91c  3c 30 21 e5                                      str r3, [r1, #-0x3c]!
0065a920  29 ff ff eb                                      bl #0x65a5cc
0065a924  00 60 80 e5                                      str r6, [r0]
0065a928  24 30 96 e5                                      ldr r3, [r6, #0x24]
0065a92c  14 30 93 e5                                      ldr r3, [r3, #0x14]
0065a930  00 00 53 e3                                      cmp r3, #0
0065a934  d4 ff ff 1a                                      bne #0x65a88c
0065a938  07 10 a0 e1                                      mov r1, r7
0065a93c  08 00 a0 e1                                      mov r0, r8
0065a940  a2 f4 ff eb                                      bl #0x657bd0
0065a944  00 70 a0 e1                                      mov r7, r0
0065a948  06 10 a0 e1                                      mov r1, r6
0065a94c  08 00 a0 e1                                      mov r0, r8
0065a950  07 20 a0 e1                                      mov r2, r7
0065a954  cd f8 ff eb                                      bl #0x658c90
0065a958  00 80 a0 e1                                      mov r8, r0
0065a95c  07 00 a0 e1                                      mov r0, r7
0065a960  07 0b f3 eb                                      bl #0x31d584
0065a964  00 00 58 e3                                      cmp r8, #0
0065a968  00 60 a0 13                                      movne r6, #0
0065a96c  c6 ff ff ea                                      b #0x65a88c
0065a970  66 ce f2 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0065a974  38 a3 33 00 ac 40 00 00 48 44 00 00 b4 22 00 00  .byte 0x38, 0xa3, 0x33, 0x00, 0xac, 0x40, 0x00, 0x00, 0x48, 0x44, 0x00, 0x00, 0xb4, 0x22, 0x00, 0x00
0065a984  84 10 00 00 34 39 00 00                          .byte 0x84, 0x10, 0x00, 0x00, 0x34, 0x39, 0x00, 0x00


; postLoadProcess: manager+0x24 -> object vptr -> vptr+8 virtual dispatch.
00658e50  03 00 a0 e3                                      mov r0, #3
00658e54  c9 c7 fe eb                                      bl #0x60ad80
00658e58  24 00 9b e5                                      ldr r0, [fp, #0x24]
00658e5c  18 e0 9d e5                                      ldr lr, [sp, #0x18]
00658e60  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00658e64  00 c0 90 e5                                      ldr ip, [r0]
00658e68  00 10 a0 e1                                      mov r1, r0
00658e6c  20 00 9d e5                                      ldr r0, [sp, #0x20]
00658e70  0a 20 a0 e1                                      mov r2, sl
00658e74  00 e0 8d e5                                      str lr, [sp]
00658e78  11 00 8d e9                                      stmib sp, {r0, r4}
00658e7c  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
00658e80  0f e0 a0 e1                                      mov lr, pc
00658e84  08 f0 9c e5                                      ldr pc, [ip, #8]
00658e88  06 00 a0 e1                                      mov r0, r6
00658e8c  bb c7 fe eb                                      bl #0x60ad80

; Concrete vtable target implementation.
; FUNCTION 0x00659704, declared_size=100, range_size=100, mode=arm
; class-group: glitch::collada::CResFactory
; alias: _ZN6glitch7collada11CResFactory10getTextureEPNS0_8CResFileERKSbIcSt11char_traitsIcENS_4core10SAllocatorIcLNS_6memory13E_MEMORY_HINTE0EEEEPNS_2io9IReadFileEPNS_5video15CTextureManagerEPNS0_6SImageE
; demangled: glitch::collada::CResFactory::getTexture(glitch::collada::CResFile*, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const&, glitch::io::IReadFile*, glitch::video::CTextureManager*, glitch::collada::SImage*)
; decoder-mode: arm
00659704  54 20 9f e5                                      ldr r2, [pc, #0x54]
00659708  30 40 2d e9                                      push {r4, r5, lr}
0065970c  00 40 a0 e1                                      mov r4, r0
00659710  4c 00 9f e5                                      ldr r0, [pc, #0x4c]
00659714  02 20 8f e0                                      add r2, pc, r2
00659718  14 d0 4d e2                                      sub sp, sp, #0x14
0065971c  00 00 92 e7                                      ldr r0, [r2, r0]
00659720  24 50 9d e5                                      ldr r5, [sp, #0x24]
00659724  00 20 90 e5                                      ldr r2, [r0]
00659728  04 00 a0 e1                                      mov r0, r4
0065972c  29 c0 d2 e5                                      ldrb ip, [r2, #0x29]
00659730  28 20 9d e5                                      ldr r2, [sp, #0x28]
00659734  00 00 5c e3                                      cmp ip, #0
00659738  00 c0 92 15                                      ldrne ip, [r2]
0065973c  08 e0 92 e5                                      ldr lr, [r2, #8]
00659740  03 20 a0 e1                                      mov r2, r3
00659744  20 30 9d e5                                      ldr r3, [sp, #0x20]
00659748  20 40 8d e8                                      stm sp, {r5, lr}
0065974c  08 c0 8d e5                                      str ip, [sp, #8]
00659750  52 ff ff eb                                      bl #0x6594a0
00659754  04 00 a0 e1                                      mov r0, r4
00659758  14 d0 8d e2                                      add sp, sp, #0x14
0065975c  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
00659760  7c b3 33 00 48 44 00 00                          .byte 0x7c, 0xb3, 0x33, 0x00, 0x48, 0x44, 0x00, 0x00
