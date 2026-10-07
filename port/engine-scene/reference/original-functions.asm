; Exact recovered ARM assembly blocks copied from the original symbol export. Not assembler-ready.

; Source file: glitch_collada_CColladaDatabase-f458595c81f3-001.asm

; FUNCTION 0x0060e348, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase8getSceneEv
; demangled: glitch::collada::CColladaDatabase::getScene() const
; decoder-mode: arm
0060e348  00 30 90 e5                                      ldr r3, [r0]
0060e34c  24 30 93 e5                                      ldr r3, [r3, #0x24]
0060e350  20 00 93 e5                                      ldr r0, [r3, #0x20]
0060e354  b8 00 80 e2                                      add r0, r0, #0xb8
0060e358  1e ff 2f e1                                      bx lr

; Source file: glitch_collada_CColladaFactory-db06bc565b1a-001.asm

; FUNCTION 0x00631628, declared_size=40, range_size=40, mode=arm
; class-group: glitch::collada::CColladaFactory
; alias: _ZN6glitch7collada15CColladaFactory11createSceneERKNS0_16CColladaDatabaseE
; demangled: glitch::collada::CColladaFactory::createScene(glitch::collada::CColladaDatabase const&)
; decoder-mode: arm
00631628  70 40 2d e9                                      push {r4, r5, r6, lr}
0063162c  71 0f a0 e3                                      mov r0, #0x1c4
00631630  01 50 a0 e1                                      mov r5, r1
00631634  00 10 a0 e3                                      mov r1, #0
00631638  db 0a fc eb                                      bl #0x5341ac
0063163c  05 10 a0 e1                                      mov r1, r5
00631640  00 40 a0 e1                                      mov r4, r0
00631644  3a a8 00 eb                                      bl #0x65b734
00631648  04 00 a0 e1                                      mov r0, r4
0063164c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; Source file: glitch_collada_CRootSceneNode-d3662147f216-001.asm

; FUNCTION 0x0065b734, declared_size=272, range_size=272, mode=arm
; class-group: glitch::collada::CRootSceneNode
; alias: _ZN6glitch7collada14CRootSceneNodeC1ERKNS0_16CColladaDatabaseE
; demangled: glitch::collada::CRootSceneNode::CRootSceneNode(glitch::collada::CColladaDatabase const&)
; decoder-mode: arm
0065b734  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0065b738  f4 50 9f e5                                      ldr r5, [pc, #0xf4]
0065b73c  f4 30 9f e5                                      ldr r3, [pc, #0xf4]
0065b740  f4 20 9f e5                                      ldr r2, [pc, #0xf4]
0065b744  05 50 8f e0                                      add r5, pc, r5
0065b748  03 30 95 e7                                      ldr r3, [r5, r3]
0065b74c  02 20 95 e7                                      ldr r2, [r5, r2]
0065b750  01 60 a0 e3                                      mov r6, #1
0065b754  30 c0 93 e5                                      ldr ip, [r3, #0x30]
0065b758  08 20 82 e2                                      add r2, r2, #8
0065b75c  bc 21 80 e5                                      str r2, [r0, #0x1bc]
0065b760  c0 61 80 e5                                      str r6, [r0, #0x1c0]
0065b764  00 c0 80 e5                                      str ip, [r0]
0065b768  34 e0 93 e5                                      ldr lr, [r3, #0x34]
0065b76c  0c c0 1c e5                                      ldr ip, [ip, #-0xc]
0065b770  01 20 a0 e1                                      mov r2, r1
0065b774  04 10 83 e2                                      add r1, r3, #4
0065b778  0c e0 80 e7                                      str lr, [r0, ip]
0065b77c  00 30 a0 e3                                      mov r3, #0
0065b780  00 40 a0 e1                                      mov r4, r0
0065b784  ca 06 00 eb                                      bl #0x65d2b4
0065b788  b0 20 9f e5                                      ldr r2, [pc, #0xb0]
0065b78c  00 10 a0 e3                                      mov r1, #0
0065b790  04 30 a0 e1                                      mov r3, r4
0065b794  02 20 95 e7                                      ldr r2, [r5, r2]
0065b798  5e ef 84 e2                                      add lr, r4, #0x178
0065b79c  06 cd 84 e2                                      add ip, r4, #0x180
0065b7a0  62 0f 84 e2                                      add r0, r4, #0x188
0065b7a4  56 af 84 e2                                      add sl, r4, #0x158
0065b7a8  16 8e 84 e2                                      add r8, r4, #0x160
0065b7ac  49 9f 82 e2                                      add sb, r2, #0x124
0065b7b0  5a 7f 84 e2                                      add r7, r4, #0x168
0065b7b4  17 5e 84 e2                                      add r5, r4, #0x170
0065b7b8  1c 20 82 e2                                      add r2, r2, #0x1c
0065b7bc  00 20 84 e5                                      str r2, [r4]
0065b7c0  8c 01 84 e5                                      str r0, [r4, #0x18c]
0065b7c4  88 01 84 e5                                      str r0, [r4, #0x188]
0065b7c8  6d 2f 84 e2                                      add r2, r4, #0x1b4
0065b7cc  bc 91 84 e5                                      str sb, [r4, #0x1bc]
0065b7d0  5c a1 84 e5                                      str sl, [r4, #0x15c]
0065b7d4  64 81 84 e5                                      str r8, [r4, #0x164]
0065b7d8  6c 71 84 e5                                      str r7, [r4, #0x16c]
0065b7dc  74 51 84 e5                                      str r5, [r4, #0x174]
0065b7e0  7c e1 84 e5                                      str lr, [r4, #0x17c]
0065b7e4  84 c1 84 e5                                      str ip, [r4, #0x184]
0065b7e8  58 a1 84 e5                                      str sl, [r4, #0x158]
0065b7ec  60 81 84 e5                                      str r8, [r4, #0x160]
0065b7f0  68 71 84 e5                                      str r7, [r4, #0x168]
0065b7f4  70 51 84 e5                                      str r5, [r4, #0x170]
0065b7f8  78 e1 84 e5                                      str lr, [r4, #0x178]
0065b7fc  80 c1 84 e5                                      str ip, [r4, #0x180]
0065b800  94 11 84 e5                                      str r1, [r4, #0x194]
0065b804  90 11 e3 e5                                      strb r1, [r3, #0x190]!
0065b808  04 00 a0 e1                                      mov r0, r4
0065b80c  9c 31 84 e5                                      str r3, [r4, #0x19c]
0065b810  ac 61 84 e5                                      str r6, [r4, #0x1ac]
0065b814  b8 21 84 e5                                      str r2, [r4, #0x1b8]
0065b818  98 31 84 e5                                      str r3, [r4, #0x198]
0065b81c  a0 11 84 e5                                      str r1, [r4, #0x1a0]
0065b820  a8 11 c4 e5                                      strb r1, [r4, #0x1a8]
0065b824  b4 21 84 e5                                      str r2, [r4, #0x1b4]
0065b828  5b ee fc eb                                      bl #0x59719c
0065b82c  04 00 a0 e1                                      mov r0, r4
0065b830  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
0065b834  4c 93 33 00 54 3c 00 00 44 2b 00 00 8c 15 00 00  .byte 0x4c, 0x93, 0x33, 0x00, 0x54, 0x3c, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x8c, 0x15, 0x00, 0x00

; Source file: glitch_collada_CSceneNode-0b30ea7de5e3-001.asm

; FUNCTION 0x0065d2b4, declared_size=308, range_size=308, mode=arm
; class-group: glitch::collada::CSceneNode
; alias: _ZN6glitch7collada10CSceneNodeC2ERKNS0_16CColladaDatabaseEPNS0_5SNodeE
; demangled: glitch::collada::CSceneNode::CSceneNode(glitch::collada::CColladaDatabase const&, glitch::collada::SNode*)
; decoder-mode: arm
0065d2b4  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0065d2b8  02 50 a0 e1                                      mov r5, r2
0065d2bc  2c d0 4d e2                                      sub sp, sp, #0x2c
0065d2c0  00 20 e0 e3                                      mvn r2, #0
0065d2c4  01 40 a0 e1                                      mov r4, r1
0065d2c8  04 10 81 e2                                      add r1, r1, #4
0065d2cc  00 60 a0 e1                                      mov r6, r0
0065d2d0  03 70 a0 e1                                      mov r7, r3
0065d2d4  16 9a fc eb                                      bl #0x583b34
0065d2d8  00 20 95 e5                                      ldr r2, [r5]
0065d2dc  fc 30 9f e5                                      ldr r3, [pc, #0xfc]
0065d2e0  4c 21 86 e5                                      str r2, [r6, #0x14c]
0065d2e4  04 10 95 e5                                      ldr r1, [r5, #4]
0065d2e8  00 00 52 e3                                      cmp r2, #0
0065d2ec  03 30 8f e0                                      add r3, pc, r3
0065d2f0  50 11 86 e5                                      str r1, [r6, #0x150]
0065d2f4  03 00 00 0a                                      beq #0x65d308
0065d2f8  04 10 92 e5                                      ldr r1, [r2, #4]
0065d2fc  00 00 51 e3                                      cmp r1, #0
0065d300  01 10 81 12                                      addne r1, r1, #1
0065d304  04 10 82 15                                      strne r1, [r2, #4]
0065d308  d4 20 9f e5                                      ldr r2, [pc, #0xd4]
0065d30c  00 00 57 e3                                      cmp r7, #0
0065d310  02 20 93 e7                                      ldr r2, [r3, r2]
0065d314  04 20 82 e2                                      add r2, r2, #4
0065d318  48 21 86 e5                                      str r2, [r6, #0x148]
0065d31c  00 30 94 e5                                      ldr r3, [r4]
0065d320  00 30 86 e5                                      str r3, [r6]
0065d324  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
0065d328  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
0065d32c  03 20 86 e7                                      str r2, [r6, r3]
0065d330  00 30 96 e5                                      ldr r3, [r6]
0065d334  20 20 94 e5                                      ldr r2, [r4, #0x20]
0065d338  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0065d33c  03 20 86 e7                                      str r2, [r6, r3]
0065d340  54 71 86 e5                                      str r7, [r6, #0x154]
0065d344  22 00 00 0a                                      beq #0x65d3d4
0065d348  04 10 97 e5                                      ldr r1, [r7, #4]
0065d34c  06 00 a0 e1                                      mov r0, r6
0065d350  ab ed fc eb                                      bl #0x598a04
0065d354  54 31 96 e5                                      ldr r3, [r6, #0x154]
0065d358  06 00 a0 e1                                      mov r0, r6
0065d35c  1c 10 8d e2                                      add r1, sp, #0x1c
0065d360  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0065d364  1c 20 8d e5                                      str r2, [sp, #0x1c]
0065d368  10 20 93 e5                                      ldr r2, [r3, #0x10]
0065d36c  20 20 8d e5                                      str r2, [sp, #0x20]
0065d370  14 30 93 e5                                      ldr r3, [r3, #0x14]
0065d374  24 30 8d e5                                      str r3, [sp, #0x24]
0065d378  6b e7 fc eb                                      bl #0x59712c
0065d37c  54 31 96 e5                                      ldr r3, [r6, #0x154]
0065d380  06 00 a0 e1                                      mov r0, r6
0065d384  0d 10 a0 e1                                      mov r1, sp
0065d388  18 20 93 e5                                      ldr r2, [r3, #0x18]
0065d38c  00 20 8d e5                                      str r2, [sp]
0065d390  1c 20 93 e5                                      ldr r2, [r3, #0x1c]
0065d394  04 20 8d e5                                      str r2, [sp, #4]
0065d398  20 20 93 e5                                      ldr r2, [r3, #0x20]
0065d39c  08 20 8d e5                                      str r2, [sp, #8]
0065d3a0  24 30 93 e5                                      ldr r3, [r3, #0x24]
0065d3a4  0c 30 8d e5                                      str r3, [sp, #0xc]
0065d3a8  51 e7 fc eb                                      bl #0x5970f4
0065d3ac  54 31 96 e5                                      ldr r3, [r6, #0x154]
0065d3b0  06 00 a0 e1                                      mov r0, r6
0065d3b4  10 10 8d e2                                      add r1, sp, #0x10
0065d3b8  28 20 93 e5                                      ldr r2, [r3, #0x28]
0065d3bc  10 20 8d e5                                      str r2, [sp, #0x10]
0065d3c0  2c 20 93 e5                                      ldr r2, [r3, #0x2c]
0065d3c4  14 20 8d e5                                      str r2, [sp, #0x14]
0065d3c8  30 30 93 e5                                      ldr r3, [r3, #0x30]
0065d3cc  18 30 8d e5                                      str r3, [sp, #0x18]
0065d3d0  3b e7 fc eb                                      bl #0x5970c4
0065d3d4  06 00 a0 e1                                      mov r0, r6
0065d3d8  2c d0 8d e2                                      add sp, sp, #0x2c
0065d3dc  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
0065d3e0  a4 77 33 00 b4 17 00 00                          .byte 0xa4, 0x77, 0x33, 0x00, 0xb4, 0x17, 0x00, 0x00

; Source file: glitch_scene_ISceneNode-7824e152fc5a-001.asm
; Exact recovered ARM blocks for runtime child animation order and link mutation.

; FUNCTION 0x00596d6c, declared_size=184, range_size=184, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode9onAnimateEj
; demangled: glitch::scene::ISceneNode::onAnimate(unsigned int)
; decoder-mode: arm
00596d6c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00596d70  1c 31 90 e5                                      ldr r3, [r0, #0x11c]
00596d74  00 60 a0 e1                                      mov r6, r0
00596d78  01 50 a0 e1                                      mov r5, r1
00596d7c  01 0b 13 e3                                      tst r3, #0x400
00596d80  01 00 00 0a                                      beq #0x596d8c
00596d84  01 00 13 e3                                      tst r3, #1
00596d88  24 00 00 0a                                      beq #0x596e20
00596d8c  02 0c 13 e3                                      tst r3, #0x200
00596d90  22 00 00 0a                                      beq #0x596e20
00596d94  06 70 a0 e1                                      mov r7, r6
00596d98  fc 40 b7 e5                                      ldr r4, [r7, #0xfc]!
00596d9c  07 00 00 ea                                      b #0x596dc0
00596da0  08 30 94 e5                                      ldr r3, [r4, #8]
00596da4  06 10 a0 e1                                      mov r1, r6
00596da8  05 20 a0 e1                                      mov r2, r5
00596dac  03 00 a0 e1                                      mov r0, r3
00596db0  00 30 93 e5                                      ldr r3, [r3]
00596db4  0f e0 a0 e1                                      mov lr, pc
00596db8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00596dbc  00 40 94 e5                                      ldr r4, [r4]
00596dc0  04 00 57 e1                                      cmp r7, r4
00596dc4  f5 ff ff 1a                                      bne #0x596da0
00596dc8  00 30 96 e5                                      ldr r3, [r6]
00596dcc  06 00 a0 e1                                      mov r0, r6
00596dd0  00 10 a0 e3                                      mov r1, #0
00596dd4  06 70 a0 e1                                      mov r7, r6
00596dd8  0f e0 a0 e1                                      mov lr, pc
00596ddc  b8 f0 93 e5                                      ldr pc, [r3, #0xb8]
00596de0  f4 40 b7 e5                                      ldr r4, [r7, #0xf4]!
00596de4  08 00 00 ea                                      b #0x596e0c
00596de8  00 00 54 e3                                      cmp r4, #0
00596dec  04 30 a0 01                                      moveq r3, r4
00596df0  04 30 44 12                                      subne r3, r4, #4
00596df4  03 00 a0 e1                                      mov r0, r3
00596df8  05 10 a0 e1                                      mov r1, r5
00596dfc  00 30 93 e5                                      ldr r3, [r3]
00596e00  0f e0 a0 e1                                      mov lr, pc
00596e04  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00596e08  00 40 94 e5                                      ldr r4, [r4]
00596e0c  04 00 57 e1                                      cmp r7, r4
00596e10  f4 ff ff 1a                                      bne #0x596de8
00596e14  1c 31 96 e5                                      ldr r3, [r6, #0x11c]
00596e18  20 30 c3 e3                                      bic r3, r3, #0x20
00596e1c  1c 31 86 e5                                      str r3, [r6, #0x11c]
00596e20  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}


; FUNCTION 0x00597004, declared_size=104, range_size=104, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode11removeChildEPS1_
; demangled: glitch::scene::ISceneNode::removeChild(glitch::scene::ISceneNode*)
; decoder-mode: arm
00597004  ec 30 91 e5                                      ldr r3, [r1, #0xec]
00597008  10 40 2d e9                                      push {r4, lr}
0059700c  00 00 53 e1                                      cmp r3, r0
00597010  01 00 00 0a                                      beq #0x59701c
00597014  00 00 a0 e3                                      mov r0, #0
00597018  10 80 bd e8                                      pop {r4, pc}
0059701c  04 20 91 e5                                      ldr r2, [r1, #4]
00597020  04 c0 81 e2                                      add ip, r1, #4
00597024  00 00 52 e3                                      cmp r2, #0
00597028  08 00 91 15                                      ldrne r0, [r1, #8]
0059702c  00 20 80 15                                      strne r2, [r0]
00597030  04 00 82 15                                      strne r0, [r2, #4]
00597034  f0 e0 93 e5                                      ldr lr, [r3, #0xf0]
00597038  00 20 a0 e3                                      mov r2, #0
0059703c  04 00 4c e2                                      sub r0, ip, #4
00597040  01 e0 4e e2                                      sub lr, lr, #1
00597044  f0 e0 83 e5                                      str lr, [r3, #0xf0]
00597048  08 20 81 e5                                      str r2, [r1, #8]
0059704c  04 20 81 e5                                      str r2, [r1, #4]
00597050  ec 20 80 e5                                      str r2, [r0, #0xec]
00597054  04 30 1c e5                                      ldr r3, [ip, #-4]
00597058  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0059705c  03 00 80 e0                                      add r0, r0, r3
00597060  47 19 f6 eb                                      bl #0x31d584
00597064  01 00 a0 e3                                      mov r0, #1
00597068  10 80 bd e8                                      pop {r4, pc}


; FUNCTION 0x005971e0, declared_size=116, range_size=116, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode9setParentEPS1_
; demangled: glitch::scene::ISceneNode::setParent(glitch::scene::ISceneNode*)
; decoder-mode: arm
005971e0  70 40 2d e9                                      push {r4, r5, r6, lr}
005971e4  00 30 90 e5                                      ldr r3, [r0]
005971e8  00 40 a0 e1                                      mov r4, r0
005971ec  01 50 a0 e1                                      mov r5, r1
005971f0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
005971f4  03 30 80 e0                                      add r3, r0, r3
005971f8  04 20 93 e5                                      ldr r2, [r3, #4]
005971fc  01 20 82 e2                                      add r2, r2, #1
00597200  04 20 83 e5                                      str r2, [r3, #4]
00597204  00 30 90 e5                                      ldr r3, [r0]
00597208  0f e0 a0 e1                                      mov lr, pc
0059720c  68 f0 93 e5                                      ldr pc, [r3, #0x68]
00597210  1c 31 94 e5                                      ldr r3, [r4, #0x11c]
00597214  00 00 55 e3                                      cmp r5, #0
00597218  ec 50 84 e5                                      str r5, [r4, #0xec]
0059721c  40 30 83 e3                                      orr r3, r3, #0x40
00597220  1c 31 84 e5                                      str r3, [r4, #0x11c]
00597224  05 00 00 0a                                      beq #0x597240
00597228  10 11 95 e5                                      ldr r1, [r5, #0x110]
0059722c  10 31 94 e5                                      ldr r3, [r4, #0x110]
00597230  01 00 53 e1                                      cmp r3, r1
00597234  01 00 00 0a                                      beq #0x597240
00597238  04 00 a0 e1                                      mov r0, r4
0059723c  fb c6 ff eb                                      bl #0x588e30
00597240  00 30 94 e5                                      ldr r3, [r4]
00597244  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
00597248  00 00 84 e0                                      add r0, r4, r0
0059724c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00597250  cb 18 f6 ea                                      b #0x31d584


; FUNCTION 0x00598864, declared_size=164, range_size=164, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode8addChildEPS1_
; demangled: glitch::scene::ISceneNode::addChild(glitch::scene::ISceneNode*)
; decoder-mode: arm
00598864  00 00 51 e1                                      cmp r1, r0
00598868  00 00 51 13                                      cmpne r1, #0
0059886c  70 40 2d e9                                      push {r4, r5, r6, lr}
00598870  00 50 a0 e1                                      mov r5, r0
00598874  01 40 a0 e1                                      mov r4, r1
00598878  00 00 00 1a                                      bne #0x598880
0059887c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00598880  00 30 91 e5                                      ldr r3, [r1]
00598884  01 00 a0 e1                                      mov r0, r1
00598888  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0059888c  03 30 81 e0                                      add r3, r1, r3
00598890  04 20 93 e5                                      ldr r2, [r3, #4]
00598894  01 20 82 e2                                      add r2, r2, #1
00598898  04 20 83 e5                                      str r2, [r3, #4]
0059889c  00 30 91 e5                                      ldr r3, [r1]
005988a0  0f e0 a0 e1                                      mov lr, pc
005988a4  68 f0 93 e5                                      ldr pc, [r3, #0x68]
005988a8  f8 20 95 e5                                      ldr r2, [r5, #0xf8]
005988ac  04 30 84 e2                                      add r3, r4, #4
005988b0  f4 10 85 e2                                      add r1, r5, #0xf4
005988b4  08 20 84 e5                                      str r2, [r4, #8]
005988b8  00 30 82 e5                                      str r3, [r2]
005988bc  f8 30 85 e5                                      str r3, [r5, #0xf8]
005988c0  04 10 84 e5                                      str r1, [r4, #4]
005988c4  f0 30 95 e5                                      ldr r3, [r5, #0xf0]
005988c8  04 00 a0 e1                                      mov r0, r4
005988cc  05 10 a0 e1                                      mov r1, r5
005988d0  01 30 83 e2                                      add r3, r3, #1
005988d4  f0 30 85 e5                                      str r3, [r5, #0xf0]
005988d8  40 fa ff eb                                      bl #0x5971e0
005988dc  10 01 95 e5                                      ldr r0, [r5, #0x110]
005988e0  00 00 50 e3                                      cmp r0, #0
005988e4  00 00 00 0a                                      beq #0x5988ec
005988e8  f1 c1 ff eb                                      bl #0x5890b4
005988ec  1c 11 95 e5                                      ldr r1, [r5, #0x11c]
005988f0  04 00 a0 e1                                      mov r0, r4
005988f4  00 30 94 e5                                      ldr r3, [r4]
005988f8  01 10 01 e2                                      and r1, r1, #1
005988fc  0f e0 a0 e1                                      mov lr, pc
00598900  ec f0 93 e5                                      ldr pc, [r3, #0xec]
00598904  70 80 bd e8                                      pop {r4, r5, r6, pc}



; Source file: glitch_scene_ISceneNode-7824e152fc5a-001.asm
; FUNCTION 0x00597c60, declared_size=248, range_size=248, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode22updateAbsolutePositionEb
; demangled: glitch::scene::ISceneNode::updateAbsolutePosition(bool)
; decoder-mode: arm
00597c60  70 40 2d e9                                      push {r4, r5, r6, lr}
00597c64  ec 30 90 e5                                      ldr r3, [r0, #0xec]
00597c68  00 40 a0 e1                                      mov r4, r0
00597c6c  01 50 a0 e1                                      mov r5, r1
00597c70  00 00 53 e3                                      cmp r3, #0
00597c74  27 00 00 0a                                      beq #0x597d18
00597c78  1c 21 93 e5                                      ldr r2, [r3, #0x11c]
00597c7c  20 00 12 e3                                      tst r2, #0x20
00597c80  12 00 00 1a                                      bne #0x597cd0
00597c84  1c 21 90 e5                                      ldr r2, [r0, #0x11c]
00597c88  5e 00 12 e3                                      tst r2, #0x5e
00597c8c  0f 00 00 1a                                      bne #0x597cd0
00597c90  00 00 55 e3                                      cmp r5, #0
00597c94  f4 50 b4 15                                      ldrne r5, [r4, #0xf4]!
00597c98  09 00 00 1a                                      bne #0x597cc4
00597c9c  0a 00 00 ea                                      b #0x597ccc
00597ca0  00 00 55 e3                                      cmp r5, #0
00597ca4  05 30 a0 01                                      moveq r3, r5
00597ca8  04 30 45 12                                      subne r3, r5, #4
00597cac  03 00 a0 e1                                      mov r0, r3
00597cb0  01 10 a0 e3                                      mov r1, #1
00597cb4  00 30 93 e5                                      ldr r3, [r3]
00597cb8  0f e0 a0 e1                                      mov lr, pc
00597cbc  b8 f0 93 e5                                      ldr pc, [r3, #0xb8]
00597cc0  00 50 95 e5                                      ldr r5, [r5]
00597cc4  05 00 54 e1                                      cmp r4, r5
00597cc8  f4 ff ff 1a                                      bne #0x597ca0
00597ccc  70 80 bd e8                                      pop {r4, r5, r6, pc}
00597cd0  03 00 a0 e1                                      mov r0, r3
00597cd4  00 30 93 e5                                      ldr r3, [r3]
00597cd8  0f e0 a0 e1                                      mov lr, pc
00597cdc  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00597ce0  00 30 94 e5                                      ldr r3, [r4]
00597ce4  00 60 a0 e1                                      mov r6, r0
00597ce8  04 00 a0 e1                                      mov r0, r4
00597cec  0f e0 a0 e1                                      mov lr, pc
00597cf0  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00597cf4  24 20 84 e2                                      add r2, r4, #0x24
00597cf8  00 10 a0 e1                                      mov r1, r0
00597cfc  06 00 a0 e1                                      mov r0, r6
00597d00  df fe ff eb                                      bl #0x597884
00597d04  1c 31 94 e5                                      ldr r3, [r4, #0x11c]
00597d08  12 3e 83 e3                                      orr r3, r3, #0x120
00597d0c  50 30 c3 e3                                      bic r3, r3, #0x50
00597d10  1c 31 84 e5                                      str r3, [r4, #0x11c]
00597d14  dd ff ff ea                                      b #0x597c90
00597d18  1c 31 90 e5                                      ldr r3, [r0, #0x11c]
00597d1c  5e 00 13 e3                                      tst r3, #0x5e
00597d20  da ff ff 0a                                      beq #0x597c90
00597d24  00 60 a0 e1                                      mov r6, r0
00597d28  24 30 96 e4                                      ldr r3, [r6], #0x24
00597d2c  0f e0 a0 e1                                      mov lr, pc
00597d30  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00597d34  41 20 a0 e3                                      mov r2, #0x41
00597d38  00 10 a0 e1                                      mov r1, r0
00597d3c  06 00 a0 e1                                      mov r0, r6
00597d40  c8 da f5 eb                                      bl #0x30e868
00597d44  1c 31 94 e5                                      ldr r3, [r4, #0x11c]
00597d48  12 3e 83 e3                                      orr r3, r3, #0x120
00597d4c  50 30 c3 e3                                      bic r3, r3, #0x50
00597d50  1c 31 84 e5                                      str r3, [r4, #0x11c]
00597d54  cd ff ff ea                                      b #0x597c90

; Source file: glitch_core_detail_CMatrix4Base_float-6abb3d5afde0-001.asm
; FUNCTION 0x00597884, declared_size=988, range_size=988, mode=arm
; class-group: glitch::core::detail::CMatrix4Base<float>
; alias: _ZNK6glitch4core6detail12CMatrix4BaseIfE6mult34ERKS3_RS3_
; demangled: glitch::core::detail::CMatrix4Base<float>::mult34(glitch::core::detail::CMatrix4Base<float> const&, glitch::core::detail::CMatrix4Base<float>&) const
; decoder-mode: arm
00597884  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00597888  40 30 d0 e5                                      ldrb r3, [r0, #0x40]
0059788c  00 40 a0 e1                                      mov r4, r0
00597890  02 50 a0 e1                                      mov r5, r2
00597894  00 00 53 e3                                      cmp r3, #0
00597898  01 60 a0 e1                                      mov r6, r1
0059789c  ea 00 00 1a                                      bne #0x597c4c
005978a0  40 80 d1 e5                                      ldrb r8, [r1, #0x40]
005978a4  00 00 58 e3                                      cmp r8, #0
005978a8  e6 00 00 1a                                      bne #0x597c48
005978ac  00 10 91 e5                                      ldr r1, [r1]
005978b0  00 00 90 e5                                      ldr r0, [r0]
005978b4  2c dd f5 eb                                      bl #0x30ed6c
005978b8  04 10 96 e5                                      ldr r1, [r6, #4]
005978bc  00 70 a0 e1                                      mov r7, r0
005978c0  10 00 94 e5                                      ldr r0, [r4, #0x10]
005978c4  28 dd f5 eb                                      bl #0x30ed6c
005978c8  00 10 a0 e1                                      mov r1, r0
005978cc  07 00 a0 e1                                      mov r0, r7
005978d0  b3 dc f5 eb                                      bl #0x30eba4
005978d4  08 10 96 e5                                      ldr r1, [r6, #8]
005978d8  00 70 a0 e1                                      mov r7, r0
005978dc  20 00 94 e5                                      ldr r0, [r4, #0x20]
005978e0  21 dd f5 eb                                      bl #0x30ed6c
005978e4  00 10 a0 e1                                      mov r1, r0
005978e8  07 00 a0 e1                                      mov r0, r7
005978ec  ac dc f5 eb                                      bl #0x30eba4
005978f0  00 00 85 e5                                      str r0, [r5]
005978f4  00 10 96 e5                                      ldr r1, [r6]
005978f8  04 00 94 e5                                      ldr r0, [r4, #4]
005978fc  1a dd f5 eb                                      bl #0x30ed6c
00597900  04 10 96 e5                                      ldr r1, [r6, #4]
00597904  00 70 a0 e1                                      mov r7, r0
00597908  14 00 94 e5                                      ldr r0, [r4, #0x14]
0059790c  16 dd f5 eb                                      bl #0x30ed6c
00597910  00 10 a0 e1                                      mov r1, r0
00597914  07 00 a0 e1                                      mov r0, r7
00597918  a1 dc f5 eb                                      bl #0x30eba4
0059791c  08 10 96 e5                                      ldr r1, [r6, #8]
00597920  00 70 a0 e1                                      mov r7, r0
00597924  24 00 94 e5                                      ldr r0, [r4, #0x24]
00597928  0f dd f5 eb                                      bl #0x30ed6c
0059792c  00 10 a0 e1                                      mov r1, r0
00597930  07 00 a0 e1                                      mov r0, r7
00597934  9a dc f5 eb                                      bl #0x30eba4
00597938  04 00 85 e5                                      str r0, [r5, #4]
0059793c  00 10 96 e5                                      ldr r1, [r6]
00597940  08 00 94 e5                                      ldr r0, [r4, #8]
00597944  08 dd f5 eb                                      bl #0x30ed6c
00597948  04 10 96 e5                                      ldr r1, [r6, #4]
0059794c  00 70 a0 e1                                      mov r7, r0
00597950  18 00 94 e5                                      ldr r0, [r4, #0x18]
00597954  04 dd f5 eb                                      bl #0x30ed6c
00597958  00 10 a0 e1                                      mov r1, r0
0059795c  07 00 a0 e1                                      mov r0, r7
00597960  8f dc f5 eb                                      bl #0x30eba4
00597964  08 10 96 e5                                      ldr r1, [r6, #8]
00597968  00 70 a0 e1                                      mov r7, r0
0059796c  28 00 94 e5                                      ldr r0, [r4, #0x28]
00597970  fd dc f5 eb                                      bl #0x30ed6c
00597974  00 10 a0 e1                                      mov r1, r0
00597978  07 00 a0 e1                                      mov r0, r7
0059797c  88 dc f5 eb                                      bl #0x30eba4
00597980  00 70 a0 e3                                      mov r7, #0
00597984  08 00 85 e5                                      str r0, [r5, #8]
00597988  0c 70 85 e5                                      str r7, [r5, #0xc]
0059798c  10 10 96 e5                                      ldr r1, [r6, #0x10]
00597990  00 00 94 e5                                      ldr r0, [r4]
00597994  f4 dc f5 eb                                      bl #0x30ed6c
00597998  14 10 96 e5                                      ldr r1, [r6, #0x14]
0059799c  00 a0 a0 e1                                      mov sl, r0
005979a0  10 00 94 e5                                      ldr r0, [r4, #0x10]
005979a4  f0 dc f5 eb                                      bl #0x30ed6c
005979a8  00 10 a0 e1                                      mov r1, r0
005979ac  0a 00 a0 e1                                      mov r0, sl
005979b0  7b dc f5 eb                                      bl #0x30eba4
005979b4  18 10 96 e5                                      ldr r1, [r6, #0x18]
005979b8  00 a0 a0 e1                                      mov sl, r0
005979bc  20 00 94 e5                                      ldr r0, [r4, #0x20]
005979c0  e9 dc f5 eb                                      bl #0x30ed6c
005979c4  00 10 a0 e1                                      mov r1, r0
005979c8  0a 00 a0 e1                                      mov r0, sl
005979cc  74 dc f5 eb                                      bl #0x30eba4
005979d0  10 00 85 e5                                      str r0, [r5, #0x10]
005979d4  10 10 96 e5                                      ldr r1, [r6, #0x10]
005979d8  04 00 94 e5                                      ldr r0, [r4, #4]
005979dc  e2 dc f5 eb                                      bl #0x30ed6c
005979e0  14 10 96 e5                                      ldr r1, [r6, #0x14]
005979e4  00 a0 a0 e1                                      mov sl, r0
005979e8  14 00 94 e5                                      ldr r0, [r4, #0x14]
005979ec  de dc f5 eb                                      bl #0x30ed6c
005979f0  00 10 a0 e1                                      mov r1, r0
005979f4  0a 00 a0 e1                                      mov r0, sl
005979f8  69 dc f5 eb                                      bl #0x30eba4
005979fc  18 10 96 e5                                      ldr r1, [r6, #0x18]
00597a00  00 a0 a0 e1                                      mov sl, r0
00597a04  24 00 94 e5                                      ldr r0, [r4, #0x24]
00597a08  d7 dc f5 eb                                      bl #0x30ed6c
00597a0c  00 10 a0 e1                                      mov r1, r0
00597a10  0a 00 a0 e1                                      mov r0, sl
00597a14  62 dc f5 eb                                      bl #0x30eba4
00597a18  14 00 85 e5                                      str r0, [r5, #0x14]
00597a1c  10 10 96 e5                                      ldr r1, [r6, #0x10]
00597a20  08 00 94 e5                                      ldr r0, [r4, #8]
00597a24  d0 dc f5 eb                                      bl #0x30ed6c
00597a28  14 10 96 e5                                      ldr r1, [r6, #0x14]
00597a2c  00 a0 a0 e1                                      mov sl, r0
00597a30  18 00 94 e5                                      ldr r0, [r4, #0x18]
00597a34  cc dc f5 eb                                      bl #0x30ed6c
00597a38  00 10 a0 e1                                      mov r1, r0
00597a3c  0a 00 a0 e1                                      mov r0, sl
00597a40  57 dc f5 eb                                      bl #0x30eba4
00597a44  18 10 96 e5                                      ldr r1, [r6, #0x18]
00597a48  00 a0 a0 e1                                      mov sl, r0
00597a4c  28 00 94 e5                                      ldr r0, [r4, #0x28]
00597a50  c5 dc f5 eb                                      bl #0x30ed6c
00597a54  00 10 a0 e1                                      mov r1, r0
00597a58  0a 00 a0 e1                                      mov r0, sl
00597a5c  50 dc f5 eb                                      bl #0x30eba4
00597a60  18 00 85 e5                                      str r0, [r5, #0x18]
00597a64  1c 70 85 e5                                      str r7, [r5, #0x1c]
00597a68  20 10 96 e5                                      ldr r1, [r6, #0x20]
00597a6c  00 00 94 e5                                      ldr r0, [r4]
00597a70  bd dc f5 eb                                      bl #0x30ed6c
00597a74  24 10 96 e5                                      ldr r1, [r6, #0x24]
00597a78  00 a0 a0 e1                                      mov sl, r0
00597a7c  10 00 94 e5                                      ldr r0, [r4, #0x10]
00597a80  b9 dc f5 eb                                      bl #0x30ed6c
00597a84  00 10 a0 e1                                      mov r1, r0
00597a88  0a 00 a0 e1                                      mov r0, sl
00597a8c  44 dc f5 eb                                      bl #0x30eba4
00597a90  28 10 96 e5                                      ldr r1, [r6, #0x28]
00597a94  00 a0 a0 e1                                      mov sl, r0
00597a98  20 00 94 e5                                      ldr r0, [r4, #0x20]
00597a9c  b2 dc f5 eb                                      bl #0x30ed6c
00597aa0  00 10 a0 e1                                      mov r1, r0
00597aa4  0a 00 a0 e1                                      mov r0, sl
00597aa8  3d dc f5 eb                                      bl #0x30eba4
00597aac  20 00 85 e5                                      str r0, [r5, #0x20]
00597ab0  20 10 96 e5                                      ldr r1, [r6, #0x20]
00597ab4  04 00 94 e5                                      ldr r0, [r4, #4]
00597ab8  ab dc f5 eb                                      bl #0x30ed6c
00597abc  24 10 96 e5                                      ldr r1, [r6, #0x24]
00597ac0  00 a0 a0 e1                                      mov sl, r0
00597ac4  14 00 94 e5                                      ldr r0, [r4, #0x14]
00597ac8  a7 dc f5 eb                                      bl #0x30ed6c
00597acc  00 10 a0 e1                                      mov r1, r0
00597ad0  0a 00 a0 e1                                      mov r0, sl
00597ad4  32 dc f5 eb                                      bl #0x30eba4
00597ad8  28 10 96 e5                                      ldr r1, [r6, #0x28]
00597adc  00 a0 a0 e1                                      mov sl, r0
00597ae0  24 00 94 e5                                      ldr r0, [r4, #0x24]
00597ae4  a0 dc f5 eb                                      bl #0x30ed6c
00597ae8  00 10 a0 e1                                      mov r1, r0
00597aec  0a 00 a0 e1                                      mov r0, sl
00597af0  2b dc f5 eb                                      bl #0x30eba4
00597af4  24 00 85 e5                                      str r0, [r5, #0x24]
00597af8  20 10 96 e5                                      ldr r1, [r6, #0x20]
00597afc  08 00 94 e5                                      ldr r0, [r4, #8]
00597b00  99 dc f5 eb                                      bl #0x30ed6c
00597b04  24 10 96 e5                                      ldr r1, [r6, #0x24]
00597b08  00 a0 a0 e1                                      mov sl, r0
00597b0c  18 00 94 e5                                      ldr r0, [r4, #0x18]
00597b10  95 dc f5 eb                                      bl #0x30ed6c
00597b14  00 10 a0 e1                                      mov r1, r0
00597b18  0a 00 a0 e1                                      mov r0, sl
00597b1c  20 dc f5 eb                                      bl #0x30eba4
00597b20  28 10 96 e5                                      ldr r1, [r6, #0x28]
00597b24  00 a0 a0 e1                                      mov sl, r0
00597b28  28 00 94 e5                                      ldr r0, [r4, #0x28]
00597b2c  8e dc f5 eb                                      bl #0x30ed6c
00597b30  00 10 a0 e1                                      mov r1, r0
00597b34  0a 00 a0 e1                                      mov r0, sl
00597b38  19 dc f5 eb                                      bl #0x30eba4
00597b3c  28 00 85 e5                                      str r0, [r5, #0x28]
00597b40  2c 70 85 e5                                      str r7, [r5, #0x2c]
00597b44  30 10 96 e5                                      ldr r1, [r6, #0x30]
00597b48  00 00 94 e5                                      ldr r0, [r4]
00597b4c  86 dc f5 eb                                      bl #0x30ed6c
00597b50  34 10 96 e5                                      ldr r1, [r6, #0x34]
00597b54  00 70 a0 e1                                      mov r7, r0
00597b58  10 00 94 e5                                      ldr r0, [r4, #0x10]
00597b5c  82 dc f5 eb                                      bl #0x30ed6c
00597b60  00 10 a0 e1                                      mov r1, r0
00597b64  07 00 a0 e1                                      mov r0, r7
00597b68  0d dc f5 eb                                      bl #0x30eba4
00597b6c  38 10 96 e5                                      ldr r1, [r6, #0x38]
00597b70  00 70 a0 e1                                      mov r7, r0
00597b74  20 00 94 e5                                      ldr r0, [r4, #0x20]
00597b78  7b dc f5 eb                                      bl #0x30ed6c
00597b7c  00 10 a0 e1                                      mov r1, r0
00597b80  07 00 a0 e1                                      mov r0, r7
00597b84  06 dc f5 eb                                      bl #0x30eba4
00597b88  30 10 94 e5                                      ldr r1, [r4, #0x30]
00597b8c  04 dc f5 eb                                      bl #0x30eba4
00597b90  30 00 85 e5                                      str r0, [r5, #0x30]
00597b94  30 10 96 e5                                      ldr r1, [r6, #0x30]
00597b98  04 00 94 e5                                      ldr r0, [r4, #4]
00597b9c  72 dc f5 eb                                      bl #0x30ed6c
00597ba0  34 10 96 e5                                      ldr r1, [r6, #0x34]
00597ba4  00 70 a0 e1                                      mov r7, r0
00597ba8  14 00 94 e5                                      ldr r0, [r4, #0x14]
00597bac  6e dc f5 eb                                      bl #0x30ed6c
00597bb0  00 10 a0 e1                                      mov r1, r0
00597bb4  07 00 a0 e1                                      mov r0, r7
00597bb8  f9 db f5 eb                                      bl #0x30eba4
00597bbc  38 10 96 e5                                      ldr r1, [r6, #0x38]
00597bc0  00 70 a0 e1                                      mov r7, r0
00597bc4  24 00 94 e5                                      ldr r0, [r4, #0x24]
00597bc8  67 dc f5 eb                                      bl #0x30ed6c
00597bcc  00 10 a0 e1                                      mov r1, r0
00597bd0  07 00 a0 e1                                      mov r0, r7
00597bd4  f2 db f5 eb                                      bl #0x30eba4
00597bd8  34 10 94 e5                                      ldr r1, [r4, #0x34]
00597bdc  f0 db f5 eb                                      bl #0x30eba4
00597be0  34 00 85 e5                                      str r0, [r5, #0x34]
00597be4  30 10 96 e5                                      ldr r1, [r6, #0x30]
00597be8  08 00 94 e5                                      ldr r0, [r4, #8]
00597bec  5e dc f5 eb                                      bl #0x30ed6c
00597bf0  34 10 96 e5                                      ldr r1, [r6, #0x34]
00597bf4  00 70 a0 e1                                      mov r7, r0
00597bf8  18 00 94 e5                                      ldr r0, [r4, #0x18]
00597bfc  5a dc f5 eb                                      bl #0x30ed6c
00597c00  00 10 a0 e1                                      mov r1, r0
00597c04  07 00 a0 e1                                      mov r0, r7
00597c08  e5 db f5 eb                                      bl #0x30eba4
00597c0c  38 10 96 e5                                      ldr r1, [r6, #0x38]
00597c10  00 70 a0 e1                                      mov r7, r0
00597c14  28 00 94 e5                                      ldr r0, [r4, #0x28]
00597c18  53 dc f5 eb                                      bl #0x30ed6c
00597c1c  00 10 a0 e1                                      mov r1, r0
00597c20  07 00 a0 e1                                      mov r0, r7
00597c24  de db f5 eb                                      bl #0x30eba4
00597c28  38 10 94 e5                                      ldr r1, [r4, #0x38]
00597c2c  dc db f5 eb                                      bl #0x30eba4
00597c30  fe 35 a0 e3                                      mov r3, #0x3f800000
00597c34  38 00 85 e5                                      str r0, [r5, #0x38]
00597c38  40 80 c5 e5                                      strb r8, [r5, #0x40]
00597c3c  3c 30 85 e5                                      str r3, [r5, #0x3c]
00597c40  05 00 a0 e1                                      mov r0, r5
00597c44  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00597c48  00 10 a0 e1                                      mov r1, r0
00597c4c  05 00 a0 e1                                      mov r0, r5
00597c50  41 20 a0 e3                                      mov r2, #0x41
00597c54  03 db f5 eb                                      bl #0x30e868
00597c58  05 00 a0 e1                                      mov r0, r5
00597c5c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; Source file: glitch_scene_ISceneNode-7824e152fc5a-001.asm
; FUNCTION 0x00598908, declared_size=252, range_size=252, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZNK6glitch5scene10ISceneNode25getRelativeTransformationEv
; demangled: glitch::scene::ISceneNode::getRelativeTransformation() const
; decoder-mode: arm
00598908  70 40 2d e9                                      push {r4, r5, r6, lr}
0059890c  1c 31 90 e5                                      ldr r3, [r0, #0x11c]
00598910  48 d0 4d e2                                      sub sp, sp, #0x48
00598914  00 40 a0 e1                                      mov r4, r0
00598918  0e 00 13 e3                                      tst r3, #0xe
0059891c  68 50 80 02                                      addeq r5, r0, #0x68
00598920  0c 00 00 0a                                      beq #0x598958
00598924  06 20 13 e2                                      ands r2, r3, #6
00598928  0d 00 00 1a                                      bne #0x598964
0059892c  ac c0 90 e5                                      ldr ip, [r0, #0xac]
00598930  b4 10 94 e5                                      ldr r1, [r4, #0xb4]
00598934  b0 00 90 e5                                      ldr r0, [r0, #0xb0]
00598938  68 50 84 e2                                      add r5, r4, #0x68
0059893c  a8 20 c4 e5                                      strb r2, [r4, #0xa8]
00598940  98 c0 84 e5                                      str ip, [r4, #0x98]
00598944  9c 00 84 e5                                      str r0, [r4, #0x9c]
00598948  a0 10 84 e5                                      str r1, [r4, #0xa0]
0059894c  0e 30 c3 e3                                      bic r3, r3, #0xe
00598950  10 30 83 e3                                      orr r3, r3, #0x10
00598954  1c 31 84 e5                                      str r3, [r4, #0x11c]
00598958  05 00 a0 e1                                      mov r0, r5
0059895c  48 d0 8d e2                                      add sp, sp, #0x48
00598960  70 80 bd e8                                      pop {r4, r5, r6, pc}
00598964  04 60 8d e2                                      add r6, sp, #4
00598968  00 30 a0 e3                                      mov r3, #0
0059896c  68 50 80 e2                                      add r5, r0, #0x68
00598970  06 10 a0 e1                                      mov r1, r6
00598974  b8 00 80 e2                                      add r0, r0, #0xb8
00598978  44 30 cd e5                                      strb r3, [sp, #0x44]
0059897c  53 1e ff eb                                      bl #0x5602d0
00598980  06 10 a0 e1                                      mov r1, r6
00598984  41 20 a0 e3                                      mov r2, #0x41
00598988  05 00 a0 e1                                      mov r0, r5
0059898c  b5 d7 f5 eb                                      bl #0x30e868
00598990  c8 00 94 e5                                      ldr r0, [r4, #0xc8]
00598994  fe 15 a0 e3                                      mov r1, #0x3f800000
00598998  7b d5 f5 eb                                      bl #0x30df8c
0059899c  00 00 50 e3                                      cmp r0, #0
005989a0  04 00 00 0a                                      beq #0x5989b8
005989a4  cc 00 94 e5                                      ldr r0, [r4, #0xcc]
005989a8  fe 15 a0 e3                                      mov r1, #0x3f800000
005989ac  76 d5 f5 eb                                      bl #0x30df8c
005989b0  00 00 50 e3                                      cmp r0, #0
005989b4  0c 00 00 1a                                      bne #0x5989ec
005989b8  05 00 a0 e1                                      mov r0, r5
005989bc  c8 10 84 e2                                      add r1, r4, #0xc8
005989c0  70 fb ff eb                                      bl #0x597788
005989c4  b4 30 94 e5                                      ldr r3, [r4, #0xb4]
005989c8  ac 10 94 e5                                      ldr r1, [r4, #0xac]
005989cc  b0 20 94 e5                                      ldr r2, [r4, #0xb0]
005989d0  00 00 a0 e3                                      mov r0, #0
005989d4  a0 30 84 e5                                      str r3, [r4, #0xa0]
005989d8  a8 00 c4 e5                                      strb r0, [r4, #0xa8]
005989dc  98 10 84 e5                                      str r1, [r4, #0x98]
005989e0  9c 20 84 e5                                      str r2, [r4, #0x9c]
005989e4  1c 31 94 e5                                      ldr r3, [r4, #0x11c]
005989e8  d7 ff ff ea                                      b #0x59894c
005989ec  d0 00 94 e5                                      ldr r0, [r4, #0xd0]
005989f0  fe 15 a0 e3                                      mov r1, #0x3f800000
005989f4  64 d5 f5 eb                                      bl #0x30df8c
005989f8  00 00 50 e3                                      cmp r0, #0
005989fc  f0 ff ff 1a                                      bne #0x5989c4
00598a00  ec ff ff ea                                      b #0x5989b8
; Supporting 12-byte arithmetic import thunks copied from unattributed-executable-bytes.asm.
; The ranges are exact ELF bytes; dynamic relocations identify their GOT destinations.
; 0x0030eba4 -> GOT 0x00994f58 -> __aeabi_fadd, SHA-256 2ea537aed0671328c9f773766dcf1b5caf5f83968844cb9671e0ab082f59663a
0030eba4  06 c6 8f e2 86 ca 8c e2 ac f3 bc e5  ; 12-byte exact excerpt
; 0x0030ed6c -> GOT 0x00994ff0 -> __aeabi_fmul, SHA-256 d25ad9428156675ee63d0a411a4ed56f062e7a0e94321965ab3435ad433e87b7
0030ed6c  06 c6 8f e2 86 ca 8c e2 7c f2 bc e5  ; 12-byte exact excerpt

; Source file: glitch_scene_ISceneNode-7824e152fc5a-001.asm
; FUNCTION 0x0035a8e0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZNK6glitch5scene10ISceneNode25getAbsoluteTransformationEv
; demangled: glitch::scene::ISceneNode::getAbsoluteTransformation() const
; decoder-mode: arm
0035a8e0  24 00 80 e2                                      add r0, r0, #0x24
0035a8e4  1e ff 2f e1                                      bx lr
