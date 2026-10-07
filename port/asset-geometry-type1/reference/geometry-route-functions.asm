; Type-1 geometry route audit: exact ARM ranges from the original library.
; Original APK SHA-256: 32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200
; Original library SHA-256: 36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80
; Each listed range was mapped through the unique file-backed PT_LOAD segment and byte-compared with the direct APK entry.
; ARM mode. Evidence, not assembler-ready source.

; Verified APK bytes: ELF VA 0x0060e41c, size 24, file offset 0x0060e41c, SHA-256 3689e7cdc7ffb4a9ee331ad50e89c3db562dd17485b4f3be5b01dc6c2126aba6.
; Source: glitch_collada_CColladaDatabase-f458595c81f3-001.asm
; FUNCTION 0x0060e41c, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase11getGeometryEi
; demangled: glitch::collada::CColladaDatabase::getGeometry(int) const
; decoder-mode: arm
0060e41c  00 30 90 e5                                      ldr r3, [r0]
0060e420  24 30 93 e5                                      ldr r3, [r3, #0x24]
0060e424  20 30 93 e5                                      ldr r3, [r3, #0x20]
0060e428  6c 00 93 e5                                      ldr r0, [r3, #0x6c]
0060e42c  01 02 80 e0                                      add r0, r0, r1, lsl #4
0060e430  1e ff 2f e1                                      bx lr

; Verified APK bytes: ELF VA 0x0060e634, size 132, file offset 0x0060e634, SHA-256 d7c22aecae934a74d1038d0c772e343ec9ce9e628d8534e4cd136978f70292c2.
; Source: glitch_collada_CColladaDatabase-f458595c81f3-001.asm
; FUNCTION 0x0060e634, declared_size=132, range_size=132, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase17constructGeometryEPNS_5video12IVideoDriverEPNS0_9SGeometryE
; demangled: glitch::collada::CColladaDatabase::constructGeometry(glitch::video::IVideoDriver*, glitch::collada::SGeometry*) const
; decoder-mode: arm
0060e634  30 40 2d e9                                      push {r4, r5, lr}
0060e638  00 c0 53 e2                                      subs ip, r3, #0
0060e63c  14 d0 4d e2                                      sub sp, sp, #0x14
0060e640  00 40 a0 e1                                      mov r4, r0
0060e644  02 30 a0 e1                                      mov r3, r2
0060e648  02 00 00 0a                                      beq #0x60e658
0060e64c  08 20 9c e5                                      ldr r2, [ip, #8]
0060e650  00 00 52 e3                                      cmp r2, #0
0060e654  04 00 00 0a                                      beq #0x60e66c
0060e658  00 30 a0 e3                                      mov r3, #0
0060e65c  00 30 84 e5                                      str r3, [r4]
0060e660  04 00 a0 e1                                      mov r0, r4
0060e664  14 d0 8d e2                                      add sp, sp, #0x14
0060e668  30 80 bd e8                                      pop {r4, r5, pc}
0060e66c  04 00 91 e5                                      ldr r0, [r1, #4]
0060e670  01 20 a0 e1                                      mov r2, r1
0060e674  00 50 90 e5                                      ldr r5, [r0]
0060e678  00 10 a0 e1                                      mov r1, r0
0060e67c  00 c0 8d e5                                      str ip, [sp]
0060e680  0c 00 8d e2                                      add r0, sp, #0xc
0060e684  0f e0 a0 e1                                      mov lr, pc
0060e688  34 f0 95 e5                                      ldr pc, [r5, #0x34]
0060e68c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0060e690  00 00 50 e3                                      cmp r0, #0
0060e694  00 00 84 e5                                      str r0, [r4]
0060e698  04 30 90 15                                      ldrne r3, [r0, #4]
0060e69c  01 30 83 12                                      addne r3, r3, #1
0060e6a0  04 30 80 15                                      strne r3, [r0, #4]
0060e6a4  0c 00 9d 15                                      ldrne r0, [sp, #0xc]
0060e6a8  00 00 50 e3                                      cmp r0, #0
0060e6ac  eb ff ff 0a                                      beq #0x60e660
0060e6b0  b3 3b f4 eb                                      bl #0x31d584
0060e6b4  e9 ff ff ea                                      b #0x60e660

; Verified APK bytes: ELF VA 0x0060e6b8, size 56, file offset 0x0060e6b8, SHA-256 6290b2f8efecec3d58695d254c6a7b8cf50eb9977ec35c9ec16d2cfbecc0989a.
; Source: glitch_collada_CColladaDatabase-f458595c81f3-001.asm
; FUNCTION 0x0060e6b8, declared_size=56, range_size=56, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase17constructGeometryEPNS_5video12IVideoDriverEi
; demangled: glitch::collada::CColladaDatabase::constructGeometry(glitch::video::IVideoDriver*, int) const
; decoder-mode: arm
0060e6b8  70 40 2d e9                                      push {r4, r5, r6, lr}
0060e6bc  01 50 a0 e1                                      mov r5, r1
0060e6c0  00 40 a0 e1                                      mov r4, r0
0060e6c4  03 10 a0 e1                                      mov r1, r3
0060e6c8  05 00 a0 e1                                      mov r0, r5
0060e6cc  02 60 a0 e1                                      mov r6, r2
0060e6d0  51 ff ff eb                                      bl #0x60e41c
0060e6d4  05 10 a0 e1                                      mov r1, r5
0060e6d8  00 30 a0 e1                                      mov r3, r0
0060e6dc  06 20 a0 e1                                      mov r2, r6
0060e6e0  04 00 a0 e1                                      mov r0, r4
0060e6e4  d2 ff ff eb                                      bl #0x60e634
0060e6e8  04 00 a0 e1                                      mov r0, r4
0060e6ec  70 80 bd e8                                      pop {r4, r5, r6, pc}

; Verified APK bytes: ELF VA 0x0061aa48, size 96, file offset 0x0061aa48, SHA-256 2a47c4475278648579c56f0283d3269daa4e0c458caa517d12dc21eb42dd61bf.
; Source: glitch_collada_CColladaDatabase-f458595c81f3-001.asm
; FUNCTION 0x0061aa48, declared_size=96, range_size=96, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase11getGeometryEPKc
; demangled: glitch::collada::CColladaDatabase::getGeometry(char const*) const
; decoder-mode: arm
0061aa48  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061aa4c  00 30 90 e5                                      ldr r3, [r0]
0061aa50  01 70 a0 e1                                      mov r7, r1
0061aa54  24 30 93 e5                                      ldr r3, [r3, #0x24]
0061aa58  20 30 93 e5                                      ldr r3, [r3, #0x20]
0061aa5c  68 60 93 e5                                      ldr r6, [r3, #0x68]
0061aa60  00 00 56 e3                                      cmp r6, #0
0061aa64  0d 00 00 da                                      ble #0x61aaa0
0061aa68  6c 40 93 e5                                      ldr r4, [r3, #0x6c]
0061aa6c  00 50 a0 e3                                      mov r5, #0
0061aa70  02 00 00 ea                                      b #0x61aa80
0061aa74  06 00 55 e1                                      cmp r5, r6
0061aa78  10 40 84 e2                                      add r4, r4, #0x10
0061aa7c  07 00 00 0a                                      beq #0x61aaa0
0061aa80  00 00 94 e5                                      ldr r0, [r4]
0061aa84  07 10 a0 e1                                      mov r1, r7
0061aa88  23 ce f3 eb                                      bl #0x30e31c
0061aa8c  00 00 50 e3                                      cmp r0, #0
0061aa90  01 50 85 e2                                      add r5, r5, #1
0061aa94  f6 ff ff 1a                                      bne #0x61aa74
0061aa98  04 00 a0 e1                                      mov r0, r4
0061aa9c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0061aaa0  00 00 a0 e3                                      mov r0, #0
0061aaa4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; Verified APK bytes: ELF VA 0x0061aaa8, size 56, file offset 0x0061aaa8, SHA-256 3370aa9d2181cb6496531d5ff124da4cb0612df2b9927811689c57630acff931.
; Source: glitch_collada_CColladaDatabase-f458595c81f3-001.asm
; FUNCTION 0x0061aaa8, declared_size=56, range_size=56, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase17constructGeometryEPNS_5video12IVideoDriverEPKc
; demangled: glitch::collada::CColladaDatabase::constructGeometry(glitch::video::IVideoDriver*, char const*) const
; decoder-mode: arm
0061aaa8  70 40 2d e9                                      push {r4, r5, r6, lr}
0061aaac  01 50 a0 e1                                      mov r5, r1
0061aab0  00 40 a0 e1                                      mov r4, r0
0061aab4  03 10 a0 e1                                      mov r1, r3
0061aab8  05 00 a0 e1                                      mov r0, r5
0061aabc  02 60 a0 e1                                      mov r6, r2
0061aac0  e0 ff ff eb                                      bl #0x61aa48
0061aac4  05 10 a0 e1                                      mov r1, r5
0061aac8  00 30 a0 e1                                      mov r3, r0
0061aacc  06 20 a0 e1                                      mov r2, r6
0061aad0  04 00 a0 e1                                      mov r0, r4
0061aad4  d6 ce ff eb                                      bl #0x60e634
0061aad8  04 00 a0 e1                                      mov r0, r4
0061aadc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; Verified APK bytes: ELF VA 0x0061aae0, size 328, file offset 0x0061aae0, SHA-256 4d137a9a8d9f40a0a218d165ef8f4da9019e0f13f131808bf667d6627accaffb.
; Source: glitch_collada_CColladaDatabase-f458595c81f3-001.asm
; FUNCTION 0x0061aae0, declared_size=328, range_size=328, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase17constructGeometryEPNS_5video12IVideoDriverEPKcS6_
; demangled: glitch::collada::CColladaDatabase::constructGeometry(glitch::video::IVideoDriver*, char const*, char const*) const
; decoder-mode: arm
0061aae0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0061aae4  2c 41 9f e5                                      ldr r4, [pc, #0x12c]
0061aae8  2c 81 9f e5                                      ldr r8, [pc, #0x12c]
0061aaec  14 d0 4d e2                                      sub sp, sp, #0x14
0061aaf0  04 40 8f e0                                      add r4, pc, r4
0061aaf4  08 70 94 e7                                      ldr r7, [r4, r8]
0061aaf8  03 a0 a0 e1                                      mov sl, r3
0061aafc  01 60 a0 e1                                      mov r6, r1
0061ab00  00 50 a0 e1                                      mov r5, r0
0061ab04  02 b0 a0 e1                                      mov fp, r2
0061ab08  00 00 97 e5                                      ldr r0, [r7]
0061ab0c  03 20 a0 e1                                      mov r2, r3
0061ab10  00 10 91 e5                                      ldr r1, [r1]
0061ab14  01 30 a0 e3                                      mov r3, #1
0061ab18  55 00 01 eb                                      bl #0x65ac74
0061ab1c  00 90 50 e2                                      subs sb, r0, #0
0061ab20  23 00 00 0a                                      beq #0x61abb4
0061ab24  00 30 97 e5                                      ldr r3, [r7]
0061ab28  00 20 a0 e3                                      mov r2, #0
0061ab2c  0c 00 8d e2                                      add r0, sp, #0xc
0061ab30  28 70 d3 e5                                      ldrb r7, [r3, #0x28]
0061ab34  28 20 c3 e5                                      strb r2, [r3, #0x28]
0061ab38  04 30 96 e5                                      ldr r3, [r6, #4]
0061ab3c  04 90 8d e5                                      str sb, [sp, #4]
0061ab40  04 60 8d e2                                      add r6, sp, #4
0061ab44  08 30 8d e5                                      str r3, [sp, #8]
0061ab48  04 30 99 e5                                      ldr r3, [sb, #4]
0061ab4c  06 10 a0 e1                                      mov r1, r6
0061ab50  02 00 53 e1                                      cmp r3, r2
0061ab54  01 30 83 12                                      addne r3, r3, #1
0061ab58  04 30 89 15                                      strne r3, [sb, #4]
0061ab5c  38 30 9d e5                                      ldr r3, [sp, #0x38]
0061ab60  0b 20 a0 e1                                      mov r2, fp
0061ab64  cf ff ff eb                                      bl #0x61aaa8
0061ab68  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0061ab6c  00 00 53 e3                                      cmp r3, #0
0061ab70  00 30 85 15                                      strne r3, [r5]
0061ab74  17 00 00 0a                                      beq #0x61abd8
0061ab78  04 20 93 e5                                      ldr r2, [r3, #4]
0061ab7c  01 20 82 e2                                      add r2, r2, #1
0061ab80  04 20 83 e5                                      str r2, [r3, #4]
0061ab84  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0061ab88  00 00 50 e3                                      cmp r0, #0
0061ab8c  00 00 00 0a                                      beq #0x61ab94
0061ab90  7b 0a f4 eb                                      bl #0x31d584
0061ab94  06 00 a0 e1                                      mov r0, r6
0061ab98  35 fa ff eb                                      bl #0x619474
0061ab9c  08 30 94 e7                                      ldr r3, [r4, r8]
0061aba0  00 30 93 e5                                      ldr r3, [r3]
0061aba4  28 70 c3 e5                                      strb r7, [r3, #0x28]
0061aba8  05 00 a0 e1                                      mov r0, r5
0061abac  14 d0 8d e2                                      add sp, sp, #0x14
0061abb0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0061abb4  64 00 9f e5                                      ldr r0, [pc, #0x64]
0061abb8  03 10 a0 e3                                      mov r1, #3
0061abbc  00 00 8f e0                                      add r0, pc, r0
0061abc0  36 c0 ff eb                                      bl #0x60aca0
0061abc4  0a 00 a0 e1                                      mov r0, sl
0061abc8  03 10 a0 e3                                      mov r1, #3
0061abcc  33 c0 ff eb                                      bl #0x60aca0
0061abd0  00 90 85 e5                                      str sb, [r5]
0061abd4  f3 ff ff ea                                      b #0x61aba8
0061abd8  44 00 9f e5                                      ldr r0, [pc, #0x44]
0061abdc  03 10 a0 e3                                      mov r1, #3
0061abe0  00 00 8f e0                                      add r0, pc, r0
0061abe4  2d c0 ff eb                                      bl #0x60aca0
0061abe8  0a 00 a0 e1                                      mov r0, sl
0061abec  03 10 a0 e3                                      mov r1, #3
0061abf0  2a c0 ff eb                                      bl #0x60aca0
0061abf4  38 00 9d e5                                      ldr r0, [sp, #0x38]
0061abf8  03 10 a0 e3                                      mov r1, #3
0061abfc  27 c0 ff eb                                      bl #0x60aca0
0061ac00  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0061ac04  00 00 50 e3                                      cmp r0, #0
0061ac08  00 00 85 e5                                      str r0, [r5]
0061ac0c  00 30 a0 e1                                      mov r3, r0
0061ac10  dc ff ff 0a                                      beq #0x61ab88
0061ac14  d7 ff ff ea                                      b #0x61ab78
; mapping-symbol data/literal pool
0061ac18  a0 9f 37 00 48 44 00 00 cc a1 2c 00 b8 a1 2c 00  .byte 0xa0, 0x9f, 0x37, 0x00, 0x48, 0x44, 0x00, 0x00, 0xcc, 0xa1, 0x2c, 0x00, 0xb8, 0xa1, 0x2c, 0x00

; Verified APK bytes: ELF VA 0x0061aeb8, size 500, file offset 0x0061aeb8, SHA-256 7f6b5abcb0cc7417df2566e713f3b0665738657101d6c7785aa84d1ab36741c4.
; Source: glitch_collada_CColladaDatabase-f458595c81f3-001.asm
; FUNCTION 0x0061aeb8, declared_size=500, range_size=500, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase17constructGeometryEPNS_5video12IVideoDriverEPNS0_17SInstanceGeometryEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaDatabase::constructGeometry(glitch::video::IVideoDriver*, glitch::collada::SInstanceGeometry*, glitch::collada::CRootSceneNode*) const
; decoder-mode: arm
0061aeb8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0061aebc  00 90 a0 e1                                      mov sb, r0
0061aec0  00 00 a0 e3                                      mov r0, #0
0061aec4  00 00 89 e5                                      str r0, [sb]
0061aec8  03 60 a0 e1                                      mov r6, r3
0061aecc  00 30 93 e5                                      ldr r3, [r3]
0061aed0  04 c0 96 e5                                      ldr ip, [r6, #4]
0061aed4  34 d0 4d e2                                      sub sp, sp, #0x34
0061aed8  00 00 53 e1                                      cmp r3, r0
0061aedc  01 50 a0 e1                                      mov r5, r1
0061aee0  01 c0 8c e2                                      add ip, ip, #1
0061aee4  10 20 8d e5                                      str r2, [sp, #0x10]
0061aee8  5e 00 00 0a                                      beq #0x61b068
0061aeec  2c 00 8d e2                                      add r0, sp, #0x2c
0061aef0  00 c0 8d e5                                      str ip, [sp]
0061aef4  f9 fe ff eb                                      bl #0x61aae0
0061aef8  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
0061aefc  00 00 53 e3                                      cmp r3, #0
0061af00  04 20 93 15                                      ldrne r2, [r3, #4]
0061af04  01 20 82 12                                      addne r2, r2, #1
0061af08  04 20 83 15                                      strne r2, [r3, #4]
0061af0c  00 00 99 e5                                      ldr r0, [sb]
0061af10  00 30 89 e5                                      str r3, [sb]
0061af14  00 00 50 e3                                      cmp r0, #0
0061af18  00 00 00 0a                                      beq #0x61af20
0061af1c  98 09 f4 eb                                      bl #0x31d584
0061af20  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
0061af24  00 00 50 e3                                      cmp r0, #0
0061af28  00 00 00 0a                                      beq #0x61af30
0061af2c  94 09 f4 eb                                      bl #0x31d584
0061af30  00 30 99 e5                                      ldr r3, [sb]
0061af34  00 00 53 e3                                      cmp r3, #0
0061af38  47 00 00 0a                                      beq #0x61b05c
0061af3c  0c 30 96 e5                                      ldr r3, [r6, #0xc]
0061af40  00 00 53 e3                                      cmp r3, #0
0061af44  44 00 00 da                                      ble #0x61b05c
0061af48  00 70 a0 e3                                      mov r7, #0
0061af4c  1c 00 8d e2                                      add r0, sp, #0x1c
0061af50  07 40 a0 e1                                      mov r4, r7
0061af54  07 80 a0 e1                                      mov r8, r7
0061af58  24 a0 8d e2                                      add sl, sp, #0x24
0061af5c  20 b0 8d e2                                      add fp, sp, #0x20
0061af60  14 00 8d e5                                      str r0, [sp, #0x14]
0061af64  06 70 a0 e1                                      mov r7, r6
0061af68  30 00 00 ea                                      b #0x61b030
0061af6c  04 20 96 e5                                      ldr r2, [r6, #4]
0061af70  01 20 82 e2                                      add r2, r2, #1
0061af74  43 ff ff eb                                      bl #0x61ac88
0061af78  00 20 a0 e1                                      mov r2, r0
0061af7c  0a 00 a0 e1                                      mov r0, sl
0061af80  58 10 9d e5                                      ldr r1, [sp, #0x58]
0061af84  10 30 9d e5                                      ldr r3, [sp, #0x10]
0061af88  db 06 01 eb                                      bl #0x65cafc
0061af8c  04 e0 95 e5                                      ldr lr, [r5, #4]
0061af90  00 c0 99 e5                                      ldr ip, [sb]
0061af94  06 30 a0 e1                                      mov r3, r6
0061af98  0e 10 a0 e1                                      mov r1, lr
0061af9c  00 e0 9e e5                                      ldr lr, [lr]
0061afa0  00 00 5c e3                                      cmp ip, #0
0061afa4  0b 00 a0 e1                                      mov r0, fp
0061afa8  24 60 9e e5                                      ldr r6, [lr, #0x24]
0061afac  1c c0 8d e5                                      str ip, [sp, #0x1c]
0061afb0  04 e0 9c 15                                      ldrne lr, [ip, #4]
0061afb4  05 20 a0 e1                                      mov r2, r5
0061afb8  3c 80 88 e2                                      add r8, r8, #0x3c
0061afbc  01 e0 8e 12                                      addne lr, lr, #1
0061afc0  04 e0 8c 15                                      strne lr, [ip, #4]
0061afc4  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0061afc8  08 40 8d e5                                      str r4, [sp, #8]
0061afcc  04 a0 8d e5                                      str sl, [sp, #4]
0061afd0  00 c0 8d e5                                      str ip, [sp]
0061afd4  00 c0 a0 e3                                      mov ip, #0
0061afd8  0c c0 8d e5                                      str ip, [sp, #0xc]
0061afdc  36 ff 2f e1                                      blx r6
0061afe0  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0061afe4  00 00 50 e3                                      cmp r0, #0
0061afe8  00 00 00 0a                                      beq #0x61aff0
0061afec  64 09 f4 eb                                      bl #0x31d584
0061aff0  00 c0 99 e5                                      ldr ip, [sb]
0061aff4  04 10 a0 e1                                      mov r1, r4
0061aff8  0b 30 a0 e1                                      mov r3, fp
0061affc  0a 20 a0 e1                                      mov r2, sl
0061b000  0c 00 a0 e1                                      mov r0, ip
0061b004  00 c0 9c e5                                      ldr ip, [ip]
0061b008  0f e0 a0 e1                                      mov lr, pc
0061b00c  20 f0 9c e5                                      ldr pc, [ip, #0x20]
0061b010  0b 00 a0 e1                                      mov r0, fp
0061b014  94 7c fd eb                                      bl #0x57a26c
0061b018  0a 00 a0 e1                                      mov r0, sl
0061b01c  f1 d6 f3 eb                                      bl #0x310be8
0061b020  0c 30 97 e5                                      ldr r3, [r7, #0xc]
0061b024  01 40 84 e2                                      add r4, r4, #1
0061b028  03 00 54 e1                                      cmp r4, r3
0061b02c  0a 00 00 aa                                      bge #0x61b05c
0061b030  10 60 97 e5                                      ldr r6, [r7, #0x10]
0061b034  05 00 a0 e1                                      mov r0, r5
0061b038  08 10 96 e7                                      ldr r1, [r6, r8]
0061b03c  08 60 86 e0                                      add r6, r6, r8
0061b040  00 00 51 e3                                      cmp r1, #0
0061b044  c8 ff ff 1a                                      bne #0x61af6c
0061b048  08 10 96 e5                                      ldr r1, [r6, #8]
0061b04c  05 00 a0 e1                                      mov r0, r5
0061b050  ea cc ff eb                                      bl #0x60e400
0061b054  00 20 a0 e1                                      mov r2, r0
0061b058  c7 ff ff ea                                      b #0x61af7c
0061b05c  09 00 a0 e1                                      mov r0, sb
0061b060  34 d0 8d e2                                      add sp, sp, #0x34
0061b064  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0061b068  0c 30 a0 e1                                      mov r3, ip
0061b06c  28 00 8d e2                                      add r0, sp, #0x28
0061b070  8c fe ff eb                                      bl #0x61aaa8
0061b074  28 30 9d e5                                      ldr r3, [sp, #0x28]
0061b078  00 00 53 e3                                      cmp r3, #0
0061b07c  04 20 93 15                                      ldrne r2, [r3, #4]
0061b080  01 20 82 12                                      addne r2, r2, #1
0061b084  04 20 83 15                                      strne r2, [r3, #4]
0061b088  00 00 99 e5                                      ldr r0, [sb]
0061b08c  00 30 89 e5                                      str r3, [sb]
0061b090  00 00 50 e3                                      cmp r0, #0
0061b094  00 00 00 0a                                      beq #0x61b09c
0061b098  39 09 f4 eb                                      bl #0x31d584
0061b09c  28 00 9d e5                                      ldr r0, [sp, #0x28]
0061b0a0  00 00 50 e3                                      cmp r0, #0
0061b0a4  a0 ff ff 1a                                      bne #0x61af2c
0061b0a8  a0 ff ff ea                                      b #0x61af30

; Verified APK bytes: ELF VA 0x0062ff08, size 24, file offset 0x0062ff08, SHA-256 b1e3ef70ad907e3b00b0053830ac8eea90044906e9b6de1e3158bf386de1c765.
; Source: glitch_collada_CColladaFactory-db06bc565b1a-001.asm
; FUNCTION 0x0062ff08, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::CColladaFactory
; alias: _ZN6glitch7collada15CColladaFactory21getVertexBufferConfigERKNS0_16CColladaDatabaseEPNS0_9SGeometryE
; demangled: glitch::collada::CColladaFactory::getVertexBufferConfig(glitch::collada::CColladaDatabase const&, glitch::collada::SGeometry*)
; decoder-mode: arm
0062ff08  00 20 a0 e3                                      mov r2, #0
0062ff0c  04 10 a0 e3                                      mov r1, #4
0062ff10  05 20 c0 e5                                      strb r2, [r0, #5]
0062ff14  00 10 80 e5                                      str r1, [r0]
0062ff18  04 20 c0 e5                                      strb r2, [r0, #4]
0062ff1c  1e ff 2f e1                                      bx lr

; Verified APK bytes: ELF VA 0x0062ff20, size 24, file offset 0x0062ff20, SHA-256 b1e3ef70ad907e3b00b0053830ac8eea90044906e9b6de1e3158bf386de1c765.
; Source: glitch_collada_CColladaFactory-db06bc565b1a-001.asm
; FUNCTION 0x0062ff20, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::CColladaFactory
; alias: _ZN6glitch7collada15CColladaFactory20getIndexBufferConfigERKNS0_16CColladaDatabaseEPNS0_9SGeometryE
; demangled: glitch::collada::CColladaFactory::getIndexBufferConfig(glitch::collada::CColladaDatabase const&, glitch::collada::SGeometry*)
; decoder-mode: arm
0062ff20  00 20 a0 e3                                      mov r2, #0
0062ff24  04 10 a0 e3                                      mov r1, #4
0062ff28  05 20 c0 e5                                      strb r2, [r0, #5]
0062ff2c  00 10 80 e5                                      str r1, [r0]
0062ff30  04 20 c0 e5                                      strb r2, [r0, #4]
0062ff34  1e ff 2f e1                                      bx lr

; Verified APK bytes: ELF VA 0x0062ff38, size 8, file offset 0x0062ff38, SHA-256 007f34a6c3441b0240da53f253e513b959105da2d8803255e1856aa48f48db47.
; Source: glitch_collada_CColladaFactory-db06bc565b1a-001.asm
; FUNCTION 0x0062ff38, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CColladaFactory
; alias: _ZN6glitch7collada15CColladaFactory20isSharingMeshBuffersERKNS0_16CColladaDatabaseEPNS0_9SGeometryE
; demangled: glitch::collada::CColladaFactory::isSharingMeshBuffers(glitch::collada::CColladaDatabase const&, glitch::collada::SGeometry*)
; decoder-mode: arm
0062ff38  01 00 a0 e3                                      mov r0, #1
0062ff3c  1e ff 2f e1                                      bx lr

; Verified APK bytes: ELF VA 0x00631924, size 180, file offset 0x00631924, SHA-256 777953f96b7c6fcdf55f632a73c7674c74db17907d534ee507c5369f48188826.
; Source: glitch_collada_CColladaFactory-db06bc565b1a-001.asm
; FUNCTION 0x00631924, declared_size=180, range_size=180, mode=arm
; class-group: glitch::collada::CColladaFactory
; alias: _ZN6glitch7collada15CColladaFactory14createGeometryERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPNS0_9SGeometryE
; demangled: glitch::collada::CColladaFactory::createGeometry(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, glitch::collada::SGeometry*)
; decoder-mode: arm
00631924  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00631928  24 d0 4d e2                                      sub sp, sp, #0x24
0063192c  48 50 9d e5                                      ldr r5, [sp, #0x48]
00631930  18 70 8d e2                                      add r7, sp, #0x18
00631934  01 40 a0 e1                                      mov r4, r1
00631938  02 60 a0 e1                                      mov r6, r2
0063193c  00 a0 a0 e1                                      mov sl, r0
00631940  03 b0 a0 e1                                      mov fp, r3
00631944  07 00 a0 e1                                      mov r0, r7
00631948  05 30 a0 e1                                      mov r3, r5
0063194c  10 80 8d e2                                      add r8, sp, #0x10
00631950  00 c0 91 e5                                      ldr ip, [r1]
00631954  0f e0 a0 e1                                      mov lr, pc
00631958  28 f0 9c e5                                      ldr pc, [ip, #0x28]
0063195c  00 c0 94 e5                                      ldr ip, [r4]
00631960  05 30 a0 e1                                      mov r3, r5
00631964  08 00 a0 e1                                      mov r0, r8
00631968  04 10 a0 e1                                      mov r1, r4
0063196c  06 20 a0 e1                                      mov r2, r6
00631970  0f e0 a0 e1                                      mov lr, pc
00631974  2c f0 9c e5                                      ldr pc, [ip, #0x2c]
00631978  05 20 a0 e1                                      mov r2, r5
0063197c  00 30 94 e5                                      ldr r3, [r4]
00631980  06 10 a0 e1                                      mov r1, r6
00631984  04 00 a0 e1                                      mov r0, r4
00631988  0f e0 a0 e1                                      mov lr, pc
0063198c  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00631990  00 10 a0 e3                                      mov r1, #0
00631994  00 90 a0 e1                                      mov sb, r0
00631998  3c 00 a0 e3                                      mov r0, #0x3c
0063199c  02 0a fc eb                                      bl #0x5341ac
006319a0  05 30 a0 e1                                      mov r3, r5
006319a4  06 10 a0 e1                                      mov r1, r6
006319a8  0b 20 a0 e1                                      mov r2, fp
006319ac  00 40 a0 e1                                      mov r4, r0
006319b0  80 03 8d e8                                      stm sp, {r7, r8, sb}
006319b4  f3 4e 00 eb                                      bl #0x645588
006319b8  00 00 54 e3                                      cmp r4, #0
006319bc  00 40 8a e5                                      str r4, [sl]
006319c0  04 30 94 15                                      ldrne r3, [r4, #4]
006319c4  0a 00 a0 e1                                      mov r0, sl
006319c8  01 30 83 12                                      addne r3, r3, #1
006319cc  04 30 84 15                                      strne r3, [r4, #4]
006319d0  24 d0 8d e2                                      add sp, sp, #0x24
006319d4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; Verified APK bytes: ELF VA 0x00350794, size 36, file offset 0x00350794, SHA-256 a222d04222de638c66ce105865e2a7ddadaa223352eee68db718dd69124e4329.
; Source: ColladaFactory-98195ab58b5b-001.asm
; FUNCTION 0x00350794, declared_size=36, range_size=36, mode=arm
; class-group: ColladaFactory
; alias: _ZN14ColladaFactory14createGeometryERKN6glitch7collada16CColladaDatabaseEPNS0_5video12IVideoDriverEPNS1_9SGeometryE
; demangled: ColladaFactory::createGeometry(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, glitch::collada::SGeometry*)
; decoder-mode: arm
00350794  10 40 2d e9                                      push {r4, lr}
00350798  08 d0 4d e2                                      sub sp, sp, #8
0035079c  10 c0 9d e5                                      ldr ip, [sp, #0x10]
003507a0  00 40 a0 e1                                      mov r4, r0
003507a4  00 c0 8d e5                                      str ip, [sp]
003507a8  5d 84 0b eb                                      bl #0x631924
003507ac  04 00 a0 e1                                      mov r0, r4
003507b0  08 d0 8d e2                                      add sp, sp, #8
003507b4  10 80 bd e8                                      pop {r4, pc}

; Verified APK bytes: ELF VA 0x0064b700, size 712, file offset 0x0064b700, SHA-256 f40325c6bf01c984a1de96b3419a9380c60b10a5603736614b488d2eb69b21f5.
; Source: glitch_collada_CMorphingMesh-832437b81c01-001.asm
; FUNCTION 0x0064b700, declared_size=712, range_size=712, mode=arm
; class-group: glitch::collada::CMorphingMesh
; alias: _ZN6glitch7collada13CMorphingMesh15instanciateMeshEPNS_5video12IVideoDriverEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CMorphingMesh::instanciateMesh(glitch::video::IVideoDriver*, glitch::collada::CRootSceneNode*)
; decoder-mode: arm
0064b700  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0064b704  30 30 90 e5                                      ldr r3, [r0, #0x30]
0064b708  4c d0 4d e2                                      sub sp, sp, #0x4c
0064b70c  00 40 a0 e1                                      mov r4, r0
0064b710  24 00 80 e2                                      add r0, r0, #0x24
0064b714  10 00 8d e5                                      str r0, [sp, #0x10]
0064b718  00 50 93 e5                                      ldr r5, [r3]
0064b71c  01 70 a0 e1                                      mov r7, r1
0064b720  10 10 93 e5                                      ldr r1, [r3, #0x10]
0064b724  01 50 85 e2                                      add r5, r5, #1
0064b728  0c 60 84 e2                                      add r6, r4, #0xc
0064b72c  01 10 81 e2                                      add r1, r1, #1
0064b730  02 80 a0 e1                                      mov r8, r2
0064b734  b4 f9 ff eb                                      bl #0x649e0c
0064b738  44 00 8d e2                                      add r0, sp, #0x44
0064b73c  06 10 a0 e1                                      mov r1, r6
0064b740  07 20 a0 e1                                      mov r2, r7
0064b744  05 30 a0 e1                                      mov r3, r5
0064b748  d6 3c ff eb                                      bl #0x61aaa8
0064b74c  44 b0 9d e5                                      ldr fp, [sp, #0x44]
0064b750  00 00 5b e3                                      cmp fp, #0
0064b754  83 00 00 0a                                      beq #0x64b968
0064b758  04 30 9b e5                                      ldr r3, [fp, #4]
0064b75c  01 30 83 e2                                      add r3, r3, #1
0064b760  04 30 8b e5                                      str r3, [fp, #4]
0064b764  44 00 9d e5                                      ldr r0, [sp, #0x44]
0064b768  00 00 50 e3                                      cmp r0, #0
0064b76c  00 00 00 0a                                      beq #0x64b774
0064b770  83 47 f3 eb                                      bl #0x31d584
0064b774  00 00 5b e3                                      cmp fp, #0
0064b778  2c b0 8d 15                                      strne fp, [sp, #0x2c]
0064b77c  79 00 00 0a                                      beq #0x64b968
0064b780  04 30 9b e5                                      ldr r3, [fp, #4]
0064b784  01 30 83 e2                                      add r3, r3, #1
0064b788  04 30 8b e5                                      str r3, [fp, #4]
0064b78c  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
0064b790  28 10 94 e5                                      ldr r1, [r4, #0x28]
0064b794  03 00 51 e1                                      cmp r1, r3
0064b798  fe 35 a0 e3                                      mov r3, #0x3f800000
0064b79c  30 30 8d e5                                      str r3, [sp, #0x30]
0064b7a0  84 00 00 0a                                      beq #0x64b9b8
0064b7a4  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
0064b7a8  00 30 81 e5                                      str r3, [r1]
0064b7ac  00 00 53 e3                                      cmp r3, #0
0064b7b0  04 20 93 15                                      ldrne r2, [r3, #4]
0064b7b4  01 20 82 12                                      addne r2, r2, #1
0064b7b8  04 20 83 15                                      strne r2, [r3, #4]
0064b7bc  30 30 9d e5                                      ldr r3, [sp, #0x30]
0064b7c0  04 30 81 e5                                      str r3, [r1, #4]
0064b7c4  28 30 94 e5                                      ldr r3, [r4, #0x28]
0064b7c8  08 30 83 e2                                      add r3, r3, #8
0064b7cc  28 30 84 e5                                      str r3, [r4, #0x28]
0064b7d0  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
0064b7d4  00 00 50 e3                                      cmp r0, #0
0064b7d8  00 00 00 0a                                      beq #0x64b7e0
0064b7dc  68 47 f3 eb                                      bl #0x31d584
0064b7e0  30 30 94 e5                                      ldr r3, [r4, #0x30]
0064b7e4  10 80 93 e5                                      ldr r8, [r3, #0x10]
0064b7e8  00 00 58 e3                                      cmp r8, #0
0064b7ec  3b 00 00 da                                      ble #0x64b8e0
0064b7f0  24 20 8d e2                                      add r2, sp, #0x24
0064b7f4  00 50 a0 e3                                      mov r5, #0
0064b7f8  3c 90 8d e2                                      add sb, sp, #0x3c
0064b7fc  14 20 8d e5                                      str r2, [sp, #0x14]
0064b800  00 00 00 ea                                      b #0x64b808
0064b804  30 30 94 e5                                      ldr r3, [r4, #0x30]
0064b808  14 30 93 e5                                      ldr r3, [r3, #0x14]
0064b80c  09 00 a0 e1                                      mov r0, sb
0064b810  06 10 a0 e1                                      mov r1, r6
0064b814  05 31 93 e7                                      ldr r3, [r3, r5, lsl #2]
0064b818  07 20 a0 e1                                      mov r2, r7
0064b81c  84 0b ff eb                                      bl #0x60e634
0064b820  3c a0 9d e5                                      ldr sl, [sp, #0x3c]
0064b824  05 31 a0 e1                                      lsl r3, r5, #2
0064b828  00 00 5a e3                                      cmp sl, #0
0064b82c  08 00 00 0a                                      beq #0x64b854
0064b830  04 20 9a e5                                      ldr r2, [sl, #4]
0064b834  01 20 82 e2                                      add r2, r2, #1
0064b838  04 20 8a e5                                      str r2, [sl, #4]
0064b83c  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
0064b840  00 00 50 e3                                      cmp r0, #0
0064b844  02 00 00 0a                                      beq #0x64b854
0064b848  0c 30 8d e5                                      str r3, [sp, #0xc]
0064b84c  4c 47 f3 eb                                      bl #0x31d584
0064b850  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0064b854  30 20 94 e5                                      ldr r2, [r4, #0x30]
0064b858  00 00 5a e3                                      cmp sl, #0
0064b85c  1c 20 92 e5                                      ldr r2, [r2, #0x1c]
0064b860  03 20 92 e7                                      ldr r2, [r2, r3]
0064b864  24 a0 8d e5                                      str sl, [sp, #0x24]
0064b868  04 30 9a 15                                      ldrne r3, [sl, #4]
0064b86c  01 30 83 12                                      addne r3, r3, #1
0064b870  04 30 8a 15                                      strne r3, [sl, #4]
0064b874  28 10 94 e5                                      ldr r1, [r4, #0x28]
0064b878  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
0064b87c  28 20 8d e5                                      str r2, [sp, #0x28]
0064b880  03 00 51 e1                                      cmp r1, r3
0064b884  33 00 00 0a                                      beq #0x64b958
0064b888  24 30 9d e5                                      ldr r3, [sp, #0x24]
0064b88c  00 30 81 e5                                      str r3, [r1]
0064b890  00 00 53 e3                                      cmp r3, #0
0064b894  04 20 93 15                                      ldrne r2, [r3, #4]
0064b898  01 20 82 12                                      addne r2, r2, #1
0064b89c  04 20 83 15                                      strne r2, [r3, #4]
0064b8a0  28 30 9d e5                                      ldr r3, [sp, #0x28]
0064b8a4  04 30 81 e5                                      str r3, [r1, #4]
0064b8a8  28 30 94 e5                                      ldr r3, [r4, #0x28]
0064b8ac  08 30 83 e2                                      add r3, r3, #8
0064b8b0  28 30 84 e5                                      str r3, [r4, #0x28]
0064b8b4  24 00 9d e5                                      ldr r0, [sp, #0x24]
0064b8b8  00 00 50 e3                                      cmp r0, #0
0064b8bc  00 00 00 0a                                      beq #0x64b8c4
0064b8c0  2f 47 f3 eb                                      bl #0x31d584
0064b8c4  00 00 5a e3                                      cmp sl, #0
0064b8c8  01 00 00 0a                                      beq #0x64b8d4
0064b8cc  0a 00 a0 e1                                      mov r0, sl
0064b8d0  2b 47 f3 eb                                      bl #0x31d584
0064b8d4  01 50 85 e2                                      add r5, r5, #1
0064b8d8  08 00 55 e1                                      cmp r5, r8
0064b8dc  c8 ff ff 1a                                      bne #0x64b804
0064b8e0  24 30 94 e5                                      ldr r3, [r4, #0x24]
0064b8e4  18 50 8d e2                                      add r5, sp, #0x18
0064b8e8  18 40 84 e2                                      add r4, r4, #0x18
0064b8ec  00 30 93 e5                                      ldr r3, [r3]
0064b8f0  03 00 a0 e1                                      mov r0, r3
0064b8f4  00 30 93 e5                                      ldr r3, [r3]
0064b8f8  0f e0 a0 e1                                      mov lr, pc
0064b8fc  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0064b900  00 30 a0 e3                                      mov r3, #0
0064b904  00 10 a0 e1                                      mov r1, r0
0064b908  05 20 a0 e1                                      mov r2, r5
0064b90c  04 00 a0 e1                                      mov r0, r4
0064b910  20 30 8d e5                                      str r3, [sp, #0x20]
0064b914  38 30 8d e5                                      str r3, [sp, #0x38]
0064b918  34 30 8d e5                                      str r3, [sp, #0x34]
0064b91c  18 30 8d e5                                      str r3, [sp, #0x18]
0064b920  1c 30 8d e5                                      str r3, [sp, #0x1c]
0064b924  5b ff ff eb                                      bl #0x64b698
0064b928  05 00 a0 e1                                      mov r0, r5
0064b92c  df f9 ff eb                                      bl #0x64a0b0
0064b930  34 00 8d e2                                      add r0, sp, #0x34
0064b934  4c ba fc eb                                      bl #0x57a26c
0064b938  38 00 8d e2                                      add r0, sp, #0x38
0064b93c  a9 14 f3 eb                                      bl #0x310be8
0064b940  00 00 5b e3                                      cmp fp, #0
0064b944  01 00 00 0a                                      beq #0x64b950
0064b948  0b 00 a0 e1                                      mov r0, fp
0064b94c  0c 47 f3 eb                                      bl #0x31d584
0064b950  4c d0 8d e2                                      add sp, sp, #0x4c
0064b954  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0064b958  10 00 9d e5                                      ldr r0, [sp, #0x10]
0064b95c  14 20 9d e5                                      ldr r2, [sp, #0x14]
0064b960  6d f9 ff eb                                      bl #0x649f1c
0064b964  d2 ff ff ea                                      b #0x64b8b4
0064b968  05 30 a0 e1                                      mov r3, r5
0064b96c  40 00 8d e2                                      add r0, sp, #0x40
0064b970  06 10 a0 e1                                      mov r1, r6
0064b974  07 20 a0 e1                                      mov r2, r7
0064b978  00 80 8d e5                                      str r8, [sp]
0064b97c  1f 3c ff eb                                      bl #0x61aa00
0064b980  40 00 9d e5                                      ldr r0, [sp, #0x40]
0064b984  00 00 50 e3                                      cmp r0, #0
0064b988  04 30 90 15                                      ldrne r3, [r0, #4]
0064b98c  00 b0 a0 e1                                      mov fp, r0
0064b990  01 30 83 12                                      addne r3, r3, #1
0064b994  04 30 80 15                                      strne r3, [r0, #4]
0064b998  40 00 9d 15                                      ldrne r0, [sp, #0x40]
0064b99c  00 00 50 e3                                      cmp r0, #0
0064b9a0  00 00 00 0a                                      beq #0x64b9a8
0064b9a4  f6 46 f3 eb                                      bl #0x31d584
0064b9a8  00 00 5b e3                                      cmp fp, #0
0064b9ac  2c b0 8d e5                                      str fp, [sp, #0x2c]
0064b9b0  75 ff ff 0a                                      beq #0x64b78c
0064b9b4  71 ff ff ea                                      b #0x64b780
0064b9b8  10 00 9d e5                                      ldr r0, [sp, #0x10]
0064b9bc  2c 20 8d e2                                      add r2, sp, #0x2c
0064b9c0  55 f9 ff eb                                      bl #0x649f1c
0064b9c4  81 ff ff ea                                      b #0x64b7d0
