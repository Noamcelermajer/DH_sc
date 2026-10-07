; FUNCTION 0x00631628, range_size=40, mode=arm
; demangled: glitch::collada::CColladaFactory::createScene(glitch::collada::CColladaDatabase const&)
; assembly_file: glitch_collada_CColladaFactory-db06bc565b1a-001.asm
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

; FUNCTION 0x0065b734, range_size=272, mode=arm
; demangled: glitch::collada::CRootSceneNode::CRootSceneNode(glitch::collada::CColladaDatabase const&)
; assembly_file: glitch_collada_CRootSceneNode-d3662147f216-001.asm
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
0065b834  4c 93 33 00 54 3c 00 00 44 2b 00 00 8c 15 00 00  .byte 0x4c, 0x93, 0x33, 0x00, 0x54, 0x3c, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x8c, 0x15, 0x00, 0x00

; FUNCTION 0x0061b9e8, range_size=212, mode=arm
; demangled: glitch::collada::CColladaDatabase::constructScene(glitch::video::IVideoDriver*) const
; assembly_file: glitch_collada_CColladaDatabase-f458595c81f3-001.asm
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

; FUNCTION 0x0061b8bc, range_size=204, mode=arm
; demangled: glitch::collada::CColladaDatabase::constructVisualScene(glitch::video::IVideoDriver*, glitch::collada::SVisualScene*, glitch::collada::CRootSceneNode*) const
; assembly_file: glitch_collada_CColladaDatabase-f458595c81f3-001.asm
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

; FUNCTION 0x0061b9b8, range_size=48, mode=arm
; demangled: glitch::collada::CColladaDatabase::constructVisualScene(glitch::video::IVideoDriver*, char const*, glitch::collada::CRootSceneNode*) const
; assembly_file: glitch_collada_CColladaDatabase-f458595c81f3-001.asm
0061b9b8  70 40 2d e9                                      push {r4, r5, r6, lr}
0061b9bc  01 40 a0 e1                                      mov r4, r1
0061b9c0  02 10 a0 e1                                      mov r1, r2
0061b9c4  03 50 a0 e1                                      mov r5, r3
0061b9c8  00 60 a0 e1                                      mov r6, r0
0061b9cc  2f fb ff eb                                      bl #0x61a690
0061b9d0  04 10 a0 e1                                      mov r1, r4
0061b9d4  00 20 a0 e1                                      mov r2, r0
0061b9d8  05 30 a0 e1                                      mov r3, r5
0061b9dc  06 00 a0 e1                                      mov r0, r6
0061b9e0  70 40 bd e8                                      pop {r4, r5, r6, lr}
0061b9e4  b4 ff ff ea                                      b #0x61b8bc

; FUNCTION 0x0061b2f4, range_size=1480, mode=arm
; demangled: glitch::collada::CColladaDatabase::constructNode(glitch::video::IVideoDriver*, glitch::collada::SNode*, glitch::collada::CRootSceneNode*) const
; assembly_file: glitch_collada_CColladaDatabase-f458595c81f3-001.asm
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

; FUNCTION 0x0061b2d0, range_size=36, mode=arm
; demangled: glitch::collada::CColladaDatabase::constructCamera(char const*, glitch::collada::CRootSceneNode*) const
; assembly_file: glitch_collada_CColladaDatabase-f458595c81f3-001.asm
0061b2d0  70 40 2d e9                                      push {r4, r5, r6, lr}
0061b2d4  02 40 a0 e1                                      mov r4, r2
0061b2d8  00 50 a0 e1                                      mov r5, r0
0061b2dc  e3 ff ff eb                                      bl #0x61b270
0061b2e0  04 20 a0 e1                                      mov r2, r4
0061b2e4  00 10 a0 e1                                      mov r1, r0
0061b2e8  05 00 a0 e1                                      mov r0, r5
0061b2ec  70 40 bd e8                                      pop {r4, r5, r6, lr}
0061b2f0  28 f8 ff ea                                      b #0x619398

; FUNCTION 0x00619398, range_size=72, mode=arm
; demangled: glitch::collada::CColladaDatabase::constructCamera(glitch::collada::SCamera*, glitch::collada::CRootSceneNode*) const
; assembly_file: glitch_collada_CColladaDatabase-f458595c81f3-001.asm
00619398  00 30 51 e2                                      subs r3, r1, #0
0061939c  70 40 2d e9                                      push {r4, r5, r6, lr}
006193a0  02 40 a0 e1                                      mov r4, r2
006193a4  03 50 a0 01                                      moveq r5, r3
006193a8  0a 00 00 0a                                      beq #0x6193d8
006193ac  04 c0 90 e5                                      ldr ip, [r0, #4]
006193b0  00 10 a0 e1                                      mov r1, r0
006193b4  03 20 a0 e1                                      mov r2, r3
006193b8  0c 00 a0 e1                                      mov r0, ip
006193bc  00 30 9c e5                                      ldr r3, [ip]
006193c0  0f e0 a0 e1                                      mov lr, pc
006193c4  44 f0 93 e5                                      ldr pc, [r3, #0x44]
006193c8  00 50 a0 e1                                      mov r5, r0
006193cc  05 10 a0 e1                                      mov r1, r5
006193d0  04 00 a0 e1                                      mov r0, r4
006193d4  b4 07 01 eb                                      bl #0x65b2ac
006193d8  05 00 a0 e1                                      mov r0, r5
006193dc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006317d0, range_size=48, mode=arm
; demangled: glitch::collada::CColladaFactory::createCameraNode(glitch::collada::CColladaDatabase const&, glitch::collada::SCamera*)
; assembly_file: glitch_collada_CColladaFactory-db06bc565b1a-001.asm
006317d0  70 40 2d e9                                      push {r4, r5, r6, lr}
006317d4  3a 0e a0 e3                                      mov r0, #0x3a0
006317d8  01 50 a0 e1                                      mov r5, r1
006317dc  00 10 a0 e3                                      mov r1, #0
006317e0  02 60 a0 e1                                      mov r6, r2
006317e4  70 0a fc eb                                      bl #0x5341ac
006317e8  05 10 a0 e1                                      mov r1, r5
006317ec  00 40 a0 e1                                      mov r4, r0
006317f0  06 20 a0 e1                                      mov r2, r6
006317f4  55 cf 02 eb                                      bl #0x6e5550
006317f8  04 00 a0 e1                                      mov r0, r4
006317fc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006e5550, range_size=608, mode=arm
; demangled: glitch::collada::CCameraSceneNode::CCameraSceneNode(glitch::collada::CColladaDatabase const&, glitch::collada::SCamera&)
; assembly_file: glitch_collada_CCameraSceneNode-bba68041ca96-001.asm
006e5550  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
006e5554  40 52 9f e5                                      ldr r5, [pc, #0x240]
006e5558  40 32 9f e5                                      ldr r3, [pc, #0x240]
006e555c  40 c2 9f e5                                      ldr ip, [pc, #0x240]
006e5560  05 50 8f e0                                      add r5, pc, r5
006e5564  03 30 95 e7                                      ldr r3, [r5, r3]
006e5568  0c c0 95 e7                                      ldr ip, [r5, ip]
006e556c  01 60 a0 e3                                      mov r6, #1
006e5570  30 e0 93 e5                                      ldr lr, [r3, #0x30]
006e5574  08 c0 8c e2                                      add ip, ip, #8
006e5578  9c 63 80 e5                                      str r6, [r0, #0x39c]
006e557c  98 c3 80 e5                                      str ip, [r0, #0x398]
006e5580  00 e0 80 e5                                      str lr, [r0]
006e5584  0c e0 1e e5                                      ldr lr, [lr, #-0xc]
006e5588  34 60 93 e5                                      ldr r6, [r3, #0x34]
006e558c  4c d0 4d e2                                      sub sp, sp, #0x4c
006e5590  00 c0 a0 e3                                      mov ip, #0
006e5594  0e 60 80 e7                                      str r6, [r0, lr]
006e5598  42 e4 a0 e3                                      mov lr, #0x42000000
006e559c  32 e7 8e e2                                      add lr, lr, #0xc80000
006e55a0  38 e0 8d e5                                      str lr, [sp, #0x38]
006e55a4  30 e0 8d e2                                      add lr, sp, #0x30
006e55a8  01 70 a0 e1                                      mov r7, r1
006e55ac  00 e0 8d e5                                      str lr, [sp]
006e55b0  04 10 83 e2                                      add r1, r3, #4
006e55b4  00 e0 a0 e3                                      mov lr, #0
006e55b8  3c 30 8d e2                                      add r3, sp, #0x3c
006e55bc  02 60 a0 e1                                      mov r6, r2
006e55c0  00 20 e0 e3                                      mvn r2, #0
006e55c4  00 40 a0 e1                                      mov r4, r0
006e55c8  34 c0 8d e5                                      str ip, [sp, #0x34]
006e55cc  04 e0 8d e5                                      str lr, [sp, #4]
006e55d0  3c c0 8d e5                                      str ip, [sp, #0x3c]
006e55d4  40 c0 8d e5                                      str ip, [sp, #0x40]
006e55d8  44 c0 8d e5                                      str ip, [sp, #0x44]
006e55dc  30 c0 8d e5                                      str ip, [sp, #0x30]
006e55e0  a4 78 fa eb                                      bl #0x583878
006e55e4  00 30 97 e5                                      ldr r3, [r7]
006e55e8  88 33 84 e5                                      str r3, [r4, #0x388]
006e55ec  04 20 97 e5                                      ldr r2, [r7, #4]
006e55f0  00 00 53 e3                                      cmp r3, #0
006e55f4  8c 23 84 e5                                      str r2, [r4, #0x38c]
006e55f8  03 00 00 0a                                      beq #0x6e560c
006e55fc  04 20 93 e5                                      ldr r2, [r3, #4]
006e5600  00 00 52 e3                                      cmp r2, #0
006e5604  01 20 82 12                                      addne r2, r2, #1
006e5608  04 20 83 15                                      strne r2, [r3, #4]
006e560c  94 21 9f e5                                      ldr r2, [pc, #0x194]
006e5610  94 31 9f e5                                      ldr r3, [pc, #0x194]
006e5614  00 10 a0 e3                                      mov r1, #0
006e5618  02 20 95 e7                                      ldr r2, [r5, r2]
006e561c  03 30 95 e7                                      ldr r3, [r5, r3]
006e5620  90 13 84 e5                                      str r1, [r4, #0x390]
006e5624  04 20 82 e2                                      add r2, r2, #4
006e5628  06 1d 83 e2                                      add r1, r3, #0x180
006e562c  1c 00 83 e2                                      add r0, r3, #0x1c
006e5630  67 3f 83 e2                                      add r3, r3, #0x19c
006e5634  84 23 84 e5                                      str r2, [r4, #0x384]
006e5638  00 00 84 e5                                      str r0, [r4]
006e563c  98 33 84 e5                                      str r3, [r4, #0x398]
006e5640  30 11 84 e5                                      str r1, [r4, #0x130]
006e5644  94 63 84 e5                                      str r6, [r4, #0x394]
006e5648  00 30 96 e5                                      ldr r3, [r6]
006e564c  84 33 84 e5                                      str r3, [r4, #0x384]
006e5650  00 30 97 e5                                      ldr r3, [r7]
006e5654  24 30 93 e5                                      ldr r3, [r3, #0x24]
006e5658  20 30 93 e5                                      ldr r3, [r3, #0x20]
006e565c  0c 30 93 e5                                      ldr r3, [r3, #0xc]
006e5660  01 00 53 e3                                      cmp r3, #1
006e5664  42 00 00 0a                                      beq #0x6e5774
006e5668  27 00 00 3a                                      blo #0x6e570c
006e566c  02 00 53 e3                                      cmp r3, #2
006e5670  08 00 00 1a                                      bne #0x6e5698
006e5674  00 30 a0 e3                                      mov r3, #0
006e5678  fe 25 a0 e3                                      mov r2, #0x3f800000
006e567c  04 00 a0 e1                                      mov r0, r4
006e5680  0c 10 8d e2                                      add r1, sp, #0xc
006e5684  10 30 8d e5                                      str r3, [sp, #0x10]
006e5688  14 20 8d e5                                      str r2, [sp, #0x14]
006e568c  0c 30 8d e5                                      str r3, [sp, #0xc]
006e5690  5c 72 fa eb                                      bl #0x582008
006e5694  94 63 94 e5                                      ldr r6, [r4, #0x394]
006e5698  04 30 96 e5                                      ldr r3, [r6, #4]
006e569c  00 00 53 e3                                      cmp r3, #0
006e56a0  25 00 00 1a                                      bne #0x6e573c
006e56a4  35 1a 0f e3                                      movw r1, #0xfa35
006e56a8  8e 1c 43 e3                                      movt r1, #0x3c8e
006e56ac  08 00 96 e5                                      ldr r0, [r6, #8]
006e56b0  ad a5 f0 eb                                      bl #0x30ed6c
006e56b4  3f 14 a0 e3                                      mov r1, #0x3f000000
006e56b8  ab a5 f0 eb                                      bl #0x30ed6c
006e56bc  1a a2 f0 eb                                      bl #0x30df2c
006e56c0  0c 10 96 e5                                      ldr r1, [r6, #0xc]
006e56c4  72 a5 f0 eb                                      bl #0x30ec94
006e56c8  33 a4 f0 eb                                      bl #0x30e79c
006e56cc  00 10 a0 e1                                      mov r1, r0
006e56d0  33 a5 f0 eb                                      bl #0x30eba4
006e56d4  00 10 a0 e1                                      mov r1, r0
006e56d8  04 00 a0 e1                                      mov r0, r4
006e56dc  6e 72 fa eb                                      bl #0x58209c
006e56e0  94 33 94 e5                                      ldr r3, [r4, #0x394]
006e56e4  04 00 a0 e1                                      mov r0, r4
006e56e8  10 10 93 e5                                      ldr r1, [r3, #0x10]
006e56ec  58 72 fa eb                                      bl #0x582054
006e56f0  94 33 94 e5                                      ldr r3, [r4, #0x394]
006e56f4  04 00 a0 e1                                      mov r0, r4
006e56f8  14 10 93 e5                                      ldr r1, [r3, #0x14]
006e56fc  5a 72 fa eb                                      bl #0x58206c
006e5700  04 00 a0 e1                                      mov r0, r4
006e5704  4c d0 8d e2                                      add sp, sp, #0x4c
006e5708  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
006e570c  00 30 a0 e3                                      mov r3, #0
006e5710  fe 25 a0 e3                                      mov r2, #0x3f800000
006e5714  04 00 a0 e1                                      mov r0, r4
006e5718  24 10 8d e2                                      add r1, sp, #0x24
006e571c  2c 30 8d e5                                      str r3, [sp, #0x2c]
006e5720  28 30 8d e5                                      str r3, [sp, #0x28]
006e5724  24 20 8d e5                                      str r2, [sp, #0x24]
006e5728  36 72 fa eb                                      bl #0x582008
006e572c  94 63 94 e5                                      ldr r6, [r4, #0x394]
006e5730  04 30 96 e5                                      ldr r3, [r6, #4]
006e5734  00 00 53 e3                                      cmp r3, #0
006e5738  d9 ff ff 0a                                      beq #0x6e56a4
006e573c  94 33 94 e5                                      ldr r3, [r4, #0x394]
006e5740  01 20 a0 e3                                      mov r2, #1
006e5744  34 21 c4 e5                                      strb r2, [r4, #0x134]
006e5748  0c 10 93 e5                                      ldr r1, [r3, #0xc]
006e574c  04 00 a0 e1                                      mov r0, r4
006e5750  4b 72 fa eb                                      bl #0x582084
006e5754  94 33 94 e5                                      ldr r3, [r4, #0x394]
006e5758  0c 10 93 e5                                      ldr r1, [r3, #0xc]
006e575c  08 00 93 e5                                      ldr r0, [r3, #8]
006e5760  4b a5 f0 eb                                      bl #0x30ec94
006e5764  00 10 a0 e1                                      mov r1, r0
006e5768  04 00 a0 e1                                      mov r0, r4
006e576c  50 72 fa eb                                      bl #0x5820b4
006e5770  da ff ff ea                                      b #0x6e56e0
006e5774  00 30 a0 e3                                      mov r3, #0
006e5778  fe 25 a0 e3                                      mov r2, #0x3f800000
006e577c  04 00 a0 e1                                      mov r0, r4
006e5780  18 10 8d e2                                      add r1, sp, #0x18
006e5784  1c 20 8d e5                                      str r2, [sp, #0x1c]
006e5788  20 30 8d e5                                      str r3, [sp, #0x20]
006e578c  18 30 8d e5                                      str r3, [sp, #0x18]
006e5790  1c 72 fa eb                                      bl #0x582008
006e5794  94 63 94 e5                                      ldr r6, [r4, #0x394]
006e5798  be ff ff ea                                      b #0x6e5698
006e579c  30 f5 2a 00 88 14 00 00 44 2b 00 00 b4 17 00 00  .byte 0x30, 0xf5, 0x2a, 0x00, 0x88, 0x14, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0xb4, 0x17, 0x00, 0x00
006e57ac  dc 13 00 00                                      .byte 0xdc, 0x13, 0x00, 0x00

; Named CSceneNode vtable words used by the node constructor virtual calls.
; VA 00983624 file 00982624: c4 6e 59 00  visible -> glitch::scene::ISceneNode::setVisible(bool)
; VA 00983670 file 00982670: c4 70 59 00  scale -> glitch::scene::ISceneNode::setScale(glitch::core::vector3d<float> const&)
; VA 00983678 file 00982678: f4 70 59 00  rotation -> glitch::scene::ISceneNode::setRotation(glitch::core::quaternion const&)
; VA 00983680 file 00982680: 2c 71 59 00  position -> glitch::scene::ISceneNode::setPosition(glitch::core::vector3d<float> const&)
