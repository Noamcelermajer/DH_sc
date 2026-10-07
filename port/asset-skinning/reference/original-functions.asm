; Original ELF virtual addresses for libDungeonHunter2.so.
; Original library SHA-256: 36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80
; Selected complete ARM ranges, copied from recovered annotated listings.
; This is evidence, not assembler-ready source.

; FUNCTION 0x0060f924, declared_size=128, range_size=128, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase13constructSkinEPNS_5video12IVideoDriverEPNS0_11SControllerEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaDatabase::constructSkin(glitch::video::IVideoDriver*, glitch::collada::SController*, glitch::collada::CRootSceneNode*) const
; decoder-mode: arm
0060f924  70 40 2d e9                                      push {r4, r5, r6, lr}
0060f928  10 d0 4d e2                                      sub sp, sp, #0x10
0060f92c  04 c0 91 e5                                      ldr ip, [r1, #4]
0060f930  20 50 9d e5                                      ldr r5, [sp, #0x20]
0060f934  01 e0 a0 e1                                      mov lr, r1
0060f938  02 60 a0 e1                                      mov r6, r2
0060f93c  0c 10 a0 e1                                      mov r1, ip
0060f940  00 40 a0 e1                                      mov r4, r0
0060f944  00 c0 9c e5                                      ldr ip, [ip]
0060f948  0e 20 a0 e1                                      mov r2, lr
0060f94c  00 30 8d e5                                      str r3, [sp]
0060f950  0c 00 8d e2                                      add r0, sp, #0xc
0060f954  06 30 a0 e1                                      mov r3, r6
0060f958  04 50 8d e5                                      str r5, [sp, #4]
0060f95c  0f e0 a0 e1                                      mov lr, pc
0060f960  58 f0 9c e5                                      ldr pc, [ip, #0x58]
0060f964  05 00 a0 e1                                      mov r0, r5
0060f968  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0060f96c  b0 2e 01 eb                                      bl #0x65b434
0060f970  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0060f974  00 00 50 e3                                      cmp r0, #0
0060f978  00 00 84 e5                                      str r0, [r4]
0060f97c  04 30 90 15                                      ldrne r3, [r0, #4]
0060f980  01 30 83 12                                      addne r3, r3, #1
0060f984  04 30 80 15                                      strne r3, [r0, #4]
0060f988  0c 00 9d 15                                      ldrne r0, [sp, #0xc]
0060f98c  00 00 50 e3                                      cmp r0, #0
0060f990  00 00 00 0a                                      beq #0x60f998
0060f994  fa 36 f4 eb                                      bl #0x31d584
0060f998  04 00 a0 e1                                      mov r0, r4
0060f99c  10 d0 8d e2                                      add sp, sp, #0x10
0060f9a0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0060f9a4, declared_size=128, range_size=128, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase14constructMorphEPNS_5video12IVideoDriverEPNS0_11SControllerEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaDatabase::constructMorph(glitch::video::IVideoDriver*, glitch::collada::SController*, glitch::collada::CRootSceneNode*) const
; decoder-mode: arm
0060f9a4  70 40 2d e9                                      push {r4, r5, r6, lr}
0060f9a8  10 d0 4d e2                                      sub sp, sp, #0x10
0060f9ac  04 c0 91 e5                                      ldr ip, [r1, #4]
0060f9b0  20 50 9d e5                                      ldr r5, [sp, #0x20]
0060f9b4  01 e0 a0 e1                                      mov lr, r1
0060f9b8  02 60 a0 e1                                      mov r6, r2
0060f9bc  0c 10 a0 e1                                      mov r1, ip
0060f9c0  00 40 a0 e1                                      mov r4, r0
0060f9c4  00 c0 9c e5                                      ldr ip, [ip]
0060f9c8  0e 20 a0 e1                                      mov r2, lr
0060f9cc  00 30 8d e5                                      str r3, [sp]
0060f9d0  0c 00 8d e2                                      add r0, sp, #0xc
0060f9d4  06 30 a0 e1                                      mov r3, r6
0060f9d8  04 50 8d e5                                      str r5, [sp, #4]
0060f9dc  0f e0 a0 e1                                      mov lr, pc
0060f9e0  38 f0 9c e5                                      ldr pc, [ip, #0x38]
0060f9e4  05 00 a0 e1                                      mov r0, r5
0060f9e8  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0060f9ec  21 2e 01 eb                                      bl #0x65b278
0060f9f0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0060f9f4  00 00 50 e3                                      cmp r0, #0
0060f9f8  00 00 84 e5                                      str r0, [r4]
0060f9fc  04 30 90 15                                      ldrne r3, [r0, #4]
0060fa00  01 30 83 12                                      addne r3, r3, #1
0060fa04  04 30 80 15                                      strne r3, [r0, #4]
0060fa08  0c 00 9d 15                                      ldrne r0, [sp, #0xc]
0060fa0c  00 00 50 e3                                      cmp r0, #0
0060fa10  00 00 00 0a                                      beq #0x60fa18
0060fa14  da 36 f4 eb                                      bl #0x31d584
0060fa18  04 00 a0 e1                                      mov r0, r4
0060fa1c  10 d0 8d e2                                      add sp, sp, #0x10
0060fa20  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0060fa24, declared_size=76, range_size=76, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase19constructControllerEPNS_5video12IVideoDriverEPNS0_11SControllerEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaDatabase::constructController(glitch::video::IVideoDriver*, glitch::collada::SController*, glitch::collada::CRootSceneNode*) const
; decoder-mode: arm
0060fa24  30 40 2d e9                                      push {r4, r5, lr}
0060fa28  00 c0 93 e5                                      ldr ip, [r3]
0060fa2c  0c d0 4d e2                                      sub sp, sp, #0xc
0060fa30  00 40 a0 e1                                      mov r4, r0
0060fa34  00 00 5c e3                                      cmp ip, #0
0060fa38  18 50 9d e5                                      ldr r5, [sp, #0x18]
0060fa3c  04 00 00 1a                                      bne #0x60fa54
0060fa40  00 50 8d e5                                      str r5, [sp]
0060fa44  b6 ff ff eb                                      bl #0x60f924
0060fa48  04 00 a0 e1                                      mov r0, r4
0060fa4c  0c d0 8d e2                                      add sp, sp, #0xc
0060fa50  30 80 bd e8                                      pop {r4, r5, pc}
0060fa54  01 00 5c e3                                      cmp ip, #1
0060fa58  00 30 a0 13                                      movne r3, #0
0060fa5c  00 30 80 15                                      strne r3, [r0]
0060fa60  f8 ff ff 1a                                      bne #0x60fa48
0060fa64  00 50 8d e5                                      str r5, [sp]
0060fa68  cd ff ff eb                                      bl #0x60f9a4
0060fa6c  f5 ff ff ea                                      b #0x60fa48

; FUNCTION 0x006315cc, declared_size=92, range_size=92, mode=arm
; class-group: glitch::collada::CColladaFactory
; alias: _ZN6glitch7collada15CColladaFactory10createSkinERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPNS0_11SControllerEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaFactory::createSkin(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, glitch::collada::SController*, glitch::collada::CRootSceneNode*)
; decoder-mode: arm
006315cc  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
006315d0  00 10 a0 e3                                      mov r1, #0
006315d4  0c d0 4d e2                                      sub sp, sp, #0xc
006315d8  00 50 a0 e1                                      mov r5, r0
006315dc  9c 00 a0 e3                                      mov r0, #0x9c
006315e0  02 60 a0 e1                                      mov r6, r2
006315e4  03 70 a0 e1                                      mov r7, r3
006315e8  ef 0a fc eb                                      bl #0x5341ac
006315ec  24 c0 9d e5                                      ldr ip, [sp, #0x24]
006315f0  20 30 9d e5                                      ldr r3, [sp, #0x20]
006315f4  06 10 a0 e1                                      mov r1, r6
006315f8  07 20 a0 e1                                      mov r2, r7
006315fc  00 40 a0 e1                                      mov r4, r0
00631600  00 c0 8d e5                                      str ip, [sp]
00631604  b9 d3 00 eb                                      bl #0x6664f0
00631608  00 00 54 e3                                      cmp r4, #0
0063160c  00 40 85 e5                                      str r4, [r5]
00631610  04 30 94 15                                      ldrne r3, [r4, #4]
00631614  05 00 a0 e1                                      mov r0, r5
00631618  01 30 83 12                                      addne r3, r3, #1
0063161c  04 30 84 15                                      strne r3, [r4, #4]
00631620  0c d0 8d e2                                      add sp, sp, #0xc
00631624  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x006318c8, declared_size=92, range_size=92, mode=arm
; class-group: glitch::collada::CColladaFactory
; alias: _ZN6glitch7collada15CColladaFactory11createMorphERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPNS0_11SControllerEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaFactory::createMorph(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, glitch::collada::SController*, glitch::collada::CRootSceneNode*)
; decoder-mode: arm
006318c8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
006318cc  00 10 a0 e3                                      mov r1, #0
006318d0  0c d0 4d e2                                      sub sp, sp, #0xc
006318d4  00 50 a0 e1                                      mov r5, r0
006318d8  40 00 a0 e3                                      mov r0, #0x40
006318dc  02 60 a0 e1                                      mov r6, r2
006318e0  03 70 a0 e1                                      mov r7, r3
006318e4  30 0a fc eb                                      bl #0x5341ac
006318e8  24 c0 9d e5                                      ldr ip, [sp, #0x24]
006318ec  20 30 9d e5                                      ldr r3, [sp, #0x20]
006318f0  06 10 a0 e1                                      mov r1, r6
006318f4  07 20 a0 e1                                      mov r2, r7
006318f8  00 40 a0 e1                                      mov r4, r0
006318fc  00 c0 8d e5                                      str ip, [sp]
00631900  30 68 00 eb                                      bl #0x64b9c8
00631904  00 00 54 e3                                      cmp r4, #0
00631908  00 40 85 e5                                      str r4, [r5]
0063190c  04 30 94 15                                      ldrne r3, [r4, #4]
00631910  05 00 a0 e1                                      mov r0, r5
00631914  01 30 83 12                                      addne r3, r3, #1
00631918  04 30 84 15                                      strne r3, [r4, #4]
0063191c  0c d0 8d e2                                      add sp, sp, #0xc
00631920  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

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

; FUNCTION 0x0064b9c8, declared_size=216, range_size=216, mode=arm
; class-group: glitch::collada::CMorphingMesh
; alias: _ZN6glitch7collada13CMorphingMeshC1ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CMorphingMesh::CMorphingMesh(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, glitch::collada::SController&, glitch::collada::CRootSceneNode*)
; decoder-mode: arm
0064b9c8  c0 c0 9f e5                                      ldr ip, [pc, #0xc0]
0064b9cc  70 40 2d e9                                      push {r4, r5, r6, lr}
0064b9d0  bc e0 9f e5                                      ldr lr, [pc, #0xbc]
0064b9d4  0c c0 8f e0                                      add ip, pc, ip
0064b9d8  00 40 a0 e1                                      mov r4, r0
0064b9dc  0e e0 9c e7                                      ldr lr, [ip, lr]
0064b9e0  00 00 a0 e3                                      mov r0, #0
0064b9e4  04 00 84 e5                                      str r0, [r4, #4]
0064b9e8  08 e0 8e e2                                      add lr, lr, #8
0064b9ec  00 e0 84 e5                                      str lr, [r4]
0064b9f0  00 00 91 e5                                      ldr r0, [r1]
0064b9f4  02 e0 a0 e1                                      mov lr, r2
0064b9f8  0c 00 84 e5                                      str r0, [r4, #0xc]
0064b9fc  04 10 91 e5                                      ldr r1, [r1, #4]
0064ba00  00 00 50 e3                                      cmp r0, #0
0064ba04  10 20 9d e5                                      ldr r2, [sp, #0x10]
0064ba08  10 10 84 e5                                      str r1, [r4, #0x10]
0064ba0c  03 00 00 0a                                      beq #0x64ba20
0064ba10  04 10 90 e5                                      ldr r1, [r0, #4]
0064ba14  00 00 51 e3                                      cmp r1, #0
0064ba18  01 10 81 12                                      addne r1, r1, #1
0064ba1c  04 10 80 15                                      strne r1, [r0, #4]
0064ba20  70 50 9f e5                                      ldr r5, [pc, #0x70]
0064ba24  70 00 9f e5                                      ldr r0, [pc, #0x70]
0064ba28  00 10 a0 e3                                      mov r1, #0
0064ba2c  05 50 9c e7                                      ldr r5, [ip, r5]
0064ba30  00 00 9c e7                                      ldr r0, [ip, r0]
0064ba34  2c 10 84 e5                                      str r1, [r4, #0x2c]
0064ba38  04 50 85 e2                                      add r5, r5, #4
0064ba3c  08 00 80 e2                                      add r0, r0, #8
0064ba40  08 50 84 e5                                      str r5, [r4, #8]
0064ba44  00 00 84 e5                                      str r0, [r4]
0064ba48  14 10 84 e5                                      str r1, [r4, #0x14]
0064ba4c  18 10 84 e5                                      str r1, [r4, #0x18]
0064ba50  1c 10 84 e5                                      str r1, [r4, #0x1c]
0064ba54  20 10 84 e5                                      str r1, [r4, #0x20]
0064ba58  24 10 84 e5                                      str r1, [r4, #0x24]
0064ba5c  28 10 84 e5                                      str r1, [r4, #0x28]
0064ba60  08 10 93 e5                                      ldr r1, [r3, #8]
0064ba64  00 00 e0 e3                                      mvn r0, #0
0064ba68  3c 00 84 e5                                      str r0, [r4, #0x3c]
0064ba6c  30 10 84 e5                                      str r1, [r4, #0x30]
0064ba70  38 20 84 e5                                      str r2, [r4, #0x38]
0064ba74  04 30 93 e5                                      ldr r3, [r3, #4]
0064ba78  04 00 a0 e1                                      mov r0, r4
0064ba7c  0e 10 a0 e1                                      mov r1, lr
0064ba80  08 30 84 e5                                      str r3, [r4, #8]
0064ba84  1d ff ff eb                                      bl #0x64b700
0064ba88  04 00 a0 e1                                      mov r0, r4
0064ba8c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0064ba90  bc 90 34 00 40 0a 00 00 b4 17 00 00 3c 33 00 00  .byte 0xbc, 0x90, 0x34, 0x00, 0x40, 0x0a, 0x00, 0x00, 0xb4, 0x17, 0x00, 0x00, 0x3c, 0x33, 0x00, 0x00

; FUNCTION 0x0064baa0, declared_size=216, range_size=216, mode=arm
; class-group: glitch::collada::CMorphingMesh
; alias: _ZN6glitch7collada13CMorphingMeshC2ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CMorphingMesh::CMorphingMesh(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, glitch::collada::SController&, glitch::collada::CRootSceneNode*)
; decoder-mode: arm
0064baa0  c0 c0 9f e5                                      ldr ip, [pc, #0xc0]
0064baa4  70 40 2d e9                                      push {r4, r5, r6, lr}
0064baa8  bc e0 9f e5                                      ldr lr, [pc, #0xbc]
0064baac  0c c0 8f e0                                      add ip, pc, ip
0064bab0  00 40 a0 e1                                      mov r4, r0
0064bab4  0e e0 9c e7                                      ldr lr, [ip, lr]
0064bab8  00 00 a0 e3                                      mov r0, #0
0064babc  04 00 84 e5                                      str r0, [r4, #4]
0064bac0  08 e0 8e e2                                      add lr, lr, #8
0064bac4  00 e0 84 e5                                      str lr, [r4]
0064bac8  00 00 91 e5                                      ldr r0, [r1]
0064bacc  02 e0 a0 e1                                      mov lr, r2
0064bad0  0c 00 84 e5                                      str r0, [r4, #0xc]
0064bad4  04 10 91 e5                                      ldr r1, [r1, #4]
0064bad8  00 00 50 e3                                      cmp r0, #0
0064badc  10 20 9d e5                                      ldr r2, [sp, #0x10]
0064bae0  10 10 84 e5                                      str r1, [r4, #0x10]
0064bae4  03 00 00 0a                                      beq #0x64baf8
0064bae8  04 10 90 e5                                      ldr r1, [r0, #4]
0064baec  00 00 51 e3                                      cmp r1, #0
0064baf0  01 10 81 12                                      addne r1, r1, #1
0064baf4  04 10 80 15                                      strne r1, [r0, #4]
0064baf8  70 50 9f e5                                      ldr r5, [pc, #0x70]
0064bafc  70 00 9f e5                                      ldr r0, [pc, #0x70]
0064bb00  00 10 a0 e3                                      mov r1, #0
0064bb04  05 50 9c e7                                      ldr r5, [ip, r5]
0064bb08  00 00 9c e7                                      ldr r0, [ip, r0]
0064bb0c  2c 10 84 e5                                      str r1, [r4, #0x2c]
0064bb10  04 50 85 e2                                      add r5, r5, #4
0064bb14  08 00 80 e2                                      add r0, r0, #8
0064bb18  08 50 84 e5                                      str r5, [r4, #8]
0064bb1c  00 00 84 e5                                      str r0, [r4]
0064bb20  14 10 84 e5                                      str r1, [r4, #0x14]
0064bb24  18 10 84 e5                                      str r1, [r4, #0x18]
0064bb28  1c 10 84 e5                                      str r1, [r4, #0x1c]
0064bb2c  20 10 84 e5                                      str r1, [r4, #0x20]
0064bb30  24 10 84 e5                                      str r1, [r4, #0x24]
0064bb34  28 10 84 e5                                      str r1, [r4, #0x28]
0064bb38  08 10 93 e5                                      ldr r1, [r3, #8]
0064bb3c  00 00 e0 e3                                      mvn r0, #0
0064bb40  3c 00 84 e5                                      str r0, [r4, #0x3c]
0064bb44  30 10 84 e5                                      str r1, [r4, #0x30]
0064bb48  38 20 84 e5                                      str r2, [r4, #0x38]
0064bb4c  04 30 93 e5                                      ldr r3, [r3, #4]
0064bb50  04 00 a0 e1                                      mov r0, r4
0064bb54  0e 10 a0 e1                                      mov r1, lr
0064bb58  08 30 84 e5                                      str r3, [r4, #8]
0064bb5c  e7 fe ff eb                                      bl #0x64b700
0064bb60  04 00 a0 e1                                      mov r0, r4
0064bb64  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0064bb68  e4 8f 34 00 40 0a 00 00 b4 17 00 00 3c 33 00 00  .byte 0xe4, 0x8f, 0x34, 0x00, 0x40, 0x0a, 0x00, 0x00, 0xb4, 0x17, 0x00, 0x00, 0x3c, 0x33, 0x00, 0x00

; FUNCTION 0x00663bd0, declared_size=108, range_size=108, mode=arm
; class-group: glitch::res::onDemand<glitch::collada::SSkinData<float> >
; alias: _ZN6glitch3res8onDemandINS_7collada9SSkinDataIfEEE3getERNS0_14onDemandReaderE
; demangled: glitch::res::onDemand<glitch::collada::SSkinData<float> >::get(glitch::res::onDemandReader&)
; decoder-mode: arm
00663bd0  70 40 2d e9                                      push {r4, r5, r6, lr}
00663bd4  00 50 a0 e1                                      mov r5, r0
00663bd8  00 00 51 e3                                      cmp r1, #0
00663bdc  00 10 85 e5                                      str r1, [r5]
00663be0  00 30 91 15                                      ldrne r3, [r1]
00663be4  01 40 a0 e1                                      mov r4, r1
00663be8  02 60 a0 e1                                      mov r6, r2
00663bec  01 30 83 12                                      addne r3, r3, #1
00663bf0  00 30 81 15                                      strne r3, [r1]
00663bf4  0c 10 91 e5                                      ldr r1, [r1, #0xc]
00663bf8  00 00 51 e3                                      cmp r1, #0
00663bfc  01 00 00 0a                                      beq #0x663c08
00663c00  05 00 a0 e1                                      mov r0, r5
00663c04  70 80 bd e8                                      pop {r4, r5, r6, pc}
00663c08  08 00 94 e5                                      ldr r0, [r4, #8]
00663c0c  03 00 c0 e3                                      bic r0, r0, #3
00663c10  64 41 fb eb                                      bl #0x5341a8
00663c14  0c 00 84 e5                                      str r0, [r4, #0xc]
00663c18  00 30 a0 e1                                      mov r3, r0
00663c1c  04 20 94 e5                                      ldr r2, [r4, #4]
00663c20  06 00 a0 e1                                      mov r0, r6
00663c24  00 c0 96 e5                                      ldr ip, [r6]
00663c28  08 10 94 e5                                      ldr r1, [r4, #8]
00663c2c  0f e0 a0 e1                                      mov lr, pc
00663c30  08 f0 9c e5                                      ldr pc, [ip, #8]
00663c34  05 00 a0 e1                                      mov r0, r5
00663c38  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00664af8, declared_size=396, range_size=396, mode=arm
; class-group: glitch::collada::CSkinnedMesh
; alias: _ZN6glitch7collada12CSkinnedMesh15instanciateMeshEPNS_5video12IVideoDriverEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CSkinnedMesh::instanciateMesh(glitch::video::IVideoDriver*, glitch::collada::CRootSceneNode*)
; decoder-mode: arm
00664af8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00664afc  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
00664b00  2c d0 4d e2                                      sub sp, sp, #0x2c
00664b04  01 60 a0 e1                                      mov r6, r1
00664b08  70 50 93 e5                                      ldr r5, [r3, #0x70]
00664b0c  0c 70 80 e2                                      add r7, r0, #0xc
00664b10  00 40 a0 e1                                      mov r4, r0
00664b14  01 50 85 e2                                      add r5, r5, #1
00664b18  02 80 a0 e1                                      mov r8, r2
00664b1c  24 00 8d e2                                      add r0, sp, #0x24
00664b20  07 10 a0 e1                                      mov r1, r7
00664b24  06 20 a0 e1                                      mov r2, r6
00664b28  05 30 a0 e1                                      mov r3, r5
00664b2c  dd d7 fe eb                                      bl #0x61aaa8
00664b30  24 a0 9d e5                                      ldr sl, [sp, #0x24]
00664b34  00 00 5a e3                                      cmp sl, #0
00664b38  3e 00 00 0a                                      beq #0x664c38
00664b3c  04 30 9a e5                                      ldr r3, [sl, #4]
00664b40  01 30 83 e2                                      add r3, r3, #1
00664b44  04 30 8a e5                                      str r3, [sl, #4]
00664b48  24 00 9d e5                                      ldr r0, [sp, #0x24]
00664b4c  00 00 50 e3                                      cmp r0, #0
00664b50  00 00 00 0a                                      beq #0x664b58
00664b54  8a e2 f2 eb                                      bl #0x31d584
00664b58  00 00 5a e3                                      cmp sl, #0
00664b5c  35 00 00 0a                                      beq #0x664c38
00664b60  04 30 9a e5                                      ldr r3, [sl, #4]
00664b64  01 30 83 e2                                      add r3, r3, #1
00664b68  04 30 8a e5                                      str r3, [sl, #4]
00664b6c  68 00 94 e5                                      ldr r0, [r4, #0x68]
00664b70  68 a0 84 e5                                      str sl, [r4, #0x68]
00664b74  00 00 50 e3                                      cmp r0, #0
00664b78  0a 30 a0 01                                      moveq r3, sl
00664b7c  01 00 00 0a                                      beq #0x664b88
00664b80  7f e2 f2 eb                                      bl #0x31d584
00664b84  68 30 94 e5                                      ldr r3, [r4, #0x68]
00664b88  03 00 a0 e1                                      mov r0, r3
00664b8c  00 30 93 e5                                      ldr r3, [r3]
00664b90  0f e0 a0 e1                                      mov lr, pc
00664b94  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00664b98  00 30 90 e5                                      ldr r3, [r0]
00664b9c  24 30 84 e5                                      str r3, [r4, #0x24]
00664ba0  04 30 90 e5                                      ldr r3, [r0, #4]
00664ba4  28 30 84 e5                                      str r3, [r4, #0x28]
00664ba8  08 30 90 e5                                      ldr r3, [r0, #8]
00664bac  2c 30 84 e5                                      str r3, [r4, #0x2c]
00664bb0  0c 30 90 e5                                      ldr r3, [r0, #0xc]
00664bb4  30 30 84 e5                                      str r3, [r4, #0x30]
00664bb8  10 30 90 e5                                      ldr r3, [r0, #0x10]
00664bbc  34 30 84 e5                                      str r3, [r4, #0x34]
00664bc0  14 30 90 e5                                      ldr r3, [r0, #0x14]
00664bc4  38 30 84 e5                                      str r3, [r4, #0x38]
00664bc8  68 30 94 e5                                      ldr r3, [r4, #0x68]
00664bcc  0c 50 8d e2                                      add r5, sp, #0xc
00664bd0  5c 40 84 e2                                      add r4, r4, #0x5c
00664bd4  03 00 a0 e1                                      mov r0, r3
00664bd8  00 30 93 e5                                      ldr r3, [r3]
00664bdc  0f e0 a0 e1                                      mov lr, pc
00664be0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00664be4  00 30 a0 e3                                      mov r3, #0
00664be8  00 c0 e0 e3                                      mvn ip, #0
00664bec  00 10 a0 e1                                      mov r1, r0
00664bf0  05 20 a0 e1                                      mov r2, r5
00664bf4  04 00 a0 e1                                      mov r0, r4
00664bf8  18 30 8d e5                                      str r3, [sp, #0x18]
00664bfc  1e c0 cd e5                                      strb ip, [sp, #0x1e]
00664c00  0c 30 8d e5                                      str r3, [sp, #0xc]
00664c04  10 30 8d e5                                      str r3, [sp, #0x10]
00664c08  14 30 8d e5                                      str r3, [sp, #0x14]
00664c0c  1c c0 cd e5                                      strb ip, [sp, #0x1c]
00664c10  1d c0 cd e5                                      strb ip, [sp, #0x1d]
00664c14  9d ff ff eb                                      bl #0x664a90
00664c18  05 00 a0 e1                                      mov r0, r5
00664c1c  75 fe ff eb                                      bl #0x6645f8
00664c20  00 00 5a e3                                      cmp sl, #0
00664c24  01 00 00 0a                                      beq #0x664c30
00664c28  0a 00 a0 e1                                      mov r0, sl
00664c2c  54 e2 f2 eb                                      bl #0x31d584
00664c30  2c d0 8d e2                                      add sp, sp, #0x2c
00664c34  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00664c38  07 10 a0 e1                                      mov r1, r7
00664c3c  06 20 a0 e1                                      mov r2, r6
00664c40  05 30 a0 e1                                      mov r3, r5
00664c44  20 00 8d e2                                      add r0, sp, #0x20
00664c48  00 80 8d e5                                      str r8, [sp]
00664c4c  6b d7 fe eb                                      bl #0x61aa00
00664c50  20 a0 9d e5                                      ldr sl, [sp, #0x20]
00664c54  00 00 5a e3                                      cmp sl, #0
00664c58  da ff ff 0a                                      beq #0x664bc8
00664c5c  04 30 9a e5                                      ldr r3, [sl, #4]
00664c60  01 30 83 e2                                      add r3, r3, #1
00664c64  04 30 8a e5                                      str r3, [sl, #4]
00664c68  20 00 9d e5                                      ldr r0, [sp, #0x20]
00664c6c  00 00 50 e3                                      cmp r0, #0
00664c70  00 00 00 0a                                      beq #0x664c78
00664c74  42 e2 f2 eb                                      bl #0x31d584
00664c78  00 00 5a e3                                      cmp sl, #0
00664c7c  d1 ff ff 0a                                      beq #0x664bc8
00664c80  b6 ff ff ea                                      b #0x664b60

; FUNCTION 0x00665fe8, declared_size=1288, range_size=1288, mode=arm
; class-group: glitch::collada::CSkinnedMesh
; alias: _ZN6glitch7collada12CSkinnedMeshC2ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CSkinnedMesh::CSkinnedMesh(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, glitch::collada::SController&, glitch::collada::CRootSceneNode*)
; decoder-mode: arm
00665fe8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00665fec  e4 54 9f e5                                      ldr r5, [pc, #0x4e4]
00665ff0  e4 c4 9f e5                                      ldr ip, [pc, #0x4e4]
00665ff4  00 40 a0 e1                                      mov r4, r0
00665ff8  05 50 8f e0                                      add r5, pc, r5
00665ffc  0c c0 95 e7                                      ldr ip, [r5, ip]
00666000  00 00 a0 e3                                      mov r0, #0
00666004  04 00 84 e5                                      str r0, [r4, #4]
00666008  08 c0 8c e2                                      add ip, ip, #8
0066600c  00 c0 84 e5                                      str ip, [r4]
00666010  00 00 91 e5                                      ldr r0, [r1]
00666014  01 70 a0 e1                                      mov r7, r1
00666018  24 d0 4d e2                                      sub sp, sp, #0x24
0066601c  0c 00 84 e5                                      str r0, [r4, #0xc]
00666020  04 10 91 e5                                      ldr r1, [r1, #4]
00666024  00 00 50 e3                                      cmp r0, #0
00666028  10 10 84 e5                                      str r1, [r4, #0x10]
0066602c  03 00 00 0a                                      beq #0x666040
00666030  04 10 90 e5                                      ldr r1, [r0, #4]
00666034  00 00 51 e3                                      cmp r1, #0
00666038  01 10 81 12                                      addne r1, r1, #1
0066603c  04 10 80 15                                      strne r1, [r0, #4]
00666040  98 c4 9f e5                                      ldr ip, [pc, #0x498]
00666044  98 04 9f e5                                      ldr r0, [pc, #0x498]
00666048  00 10 a0 e3                                      mov r1, #0
0066604c  0c c0 95 e7                                      ldr ip, [r5, ip]
00666050  00 00 95 e7                                      ldr r0, [r5, r0]
00666054  14 10 84 e5                                      str r1, [r4, #0x14]
00666058  04 c0 8c e2                                      add ip, ip, #4
0066605c  08 c0 84 e5                                      str ip, [r4, #8]
00666060  08 00 80 e2                                      add r0, r0, #8
00666064  01 c0 a0 e3                                      mov ip, #1
00666068  18 c0 c4 e5                                      strb ip, [r4, #0x18]
0066606c  00 00 84 e5                                      str r0, [r4]
00666070  08 60 93 e5                                      ldr r6, [r3, #8]
00666074  bf c4 a0 e3                                      mov ip, #0xbf000000
00666078  02 c5 8c e2                                      add ip, ip, #0x800000
0066607c  fe 05 a0 e3                                      mov r0, #0x3f800000
00666080  44 e0 84 e2                                      add lr, r4, #0x44
00666084  1c 60 84 e5                                      str r6, [r4, #0x1c]
00666088  2c c0 84 e5                                      str ip, [r4, #0x2c]
0066608c  38 00 84 e5                                      str r0, [r4, #0x38]
00666090  20 10 c4 e5                                      strb r1, [r4, #0x20]
00666094  22 10 c4 e5                                      strb r1, [r4, #0x22]
00666098  23 10 c4 e5                                      strb r1, [r4, #0x23]
0066609c  24 c0 84 e5                                      str ip, [r4, #0x24]
006660a0  28 c0 84 e5                                      str ip, [r4, #0x28]
006660a4  30 00 84 e5                                      str r0, [r4, #0x30]
006660a8  34 00 84 e5                                      str r0, [r4, #0x34]
006660ac  3c 10 84 e5                                      str r1, [r4, #0x3c]
006660b0  40 10 84 e5                                      str r1, [r4, #0x40]
006660b4  44 10 84 e5                                      str r1, [r4, #0x44]
006660b8  04 10 8e e5                                      str r1, [lr, #4]
006660bc  4c 10 84 e5                                      str r1, [r4, #0x4c]
006660c0  50 10 84 e5                                      str r1, [r4, #0x50]
006660c4  54 10 84 e5                                      str r1, [r4, #0x54]
006660c8  58 10 84 e5                                      str r1, [r4, #0x58]
006660cc  5c 10 84 e5                                      str r1, [r4, #0x5c]
006660d0  60 10 84 e5                                      str r1, [r4, #0x60]
006660d4  64 10 84 e5                                      str r1, [r4, #0x64]
006660d8  68 10 84 e5                                      str r1, [r4, #0x68]
006660dc  6c 10 84 e5                                      str r1, [r4, #0x6c]
006660e0  74 10 84 e5                                      str r1, [r4, #0x74]
006660e4  78 10 84 e5                                      str r1, [r4, #0x78]
006660e8  7c 10 84 e5                                      str r1, [r4, #0x7c]
006660ec  80 10 84 e5                                      str r1, [r4, #0x80]
006660f0  98 10 84 e5                                      str r1, [r4, #0x98]
006660f4  84 10 84 e5                                      str r1, [r4, #0x84]
006660f8  88 10 84 e5                                      str r1, [r4, #0x88]
006660fc  8c 10 84 e5                                      str r1, [r4, #0x8c]
00666100  90 10 84 e5                                      str r1, [r4, #0x90]
00666104  94 10 84 e5                                      str r1, [r4, #0x94]
00666108  04 30 93 e5                                      ldr r3, [r3, #4]
0066610c  02 10 a0 e1                                      mov r1, r2
00666110  04 00 a0 e1                                      mov r0, r4
00666114  48 20 9d e5                                      ldr r2, [sp, #0x48]
00666118  08 30 84 e5                                      str r3, [r4, #8]
0066611c  75 fa ff eb                                      bl #0x664af8
00666120  00 30 97 e5                                      ldr r3, [r7]
00666124  24 30 93 e5                                      ldr r3, [r3, #0x24]
00666128  20 30 93 e5                                      ldr r3, [r3, #0x20]
0066612c  04 90 93 e5                                      ldr sb, [r3, #4]
00666130  64 60 93 e5                                      ldr r6, [r3, #0x64]
00666134  00 00 56 e3                                      cmp r6, #0
00666138  00 60 a0 d3                                      movle r6, #0
0066613c  01 60 a0 c3                                      movgt r6, #1
00666140  00 00 59 e3                                      cmp sb, #0
00666144  0b 00 00 0a                                      beq #0x666178
00666148  98 33 9f e5                                      ldr r3, [pc, #0x398]
0066614c  14 10 99 e5                                      ldr r1, [sb, #0x14]
00666150  03 80 95 e7                                      ldr r8, [r5, r3]
00666154  00 30 98 e5                                      ldr r3, [r8]
00666158  20 30 93 e5                                      ldr r3, [r3, #0x20]
0066615c  34 30 93 e5                                      ldr r3, [r3, #0x34]
00666160  03 00 a0 e1                                      mov r0, r3
00666164  00 30 93 e5                                      ldr r3, [r3]
00666168  0f e0 a0 e1                                      mov lr, pc
0066616c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00666170  00 90 50 e2                                      subs sb, r0, #0
00666174  c9 00 00 0a                                      beq #0x6664a0
00666178  6c 33 9f e5                                      ldr r3, [pc, #0x36c]
0066617c  00 00 56 e3                                      cmp r6, #0
00666180  10 90 8d e5                                      str sb, [sp, #0x10]
00666184  03 30 95 e7                                      ldr r3, [r5, r3]
00666188  08 30 83 e2                                      add r3, r3, #8
0066618c  0c 30 8d e5                                      str r3, [sp, #0xc]
00666190  47 00 00 1a                                      bne #0x6662b4
00666194  00 00 59 e3                                      cmp sb, #0
00666198  01 00 00 0a                                      beq #0x6661a4
0066619c  09 00 a0 e1                                      mov r0, sb
006661a0  f7 dc f2 eb                                      bl #0x31d584
006661a4  00 10 a0 e3                                      mov r1, #0
006661a8  38 00 a0 e3                                      mov r0, #0x38
006661ac  fe 37 fb eb                                      bl #0x5341ac
006661b0  70 50 84 e2                                      add r5, r4, #0x70
006661b4  06 30 a0 e1                                      mov r3, r6
006661b8  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
006661bc  05 20 a0 e1                                      mov r2, r5
006661c0  00 70 a0 e1                                      mov r7, r0
006661c4  52 21 00 eb                                      bl #0x66e714
006661c8  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
006661cc  3c 70 84 e5                                      str r7, [r4, #0x3c]
006661d0  00 00 53 e3                                      cmp r3, #0
006661d4  03 00 00 0a                                      beq #0x6661e8
006661d8  03 00 a0 e1                                      mov r0, r3
006661dc  00 30 93 e5                                      ldr r3, [r3]
006661e0  0f e0 a0 e1                                      mov lr, pc
006661e4  04 f0 93 e5                                      ldr pc, [r3, #4]
006661e8  00 10 a0 e3                                      mov r1, #0
006661ec  30 00 a0 e3                                      mov r0, #0x30
006661f0  ed 37 fb eb                                      bl #0x5341ac
006661f4  06 30 a0 e1                                      mov r3, r6
006661f8  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
006661fc  05 20 a0 e1                                      mov r2, r5
00666200  00 70 a0 e1                                      mov r7, r0
00666204  b4 15 00 eb                                      bl #0x66b8dc
00666208  40 30 94 e5                                      ldr r3, [r4, #0x40]
0066620c  40 70 84 e5                                      str r7, [r4, #0x40]
00666210  00 00 53 e3                                      cmp r3, #0
00666214  03 00 00 0a                                      beq #0x666228
00666218  03 00 a0 e1                                      mov r0, r3
0066621c  00 30 93 e5                                      ldr r3, [r3]
00666220  0f e0 a0 e1                                      mov lr, pc
00666224  04 f0 93 e5                                      ldr pc, [r3, #4]
00666228  00 10 a0 e3                                      mov r1, #0
0066622c  30 00 a0 e3                                      mov r0, #0x30
00666230  dd 37 fb eb                                      bl #0x5341ac
00666234  06 30 a0 e1                                      mov r3, r6
00666238  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
0066623c  05 20 a0 e1                                      mov r2, r5
00666240  00 70 a0 e1                                      mov r7, r0
00666244  74 1b 00 eb                                      bl #0x66d01c
00666248  44 30 94 e5                                      ldr r3, [r4, #0x44]
0066624c  44 70 84 e5                                      str r7, [r4, #0x44]
00666250  00 00 53 e3                                      cmp r3, #0
00666254  03 00 00 0a                                      beq #0x666268
00666258  03 00 a0 e1                                      mov r0, r3
0066625c  00 30 93 e5                                      ldr r3, [r3]
00666260  0f e0 a0 e1                                      mov lr, pc
00666264  04 f0 93 e5                                      ldr pc, [r3, #4]
00666268  00 10 a0 e3                                      mov r1, #0
0066626c  34 00 a0 e3                                      mov r0, #0x34
00666270  cd 37 fb eb                                      bl #0x5341ac
00666274  06 30 a0 e1                                      mov r3, r6
00666278  05 20 a0 e1                                      mov r2, r5
0066627c  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
00666280  00 70 a0 e1                                      mov r7, r0
00666284  f3 24 00 eb                                      bl #0x66f658
00666288  48 30 94 e5                                      ldr r3, [r4, #0x48]
0066628c  48 70 84 e5                                      str r7, [r4, #0x48]
00666290  00 00 53 e3                                      cmp r3, #0
00666294  03 00 00 0a                                      beq #0x6662a8
00666298  03 00 a0 e1                                      mov r0, r3
0066629c  00 30 93 e5                                      ldr r3, [r3]
006662a0  0f e0 a0 e1                                      mov lr, pc
006662a4  04 f0 93 e5                                      ldr pc, [r3, #4]
006662a8  04 00 a0 e1                                      mov r0, r4
006662ac  24 d0 8d e2                                      add sp, sp, #0x24
006662b0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006662b4  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
006662b8  0c a0 8d e2                                      add sl, sp, #0xc
006662bc  0a 20 a0 e1                                      mov r2, sl
006662c0  80 10 93 e5                                      ldr r1, [r3, #0x80]
006662c4  1c 00 8d e2                                      add r0, sp, #0x1c
006662c8  40 f6 ff eb                                      bl #0x663bd0
006662cc  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006662d0  00 00 53 e3                                      cmp r3, #0
006662d4  00 20 93 15                                      ldrne r2, [r3]
006662d8  01 20 82 12                                      addne r2, r2, #1
006662dc  00 20 83 15                                      strne r2, [r3]
006662e0  4c 50 94 e5                                      ldr r5, [r4, #0x4c]
006662e4  00 00 55 e3                                      cmp r5, #0
006662e8  0a 00 00 0a                                      beq #0x666318
006662ec  00 30 95 e5                                      ldr r3, [r5]
006662f0  01 30 43 e2                                      sub r3, r3, #1
006662f4  00 00 53 e3                                      cmp r3, #0
006662f8  00 30 85 e5                                      str r3, [r5]
006662fc  05 00 00 1a                                      bne #0x666318
00666300  0c 00 95 e5                                      ldr r0, [r5, #0xc]
00666304  00 00 50 e3                                      cmp r0, #0
00666308  00 00 00 0a                                      beq #0x666310
0066630c  69 9f f2 eb                                      bl #0x30e0b8
00666310  00 30 a0 e3                                      mov r3, #0
00666314  0c 30 85 e5                                      str r3, [r5, #0xc]
00666318  1c 50 9d e5                                      ldr r5, [sp, #0x1c]
0066631c  00 00 55 e3                                      cmp r5, #0
00666320  4c 50 84 e5                                      str r5, [r4, #0x4c]
00666324  0c 00 00 0a                                      beq #0x66635c
00666328  00 30 95 e5                                      ldr r3, [r5]
0066632c  01 30 43 e2                                      sub r3, r3, #1
00666330  00 00 53 e3                                      cmp r3, #0
00666334  00 30 85 e5                                      str r3, [r5]
00666338  05 00 00 1a                                      bne #0x666354
0066633c  0c 00 95 e5                                      ldr r0, [r5, #0xc]
00666340  00 00 50 e3                                      cmp r0, #0
00666344  00 00 00 0a                                      beq #0x66634c
00666348  5a 9f f2 eb                                      bl #0x30e0b8
0066634c  00 30 a0 e3                                      mov r3, #0
00666350  0c 30 85 e5                                      str r3, [r5, #0xc]
00666354  00 30 a0 e3                                      mov r3, #0
00666358  1c 30 8d e5                                      str r3, [sp, #0x1c]
0066635c  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00666360  20 20 8d e2                                      add r2, sp, #0x20
00666364  50 00 84 e2                                      add r0, r4, #0x50
00666368  84 10 93 e5                                      ldr r1, [r3, #0x84]
0066636c  00 30 a0 e3                                      mov r3, #0
00666370  08 30 22 e5                                      str r3, [r2, #-8]!
00666374  07 ff ff eb                                      bl #0x665f98
00666378  18 50 9d e5                                      ldr r5, [sp, #0x18]
0066637c  00 00 55 e3                                      cmp r5, #0
00666380  06 00 00 0a                                      beq #0x6663a0
00666384  00 30 95 e5                                      ldr r3, [r5]
00666388  01 30 43 e2                                      sub r3, r3, #1
0066638c  00 00 53 e3                                      cmp r3, #0
00666390  00 30 85 e5                                      str r3, [r5]
00666394  3a 00 00 0a                                      beq #0x666484
00666398  00 30 a0 e3                                      mov r3, #0
0066639c  18 30 8d e5                                      str r3, [sp, #0x18]
006663a0  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
006663a4  84 20 93 e5                                      ldr r2, [r3, #0x84]
006663a8  00 00 52 e3                                      cmp r2, #0
006663ac  78 ff ff da                                      ble #0x666194
006663b0  00 50 a0 e3                                      mov r5, #0
006663b4  14 b0 8d e2                                      add fp, sp, #0x14
006663b8  05 80 a0 e1                                      mov r8, r5
006663bc  88 30 93 e5                                      ldr r3, [r3, #0x88]
006663c0  0a 20 a0 e1                                      mov r2, sl
006663c4  0b 00 a0 e1                                      mov r0, fp
006663c8  85 31 83 e0                                      add r3, r3, r5, lsl #3
006663cc  04 10 93 e5                                      ldr r1, [r3, #4]
006663d0  50 70 94 e5                                      ldr r7, [r4, #0x50]
006663d4  18 f6 ff eb                                      bl #0x663c3c
006663d8  14 30 9d e5                                      ldr r3, [sp, #0x14]
006663dc  05 21 a0 e1                                      lsl r2, r5, #2
006663e0  00 00 53 e3                                      cmp r3, #0
006663e4  00 10 93 15                                      ldrne r1, [r3]
006663e8  01 10 81 12                                      addne r1, r1, #1
006663ec  00 10 83 15                                      strne r1, [r3]
006663f0  02 30 97 e7                                      ldr r3, [r7, r2]
006663f4  00 00 53 e3                                      cmp r3, #0
006663f8  0b 00 00 0a                                      beq #0x66642c
006663fc  00 10 93 e5                                      ldr r1, [r3]
00666400  01 10 41 e2                                      sub r1, r1, #1
00666404  00 00 51 e3                                      cmp r1, #0
00666408  00 10 83 e5                                      str r1, [r3]
0066640c  06 00 00 1a                                      bne #0x66642c
00666410  0c 00 93 e5                                      ldr r0, [r3, #0xc]
00666414  00 00 50 e3                                      cmp r0, #0
00666418  02 00 00 0a                                      beq #0x666428
0066641c  0c 00 8d e8                                      stm sp, {r2, r3}
00666420  24 9f f2 eb                                      bl #0x30e0b8
00666424  0c 00 9d e8                                      ldm sp, {r2, r3}
00666428  0c 80 83 e5                                      str r8, [r3, #0xc]
0066642c  14 30 9d e5                                      ldr r3, [sp, #0x14]
00666430  02 30 87 e7                                      str r3, [r7, r2]
00666434  14 70 9d e5                                      ldr r7, [sp, #0x14]
00666438  00 00 57 e3                                      cmp r7, #0
0066643c  0a 00 00 0a                                      beq #0x66646c
00666440  00 30 97 e5                                      ldr r3, [r7]
00666444  01 30 43 e2                                      sub r3, r3, #1
00666448  00 00 53 e3                                      cmp r3, #0
0066644c  00 30 87 e5                                      str r3, [r7]
00666450  04 00 00 1a                                      bne #0x666468
00666454  0c 00 97 e5                                      ldr r0, [r7, #0xc]
00666458  00 00 50 e3                                      cmp r0, #0
0066645c  00 00 00 0a                                      beq #0x666464
00666460  14 9f f2 eb                                      bl #0x30e0b8
00666464  0c 80 87 e5                                      str r8, [r7, #0xc]
00666468  14 80 8d e5                                      str r8, [sp, #0x14]
0066646c  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00666470  01 50 85 e2                                      add r5, r5, #1
00666474  84 20 93 e5                                      ldr r2, [r3, #0x84]
00666478  02 00 55 e1                                      cmp r5, r2
0066647c  ce ff ff ba                                      blt #0x6663bc
00666480  43 ff ff ea                                      b #0x666194
00666484  0c 00 95 e5                                      ldr r0, [r5, #0xc]
00666488  00 00 50 e3                                      cmp r0, #0
0066648c  00 00 00 0a                                      beq #0x666494
00666490  08 9f f2 eb                                      bl #0x30e0b8
00666494  00 30 a0 e3                                      mov r3, #0
00666498  0c 30 85 e5                                      str r3, [r5, #0xc]
0066649c  bd ff ff ea                                      b #0x666398
006664a0  00 20 97 e5                                      ldr r2, [r7]
006664a4  00 30 98 e5                                      ldr r3, [r8]
006664a8  24 20 92 e5                                      ldr r2, [r2, #0x24]
006664ac  20 30 93 e5                                      ldr r3, [r3, #0x20]
006664b0  20 20 92 e5                                      ldr r2, [r2, #0x20]
006664b4  34 30 93 e5                                      ldr r3, [r3, #0x34]
006664b8  04 20 92 e5                                      ldr r2, [r2, #4]
006664bc  03 00 a0 e1                                      mov r0, r3
006664c0  00 30 93 e5                                      ldr r3, [r3]
006664c4  14 10 92 e5                                      ldr r1, [r2, #0x14]
006664c8  0f e0 a0 e1                                      mov lr, pc
006664cc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006664d0  00 90 a0 e1                                      mov sb, r0
006664d4  27 ff ff ea                                      b #0x666178
; mapping-symbol data/literal pool
006664d8  98 ea 32 00 40 0a 00 00 b4 17 00 00 14 13 00 00  .byte 0x98, 0xea, 0x32, 0x00, 0x40, 0x0a, 0x00, 0x00, 0xb4, 0x17, 0x00, 0x00, 0x14, 0x13, 0x00, 0x00
006664e8  48 44 00 00 fc 46 00 00                          .byte 0x48, 0x44, 0x00, 0x00, 0xfc, 0x46, 0x00, 0x00

; FUNCTION 0x006664f0, declared_size=1288, range_size=1288, mode=arm
; class-group: glitch::collada::CSkinnedMesh
; alias: _ZN6glitch7collada12CSkinnedMeshC1ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CSkinnedMesh::CSkinnedMesh(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, glitch::collada::SController&, glitch::collada::CRootSceneNode*)
; decoder-mode: arm
006664f0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006664f4  e4 54 9f e5                                      ldr r5, [pc, #0x4e4]
006664f8  e4 c4 9f e5                                      ldr ip, [pc, #0x4e4]
006664fc  00 40 a0 e1                                      mov r4, r0
00666500  05 50 8f e0                                      add r5, pc, r5
00666504  0c c0 95 e7                                      ldr ip, [r5, ip]
00666508  00 00 a0 e3                                      mov r0, #0
0066650c  04 00 84 e5                                      str r0, [r4, #4]
00666510  08 c0 8c e2                                      add ip, ip, #8
00666514  00 c0 84 e5                                      str ip, [r4]
00666518  00 00 91 e5                                      ldr r0, [r1]
0066651c  01 70 a0 e1                                      mov r7, r1
00666520  24 d0 4d e2                                      sub sp, sp, #0x24
00666524  0c 00 84 e5                                      str r0, [r4, #0xc]
00666528  04 10 91 e5                                      ldr r1, [r1, #4]
0066652c  00 00 50 e3                                      cmp r0, #0
00666530  10 10 84 e5                                      str r1, [r4, #0x10]
00666534  03 00 00 0a                                      beq #0x666548
00666538  04 10 90 e5                                      ldr r1, [r0, #4]
0066653c  00 00 51 e3                                      cmp r1, #0
00666540  01 10 81 12                                      addne r1, r1, #1
00666544  04 10 80 15                                      strne r1, [r0, #4]
00666548  98 c4 9f e5                                      ldr ip, [pc, #0x498]
0066654c  98 04 9f e5                                      ldr r0, [pc, #0x498]
00666550  00 10 a0 e3                                      mov r1, #0
00666554  0c c0 95 e7                                      ldr ip, [r5, ip]
00666558  00 00 95 e7                                      ldr r0, [r5, r0]
0066655c  14 10 84 e5                                      str r1, [r4, #0x14]
00666560  04 c0 8c e2                                      add ip, ip, #4
00666564  08 c0 84 e5                                      str ip, [r4, #8]
00666568  08 00 80 e2                                      add r0, r0, #8
0066656c  01 c0 a0 e3                                      mov ip, #1
00666570  18 c0 c4 e5                                      strb ip, [r4, #0x18]
00666574  00 00 84 e5                                      str r0, [r4]
00666578  08 60 93 e5                                      ldr r6, [r3, #8]
0066657c  bf c4 a0 e3                                      mov ip, #0xbf000000
00666580  02 c5 8c e2                                      add ip, ip, #0x800000
00666584  fe 05 a0 e3                                      mov r0, #0x3f800000
00666588  44 e0 84 e2                                      add lr, r4, #0x44
0066658c  1c 60 84 e5                                      str r6, [r4, #0x1c]
00666590  2c c0 84 e5                                      str ip, [r4, #0x2c]
00666594  38 00 84 e5                                      str r0, [r4, #0x38]
00666598  20 10 c4 e5                                      strb r1, [r4, #0x20]
0066659c  22 10 c4 e5                                      strb r1, [r4, #0x22]
006665a0  23 10 c4 e5                                      strb r1, [r4, #0x23]
006665a4  24 c0 84 e5                                      str ip, [r4, #0x24]
006665a8  28 c0 84 e5                                      str ip, [r4, #0x28]
006665ac  30 00 84 e5                                      str r0, [r4, #0x30]
006665b0  34 00 84 e5                                      str r0, [r4, #0x34]
006665b4  3c 10 84 e5                                      str r1, [r4, #0x3c]
006665b8  40 10 84 e5                                      str r1, [r4, #0x40]
006665bc  44 10 84 e5                                      str r1, [r4, #0x44]
006665c0  04 10 8e e5                                      str r1, [lr, #4]
006665c4  4c 10 84 e5                                      str r1, [r4, #0x4c]
006665c8  50 10 84 e5                                      str r1, [r4, #0x50]
006665cc  54 10 84 e5                                      str r1, [r4, #0x54]
006665d0  58 10 84 e5                                      str r1, [r4, #0x58]
006665d4  5c 10 84 e5                                      str r1, [r4, #0x5c]
006665d8  60 10 84 e5                                      str r1, [r4, #0x60]
006665dc  64 10 84 e5                                      str r1, [r4, #0x64]
006665e0  68 10 84 e5                                      str r1, [r4, #0x68]
006665e4  6c 10 84 e5                                      str r1, [r4, #0x6c]
006665e8  74 10 84 e5                                      str r1, [r4, #0x74]
006665ec  78 10 84 e5                                      str r1, [r4, #0x78]
006665f0  7c 10 84 e5                                      str r1, [r4, #0x7c]
006665f4  80 10 84 e5                                      str r1, [r4, #0x80]
006665f8  98 10 84 e5                                      str r1, [r4, #0x98]
006665fc  84 10 84 e5                                      str r1, [r4, #0x84]
00666600  88 10 84 e5                                      str r1, [r4, #0x88]
00666604  8c 10 84 e5                                      str r1, [r4, #0x8c]
00666608  90 10 84 e5                                      str r1, [r4, #0x90]
0066660c  94 10 84 e5                                      str r1, [r4, #0x94]
00666610  04 30 93 e5                                      ldr r3, [r3, #4]
00666614  02 10 a0 e1                                      mov r1, r2
00666618  04 00 a0 e1                                      mov r0, r4
0066661c  48 20 9d e5                                      ldr r2, [sp, #0x48]
00666620  08 30 84 e5                                      str r3, [r4, #8]
00666624  33 f9 ff eb                                      bl #0x664af8
00666628  00 30 97 e5                                      ldr r3, [r7]
0066662c  24 30 93 e5                                      ldr r3, [r3, #0x24]
00666630  20 30 93 e5                                      ldr r3, [r3, #0x20]
00666634  04 90 93 e5                                      ldr sb, [r3, #4]
00666638  64 60 93 e5                                      ldr r6, [r3, #0x64]
0066663c  00 00 56 e3                                      cmp r6, #0
00666640  00 60 a0 d3                                      movle r6, #0
00666644  01 60 a0 c3                                      movgt r6, #1
00666648  00 00 59 e3                                      cmp sb, #0
0066664c  0b 00 00 0a                                      beq #0x666680
00666650  98 33 9f e5                                      ldr r3, [pc, #0x398]
00666654  14 10 99 e5                                      ldr r1, [sb, #0x14]
00666658  03 80 95 e7                                      ldr r8, [r5, r3]
0066665c  00 30 98 e5                                      ldr r3, [r8]
00666660  20 30 93 e5                                      ldr r3, [r3, #0x20]
00666664  34 30 93 e5                                      ldr r3, [r3, #0x34]
00666668  03 00 a0 e1                                      mov r0, r3
0066666c  00 30 93 e5                                      ldr r3, [r3]
00666670  0f e0 a0 e1                                      mov lr, pc
00666674  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00666678  00 90 50 e2                                      subs sb, r0, #0
0066667c  c9 00 00 0a                                      beq #0x6669a8
00666680  6c 33 9f e5                                      ldr r3, [pc, #0x36c]
00666684  00 00 56 e3                                      cmp r6, #0
00666688  10 90 8d e5                                      str sb, [sp, #0x10]
0066668c  03 30 95 e7                                      ldr r3, [r5, r3]
00666690  08 30 83 e2                                      add r3, r3, #8
00666694  0c 30 8d e5                                      str r3, [sp, #0xc]
00666698  47 00 00 1a                                      bne #0x6667bc
0066669c  00 00 59 e3                                      cmp sb, #0
006666a0  01 00 00 0a                                      beq #0x6666ac
006666a4  09 00 a0 e1                                      mov r0, sb
006666a8  b5 db f2 eb                                      bl #0x31d584
006666ac  00 10 a0 e3                                      mov r1, #0
006666b0  38 00 a0 e3                                      mov r0, #0x38
006666b4  bc 36 fb eb                                      bl #0x5341ac
006666b8  70 50 84 e2                                      add r5, r4, #0x70
006666bc  06 30 a0 e1                                      mov r3, r6
006666c0  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
006666c4  05 20 a0 e1                                      mov r2, r5
006666c8  00 70 a0 e1                                      mov r7, r0
006666cc  10 20 00 eb                                      bl #0x66e714
006666d0  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
006666d4  3c 70 84 e5                                      str r7, [r4, #0x3c]
006666d8  00 00 53 e3                                      cmp r3, #0
006666dc  03 00 00 0a                                      beq #0x6666f0
006666e0  03 00 a0 e1                                      mov r0, r3
006666e4  00 30 93 e5                                      ldr r3, [r3]
006666e8  0f e0 a0 e1                                      mov lr, pc
006666ec  04 f0 93 e5                                      ldr pc, [r3, #4]
006666f0  00 10 a0 e3                                      mov r1, #0
006666f4  30 00 a0 e3                                      mov r0, #0x30
006666f8  ab 36 fb eb                                      bl #0x5341ac
006666fc  06 30 a0 e1                                      mov r3, r6
00666700  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
00666704  05 20 a0 e1                                      mov r2, r5
00666708  00 70 a0 e1                                      mov r7, r0
0066670c  72 14 00 eb                                      bl #0x66b8dc
00666710  40 30 94 e5                                      ldr r3, [r4, #0x40]
00666714  40 70 84 e5                                      str r7, [r4, #0x40]
00666718  00 00 53 e3                                      cmp r3, #0
0066671c  03 00 00 0a                                      beq #0x666730
00666720  03 00 a0 e1                                      mov r0, r3
00666724  00 30 93 e5                                      ldr r3, [r3]
00666728  0f e0 a0 e1                                      mov lr, pc
0066672c  04 f0 93 e5                                      ldr pc, [r3, #4]
00666730  00 10 a0 e3                                      mov r1, #0
00666734  30 00 a0 e3                                      mov r0, #0x30
00666738  9b 36 fb eb                                      bl #0x5341ac
0066673c  06 30 a0 e1                                      mov r3, r6
00666740  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
00666744  05 20 a0 e1                                      mov r2, r5
00666748  00 70 a0 e1                                      mov r7, r0
0066674c  32 1a 00 eb                                      bl #0x66d01c
00666750  44 30 94 e5                                      ldr r3, [r4, #0x44]
00666754  44 70 84 e5                                      str r7, [r4, #0x44]
00666758  00 00 53 e3                                      cmp r3, #0
0066675c  03 00 00 0a                                      beq #0x666770
00666760  03 00 a0 e1                                      mov r0, r3
00666764  00 30 93 e5                                      ldr r3, [r3]
00666768  0f e0 a0 e1                                      mov lr, pc
0066676c  04 f0 93 e5                                      ldr pc, [r3, #4]
00666770  00 10 a0 e3                                      mov r1, #0
00666774  34 00 a0 e3                                      mov r0, #0x34
00666778  8b 36 fb eb                                      bl #0x5341ac
0066677c  06 30 a0 e1                                      mov r3, r6
00666780  05 20 a0 e1                                      mov r2, r5
00666784  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
00666788  00 70 a0 e1                                      mov r7, r0
0066678c  b1 23 00 eb                                      bl #0x66f658
00666790  48 30 94 e5                                      ldr r3, [r4, #0x48]
00666794  48 70 84 e5                                      str r7, [r4, #0x48]
00666798  00 00 53 e3                                      cmp r3, #0
0066679c  03 00 00 0a                                      beq #0x6667b0
006667a0  03 00 a0 e1                                      mov r0, r3
006667a4  00 30 93 e5                                      ldr r3, [r3]
006667a8  0f e0 a0 e1                                      mov lr, pc
006667ac  04 f0 93 e5                                      ldr pc, [r3, #4]
006667b0  04 00 a0 e1                                      mov r0, r4
006667b4  24 d0 8d e2                                      add sp, sp, #0x24
006667b8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006667bc  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
006667c0  0c a0 8d e2                                      add sl, sp, #0xc
006667c4  0a 20 a0 e1                                      mov r2, sl
006667c8  80 10 93 e5                                      ldr r1, [r3, #0x80]
006667cc  1c 00 8d e2                                      add r0, sp, #0x1c
006667d0  fe f4 ff eb                                      bl #0x663bd0
006667d4  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006667d8  00 00 53 e3                                      cmp r3, #0
006667dc  00 20 93 15                                      ldrne r2, [r3]
006667e0  01 20 82 12                                      addne r2, r2, #1
006667e4  00 20 83 15                                      strne r2, [r3]
006667e8  4c 50 94 e5                                      ldr r5, [r4, #0x4c]
006667ec  00 00 55 e3                                      cmp r5, #0
006667f0  0a 00 00 0a                                      beq #0x666820
006667f4  00 30 95 e5                                      ldr r3, [r5]
006667f8  01 30 43 e2                                      sub r3, r3, #1
006667fc  00 00 53 e3                                      cmp r3, #0
00666800  00 30 85 e5                                      str r3, [r5]
00666804  05 00 00 1a                                      bne #0x666820
00666808  0c 00 95 e5                                      ldr r0, [r5, #0xc]
0066680c  00 00 50 e3                                      cmp r0, #0
00666810  00 00 00 0a                                      beq #0x666818
00666814  27 9e f2 eb                                      bl #0x30e0b8
00666818  00 30 a0 e3                                      mov r3, #0
0066681c  0c 30 85 e5                                      str r3, [r5, #0xc]
00666820  1c 50 9d e5                                      ldr r5, [sp, #0x1c]
00666824  00 00 55 e3                                      cmp r5, #0
00666828  4c 50 84 e5                                      str r5, [r4, #0x4c]
0066682c  0c 00 00 0a                                      beq #0x666864
00666830  00 30 95 e5                                      ldr r3, [r5]
00666834  01 30 43 e2                                      sub r3, r3, #1
00666838  00 00 53 e3                                      cmp r3, #0
0066683c  00 30 85 e5                                      str r3, [r5]
00666840  05 00 00 1a                                      bne #0x66685c
00666844  0c 00 95 e5                                      ldr r0, [r5, #0xc]
00666848  00 00 50 e3                                      cmp r0, #0
0066684c  00 00 00 0a                                      beq #0x666854
00666850  18 9e f2 eb                                      bl #0x30e0b8
00666854  00 30 a0 e3                                      mov r3, #0
00666858  0c 30 85 e5                                      str r3, [r5, #0xc]
0066685c  00 30 a0 e3                                      mov r3, #0
00666860  1c 30 8d e5                                      str r3, [sp, #0x1c]
00666864  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00666868  20 20 8d e2                                      add r2, sp, #0x20
0066686c  50 00 84 e2                                      add r0, r4, #0x50
00666870  84 10 93 e5                                      ldr r1, [r3, #0x84]
00666874  00 30 a0 e3                                      mov r3, #0
00666878  08 30 22 e5                                      str r3, [r2, #-8]!
0066687c  c5 fd ff eb                                      bl #0x665f98
00666880  18 50 9d e5                                      ldr r5, [sp, #0x18]
00666884  00 00 55 e3                                      cmp r5, #0
00666888  06 00 00 0a                                      beq #0x6668a8
0066688c  00 30 95 e5                                      ldr r3, [r5]
00666890  01 30 43 e2                                      sub r3, r3, #1
00666894  00 00 53 e3                                      cmp r3, #0
00666898  00 30 85 e5                                      str r3, [r5]
0066689c  3a 00 00 0a                                      beq #0x66698c
006668a0  00 30 a0 e3                                      mov r3, #0
006668a4  18 30 8d e5                                      str r3, [sp, #0x18]
006668a8  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
006668ac  84 20 93 e5                                      ldr r2, [r3, #0x84]
006668b0  00 00 52 e3                                      cmp r2, #0
006668b4  78 ff ff da                                      ble #0x66669c
006668b8  00 50 a0 e3                                      mov r5, #0
006668bc  14 b0 8d e2                                      add fp, sp, #0x14
006668c0  05 80 a0 e1                                      mov r8, r5
006668c4  88 30 93 e5                                      ldr r3, [r3, #0x88]
006668c8  0a 20 a0 e1                                      mov r2, sl
006668cc  0b 00 a0 e1                                      mov r0, fp
006668d0  85 31 83 e0                                      add r3, r3, r5, lsl #3
006668d4  04 10 93 e5                                      ldr r1, [r3, #4]
006668d8  50 70 94 e5                                      ldr r7, [r4, #0x50]
006668dc  d6 f4 ff eb                                      bl #0x663c3c
006668e0  14 30 9d e5                                      ldr r3, [sp, #0x14]
006668e4  05 21 a0 e1                                      lsl r2, r5, #2
006668e8  00 00 53 e3                                      cmp r3, #0
006668ec  00 10 93 15                                      ldrne r1, [r3]
006668f0  01 10 81 12                                      addne r1, r1, #1
006668f4  00 10 83 15                                      strne r1, [r3]
006668f8  02 30 97 e7                                      ldr r3, [r7, r2]
006668fc  00 00 53 e3                                      cmp r3, #0
00666900  0b 00 00 0a                                      beq #0x666934
00666904  00 10 93 e5                                      ldr r1, [r3]
00666908  01 10 41 e2                                      sub r1, r1, #1
0066690c  00 00 51 e3                                      cmp r1, #0
00666910  00 10 83 e5                                      str r1, [r3]
00666914  06 00 00 1a                                      bne #0x666934
00666918  0c 00 93 e5                                      ldr r0, [r3, #0xc]
0066691c  00 00 50 e3                                      cmp r0, #0
00666920  02 00 00 0a                                      beq #0x666930
00666924  0c 00 8d e8                                      stm sp, {r2, r3}
00666928  e2 9d f2 eb                                      bl #0x30e0b8
0066692c  0c 00 9d e8                                      ldm sp, {r2, r3}
00666930  0c 80 83 e5                                      str r8, [r3, #0xc]
00666934  14 30 9d e5                                      ldr r3, [sp, #0x14]
00666938  02 30 87 e7                                      str r3, [r7, r2]
0066693c  14 70 9d e5                                      ldr r7, [sp, #0x14]
00666940  00 00 57 e3                                      cmp r7, #0
00666944  0a 00 00 0a                                      beq #0x666974
00666948  00 30 97 e5                                      ldr r3, [r7]
0066694c  01 30 43 e2                                      sub r3, r3, #1
00666950  00 00 53 e3                                      cmp r3, #0
00666954  00 30 87 e5                                      str r3, [r7]
00666958  04 00 00 1a                                      bne #0x666970
0066695c  0c 00 97 e5                                      ldr r0, [r7, #0xc]
00666960  00 00 50 e3                                      cmp r0, #0
00666964  00 00 00 0a                                      beq #0x66696c
00666968  d2 9d f2 eb                                      bl #0x30e0b8
0066696c  0c 80 87 e5                                      str r8, [r7, #0xc]
00666970  14 80 8d e5                                      str r8, [sp, #0x14]
00666974  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00666978  01 50 85 e2                                      add r5, r5, #1
0066697c  84 20 93 e5                                      ldr r2, [r3, #0x84]
00666980  02 00 55 e1                                      cmp r5, r2
00666984  ce ff ff ba                                      blt #0x6668c4
00666988  43 ff ff ea                                      b #0x66669c
0066698c  0c 00 95 e5                                      ldr r0, [r5, #0xc]
00666990  00 00 50 e3                                      cmp r0, #0
00666994  00 00 00 0a                                      beq #0x66699c
00666998  c6 9d f2 eb                                      bl #0x30e0b8
0066699c  00 30 a0 e3                                      mov r3, #0
006669a0  0c 30 85 e5                                      str r3, [r5, #0xc]
006669a4  bd ff ff ea                                      b #0x6668a0
006669a8  00 20 97 e5                                      ldr r2, [r7]
006669ac  00 30 98 e5                                      ldr r3, [r8]
006669b0  24 20 92 e5                                      ldr r2, [r2, #0x24]
006669b4  20 30 93 e5                                      ldr r3, [r3, #0x20]
006669b8  20 20 92 e5                                      ldr r2, [r2, #0x20]
006669bc  34 30 93 e5                                      ldr r3, [r3, #0x34]
006669c0  04 20 92 e5                                      ldr r2, [r2, #4]
006669c4  03 00 a0 e1                                      mov r0, r3
006669c8  00 30 93 e5                                      ldr r3, [r3]
006669cc  14 10 92 e5                                      ldr r1, [r2, #0x14]
006669d0  0f e0 a0 e1                                      mov lr, pc
006669d4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006669d8  00 90 a0 e1                                      mov sb, r0
006669dc  27 ff ff ea                                      b #0x666680
; mapping-symbol data/literal pool
006669e0  90 e5 32 00 40 0a 00 00 b4 17 00 00 14 13 00 00  .byte 0x90, 0xe5, 0x32, 0x00, 0x40, 0x0a, 0x00, 0x00, 0xb4, 0x17, 0x00, 0x00, 0x14, 0x13, 0x00, 0x00
006669f0  48 44 00 00 fc 46 00 00                          .byte 0x48, 0x44, 0x00, 0x00, 0xfc, 0x46, 0x00, 0x00
