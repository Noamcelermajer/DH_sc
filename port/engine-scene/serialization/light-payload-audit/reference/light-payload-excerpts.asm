; Selector-4 dispatch slice (the full 0x61b2f4 range/hash is linked below).
0061b360  44 20 94 e5                                      ldr r2, [r4, #0x44]
0061b364  85 61 a0 e1                                      lsl r6, r5, #3
0061b368  85 31 92 e7                                      ldr r3, [r2, r5, lsl #3]
0061b36c  06 20 82 e0                                      add r2, r2, r6
0061b370  01 30 43 e2                                      sub r3, r3, #1
0061b374  0c 00 53 e3                                      cmp r3, #0xc
0061b378  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
0061b664  04 30 92 e5                                      ldr r3, [r2, #4]
0061b668  08 00 a0 e1                                      mov r0, r8
0061b66c  0a 20 a0 e1                                      mov r2, sl
0061b670  04 10 93 e5                                      ldr r1, [r3, #4]
0061b674  01 10 81 e2                                      add r1, r1, #1
0061b678  f3 fe ff eb                                      bl #0x61b24c

; FUNCTION 0x0060e3ac, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase8getLightEi
; demangled: glitch::collada::CColladaDatabase::getLight(int) const
; decoder-mode: arm
0060e3ac  00 30 90 e5                                      ldr r3, [r0]
0060e3b0  18 00 a0 e3                                      mov r0, #0x18
0060e3b4  24 30 93 e5                                      ldr r3, [r3, #0x24]
0060e3b8  20 30 93 e5                                      ldr r3, [r3, #0x20]
0060e3bc  48 30 93 e5                                      ldr r3, [r3, #0x48]
0060e3c0  90 31 20 e0                                      mla r0, r0, r1, r3
0060e3c4  1e ff 2f e1                                      bx lr



; FUNCTION 0x0061b1ec, declared_size=96, range_size=96, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase8getLightEPKc
; demangled: glitch::collada::CColladaDatabase::getLight(char const*) const
; decoder-mode: arm
0061b1ec  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061b1f0  00 30 90 e5                                      ldr r3, [r0]
0061b1f4  01 70 a0 e1                                      mov r7, r1
0061b1f8  24 30 93 e5                                      ldr r3, [r3, #0x24]
0061b1fc  20 30 93 e5                                      ldr r3, [r3, #0x20]
0061b200  44 60 93 e5                                      ldr r6, [r3, #0x44]
0061b204  00 00 56 e3                                      cmp r6, #0
0061b208  0d 00 00 da                                      ble #0x61b244
0061b20c  48 40 93 e5                                      ldr r4, [r3, #0x48]
0061b210  00 50 a0 e3                                      mov r5, #0
0061b214  02 00 00 ea                                      b #0x61b224
0061b218  06 00 55 e1                                      cmp r5, r6
0061b21c  18 40 84 e2                                      add r4, r4, #0x18
0061b220  07 00 00 0a                                      beq #0x61b244
0061b224  00 00 94 e5                                      ldr r0, [r4]
0061b228  07 10 a0 e1                                      mov r1, r7
0061b22c  3a cc f3 eb                                      bl #0x30e31c
0061b230  00 00 50 e3                                      cmp r0, #0
0061b234  01 50 85 e2                                      add r5, r5, #1
0061b238  f6 ff ff 1a                                      bne #0x61b218
0061b23c  04 00 a0 e1                                      mov r0, r4
0061b240  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0061b244  00 00 a0 e3                                      mov r0, #0
0061b248  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}



; FUNCTION 0x0061b24c, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase14constructLightEPKcPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaDatabase::constructLight(char const*, glitch::collada::CRootSceneNode*) const
; decoder-mode: arm
0061b24c  70 40 2d e9                                      push {r4, r5, r6, lr}
0061b250  02 40 a0 e1                                      mov r4, r2
0061b254  00 50 a0 e1                                      mov r5, r0
0061b258  e3 ff ff eb                                      bl #0x61b1ec
0061b25c  04 20 a0 e1                                      mov r2, r4
0061b260  00 10 a0 e1                                      mov r1, r0
0061b264  05 00 a0 e1                                      mov r0, r5
0061b268  70 40 bd e8                                      pop {r4, r5, r6, lr}
0061b26c  64 f8 ff ea                                      b #0x619404



; FUNCTION 0x00619404, declared_size=76, range_size=76, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase14constructLightEPNS0_6SLightEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaDatabase::constructLight(glitch::collada::SLight*, glitch::collada::CRootSceneNode*) const
; decoder-mode: arm
00619404  70 40 2d e9                                      push {r4, r5, r6, lr}
00619408  00 50 51 e2                                      subs r5, r1, #0
0061940c  02 40 a0 e1                                      mov r4, r2
00619410  0c 00 00 0a                                      beq #0x619448
00619414  04 30 90 e5                                      ldr r3, [r0, #4]
00619418  05 20 a0 e1                                      mov r2, r5
0061941c  00 10 a0 e1                                      mov r1, r0
00619420  03 00 a0 e1                                      mov r0, r3
00619424  00 30 93 e5                                      ldr r3, [r3]
00619428  0f e0 a0 e1                                      mov lr, pc
0061942c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00619430  00 50 a0 e1                                      mov r5, r0
00619434  05 10 a0 e1                                      mov r1, r5
00619438  04 00 a0 e1                                      mov r0, r4
0061943c  80 07 01 eb                                      bl #0x65b244
00619440  05 00 a0 e1                                      mov r0, r5
00619444  70 80 bd e8                                      pop {r4, r5, r6, pc}
00619448  05 00 a0 e1                                      mov r0, r5
0061944c  70 80 bd e8                                      pop {r4, r5, r6, pc}



; FUNCTION 0x00631af8, declared_size=48, range_size=48, mode=arm
; class-group: glitch::collada::CColladaFactory
; alias: _ZN6glitch7collada15CColladaFactory11createLightERKNS0_16CColladaDatabaseEPNS0_6SLightE
; demangled: glitch::collada::CColladaFactory::createLight(glitch::collada::CColladaDatabase const&, glitch::collada::SLight*)
; decoder-mode: arm
00631af8  70 40 2d e9                                      push {r4, r5, r6, lr}
00631afc  5b 0f a0 e3                                      mov r0, #0x16c
00631b00  01 50 a0 e1                                      mov r5, r1
00631b04  00 10 a0 e3                                      mov r1, #0
00631b08  02 60 a0 e1                                      mov r6, r2
00631b0c  a6 09 fc eb                                      bl #0x5341ac
00631b10  05 10 a0 e1                                      mov r1, r5
00631b14  00 40 a0 e1                                      mov r4, r0
00631b18  06 20 a0 e1                                      mov r2, r6
00631b1c  72 4a 00 eb                                      bl #0x6444ec
00631b20  04 00 a0 e1                                      mov r0, r4
00631b24  70 80 bd e8                                      pop {r4, r5, r6, pc}



; FUNCTION 0x006444ec, declared_size=704, range_size=704, mode=arm
; class-group: glitch::collada::CLightSceneNode
; alias: _ZN6glitch7collada15CLightSceneNodeC1ERKNS0_16CColladaDatabaseERNS0_6SLightE
; demangled: glitch::collada::CLightSceneNode::CLightSceneNode(glitch::collada::CColladaDatabase const&, glitch::collada::SLight&)
; decoder-mode: arm
006444ec  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006444f0  a0 62 9f e5                                      ldr r6, [pc, #0x2a0]
006444f4  a0 32 9f e5                                      ldr r3, [pc, #0x2a0]
006444f8  a0 c2 9f e5                                      ldr ip, [pc, #0x2a0]
006444fc  06 60 8f e0                                      add r6, pc, r6
00644500  03 30 96 e7                                      ldr r3, [r6, r3]
00644504  0c c0 96 e7                                      ldr ip, [r6, ip]
00644508  01 e0 a0 e3                                      mov lr, #1
0064450c  24 50 93 e5                                      ldr r5, [r3, #0x24]
00644510  08 c0 8c e2                                      add ip, ip, #8
00644514  64 c1 80 e5                                      str ip, [r0, #0x164]
00644518  00 50 80 e5                                      str r5, [r0]
0064451c  68 e1 80 e5                                      str lr, [r0, #0x168]
00644520  0c c0 15 e5                                      ldr ip, [r5, #-0xc]
00644524  28 80 93 e5                                      ldr r8, [r3, #0x28]
00644528  01 70 a0 e1                                      mov r7, r1
0064452c  02 50 a0 e1                                      mov r5, r2
00644530  04 10 83 e2                                      add r1, r3, #4
00644534  0e 20 a0 e1                                      mov r2, lr
00644538  0c 80 80 e7                                      str r8, [r0, ip]
0064453c  00 40 a0 e1                                      mov r4, r0
00644540  3c ff fc eb                                      bl #0x584238
00644544  00 30 97 e5                                      ldr r3, [r7]
00644548  58 31 84 e5                                      str r3, [r4, #0x158]
0064454c  04 20 97 e5                                      ldr r2, [r7, #4]
00644550  00 00 53 e3                                      cmp r3, #0
00644554  5c 21 84 e5                                      str r2, [r4, #0x15c]
00644558  03 00 00 0a                                      beq #0x64456c
0064455c  04 20 93 e5                                      ldr r2, [r3, #4]
00644560  00 00 52 e3                                      cmp r2, #0
00644564  01 20 82 12                                      addne r2, r2, #1
00644568  04 20 83 15                                      strne r2, [r3, #4]
0064456c  30 22 9f e5                                      ldr r2, [pc, #0x230]
00644570  30 32 9f e5                                      ldr r3, [pc, #0x230]
00644574  60 51 84 e5                                      str r5, [r4, #0x160]
00644578  02 20 96 e7                                      ldr r2, [r6, r2]
0064457c  03 30 96 e7                                      ldr r3, [r6, r3]
00644580  43 14 a0 e3                                      mov r1, #0x43000000
00644584  04 20 82 e2                                      add r2, r2, #4
00644588  12 0e 83 e2                                      add r0, r3, #0x120
0064458c  1c 30 83 e2                                      add r3, r3, #0x1c
00644590  00 30 84 e5                                      str r3, [r4]
00644594  54 21 84 e5                                      str r2, [r4, #0x154]
00644598  64 01 84 e5                                      str r0, [r4, #0x164]
0064459c  10 00 95 e5                                      ldr r0, [r5, #0x10]
006445a0  7f 18 81 e2                                      add r1, r1, #0x7f0000
006445a4  ba 29 f3 eb                                      bl #0x30ec94
006445a8  00 60 a0 e1                                      mov r6, r0
006445ac  0c 00 d5 e5                                      ldrb r0, [r5, #0xc]
006445b0  eb 28 f3 eb                                      bl #0x30e964
006445b4  06 10 a0 e1                                      mov r1, r6
006445b8  eb 29 f3 eb                                      bl #0x30ed6c
006445bc  00 a0 a0 e1                                      mov sl, r0
006445c0  0d 00 d5 e5                                      ldrb r0, [r5, #0xd]
006445c4  e6 28 f3 eb                                      bl #0x30e964
006445c8  06 10 a0 e1                                      mov r1, r6
006445cc  e6 29 f3 eb                                      bl #0x30ed6c
006445d0  00 70 a0 e1                                      mov r7, r0
006445d4  0e 00 d5 e5                                      ldrb r0, [r5, #0xe]
006445d8  e1 28 f3 eb                                      bl #0x30e964
006445dc  06 10 a0 e1                                      mov r1, r6
006445e0  e1 29 f3 eb                                      bl #0x30ed6c
006445e4  00 80 a0 e1                                      mov r8, r0
006445e8  0f 00 d5 e5                                      ldrb r0, [r5, #0xf]
006445ec  dc 28 f3 eb                                      bl #0x30e964
006445f0  06 10 a0 e1                                      mov r1, r6
006445f4  dc 29 f3 eb                                      bl #0x30ed6c
006445f8  34 31 94 e5                                      ldr r3, [r4, #0x134]
006445fc  24 a0 83 e5                                      str sl, [r3, #0x24]
00644600  30 00 83 e5                                      str r0, [r3, #0x30]
00644604  2c 80 83 e5                                      str r8, [r3, #0x2c]
00644608  28 70 83 e5                                      str r7, [r3, #0x28]
0064460c  08 30 95 e5                                      ldr r3, [r5, #8]
00644610  03 00 53 e3                                      cmp r3, #3
00644614  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
00644618  16 00 00 ea                                      b #0x644678
0064461c  02 00 00 ea                                      b #0x64462c
00644620  44 00 00 ea                                      b #0x644738
00644624  23 00 00 ea                                      b #0x6446b8
00644628  16 00 00 ea                                      b #0x644688
0064462c  34 21 94 e5                                      ldr r2, [r4, #0x134]
00644630  03 10 a0 e3                                      mov r1, #3
00644634  00 30 a0 e3                                      mov r3, #0
00644638  b8 15 c2 e1                                      strh r1, [r2, #0x58]
0064463c  34 21 94 e5                                      ldr r2, [r4, #0x134]
00644640  04 a0 82 e5                                      str sl, [r2, #4]
00644644  10 00 82 e5                                      str r0, [r2, #0x10]
00644648  0c 80 82 e5                                      str r8, [r2, #0xc]
0064464c  08 70 82 e5                                      str r7, [r2, #8]
00644650  34 21 94 e5                                      ldr r2, [r4, #0x134]
00644654  14 30 82 e5                                      str r3, [r2, #0x14]
00644658  20 30 82 e5                                      str r3, [r2, #0x20]
0064465c  1c 30 82 e5                                      str r3, [r2, #0x1c]
00644660  18 30 82 e5                                      str r3, [r2, #0x18]
00644664  34 21 94 e5                                      ldr r2, [r4, #0x134]
00644668  24 30 82 e5                                      str r3, [r2, #0x24]
0064466c  30 30 82 e5                                      str r3, [r2, #0x30]
00644670  2c 30 82 e5                                      str r3, [r2, #0x2c]
00644674  28 30 82 e5                                      str r3, [r2, #0x28]
00644678  04 00 a0 e1                                      mov r0, r4
0064467c  65 fd fc eb                                      bl #0x583c18
00644680  04 00 a0 e1                                      mov r0, r4
00644684  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00644688  34 31 94 e5                                      ldr r3, [r4, #0x134]
0064468c  02 10 a0 e3                                      mov r1, #2
00644690  b8 15 c3 e1                                      strh r1, [r3, #0x58]
00644694  34 31 94 e5                                      ldr r3, [r4, #0x134]
00644698  20 00 83 e5                                      str r0, [r3, #0x20]
0064469c  14 a0 83 e5                                      str sl, [r3, #0x14]
006446a0  04 00 a0 e1                                      mov r0, r4
006446a4  1c 80 83 e5                                      str r8, [r3, #0x1c]
006446a8  18 70 83 e5                                      str r7, [r3, #0x18]
006446ac  59 fd fc eb                                      bl #0x583c18
006446b0  04 00 a0 e1                                      mov r0, r4
006446b4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006446b8  34 31 94 e5                                      ldr r3, [r4, #0x134]
006446bc  01 20 a0 e3                                      mov r2, #1
006446c0  b8 25 c3 e1                                      strh r2, [r3, #0x58]
006446c4  34 31 94 e5                                      ldr r3, [r4, #0x134]
006446c8  14 a0 83 e5                                      str sl, [r3, #0x14]
006446cc  20 00 83 e5                                      str r0, [r3, #0x20]
006446d0  1c 80 83 e5                                      str r8, [r3, #0x1c]
006446d4  18 70 83 e5                                      str r7, [r3, #0x18]
006446d8  14 20 95 e5                                      ldr r2, [r5, #0x14]
006446dc  34 31 94 e5                                      ldr r3, [r4, #0x134]
006446e0  04 00 a0 e1                                      mov r0, r4
006446e4  00 20 92 e5                                      ldr r2, [r2]
006446e8  34 20 83 e5                                      str r2, [r3, #0x34]
006446ec  14 20 95 e5                                      ldr r2, [r5, #0x14]
006446f0  34 31 94 e5                                      ldr r3, [r4, #0x134]
006446f4  04 20 92 e5                                      ldr r2, [r2, #4]
006446f8  38 20 83 e5                                      str r2, [r3, #0x38]
006446fc  14 20 95 e5                                      ldr r2, [r5, #0x14]
00644700  34 31 94 e5                                      ldr r3, [r4, #0x134]
00644704  08 20 92 e5                                      ldr r2, [r2, #8]
00644708  3c 20 83 e5                                      str r2, [r3, #0x3c]
0064470c  14 20 95 e5                                      ldr r2, [r5, #0x14]
00644710  34 31 94 e5                                      ldr r3, [r4, #0x134]
00644714  0c 20 92 e5                                      ldr r2, [r2, #0xc]
00644718  48 20 83 e5                                      str r2, [r3, #0x48]
0064471c  14 20 95 e5                                      ldr r2, [r5, #0x14]
00644720  34 31 94 e5                                      ldr r3, [r4, #0x134]
00644724  10 20 92 e5                                      ldr r2, [r2, #0x10]
00644728  4c 20 83 e5                                      str r2, [r3, #0x4c]
0064472c  39 fd fc eb                                      bl #0x583c18
00644730  04 00 a0 e1                                      mov r0, r4
00644734  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00644738  34 31 94 e5                                      ldr r3, [r4, #0x134]
0064473c  00 10 a0 e3                                      mov r1, #0
00644740  b8 15 c3 e1                                      strh r1, [r3, #0x58]
00644744  34 31 94 e5                                      ldr r3, [r4, #0x134]
00644748  14 a0 83 e5                                      str sl, [r3, #0x14]
0064474c  20 00 83 e5                                      str r0, [r3, #0x20]
00644750  1c 80 83 e5                                      str r8, [r3, #0x1c]
00644754  18 70 83 e5                                      str r7, [r3, #0x18]
00644758  14 20 95 e5                                      ldr r2, [r5, #0x14]
0064475c  34 31 94 e5                                      ldr r3, [r4, #0x134]
00644760  04 00 a0 e1                                      mov r0, r4
00644764  00 20 92 e5                                      ldr r2, [r2]
00644768  34 20 83 e5                                      str r2, [r3, #0x34]
0064476c  14 20 95 e5                                      ldr r2, [r5, #0x14]
00644770  34 31 94 e5                                      ldr r3, [r4, #0x134]
00644774  04 20 92 e5                                      ldr r2, [r2, #4]
00644778  38 20 83 e5                                      str r2, [r3, #0x38]
0064477c  14 20 95 e5                                      ldr r2, [r5, #0x14]
00644780  34 31 94 e5                                      ldr r3, [r4, #0x134]
00644784  08 20 92 e5                                      ldr r2, [r2, #8]
00644788  3c 20 83 e5                                      str r2, [r3, #0x3c]
0064478c  21 fd fc eb                                      bl #0x583c18
00644790  04 00 a0 e1                                      mov r0, r4
00644794  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
00644798  94 05 35 00 dc 3a 00 00 44 2b 00 00 b4 17 00 00  .byte 0x94, 0x05, 0x35, 0x00, 0xdc, 0x3a, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0xb4, 0x17, 0x00, 0x00
006447a8  48 10 00 00                                      .byte 0x48, 0x10, 0x00, 0x00
