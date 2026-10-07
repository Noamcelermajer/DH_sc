; Selected exact original ARM function listings for engine-materials evidence.
; Source ELF member: lib/armeabi-v7a/libDungeonHunter2.so
; Full ELF SHA-256: 36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80
; Function body bytes were checked against their file-backed ELF VA slices.

; Package copy: constructImage
; Original listing: glitch_collada_CColladaDatabase-f458595c81f3-001.asm:1016-1041 (1-based inclusive)
; ELF: lib/armeabi-v7a/libDungeonHunter2.so, VA=0x0060fc70, size=80, slice SHA-256=9187fdaa6c44a85b7492a3e2aea2b25a0acf0704e266b2b4593e95e0c86c1ef4
; FUNCTION 0x0060fc70, declared_size=80, range_size=80, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase14constructImageEPNS0_6SImageEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaDatabase::constructImage(glitch::collada::SImage*, glitch::collada::CRootSceneNode*) const
; decoder-mode: arm
0060fc70  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0060fc74  00 60 52 e2                                      subs r6, r2, #0
0060fc78  00 50 a0 e1                                      mov r5, r0
0060fc7c  01 70 a0 e1                                      mov r7, r1
0060fc80  00 60 80 05                                      streq r6, [r0]
0060fc84  0b 00 00 0a                                      beq #0x60fcb8
0060fc88  00 10 a0 e3                                      mov r1, #0
0060fc8c  1c 00 a0 e3                                      mov r0, #0x1c
0060fc90  45 91 fc eb                                      bl #0x5341ac
0060fc94  07 10 a0 e1                                      mov r1, r7
0060fc98  06 20 a0 e1                                      mov r2, r6
0060fc9c  00 40 a0 e1                                      mov r4, r0
0060fca0  4b f9 ff eb                                      bl #0x60e1d4
0060fca4  00 00 54 e3                                      cmp r4, #0
0060fca8  00 40 85 e5                                      str r4, [r5]
0060fcac  04 30 94 15                                      ldrne r3, [r4, #4]
0060fcb0  01 30 83 12                                      addne r3, r3, #1
0060fcb4  04 30 84 15                                      strne r3, [r4, #4]
0060fcb8  05 00 a0 e1                                      mov r0, r5
0060fcbc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}


; Package copy: CImage::CImage
; Original listing: glitch_collada_CImage-b1bd2e56eaab-001.asm:5-55 (1-based inclusive)
; ELF: lib/armeabi-v7a/libDungeonHunter2.so, VA=0x0060e1d4, size=184, slice SHA-256=24ddbff1a27f7bc5b5a421d2a395937f4dc3a40cc144edcea12363ff0af86381
; FUNCTION 0x0060e1d4, declared_size=184, range_size=184, mode=arm
; class-group: glitch::collada::CImage
; alias: _ZN6glitch7collada6CImageC1ERKNS0_16CColladaDatabaseERNS0_6SImageE
; demangled: glitch::collada::CImage::CImage(glitch::collada::CColladaDatabase const&, glitch::collada::SImage&)
; decoder-mode: arm
0060e1d4  10 40 2d e9                                      push {r4, lr}
0060e1d8  00 30 91 e5                                      ldr r3, [r1]
0060e1dc  00 40 a0 e1                                      mov r4, r0
0060e1e0  98 00 9f e5                                      ldr r0, [pc, #0x98]
0060e1e4  0c 30 84 e5                                      str r3, [r4, #0xc]
0060e1e8  04 10 91 e5                                      ldr r1, [r1, #4]
0060e1ec  00 00 53 e3                                      cmp r3, #0
0060e1f0  00 00 8f e0                                      add r0, pc, r0
0060e1f4  10 10 84 e5                                      str r1, [r4, #0x10]
0060e1f8  03 00 00 0a                                      beq #0x60e20c
0060e1fc  04 10 93 e5                                      ldr r1, [r3, #4]
0060e200  00 00 51 e3                                      cmp r1, #0
0060e204  01 10 81 12                                      addne r1, r1, #1
0060e208  04 10 83 15                                      strne r1, [r3, #4]
0060e20c  70 10 9f e5                                      ldr r1, [pc, #0x70]
0060e210  70 30 9f e5                                      ldr r3, [pc, #0x70]
0060e214  18 20 84 e5                                      str r2, [r4, #0x18]
0060e218  01 10 90 e7                                      ldr r1, [r0, r1]
0060e21c  03 30 90 e7                                      ldr r3, [r0, r3]
0060e220  04 10 81 e2                                      add r1, r1, #4
0060e224  08 30 83 e2                                      add r3, r3, #8
0060e228  08 10 84 e5                                      str r1, [r4, #8]
0060e22c  00 30 84 e5                                      str r3, [r4]
0060e230  01 10 a0 e3                                      mov r1, #1
0060e234  00 30 a0 e3                                      mov r3, #0
0060e238  14 30 84 e5                                      str r3, [r4, #0x14]
0060e23c  04 10 84 e5                                      str r1, [r4, #4]
0060e240  00 30 92 e5                                      ldr r3, [r2]
0060e244  08 30 84 e5                                      str r3, [r4, #8]
0060e248  10 30 92 e5                                      ldr r3, [r2, #0x10]
0060e24c  00 00 53 e3                                      cmp r3, #0
0060e250  14 30 84 05                                      streq r3, [r4, #0x14]
0060e254  07 00 00 0a                                      beq #0x60e278
0060e258  04 20 93 e5                                      ldr r2, [r3, #4]
0060e25c  01 20 82 e0                                      add r2, r2, r1
0060e260  04 20 83 e5                                      str r2, [r3, #4]
0060e264  14 00 94 e5                                      ldr r0, [r4, #0x14]
0060e268  14 30 84 e5                                      str r3, [r4, #0x14]
0060e26c  00 00 50 e3                                      cmp r0, #0
0060e270  00 00 00 0a                                      beq #0x60e278
0060e274  c2 3c f4 eb                                      bl #0x31d584
0060e278  04 00 a0 e1                                      mov r0, r4
0060e27c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0060e280  a0 68 38 00 b4 17 00 00 88 3d 00 00              .byte 0xa0, 0x68, 0x38, 0x00, 0xb4, 0x17, 0x00, 0x00, 0x88, 0x3d, 0x00, 0x00


; Package copy: CColladaFactory::createMaterial
; Original listing: glitch_collada_CColladaFactory-db06bc565b1a-001.asm:739-805 (1-based inclusive)
; ELF: lib/armeabi-v7a/libDungeonHunter2.so, VA=0x006323d0, size=244, slice SHA-256=dc3090658f74e4ff70633a92030aab1b739e3b836e2ed704418ca6af4aed0b51
; FUNCTION 0x006323d0, declared_size=244, range_size=244, mode=arm
; class-group: glitch::collada::CColladaFactory
; alias: _ZN6glitch7collada15CColladaFactory14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPNS0_9SMaterialEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaFactory::createMaterial(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, glitch::collada::SMaterial*, glitch::collada::CRootSceneNode*)
; decoder-mode: arm
006323d0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006323d4  20 d0 4d e2                                      sub sp, sp, #0x20
006323d8  44 40 9d e5                                      ldr r4, [sp, #0x44]
006323dc  01 70 a0 e1                                      mov r7, r1
006323e0  02 80 a0 e1                                      mov r8, r2
006323e4  00 00 54 e3                                      cmp r4, #0
006323e8  03 a0 a0 e1                                      mov sl, r3
006323ec  00 50 a0 e1                                      mov r5, r0
006323f0  40 60 9d e5                                      ldr r6, [sp, #0x40]
006323f4  08 00 00 0a                                      beq #0x63241c
006323f8  04 10 a0 e1                                      mov r1, r4
006323fc  00 20 96 e5                                      ldr r2, [r6]
00632400  4c a4 00 eb                                      bl #0x65b538
00632404  00 30 95 e5                                      ldr r3, [r5]
00632408  00 00 53 e3                                      cmp r3, #0
0063240c  03 00 00 0a                                      beq #0x632420
00632410  05 00 a0 e1                                      mov r0, r5
00632414  20 d0 8d e2                                      add sp, sp, #0x20
00632418  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0063241c  00 40 80 e5                                      str r4, [r0]
00632420  0c 20 96 e5                                      ldr r2, [r6, #0xc]
00632424  18 10 96 e5                                      ldr r1, [r6, #0x18]
00632428  08 30 96 e5                                      ldr r3, [r6, #8]
0063242c  01 20 82 e2                                      add r2, r2, #1
00632430  1e 00 8d e8                                      stm sp, {r1, r2, r3, r4}
00632434  1c 90 8d e2                                      add sb, sp, #0x1c
00632438  0a 30 a0 e1                                      mov r3, sl
0063243c  07 10 a0 e1                                      mov r1, r7
00632440  00 c0 97 e5                                      ldr ip, [r7]
00632444  09 00 a0 e1                                      mov r0, sb
00632448  08 20 a0 e1                                      mov r2, r8
0063244c  0f e0 a0 e1                                      mov lr, pc
00632450  1c f0 9c e5                                      ldr pc, [ip, #0x1c]
00632454  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00632458  00 00 53 e3                                      cmp r3, #0
0063245c  15 00 00 0a                                      beq #0x6324b8
00632460  18 70 8d e2                                      add r7, sp, #0x18
00632464  0a 20 a0 e1                                      mov r2, sl
00632468  08 10 a0 e1                                      mov r1, r8
0063246c  07 00 a0 e1                                      mov r0, r7
00632470  09 30 a0 e1                                      mov r3, sb
00632474  00 60 8d e5                                      str r6, [sp]
00632478  04 40 8d e5                                      str r4, [sp, #4]
0063247c  19 fe ff eb                                      bl #0x631ce8
00632480  18 30 9d e5                                      ldr r3, [sp, #0x18]
00632484  20 00 8d e2                                      add r0, sp, #0x20
00632488  14 30 8d e5                                      str r3, [sp, #0x14]
0063248c  00 00 53 e3                                      cmp r3, #0
00632490  00 20 93 15                                      ldrne r2, [r3]
00632494  01 20 82 12                                      addne r2, r2, #1
00632498  00 20 83 15                                      strne r2, [r3]
0063249c  14 30 9d 15                                      ldrne r3, [sp, #0x14]
006324a0  00 20 95 e5                                      ldr r2, [r5]
006324a4  00 30 85 e5                                      str r3, [r5]
006324a8  0c 20 20 e5                                      str r2, [r0, #-0xc]!
006324ac  cd 79 f3 eb                                      bl #0x310be8
006324b0  07 00 a0 e1                                      mov r0, r7
006324b4  cb 79 f3 eb                                      bl #0x310be8
006324b8  09 00 a0 e1                                      mov r0, sb
006324bc  7d 7f f4 eb                                      bl #0x3522b8
006324c0  d2 ff ff ea                                      b #0x632410


; Package copy: constructEffect
; Original listing: glitch_collada_CColladaDatabase-f458595c81f3-001.asm:316-351 (1-based inclusive)
; ELF: lib/armeabi-v7a/libDungeonHunter2.so, VA=0x0060e570, size=116, slice SHA-256=0d5e3824c56a4c9056fd4658a409ff70bbc101b5077f74043248fe00ba6c5680
; FUNCTION 0x0060e570, declared_size=116, range_size=116, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase15constructEffectEPNS_5video12IVideoDriverEPNS0_7SEffectEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaDatabase::constructEffect(glitch::video::IVideoDriver*, glitch::collada::SEffect*, glitch::collada::CRootSceneNode*) const
; decoder-mode: arm
0060e570  30 40 2d e9                                      push {r4, r5, lr}
0060e574  01 e0 a0 e1                                      mov lr, r1
0060e578  04 10 91 e5                                      ldr r1, [r1, #4]
0060e57c  00 40 a0 e1                                      mov r4, r0
0060e580  00 50 53 e2                                      subs r5, r3, #0
0060e584  00 00 91 e5                                      ldr r0, [r1]
0060e588  14 d0 4d e2                                      sub sp, sp, #0x14
0060e58c  02 30 a0 e1                                      mov r3, r2
0060e590  1c c0 90 e5                                      ldr ip, [r0, #0x1c]
0060e594  00 00 95 15                                      ldrne r0, [r5]
0060e598  0d 00 00 0a                                      beq #0x60e5d4
0060e59c  00 20 9e e5                                      ldr r2, [lr]
0060e5a0  00 00 52 e3                                      cmp r2, #0
0060e5a4  20 20 92 15                                      ldrne r2, [r2, #0x20]
0060e5a8  04 00 8d e5                                      str r0, [sp, #4]
0060e5ac  00 50 8d e5                                      str r5, [sp]
0060e5b0  08 20 8d e5                                      str r2, [sp, #8]
0060e5b4  20 20 9d e5                                      ldr r2, [sp, #0x20]
0060e5b8  04 00 a0 e1                                      mov r0, r4
0060e5bc  0c 20 8d e5                                      str r2, [sp, #0xc]
0060e5c0  0e 20 a0 e1                                      mov r2, lr
0060e5c4  3c ff 2f e1                                      blx ip
0060e5c8  04 00 a0 e1                                      mov r0, r4
0060e5cc  14 d0 8d e2                                      add sp, sp, #0x14
0060e5d0  30 80 bd e8                                      pop {r4, r5, pc}
0060e5d4  04 00 9f e5                                      ldr r0, [pc, #4]
0060e5d8  00 00 8f e0                                      add r0, pc, r0
0060e5dc  ee ff ff ea                                      b #0x60e59c
; mapping-symbol data/literal pool
0060e5e0  30 d2 2b 00                                      .byte 0x30, 0xd2, 0x2b, 0x00


; Package copy: SEffectList::SEffectList
; Original listing: glitch_collada_SEffectList-455354988589-001.asm:5-50 (1-based inclusive)
; ELF: lib/armeabi-v7a/libDungeonHunter2.so, VA=0x006319d8, size=164, slice SHA-256=8d99a67a34b516ce7d46844975e5b8f69d3b62ecb3a05ee67a5bfb40314a7496
; FUNCTION 0x006319d8, declared_size=164, range_size=164, mode=arm
; class-group: glitch::collada::SEffectList
; alias: _ZN6glitch7collada11SEffectListC1ERKNS0_16CColladaDatabaseEPNS0_7SEffectE
; demangled: glitch::collada::SEffectList::SEffectList(glitch::collada::CColladaDatabase const&, glitch::collada::SEffect*)
; decoder-mode: arm
006319d8  10 40 2d e9                                      push {r4, lr}
006319dc  00 40 a0 e1                                      mov r4, r0
006319e0  00 00 84 e5                                      str r0, [r4]
006319e4  04 00 84 e5                                      str r0, [r4, #4]
006319e8  00 30 91 e5                                      ldr r3, [r1]
006319ec  04 10 91 e5                                      ldr r1, [r1, #4]
006319f0  10 d0 4d e2                                      sub sp, sp, #0x10
006319f4  00 00 53 e3                                      cmp r3, #0
006319f8  08 10 8d e5                                      str r1, [sp, #8]
006319fc  04 30 8d e5                                      str r3, [sp, #4]
00631a00  03 00 00 0a                                      beq #0x631a14
00631a04  04 10 93 e5                                      ldr r1, [r3, #4]
00631a08  00 00 51 e3                                      cmp r1, #0
00631a0c  01 10 81 12                                      addne r1, r1, #1
00631a10  04 10 83 15                                      strne r1, [r3, #4]
00631a14  14 00 a0 e3                                      mov r0, #0x14
00631a18  0c 20 8d e5                                      str r2, [sp, #0xc]
00631a1c  f4 0a fc eb                                      bl #0x5345f4
00631a20  04 20 9d e5                                      ldr r2, [sp, #4]
00631a24  00 30 a0 e1                                      mov r3, r0
00631a28  08 20 80 e5                                      str r2, [r0, #8]
00631a2c  08 10 9d e5                                      ldr r1, [sp, #8]
00631a30  00 00 52 e3                                      cmp r2, #0
00631a34  0c 10 80 e5                                      str r1, [r0, #0xc]
00631a38  03 00 00 0a                                      beq #0x631a4c
00631a3c  04 10 92 e5                                      ldr r1, [r2, #4]
00631a40  00 00 51 e3                                      cmp r1, #0
00631a44  01 10 81 12                                      addne r1, r1, #1
00631a48  04 10 82 15                                      strne r1, [r2, #4]
00631a4c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00631a50  04 00 8d e2                                      add r0, sp, #4
00631a54  10 20 83 e5                                      str r2, [r3, #0x10]
00631a58  04 20 94 e5                                      ldr r2, [r4, #4]
00631a5c  00 40 83 e5                                      str r4, [r3]
00631a60  04 20 83 e5                                      str r2, [r3, #4]
00631a64  00 30 82 e5                                      str r3, [r2]
00631a68  04 30 84 e5                                      str r3, [r4, #4]
00631a6c  80 9e ff eb                                      bl #0x619474
00631a70  04 00 a0 e1                                      mov r0, r4
00631a74  10 d0 8d e2                                      add sp, sp, #0x10
00631a78  10 80 bd e8                                      pop {r4, pc}

; Package copy: CColladaFactory::createMaterialRenderer(effect overload)
; Original listing: glitch_collada_CColladaFactory-db06bc565b1a-001.asm:5-12 (1-based inclusive)
; ELF: lib/armeabi-v7a/libDungeonHunter2.so, VA=0x003506a4, size=8, slice SHA-256=6dcd5e75586fe6683156c0d559d4827b73bd48d501fa5781a1c6099aacd7c877
; FUNCTION 0x003506a4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CColladaFactory
; alias: _ZN6glitch7collada15CColladaFactory22createMaterialRendererERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPNS0_7SEffectEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaFactory::createMaterialRenderer(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, glitch::collada::SEffect*, glitch::collada::CRootSceneNode*)
; decoder-mode: arm
003506a4  00 00 a0 e3                                      mov r0, #0
003506a8  1e ff 2f e1                                      bx lr


; Package copy: CColladaFactory::getAdditionalEffects
; Original listing: glitch_collada_CColladaFactory-db06bc565b1a-001.asm:27-33 (1-based inclusive)
; ELF: lib/armeabi-v7a/libDungeonHunter2.so, VA=0x0062ff04, size=4, slice SHA-256=379bec29dccd0a93c94826144d7ef6e42fab64ef195a3b8313a16926f66f388f
; FUNCTION 0x0062ff04, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::CColladaFactory
; alias: _ZN6glitch7collada15CColladaFactory20getAdditionalEffectsERKNS0_16CColladaDatabaseEPNS0_7SEffectERNS0_11SEffectListE
; demangled: glitch::collada::CColladaFactory::getAdditionalEffects(glitch::collada::CColladaDatabase const&, glitch::collada::SEffect*, glitch::collada::SEffectList&)
; decoder-mode: arm
0062ff04  1e ff 2f e1                                      bx lr

