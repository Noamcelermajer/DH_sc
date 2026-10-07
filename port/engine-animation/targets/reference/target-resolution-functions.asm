; Focused ARM excerpts for the position-animation target route.
; Each complete body was rechecked against the APK ELF and PT_LOAD mapping.

; FUNCTION 0x006e24e8, declared_size=356, range_size=356, mode=arm
; class-group: glitch::collada::CAnimationSetTransformationTemplate
; alias: _ZN6glitch7collada35CAnimationSetTransformationTemplate24addTransformationTargetsEPNS0_10CSceneNodeE
; demangled: glitch::collada::CAnimationSetTransformationTemplate::addTransformationTargets(glitch::collada::CSceneNode*)
; decoder-mode: arm
006e24e8  70 40 2d e9                                      push {r4, r5, r6, lr}
006e24ec  00 40 a0 e1                                      mov r4, r0
006e24f0  08 d0 4d e2                                      sub sp, sp, #8
006e24f4  01 50 a0 e1                                      mov r5, r1
006e24f8  10 00 a0 e3                                      mov r0, #0x10
006e24fc  00 10 a0 e3                                      mov r1, #0
006e2500  29 47 f9 eb                                      bl #0x5341ac
006e2504  00 30 a0 e3                                      mov r3, #0
006e2508  04 00 8d e5                                      str r0, [sp, #4]
006e250c  00 30 c0 e5                                      strb r3, [r0]
006e2510  04 30 9d e5                                      ldr r3, [sp, #4]
006e2514  01 20 a0 e3                                      mov r2, #1
006e2518  04 60 84 e2                                      add r6, r4, #4
006e251c  04 20 83 e5                                      str r2, [r3, #4]
006e2520  04 30 9d e5                                      ldr r3, [sp, #4]
006e2524  08 50 83 e5                                      str r5, [r3, #8]
006e2528  08 10 94 e5                                      ldr r1, [r4, #8]
006e252c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
006e2530  03 00 51 e1                                      cmp r1, r3
006e2534  38 00 00 0a                                      beq #0x6e261c
006e2538  04 30 9d e5                                      ldr r3, [sp, #4]
006e253c  00 30 81 e5                                      str r3, [r1]
006e2540  08 30 94 e5                                      ldr r3, [r4, #8]
006e2544  04 30 83 e2                                      add r3, r3, #4
006e2548  08 30 84 e5                                      str r3, [r4, #8]
006e254c  00 10 a0 e3                                      mov r1, #0
006e2550  10 00 a0 e3                                      mov r0, #0x10
006e2554  14 47 f9 eb                                      bl #0x5341ac
006e2558  00 30 a0 e3                                      mov r3, #0
006e255c  04 00 8d e5                                      str r0, [sp, #4]
006e2560  00 30 c0 e5                                      strb r3, [r0]
006e2564  04 30 9d e5                                      ldr r3, [sp, #4]
006e2568  05 20 a0 e3                                      mov r2, #5
006e256c  04 20 83 e5                                      str r2, [r3, #4]
006e2570  04 30 9d e5                                      ldr r3, [sp, #4]
006e2574  08 50 83 e5                                      str r5, [r3, #8]
006e2578  08 10 94 e5                                      ldr r1, [r4, #8]
006e257c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
006e2580  03 00 51 e1                                      cmp r1, r3
006e2584  28 00 00 0a                                      beq #0x6e262c
006e2588  04 30 9d e5                                      ldr r3, [sp, #4]
006e258c  00 30 81 e5                                      str r3, [r1]
006e2590  08 30 94 e5                                      ldr r3, [r4, #8]
006e2594  04 30 83 e2                                      add r3, r3, #4
006e2598  08 30 84 e5                                      str r3, [r4, #8]
006e259c  00 10 a0 e3                                      mov r1, #0
006e25a0  10 00 a0 e3                                      mov r0, #0x10
006e25a4  00 47 f9 eb                                      bl #0x5341ac
006e25a8  00 30 a0 e3                                      mov r3, #0
006e25ac  04 00 8d e5                                      str r0, [sp, #4]
006e25b0  00 30 c0 e5                                      strb r3, [r0]
006e25b4  04 30 9d e5                                      ldr r3, [sp, #4]
006e25b8  0a 20 a0 e3                                      mov r2, #0xa
006e25bc  04 20 83 e5                                      str r2, [r3, #4]
006e25c0  04 30 9d e5                                      ldr r3, [sp, #4]
006e25c4  08 50 83 e5                                      str r5, [r3, #8]
006e25c8  08 10 94 e5                                      ldr r1, [r4, #8]
006e25cc  0c 30 94 e5                                      ldr r3, [r4, #0xc]
006e25d0  03 00 51 e1                                      cmp r1, r3
006e25d4  18 00 00 0a                                      beq #0x6e263c
006e25d8  04 30 9d e5                                      ldr r3, [sp, #4]
006e25dc  00 30 81 e5                                      str r3, [r1]
006e25e0  08 30 94 e5                                      ldr r3, [r4, #8]
006e25e4  04 30 83 e2                                      add r3, r3, #4
006e25e8  08 30 84 e5                                      str r3, [r4, #8]
006e25ec  f4 60 b5 e5                                      ldr r6, [r5, #0xf4]!
006e25f0  05 00 00 ea                                      b #0x6e260c
006e25f4  00 00 56 e3                                      cmp r6, #0
006e25f8  06 10 a0 01                                      moveq r1, r6
006e25fc  04 10 46 12                                      subne r1, r6, #4
006e2600  04 00 a0 e1                                      mov r0, r4
006e2604  b7 ff ff eb                                      bl #0x6e24e8
006e2608  00 60 96 e5                                      ldr r6, [r6]
006e260c  06 00 55 e1                                      cmp r5, r6
006e2610  f7 ff ff 1a                                      bne #0x6e25f4
006e2614  08 d0 8d e2                                      add sp, sp, #8
006e2618  70 80 bd e8                                      pop {r4, r5, r6, pc}
006e261c  06 00 a0 e1                                      mov r0, r6
006e2620  04 20 8d e2                                      add r2, sp, #4
006e2624  82 ff ff eb                                      bl #0x6e2434
006e2628  c7 ff ff ea                                      b #0x6e254c
006e262c  06 00 a0 e1                                      mov r0, r6
006e2630  04 20 8d e2                                      add r2, sp, #4
006e2634  7e ff ff eb                                      bl #0x6e2434
006e2638  d7 ff ff ea                                      b #0x6e259c
006e263c  06 00 a0 e1                                      mov r0, r6
006e2640  04 20 8d e2                                      add r2, sp, #4
006e2644  7a ff ff eb                                      bl #0x6e2434
006e2648  e7 ff ff ea                                      b #0x6e25ec

; FUNCTION 0x0065d150, declared_size=356, range_size=356, mode=arm
; class-group: glitch::collada::CSceneNode
; alias: _ZN6glitch7collada10CSceneNodeC1ERKNS0_16CColladaDatabaseEPNS0_5SNodeE
; demangled: glitch::collada::CSceneNode::CSceneNode(glitch::collada::CColladaDatabase const&, glitch::collada::SNode*)
; decoder-mode: arm
0065d150  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0065d154  44 51 9f e5                                      ldr r5, [pc, #0x144]
0065d158  44 31 9f e5                                      ldr r3, [pc, #0x144]
0065d15c  44 c1 9f e5                                      ldr ip, [pc, #0x144]
0065d160  05 50 8f e0                                      add r5, pc, r5
0065d164  03 30 95 e7                                      ldr r3, [r5, r3]
0065d168  0c c0 95 e7                                      ldr ip, [r5, ip]
0065d16c  01 60 a0 e3                                      mov r6, #1
0065d170  24 e0 93 e5                                      ldr lr, [r3, #0x24]
0065d174  08 c0 8c e2                                      add ip, ip, #8
0065d178  5c 61 80 e5                                      str r6, [r0, #0x15c]
0065d17c  00 e0 80 e5                                      str lr, [r0]
0065d180  58 c1 80 e5                                      str ip, [r0, #0x158]
0065d184  0c c0 1e e5                                      ldr ip, [lr, #-0xc]
0065d188  28 e0 93 e5                                      ldr lr, [r3, #0x28]
0065d18c  01 70 a0 e1                                      mov r7, r1
0065d190  2c d0 4d e2                                      sub sp, sp, #0x2c
0065d194  04 10 83 e2                                      add r1, r3, #4
0065d198  02 60 a0 e1                                      mov r6, r2
0065d19c  0c e0 80 e7                                      str lr, [r0, ip]
0065d1a0  00 20 e0 e3                                      mvn r2, #0
0065d1a4  00 40 a0 e1                                      mov r4, r0
0065d1a8  61 9a fc eb                                      bl #0x583b34
0065d1ac  00 30 97 e5                                      ldr r3, [r7]
0065d1b0  4c 31 84 e5                                      str r3, [r4, #0x14c]
0065d1b4  04 20 97 e5                                      ldr r2, [r7, #4]
0065d1b8  00 00 53 e3                                      cmp r3, #0
0065d1bc  50 21 84 e5                                      str r2, [r4, #0x150]
0065d1c0  03 00 00 0a                                      beq #0x65d1d4
0065d1c4  04 20 93 e5                                      ldr r2, [r3, #4]
0065d1c8  00 00 52 e3                                      cmp r2, #0
0065d1cc  01 20 82 12                                      addne r2, r2, #1
0065d1d0  04 20 83 15                                      strne r2, [r3, #4]
0065d1d4  d0 20 9f e5                                      ldr r2, [pc, #0xd0]
0065d1d8  d0 30 9f e5                                      ldr r3, [pc, #0xd0]
0065d1dc  00 00 56 e3                                      cmp r6, #0
0065d1e0  02 20 95 e7                                      ldr r2, [r5, r2]
0065d1e4  03 30 95 e7                                      ldr r3, [r5, r3]
0065d1e8  54 61 84 e5                                      str r6, [r4, #0x154]
0065d1ec  04 20 82 e2                                      add r2, r2, #4
0065d1f0  49 1f 83 e2                                      add r1, r3, #0x124
0065d1f4  1c 30 83 e2                                      add r3, r3, #0x1c
0065d1f8  48 21 84 e5                                      str r2, [r4, #0x148]
0065d1fc  00 30 84 e5                                      str r3, [r4]
0065d200  58 11 84 e5                                      str r1, [r4, #0x158]
0065d204  22 00 00 0a                                      beq #0x65d294
0065d208  04 10 96 e5                                      ldr r1, [r6, #4]
0065d20c  04 00 a0 e1                                      mov r0, r4
0065d210  fb ed fc eb                                      bl #0x598a04
0065d214  54 31 94 e5                                      ldr r3, [r4, #0x154]
0065d218  04 00 a0 e1                                      mov r0, r4
0065d21c  1c 10 8d e2                                      add r1, sp, #0x1c
0065d220  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0065d224  1c 20 8d e5                                      str r2, [sp, #0x1c]
0065d228  10 20 93 e5                                      ldr r2, [r3, #0x10]
0065d22c  20 20 8d e5                                      str r2, [sp, #0x20]
0065d230  14 30 93 e5                                      ldr r3, [r3, #0x14]
0065d234  24 30 8d e5                                      str r3, [sp, #0x24]
0065d238  bb e7 fc eb                                      bl #0x59712c
0065d23c  54 31 94 e5                                      ldr r3, [r4, #0x154]
0065d240  04 00 a0 e1                                      mov r0, r4
0065d244  0d 10 a0 e1                                      mov r1, sp
0065d248  18 20 93 e5                                      ldr r2, [r3, #0x18]
0065d24c  00 20 8d e5                                      str r2, [sp]
0065d250  1c 20 93 e5                                      ldr r2, [r3, #0x1c]
0065d254  04 20 8d e5                                      str r2, [sp, #4]
0065d258  20 20 93 e5                                      ldr r2, [r3, #0x20]
0065d25c  08 20 8d e5                                      str r2, [sp, #8]
0065d260  24 30 93 e5                                      ldr r3, [r3, #0x24]
0065d264  0c 30 8d e5                                      str r3, [sp, #0xc]
0065d268  a1 e7 fc eb                                      bl #0x5970f4
0065d26c  54 31 94 e5                                      ldr r3, [r4, #0x154]
0065d270  04 00 a0 e1                                      mov r0, r4
0065d274  10 10 8d e2                                      add r1, sp, #0x10
0065d278  28 20 93 e5                                      ldr r2, [r3, #0x28]
0065d27c  10 20 8d e5                                      str r2, [sp, #0x10]
0065d280  2c 20 93 e5                                      ldr r2, [r3, #0x2c]
0065d284  14 20 8d e5                                      str r2, [sp, #0x14]
0065d288  30 30 93 e5                                      ldr r3, [r3, #0x30]
0065d28c  18 30 8d e5                                      str r3, [sp, #0x18]
0065d290  8b e7 fc eb                                      bl #0x5970c4
0065d294  04 00 a0 e1                                      mov r0, r4
0065d298  2c d0 8d e2                                      add sp, sp, #0x2c
0065d29c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
0065d2a0  30 79 33 00 44 40 00 00 44 2b 00 00 b4 17 00 00  .byte 0x30, 0x79, 0x33, 0x00, 0x44, 0x40, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0xb4, 0x17, 0x00, 0x00
0065d2b0  7c 34 00 00                                      .byte 0x7c, 0x34, 0x00, 0x00

; FUNCTION 0x0059712c, declared_size=40, range_size=40, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode11setPositionERKNS_4core8vector3dIfEE
; demangled: glitch::scene::ISceneNode::setPosition(glitch::core::vector3d<float> const&)
; decoder-mode: arm
0059712c  00 30 91 e5                                      ldr r3, [r1]
00597130  1c 21 90 e5                                      ldr r2, [r0, #0x11c]
00597134  ac 30 80 e5                                      str r3, [r0, #0xac]
00597138  04 30 91 e5                                      ldr r3, [r1, #4]
0059713c  08 20 82 e3                                      orr r2, r2, #8
00597140  b0 30 80 e5                                      str r3, [r0, #0xb0]
00597144  08 30 91 e5                                      ldr r3, [r1, #8]
00597148  1c 21 80 e5                                      str r2, [r0, #0x11c]
0059714c  b4 30 80 e5                                      str r3, [r0, #0xb4]
00597150  1e ff 2f e1                                      bx lr


; Exact CSceneNode vtable slot word used by the target call.
; Vtable symbol: None (vtable for glitch::collada::CSceneNode)
; Vtable base VA=0x009835c0; primary address point VA=0x009835dc.
; Object vptr slot +0xa4 => table offset +0xc0 => VA 0x00983680, file 0x00982680.
; Bytes: 2c 71 59 00 => ISceneNode::setPosition at 0x0059712c.
