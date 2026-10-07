; PACKAGE FUNCTION texture_manager_file_path
; ELF VA 0x005ecba4, range_size=912, SHA-256=a9e7f7832a24494797f70dfa627227c1794bacdc63f1934279211fcc50f55577
; Original assembly source glitch_video_CTextureManager-c45d9c0c5ad5-001.asm lines 3451-3684
; FUNCTION 0x005ecba4, declared_size=912, range_size=912, mode=arm
; class-group: glitch::video::CTextureManager
; alias: _ZN6glitch5video15CTextureManager19loadTextureFromFileEPNS_2io9IReadFileEPKcRNS0_14E_PIXEL_FORMATEb
; demangled: glitch::video::CTextureManager::loadTextureFromFile(glitch::io::IReadFile*, char const*, glitch::video::E_PIXEL_FORMAT&, bool)
; decoder-mode: arm
005ecba4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005ecba8  74 c0 91 e5                                      ldr ip, [r1, #0x74]
005ecbac  3c d0 4d e2                                      sub sp, sp, #0x3c
005ecbb0  00 40 a0 e3                                      mov r4, #0
005ecbb4  01 c0 8c e3                                      orr ip, ip, #1
005ecbb8  74 c0 81 e5                                      str ip, [r1, #0x74]
005ecbbc  00 60 a0 e1                                      mov r6, r0
005ecbc0  30 00 8d e2                                      add r0, sp, #0x30
005ecbc4  03 80 a0 e1                                      mov r8, r3
005ecbc8  01 50 a0 e1                                      mov r5, r1
005ecbcc  34 40 8d e5                                      str r4, [sp, #0x34]
005ecbd0  02 70 a0 e1                                      mov r7, r2
005ecbd4  60 b0 9d e5                                      ldr fp, [sp, #0x60]
005ecbd8  59 ed ff eb                                      bl #0x5e8144
005ecbdc  30 30 9d e5                                      ldr r3, [sp, #0x30]
005ecbe0  04 00 53 e1                                      cmp r3, r4
005ecbe4  81 00 00 0a                                      beq #0x5ecdf0
005ecbe8  03 00 a0 e1                                      mov r0, r3
005ecbec  00 30 93 e5                                      ldr r3, [r3]
005ecbf0  0f e0 a0 e1                                      mov lr, pc
005ecbf4  18 f0 93 e5                                      ldr pc, [r3, #0x18]
005ecbf8  00 a0 50 e2                                      subs sl, r0, #0
005ecbfc  5e 00 00 0a                                      beq #0x5ecd7c
005ecc00  30 30 9d e5                                      ldr r3, [sp, #0x30]
005ecc04  01 20 a0 e3                                      mov r2, #1
005ecc08  0c 10 a0 e3                                      mov r1, #0xc
005ecc0c  0c 10 8d e5                                      str r1, [sp, #0xc]
005ecc10  20 20 8d e5                                      str r2, [sp, #0x20]
005ecc14  26 40 cd e5                                      strb r4, [sp, #0x26]
005ecc18  08 40 8d e5                                      str r4, [sp, #8]
005ecc1c  10 40 8d e5                                      str r4, [sp, #0x10]
005ecc20  14 40 8d e5                                      str r4, [sp, #0x14]
005ecc24  18 20 8d e5                                      str r2, [sp, #0x18]
005ecc28  1c 20 8d e5                                      str r2, [sp, #0x1c]
005ecc2c  24 40 cd e5                                      strb r4, [sp, #0x24]
005ecc30  25 40 cd e5                                      strb r4, [sp, #0x25]
005ecc34  08 40 8d e2                                      add r4, sp, #8
005ecc38  03 00 a0 e1                                      mov r0, r3
005ecc3c  07 10 a0 e1                                      mov r1, r7
005ecc40  00 30 93 e5                                      ldr r3, [r3]
005ecc44  04 20 a0 e1                                      mov r2, r4
005ecc48  0f e0 a0 e1                                      mov lr, pc
005ecc4c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
005ecc50  00 a0 50 e2                                      subs sl, r0, #0
005ecc54  96 00 00 0a                                      beq #0x5eceb4
005ecc58  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005ecc5c  24 a0 dd e5                                      ldrb sl, [sp, #0x24]
005ecc60  00 30 8b e5                                      str r3, [fp]
005ecc64  28 10 95 e5                                      ldr r1, [r5, #0x28]
005ecc68  00 00 5a e3                                      cmp sl, #0
005ecc6c  74 30 95 15                                      ldrne r3, [r5, #0x74]
005ecc70  88 20 91 e5                                      ldr r2, [r1, #0x88]
005ecc74  74 30 95 05                                      ldreq r3, [r5, #0x74]
005ecc78  53 93 e0 17                                      ubfxne sb, r3, #6, #1
005ecc7c  0a 90 a0 01                                      moveq sb, sl
005ecc80  10 00 12 e3                                      tst r2, #0x10
005ecc84  09 20 a0 01                                      moveq r2, sb
005ecc88  01 20 a0 13                                      movne r2, #1
005ecc8c  20 00 13 e3                                      tst r3, #0x20
005ecc90  03 30 a0 13                                      movne r3, #3
005ecc94  24 20 cd e5                                      strb r2, [sp, #0x24]
005ecc98  14 30 8d 15                                      strne r3, [sp, #0x14]
005ecc9c  64 00 00 0a                                      beq #0x5ece34
005ecca0  08 20 a0 e1                                      mov r2, r8
005ecca4  2c 00 8d e2                                      add r0, sp, #0x2c
005ecca8  04 30 a0 e1                                      mov r3, r4
005eccac  51 f6 fe eb                                      bl #0x5aa5f8
005eccb0  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
005eccb4  00 00 53 e3                                      cmp r3, #0
005eccb8  04 20 93 15                                      ldrne r2, [r3, #4]
005eccbc  01 20 82 12                                      addne r2, r2, #1
005eccc0  04 20 83 15                                      strne r2, [r3, #4]
005eccc4  34 00 9d e5                                      ldr r0, [sp, #0x34]
005eccc8  34 30 8d e5                                      str r3, [sp, #0x34]
005ecccc  00 00 50 e3                                      cmp r0, #0
005eccd0  00 00 00 0a                                      beq #0x5eccd8
005eccd4  2a c2 f4 eb                                      bl #0x31d584
005eccd8  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
005eccdc  00 00 50 e3                                      cmp r0, #0
005ecce0  00 00 00 0a                                      beq #0x5ecce8
005ecce4  26 c2 f4 eb                                      bl #0x31d584
005ecce8  34 00 9d e5                                      ldr r0, [sp, #0x34]
005eccec  24 a0 cd e5                                      strb sl, [sp, #0x24]
005eccf0  00 00 50 e3                                      cmp r0, #0
005eccf4  00 00 86 05                                      streq r0, [r6]
005eccf8  42 00 00 0a                                      beq #0x5ece08
005eccfc  01 30 29 e2                                      eor r3, sb, #1
005ecd00  00 10 a0 e3                                      mov r1, #0
005ecd04  01 20 a0 e3                                      mov r2, #1
005ecd08  99 44 00 eb                                      bl #0x5fdf74
005ecd0c  28 80 95 e5                                      ldr r8, [r5, #0x28]
005ecd10  9c 30 98 e5                                      ldr r3, [r8, #0x9c]
005ecd14  02 0a 13 e3                                      tst r3, #0x2000
005ecd18  49 00 00 1a                                      bne #0x5ece44
005ecd1c  30 20 9d e5                                      ldr r2, [sp, #0x30]
005ecd20  04 30 a0 e1                                      mov r3, r4
005ecd24  07 10 a0 e1                                      mov r1, r7
005ecd28  02 00 a0 e1                                      mov r0, r2
005ecd2c  00 c0 92 e5                                      ldr ip, [r2]
005ecd30  34 20 8d e2                                      add r2, sp, #0x34
005ecd34  0f e0 a0 e1                                      mov lr, pc
005ecd38  20 f0 9c e5                                      ldr pc, [ip, #0x20]
005ecd3c  00 40 50 e2                                      subs r4, r0, #0
005ecd40  6e 00 00 0a                                      beq #0x5ecf00
005ecd44  34 00 9d e5                                      ldr r0, [sp, #0x34]
005ecd48  3f 30 d0 e5                                      ldrb r3, [r0, #0x3f]
005ecd4c  08 00 13 e3                                      tst r3, #8
005ecd50  62 00 00 0a                                      beq #0x5ecee0
005ecd54  2c 30 90 e5                                      ldr r3, [r0, #0x2c]
005ecd58  00 00 53 e3                                      cmp r3, #0
005ecd5c  24 00 00 0a                                      beq #0x5ecdf4
005ecd60  74 30 95 e5                                      ldr r3, [r5, #0x74]
005ecd64  01 00 13 e3                                      tst r3, #1
005ecd68  21 00 00 1a                                      bne #0x5ecdf4
005ecd6c  01 10 a0 e3                                      mov r1, #1
005ecd70  49 44 00 eb                                      bl #0x5fde9c
005ecd74  34 00 9d e5                                      ldr r0, [sp, #0x34]
005ecd78  1d 00 00 ea                                      b #0x5ecdf4
005ecd7c  30 30 9d e5                                      ldr r3, [sp, #0x30]
005ecd80  08 90 8d e2                                      add sb, sp, #8
005ecd84  07 20 a0 e1                                      mov r2, r7
005ecd88  03 10 a0 e1                                      mov r1, r3
005ecd8c  09 00 a0 e1                                      mov r0, sb
005ecd90  00 30 93 e5                                      ldr r3, [r3]
005ecd94  0f e0 a0 e1                                      mov lr, pc
005ecd98  14 f0 93 e5                                      ldr pc, [r3, #0x14]
005ecd9c  08 30 9d e5                                      ldr r3, [sp, #8]
005ecda0  00 00 53 e3                                      cmp r3, #0
005ecda4  11 00 00 0a                                      beq #0x5ecdf0
005ecda8  20 30 93 e5                                      ldr r3, [r3, #0x20]
005ecdac  28 40 8d e2                                      add r4, sp, #0x28
005ecdb0  08 20 a0 e1                                      mov r2, r8
005ecdb4  00 30 8b e5                                      str r3, [fp]
005ecdb8  05 10 a0 e1                                      mov r1, r5
005ecdbc  09 30 a0 e1                                      mov r3, sb
005ecdc0  04 00 a0 e1                                      mov r0, r4
005ecdc4  00 a0 8d e5                                      str sl, [sp]
005ecdc8  a4 fd ff eb                                      bl #0x5ec460
005ecdcc  04 10 a0 e1                                      mov r1, r4
005ecdd0  34 00 8d e2                                      add r0, sp, #0x34
005ecdd4  07 60 f6 eb                                      bl #0x384df8
005ecdd8  04 00 a0 e1                                      mov r0, r4
005ecddc  92 a9 f8 eb                                      bl #0x41742c
005ecde0  08 00 9d e5                                      ldr r0, [sp, #8]
005ecde4  00 00 50 e3                                      cmp r0, #0
005ecde8  00 00 00 0a                                      beq #0x5ecdf0
005ecdec  e4 c1 f4 eb                                      bl #0x31d584
005ecdf0  34 00 9d e5                                      ldr r0, [sp, #0x34]
005ecdf4  00 00 50 e3                                      cmp r0, #0
005ecdf8  00 00 86 e5                                      str r0, [r6]
005ecdfc  04 30 90 15                                      ldrne r3, [r0, #4]
005ece00  01 30 83 12                                      addne r3, r3, #1
005ece04  04 30 80 15                                      strne r3, [r0, #4]
005ece08  30 00 9d e5                                      ldr r0, [sp, #0x30]
005ece0c  00 00 50 e3                                      cmp r0, #0
005ece10  00 00 00 0a                                      beq #0x5ece18
005ece14  da c1 f4 eb                                      bl #0x31d584
005ece18  34 00 9d e5                                      ldr r0, [sp, #0x34]
005ece1c  00 00 50 e3                                      cmp r0, #0
005ece20  00 00 00 0a                                      beq #0x5ece28
005ece24  d6 c1 f4 eb                                      bl #0x31d584
005ece28  06 00 a0 e1                                      mov r0, r6
005ece2c  3c d0 8d e2                                      add sp, sp, #0x3c
005ece30  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005ece34  10 00 13 e3                                      tst r3, #0x10
005ece38  01 30 a0 13                                      movne r3, #1
005ece3c  14 30 8d 15                                      strne r3, [sp, #0x14]
005ece40  96 ff ff ea                                      b #0x5ecca0
005ece44  74 20 95 e5                                      ldr r2, [r5, #0x74]
005ece48  02 00 12 e3                                      tst r2, #2
005ece4c  b2 ff ff 0a                                      beq #0x5ecd1c
005ece50  01 20 12 e2                                      ands r2, r2, #1
005ece54  b0 ff ff 1a                                      bne #0x5ecd1c
005ece58  88 a0 98 e5                                      ldr sl, [r8, #0x88]
005ece5c  02 aa 1a e2                                      ands sl, sl, #0x2000
005ece60  05 00 00 0a                                      beq #0x5ece7c
005ece64  00 30 98 e5                                      ldr r3, [r8]
005ece68  08 00 a0 e1                                      mov r0, r8
005ece6c  02 1a a0 e3                                      mov r1, #0x2000
005ece70  0f e0 a0 e1                                      mov lr, pc
005ece74  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
005ece78  01 a0 a0 e3                                      mov sl, #1
005ece7c  34 00 9d e5                                      ldr r0, [sp, #0x34]
005ece80  00 10 a0 e3                                      mov r1, #0
005ece84  04 44 00 eb                                      bl #0x5fde9c
005ece88  88 30 98 e5                                      ldr r3, [r8, #0x88]
005ece8c  d3 36 e0 e7                                      ubfx r3, r3, #0xd, #1
005ece90  03 00 5a e1                                      cmp sl, r3
005ece94  a0 ff ff 0a                                      beq #0x5ecd1c
005ece98  08 00 a0 e1                                      mov r0, r8
005ece9c  0a 20 a0 e1                                      mov r2, sl
005ecea0  00 30 98 e5                                      ldr r3, [r8]
005ecea4  02 1a a0 e3                                      mov r1, #0x2000
005ecea8  0f e0 a0 e1                                      mov lr, pc
005eceac  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
005eceb0  99 ff ff ea                                      b #0x5ecd1c
005eceb4  00 30 97 e5                                      ldr r3, [r7]
005eceb8  07 00 a0 e1                                      mov r0, r7
005ecebc  0f e0 a0 e1                                      mov lr, pc
005ecec0  28 f0 93 e5                                      ldr pc, [r3, #0x28]
005ecec4  60 10 9f e5                                      ldr r1, [pc, #0x60]
005ecec8  00 20 a0 e1                                      mov r2, r0
005ececc  03 00 a0 e3                                      mov r0, #3
005eced0  01 10 8f e0                                      add r1, pc, r1
005eced4  56 78 00 eb                                      bl #0x60b034
005eced8  00 a0 86 e5                                      str sl, [r6]
005ecedc  c9 ff ff ea                                      b #0x5ece08
005ecee0  74 30 95 e5                                      ldr r3, [r5, #0x74]
005ecee4  02 00 13 e3                                      tst r3, #2
005ecee8  c1 ff ff 0a                                      beq #0x5ecdf4
005eceec  01 30 23 e2                                      eor r3, r3, #1
005ecef0  01 10 03 e2                                      and r1, r3, #1
005ecef4  e8 43 00 eb                                      bl #0x5fde9c
005ecef8  34 00 9d e5                                      ldr r0, [sp, #0x34]
005ecefc  bc ff ff ea                                      b #0x5ecdf4
005ecf00  00 30 97 e5                                      ldr r3, [r7]
005ecf04  07 00 a0 e1                                      mov r0, r7
005ecf08  0f e0 a0 e1                                      mov lr, pc
005ecf0c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
005ecf10  18 10 9f e5                                      ldr r1, [pc, #0x18]
005ecf14  00 20 a0 e1                                      mov r2, r0
005ecf18  03 00 a0 e3                                      mov r0, #3
005ecf1c  01 10 8f e0                                      add r1, pc, r1
005ecf20  43 78 00 eb                                      bl #0x60b034
005ecf24  00 40 86 e5                                      str r4, [r6]
005ecf28  b6 ff ff ea                                      b #0x5ece08
; mapping-symbol data/literal pool
005ecf2c  c0 66 2f 00 94 66 2f 00                          .byte 0xc0, 0x66, 0x2f, 0x00, 0x94, 0x66, 0x2f, 0x00

; PACKAGE FUNCTION pvr_texture_data_bridge
; ELF VA 0x0060623c, range_size=184, SHA-256=e5af95a50b3121c0c1f5c10031da8ddce27c5fc599e3ee142618a0a1eec87e76
; Original assembly source glitch_video_CImageLoaderPVR-700fdada5af7-001.asm lines 568-618
; FUNCTION 0x0060623c, declared_size=184, range_size=184, mode=arm
; class-group: glitch::video::CImageLoaderPVR
; alias: _ZNK6glitch5video15CImageLoaderPVR15loadTextureDataEPNS_2io9IReadFileERKN5boost13intrusive_ptrINS0_8ITextureEEERKNS0_12STextureDescE
; demangled: glitch::video::CImageLoaderPVR::loadTextureData(glitch::io::IReadFile*, boost::intrusive_ptr<glitch::video::ITexture> const&, glitch::video::STextureDesc const&) const
; decoder-mode: arm
0060623c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00606240  4c d0 4d e2                                      sub sp, sp, #0x4c
00606244  01 40 a0 e1                                      mov r4, r1
00606248  01 00 a0 e1                                      mov r0, r1
0060624c  02 70 a0 e1                                      mov r7, r2
00606250  0d 10 a0 e1                                      mov r1, sp
00606254  47 20 8d e2                                      add r2, sp, #0x47
00606258  03 60 a0 e1                                      mov r6, r3
0060625c  90 fd ff eb                                      bl #0x6058a4
00606260  84 80 9f e5                                      ldr r8, [pc, #0x84]
00606264  00 00 50 e3                                      cmp r0, #0
00606268  0d 50 a0 e1                                      mov r5, sp
0060626c  08 80 8f e0                                      add r8, pc, r8
00606270  00 40 a0 01                                      moveq r4, r0
00606274  19 00 00 0a                                      beq #0x6062e0
00606278  00 30 94 e5                                      ldr r3, [r4]
0060627c  04 00 a0 e1                                      mov r0, r4
00606280  0f e0 a0 e1                                      mov lr, pc
00606284  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00606288  60 a0 9f e5                                      ldr sl, [pc, #0x60]
0060628c  47 30 dd e5                                      ldrb r3, [sp, #0x47]
00606290  34 00 40 e2                                      sub r0, r0, #0x34
00606294  0a a0 98 e7                                      ldr sl, [r8, sl]
00606298  00 00 53 e3                                      cmp r3, #0
0060629c  08 30 a0 13                                      movne r3, #8
006062a0  34 80 8d e2                                      add r8, sp, #0x34
006062a4  00 c0 63 e0                                      rsb ip, r3, r0
006062a8  08 a0 8a e2                                      add sl, sl, #8
006062ac  04 00 a0 e1                                      mov r0, r4
006062b0  06 20 a0 e1                                      mov r2, r6
006062b4  07 30 a0 e1                                      mov r3, r7
006062b8  08 10 a0 e1                                      mov r1, r8
006062bc  38 d0 8d e5                                      str sp, [sp, #0x38]
006062c0  40 c0 8d e5                                      str ip, [sp, #0x40]
006062c4  34 a0 8d e5                                      str sl, [sp, #0x34]
006062c8  3c 60 8d e5                                      str r6, [sp, #0x3c]
006062cc  3f 08 00 eb                                      bl #0x6083d0
006062d0  00 40 a0 e1                                      mov r4, r0
006062d4  08 00 a0 e1                                      mov r0, r8
006062d8  34 a0 8d e5                                      str sl, [sp, #0x34]
006062dc  da 04 00 eb                                      bl #0x60764c
006062e0  04 00 a0 e1                                      mov r0, r4
006062e4  4c d0 8d e2                                      add sp, sp, #0x4c
006062e8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
006062ec  24 e8 38 00 1c 2c 00 00                          .byte 0x24, 0xe8, 0x38, 0x00, 0x1c, 0x2c, 0x00, 0x00

; PACKAGE FUNCTION generic_image_loader_data
; ELF VA 0x006083d0, range_size=1152, SHA-256=b859a6cdf1dce67aabf17db5f04e4bd62a7c02c458872f6bfdc13db2930867a3
; Original assembly source glitch_video_IImageLoader-c3d38a88a2be-001.asm lines 47-334
; FUNCTION 0x006083d0, declared_size=1152, range_size=1152, mode=arm
; class-group: glitch::video::IImageLoader
; alias: _ZN6glitch5video12IImageLoader8loadDataEPNS_2io9IReadFileERKNS1_9IDataInfoERKNS0_12STextureDescERKN5boost13intrusive_ptrINS0_8ITextureEEE
; demangled: glitch::video::IImageLoader::loadData(glitch::io::IReadFile*, glitch::video::IImageLoader::IDataInfo const&, glitch::video::STextureDesc const&, boost::intrusive_ptr<glitch::video::ITexture> const&)
; decoder-mode: arm
006083d0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006083d4  01 40 a0 e1                                      mov r4, r1
006083d8  8c d0 4d e2                                      sub sp, sp, #0x8c
006083dc  00 10 a0 e3                                      mov r1, #0
006083e0  85 10 cd e5                                      strb r1, [sp, #0x85]
006083e4  78 10 8d e5                                      str r1, [sp, #0x78]
006083e8  7c 10 8d e5                                      str r1, [sp, #0x7c]
006083ec  80 10 8d e5                                      str r1, [sp, #0x80]
006083f0  84 10 cd e5                                      strb r1, [sp, #0x84]
006083f4  00 90 a0 e1                                      mov sb, r0
006083f8  00 10 94 e5                                      ldr r1, [r4]
006083fc  04 00 a0 e1                                      mov r0, r4
00608400  02 70 a0 e1                                      mov r7, r2
00608404  03 60 a0 e1                                      mov r6, r3
00608408  0f e0 a0 e1                                      mov lr, pc
0060840c  10 f0 91 e5                                      ldr pc, [r1, #0x10]
00608410  18 54 9f e5                                      ldr r5, [pc, #0x418]
00608414  00 00 50 e3                                      cmp r0, #0
00608418  05 50 8f e0                                      add r5, pc, r5
0060841c  7a 00 00 0a                                      beq #0x60860c
00608420  0c 84 9f e5                                      ldr r8, [pc, #0x40c]
00608424  00 30 a0 e3                                      mov r3, #0
00608428  85 30 cd e5                                      strb r3, [sp, #0x85]
0060842c  00 30 94 e5                                      ldr r3, [r4]
00608430  00 10 a0 e3                                      mov r1, #0
00608434  04 00 a0 e1                                      mov r0, r4
00608438  0f e0 a0 e1                                      mov lr, pc
0060843c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00608440  00 30 96 e5                                      ldr r3, [r6]
00608444  00 a0 a0 e1                                      mov sl, r0
00608448  08 20 95 e7                                      ldr r2, [r5, r8]
0060844c  38 00 93 e5                                      ldr r0, [r3, #0x38]
00608450  04 c0 97 e5                                      ldr ip, [r7, #4]
00608454  28 10 a0 e3                                      mov r1, #0x28
00608458  50 02 e5 e7                                      ubfx r0, r0, #4, #6
0060845c  91 2c 2c e0                                      mla ip, r1, ip, r2
00608460  91 20 22 e0                                      mla r2, r1, r0, r2
00608464  16 c0 dc e5                                      ldrb ip, [ip, #0x16]
00608468  16 20 d2 e5                                      ldrb r2, [r2, #0x16]
0060846c  0c 00 52 e1                                      cmp r2, ip
00608470  77 00 00 0a                                      beq #0x608654
00608474  00 30 94 e5                                      ldr r3, [r4]
00608478  04 00 a0 e1                                      mov r0, r4
0060847c  0f e0 a0 e1                                      mov lr, pc
00608480  08 f0 93 e5                                      ldr pc, [r3, #8]
00608484  00 10 a0 e3                                      mov r1, #0
00608488  46 af fc eb                                      bl #0x5341a8
0060848c  00 b0 a0 e1                                      mov fp, r0
00608490  80 00 9d e5                                      ldr r0, [sp, #0x80]
00608494  80 b0 8d e5                                      str fp, [sp, #0x80]
00608498  00 00 50 e3                                      cmp r0, #0
0060849c  01 00 00 0a                                      beq #0x6084a8
006084a0  04 17 f4 eb                                      bl #0x30e0b8
006084a4  80 b0 9d e5                                      ldr fp, [sp, #0x80]
006084a8  00 00 5b e3                                      cmp fp, #0
006084ac  cb 00 00 0a                                      beq #0x6087e0
006084b0  01 30 a0 e3                                      mov r3, #1
006084b4  00 20 96 e5                                      ldr r2, [r6]
006084b8  00 80 a0 e3                                      mov r8, #0
006084bc  84 30 cd e5                                      strb r3, [sp, #0x84]
006084c0  3e 20 d2 e5                                      ldrb r2, [r2, #0x3e]
006084c4  01 00 52 e3                                      cmp r2, #1
006084c8  00 50 a0 83                                      movhi r5, #0
006084cc  1c 50 d7 95                                      ldrbls r5, [r7, #0x1c]
006084d0  00 00 53 e3                                      cmp r3, #0
006084d4  02 00 00 0a                                      beq #0x6084e4
006084d8  80 30 9d e5                                      ldr r3, [sp, #0x80]
006084dc  00 00 53 e3                                      cmp r3, #0
006084e0  56 00 00 0a                                      beq #0x608640
006084e4  85 30 dd e5                                      ldrb r3, [sp, #0x85]
006084e8  00 00 53 e3                                      cmp r3, #0
006084ec  04 c0 a0 03                                      moveq ip, #4
006084f0  52 00 00 1a                                      bne #0x608640
006084f4  00 20 a0 e3                                      mov r2, #0
006084f8  78 a0 8d e2                                      add sl, sp, #0x78
006084fc  0a 00 a0 e1                                      mov r0, sl
00608500  06 10 a0 e1                                      mov r1, r6
00608504  02 30 a0 e1                                      mov r3, r2
00608508  00 c0 8d e5                                      str ip, [sp]
0060850c  c4 fc ff eb                                      bl #0x607824
00608510  7c b0 9d e5                                      ldr fp, [sp, #0x7c]
00608514  00 00 5b e3                                      cmp fp, #0
00608518  ba 00 00 0a                                      beq #0x608808
0060851c  00 30 96 e5                                      ldr r3, [r6]
00608520  3f 30 d3 e5                                      ldrb r3, [r3, #0x3f]
00608524  40 00 13 e3                                      tst r3, #0x40
00608528  46 00 00 0a                                      beq #0x608648
0060852c  00 00 55 e3                                      cmp r5, #0
00608530  67 00 00 0a                                      beq #0x6086d4
00608534  00 30 99 e5                                      ldr r3, [sb]
00608538  09 00 a0 e1                                      mov r0, sb
0060853c  0f e0 a0 e1                                      mov lr, pc
00608540  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00608544  ec 12 9f e5                                      ldr r1, [pc, #0x2ec]
00608548  00 20 a0 e1                                      mov r2, r0
0060854c  02 00 a0 e3                                      mov r0, #2
00608550  01 10 8f e0                                      add r1, pc, r1
00608554  b6 0a 00 eb                                      bl #0x60b034
00608558  0c 50 8d e2                                      add r5, sp, #0xc
0060855c  00 30 a0 e3                                      mov r3, #0
00608560  05 00 a0 e1                                      mov r0, r5
00608564  2e 30 cd e5                                      strb r3, [sp, #0x2e]
00608568  0c 30 8d e5                                      str r3, [sp, #0xc]
0060856c  10 30 8d e5                                      str r3, [sp, #0x10]
00608570  14 30 8d e5                                      str r3, [sp, #0x14]
00608574  18 30 8d e5                                      str r3, [sp, #0x18]
00608578  1c 30 8d e5                                      str r3, [sp, #0x1c]
0060857c  20 30 8d e5                                      str r3, [sp, #0x20]
00608580  24 30 8d e5                                      str r3, [sp, #0x24]
00608584  28 30 8d e5                                      str r3, [sp, #0x28]
00608588  2c 30 cd e5                                      strb r3, [sp, #0x2c]
0060858c  2d 30 cd e5                                      strb r3, [sp, #0x2d]
00608590  2f fc ff eb                                      bl #0x607654
00608594  a0 32 9f e5                                      ldr r3, [pc, #0x2a0]
00608598  04 20 a0 e1                                      mov r2, r4
0060859c  09 10 a0 e1                                      mov r1, sb
006085a0  03 30 8f e0                                      add r3, pc, r3
006085a4  50 40 83 e2                                      add r4, r3, #0x50
006085a8  05 00 a0 e1                                      mov r0, r5
006085ac  07 30 a0 e1                                      mov r3, r7
006085b0  00 a0 8d e5                                      str sl, [sp]
006085b4  0c 40 8d e5                                      str r4, [sp, #0xc]
006085b8  29 fd ff eb                                      bl #0x607a64
006085bc  00 b0 a0 e1                                      mov fp, r0
006085c0  05 00 a0 e1                                      mov r0, r5
006085c4  0c 40 8d e5                                      str r4, [sp, #0xc]
006085c8  4b fc ff eb                                      bl #0x6076fc
006085cc  80 00 9d e5                                      ldr r0, [sp, #0x80]
006085d0  00 00 50 e3                                      cmp r0, #0
006085d4  00 00 00 0a                                      beq #0x6085dc
006085d8  b6 16 f4 eb                                      bl #0x30e0b8
006085dc  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
006085e0  00 00 53 e3                                      cmp r3, #0
006085e4  01 00 00 0a                                      beq #0x6085f0
006085e8  78 00 9d e5                                      ldr r0, [sp, #0x78]
006085ec  86 d5 ff eb                                      bl #0x5fdc0c
006085f0  78 00 9d e5                                      ldr r0, [sp, #0x78]
006085f4  00 00 50 e3                                      cmp r0, #0
006085f8  00 00 00 0a                                      beq #0x608600
006085fc  e0 53 f4 eb                                      bl #0x31d584
00608600  0b 00 a0 e1                                      mov r0, fp
00608604  8c d0 8d e2                                      add sp, sp, #0x8c
00608608  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0060860c  04 30 97 e5                                      ldr r3, [r7, #4]
00608610  1c 82 9f e5                                      ldr r8, [pc, #0x21c]
00608614  28 20 a0 e3                                      mov r2, #0x28
00608618  92 03 03 e0                                      mul r3, r2, r3
0060861c  08 20 95 e7                                      ldr r2, [r5, r8]
00608620  03 10 92 e7                                      ldr r1, [r2, r3]
00608624  03 30 82 e0                                      add r3, r2, r3
00608628  08 00 11 e3                                      tst r1, #8
0060862c  7c ff ff 1a                                      bne #0x608424
00608630  14 30 d3 e5                                      ldrb r3, [r3, #0x14]
00608634  00 30 53 e2                                      subs r3, r3, #0
00608638  01 30 a0 13                                      movne r3, #1
0060863c  79 ff ff ea                                      b #0x608428
00608640  05 c0 a0 e3                                      mov ip, #5
00608644  aa ff ff ea                                      b #0x6084f4
00608648  00 00 55 e3                                      cmp r5, #0
0060864c  c1 ff ff 0a                                      beq #0x608558
00608650  b7 ff ff ea                                      b #0x608534
00608654  00 00 5a e3                                      cmp sl, #0
00608658  5b 00 00 1a                                      bne #0x6087cc
0060865c  00 30 94 e5                                      ldr r3, [r4]
00608660  04 00 a0 e1                                      mov r0, r4
00608664  0f e0 a0 e1                                      mov lr, pc
00608668  08 f0 93 e5                                      ldr pc, [r3, #8]
0060866c  00 20 96 e5                                      ldr r2, [r6]
00608670  38 30 92 e5                                      ldr r3, [r2, #0x38]
00608674  3f 10 d2 e5                                      ldrb r1, [r2, #0x3f]
00608678  03 e0 03 e2                                      and lr, r3, #3
0060867c  02 00 5e e3                                      cmp lr, #2
00608680  05 e0 a0 03                                      moveq lr, #5
00608684  00 e0 a0 13                                      movne lr, #0
00608688  02 00 11 e3                                      tst r1, #2
0060868c  30 c0 92 15                                      ldrne ip, [r2, #0x30]
00608690  30 10 92 05                                      ldreq r1, [r2, #0x30]
00608694  3e c0 d2 05                                      ldrbeq ip, [r2, #0x3e]
00608698  00 10 9c 15                                      ldrne r1, [ip]
0060869c  04 80 9c 15                                      ldrne r8, [ip, #4]
006086a0  0c 11 91 07                                      ldreq r1, [r1, ip, lsl #2]
006086a4  53 32 e5 e7                                      ubfx r3, r3, #4, #6
006086a8  08 10 61 10                                      rsbne r1, r1, r8
006086ac  7f 80 81 e2                                      add r8, r1, #0x7f
006086b0  7f 80 c8 e3                                      bic r8, r8, #0x7f
006086b4  98 1e 28 e0                                      mla r8, r8, lr, r1
006086b8  04 10 97 e5                                      ldr r1, [r7, #4]
006086bc  08 80 50 e0                                      subs r8, r0, r8
006086c0  01 80 a0 13                                      movne r8, #1
006086c4  03 30 51 e0                                      subs r3, r1, r3
006086c8  01 30 a0 13                                      movne r3, #1
006086cc  84 30 cd e5                                      strb r3, [sp, #0x84]
006086d0  7a ff ff ea                                      b #0x6084c0
006086d4  00 00 58 e3                                      cmp r8, #0
006086d8  1d 00 00 0a                                      beq #0x608754
006086dc  5c 61 9f e5                                      ldr r6, [pc, #0x15c]
006086e0  54 80 8d e2                                      add r8, sp, #0x54
006086e4  08 00 a0 e1                                      mov r0, r8
006086e8  06 60 8f e0                                      add r6, pc, r6
006086ec  76 50 cd e5                                      strb r5, [sp, #0x76]
006086f0  54 50 8d e5                                      str r5, [sp, #0x54]
006086f4  58 50 8d e5                                      str r5, [sp, #0x58]
006086f8  5c 50 8d e5                                      str r5, [sp, #0x5c]
006086fc  60 50 8d e5                                      str r5, [sp, #0x60]
00608700  64 50 8d e5                                      str r5, [sp, #0x64]
00608704  68 50 8d e5                                      str r5, [sp, #0x68]
00608708  6c 50 8d e5                                      str r5, [sp, #0x6c]
0060870c  70 50 8d e5                                      str r5, [sp, #0x70]
00608710  74 50 cd e5                                      strb r5, [sp, #0x74]
00608714  75 50 cd e5                                      strb r5, [sp, #0x75]
00608718  cd fb ff eb                                      bl #0x607654
0060871c  20 c0 86 e2                                      add ip, r6, #0x20
00608720  09 10 a0 e1                                      mov r1, sb
00608724  04 20 a0 e1                                      mov r2, r4
00608728  07 30 a0 e1                                      mov r3, r7
0060872c  08 00 a0 e1                                      mov r0, r8
00608730  54 c0 8d e5                                      str ip, [sp, #0x54]
00608734  00 a0 8d e5                                      str sl, [sp]
00608738  c9 fc ff eb                                      bl #0x607a64
0060873c  08 60 86 e2                                      add r6, r6, #8
00608740  00 b0 a0 e1                                      mov fp, r0
00608744  08 00 a0 e1                                      mov r0, r8
00608748  54 60 8d e5                                      str r6, [sp, #0x54]
0060874c  ea fb ff eb                                      bl #0x6076fc
00608750  9d ff ff ea                                      b #0x6085cc
00608754  e8 50 9f e5                                      ldr r5, [pc, #0xe8]
00608758  30 60 8d e2                                      add r6, sp, #0x30
0060875c  06 00 a0 e1                                      mov r0, r6
00608760  05 50 8f e0                                      add r5, pc, r5
00608764  52 80 cd e5                                      strb r8, [sp, #0x52]
00608768  30 80 8d e5                                      str r8, [sp, #0x30]
0060876c  34 80 8d e5                                      str r8, [sp, #0x34]
00608770  38 80 8d e5                                      str r8, [sp, #0x38]
00608774  3c 80 8d e5                                      str r8, [sp, #0x3c]
00608778  40 80 8d e5                                      str r8, [sp, #0x40]
0060877c  44 80 8d e5                                      str r8, [sp, #0x44]
00608780  48 80 8d e5                                      str r8, [sp, #0x48]
00608784  4c 80 8d e5                                      str r8, [sp, #0x4c]
00608788  50 80 cd e5                                      strb r8, [sp, #0x50]
0060878c  51 80 cd e5                                      strb r8, [sp, #0x51]
00608790  af fb ff eb                                      bl #0x607654
00608794  38 c0 85 e2                                      add ip, r5, #0x38
00608798  09 10 a0 e1                                      mov r1, sb
0060879c  04 20 a0 e1                                      mov r2, r4
006087a0  07 30 a0 e1                                      mov r3, r7
006087a4  06 00 a0 e1                                      mov r0, r6
006087a8  30 c0 8d e5                                      str ip, [sp, #0x30]
006087ac  00 a0 8d e5                                      str sl, [sp]
006087b0  ab fc ff eb                                      bl #0x607a64
006087b4  08 50 85 e2                                      add r5, r5, #8
006087b8  00 b0 a0 e1                                      mov fp, r0
006087bc  06 00 a0 e1                                      mov r0, r6
006087c0  30 50 8d e5                                      str r5, [sp, #0x30]
006087c4  cc fb ff eb                                      bl #0x6076fc
006087c8  7f ff ff ea                                      b #0x6085cc
006087cc  20 10 93 e5                                      ldr r1, [r3, #0x20]
006087d0  c5 94 ff eb                                      bl #0x5edaec
006087d4  00 00 5a e1                                      cmp sl, r0
006087d8  25 ff ff 1a                                      bne #0x608474
006087dc  9e ff ff ea                                      b #0x60865c
006087e0  09 00 a0 e1                                      mov r0, sb
006087e4  00 30 99 e5                                      ldr r3, [sb]
006087e8  0f e0 a0 e1                                      mov lr, pc
006087ec  28 f0 93 e5                                      ldr pc, [r3, #0x28]
006087f0  50 10 9f e5                                      ldr r1, [pc, #0x50]
006087f4  00 20 a0 e1                                      mov r2, r0
006087f8  03 00 a0 e3                                      mov r0, #3
006087fc  01 10 8f e0                                      add r1, pc, r1
00608800  0b 0a 00 eb                                      bl #0x60b034
00608804  70 ff ff ea                                      b #0x6085cc
00608808  09 00 a0 e1                                      mov r0, sb
0060880c  00 30 99 e5                                      ldr r3, [sb]
00608810  0f e0 a0 e1                                      mov lr, pc
00608814  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00608818  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
0060881c  00 20 a0 e1                                      mov r2, r0
00608820  03 00 a0 e3                                      mov r0, #3
00608824  01 10 8f e0                                      add r1, pc, r1
00608828  01 0a 00 eb                                      bl #0x60b034
0060882c  66 ff ff ea                                      b #0x6085cc
; mapping-symbol data/literal pool
00608830  78 c6 38 00 34 1f 00 00 f0 c6 2d 00 68 ef 34 00  .byte 0x78, 0xc6, 0x38, 0x00, 0x34, 0x1f, 0x00, 0x00, 0xf0, 0xc6, 0x2d, 0x00, 0x68, 0xef, 0x34, 0x00
00608840  20 ee 34 00 a8 ed 34 00 0c c4 2d 00 04 c4 2d 00  .byte 0x20, 0xee, 0x34, 0x00, 0xa8, 0xed, 0x34, 0x00, 0x0c, 0xc4, 0x2d, 0x00, 0x04, 0xc4, 0x2d, 0x00

; PACKAGE FUNCTION driver_texture_factory
; ELF VA 0x005aa5f8, range_size=680, SHA-256=f851d23b2102d8a619fc358a889fefe0ad601cf10fb88af71265921ae1748160
; Original assembly source glitch_video_IVideoDriver-128257112762-001.asm lines 1340-1510
; FUNCTION 0x005aa5f8, declared_size=680, range_size=680, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver13createTextureEPKcRKNS0_12STextureDescE
; demangled: glitch::video::IVideoDriver::createTexture(char const*, glitch::video::STextureDesc const&)
; decoder-mode: arm
005aa5f8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005aa5fc  00 80 93 e5                                      ldr r8, [r3]
005aa600  01 50 a0 e1                                      mov r5, r1
005aa604  9c 10 91 e5                                      ldr r1, [r1, #0x9c]
005aa608  06 c0 88 e2                                      add ip, r8, #6
005aa60c  1f c0 0c e2                                      and ip, ip, #0x1f
005aa610  01 e0 a0 e3                                      mov lr, #1
005aa614  1e cc 11 e0                                      ands ip, r1, lr, lsl ip
005aa618  5c 72 9f e5                                      ldr r7, [pc, #0x25c]
005aa61c  24 d0 4d e2                                      sub sp, sp, #0x24
005aa620  00 40 a0 e1                                      mov r4, r0
005aa624  07 70 8f e0                                      add r7, pc, r7
005aa628  10 00 00 1a                                      bne #0x5aa670
005aa62c  78 30 ff e6                                      uxth r3, r8
005aa630  ff 00 53 e3                                      cmp r3, #0xff
005aa634  1f 00 00 0a                                      beq #0x5aa6b8
005aa638  0c 00 a0 e1                                      mov r0, ip
005aa63c  10 20 8d e5                                      str r2, [sp, #0x10]
005aa640  08 4d 01 eb                                      bl #0x5fda68
005aa644  10 20 9d e5                                      ldr r2, [sp, #0x10]
005aa648  08 31 90 e7                                      ldr r3, [r0, r8, lsl #2]
005aa64c  2c 12 9f e5                                      ldr r1, [pc, #0x22c]
005aa650  03 00 a0 e3                                      mov r0, #3
005aa654  01 10 8f e0                                      add r1, pc, r1
005aa658  75 82 01 eb                                      bl #0x60b034
005aa65c  00 30 a0 e3                                      mov r3, #0
005aa660  00 30 84 e5                                      str r3, [r4]
005aa664  04 00 a0 e1                                      mov r0, r4
005aa668  24 d0 8d e2                                      add sp, sp, #0x24
005aa66c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005aa670  10 00 93 e5                                      ldr r0, [r3, #0x10]
005aa674  00 00 50 e3                                      cmp r0, #0
005aa678  11 00 00 0a                                      beq #0x5aa6c4
005aa67c  14 60 93 e5                                      ldr r6, [r3, #0x14]
005aa680  00 00 56 e3                                      cmp r6, #0
005aa684  18 a0 93 05                                      ldreq sl, [r3, #0x18]
005aa688  0f 00 00 0a                                      beq #0x5aa6cc
005aa68c  18 a0 93 e5                                      ldr sl, [r3, #0x18]
005aa690  00 00 5a e3                                      cmp sl, #0
005aa694  0c 00 00 0a                                      beq #0x5aa6cc
005aa698  10 00 11 e3                                      tst r1, #0x10
005aa69c  13 00 00 1a                                      bne #0x5aa6f0
005aa6a0  06 00 50 e1                                      cmp r0, r6
005aa6a4  6f 00 00 0a                                      beq #0x5aa868
005aa6a8  d4 11 9f e5                                      ldr r1, [pc, #0x1d4]
005aa6ac  00 30 a0 e1                                      mov r3, r0
005aa6b0  01 10 8f e0                                      add r1, pc, r1
005aa6b4  07 00 00 ea                                      b #0x5aa6d8
005aa6b8  c8 31 9f e5                                      ldr r3, [pc, #0x1c8]
005aa6bc  03 30 8f e0                                      add r3, pc, r3
005aa6c0  e1 ff ff ea                                      b #0x5aa64c
005aa6c4  18 a0 93 e5                                      ldr sl, [r3, #0x18]
005aa6c8  14 60 93 e5                                      ldr r6, [r3, #0x14]
005aa6cc  b8 11 9f e5                                      ldr r1, [pc, #0x1b8]
005aa6d0  00 30 a0 e1                                      mov r3, r0
005aa6d4  01 10 8f e0                                      add r1, pc, r1
005aa6d8  03 00 a0 e3                                      mov r0, #3
005aa6dc  40 04 8d e8                                      stm sp, {r6, sl}
005aa6e0  53 82 01 eb                                      bl #0x60b034
005aa6e4  00 30 a0 e3                                      mov r3, #0
005aa6e8  00 30 84 e5                                      str r3, [r4]
005aa6ec  dc ff ff ea                                      b #0x5aa664
005aa6f0  03 00 58 e3                                      cmp r8, #3
005aa6f4  10 00 00 0a                                      beq #0x5aa73c
005aa6f8  20 00 11 e3                                      tst r1, #0x20
005aa6fc  0e 00 00 1a                                      bne #0x5aa73c
005aa700  01 10 40 e2                                      sub r1, r0, #1
005aa704  00 00 11 e1                                      tst r1, r0
005aa708  03 00 00 0a                                      beq #0x5aa71c
005aa70c  7c 11 9f e5                                      ldr r1, [pc, #0x17c]
005aa710  00 30 a0 e1                                      mov r3, r0
005aa714  01 10 8f e0                                      add r1, pc, r1
005aa718  ee ff ff ea                                      b #0x5aa6d8
005aa71c  01 10 46 e2                                      sub r1, r6, #1
005aa720  06 00 11 e1                                      tst r1, r6
005aa724  f8 ff ff 1a                                      bne #0x5aa70c
005aa728  01 00 58 e3                                      cmp r8, #1
005aa72c  02 00 00 1a                                      bne #0x5aa73c
005aa730  01 10 4a e2                                      sub r1, sl, #1
005aa734  0a 00 11 e1                                      tst r1, sl
005aa738  f3 ff ff 1a                                      bne #0x5aa70c
005aa73c  50 91 9f e5                                      ldr sb, [pc, #0x150]
005aa740  04 80 93 e5                                      ldr r8, [r3, #4]
005aa744  28 b0 a0 e3                                      mov fp, #0x28
005aa748  09 10 97 e7                                      ldr r1, [r7, sb]
005aa74c  10 20 8d e5                                      str r2, [sp, #0x10]
005aa750  14 30 8d e5                                      str r3, [sp, #0x14]
005aa754  9b 18 2b e0                                      mla fp, fp, r8, r1
005aa758  1c 80 8d e5                                      str r8, [sp, #0x1c]
005aa75c  24 c0 db e5                                      ldrb ip, [fp, #0x24]
005aa760  0c 10 a0 e1                                      mov r1, ip
005aa764  18 c0 8d e5                                      str ip, [sp, #0x18]
005aa768  ef 90 f5 eb                                      bl #0x30eb2c
005aa76c  00 00 51 e3                                      cmp r1, #0
005aa770  10 20 9d e5                                      ldr r2, [sp, #0x10]
005aa774  14 30 9d e5                                      ldr r3, [sp, #0x14]
005aa778  14 00 00 0a                                      beq #0x5aa7d0
005aa77c  78 10 ff e6                                      uxth r1, r8
005aa780  27 00 51 e3                                      cmp r1, #0x27
005aa784  27 00 00 1a                                      bne #0x5aa828
005aa788  08 31 9f e5                                      ldr r3, [pc, #0x108]
005aa78c  03 30 8f e0                                      add r3, pc, r3
005aa790  09 10 97 e7                                      ldr r1, [r7, sb]
005aa794  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
005aa798  28 00 a0 e3                                      mov r0, #0x28
005aa79c  18 50 9d e5                                      ldr r5, [sp, #0x18]
005aa7a0  90 1c 20 e0                                      mla r0, r0, ip, r1
005aa7a4  f0 10 9f e5                                      ldr r1, [pc, #0xf0]
005aa7a8  26 c0 d0 e5                                      ldrb ip, [r0, #0x26]
005aa7ac  25 e0 d0 e5                                      ldrb lr, [r0, #0x25]
005aa7b0  01 10 8f e0                                      add r1, pc, r1
005aa7b4  03 00 a0 e3                                      mov r0, #3
005aa7b8  20 40 8d e8                                      stm sp, {r5, lr}
005aa7bc  08 c0 8d e5                                      str ip, [sp, #8]
005aa7c0  1b 82 01 eb                                      bl #0x60b034
005aa7c4  00 30 a0 e3                                      mov r3, #0
005aa7c8  00 30 84 e5                                      str r3, [r4]
005aa7cc  a4 ff ff ea                                      b #0x5aa664
005aa7d0  06 00 a0 e1                                      mov r0, r6
005aa7d4  25 10 db e5                                      ldrb r1, [fp, #0x25]
005aa7d8  10 20 8d e5                                      str r2, [sp, #0x10]
005aa7dc  14 30 8d e5                                      str r3, [sp, #0x14]
005aa7e0  d1 90 f5 eb                                      bl #0x30eb2c
005aa7e4  00 00 51 e3                                      cmp r1, #0
005aa7e8  10 20 9d e5                                      ldr r2, [sp, #0x10]
005aa7ec  14 30 9d e5                                      ldr r3, [sp, #0x14]
005aa7f0  e1 ff ff 1a                                      bne #0x5aa77c
005aa7f4  0a 00 a0 e1                                      mov r0, sl
005aa7f8  26 10 db e5                                      ldrb r1, [fp, #0x26]
005aa7fc  ca 90 f5 eb                                      bl #0x30eb2c
005aa800  00 00 51 e3                                      cmp r1, #0
005aa804  10 20 9d e5                                      ldr r2, [sp, #0x10]
005aa808  14 30 9d e5                                      ldr r3, [sp, #0x14]
005aa80c  da ff ff 1a                                      bne #0x5aa77c
005aa810  05 10 a0 e1                                      mov r1, r5
005aa814  00 c0 95 e5                                      ldr ip, [r5]
005aa818  04 00 a0 e1                                      mov r0, r4
005aa81c  0f e0 a0 e1                                      mov lr, pc
005aa820  04 f2 9c e5                                      ldr pc, [ip, #0x204]
005aa824  8e ff ff ea                                      b #0x5aa664
005aa828  00 00 a0 e3                                      mov r0, #0
005aa82c  10 20 8d e5                                      str r2, [sp, #0x10]
005aa830  14 30 8d e5                                      str r3, [sp, #0x14]
005aa834  42 0c 01 eb                                      bl #0x5ed944
005aa838  14 30 9d e5                                      ldr r3, [sp, #0x14]
005aa83c  09 10 97 e7                                      ldr r1, [r7, sb]
005aa840  10 20 9d e5                                      ldr r2, [sp, #0x10]
005aa844  04 30 93 e5                                      ldr r3, [r3, #4]
005aa848  1c 30 8d e5                                      str r3, [sp, #0x1c]
005aa84c  1c 50 9d e5                                      ldr r5, [sp, #0x1c]
005aa850  08 31 90 e7                                      ldr r3, [r0, r8, lsl #2]
005aa854  28 00 a0 e3                                      mov r0, #0x28
005aa858  90 15 21 e0                                      mla r1, r0, r5, r1
005aa85c  24 10 d1 e5                                      ldrb r1, [r1, #0x24]
005aa860  18 10 8d e5                                      str r1, [sp, #0x18]
005aa864  c9 ff ff ea                                      b #0x5aa790
005aa868  01 00 58 e3                                      cmp r8, #1
005aa86c  9f ff ff 1a                                      bne #0x5aa6f0
005aa870  00 00 5a e1                                      cmp sl, r0
005aa874  8b ff ff 1a                                      bne #0x5aa6a8
005aa878  9e ff ff ea                                      b #0x5aa6f8
; mapping-symbol data/literal pool
005aa87c  6c a4 3e 00 54 57 33 00 70 57 33 00 a4 bd 31 00  .byte 0x6c, 0xa4, 0x3e, 0x00, 0x54, 0x57, 0x33, 0x00, 0x70, 0x57, 0x33, 0x00, 0xa4, 0xbd, 0x31, 0x00
005aa88c  04 57 33 00 5c 57 33 00 34 1f 00 00 d4 bc 31 00  .byte 0x04, 0x57, 0x33, 0x00, 0x5c, 0x57, 0x33, 0x00, 0x34, 0x1f, 0x00, 0x00, 0xd4, 0xbc, 0x31, 0x00
005aa89c  18 57 33 00                                      .byte 0x18, 0x57, 0x33, 0x00

; PACKAGE FUNCTION common_gl_texture_factory
; ELF VA 0x005b5f6c, range_size=1032, SHA-256=34ada247cda6dda00ce33a20d1d0df65b708a6c2d404fb11d24b41b40983321a
; Original assembly source glitch_video_CCommonGLDriver_glitch_video_CProgrammableGLDriver_glitch_video_CGLSLShaderHa-569492699322-001.asm lines 3644-3895
; FUNCTION 0x005b5f6c, declared_size=1032, range_size=1032, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17createTextureImplEPKcRKNS0_12STextureDescE
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::createTextureImpl(char const*, glitch::video::STextureDesc const&)
; decoder-mode: arm
005b5f6c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005b5f70  3c d0 4d e2                                      sub sp, sp, #0x3c
005b5f74  18 a0 8d e2                                      add sl, sp, #0x18
005b5f78  03 40 a0 e1                                      mov r4, r3
005b5f7c  0a c0 a0 e1                                      mov ip, sl
005b5f80  03 e0 a0 e1                                      mov lr, r3
005b5f84  00 50 a0 e1                                      mov r5, r0
005b5f88  01 60 a0 e1                                      mov r6, r1
005b5f8c  02 80 a0 e1                                      mov r8, r2
005b5f90  0f 00 b4 e8                                      ldm r4!, {r0, r1, r2, r3}
005b5f94  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
005b5f98  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
005b5f9c  07 00 ac e8                                      stm ip!, {r0, r1, r2}
005b5fa0  28 70 9d e5                                      ldr r7, [sp, #0x28]
005b5fa4  80 43 9f e5                                      ldr r4, [pc, #0x380]
005b5fa8  b2 30 cc e0                                      strh r3, [ip], #2
005b5fac  01 20 47 e2                                      sub r2, r7, #1
005b5fb0  07 00 12 e1                                      tst r2, r7
005b5fb4  23 38 a0 e1                                      lsr r3, r3, #0x10
005b5fb8  00 30 cc e5                                      strb r3, [ip]
005b5fbc  04 40 8f e0                                      add r4, pc, r4
005b5fc0  03 00 00 1a                                      bne #0x5b5fd4
005b5fc4  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
005b5fc8  01 20 43 e2                                      sub r2, r3, #1
005b5fcc  03 00 12 e1                                      tst r2, r3
005b5fd0  7b 00 00 0a                                      beq #0x5b61c4
005b5fd4  00 90 a0 e3                                      mov sb, #0
005b5fd8  ec 37 96 e5                                      ldr r3, [r6, #0x7ec]
005b5fdc  08 00 13 e3                                      tst r3, #8
005b5fe0  1a 00 00 0a                                      beq #0x5b6050
005b5fe4  18 b0 9d e5                                      ldr fp, [sp, #0x18]
005b5fe8  00 00 5b e3                                      cmp fp, #0
005b5fec  17 00 00 0a                                      beq #0x5b6050
005b5ff0  03 00 5b e3                                      cmp fp, #3
005b5ff4  15 00 00 0a                                      beq #0x5b6050
005b5ff8  00 00 59 e3                                      cmp sb, #0
005b5ffc  13 00 00 1a                                      bne #0x5b6050
005b6000  7b 30 ff e6                                      uxth r3, fp
005b6004  ff 00 53 e3                                      cmp r3, #0xff
005b6008  b2 00 00 0a                                      beq #0x5b62d8
005b600c  09 00 a0 e1                                      mov r0, sb
005b6010  94 1e 01 eb                                      bl #0x5fda68
005b6014  28 70 9d e5                                      ldr r7, [sp, #0x28]
005b6018  0b 31 90 e7                                      ldr r3, [r0, fp, lsl #2]
005b601c  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
005b6020  08 13 9f e5                                      ldr r1, [pc, #0x308]
005b6024  08 20 a0 e1                                      mov r2, r8
005b6028  04 c0 8d e5                                      str ip, [sp, #4]
005b602c  30 c0 9d e5                                      ldr ip, [sp, #0x30]
005b6030  01 10 8f e0                                      add r1, pc, r1
005b6034  03 00 a0 e3                                      mov r0, #3
005b6038  00 70 8d e5                                      str r7, [sp]
005b603c  08 c0 8d e5                                      str ip, [sp, #8]
005b6040  fb 53 01 eb                                      bl #0x60b034
005b6044  00 30 a0 e3                                      mov r3, #0
005b6048  00 30 85 e5                                      str r3, [r5]
005b604c  46 00 00 ea                                      b #0x5b616c
005b6050  1c 70 9d e5                                      ldr r7, [sp, #0x1c]
005b6054  d8 22 9f e5                                      ldr r2, [pc, #0x2d8]
005b6058  28 30 a0 e3                                      mov r3, #0x28
005b605c  93 07 03 e0                                      mul r3, r3, r7
005b6060  02 20 94 e7                                      ldr r2, [r4, r2]
005b6064  03 30 92 e7                                      ldr r3, [r2, r3]
005b6068  30 00 13 e3                                      tst r3, #0x30
005b606c  41 00 00 1a                                      bne #0x5b6178
005b6070  35 20 dd e5                                      ldrb r2, [sp, #0x35]
005b6074  00 00 52 e3                                      cmp r2, #0
005b6078  6f 00 00 0a                                      beq #0x5b623c
005b607c  14 30 a0 e3                                      mov r3, #0x14
005b6080  93 67 27 e0                                      mla r7, r3, r7, r6
005b6084  4a 7e 87 e2                                      add r7, r7, #0x4a0
005b6088  08 70 87 e2                                      add r7, r7, #8
005b608c  b6 b0 d7 e1                                      ldrh fp, [r7, #6]
005b6090  04 70 9e e5                                      ldr r7, [lr, #4]
005b6094  1c b0 8d e5                                      str fp, [sp, #0x1c]
005b6098  07 00 5b e1                                      cmp fp, r7
005b609c  1b 00 00 0a                                      beq #0x5b6110
005b60a0  27 00 5b e3                                      cmp fp, #0x27
005b60a4  50 00 00 0a                                      beq #0x5b61ec
005b60a8  77 30 ff e6                                      uxth r3, r7
005b60ac  27 00 53 e3                                      cmp r3, #0x27
005b60b0  75 00 00 0a                                      beq #0x5b628c
005b60b4  00 00 a0 e3                                      mov r0, #0
005b60b8  21 de 00 eb                                      bl #0x5ed944
005b60bc  35 20 dd e5                                      ldrb r2, [sp, #0x35]
005b60c0  07 31 90 e7                                      ldr r3, [r0, r7, lsl #2]
005b60c4  1c b0 9d e5                                      ldr fp, [sp, #0x1c]
005b60c8  00 00 52 e3                                      cmp r2, #0
005b60cc  60 00 00 1a                                      bne #0x5b6254
005b60d0  60 72 9f e5                                      ldr r7, [pc, #0x260]
005b60d4  07 70 8f e0                                      add r7, pc, r7
005b60d8  7b 20 ff e6                                      uxth r2, fp
005b60dc  27 00 52 e3                                      cmp r2, #0x27
005b60e0  6c 00 00 0a                                      beq #0x5b6298
005b60e4  00 00 a0 e3                                      mov r0, #0
005b60e8  14 30 8d e5                                      str r3, [sp, #0x14]
005b60ec  14 de 00 eb                                      bl #0x5ed944
005b60f0  14 30 9d e5                                      ldr r3, [sp, #0x14]
005b60f4  0b c1 90 e7                                      ldr ip, [r0, fp, lsl #2]
005b60f8  3c 12 9f e5                                      ldr r1, [pc, #0x23c]
005b60fc  02 00 a0 e3                                      mov r0, #2
005b6100  08 20 a0 e1                                      mov r2, r8
005b6104  01 10 8f e0                                      add r1, pc, r1
005b6108  80 10 8d e8                                      stm sp, {r7, ip}
005b610c  c8 53 01 eb                                      bl #0x60b034
005b6110  20 70 9d e5                                      ldr r7, [sp, #0x20]
005b6114  02 00 57 e3                                      cmp r7, #2
005b6118  50 00 00 0a                                      beq #0x5b6260
005b611c  03 00 57 e3                                      cmp r7, #3
005b6120  3f 00 00 0a                                      beq #0x5b6224
005b6124  00 00 57 e3                                      cmp r7, #0
005b6128  5d 00 00 1a                                      bne #0x5b62a4
005b612c  00 10 a0 e3                                      mov r1, #0
005b6130  5c 00 a0 e3                                      mov r0, #0x5c
005b6134  1c f8 fd eb                                      bl #0x5341ac
005b6138  0a 30 a0 e1                                      mov r3, sl
005b613c  08 10 a0 e1                                      mov r1, r8
005b6140  06 20 a0 e1                                      mov r2, r6
005b6144  00 70 a0 e1                                      mov r7, r0
005b6148  62 9f 04 eb                                      bl #0x6dded8
005b614c  ec 31 9f e5                                      ldr r3, [pc, #0x1ec]
005b6150  03 30 94 e7                                      ldr r3, [r4, r3]
005b6154  08 30 83 e2                                      add r3, r3, #8
005b6158  00 30 87 e5                                      str r3, [r7]
005b615c  00 70 85 e5                                      str r7, [r5]
005b6160  04 30 97 e5                                      ldr r3, [r7, #4]
005b6164  01 30 83 e2                                      add r3, r3, #1
005b6168  04 30 87 e5                                      str r3, [r7, #4]
005b616c  05 00 a0 e1                                      mov r0, r5
005b6170  3c d0 8d e2                                      add sp, sp, #0x3c
005b6174  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005b6178  18 30 9d e5                                      ldr r3, [sp, #0x18]
005b617c  00 00 53 e3                                      cmp r3, #0
005b6180  ba ff ff 0a                                      beq #0x5b6070
005b6184  02 00 53 e3                                      cmp r3, #2
005b6188  b8 ff ff 0a                                      beq #0x5b6070
005b618c  77 30 ff e6                                      uxth r3, r7
005b6190  27 00 53 e3                                      cmp r3, #0x27
005b6194  61 00 00 0a                                      beq #0x5b6320
005b6198  00 00 a0 e3                                      mov r0, #0
005b619c  e8 dd 00 eb                                      bl #0x5ed944
005b61a0  07 31 90 e7                                      ldr r3, [r0, r7, lsl #2]
005b61a4  98 11 9f e5                                      ldr r1, [pc, #0x198]
005b61a8  08 20 a0 e1                                      mov r2, r8
005b61ac  03 00 a0 e3                                      mov r0, #3
005b61b0  01 10 8f e0                                      add r1, pc, r1
005b61b4  9e 53 01 eb                                      bl #0x60b034
005b61b8  00 30 a0 e3                                      mov r3, #0
005b61bc  00 30 85 e5                                      str r3, [r5]
005b61c0  e9 ff ff ea                                      b #0x5b616c
005b61c4  18 30 9d e5                                      ldr r3, [sp, #0x18]
005b61c8  01 00 53 e3                                      cmp r3, #1
005b61cc  01 90 a0 13                                      movne sb, #1
005b61d0  80 ff ff 1a                                      bne #0x5b5fd8
005b61d4  30 30 9d e5                                      ldr r3, [sp, #0x30]
005b61d8  01 20 43 e2                                      sub r2, r3, #1
005b61dc  03 00 12 e1                                      tst r2, r3
005b61e0  00 90 a0 13                                      movne sb, #0
005b61e4  01 90 a0 03                                      moveq sb, #1
005b61e8  7a ff ff ea                                      b #0x5b5fd8
005b61ec  77 30 ff e6                                      uxth r3, r7
005b61f0  27 00 53 e3                                      cmp r3, #0x27
005b61f4  3a 00 00 0a                                      beq #0x5b62e4
005b61f8  00 00 a0 e3                                      mov r0, #0
005b61fc  d0 dd 00 eb                                      bl #0x5ed944
005b6200  07 31 90 e7                                      ldr r3, [r0, r7, lsl #2]
005b6204  3c 11 9f e5                                      ldr r1, [pc, #0x13c]
005b6208  08 20 a0 e1                                      mov r2, r8
005b620c  03 00 a0 e3                                      mov r0, #3
005b6210  01 10 8f e0                                      add r1, pc, r1
005b6214  86 53 01 eb                                      bl #0x60b034
005b6218  00 30 a0 e3                                      mov r3, #0
005b621c  00 30 85 e5                                      str r3, [r5]
005b6220  d1 ff ff ea                                      b #0x5b616c
005b6224  00 00 59 e3                                      cmp sb, #0
005b6228  30 00 00 0a                                      beq #0x5b62f0
005b622c  00 00 a0 e3                                      mov r0, #0
005b6230  10 1e 01 eb                                      bl #0x5fda78
005b6234  07 31 90 e7                                      ldr r3, [r0, r7, lsl #2]
005b6238  1e 00 00 ea                                      b #0x5b62b8
005b623c  14 30 a0 e3                                      mov r3, #0x14
005b6240  93 67 27 e0                                      mla r7, r3, r7, r6
005b6244  4a 7e 87 e2                                      add r7, r7, #0x4a0
005b6248  08 70 87 e2                                      add r7, r7, #8
005b624c  b4 b0 d7 e1                                      ldrh fp, [r7, #4]
005b6250  8e ff ff ea                                      b #0x5b6090
005b6254  f0 70 9f e5                                      ldr r7, [pc, #0xf0]
005b6258  07 70 8f e0                                      add r7, pc, r7
005b625c  9d ff ff ea                                      b #0x5b60d8
005b6260  00 00 a0 e3                                      mov r0, #0
005b6264  03 1e 01 eb                                      bl #0x5fda78
005b6268  e0 10 9f e5                                      ldr r1, [pc, #0xe0]
005b626c  08 30 90 e5                                      ldr r3, [r0, #8]
005b6270  08 20 a0 e1                                      mov r2, r8
005b6274  01 10 8f e0                                      add r1, pc, r1
005b6278  03 00 a0 e3                                      mov r0, #3
005b627c  6c 53 01 eb                                      bl #0x60b034
005b6280  00 30 a0 e3                                      mov r3, #0
005b6284  00 30 85 e5                                      str r3, [r5]
005b6288  b7 ff ff ea                                      b #0x5b616c
005b628c  c0 30 9f e5                                      ldr r3, [pc, #0xc0]
005b6290  03 30 8f e0                                      add r3, pc, r3
005b6294  8b ff ff ea                                      b #0x5b60c8
005b6298  b8 c0 9f e5                                      ldr ip, [pc, #0xb8]
005b629c  0c c0 8f e0                                      add ip, pc, ip
005b62a0  94 ff ff ea                                      b #0x5b60f8
005b62a4  77 30 ff e6                                      uxth r3, r7
005b62a8  ff 00 53 e3                                      cmp r3, #0xff
005b62ac  de ff ff 1a                                      bne #0x5b622c
005b62b0  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
005b62b4  03 30 8f e0                                      add r3, pc, r3
005b62b8  a0 10 9f e5                                      ldr r1, [pc, #0xa0]
005b62bc  02 00 a0 e3                                      mov r0, #2
005b62c0  08 20 a0 e1                                      mov r2, r8
005b62c4  01 10 8f e0                                      add r1, pc, r1
005b62c8  59 53 01 eb                                      bl #0x60b034
005b62cc  00 30 a0 e3                                      mov r3, #0
005b62d0  20 30 8d e5                                      str r3, [sp, #0x20]
005b62d4  94 ff ff ea                                      b #0x5b612c
005b62d8  84 30 9f e5                                      ldr r3, [pc, #0x84]
005b62dc  03 30 8f e0                                      add r3, pc, r3
005b62e0  4d ff ff ea                                      b #0x5b601c
005b62e4  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
005b62e8  03 30 8f e0                                      add r3, pc, r3
005b62ec  c4 ff ff ea                                      b #0x5b6204
005b62f0  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
005b62f4  70 10 9f e5                                      ldr r1, [pc, #0x70]
005b62f8  07 00 a0 e1                                      mov r0, r7
005b62fc  00 c0 8d e5                                      str ip, [sp]
005b6300  30 c0 9d e5                                      ldr ip, [sp, #0x30]
005b6304  01 10 8f e0                                      add r1, pc, r1
005b6308  08 20 a0 e1                                      mov r2, r8
005b630c  28 30 9d e5                                      ldr r3, [sp, #0x28]
005b6310  04 c0 8d e5                                      str ip, [sp, #4]
005b6314  46 53 01 eb                                      bl #0x60b034
005b6318  00 90 85 e5                                      str sb, [r5]
005b631c  92 ff ff ea                                      b #0x5b616c
005b6320  48 30 9f e5                                      ldr r3, [pc, #0x48]
005b6324  03 30 8f e0                                      add r3, pc, r3
005b6328  9d ff ff ea                                      b #0x5b61a4
; mapping-symbol data/literal pool
005b632c  d4 ea 3d 00 c0 a6 32 00 34 1f 00 00 44 6c 33 00  .byte 0xd4, 0xea, 0x3d, 0x00, 0xc0, 0xa6, 0x32, 0x00, 0x34, 0x1f, 0x00, 0x00, 0x44, 0x6c, 0x33, 0x00
005b633c  a4 a6 32 00 68 09 00 00 78 a5 32 00 58 a5 32 00  .byte 0xa4, 0xa6, 0x32, 0x00, 0x68, 0x09, 0x00, 0x00, 0x78, 0xa5, 0x32, 0x00, 0x58, 0xa5, 0x32, 0x00
005b634c  40 a5 32 00 7c a5 32 00 d0 01 31 00 c4 01 31 00  .byte 0x40, 0xa5, 0x32, 0x00, 0x7c, 0xa5, 0x32, 0x00, 0xd0, 0x01, 0x31, 0x00, 0xc4, 0x01, 0x31, 0x00
005b635c  ac 01 31 00 a4 a5 32 00 84 01 31 00 78 01 31 00  .byte 0xac, 0x01, 0x31, 0x00, 0xa4, 0xa5, 0x32, 0x00, 0x84, 0x01, 0x31, 0x00, 0x78, 0x01, 0x31, 0x00
005b636c  14 a5 32 00 3c 01 31 00                          .byte 0x14, 0xa5, 0x32, 0x00, 0x3c, 0x01, 0x31, 0x00

; PACKAGE FUNCTION texture_bind_lazy_gl_name
; ELF VA 0x005b5610, range_size=768, SHA-256=f686f404818da4866c94754a34882a1c5eb299e3f03959314317261ea7b496f0
; Original assembly source glitch_video_CCommonGLDriver_glitch_video_CProgrammableGLDriver_glitch_video_CGLSLShaderHa-8ceb812a790b-001.asm lines 682-876
; FUNCTION 0x005b5610, declared_size=768, range_size=768, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture8bindImplEb
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::bindImpl(bool)
; decoder-mode: arm
005b5610  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005b5614  54 30 90 e5                                      ldr r3, [r0, #0x54]
005b5618  34 40 90 e5                                      ldr r4, [r0, #0x34]
005b561c  38 70 90 e5                                      ldr r7, [r0, #0x38]
005b5620  d8 62 9f e5                                      ldr r6, [pc, #0x2d8]
005b5624  00 00 53 e3                                      cmp r3, #0
005b5628  03 70 07 e2                                      and r7, r7, #3
005b562c  42 3e 84 e2                                      add r3, r4, #0x420
005b5630  00 50 a0 e1                                      mov r5, r0
005b5634  87 72 83 e0                                      add r7, r3, r7, lsl #5
005b5638  06 60 8f e0                                      add r6, pc, r6
005b563c  01 80 a0 e1                                      mov r8, r1
005b5640  35 00 00 0a                                      beq #0x5b571c
005b5644  68 32 94 e5                                      ldr r3, [r4, #0x268]
005b5648  03 21 97 e7                                      ldr r2, [r7, r3, lsl #2]
005b564c  00 00 52 e1                                      cmp r2, r0
005b5650  13 00 00 0a                                      beq #0x5b56a4
005b5654  4c 60 94 e5                                      ldr r6, [r4, #0x4c]
005b5658  01 60 46 e2                                      sub r6, r6, #1
005b565c  06 00 53 e1                                      cmp r3, r6
005b5660  03 00 00 0a                                      beq #0x5b5674
005b5664  21 0b 86 e2                                      add r0, r6, #0x8400
005b5668  c0 00 80 e2                                      add r0, r0, #0xc0
005b566c  dc 62 f5 eb                                      bl #0x30e1e4
005b5670  68 62 84 e5                                      str r6, [r4, #0x268]
005b5674  06 31 97 e7                                      ldr r3, [r7, r6, lsl #2]
005b5678  03 00 55 e1                                      cmp r5, r3
005b567c  08 00 00 0a                                      beq #0x5b56a4
005b5680  7c 32 9f e5                                      ldr r3, [pc, #0x27c]
005b5684  38 20 95 e5                                      ldr r2, [r5, #0x38]
005b5688  54 10 95 e5                                      ldr r1, [r5, #0x54]
005b568c  03 30 8f e0                                      add r3, pc, r3
005b5690  a4 30 83 e2                                      add r3, r3, #0xa4
005b5694  03 20 02 e2                                      and r2, r2, #3
005b5698  02 01 93 e7                                      ldr r0, [r3, r2, lsl #2]
005b569c  47 64 f5 eb                                      bl #0x30e7c0
005b56a0  06 51 87 e7                                      str r5, [r7, r6, lsl #2]
005b56a4  58 10 d5 e5                                      ldrb r1, [r5, #0x58]
005b56a8  00 00 51 e3                                      cmp r1, #0
005b56ac  5d 00 00 1a                                      bne #0x5b5828
005b56b0  b0 44 d5 e1                                      ldrh r4, [r5, #0x40]
005b56b4  02 40 c4 e3                                      bic r4, r4, #2
005b56b8  84 49 a0 e1                                      lsl r4, r4, #0x13
005b56bc  a4 49 a0 e1                                      lsr r4, r4, #0x13
005b56c0  00 00 54 e3                                      cmp r4, #0
005b56c4  5c 00 00 1a                                      bne #0x5b583c
005b56c8  3f 30 d5 e5                                      ldrb r3, [r5, #0x3f]
005b56cc  10 10 03 e2                                      and r1, r3, #0x10
005b56d0  71 10 ef e6                                      uxtb r1, r1
005b56d4  00 00 51 e3                                      cmp r1, #0
005b56d8  04 00 00 0a                                      beq #0x5b56f0
005b56dc  54 30 95 e5                                      ldr r3, [r5, #0x54]
005b56e0  00 00 53 e3                                      cmp r3, #0
005b56e4  5e 00 00 1a                                      bne #0x5b5864
005b56e8  04 00 a0 e1                                      mov r0, r4
005b56ec  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005b56f0  00 00 58 e3                                      cmp r8, #0
005b56f4  fb ff ff 0a                                      beq #0x5b56e8
005b56f8  2c 20 95 e5                                      ldr r2, [r5, #0x2c]
005b56fc  00 00 52 e3                                      cmp r2, #0
005b5700  f8 ff ff 0a                                      beq #0x5b56e8
005b5704  05 00 a0 e1                                      mov r0, r5
005b5708  d3 30 e0 e7                                      ubfx r3, r3, #1, #1
005b570c  01 20 a0 e3                                      mov r2, #1
005b5710  17 22 01 eb                                      bl #0x5fdf74
005b5714  04 00 a0 e1                                      mov r0, r4
005b5718  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005b571c  3f 30 d0 e5                                      ldrb r3, [r0, #0x3f]
005b5720  54 10 85 e2                                      add r1, r5, #0x54
005b5724  01 00 a0 e3                                      mov r0, #1
005b5728  10 30 c3 e3                                      bic r3, r3, #0x10
005b572c  3f 30 c5 e5                                      strb r3, [r5, #0x3f]
005b5730  7f 64 f5 eb                                      bl #0x30e934
005b5734  54 10 95 e5                                      ldr r1, [r5, #0x54]
005b5738  00 00 51 e3                                      cmp r1, #0
005b573c  43 00 00 0a                                      beq #0x5b5850
005b5740  34 a0 95 e5                                      ldr sl, [r5, #0x34]
005b5744  68 32 9a e5                                      ldr r3, [sl, #0x268]
005b5748  03 21 97 e7                                      ldr r2, [r7, r3, lsl #2]
005b574c  05 00 52 e1                                      cmp r2, r5
005b5750  09 00 00 0a                                      beq #0x5b577c
005b5754  4c 40 9a e5                                      ldr r4, [sl, #0x4c]
005b5758  01 40 44 e2                                      sub r4, r4, #1
005b575c  04 00 53 e1                                      cmp r3, r4
005b5760  03 00 00 0a                                      beq #0x5b5774
005b5764  21 0b 84 e2                                      add r0, r4, #0x8400
005b5768  c0 00 80 e2                                      add r0, r0, #0xc0
005b576c  9c 62 f5 eb                                      bl #0x30e1e4
005b5770  68 42 8a e5                                      str r4, [sl, #0x268]
005b5774  04 51 87 e7                                      str r5, [r7, r4, lsl #2]
005b5778  54 10 95 e5                                      ldr r1, [r5, #0x54]
005b577c  84 31 9f e5                                      ldr r3, [pc, #0x184]
005b5780  38 20 95 e5                                      ldr r2, [r5, #0x38]
005b5784  03 30 8f e0                                      add r3, pc, r3
005b5788  a4 30 83 e2                                      add r3, r3, #0xa4
005b578c  03 20 02 e2                                      and r2, r2, #3
005b5790  02 01 93 e7                                      ldr r0, [r3, r2, lsl #2]
005b5794  09 64 f5 eb                                      bl #0x30e7c0
005b5798  3e 30 d5 e5                                      ldrb r3, [r5, #0x3e]
005b579c  38 20 95 e5                                      ldr r2, [r5, #0x38]
005b57a0  01 00 53 e3                                      cmp r3, #1
005b57a4  1c 00 00 9a                                      bls #0x5b581c
005b57a8  3f 30 d5 e5                                      ldrb r3, [r5, #0x3f]
005b57ac  02 00 13 e3                                      tst r3, #2
005b57b0  03 10 a0 e1                                      mov r1, r3
005b57b4  33 00 00 1a                                      bne #0x5b5888
005b57b8  52 66 e2 e7                                      ubfx r6, r2, #0xc, #3
005b57bc  01 00 56 e3                                      cmp r6, #1
005b57c0  39 00 00 da                                      ble #0x5b58ac
005b57c4  08 30 83 e3                                      orr r3, r3, #8
005b57c8  3f 30 c5 e5                                      strb r3, [r5, #0x3f]
005b57cc  05 00 a0 e1                                      mov r0, r5
005b57d0  01 10 a0 e3                                      mov r1, #1
005b57d4  1c eb ff eb                                      bl #0x5b044c
005b57d8  02 00 56 e3                                      cmp r6, #2
005b57dc  00 40 a0 e1                                      mov r4, r0
005b57e0  b8 ff ff 0a                                      beq #0x5b56c8
005b57e4  38 30 95 e5                                      ldr r3, [r5, #0x38]
005b57e8  53 26 e2 e7                                      ubfx r2, r3, #0xc, #3
005b57ec  02 00 56 e1                                      cmp r6, r2
005b57f0  b4 ff ff 0a                                      beq #0x5b56c8
005b57f4  3e 20 d5 e5                                      ldrb r2, [r5, #0x3e]
005b57f8  01 00 52 e3                                      cmp r2, #1
005b57fc  39 00 00 9a                                      bls #0x5b58e8
005b5800  b0 24 d5 e1                                      ldrh r2, [r5, #0x40]
005b5804  07 3a c3 e3                                      bic r3, r3, #0x7000
005b5808  06 66 83 e1                                      orr r6, r3, r6, lsl #12
005b580c  04 20 82 e3                                      orr r2, r2, #4
005b5810  38 60 85 e5                                      str r6, [r5, #0x38]
005b5814  b0 24 c5 e1                                      strh r2, [r5, #0x40]
005b5818  aa ff ff ea                                      b #0x5b56c8
005b581c  3f 10 d5 e5                                      ldrb r1, [r5, #0x3f]
005b5820  08 10 81 e3                                      orr r1, r1, #8
005b5824  3f 10 c5 e5                                      strb r1, [r5, #0x3f]
005b5828  05 00 a0 e1                                      mov r0, r5
005b582c  01 10 a0 e3                                      mov r1, #1
005b5830  05 eb ff eb                                      bl #0x5b044c
005b5834  00 40 a0 e1                                      mov r4, r0
005b5838  a2 ff ff ea                                      b #0x5b56c8
005b583c  05 00 a0 e1                                      mov r0, r5
005b5840  01 eb ff eb                                      bl #0x5b044c
005b5844  3f 30 d5 e5                                      ldrb r3, [r5, #0x3f]
005b5848  00 40 a0 e1                                      mov r4, r0
005b584c  9e ff ff ea                                      b #0x5b56cc
005b5850  3f 30 d5 e5                                      ldrb r3, [r5, #0x3f]
005b5854  01 40 a0 e1                                      mov r4, r1
005b5858  10 30 83 e3                                      orr r3, r3, #0x10
005b585c  3f 30 c5 e5                                      strb r3, [r5, #0x3f]
005b5860  99 ff ff ea                                      b #0x5b56cc
005b5864  00 30 95 e5                                      ldr r3, [r5]
005b5868  05 00 a0 e1                                      mov r0, r5
005b586c  0f e0 a0 e1                                      mov lr, pc
005b5870  10 f0 93 e5                                      ldr pc, [r3, #0x10]
005b5874  3f 30 d5 e5                                      ldrb r3, [r5, #0x3f]
005b5878  04 00 a0 e1                                      mov r0, r4
005b587c  10 30 83 e3                                      orr r3, r3, #0x10
005b5880  3f 30 c5 e5                                      strb r3, [r5, #0x3f]
005b5884  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005b5888  7c c0 9f e5                                      ldr ip, [pc, #0x7c]
005b588c  52 02 e5 e7                                      ubfx r0, r2, #4, #6
005b5890  28 e0 a0 e3                                      mov lr, #0x28
005b5894  0c c0 96 e7                                      ldr ip, [r6, ip]
005b5898  9e 00 00 e0                                      mul r0, lr, r0
005b589c  00 00 9c e7                                      ldr r0, [ip, r0]
005b58a0  08 00 10 e3                                      tst r0, #8
005b58a4  dd ff ff 1a                                      bne #0x5b5820
005b58a8  c2 ff ff ea                                      b #0x5b57b8
005b58ac  02 00 56 e3                                      cmp r6, #2
005b58b0  0f 00 00 0a                                      beq #0x5b58f4
005b58b4  b0 04 d5 e1                                      ldrh r0, [r5, #0x40]
005b58b8  07 2a c2 e3                                      bic r2, r2, #0x7000
005b58bc  02 1a 82 e3                                      orr r1, r2, #0x2000
005b58c0  08 30 83 e3                                      orr r3, r3, #8
005b58c4  04 20 80 e3                                      orr r2, r0, #4
005b58c8  38 10 85 e5                                      str r1, [r5, #0x38]
005b58cc  b0 24 c5 e1                                      strh r2, [r5, #0x40]
005b58d0  3f 30 c5 e5                                      strb r3, [r5, #0x3f]
005b58d4  05 00 a0 e1                                      mov r0, r5
005b58d8  01 10 a0 e3                                      mov r1, #1
005b58dc  da ea ff eb                                      bl #0x5b044c
005b58e0  00 40 a0 e1                                      mov r4, r0
005b58e4  be ff ff ea                                      b #0x5b57e4
005b58e8  01 00 56 e3                                      cmp r6, #1
005b58ec  75 ff ff ca                                      bgt #0x5b56c8
005b58f0  c2 ff ff ea                                      b #0x5b5800
005b58f4  08 30 83 e3                                      orr r3, r3, #8
005b58f8  3f 30 c5 e5                                      strb r3, [r5, #0x3f]
005b58fc  c9 ff ff ea                                      b #0x5b5828
; mapping-symbol data/literal pool
005b5900  58 f4 3d 00 a8 a9 32 00 b0 a8 32 00 34 1f 00 00  .byte 0x58, 0xf4, 0x3d, 0x00, 0xa8, 0xa9, 0x32, 0x00, 0xb0, 0xa8, 0x32, 0x00, 0x34, 0x1f, 0x00, 0x00

; PACKAGE FUNCTION texture_upload_dirty_mips
; ELF VA 0x005afff0, range_size=1116, SHA-256=9fb09ee2dfd6c052dc1e900ea57542c33b89ed0404e9a4a3ce6642571a500f00
; Original assembly source glitch_video_CCommonGLDriver_glitch_video_CProgrammableGLDriver_glitch_video_CGLSLShaderHa-8ceb812a790b-001.asm lines 177-459
; FUNCTION 0x005afff0, declared_size=1116, range_size=1116, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture
; alias: _ZNK6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture10updateDataEb
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::updateData(bool) const
; decoder-mode: arm
005afff0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005afff4  40 24 9f e5                                      ldr r2, [pc, #0x440]
005afff8  3f 30 d0 e5                                      ldrb r3, [r0, #0x3f]
005afffc  4c d0 4d e2                                      sub sp, sp, #0x4c
005b0000  02 20 8f e0                                      add r2, pc, r2
005b0004  02 00 13 e3                                      tst r3, #2
005b0008  30 20 8d e5                                      str r2, [sp, #0x30]
005b000c  3e c0 d0 05                                      ldrbeq ip, [r0, #0x3e]
005b0010  01 30 a0 13                                      movne r3, #1
005b0014  3e 90 d0 15                                      ldrbne sb, [r0, #0x3e]
005b0018  40 c0 8d 05                                      streq ip, [sp, #0x40]
005b001c  40 30 8d 15                                      strne r3, [sp, #0x40]
005b0020  2c 20 90 e5                                      ldr r2, [r0, #0x2c]
005b0024  30 30 90 e5                                      ldr r3, [r0, #0x30]
005b0028  38 40 90 e5                                      ldr r4, [r0, #0x38]
005b002c  09 80 a0 11                                      movne r8, sb
005b0030  0c 80 a0 01                                      moveq r8, ip
005b0034  01 90 a0 03                                      moveq sb, #1
005b0038  01 80 88 e2                                      add r8, r8, #1
005b003c  00 00 52 e3                                      cmp r2, #0
005b0040  00 50 a0 e1                                      mov r5, r0
005b0044  01 b0 a0 e1                                      mov fp, r1
005b0048  08 81 83 e0                                      add r8, r3, r8, lsl #2
005b004c  54 42 e5 e7                                      ubfx r4, r4, #4, #6
005b0050  34 a0 90 e5                                      ldr sl, [r0, #0x34]
005b0054  0e 00 00 0a                                      beq #0x5b0094
005b0058  04 00 a0 e1                                      mov r0, r4
005b005c  20 10 95 e5                                      ldr r1, [r5, #0x20]
005b0060  a1 f6 00 eb                                      bl #0x5edaec
005b0064  34 60 95 e5                                      ldr r6, [r5, #0x34]
005b0068  01 00 10 e3                                      tst r0, #1
005b006c  03 00 00 e2                                      and r0, r0, #3
005b0070  6c 32 96 e5                                      ldr r3, [r6, #0x26c]
005b0074  01 70 a0 13                                      movne r7, #1
005b0078  04 70 60 02                                      rsbeq r7, r0, #4
005b007c  03 00 57 e1                                      cmp r7, r3
005b0080  03 00 00 0a                                      beq #0x5b0094
005b0084  f5 0c 00 e3                                      movw r0, #0xcf5
005b0088  07 10 a0 e1                                      mov r1, r7
005b008c  36 78 f5 eb                                      bl #0x30e16c
005b0090  6c 72 86 e5                                      str r7, [r6, #0x26c]
005b0094  43 78 f5 eb                                      bl #0x30e1a8
005b0098  14 30 a0 e3                                      mov r3, #0x14
005b009c  93 a4 23 e0                                      mla r3, r3, r4, sl
005b00a0  00 10 a0 e3                                      mov r1, #0
005b00a4  34 30 8d e5                                      str r3, [sp, #0x34]
005b00a8  38 20 95 e5                                      ldr r2, [r5, #0x38]
005b00ac  8c 33 9f e5                                      ldr r3, [pc, #0x38c]
005b00b0  34 c0 9d e5                                      ldr ip, [sp, #0x34]
005b00b4  03 20 02 e2                                      and r2, r2, #3
005b00b8  02 00 52 e3                                      cmp r2, #2
005b00bc  03 30 8f e0                                      add r3, pc, r3
005b00c0  4b ce 8c e2                                      add ip, ip, #0x4b0
005b00c4  06 20 a0 03                                      moveq r2, #6
005b00c8  01 20 a0 13                                      movne r2, #1
005b00cc  04 c0 8c e2                                      add ip, ip, #4
005b00d0  a4 30 83 e2                                      add r3, r3, #0xa4
005b00d4  20 10 8d e5                                      str r1, [sp, #0x20]
005b00d8  44 20 8d e5                                      str r2, [sp, #0x44]
005b00dc  3c c0 8d e5                                      str ip, [sp, #0x3c]
005b00e0  38 30 8d e5                                      str r3, [sp, #0x38]
005b00e4  24 10 8d e5                                      str r1, [sp, #0x24]
005b00e8  01 40 a0 e1                                      mov r4, r1
005b00ec  40 20 9d e5                                      ldr r2, [sp, #0x40]
005b00f0  00 00 52 e3                                      cmp r2, #0
005b00f4  58 00 00 0a                                      beq #0x5b025c
005b00f8  34 30 9d e5                                      ldr r3, [sp, #0x34]
005b00fc  01 a0 42 e2                                      sub sl, r2, #1
005b0100  3c c3 9f e5                                      ldr ip, [pc, #0x33c]
005b0104  7a a0 ef e6                                      uxtb sl, sl
005b0108  4b 3e 83 e2                                      add r3, r3, #0x4b0
005b010c  01 a0 8a e2                                      add sl, sl, #1
005b0110  00 60 a0 e3                                      mov r6, #0
005b0114  08 30 83 e2                                      add r3, r3, #8
005b0118  0a a1 a0 e1                                      lsl sl, sl, #2
005b011c  2c 30 8d e5                                      str r3, [sp, #0x2c]
005b0120  06 70 a0 e1                                      mov r7, r6
005b0124  28 c0 8d e5                                      str ip, [sp, #0x28]
005b0128  00 30 98 e5                                      ldr r3, [r8]
005b012c  01 20 a0 e3                                      mov r2, #1
005b0130  12 34 13 e0                                      ands r3, r3, r2, lsl r4
005b0134  3f 00 00 0a                                      beq #0x5b0238
005b0138  2c e0 95 e5                                      ldr lr, [r5, #0x2c]
005b013c  00 00 5e e3                                      cmp lr, #0
005b0140  08 00 00 0a                                      beq #0x5b0168
005b0144  3f 30 d5 e5                                      ldrb r3, [r5, #0x3f]
005b0148  02 00 13 e3                                      tst r3, #2
005b014c  4a 00 00 0a                                      beq #0x5b027c
005b0150  30 30 95 e5                                      ldr r3, [r5, #0x30]
005b0154  20 10 9d e5                                      ldr r1, [sp, #0x20]
005b0158  0c 00 93 e8                                      ldm r3, {r2, r3}
005b015c  03 20 62 e0                                      rsb r2, r2, r3
005b0160  92 01 02 e0                                      mul r2, r2, r1
005b0164  02 e0 8e e0                                      add lr, lr, r2
005b0168  20 30 95 e5                                      ldr r3, [r5, #0x20]
005b016c  24 10 95 e5                                      ldr r1, [r5, #0x24]
005b0170  38 20 95 e5                                      ldr r2, [r5, #0x38]
005b0174  53 37 a0 e1                                      asr r3, r3, r7
005b0178  51 17 a0 e1                                      asr r1, r1, r7
005b017c  03 00 02 e2                                      and r0, r2, #3
005b0180  01 00 53 e3                                      cmp r3, #1
005b0184  01 30 a0 b3                                      movlt r3, #1
005b0188  01 00 51 e3                                      cmp r1, #1
005b018c  01 10 a0 b3                                      movlt r1, #1
005b0190  01 00 50 e3                                      cmp r0, #1
005b0194  22 00 00 0a                                      beq #0x5b0224
005b0198  02 00 50 e3                                      cmp r0, #2
005b019c  24 c0 9d 05                                      ldreq ip, [sp, #0x24]
005b01a0  38 c0 9d 15                                      ldrne ip, [sp, #0x38]
005b01a4  52 22 e5 e7                                      ubfx r2, r2, #4, #6
005b01a8  85 0c 8c 02                                      addeq r0, ip, #0x8500
005b01ac  00 01 9c 17                                      ldrne r0, [ip, r0, lsl #2]
005b01b0  28 c0 a0 e3                                      mov ip, #0x28
005b01b4  9c 02 0c e0                                      mul ip, ip, r2
005b01b8  28 20 9d e5                                      ldr r2, [sp, #0x28]
005b01bc  18 c0 8d e5                                      str ip, [sp, #0x18]
005b01c0  30 c0 9d e5                                      ldr ip, [sp, #0x30]
005b01c4  15 00 80 02                                      addeq r0, r0, #0x15
005b01c8  02 20 9c e7                                      ldr r2, [ip, r2]
005b01cc  18 c0 9d e5                                      ldr ip, [sp, #0x18]
005b01d0  0c c0 92 e7                                      ldr ip, [r2, ip]
005b01d4  1c c0 8d e5                                      str ip, [sp, #0x1c]
005b01d8  08 c0 1c e2                                      ands ip, ip, #8
005b01dc  2f 00 00 0a                                      beq #0x5b02a0
005b01e0  00 00 5b e3                                      cmp fp, #0
005b01e4  3e 00 00 0a                                      beq #0x5b02e4
005b01e8  34 20 9d e5                                      ldr r2, [sp, #0x34]
005b01ec  30 c0 95 e5                                      ldr ip, [r5, #0x30]
005b01f0  b0 24 92 e5                                      ldr r2, [r2, #0x4b0]
005b01f4  00 10 8d e5                                      str r1, [sp]
005b01f8  00 10 a0 e3                                      mov r1, #0
005b01fc  04 10 8d e5                                      str r1, [sp, #4]
005b0200  1c 20 8d e5                                      str r2, [sp, #0x1c]
005b0204  06 10 8c e0                                      add r1, ip, r6
005b0208  04 10 91 e5                                      ldr r1, [r1, #4]
005b020c  06 c0 9c e7                                      ldr ip, [ip, r6]
005b0210  0c e0 8d e5                                      str lr, [sp, #0xc]
005b0214  01 c0 6c e0                                      rsb ip, ip, r1
005b0218  07 10 a0 e1                                      mov r1, r7
005b021c  08 c0 8d e5                                      str ip, [sp, #8]
005b0220  c5 7a f5 eb                                      bl #0x30ed3c
005b0224  df 77 f5 eb                                      bl #0x30e1a8
005b0228  00 00 50 e3                                      cmp r0, #0
005b022c  3f 30 d5 15                                      ldrbne r3, [r5, #0x3f]
005b0230  10 30 83 13                                      orrne r3, r3, #0x10
005b0234  3f 30 c5 15                                      strbne r3, [r5, #0x3f]
005b0238  09 40 84 e0                                      add r4, r4, sb
005b023c  1f 00 54 e3                                      cmp r4, #0x1f
005b0240  00 30 a0 83                                      movhi r3, #0
005b0244  04 60 86 e2                                      add r6, r6, #4
005b0248  04 30 88 84                                      strhi r3, [r8], #4
005b024c  20 40 44 82                                      subhi r4, r4, #0x20
005b0250  0a 00 56 e1                                      cmp r6, sl
005b0254  01 70 87 e2                                      add r7, r7, #1
005b0258  b2 ff ff 1a                                      bne #0x5b0128
005b025c  24 c0 9d e5                                      ldr ip, [sp, #0x24]
005b0260  44 10 9d e5                                      ldr r1, [sp, #0x44]
005b0264  01 c0 8c e2                                      add ip, ip, #1
005b0268  01 00 5c e1                                      cmp ip, r1
005b026c  24 c0 8d e5                                      str ip, [sp, #0x24]
005b0270  3a 00 00 aa                                      bge #0x5b0360
005b0274  20 c0 8d e5                                      str ip, [sp, #0x20]
005b0278  9b ff ff ea                                      b #0x5b00ec
005b027c  30 30 95 e5                                      ldr r3, [r5, #0x30]
005b0280  3e 10 d5 e5                                      ldrb r1, [r5, #0x3e]
005b0284  20 c0 9d e5                                      ldr ip, [sp, #0x20]
005b0288  06 20 93 e7                                      ldr r2, [r3, r6]
005b028c  01 31 93 e7                                      ldr r3, [r3, r1, lsl #2]
005b0290  7f 30 83 e2                                      add r3, r3, #0x7f
005b0294  7f 30 c3 e3                                      bic r3, r3, #0x7f
005b0298  93 2c 22 e0                                      mla r2, r3, ip, r2
005b029c  b0 ff ff ea                                      b #0x5b0164
005b02a0  00 00 5b e3                                      cmp fp, #0
005b02a4  1f 00 00 0a                                      beq #0x5b0328
005b02a8  34 20 9d e5                                      ldr r2, [sp, #0x34]
005b02ac  b0 24 92 e5                                      ldr r2, [r2, #0x4b0]
005b02b0  04 c0 8d e5                                      str ip, [sp, #4]
005b02b4  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
005b02b8  1c 20 8d e5                                      str r2, [sp, #0x1c]
005b02bc  00 10 8d e5                                      str r1, [sp]
005b02c0  00 10 9c e5                                      ldr r1, [ip]
005b02c4  08 10 8d e5                                      str r1, [sp, #8]
005b02c8  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
005b02cc  00 c0 91 e5                                      ldr ip, [r1]
005b02d0  07 10 a0 e1                                      mov r1, r7
005b02d4  10 e0 8d e5                                      str lr, [sp, #0x10]
005b02d8  0c c0 8d e5                                      str ip, [sp, #0xc]
005b02dc  4b 77 f5 eb                                      bl #0x30e010
005b02e0  cf ff ff ea                                      b #0x5b0224
005b02e4  34 20 9d e5                                      ldr r2, [sp, #0x34]
005b02e8  04 10 8d e5                                      str r1, [sp, #4]
005b02ec  00 30 8d e5                                      str r3, [sp]
005b02f0  b0 34 92 e5                                      ldr r3, [r2, #0x4b0]
005b02f4  30 20 95 e5                                      ldr r2, [r5, #0x30]
005b02f8  07 10 a0 e1                                      mov r1, r7
005b02fc  08 30 8d e5                                      str r3, [sp, #8]
005b0300  06 30 82 e0                                      add r3, r2, r6
005b0304  06 c0 92 e7                                      ldr ip, [r2, r6]
005b0308  04 30 93 e5                                      ldr r3, [r3, #4]
005b030c  0b 20 a0 e1                                      mov r2, fp
005b0310  10 e0 8d e5                                      str lr, [sp, #0x10]
005b0314  03 c0 6c e0                                      rsb ip, ip, r3
005b0318  0b 30 a0 e1                                      mov r3, fp
005b031c  0c c0 8d e5                                      str ip, [sp, #0xc]
005b0320  9e 76 f5 eb                                      bl #0x30dda0
005b0324  be ff ff ea                                      b #0x5b0224
005b0328  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
005b032c  04 10 8d e5                                      str r1, [sp, #4]
005b0330  00 30 8d e5                                      str r3, [sp]
005b0334  00 30 92 e5                                      ldr r3, [r2]
005b0338  07 10 a0 e1                                      mov r1, r7
005b033c  0b 20 a0 e1                                      mov r2, fp
005b0340  08 30 8d e5                                      str r3, [sp, #8]
005b0344  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
005b0348  00 c0 93 e5                                      ldr ip, [r3]
005b034c  0b 30 a0 e1                                      mov r3, fp
005b0350  10 e0 8d e5                                      str lr, [sp, #0x10]
005b0354  0c c0 8d e5                                      str ip, [sp, #0xc]
005b0358  fc 79 f5 eb                                      bl #0x30eb50
005b035c  b0 ff ff ea                                      b #0x5b0224
005b0360  00 00 54 e3                                      cmp r4, #0
005b0364  00 30 a0 13                                      movne r3, #0
005b0368  00 30 88 15                                      strne r3, [r8]
005b036c  b0 24 d5 e1                                      ldrh r2, [r5, #0x40]
005b0370  3f 30 d5 e5                                      ldrb r3, [r5, #0x3f]
005b0374  03 20 c2 e3                                      bic r2, r2, #3
005b0378  10 00 13 e3                                      tst r3, #0x10
005b037c  b0 24 c5 e1                                      strh r2, [r5, #0x40]
005b0380  16 00 00 1a                                      bne #0x5b03e0
005b0384  3e 20 d5 e5                                      ldrb r2, [r5, #0x3e]
005b0388  01 00 52 e3                                      cmp r2, #1
005b038c  13 00 00 9a                                      bls #0x5b03e0
005b0390  02 00 13 e3                                      tst r3, #2
005b0394  11 00 00 0a                                      beq #0x5b03e0
005b0398  2c 30 95 e5                                      ldr r3, [r5, #0x2c]
005b039c  00 00 53 e3                                      cmp r3, #0
005b03a0  1a 00 00 0a                                      beq #0x5b0410
005b03a4  30 10 9d e5                                      ldr r1, [sp, #0x30]
005b03a8  38 30 95 e5                                      ldr r3, [r5, #0x38]
005b03ac  90 20 9f e5                                      ldr r2, [pc, #0x90]
005b03b0  53 32 e5 e7                                      ubfx r3, r3, #4, #6
005b03b4  02 20 91 e7                                      ldr r2, [r1, r2]
005b03b8  28 10 a0 e3                                      mov r1, #0x28
005b03bc  91 03 03 e0                                      mul r3, r1, r3
005b03c0  03 30 92 e7                                      ldr r3, [r2, r3]
005b03c4  08 00 13 e3                                      tst r3, #8
005b03c8  07 00 00 0a                                      beq #0x5b03ec
005b03cc  74 10 9f e5                                      ldr r1, [pc, #0x74]
005b03d0  1c 20 95 e5                                      ldr r2, [r5, #0x1c]
005b03d4  02 00 a0 e3                                      mov r0, #2
005b03d8  01 10 8f e0                                      add r1, pc, r1
005b03dc  14 6b 01 eb                                      bl #0x60b034
005b03e0  01 00 a0 e3                                      mov r0, #1
005b03e4  4c d0 8d e2                                      add sp, sp, #0x4c
005b03e8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005b03ec  34 30 95 e5                                      ldr r3, [r5, #0x34]
005b03f0  9c 30 93 e5                                      ldr r3, [r3, #0x9c]
005b03f4  04 00 13 e3                                      tst r3, #4
005b03f8  f8 ff ff 0a                                      beq #0x5b03e0
005b03fc  05 00 a0 e1                                      mov r0, r5
005b0400  00 30 95 e5                                      ldr r3, [r5]
005b0404  0f e0 a0 e1                                      mov lr, pc
005b0408  20 f0 93 e5                                      ldr pc, [r3, #0x20]
005b040c  f3 ff ff ea                                      b #0x5b03e0
005b0410  38 30 95 e5                                      ldr r3, [r5, #0x38]
005b0414  28 20 9f e5                                      ldr r2, [pc, #0x28]
005b0418  30 c0 9d e5                                      ldr ip, [sp, #0x30]
005b041c  53 32 e5 e7                                      ubfx r3, r3, #4, #6
005b0420  28 10 a0 e3                                      mov r1, #0x28
005b0424  02 20 9c e7                                      ldr r2, [ip, r2]
005b0428  91 03 03 e0                                      mul r3, r1, r3
005b042c  03 30 92 e7                                      ldr r3, [r2, r3]
005b0430  08 00 13 e3                                      tst r3, #8
005b0434  e9 ff ff 0a                                      beq #0x5b03e0
005b0438  e3 ff ff ea                                      b #0x5b03cc
; mapping-symbol data/literal pool
005b043c  90 4a 3e 00 78 ff 32 00 34 1f 00 00 20 00 33 00  .byte 0x90, 0x4a, 0x3e, 0x00, 0x78, 0xff, 0x32, 0x00, 0x34, 0x1f, 0x00, 0x00, 0x20, 0x00, 0x33, 0x00

; PACKAGE FUNCTION texture_unbind_and_delete_gl_name
; ELF VA 0x005b28dc, range_size=340, SHA-256=b99488f7c3180c602928e577f73c0059cbfbc288f254c4db61706b3753875420
; Original assembly source glitch_video_CCommonGLDriver_glitch_video_CProgrammableGLDriver_glitch_video_CGLSLShaderHa-8ceb812a790b-001.asm lines 544-634
; FUNCTION 0x005b28dc, declared_size=340, range_size=340, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture10unbindImplEv
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::unbindImpl()
; decoder-mode: arm
005b28dc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005b28e0  34 30 90 e5                                      ldr r3, [r0, #0x34]
005b28e4  38 70 90 e5                                      ldr r7, [r0, #0x38]
005b28e8  00 50 a0 e1                                      mov r5, r0
005b28ec  4c 60 93 e5                                      ldr r6, [r3, #0x4c]
005b28f0  03 70 07 e2                                      and r7, r7, #3
005b28f4  42 3e 83 e2                                      add r3, r3, #0x420
005b28f8  00 00 56 e3                                      cmp r6, #0
005b28fc  87 72 83 e0                                      add r7, r3, r7, lsl #5
005b2900  06 00 00 0a                                      beq #0x5b2920
005b2904  00 40 a0 e3                                      mov r4, #0
005b2908  04 31 97 e7                                      ldr r3, [r7, r4, lsl #2]
005b290c  05 00 53 e1                                      cmp r3, r5
005b2910  29 00 00 0a                                      beq #0x5b29bc
005b2914  01 40 84 e2                                      add r4, r4, #1
005b2918  06 00 54 e1                                      cmp r4, r6
005b291c  f9 ff ff 1a                                      bne #0x5b2908
005b2920  01 00 a0 e3                                      mov r0, #1
005b2924  54 10 85 e2                                      add r1, r5, #0x54
005b2928  ef 6f f5 eb                                      bl #0x30e8ec
005b292c  b0 04 d5 e1                                      ldrh r0, [r5, #0x40]
005b2930  3f 30 d5 e5                                      ldrb r3, [r5, #0x3f]
005b2934  00 20 a0 e3                                      mov r2, #0
005b2938  02 00 c0 e3                                      bic r0, r0, #2
005b293c  e7 30 03 e2                                      and r3, r3, #0xe7
005b2940  7f 0d 80 e3                                      orr r0, r0, #0x1fc0
005b2944  3c 00 80 e3                                      orr r0, r0, #0x3c
005b2948  02 00 13 e3                                      tst r3, #2
005b294c  54 20 85 e5                                      str r2, [r5, #0x54]
005b2950  3f 30 c5 e5                                      strb r3, [r5, #0x3f]
005b2954  b0 04 c5 e1                                      strh r0, [r5, #0x40]
005b2958  1e 00 00 0a                                      beq #0x5b29d8
005b295c  38 70 95 e5                                      ldr r7, [r5, #0x38]
005b2960  3e 10 d5 e5                                      ldrb r1, [r5, #0x3e]
005b2964  01 00 80 e3                                      orr r0, r0, #1
005b2968  03 70 07 e2                                      and r7, r7, #3
005b296c  02 00 57 e3                                      cmp r7, #2
005b2970  b0 04 c5 e1                                      strh r0, [r5, #0x40]
005b2974  06 70 a0 03                                      moveq r7, #6
005b2978  01 70 a0 13                                      movne r7, #1
005b297c  02 30 a0 e1                                      mov r3, r2
005b2980  01 60 a0 e3                                      mov r6, #1
005b2984  30 c0 95 e5                                      ldr ip, [r5, #0x30]
005b2988  01 10 81 e2                                      add r1, r1, #1
005b298c  a3 02 a0 e1                                      lsr r0, r3, #5
005b2990  01 11 8c e0                                      add r1, ip, r1, lsl #2
005b2994  00 c1 91 e7                                      ldr ip, [r1, r0, lsl #2]
005b2998  1f 40 03 e2                                      and r4, r3, #0x1f
005b299c  01 20 82 e2                                      add r2, r2, #1
005b29a0  16 c4 8c e1                                      orr ip, ip, r6, lsl r4
005b29a4  00 c1 81 e7                                      str ip, [r1, r0, lsl #2]
005b29a8  3e 10 d5 e5                                      ldrb r1, [r5, #0x3e]
005b29ac  07 00 52 e1                                      cmp r2, r7
005b29b0  01 30 83 e0                                      add r3, r3, r1
005b29b4  f2 ff ff ba                                      blt #0x5b2984
005b29b8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005b29bc  38 30 95 e5                                      ldr r3, [r5, #0x38]
005b29c0  04 10 a0 e1                                      mov r1, r4
005b29c4  34 00 95 e5                                      ldr r0, [r5, #0x34]
005b29c8  03 30 03 e2                                      and r3, r3, #3
005b29cc  00 20 a0 e3                                      mov r2, #0
005b29d0  46 ff ff eb                                      bl #0x5b26f0
005b29d4  ce ff ff ea                                      b #0x5b2914
005b29d8  38 c0 95 e5                                      ldr ip, [r5, #0x38]
005b29dc  3e 20 d5 e5                                      ldrb r2, [r5, #0x3e]
005b29e0  30 30 95 e5                                      ldr r3, [r5, #0x30]
005b29e4  03 c0 0c e2                                      and ip, ip, #3
005b29e8  02 00 5c e3                                      cmp ip, #2
005b29ec  06 c0 a0 03                                      moveq ip, #6
005b29f0  01 c0 a0 13                                      movne ip, #1
005b29f4  92 0c 0c e0                                      mul ip, r2, ip
005b29f8  01 10 82 e2                                      add r1, r2, #1
005b29fc  1f 20 8c e2                                      add r2, ip, #0x1f
005b2a00  a2 22 a0 e1                                      lsr r2, r2, #5
005b2a04  01 31 83 e0                                      add r3, r3, r1, lsl #2
005b2a08  02 21 83 e0                                      add r2, r3, r2, lsl #2
005b2a0c  01 00 80 e3                                      orr r0, r0, #1
005b2a10  02 00 53 e1                                      cmp r3, r2
005b2a14  b0 04 c5 e1                                      strh r0, [r5, #0x40]
005b2a18  03 00 00 0a                                      beq #0x5b2a2c
005b2a1c  00 10 e0 e3                                      mvn r1, #0
005b2a20  04 10 83 e4                                      str r1, [r3], #4
005b2a24  03 00 52 e1                                      cmp r2, r3
005b2a28  fc ff ff 1a                                      bne #0x5b2a20
005b2a2c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; PACKAGE FUNCTION texture_destructor
; ELF VA 0x005b2a30, range_size=116, SHA-256=3a65be36d24ca668b798f550ce2e52f9c18166f7ab32c6d0e01362c63bc22aa9
; Original assembly source glitch_video_CCommonGLDriver_glitch_video_CProgrammableGLDriver_glitch_video_CGLSLShaderHa-8ceb812a790b-001.asm lines 635-668
; FUNCTION 0x005b2a30, declared_size=116, range_size=116, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTextureD1Ev
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::~CTexture()
; decoder-mode: arm
005b2a30  70 40 2d e9                                      push {r4, r5, r6, lr}
005b2a34  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
005b2a38  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
005b2a3c  3f 20 d0 e5                                      ldrb r2, [r0, #0x3f]
005b2a40  05 50 8f e0                                      add r5, pc, r5
005b2a44  03 30 95 e7                                      ldr r3, [r5, r3]
005b2a48  20 00 12 e3                                      tst r2, #0x20
005b2a4c  00 40 a0 e1                                      mov r4, r0
005b2a50  08 30 83 e2                                      add r3, r3, #8
005b2a54  00 30 80 e5                                      str r3, [r0]
005b2a58  0b 00 00 1a                                      bne #0x5b2a8c
005b2a5c  08 00 12 e3                                      tst r2, #8
005b2a60  01 00 00 0a                                      beq #0x5b2a6c
005b2a64  04 00 a0 e1                                      mov r0, r4
005b2a68  9b ff ff eb                                      bl #0x5b28dc
005b2a6c  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
005b2a70  04 00 a0 e1                                      mov r0, r4
005b2a74  03 30 95 e7                                      ldr r3, [r5, r3]
005b2a78  08 30 83 e2                                      add r3, r3, #8
005b2a7c  00 30 84 e5                                      str r3, [r4]
005b2a80  44 2e 01 eb                                      bl #0x5fe398
005b2a84  04 00 a0 e1                                      mov r0, r4
005b2a88  70 80 bd e8                                      pop {r4, r5, r6, pc}
005b2a8c  58 a8 04 eb                                      bl #0x6dcbf4
005b2a90  3f 20 d4 e5                                      ldrb r2, [r4, #0x3f]
005b2a94  f0 ff ff ea                                      b #0x5b2a5c
; mapping-symbol data/literal pool
005b2a98  50 20 3e 00 68 09 00 00 10 3c 00 00              .byte 0x50, 0x20, 0x3e, 0x00, 0x68, 0x09, 0x00, 0x00, 0x10, 0x3c, 0x00, 0x00

; PACKAGE FUNCTION effect_to_renderer_factory
; ELF VA 0x00636c8c, range_size=412, SHA-256=0fc31372fb7aa16156c948b5f666b3d54bc155f8dba05407c55f6d597fb8a8ee
; Original assembly source glitch_collada_CColladaFactory-db06bc565b1a-001.asm lines 1824-1929
; FUNCTION 0x00636c8c, declared_size=412, range_size=412, mode=arm
; class-group: glitch::collada::CColladaFactory
; alias: _ZN6glitch7collada15CColladaFactory22createMaterialRendererERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPNS0_7SEffectEPKcSB_PNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaFactory::createMaterialRenderer(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, glitch::collada::SEffect*, char const*, char const*, glitch::collada::CRootSceneNode*)
; decoder-mode: arm
00636c8c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00636c90  7c 41 9f e5                                      ldr r4, [pc, #0x17c]
00636c94  7c 51 9f e5                                      ldr r5, [pc, #0x17c]
00636c98  3c d0 4d e2                                      sub sp, sp, #0x3c
00636c9c  04 40 8f e0                                      add r4, pc, r4
00636ca0  05 c0 94 e7                                      ldr ip, [r4, r5]
00636ca4  60 90 9d e5                                      ldr sb, [sp, #0x60]
00636ca8  00 70 a0 e1                                      mov r7, r0
00636cac  00 00 9c e5                                      ldr r0, [ip]
00636cb0  6c c0 9d e5                                      ldr ip, [sp, #0x6c]
00636cb4  00 00 59 e3                                      cmp sb, #0
00636cb8  03 80 a0 e1                                      mov r8, r3
00636cbc  34 00 8d e5                                      str r0, [sp, #0x34]
00636cc0  01 60 a0 e1                                      mov r6, r1
00636cc4  02 b0 a0 e1                                      mov fp, r2
00636cc8  64 30 9d e5                                      ldr r3, [sp, #0x64]
00636ccc  68 00 9d e5                                      ldr r0, [sp, #0x68]
00636cd0  08 c0 8d e5                                      str ip, [sp, #8]
00636cd4  43 00 00 0a                                      beq #0x636de8
00636cd8  00 00 8d e5                                      str r0, [sp]
00636cdc  1c a0 8d e2                                      add sl, sp, #0x1c
00636ce0  00 c0 91 e5                                      ldr ip, [r1]
00636ce4  0a 00 a0 e1                                      mov r0, sl
00636ce8  0f e0 a0 e1                                      mov lr, pc
00636cec  14 f0 9c e5                                      ldr pc, [ip, #0x14]
00636cf0  dc 00 98 e5                                      ldr r0, [r8, #0xdc]
00636cf4  30 10 9d e5                                      ldr r1, [sp, #0x30]
00636cf8  f1 8a fe eb                                      bl #0x5d98c4
00636cfc  ff 3f 0f e3                                      movw r3, #0xffff
00636d00  03 00 50 e1                                      cmp r0, r3
00636d04  1e 00 00 0a                                      beq #0x636d84
00636d08  dc 30 98 e5                                      ldr r3, [r8, #0xdc]
00636d0c  1c 20 93 e5                                      ldr r2, [r3, #0x1c]
00636d10  18 30 93 e5                                      ldr r3, [r3, #0x18]
00636d14  02 20 63 e0                                      rsb r2, r3, r2
00636d18  c2 01 50 e1                                      cmp r0, r2, asr #3
00636d1c  80 01 83 30                                      addlo r0, r3, r0, lsl #3
00636d20  14 00 00 2a                                      bhs #0x636d78
00636d24  00 30 90 e5                                      ldr r3, [r0]
00636d28  00 00 53 e3                                      cmp r3, #0
00636d2c  00 30 87 e5                                      str r3, [r7]
00636d30  02 00 00 0a                                      beq #0x636d40
00636d34  00 20 93 e5                                      ldr r2, [r3]
00636d38  01 20 82 e2                                      add r2, r2, #1
00636d3c  00 20 83 e5                                      str r2, [r3]
00636d40  30 00 9d e5                                      ldr r0, [sp, #0x30]
00636d44  0a 00 50 e1                                      cmp r0, sl
00636d48  02 00 00 0a                                      beq #0x636d58
00636d4c  00 00 50 e3                                      cmp r0, #0
00636d50  00 00 00 0a                                      beq #0x636d58
00636d54  bd 65 f3 eb                                      bl #0x310450
00636d58  05 30 94 e7                                      ldr r3, [r4, r5]
00636d5c  34 20 9d e5                                      ldr r2, [sp, #0x34]
00636d60  07 00 a0 e1                                      mov r0, r7
00636d64  00 30 93 e5                                      ldr r3, [r3]
00636d68  03 00 52 e1                                      cmp r2, r3
00636d6c  27 00 00 1a                                      bne #0x636e10
00636d70  3c d0 8d e2                                      add sp, sp, #0x3c
00636d74  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00636d78  9c 30 9f e5                                      ldr r3, [pc, #0x9c]
00636d7c  03 00 94 e7                                      ldr r0, [r4, r3]
00636d80  e7 ff ff ea                                      b #0x636d24
00636d84  14 30 8d e2                                      add r3, sp, #0x14
00636d88  0b 10 a0 e1                                      mov r1, fp
00636d8c  09 20 a0 e1                                      mov r2, sb
00636d90  03 00 a0 e1                                      mov r0, r3
00636d94  0c 30 8d e5                                      str r3, [sp, #0xc]
00636d98  0e eb ff eb                                      bl #0x6319d8
00636d9c  06 00 a0 e1                                      mov r0, r6
00636da0  09 20 a0 e1                                      mov r2, sb
00636da4  0b 10 a0 e1                                      mov r1, fp
00636da8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00636dac  00 c0 96 e5                                      ldr ip, [r6]
00636db0  0f e0 a0 e1                                      mov lr, pc
00636db4  10 f0 9c e5                                      ldr pc, [ip, #0x10]
00636db8  08 c0 9d e5                                      ldr ip, [sp, #8]
00636dbc  07 00 a0 e1                                      mov r0, r7
00636dc0  0b 10 a0 e1                                      mov r1, fp
00636dc4  04 c0 8d e5                                      str ip, [sp, #4]
00636dc8  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00636dcc  08 20 a0 e1                                      mov r2, r8
00636dd0  30 30 9d e5                                      ldr r3, [sp, #0x30]
00636dd4  00 c0 8d e5                                      str ip, [sp]
00636dd8  63 ff ff eb                                      bl #0x636b6c
00636ddc  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00636de0  25 eb ff eb                                      bl #0x631a7c
00636de4  d5 ff ff ea                                      b #0x636d40
00636de8  30 10 9f e5                                      ldr r1, [pc, #0x30]
00636dec  03 00 a0 e3                                      mov r0, #3
00636df0  01 10 8f e0                                      add r1, pc, r1
00636df4  8e 50 ff eb                                      bl #0x60b034
00636df8  24 20 9f e5                                      ldr r2, [pc, #0x24]
00636dfc  dc 10 98 e5                                      ldr r1, [r8, #0xdc]
00636e00  07 00 a0 e1                                      mov r0, r7
00636e04  02 20 8f e0                                      add r2, pc, r2
00636e08  c6 9b fe eb                                      bl #0x5ddd28
00636e0c  d1 ff ff ea                                      b #0x636d58
00636e10  3e 5d f3 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00636e14  f4 dd 35 00 ac 40 00 00 dc 30 00 00 68 e2 2a 00  .byte 0xf4, 0xdd, 0x35, 0x00, 0xac, 0x40, 0x00, 0x00, 0xdc, 0x30, 0x00, 0x00, 0x68, 0xe2, 0x2a, 0x00
00636e24  8c e2 2a 00                                      .byte 0x8c, 0xe2, 0x2a, 0x00

; PACKAGE FUNCTION renderer_profile_dispatch
; ELF VA 0x00636b6c, range_size=288, SHA-256=94555b9fdd3e893068015ce232a9120be2ec265f6ddf476aac184649a7e220ea
; Original assembly source glitch_collada-f9638587a0e2-001.asm lines 519-596
; FUNCTION 0x00636b6c, declared_size=288, range_size=288, mode=arm
; class-group: glitch::collada
; alias: _ZN6glitch7collada22createMaterialRendererERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPKcRKNS0_11SEffectListEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::createMaterialRenderer(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, char const*, glitch::collada::SEffectList const&, glitch::collada::CRootSceneNode*)
; decoder-mode: arm
00636b6c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00636b70  00 40 a0 e1                                      mov r4, r0
00636b74  00 00 a0 e3                                      mov r0, #0
00636b78  00 00 84 e5                                      str r0, [r4]
00636b7c  02 80 a0 e1                                      mov r8, r2
00636b80  18 d0 4d e2                                      sub sp, sp, #0x18
00636b84  00 20 92 e5                                      ldr r2, [r2]
00636b88  08 00 a0 e1                                      mov r0, r8
00636b8c  01 90 a0 e1                                      mov sb, r1
00636b90  03 a0 a0 e1                                      mov sl, r3
00636b94  38 60 9d e5                                      ldr r6, [sp, #0x38]
00636b98  3c 50 9d e5                                      ldr r5, [sp, #0x3c]
00636b9c  0f e0 a0 e1                                      mov lr, pc
00636ba0  5c f0 92 e5                                      ldr pc, [r2, #0x5c]
00636ba4  07 00 10 e3                                      tst r0, #7
00636ba8  1d 00 00 1a                                      bne #0x636c24
00636bac  18 00 10 e3                                      tst r0, #0x18
00636bb0  1e 00 00 1a                                      bne #0x636c30
00636bb4  36 0e 10 e3                                      tst r0, #0x360
00636bb8  19 00 00 1a                                      bne #0x636c24
00636bbc  02 0b 50 e3                                      cmp r0, #0x800
00636bc0  17 00 00 0a                                      beq #0x636c24
00636bc4  00 00 50 e3                                      cmp r0, #0
00636bc8  15 00 00 1a                                      bne #0x636c24
00636bcc  10 70 8d e2                                      add r7, sp, #0x10
00636bd0  08 20 a0 e1                                      mov r2, r8
00636bd4  09 10 a0 e1                                      mov r1, sb
00636bd8  0a 30 a0 e1                                      mov r3, sl
00636bdc  07 00 a0 e1                                      mov r0, r7
00636be0  00 60 8d e5                                      str r6, [sp]
00636be4  04 50 8d e5                                      str r5, [sp, #4]
00636be8  ec fa ff eb                                      bl #0x6357a0
00636bec  10 30 9d e5                                      ldr r3, [sp, #0x10]
00636bf0  18 00 8d e2                                      add r0, sp, #0x18
00636bf4  08 30 8d e5                                      str r3, [sp, #8]
00636bf8  00 00 53 e3                                      cmp r3, #0
00636bfc  00 20 93 15                                      ldrne r2, [r3]
00636c00  01 20 82 12                                      addne r2, r2, #1
00636c04  00 20 83 15                                      strne r2, [r3]
00636c08  08 30 9d 15                                      ldrne r3, [sp, #8]
00636c0c  00 20 94 e5                                      ldr r2, [r4]
00636c10  00 30 84 e5                                      str r3, [r4]
00636c14  10 20 20 e5                                      str r2, [r0, #-0x10]!
00636c18  a6 6d f4 eb                                      bl #0x3522b8
00636c1c  07 00 a0 e1                                      mov r0, r7
00636c20  a4 6d f4 eb                                      bl #0x3522b8
00636c24  04 00 a0 e1                                      mov r0, r4
00636c28  18 d0 8d e2                                      add sp, sp, #0x18
00636c2c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00636c30  14 70 8d e2                                      add r7, sp, #0x14
00636c34  08 20 a0 e1                                      mov r2, r8
00636c38  09 10 a0 e1                                      mov r1, sb
00636c3c  0a 30 a0 e1                                      mov r3, sl
00636c40  07 00 a0 e1                                      mov r0, r7
00636c44  00 60 8d e5                                      str r6, [sp]
00636c48  04 50 8d e5                                      str r5, [sp, #4]
00636c4c  65 fd ff eb                                      bl #0x6361e8
00636c50  14 30 9d e5                                      ldr r3, [sp, #0x14]
00636c54  18 00 8d e2                                      add r0, sp, #0x18
00636c58  0c 30 8d e5                                      str r3, [sp, #0xc]
00636c5c  00 00 53 e3                                      cmp r3, #0
00636c60  00 20 93 15                                      ldrne r2, [r3]
00636c64  01 20 82 12                                      addne r2, r2, #1
00636c68  00 20 83 15                                      strne r2, [r3]
00636c6c  0c 30 9d 15                                      ldrne r3, [sp, #0xc]
00636c70  00 20 94 e5                                      ldr r2, [r4]
00636c74  00 30 84 e5                                      str r3, [r4]
00636c78  0c 20 20 e5                                      str r2, [r0, #-0xc]!
00636c7c  8d 6d f4 eb                                      bl #0x3522b8
00636c80  07 00 a0 e1                                      mov r0, r7
00636c84  8b 6d f4 eb                                      bl #0x3522b8
00636c88  e5 ff ff ea                                      b #0x636c24

; PACKAGE FUNCTION gles2_profile_renderer
; ELF VA 0x006361e8, range_size=2436, SHA-256=3669e766eac04456a732fe9a392b2df6d711dce39992a2e692ae7743fc339e3c
; Original assembly source boost_intrusive_ptr_glitch_video_CMaterialRenderer_glitch_collada-103a5e550bf3-001.asm lines 664-1275
; FUNCTION 0x006361e8, declared_size=2436, range_size=2436, mode=arm
; class-group: boost::intrusive_ptr<glitch::video::CMaterialRenderer> glitch::collada
; alias: _ZN6glitch7collada32createMaterialRendererForProfileINS0_19SProfileGLES2TraitsEEEN5boost13intrusive_ptrINS_5video17CMaterialRendererEEERKNS0_16CColladaDatabaseEPNS5_12IVideoDriverEPKcRKNS0_11SEffectListEPNS0_14CRootSceneNodeE
; demangled: boost::intrusive_ptr<glitch::video::CMaterialRenderer> glitch::collada::createMaterialRendererForProfile<glitch::collada::SProfileGLES2Traits>(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, char const*, glitch::collada::SEffectList const&, glitch::collada::CRootSceneNode*)
; decoder-mode: arm
006361e8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006361ec  64 19 9f e5                                      ldr r1, [pc, #0x964]
006361f0  ac d0 4d e2                                      sub sp, sp, #0xac
006361f4  d0 c0 9d e5                                      ldr ip, [sp, #0xd0]
006361f8  68 10 8d e5                                      str r1, [sp, #0x68]
006361fc  64 00 8d e5                                      str r0, [sp, #0x64]
00636200  00 10 9c e5                                      ldr r1, [ip]
00636204  68 00 9d e5                                      ldr r0, [sp, #0x68]
00636208  40 30 8d e5                                      str r3, [sp, #0x40]
0063620c  0c 00 51 e1                                      cmp r1, ip
00636210  64 10 9d 05                                      ldreq r1, [sp, #0x64]
00636214  00 00 8f e0                                      add r0, pc, r0
00636218  00 30 a0 03                                      moveq r3, #0
0063621c  68 00 8d e5                                      str r0, [sp, #0x68]
00636220  3c 20 8d e5                                      str r2, [sp, #0x3c]
00636224  00 30 81 05                                      streq r3, [r1]
00636228  34 02 00 0a                                      beq #0x636b00
0063622c  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
00636230  dc 20 92 e5                                      ldr r2, [r2, #0xdc]
00636234  24 20 8d e5                                      str r2, [sp, #0x24]
00636238  05 f8 fb eb                                      bl #0x534254
0063623c  6c 00 8d e5                                      str r0, [sp, #0x6c]
00636240  01 00 a0 e3                                      mov r0, #1
00636244  07 f8 fb eb                                      bl #0x534268
00636248  d0 c0 9d e5                                      ldr ip, [sp, #0xd0]
0063624c  00 30 9c e5                                      ldr r3, [ip]
00636250  03 00 5c e1                                      cmp ip, r3
00636254  00 40 a0 03                                      moveq r4, #0
00636258  04 00 a0 01                                      moveq r0, r4
0063625c  10 00 00 0a                                      beq #0x6362a4
00636260  d0 c0 9d e5                                      ldr ip, [sp, #0xd0]
00636264  00 40 a0 e3                                      mov r4, #0
00636268  04 00 a0 e1                                      mov r0, r4
0063626c  10 20 93 e5                                      ldr r2, [r3, #0x10]
00636270  00 30 93 e5                                      ldr r3, [r3]
00636274  20 10 92 e5                                      ldr r1, [r2, #0x20]
00636278  28 20 92 e5                                      ldr r2, [r2, #0x28]
0063627c  01 00 54 e1                                      cmp r4, r1
00636280  01 40 a0 31                                      movlo r4, r1
00636284  02 00 50 e1                                      cmp r0, r2
00636288  02 00 a0 31                                      movlo r0, r2
0063628c  03 00 5c e1                                      cmp ip, r3
00636290  f5 ff ff 1a                                      bne #0x63626c
00636294  00 00 50 e3                                      cmp r0, #0
00636298  01 00 00 0a                                      beq #0x6362a4
0063629c  00 01 a0 e1                                      lsl r0, r0, #2
006362a0  d3 f8 fb eb                                      bl #0x5345f4
006362a4  00 00 54 e3                                      cmp r4, #0
006362a8  2c 00 8d e5                                      str r0, [sp, #0x2c]
006362ac  54 40 8d 05                                      streq r4, [sp, #0x54]
006362b0  02 00 00 0a                                      beq #0x6362c0
006362b4  04 01 a0 e1                                      lsl r0, r4, #2
006362b8  cd f8 fb eb                                      bl #0x5345f4
006362bc  54 00 8d e5                                      str r0, [sp, #0x54]
006362c0  24 00 9d e5                                      ldr r0, [sp, #0x24]
006362c4  40 10 9d e5                                      ldr r1, [sp, #0x40]
006362c8  01 20 a0 e3                                      mov r2, #1
006362cc  06 9e fe eb                                      bl #0x5ddaec
006362d0  00 00 50 e3                                      cmp r0, #0
006362d4  70 00 8d e5                                      str r0, [sp, #0x70]
006362d8  f5 00 00 0a                                      beq #0x6366b4
006362dc  d0 00 9d e5                                      ldr r0, [sp, #0xd0]
006362e0  d0 10 9d e5                                      ldr r1, [sp, #0xd0]
006362e4  00 00 90 e5                                      ldr r0, [r0]
006362e8  00 00 51 e1                                      cmp r1, r0
006362ec  60 00 8d e5                                      str r0, [sp, #0x60]
006362f0  ef 00 00 0a                                      beq #0x6366b4
006362f4  60 38 9f e5                                      ldr r3, [pc, #0x860]
006362f8  01 20 a0 e3                                      mov r2, #1
006362fc  34 20 8d e5                                      str r2, [sp, #0x34]
00636300  03 30 8f e0                                      add r3, pc, r3
00636304  44 30 8d e5                                      str r3, [sp, #0x44]
00636308  50 38 9f e5                                      ldr r3, [pc, #0x850]
0063630c  03 30 8f e0                                      add r3, pc, r3
00636310  74 30 8d e5                                      str r3, [sp, #0x74]
00636314  a0 30 8d e2                                      add r3, sp, #0xa0
00636318  4c 30 8d e5                                      str r3, [sp, #0x4c]
0063631c  60 c0 9d e5                                      ldr ip, [sp, #0x60]
00636320  10 c0 9c e5                                      ldr ip, [ip, #0x10]
00636324  28 c0 8d e5                                      str ip, [sp, #0x28]
00636328  20 00 9c e5                                      ldr r0, [ip, #0x20]
0063632c  38 00 8d e5                                      str r0, [sp, #0x38]
00636330  28 30 9c e5                                      ldr r3, [ip, #0x28]
00636334  50 20 bd e7                                      sbfx r2, r0, #0, #0x1e
00636338  00 00 53 e3                                      cmp r3, #0
0063633c  00 30 a0 d3                                      movle r3, #0
00636340  01 30 a0 c3                                      movgt r3, #1
00636344  00 00 52 e3                                      cmp r2, #0
00636348  50 30 8d e5                                      str r3, [sp, #0x50]
0063634c  09 00 00 da                                      ble #0x636378
00636350  54 00 9d e5                                      ldr r0, [sp, #0x54]
00636354  00 30 a0 e3                                      mov r3, #0
00636358  03 10 a0 e1                                      mov r1, r3
0063635c  03 11 80 e7                                      str r1, [r0, r3, lsl #2]
00636360  01 30 83 e2                                      add r3, r3, #1
00636364  02 00 53 e1                                      cmp r3, r2
00636368  fb ff ff 1a                                      bne #0x63635c
0063636c  28 10 9d e5                                      ldr r1, [sp, #0x28]
00636370  20 10 91 e5                                      ldr r1, [r1, #0x20]
00636374  38 10 8d e5                                      str r1, [sp, #0x38]
00636378  38 20 9d e5                                      ldr r2, [sp, #0x38]
0063637c  00 00 52 e3                                      cmp r2, #0
00636380  00 80 a0 d3                                      movle r8, #0
00636384  6c 00 00 da                                      ble #0x63653c
00636388  50 c0 9d e5                                      ldr ip, [sp, #0x50]
0063638c  00 30 a0 e3                                      mov r3, #0
00636390  a4 00 8d e2                                      add r0, sp, #0xa4
00636394  01 c0 2c e2                                      eor ip, ip, #1
00636398  18 30 8d e5                                      str r3, [sp, #0x18]
0063639c  1c 30 8d e5                                      str r3, [sp, #0x1c]
006363a0  20 30 8d e5                                      str r3, [sp, #0x20]
006363a4  03 80 a0 e1                                      mov r8, r3
006363a8  48 c0 8d e5                                      str ip, [sp, #0x48]
006363ac  78 a0 8d e2                                      add sl, sp, #0x78
006363b0  9c b0 8d e2                                      add fp, sp, #0x9c
006363b4  14 00 8d e5                                      str r0, [sp, #0x14]
006363b8  24 90 9d e5                                      ldr sb, [sp, #0x24]
006363bc  13 00 00 ea                                      b #0x636410
006363c0  18 10 9d e5                                      ldr r1, [sp, #0x18]
006363c4  54 00 9d e5                                      ldr r0, [sp, #0x54]
006363c8  01 00 80 e0                                      add r0, r0, r1
006363cc  30 00 8d e5                                      str r0, [sp, #0x30]
006363d0  30 10 9d e5                                      ldr r1, [sp, #0x30]
006363d4  00 50 91 e5                                      ldr r5, [r1]
006363d8  00 00 55 e3                                      cmp r5, #0
006363dc  1f 00 00 0a                                      beq #0x636460
006363e0  20 20 9d e5                                      ldr r2, [sp, #0x20]
006363e4  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
006363e8  18 00 9d e5                                      ldr r0, [sp, #0x18]
006363ec  38 30 9d e5                                      ldr r3, [sp, #0x38]
006363f0  01 20 82 e2                                      add r2, r2, #1
006363f4  0c c0 8c e2                                      add ip, ip, #0xc
006363f8  04 00 80 e2                                      add r0, r0, #4
006363fc  03 00 52 e1                                      cmp r2, r3
00636400  20 20 8d e5                                      str r2, [sp, #0x20]
00636404  1c c0 8d e5                                      str ip, [sp, #0x1c]
00636408  18 00 8d e5                                      str r0, [sp, #0x18]
0063640c  4a 00 00 0a                                      beq #0x63653c
00636410  28 10 9d e5                                      ldr r1, [sp, #0x28]
00636414  34 20 9d e5                                      ldr r2, [sp, #0x34]
00636418  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
0063641c  24 30 91 e5                                      ldr r3, [r1, #0x24]
00636420  00 00 52 e3                                      cmp r2, #0
00636424  0c 70 83 e0                                      add r7, r3, ip
00636428  e4 ff ff 1a                                      bne #0x6363c0
0063642c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00636430  09 00 a0 e1                                      mov r0, sb
00636434  02 10 93 e7                                      ldr r1, [r3, r2]
00636438  c2 95 fe eb                                      bl #0x5dbb48
0063643c  54 c0 9d e5                                      ldr ip, [sp, #0x54]
00636440  18 30 9d e5                                      ldr r3, [sp, #0x18]
00636444  03 00 8c e7                                      str r0, [ip, r3]
00636448  03 00 8c e0                                      add r0, ip, r3
0063644c  30 00 8d e5                                      str r0, [sp, #0x30]
00636450  30 10 9d e5                                      ldr r1, [sp, #0x30]
00636454  00 50 91 e5                                      ldr r5, [r1]
00636458  00 00 55 e3                                      cmp r5, #0
0063645c  df ff ff 1a                                      bne #0x6363e0
00636460  09 00 a0 e1                                      mov r0, sb
00636464  00 10 97 e5                                      ldr r1, [r7]
00636468  01 20 a0 e3                                      mov r2, #1
0063646c  e6 9c fe eb                                      bl #0x5dd80c
00636470  00 00 50 e3                                      cmp r0, #0
00636474  d9 ff ff 0a                                      beq #0x6363e0
00636478  04 20 97 e5                                      ldr r2, [r7, #4]
0063647c  00 00 52 e3                                      cmp r2, #0
00636480  10 20 8d e5                                      str r2, [sp, #0x10]
00636484  25 00 00 da                                      ble #0x636520
00636488  05 60 a0 e1                                      mov r6, r5
0063648c  08 40 97 e5                                      ldr r4, [r7, #8]
00636490  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
00636494  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
00636498  05 40 84 e0                                      add r4, r4, r5
0063649c  04 20 a0 e1                                      mov r2, r4
006364a0  d8 10 93 e5                                      ldr r1, [r3, #0xd8]
006364a4  a1 f9 ff eb                                      bl #0x634b30
006364a8  a0 30 9d e5                                      ldr r3, [sp, #0xa0]
006364ac  1c 10 84 e2                                      add r1, r4, #0x1c
006364b0  0a 00 a0 e1                                      mov r0, sl
006364b4  00 00 53 e3                                      cmp r3, #0
006364b8  9c 30 8d e5                                      str r3, [sp, #0x9c]
006364bc  04 20 93 15                                      ldrne r2, [r3, #4]
006364c0  01 60 86 e2                                      add r6, r6, #1
006364c4  74 50 85 e2                                      add r5, r5, #0x74
006364c8  01 20 82 12                                      addne r2, r2, #1
006364cc  04 20 83 15                                      strne r2, [r3, #4]
006364d0  4e 85 fe eb                                      bl #0x5d7a10
006364d4  09 00 a0 e1                                      mov r0, sb
006364d8  0b 10 a0 e1                                      mov r1, fp
006364dc  0a 20 a0 e1                                      mov r2, sl
006364e0  14 30 9d e5                                      ldr r3, [sp, #0x14]
006364e4  90 9a fe eb                                      bl #0x5dcf2c
006364e8  9c 00 9d e5                                      ldr r0, [sp, #0x9c]
006364ec  00 00 50 e3                                      cmp r0, #0
006364f0  00 00 00 0a                                      beq #0x6364f8
006364f4  22 9c f3 eb                                      bl #0x31d584
006364f8  6c 30 94 e5                                      ldr r3, [r4, #0x6c]
006364fc  a0 00 9d e5                                      ldr r0, [sp, #0xa0]
00636500  00 00 53 e3                                      cmp r3, #0
00636504  01 80 a0 c3                                      movgt r8, #1
00636508  00 00 50 e3                                      cmp r0, #0
0063650c  00 00 00 0a                                      beq #0x636514
00636510  1b 9c f3 eb                                      bl #0x31d584
00636514  10 c0 9d e5                                      ldr ip, [sp, #0x10]
00636518  0c 00 56 e1                                      cmp r6, ip
0063651c  da ff ff 1a                                      bne #0x63648c
00636520  48 10 9d e5                                      ldr r1, [sp, #0x48]
00636524  09 00 a0 e1                                      mov r0, sb
00636528  00 20 a0 e3                                      mov r2, #0
0063652c  4c 9c fe eb                                      bl #0x5dd664
00636530  30 10 9d e5                                      ldr r1, [sp, #0x30]
00636534  00 00 81 e5                                      str r0, [r1]
00636538  a8 ff ff ea                                      b #0x6363e0
0063653c  50 10 9d e5                                      ldr r1, [sp, #0x50]
00636540  00 00 51 e3                                      cmp r1, #0
00636544  01 00 00 1a                                      bne #0x636550
00636548  00 00 58 e3                                      cmp r8, #0
0063654c  50 00 00 0a                                      beq #0x636694
00636550  28 20 9d e5                                      ldr r2, [sp, #0x28]
00636554  28 a0 92 e5                                      ldr sl, [r2, #0x28]
00636558  5a 20 bd e7                                      sbfx r2, sl, #0, #0x1e
0063655c  00 00 52 e3                                      cmp r2, #0
00636560  08 00 00 da                                      ble #0x636588
00636564  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
00636568  00 30 a0 e3                                      mov r3, #0
0063656c  03 10 a0 e1                                      mov r1, r3
00636570  03 11 80 e7                                      str r1, [r0, r3, lsl #2]
00636574  01 30 83 e2                                      add r3, r3, #1
00636578  02 00 53 e1                                      cmp r3, r2
0063657c  fb ff ff 1a                                      bne #0x636570
00636580  28 30 9d e5                                      ldr r3, [sp, #0x28]
00636584  28 a0 93 e5                                      ldr sl, [r3, #0x28]
00636588  00 00 5a e3                                      cmp sl, #0
0063658c  a8 00 00 da                                      ble #0x636834
00636590  00 40 a0 e3                                      mov r4, #0
00636594  04 60 a0 e1                                      mov r6, r4
00636598  04 80 a0 e1                                      mov r8, r4
0063659c  2c 90 9d e5                                      ldr sb, [sp, #0x2c]
006365a0  74 b0 9d e5                                      ldr fp, [sp, #0x74]
006365a4  07 00 00 ea                                      b #0x6365c8
006365a8  00 30 97 e5                                      ldr r3, [r7]
006365ac  01 80 88 e2                                      add r8, r8, #1
006365b0  18 60 86 e2                                      add r6, r6, #0x18
006365b4  00 00 53 e3                                      cmp r3, #0
006365b8  1b 00 00 0a                                      beq #0x63662c
006365bc  0a 00 58 e1                                      cmp r8, sl
006365c0  04 40 84 e2                                      add r4, r4, #4
006365c4  9a 00 00 0a                                      beq #0x636834
006365c8  28 c0 9d e5                                      ldr ip, [sp, #0x28]
006365cc  40 20 9d e5                                      ldr r2, [sp, #0x40]
006365d0  02 00 a0 e3                                      mov r0, #2
006365d4  2c 30 9c e5                                      ldr r3, [ip, #0x2c]
006365d8  0b 10 a0 e1                                      mov r1, fp
006365dc  04 70 89 e0                                      add r7, sb, r4
006365e0  06 50 83 e0                                      add r5, r3, r6
006365e4  0c c0 95 e5                                      ldr ip, [r5, #0xc]
006365e8  01 00 5c e3                                      cmp ip, #1
006365ec  01 00 00 da                                      ble #0x6365f8
006365f0  06 30 93 e7                                      ldr r3, [r3, r6]
006365f4  8e 52 ff eb                                      bl #0x60b034
006365f8  34 00 9d e5                                      ldr r0, [sp, #0x34]
006365fc  00 00 50 e3                                      cmp r0, #0
00636600  e8 ff ff 1a                                      bne #0x6365a8
00636604  00 10 95 e5                                      ldr r1, [r5]
00636608  24 00 9d e5                                      ldr r0, [sp, #0x24]
0063660c  51 ed ff eb                                      bl #0x631b58
00636610  04 70 89 e0                                      add r7, sb, r4
00636614  04 00 89 e7                                      str r0, [sb, r4]
00636618  00 30 97 e5                                      ldr r3, [r7]
0063661c  01 80 88 e2                                      add r8, r8, #1
00636620  18 60 86 e2                                      add r6, r6, #0x18
00636624  00 00 53 e3                                      cmp r3, #0
00636628  e3 ff ff 1a                                      bne #0x6365bc
0063662c  10 30 95 e5                                      ldr r3, [r5, #0x10]
00636630  08 20 95 e5                                      ldr r2, [r5, #8]
00636634  24 00 9d e5                                      ldr r0, [sp, #0x24]
00636638  00 30 93 e5                                      ldr r3, [r3]
0063663c  00 10 95 e5                                      ldr r1, [r5]
00636640  82 ed ff eb                                      bl #0x631c50
00636644  00 00 87 e5                                      str r0, [r7]
00636648  db ff ff ea                                      b #0x6365bc
0063664c  30 00 9d e5                                      ldr r0, [sp, #0x30]
00636650  34 20 9d e5                                      ldr r2, [sp, #0x34]
00636654  48 10 9d e5                                      ldr r1, [sp, #0x48]
00636658  01 00 80 e2                                      add r0, r0, #1
0063665c  74 20 82 e2                                      add r2, r2, #0x74
00636660  01 00 50 e1                                      cmp r0, r1
00636664  30 00 8d e5                                      str r0, [sp, #0x30]
00636668  34 20 8d e5                                      str r2, [sp, #0x34]
0063666c  8e 00 00 1a                                      bne #0x6368ac
00636670  50 30 9d e5                                      ldr r3, [sp, #0x50]
00636674  58 00 9d e5                                      ldr r0, [sp, #0x58]
00636678  5c c0 9d e5                                      ldr ip, [sp, #0x5c]
0063667c  01 30 83 e2                                      add r3, r3, #1
00636680  0c 00 80 e2                                      add r0, r0, #0xc
00636684  0c 00 53 e1                                      cmp r3, ip
00636688  50 30 8d e5                                      str r3, [sp, #0x50]
0063668c  58 00 8d e5                                      str r0, [sp, #0x58]
00636690  6f 00 00 1a                                      bne #0x636854
00636694  60 10 9d e5                                      ldr r1, [sp, #0x60]
00636698  d0 30 9d e5                                      ldr r3, [sp, #0xd0]
0063669c  00 20 a0 e3                                      mov r2, #0
006366a0  00 10 91 e5                                      ldr r1, [r1]
006366a4  34 20 8d e5                                      str r2, [sp, #0x34]
006366a8  01 00 53 e1                                      cmp r3, r1
006366ac  60 10 8d e5                                      str r1, [sp, #0x60]
006366b0  19 ff ff 1a                                      bne #0x63631c
006366b4  24 00 9d e5                                      ldr r0, [sp, #0x24]
006366b8  bd 9d fe eb                                      bl #0x5dddb4
006366bc  24 c0 9d e5                                      ldr ip, [sp, #0x24]
006366c0  18 30 9c e5                                      ldr r3, [ip, #0x18]
006366c4  1c 20 9c e5                                      ldr r2, [ip, #0x1c]
006366c8  02 20 63 e0                                      rsb r2, r3, r2
006366cc  c2 01 50 e1                                      cmp r0, r2, asr #3
006366d0  80 31 83 30                                      addlo r3, r3, r0, lsl #3
006366d4  02 00 00 3a                                      blo #0x6366e4
006366d8  84 34 9f e5                                      ldr r3, [pc, #0x484]
006366dc  68 00 9d e5                                      ldr r0, [sp, #0x68]
006366e0  03 30 90 e7                                      ldr r3, [r0, r3]
006366e4  00 30 93 e5                                      ldr r3, [r3]
006366e8  00 00 53 e3                                      cmp r3, #0
006366ec  98 30 8d e5                                      str r3, [sp, #0x98]
006366f0  00 20 93 15                                      ldrne r2, [r3]
006366f4  01 20 82 12                                      addne r2, r2, #1
006366f8  00 20 83 15                                      strne r2, [r3]
006366fc  70 10 9d e5                                      ldr r1, [sp, #0x70]
00636700  00 00 51 e3                                      cmp r1, #0
00636704  e6 00 00 0a                                      beq #0x636aa4
00636708  98 b0 9d e5                                      ldr fp, [sp, #0x98]
0063670c  00 00 5b e3                                      cmp fp, #0
00636710  fd 00 00 0a                                      beq #0x636b0c
00636714  d0 20 9d e5                                      ldr r2, [sp, #0xd0]
00636718  d0 c0 9d e5                                      ldr ip, [sp, #0xd0]
0063671c  00 20 92 e5                                      ldr r2, [r2]
00636720  1c 20 8d e5                                      str r2, [sp, #0x1c]
00636724  be 30 db e1                                      ldrh r3, [fp, #0xe]
00636728  02 00 5c e1                                      cmp ip, r2
0063672c  14 30 8d e5                                      str r3, [sp, #0x14]
00636730  03 01 00 0a                                      beq #0x636b44
00636734  98 00 8d e2                                      add r0, sp, #0x98
00636738  00 60 a0 e3                                      mov r6, #0
0063673c  10 00 8d e5                                      str r0, [sp, #0x10]
00636740  05 00 00 ea                                      b #0x63675c
00636744  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00636748  d0 20 9d e5                                      ldr r2, [sp, #0xd0]
0063674c  00 10 91 e5                                      ldr r1, [r1]
00636750  01 00 52 e1                                      cmp r2, r1
00636754  1c 10 8d e5                                      str r1, [sp, #0x1c]
00636758  f4 00 00 0a                                      beq #0x636b30
0063675c  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00636760  14 20 9d e5                                      ldr r2, [sp, #0x14]
00636764  10 10 91 e5                                      ldr r1, [r1, #0x10]
00636768  02 00 56 e1                                      cmp r6, r2
0063676c  18 10 8d e5                                      str r1, [sp, #0x18]
00636770  28 50 91 e5                                      ldr r5, [r1, #0x28]
00636774  f2 ff ff 2a                                      bhs #0x636744
00636778  00 40 a0 e3                                      mov r4, #0
0063677c  be 30 db e1                                      ldrh r3, [fp, #0xe]
00636780  06 00 53 e1                                      cmp r3, r6
00636784  20 30 9b 85                                      ldrhi r3, [fp, #0x20]
00636788  00 30 a0 93                                      movls r3, #0
0063678c  06 32 83 80                                      addhi r3, r3, r6, lsl #4
00636790  05 00 54 e1                                      cmp r4, r5
00636794  ea ff ff aa                                      bge #0x636744
00636798  00 a0 93 e5                                      ldr sl, [r3]
0063679c  18 30 9d e5                                      ldr r3, [sp, #0x18]
006367a0  18 c0 a0 e3                                      mov ip, #0x18
006367a4  9c 04 07 e0                                      mul r7, ip, r4
006367a8  2c 80 93 e5                                      ldr r8, [r3, #0x2c]
006367ac  00 00 5a e3                                      cmp sl, #0
006367b0  04 90 8a e2                                      add sb, sl, #4
006367b4  09 10 a0 11                                      movne r1, sb
006367b8  00 10 a0 03                                      moveq r1, #0
006367bc  07 00 98 e7                                      ldr r0, [r8, r7]
006367c0  d5 5e f3 eb                                      bl #0x30e31c
006367c4  00 00 50 e3                                      cmp r0, #0
006367c8  07 20 88 e0                                      add r2, r8, r7
006367cc  0b 00 00 0a                                      beq #0x636800
006367d0  01 40 84 e2                                      add r4, r4, #1
006367d4  05 00 54 e1                                      cmp r4, r5
006367d8  18 70 87 e2                                      add r7, r7, #0x18
006367dc  d8 ff ff 0a                                      beq #0x636744
006367e0  00 00 5a e3                                      cmp sl, #0
006367e4  09 10 a0 11                                      movne r1, sb
006367e8  00 10 a0 03                                      moveq r1, #0
006367ec  07 00 98 e7                                      ldr r0, [r8, r7]
006367f0  c9 5e f3 eb                                      bl #0x30e31c
006367f4  00 00 50 e3                                      cmp r0, #0
006367f8  07 20 88 e0                                      add r2, r8, r7
006367fc  f3 ff ff 1a                                      bne #0x6367d0
00636800  04 00 55 e1                                      cmp r5, r4
00636804  ce ff ff da                                      ble #0x636744
00636808  06 10 a0 e1                                      mov r1, r6
0063680c  10 00 9d e5                                      ldr r0, [sp, #0x10]
00636810  d4 30 9d e5                                      ldr r3, [sp, #0xd4]
00636814  2a ef ff eb                                      bl #0x6324c4
00636818  14 00 9d e5                                      ldr r0, [sp, #0x14]
0063681c  01 60 86 e2                                      add r6, r6, #1
00636820  76 60 ff e6                                      uxth r6, r6
00636824  00 00 56 e1                                      cmp r6, r0
00636828  9b 00 00 2a                                      bhs #0x636a9c
0063682c  98 b0 9d e5                                      ldr fp, [sp, #0x98]
00636830  d1 ff ff ea                                      b #0x63677c
00636834  28 10 9d e5                                      ldr r1, [sp, #0x28]
00636838  20 10 91 e5                                      ldr r1, [r1, #0x20]
0063683c  00 00 51 e3                                      cmp r1, #0
00636840  5c 10 8d e5                                      str r1, [sp, #0x5c]
00636844  92 ff ff da                                      ble #0x636694
00636848  00 20 a0 e3                                      mov r2, #0
0063684c  58 20 8d e5                                      str r2, [sp, #0x58]
00636850  50 20 8d e5                                      str r2, [sp, #0x50]
00636854  50 30 9d e5                                      ldr r3, [sp, #0x50]
00636858  54 c0 9d e5                                      ldr ip, [sp, #0x54]
0063685c  03 11 9c e7                                      ldr r1, [ip, r3, lsl #2]
00636860  03 01 8c e0                                      add r0, ip, r3, lsl #2
00636864  20 00 8d e5                                      str r0, [sp, #0x20]
00636868  00 00 51 e3                                      cmp r1, #0
0063686c  7f ff ff 0a                                      beq #0x636670
00636870  24 00 9d e5                                      ldr r0, [sp, #0x24]
00636874  1e 85 fe eb                                      bl #0x5d7cf4
00636878  28 10 9d e5                                      ldr r1, [sp, #0x28]
0063687c  58 20 9d e5                                      ldr r2, [sp, #0x58]
00636880  00 b0 a0 e1                                      mov fp, r0
00636884  24 30 91 e5                                      ldr r3, [r1, #0x24]
00636888  02 30 83 e0                                      add r3, r3, r2
0063688c  38 30 8d e5                                      str r3, [sp, #0x38]
00636890  04 30 93 e5                                      ldr r3, [r3, #4]
00636894  00 00 53 e3                                      cmp r3, #0
00636898  48 30 8d e5                                      str r3, [sp, #0x48]
0063689c  73 ff ff da                                      ble #0x636670
006368a0  00 c0 a0 e3                                      mov ip, #0
006368a4  34 c0 8d e5                                      str ip, [sp, #0x34]
006368a8  30 c0 8d e5                                      str ip, [sp, #0x30]
006368ac  38 00 9d e5                                      ldr r0, [sp, #0x38]
006368b0  34 10 9d e5                                      ldr r1, [sp, #0x34]
006368b4  08 30 90 e5                                      ldr r3, [r0, #8]
006368b8  01 30 83 e0                                      add r3, r3, r1
006368bc  14 30 8d e5                                      str r3, [sp, #0x14]
006368c0  6c 20 93 e5                                      ldr r2, [r3, #0x6c]
006368c4  00 00 52 e3                                      cmp r2, #0
006368c8  10 20 8d e5                                      str r2, [sp, #0x10]
006368cc  5e ff ff da                                      ble #0x63664c
006368d0  30 30 9d e5                                      ldr r3, [sp, #0x30]
006368d4  34 c0 a0 e3                                      mov ip, #0x34
006368d8  00 40 a0 e3                                      mov r4, #0
006368dc  73 30 ef e6                                      uxtb r3, r3
006368e0  9c 03 0c e0                                      mul ip, ip, r3
006368e4  1c 30 8d e5                                      str r3, [sp, #0x1c]
006368e8  18 c0 8d e5                                      str ip, [sp, #0x18]
006368ec  04 a0 a0 e1                                      mov sl, r4
006368f0  0c 00 00 ea                                      b #0x636928
006368f4  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
006368f8  03 11 90 e7                                      ldr r1, [r0, r3, lsl #2]
006368fc  20 30 9d e5                                      ldr r3, [sp, #0x20]
00636900  24 00 9d e5                                      ldr r0, [sp, #0x24]
00636904  00 20 93 e5                                      ldr r2, [r3]
00636908  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0063690c  40 01 8d e8                                      stm sp, {r6, r8}
00636910  ab ec ff eb                                      bl #0x631bc4
00636914  10 c0 9d e5                                      ldr ip, [sp, #0x10]
00636918  01 a0 8a e2                                      add sl, sl, #1
0063691c  0c 40 84 e2                                      add r4, r4, #0xc
00636920  0c 00 5a e1                                      cmp sl, ip
00636924  48 ff ff 0a                                      beq #0x63664c
00636928  14 00 9d e5                                      ldr r0, [sp, #0x14]
0063692c  18 10 9d e5                                      ldr r1, [sp, #0x18]
00636930  08 20 9b e5                                      ldr r2, [fp, #8]
00636934  70 70 90 e5                                      ldr r7, [r0, #0x70]
00636938  00 30 a0 e3                                      mov r3, #0
0063693c  01 20 82 e0                                      add r2, r2, r1
00636940  04 50 87 e0                                      add r5, r7, r4
00636944  20 90 92 e5                                      ldr sb, [r2, #0x20]
00636948  05 80 d5 e5                                      ldrb r8, [r5, #5]
0063694c  04 10 97 e7                                      ldr r1, [r7, r4]
00636950  09 00 a0 e1                                      mov r0, sb
00636954  08 20 a0 e1                                      mov r2, r8
00636958  85 b8 fe eb                                      bl #0x5e4b74
0063695c  ff 2f 0f e3                                      movw r2, #0xffff
00636960  02 00 50 e1                                      cmp r0, r2
00636964  00 60 a0 e1                                      mov r6, r0
00636968  18 00 00 0a                                      beq #0x6369d0
0063696c  04 30 d5 e5                                      ldrb r3, [r5, #4]
00636970  01 00 53 e3                                      cmp r3, #1
00636974  1e 00 00 0a                                      beq #0x6369f4
00636978  28 c0 9d e5                                      ldr ip, [sp, #0x28]
0063697c  08 30 95 e5                                      ldr r3, [r5, #8]
00636980  18 00 a0 e3                                      mov r0, #0x18
00636984  2c 20 9c e5                                      ldr r2, [ip, #0x2c]
00636988  90 23 22 e0                                      mla r2, r0, r3, r2
0063698c  04 20 92 e5                                      ldr r2, [r2, #4]
00636990  11 00 52 e3                                      cmp r2, #0x11
00636994  d6 ff ff 1a                                      bne #0x6368f4
00636998  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
0063699c  05 20 88 e2                                      add r2, r8, #5
006369a0  82 21 99 e7                                      ldr r2, [sb, r2, lsl #3]
006369a4  20 00 9d e5                                      ldr r0, [sp, #0x20]
006369a8  03 11 9c e7                                      ldr r1, [ip, r3, lsl #2]
006369ac  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
006369b0  06 22 82 e0                                      add r2, r2, r6, lsl #4
006369b4  00 30 90 e5                                      ldr r3, [r0]
006369b8  b4 20 d2 e1                                      ldrh r2, [r2, #4]
006369bc  24 00 9d e5                                      ldr r0, [sp, #0x24]
006369c0  40 01 8d e9                                      stmib sp, {r6, r8}
006369c4  00 c0 8d e5                                      str ip, [sp]
006369c8  9b 8f fe eb                                      bl #0x5da83c
006369cc  d0 ff ff ea                                      b #0x636914
006369d0  38 c0 9d e5                                      ldr ip, [sp, #0x38]
006369d4  03 00 a0 e3                                      mov r0, #3
006369d8  44 10 9d e5                                      ldr r1, [sp, #0x44]
006369dc  00 30 9c e5                                      ldr r3, [ip]
006369e0  04 c0 97 e7                                      ldr ip, [r7, r4]
006369e4  40 20 9d e5                                      ldr r2, [sp, #0x40]
006369e8  00 c0 8d e5                                      str ip, [sp]
006369ec  90 51 ff eb                                      bl #0x60b034
006369f0  c7 ff ff ea                                      b #0x636914
006369f4  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
006369f8  e4 00 91 e5                                      ldr r0, [r1, #0xe4]
006369fc  08 10 95 e5                                      ldr r1, [r5, #8]
00636a00  5c 12 fe eb                                      bl #0x5bb378
00636a04  ff 2f 0f e3                                      movw r2, #0xffff
00636a08  02 00 50 e1                                      cmp r0, r2
00636a0c  07 00 00 0a                                      beq #0x636a30
00636a10  20 10 9d e5                                      ldr r1, [sp, #0x20]
00636a14  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00636a18  00 20 91 e5                                      ldr r2, [r1]
00636a1c  00 10 a0 e1                                      mov r1, r0
00636a20  24 00 9d e5                                      ldr r0, [sp, #0x24]
00636a24  40 01 8d e8                                      stm sp, {r6, r8}
00636a28  30 8f fe eb                                      bl #0x5da6f0
00636a2c  b8 ff ff ea                                      b #0x636914
00636a30  05 30 88 e2                                      add r3, r8, #5
00636a34  83 31 99 e7                                      ldr r3, [sb, r3, lsl #3]
00636a38  06 32 83 e0                                      add r3, r3, r6, lsl #4
00636a3c  b4 20 d3 e1                                      ldrh r2, [r3, #4]
00636a40  12 00 52 e3                                      cmp r2, #0x12
00636a44  0d 00 00 da                                      ble #0x636a80
00636a48  1b 00 52 e3                                      cmp r2, #0x1b
00636a4c  0b 00 00 ca                                      bgt #0x636a80
00636a50  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
00636a54  08 10 95 e5                                      ldr r1, [r5, #8]
00636a58  12 20 a0 e3                                      mov r2, #0x12
00636a5c  e4 00 9c e5                                      ldr r0, [ip, #0xe4]
00636a60  02 e0 a0 e1                                      mov lr, r2
00636a64  08 c0 93 e5                                      ldr ip, [r3, #8]
00636a68  00 c0 8d e5                                      str ip, [sp]
00636a6c  07 c0 d3 e5                                      ldrb ip, [r3, #7]
00636a70  0e 30 a0 e1                                      mov r3, lr
00636a74  04 c0 8d e5                                      str ip, [sp, #4]
00636a78  3d 16 fe eb                                      bl #0x5bc374
00636a7c  e3 ff ff ea                                      b #0x636a10
00636a80  12 00 52 e3                                      cmp r2, #0x12
00636a84  f1 ff ff 0a                                      beq #0x636a50
00636a88  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
00636a8c  08 10 95 e5                                      ldr r1, [r5, #8]
00636a90  06 e0 d3 e5                                      ldrb lr, [r3, #6]
00636a94  e4 00 9c e5                                      ldr r0, [ip, #0xe4]
00636a98  f1 ff ff ea                                      b #0x636a64
00636a9c  98 b0 9d e5                                      ldr fp, [sp, #0x98]
00636aa0  27 ff ff ea                                      b #0x636744
00636aa4  98 b0 9d e5                                      ldr fp, [sp, #0x98]
00636aa8  00 00 5b e3                                      cmp fp, #0
00636aac  16 00 00 0a                                      beq #0x636b0c
00636ab0  64 00 9d e5                                      ldr r0, [sp, #0x64]
00636ab4  98 10 8d e2                                      add r1, sp, #0x98
00636ab8  00 b0 80 e5                                      str fp, [r0]
00636abc  10 10 8d e5                                      str r1, [sp, #0x10]
00636ac0  00 30 9b e5                                      ldr r3, [fp]
00636ac4  01 30 83 e2                                      add r3, r3, #1
00636ac8  00 30 8b e5                                      str r3, [fp]
00636acc  10 00 9d e5                                      ldr r0, [sp, #0x10]
00636ad0  f8 6d f4 eb                                      bl #0x3522b8
00636ad4  54 00 9d e5                                      ldr r0, [sp, #0x54]
00636ad8  00 00 50 e3                                      cmp r0, #0
00636adc  00 00 00 0a                                      beq #0x636ae4
00636ae0  e8 f6 fb eb                                      bl #0x534688
00636ae4  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
00636ae8  00 00 51 e3                                      cmp r1, #0
00636aec  01 00 00 0a                                      beq #0x636af8
00636af0  01 00 a0 e1                                      mov r0, r1
00636af4  e3 f6 fb eb                                      bl #0x534688
00636af8  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
00636afc  d9 f5 fb eb                                      bl #0x534268
00636b00  64 00 9d e5                                      ldr r0, [sp, #0x64]
00636b04  ac d0 8d e2                                      add sp, sp, #0xac
00636b08  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00636b0c  54 10 9f e5                                      ldr r1, [pc, #0x54]
00636b10  40 20 9d e5                                      ldr r2, [sp, #0x40]
00636b14  03 00 a0 e3                                      mov r0, #3
00636b18  01 10 8f e0                                      add r1, pc, r1
00636b1c  44 51 ff eb                                      bl #0x60b034
00636b20  a8 30 8d e2                                      add r3, sp, #0xa8
00636b24  10 30 8d e5                                      str r3, [sp, #0x10]
00636b28  10 b0 33 e5                                      ldr fp, [r3, #-0x10]!
00636b2c  10 30 8d e5                                      str r3, [sp, #0x10]
00636b30  64 c0 9d e5                                      ldr ip, [sp, #0x64]
00636b34  00 00 5b e3                                      cmp fp, #0
00636b38  00 b0 8c e5                                      str fp, [ip]
00636b3c  df ff ff 1a                                      bne #0x636ac0
00636b40  e1 ff ff ea                                      b #0x636acc
00636b44  64 20 9d e5                                      ldr r2, [sp, #0x64]
00636b48  98 30 8d e2                                      add r3, sp, #0x98
00636b4c  00 b0 82 e5                                      str fp, [r2]
00636b50  10 30 8d e5                                      str r3, [sp, #0x10]
00636b54  d9 ff ff ea                                      b #0x636ac0
; mapping-symbol data/literal pool
00636b58  7c e8 35 00 10 ed 2a 00 cc ec 2a 00 dc 30 00 00  .byte 0x7c, 0xe8, 0x35, 0x00, 0x10, 0xed, 0x2a, 0x00, 0xcc, 0xec, 0x2a, 0x00, 0xdc, 0x30, 0x00, 0x00
00636b68  18 e5 2a 00                                      .byte 0x18, 0xe5, 0x2a, 0x00

; PACKAGE FUNCTION set_material
; ELF VA 0x005ad368, range_size=588, SHA-256=34c84934214549d3739fb6de51f5502828b0de0bfce586c053e3c9814a14702a
; Original assembly source glitch_video_IVideoDriver-128257112762-001.asm lines 3768-3920
; FUNCTION 0x005ad368, declared_size=588, range_size=588, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver11setMaterialERKN5boost13intrusive_ptrINS0_9CMaterialEEEhPKNS3_INS0_19CVertexAttributeMapEEE
; demangled: glitch::video::IVideoDriver::setMaterial(boost::intrusive_ptr<glitch::video::CMaterial> const&, unsigned char, boost::intrusive_ptr<glitch::video::CVertexAttributeMap> const*)
; decoder-mode: arm
005ad368  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005ad36c  00 40 a0 e1                                      mov r4, r0
005ad370  88 00 90 e5                                      ldr r0, [r0, #0x88]
005ad374  02 50 a0 e1                                      mov r5, r2
005ad378  08 d0 4d e2                                      sub sp, sp, #8
005ad37c  01 2c 10 e2                                      ands r2, r0, #0x100
005ad380  01 60 a0 e1                                      mov r6, r1
005ad384  03 70 a0 e1                                      mov r7, r3
005ad388  00 80 91 e5                                      ldr r8, [r1]
005ad38c  52 00 00 0a                                      beq #0x5ad4dc
005ad390  00 00 58 e3                                      cmp r8, #0
005ad394  02 00 00 0a                                      beq #0x5ad3a4
005ad398  30 a1 94 e5                                      ldr sl, [r4, #0x130]
005ad39c  08 00 5a e1                                      cmp sl, r8
005ad3a0  73 00 00 0a                                      beq #0x5ad574
005ad3a4  00 80 a0 e3                                      mov r8, #0
005ad3a8  28 01 94 e5                                      ldr r0, [r4, #0x128]
005ad3ac  00 00 50 e3                                      cmp r0, #0
005ad3b0  7a 00 00 0a                                      beq #0x5ad5a0
005ad3b4  00 00 58 e3                                      cmp r8, #0
005ad3b8  53 00 00 1a                                      bne #0x5ad50c
005ad3bc  00 20 96 e5                                      ldr r2, [r6]
005ad3c0  00 30 90 e5                                      ldr r3, [r0]
005ad3c4  00 00 52 e3                                      cmp r2, #0
005ad3c8  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
005ad3cc  04 20 8d e5                                      str r2, [sp, #4]
005ad3d0  00 10 92 15                                      ldrne r1, [r2]
005ad3d4  01 10 81 12                                      addne r1, r1, #1
005ad3d8  00 10 82 15                                      strne r1, [r2]
005ad3dc  04 10 8d e2                                      add r1, sp, #4
005ad3e0  05 20 a0 e1                                      mov r2, r5
005ad3e4  33 ff 2f e1                                      blx r3
005ad3e8  04 a0 9d e5                                      ldr sl, [sp, #4]
005ad3ec  01 00 20 e2                                      eor r0, r0, #1
005ad3f0  70 90 ef e6                                      uxtb sb, r0
005ad3f4  00 00 5a e3                                      cmp sl, #0
005ad3f8  08 00 00 0a                                      beq #0x5ad420
005ad3fc  00 30 9a e5                                      ldr r3, [sl]
005ad400  01 30 43 e2                                      sub r3, r3, #1
005ad404  00 00 53 e3                                      cmp r3, #0
005ad408  00 30 8a e5                                      str r3, [sl]
005ad40c  03 00 00 1a                                      bne #0x5ad420
005ad410  0a 00 a0 e1                                      mov r0, sl
005ad414  d7 7a 00 eb                                      bl #0x5cbf78
005ad418  0a 00 a0 e1                                      mov r0, sl
005ad41c  a3 83 f5 eb                                      bl #0x30e2b0
005ad420  00 00 59 e3                                      cmp sb, #0
005ad424  38 00 00 0a                                      beq #0x5ad50c
005ad428  04 00 a0 e1                                      mov r0, r4
005ad42c  00 30 94 e5                                      ldr r3, [r4]
005ad430  0f e0 a0 e1                                      mov lr, pc
005ad434  fc f1 93 e5                                      ldr pc, [r3, #0x1fc]
005ad438  04 00 a0 e1                                      mov r0, r4
005ad43c  06 10 a0 e1                                      mov r1, r6
005ad440  05 20 a0 e1                                      mov r2, r5
005ad444  44 ff ff eb                                      bl #0x5ad15c
005ad448  2c 01 94 e5                                      ldr r0, [r4, #0x12c]
005ad44c  00 00 50 e3                                      cmp r0, #0
005ad450  07 00 00 0a                                      beq #0x5ad474
005ad454  c7 7a 00 eb                                      bl #0x5cbf78
005ad458  2c 01 94 e5                                      ldr r0, [r4, #0x12c]
005ad45c  89 1c fe eb                                      bl #0x534688
005ad460  00 30 a0 e3                                      mov r3, #0
005ad464  00 20 e0 e3                                      mvn r2, #0
005ad468  30 31 84 e5                                      str r3, [r4, #0x130]
005ad46c  34 21 c4 e5                                      strb r2, [r4, #0x134]
005ad470  2c 31 84 e5                                      str r3, [r4, #0x12c]
005ad474  00 00 96 e5                                      ldr r0, [r6]
005ad478  00 00 50 e3                                      cmp r0, #0
005ad47c  36 00 00 0a                                      beq #0x5ad55c
005ad480  00 10 a0 e3                                      mov r1, #0
005ad484  60 7a 00 eb                                      bl #0x5cbe0c
005ad488  2c 01 84 e5                                      str r0, [r4, #0x12c]
005ad48c  00 30 96 e5                                      ldr r3, [r6]
005ad490  34 51 c4 e5                                      strb r5, [r4, #0x134]
005ad494  05 10 a0 e1                                      mov r1, r5
005ad498  30 31 84 e5                                      str r3, [r4, #0x130]
005ad49c  00 00 96 e5                                      ldr r0, [r6]
005ad4a0  00 f4 ff eb                                      bl #0x5aa4a8
005ad4a4  38 31 94 e5                                      ldr r3, [r4, #0x138]
005ad4a8  24 81 94 e5                                      ldr r8, [r4, #0x124]
005ad4ac  00 50 a0 e3                                      mov r5, #0
005ad4b0  08 30 c3 e3                                      bic r3, r3, #8
005ad4b4  38 31 84 e5                                      str r3, [r4, #0x138]
005ad4b8  00 00 58 e3                                      cmp r8, #0
005ad4bc  0d 00 00 0a                                      beq #0x5ad4f8
005ad4c0  04 00 a0 e1                                      mov r0, r4
005ad4c4  08 10 a0 e1                                      mov r1, r8
005ad4c8  05 20 a0 e1                                      mov r2, r5
005ad4cc  07 30 a0 e1                                      mov r3, r7
005ad4d0  11 f4 ff eb                                      bl #0x5aa51c
005ad4d4  08 d0 8d e2                                      add sp, sp, #8
005ad4d8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005ad4dc  28 01 94 e5                                      ldr r0, [r4, #0x128]
005ad4e0  28 21 84 e5                                      str r2, [r4, #0x128]
005ad4e4  00 00 50 e3                                      cmp r0, #0
005ad4e8  f2 ff ff 0a                                      beq #0x5ad4b8
005ad4ec  24 c0 f5 eb                                      bl #0x31d584
005ad4f0  00 00 58 e3                                      cmp r8, #0
005ad4f4  f1 ff ff 1a                                      bne #0x5ad4c0
005ad4f8  00 30 e0 e3                                      mvn r3, #0
005ad4fc  e8 70 84 e5                                      str r7, [r4, #0xe8]
005ad500  ec 80 84 e5                                      str r8, [r4, #0xec]
005ad504  f8 30 c4 e5                                      strb r3, [r4, #0xf8]
005ad508  f1 ff ff ea                                      b #0x5ad4d4
005ad50c  38 31 94 e5                                      ldr r3, [r4, #0x138]
005ad510  08 00 13 e3                                      tst r3, #8
005ad514  0e 00 00 0a                                      beq #0x5ad554
005ad518  28 01 94 e5                                      ldr r0, [r4, #0x128]
005ad51c  20 21 94 e5                                      ldr r2, [r4, #0x120]
005ad520  00 30 90 e5                                      ldr r3, [r0]
005ad524  00 00 52 e3                                      cmp r2, #0
005ad528  18 30 93 e5                                      ldr r3, [r3, #0x18]
005ad52c  00 20 8d e5                                      str r2, [sp]
005ad530  04 10 92 15                                      ldrne r1, [r2, #4]
005ad534  01 10 81 12                                      addne r1, r1, #1
005ad538  04 10 82 15                                      strne r1, [r2, #4]
005ad53c  0d 10 a0 e1                                      mov r1, sp
005ad540  33 ff 2f e1                                      blx r3
005ad544  00 00 9d e5                                      ldr r0, [sp]
005ad548  00 00 50 e3                                      cmp r0, #0
005ad54c  00 00 00 0a                                      beq #0x5ad554
005ad550  0b c0 f5 eb                                      bl #0x31d584
005ad554  00 00 58 e3                                      cmp r8, #0
005ad558  ba ff ff 0a                                      beq #0x5ad448
005ad55c  38 31 94 e5                                      ldr r3, [r4, #0x138]
005ad560  24 81 94 e5                                      ldr r8, [r4, #0x124]
005ad564  00 50 a0 e3                                      mov r5, #0
005ad568  08 30 c3 e3                                      bic r3, r3, #8
005ad56c  38 31 84 e5                                      str r3, [r4, #0x138]
005ad570  d0 ff ff ea                                      b #0x5ad4b8
005ad574  0a 00 a0 e1                                      mov r0, sl
005ad578  ed 61 00 eb                                      bl #0x5c5d34
005ad57c  0c 30 9a e5                                      ldr r3, [sl, #0xc]
005ad580  33 30 a0 e1                                      lsr r3, r3, r0
005ad584  01 00 13 e3                                      tst r3, #1
005ad588  85 ff ff 1a                                      bne #0x5ad3a4
005ad58c  f8 30 d4 e5                                      ldrb r3, [r4, #0xf8]
005ad590  05 00 53 e1                                      cmp r3, r5
005ad594  82 ff ff 1a                                      bne #0x5ad3a4
005ad598  01 80 a0 e3                                      mov r8, #1
005ad59c  81 ff ff ea                                      b #0x5ad3a8
005ad5a0  04 00 a0 e1                                      mov r0, r4
005ad5a4  06 10 a0 e1                                      mov r1, r6
005ad5a8  05 20 a0 e1                                      mov r2, r5
005ad5ac  ea fe ff eb                                      bl #0x5ad15c
005ad5b0  e7 ff ff ea                                      b #0x5ad554

; PACKAGE FUNCTION set_material_internal
; ELF VA 0x005aa51c, range_size=220, SHA-256=61cffa8bfcae6766058f463220ebcc872577b9a6fd0c54a0649e2467eac0ecf3
; Original assembly source glitch_video_IVideoDriver-128257112762-001.asm lines 1279-1339
; FUNCTION 0x005aa51c, declared_size=220, range_size=220, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver19setMaterialInternalEPNS0_9CMaterialEhPKN5boost13intrusive_ptrINS0_19CVertexAttributeMapEEE
; demangled: glitch::video::IVideoDriver::setMaterialInternal(glitch::video::CMaterial*, unsigned char, boost::intrusive_ptr<glitch::video::CVertexAttributeMap> const*)
; decoder-mode: arm
005aa51c  10 40 2d e9                                      push {r4, lr}
005aa520  00 40 a0 e1                                      mov r4, r0
005aa524  f0 00 90 e5                                      ldr r0, [r0, #0xf0]
005aa528  08 d0 4d e2                                      sub sp, sp, #8
005aa52c  e8 30 84 e5                                      str r3, [r4, #0xe8]
005aa530  00 00 51 e1                                      cmp r1, r0
005aa534  ec 10 84 e5                                      str r1, [r4, #0xec]
005aa538  f8 20 c4 e5                                      strb r2, [r4, #0xf8]
005aa53c  0e 00 00 0a                                      beq #0x5aa57c
005aa540  00 30 94 e5                                      ldr r3, [r4]
005aa544  04 00 a0 e1                                      mov r0, r4
005aa548  04 10 8d e5                                      str r1, [sp, #4]
005aa54c  00 20 8d e5                                      str r2, [sp]
005aa550  0f e0 a0 e1                                      mov lr, pc
005aa554  08 f2 93 e5                                      ldr pc, [r3, #0x208]
005aa558  04 10 9d e5                                      ldr r1, [sp, #4]
005aa55c  ec 00 94 e5                                      ldr r0, [r4, #0xec]
005aa560  f0 10 84 e5                                      str r1, [r4, #0xf0]
005aa564  00 20 9d e5                                      ldr r2, [sp]
005aa568  f8 10 d4 e5                                      ldrb r1, [r4, #0xf8]
005aa56c  f9 20 c4 e5                                      strb r2, [r4, #0xf9]
005aa570  08 d0 8d e2                                      add sp, sp, #8
005aa574  10 40 bd e8                                      pop {r4, lr}
005aa578  ca ff ff ea                                      b #0x5aa4a8
005aa57c  01 00 a0 e1                                      mov r0, r1
005aa580  04 10 8d e5                                      str r1, [sp, #4]
005aa584  00 20 8d e5                                      str r2, [sp]
005aa588  e9 6d 00 eb                                      bl #0x5c5d34
005aa58c  04 10 9d e5                                      ldr r1, [sp, #4]
005aa590  00 20 9d e5                                      ldr r2, [sp]
005aa594  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005aa598  33 30 a0 e1                                      lsr r3, r3, r0
005aa59c  01 00 13 e3                                      tst r3, #1
005aa5a0  e6 ff ff 1a                                      bne #0x5aa540
005aa5a4  f9 00 d4 e5                                      ldrb r0, [r4, #0xf9]
005aa5a8  02 00 50 e1                                      cmp r0, r2
005aa5ac  e3 ff ff 1a                                      bne #0x5aa540
005aa5b0  04 10 91 e5                                      ldr r1, [r1, #4]
005aa5b4  0c 20 a0 e3                                      mov r2, #0xc
005aa5b8  18 30 91 e5                                      ldr r3, [r1, #0x18]
005aa5bc  92 30 23 e0                                      mla r3, r2, r0, r3
005aa5c0  04 20 d3 e5                                      ldrb r2, [r3, #4]
005aa5c4  01 00 52 e3                                      cmp r2, #1
005aa5c8  05 00 00 9a                                      bls #0x5aa5e4
005aa5cc  04 00 a0 e1                                      mov r0, r4
005aa5d0  00 30 94 e5                                      ldr r3, [r4]
005aa5d4  0f e0 a0 e1                                      mov lr, pc
005aa5d8  0c f2 93 e5                                      ldr pc, [r3, #0x20c]
005aa5dc  08 d0 8d e2                                      add sp, sp, #8
005aa5e0  10 80 bd e8                                      pop {r4, pc}
005aa5e4  08 30 93 e5                                      ldr r3, [r3, #8]
005aa5e8  30 30 d3 e5                                      ldrb r3, [r3, #0x30]
005aa5ec  00 00 53 e3                                      cmp r3, #0
005aa5f0  f9 ff ff 0a                                      beq #0x5aa5dc
005aa5f4  f4 ff ff ea                                      b #0x5aa5cc

; PACKAGE FUNCTION commit_material_renderer
; ELF VA 0x005b739c, range_size=68, SHA-256=579322fe203168fb545b4d31ca48ddb5c983188622beafc2b828d9a2ef8dce63
; Original assembly source glitch_video_CCommonGLDriver_glitch_video_CProgrammableGLDriver_glitch_video_CGLSLShaderHa-569492699322-001.asm lines 4382-4404
; FUNCTION 0x005b739c, declared_size=68, range_size=68, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE22commitMaterialRendererEPNS0_17CMaterialRendererE
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::commitMaterialRenderer(glitch::video::CMaterialRenderer*)
; decoder-mode: arm
005b739c  70 40 2d e9                                      push {r4, r5, r6, lr}
005b73a0  f8 20 d0 e5                                      ldrb r2, [r0, #0xf8]
005b73a4  18 30 91 e5                                      ldr r3, [r1, #0x18]
005b73a8  0c 50 a0 e3                                      mov r5, #0xc
005b73ac  00 40 a0 e1                                      mov r4, r0
005b73b0  95 32 23 e0                                      mla r3, r5, r2, r3
005b73b4  01 60 a0 e1                                      mov r6, r1
005b73b8  00 10 a0 e1                                      mov r1, r0
005b73bc  08 00 93 e5                                      ldr r0, [r3, #8]
005b73c0  84 ff ff eb                                      bl #0x5b71d8
005b73c4  f8 20 d4 e5                                      ldrb r2, [r4, #0xf8]
005b73c8  18 30 96 e5                                      ldr r3, [r6, #0x18]
005b73cc  95 32 25 e0                                      mla r5, r5, r2, r3
005b73d0  00 20 a0 e3                                      mov r2, #0
005b73d4  08 30 95 e5                                      ldr r3, [r5, #8]
005b73d8  30 20 c3 e5                                      strb r2, [r3, #0x30]
005b73dc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; PACKAGE FUNCTION commit_current_material_impl
; ELF VA 0x005b74e8, range_size=172, SHA-256=48645ce24c2397c05e3c19b90479ac583f1446cd90b971d91beb58180f3e03f9
; Original assembly source glitch_video_CCommonGLDriver_glitch_video_CProgrammableGLDriver_glitch_video_CGLSLShaderHa-569492699322-001.asm lines 4405-4453
; FUNCTION 0x005b74e8, declared_size=172, range_size=172, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE25commitCurrentMaterialImplEh
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::commitCurrentMaterialImpl(unsigned char)
; decoder-mode: arm
005b74e8  70 40 2d e9                                      push {r4, r5, r6, lr}
005b74ec  00 40 a0 e1                                      mov r4, r0
005b74f0  01 50 a0 e1                                      mov r5, r1
005b74f4  05 20 a0 e1                                      mov r2, r5
005b74f8  ec 00 90 e5                                      ldr r0, [r0, #0xec]
005b74fc  f8 10 d4 e5                                      ldrb r1, [r4, #0xf8]
005b7500  04 30 a0 e1                                      mov r3, r4
005b7504  08 d0 4d e2                                      sub sp, sp, #8
005b7508  b4 ff ff eb                                      bl #0x5b73e0
005b750c  ec 30 94 e5                                      ldr r3, [r4, #0xec]
005b7510  34 10 a0 e3                                      mov r1, #0x34
005b7514  91 05 05 e0                                      mul r5, r1, r5
005b7518  04 30 93 e5                                      ldr r3, [r3, #4]
005b751c  f8 20 d4 e5                                      ldrb r2, [r4, #0xf8]
005b7520  0c 00 a0 e3                                      mov r0, #0xc
005b7524  18 10 93 e5                                      ldr r1, [r3, #0x18]
005b7528  f4 30 94 e5                                      ldr r3, [r4, #0xf4]
005b752c  90 12 22 e0                                      mla r2, r0, r2, r1
005b7530  08 20 92 e5                                      ldr r2, [r2, #8]
005b7534  05 20 82 e0                                      add r2, r2, r5
005b7538  20 60 92 e5                                      ldr r6, [r2, #0x20]
005b753c  03 00 56 e1                                      cmp r6, r3
005b7540  02 00 00 0a                                      beq #0x5b7550
005b7544  4c 00 96 e5                                      ldr r0, [r6, #0x4c]
005b7548  db 5c f5 eb                                      bl #0x30e8bc
005b754c  f4 60 84 e5                                      str r6, [r4, #0xf4]
005b7550  ec 20 94 e5                                      ldr r2, [r4, #0xec]
005b7554  f8 30 d4 e5                                      ldrb r3, [r4, #0xf8]
005b7558  0c e0 a0 e3                                      mov lr, #0xc
005b755c  04 c0 92 e5                                      ldr ip, [r2, #4]
005b7560  f4 10 94 e5                                      ldr r1, [r4, #0xf4]
005b7564  04 00 a0 e1                                      mov r0, r4
005b7568  18 c0 9c e5                                      ldr ip, [ip, #0x18]
005b756c  9e c3 23 e0                                      mla r3, lr, r3, ip
005b7570  08 30 93 e5                                      ldr r3, [r3, #8]
005b7574  05 50 83 e0                                      add r5, r3, r5
005b7578  bc c2 d5 e1                                      ldrh ip, [r5, #0x2c]
005b757c  28 30 95 e5                                      ldr r3, [r5, #0x28]
005b7580  0c c1 83 e0                                      add ip, r3, ip, lsl #2
005b7584  00 c0 8d e5                                      str ip, [sp]
005b7588  04 f6 ff eb                                      bl #0x5b4da0
005b758c  08 d0 8d e2                                      add sp, sp, #8
005b7590  70 80 bd e8                                      pop {r4, r5, r6, pc}

; PACKAGE FUNCTION submit_mesh_buffer
; ELF VA 0x0035ebd0, range_size=96, SHA-256=a3231d4e55f82fef057c82464d5b2193f4b82ed21bb1dd76b2ede928531731ec
; Original assembly source glitch_video_IVideoDriver-128257112762-001.asm lines 43-72
; FUNCTION 0x0035ebd0, declared_size=96, range_size=96, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver14drawMeshBufferERKN5boost13intrusive_ptrIKNS_5scene11CMeshBufferEEE
; demangled: glitch::video::IVideoDriver::drawMeshBuffer(boost::intrusive_ptr<glitch::scene::CMeshBuffer const> const&)
; decoder-mode: arm
0035ebd0  10 40 2d e9                                      push {r4, lr}
0035ebd4  00 20 91 e5                                      ldr r2, [r1]
0035ebd8  10 d0 4d e2                                      sub sp, sp, #0x10
0035ebdc  00 00 52 e3                                      cmp r2, #0
0035ebe0  10 00 00 0a                                      beq #0x35ec28
0035ebe4  14 30 92 e5                                      ldr r3, [r2, #0x14]
0035ebe8  00 c0 90 e5                                      ldr ip, [r0]
0035ebec  0c 40 8d e2                                      add r4, sp, #0xc
0035ebf0  00 00 53 e3                                      cmp r3, #0
0035ebf4  58 c0 9c e5                                      ldr ip, [ip, #0x58]
0035ebf8  0c 30 8d e5                                      str r3, [sp, #0xc]
0035ebfc  00 20 93 15                                      ldrne r2, [r3]
0035ec00  01 20 82 12                                      addne r2, r2, #1
0035ec04  00 20 83 15                                      strne r2, [r3]
0035ec08  00 20 91 15                                      ldrne r2, [r1]
0035ec0c  00 10 8d e5                                      str r1, [sp]
0035ec10  04 10 a0 e1                                      mov r1, r4
0035ec14  30 30 82 e2                                      add r3, r2, #0x30
0035ec18  18 20 82 e2                                      add r2, r2, #0x18
0035ec1c  3c ff 2f e1                                      blx ip
0035ec20  04 00 a0 e1                                      mov r0, r4
0035ec24  d9 ff ff eb                                      bl #0x35eb90
0035ec28  10 d0 8d e2                                      add sp, sp, #0x10
0035ec2c  10 80 bd e8                                      pop {r4, pc}

; PACKAGE FUNCTION draw_mesh_buffer_virtual
; ELF VA 0x005adfa8, range_size=56, SHA-256=8759f549895af320ff70cdb172a6bfd4a847471f05422d6ce48fee0240d3c816
; Original assembly source glitch_video_IVideoDriver-128257112762-001.asm lines 4581-4600
; FUNCTION 0x005adfa8, declared_size=56, range_size=56, mode=arm
; class-group: glitch::video::IVideoDriver
; alias: _ZN6glitch5video12IVideoDriver4drawERKN5boost13intrusive_ptrIKNS0_14CVertexStreamsEEERKNS0_16CPrimitiveStreamEPPNS0_14CDriverBindingERKNS3_IKNS_5scene11CMeshBufferEEE
; demangled: glitch::video::IVideoDriver::draw(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&, glitch::video::CPrimitiveStream const&, glitch::video::CDriverBinding**, boost::intrusive_ptr<glitch::scene::CMeshBuffer const> const&)
; decoder-mode: arm
005adfa8  10 40 2d e9                                      push {r4, lr}
005adfac  08 c0 92 e5                                      ldr ip, [r2, #8]
005adfb0  00 40 a0 e1                                      mov r4, r0
005adfb4  00 00 5c e3                                      cmp ip, #0
005adfb8  05 00 00 0a                                      beq #0x5adfd4
005adfbc  88 c0 90 e5                                      ldr ip, [r0, #0x88]
005adfc0  01 0c 1c e3                                      tst ip, #0x100
005adfc4  03 00 00 1a                                      bne #0x5adfd8
005adfc8  00 c0 90 e5                                      ldr ip, [r0]
005adfcc  0f e0 a0 e1                                      mov lr, pc
005adfd0  00 f2 9c e5                                      ldr pc, [ip, #0x200]
005adfd4  10 80 bd e8                                      pop {r4, pc}
005adfd8  10 40 bd e8                                      pop {r4, lr}
005adfdc  ef fe ff ea                                      b #0x5adba0

; PACKAGE FUNCTION gles2_driver_draw_impl
; ELF VA 0x005b8bc8, range_size=448, SHA-256=dfcb26685c696eaf6be64f6c911ed5adb7b12dd5ad0911a489b3e7c9bf899363
; Original assembly source glitch_video_CCommonGLDriver_glitch_video_CProgrammableGLDriver_glitch_video_CGLSLShaderHa-569492699322-001.asm lines 4497-4613
; FUNCTION 0x005b8bc8, declared_size=448, range_size=448, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8drawImplERKN5boost13intrusive_ptrIKNS0_14CVertexStreamsEEERKNS0_16CPrimitiveStreamEPPNS0_14CDriverBindingE
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::drawImpl(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&, glitch::video::CPrimitiveStream const&, glitch::video::CDriverBinding**)
; decoder-mode: arm
005b8bc8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005b8bcc  ac c1 9f e5                                      ldr ip, [pc, #0x1ac]
005b8bd0  38 31 90 e5                                      ldr r3, [r0, #0x138]
005b8bd4  00 40 a0 e1                                      mov r4, r0
005b8bd8  a0 00 90 e5                                      ldr r0, [r0, #0xa0]
005b8bdc  02 30 83 e3                                      orr r3, r3, #2
005b8be0  1c d0 4d e2                                      sub sp, sp, #0x1c
005b8be4  0c c0 8f e0                                      add ip, pc, ip
005b8be8  01 00 50 e3                                      cmp r0, #1
005b8bec  38 31 84 e5                                      str r3, [r4, #0x138]
005b8bf0  10 c0 8d e5                                      str ip, [sp, #0x10]
005b8bf4  08 10 8d e5                                      str r1, [sp, #8]
005b8bf8  80 30 94 05                                      ldreq r3, [r4, #0x80]
005b8bfc  7c 30 94 15                                      ldrne r3, [r4, #0x7c]
005b8c00  02 90 a0 e1                                      mov sb, r2
005b8c04  01 30 83 02                                      addeq r3, r3, #1
005b8c08  02 20 a0 13                                      movne r2, #2
005b8c0c  01 30 83 12                                      addne r3, r3, #1
005b8c10  09 00 a0 e1                                      mov r0, sb
005b8c14  80 30 84 05                                      streq r3, [r4, #0x80]
005b8c18  a0 20 84 15                                      strne r2, [r4, #0xa0]
005b8c1c  7c 30 84 15                                      strne r3, [r4, #0x7c]
005b8c20  78 50 94 e5                                      ldr r5, [r4, #0x78]
005b8c24  b5 9d ff eb                                      bl #0x5a0300
005b8c28  05 00 80 e0                                      add r0, r0, r5
005b8c2c  78 00 84 e5                                      str r0, [r4, #0x78]
005b8c30  00 10 99 e5                                      ldr r1, [sb]
005b8c34  04 00 a0 e1                                      mov r0, r4
005b8c38  35 f6 ff eb                                      bl #0x5b6514
005b8c3c  0c 00 8d e5                                      str r0, [sp, #0xc]
005b8c40  ec 20 94 e5                                      ldr r2, [r4, #0xec]
005b8c44  f8 30 d4 e5                                      ldrb r3, [r4, #0xf8]
005b8c48  0c 10 a0 e3                                      mov r1, #0xc
005b8c4c  04 20 92 e5                                      ldr r2, [r2, #4]
005b8c50  18 20 92 e5                                      ldr r2, [r2, #0x18]
005b8c54  91 23 23 e0                                      mla r3, r1, r3, r2
005b8c58  04 b0 d3 e5                                      ldrb fp, [r3, #4]
005b8c5c  00 00 5b e3                                      cmp fp, #0
005b8c60  01 80 a0 03                                      moveq r8, #1
005b8c64  1e 00 00 0a                                      beq #0x5b8ce4
005b8c68  14 11 9f e5                                      ldr r1, [pc, #0x114]
005b8c6c  00 50 a0 e3                                      mov r5, #0
005b8c70  01 80 a0 e3                                      mov r8, #1
005b8c74  14 10 8d e5                                      str r1, [sp, #0x14]
005b8c78  05 a0 a0 e1                                      mov sl, r5
005b8c7c  e8 70 94 e5                                      ldr r7, [r4, #0xe8]
005b8c80  08 20 9d e5                                      ldr r2, [sp, #8]
005b8c84  00 00 57 e3                                      cmp r7, #0
005b8c88  00 60 92 e5                                      ldr r6, [r2]
005b8c8c  1a 00 00 0a                                      beq #0x5b8cfc
005b8c90  05 71 97 e7                                      ldr r7, [r7, r5, lsl #2]
005b8c94  04 70 87 e2                                      add r7, r7, #4
005b8c98  0a 10 a0 e1                                      mov r1, sl
005b8c9c  06 20 a0 e1                                      mov r2, r6
005b8ca0  07 30 a0 e1                                      mov r3, r7
005b8ca4  04 00 a0 e1                                      mov r0, r4
005b8ca8  b7 ff ff eb                                      bl #0x5b8b8c
005b8cac  04 00 a0 e1                                      mov r0, r4
005b8cb0  06 20 a0 e1                                      mov r2, r6
005b8cb4  07 30 a0 e1                                      mov r3, r7
005b8cb8  f4 10 94 e5                                      ldr r1, [r4, #0xf4]
005b8cbc  30 f6 ff eb                                      bl #0x5b6584
005b8cc0  09 00 a0 e1                                      mov r0, sb
005b8cc4  e4 11 94 e5                                      ldr r1, [r4, #0x1e4]
005b8cc8  0c 20 9d e5                                      ldr r2, [sp, #0xc]
005b8ccc  3d df ff eb                                      bl #0x5b09c8
005b8cd0  01 50 85 e2                                      add r5, r5, #1
005b8cd4  75 a0 ef e6                                      uxtb sl, r5
005b8cd8  0a 00 5b e1                                      cmp fp, sl
005b8cdc  08 80 00 e0                                      and r8, r0, r8
005b8ce0  e5 ff ff 8a                                      bhi #0x5b8c7c
005b8ce4  38 31 94 e5                                      ldr r3, [r4, #0x138]
005b8ce8  08 00 a0 e1                                      mov r0, r8
005b8cec  02 30 c3 e3                                      bic r3, r3, #2
005b8cf0  38 31 84 e5                                      str r3, [r4, #0x138]
005b8cf4  1c d0 8d e2                                      add sp, sp, #0x1c
005b8cf8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005b8cfc  10 10 9d e5                                      ldr r1, [sp, #0x10]
005b8d00  14 c0 9d e5                                      ldr ip, [sp, #0x14]
005b8d04  1e 20 a0 e3                                      mov r2, #0x1e
005b8d08  0c 30 91 e7                                      ldr r3, [r1, ip]
005b8d0c  ff 10 a0 e3                                      mov r1, #0xff
005b8d10  03 00 a0 e1                                      mov r0, r3
005b8d14  04 30 8d e5                                      str r3, [sp, #4]
005b8d18  d0 55 f5 eb                                      bl #0x30e460
005b8d1c  10 20 96 e5                                      ldr r2, [r6, #0x10]
005b8d20  14 10 86 e2                                      add r1, r6, #0x14
005b8d24  04 30 9d e5                                      ldr r3, [sp, #4]
005b8d28  01 00 52 e1                                      cmp r2, r1
005b8d2c  0f 00 00 0a                                      beq #0x5b8d70
005b8d30  24 10 86 e2                                      add r1, r6, #0x24
005b8d34  02 00 61 e0                                      rsb r0, r1, r2
005b8d38  0f 00 c0 e3                                      bic r0, r0, #0xf
005b8d3c  07 20 a0 e1                                      mov r2, r7
005b8d40  10 00 80 e2                                      add r0, r0, #0x10
005b8d44  03 70 a0 e1                                      mov r7, r3
005b8d48  bc 31 d6 e1                                      ldrh r3, [r6, #0x1c]
005b8d4c  42 12 a0 e1                                      asr r1, r2, #4
005b8d50  10 20 82 e2                                      add r2, r2, #0x10
005b8d54  00 00 52 e1                                      cmp r2, r0
005b8d58  07 10 c3 e7                                      strb r1, [r3, r7]
005b8d5c  10 60 86 e2                                      add r6, r6, #0x10
005b8d60  f8 ff ff 1a                                      bne #0x5b8d48
005b8d64  08 30 9d e5                                      ldr r3, [sp, #8]
005b8d68  00 60 93 e5                                      ldr r6, [r3]
005b8d6c  c9 ff ff ea                                      b #0x5b8c98
005b8d70  08 20 9d e5                                      ldr r2, [sp, #8]
005b8d74  03 70 a0 e1                                      mov r7, r3
005b8d78  00 60 92 e5                                      ldr r6, [r2]
005b8d7c  c5 ff ff ea                                      b #0x5b8c98
; mapping-symbol data/literal pool
005b8d80  ac be 3d 00 b8 39 00 00                          .byte 0xac, 0xbe, 0x3d, 0x00, 0xb8, 0x39, 0x00, 0x00

; PACKAGE FUNCTION primitive_gl_submission
; ELF VA 0x005b09c8, range_size=212, SHA-256=b3d74f710f772035cc917c97bdcaa01168c008fc2b6ae04028d0eef025c2f11f
; Original assembly source bool_glitch_video_detail-e8dbf8a2ae8e-001.asm lines 253-310
; FUNCTION 0x005b09c8, declared_size=212, range_size=212, mode=arm
; class-group: bool glitch::video::detail
; alias: _ZN6glitch5video6detail14drawPrimitivesINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEEEEbRKNS0_16CPrimitiveStreamENS0_14E_POLYGON_MODEEPKh
; demangled: bool glitch::video::detail::drawPrimitives<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler> >(glitch::video::CPrimitiveStream const&, glitch::video::E_POLYGON_MODE, unsigned char const*)
; decoder-mode: arm
005b09c8  70 40 2d e9                                      push {r4, r5, r6, lr}
005b09cc  00 40 90 e5                                      ldr r4, [r0]
005b09d0  00 c0 a0 e1                                      mov ip, r0
005b09d4  01 50 a0 e1                                      mov r5, r1
005b09d8  00 00 54 e3                                      cmp r4, #0
005b09dc  14 00 00 0a                                      beq #0x5b0a34
005b09e0  00 00 51 e3                                      cmp r1, #0
005b09e4  04 30 90 e5                                      ldr r3, [r0, #4]
005b09e8  21 00 00 1a                                      bne #0x5b0a74
005b09ec  b6 11 d0 e1                                      ldrh r1, [r0, #0x16]
005b09f0  08 00 51 e3                                      cmp r1, #8
005b09f4  0b 00 00 0a                                      beq #0x5b0a28
005b09f8  94 00 9f e5                                      ldr r0, [pc, #0x94]
005b09fc  b4 e1 dc e1                                      ldrh lr, [ip, #0x14]
005b0a00  03 30 82 e0                                      add r3, r2, r3
005b0a04  00 00 8f e0                                      add r0, pc, r0
005b0a08  e0 20 80 e2                                      add r2, r0, #0xe0
005b0a0c  ec 00 80 e2                                      add r0, r0, #0xec
005b0a10  01 01 90 e7                                      ldr r0, [r0, r1, lsl #2]
005b0a14  0e 21 92 e7                                      ldr r2, [r2, lr, lsl #2]
005b0a18  08 10 9c e5                                      ldr r1, [ip, #8]
005b0a1c  ec 76 f5 eb                                      bl #0x30e5d4
005b0a20  01 00 a0 e3                                      mov r0, #1
005b0a24  70 80 bd e8                                      pop {r4, r5, r6, pc}
005b0a28  08 10 94 e5                                      ldr r1, [r4, #8]
005b0a2c  70 40 bd e8                                      pop {r4, r5, r6, lr}
005b0a30  4d ff ff ea                                      b #0x5b076c
005b0a34  00 00 51 e3                                      cmp r1, #0
005b0a38  10 00 00 1a                                      bne #0x5b0a80
005b0a3c  b6 31 dc e1                                      ldrh r3, [ip, #0x16]
005b0a40  08 00 53 e3                                      cmp r3, #8
005b0a44  0f 00 00 0a                                      beq #0x5b0a88
005b0a48  07 00 53 e3                                      cmp r3, #7
005b0a4c  0d 00 00 0a                                      beq #0x5b0a88
005b0a50  40 00 9f e5                                      ldr r0, [pc, #0x40]
005b0a54  08 20 9c e5                                      ldr r2, [ip, #8]
005b0a58  0c 10 9c e5                                      ldr r1, [ip, #0xc]
005b0a5c  00 00 8f e0                                      add r0, pc, r0
005b0a60  ec 00 80 e2                                      add r0, r0, #0xec
005b0a64  03 01 90 e7                                      ldr r0, [r0, r3, lsl #2]
005b0a68  cf 74 f5 eb                                      bl #0x30ddac
005b0a6c  01 00 a0 e3                                      mov r0, #1
005b0a70  70 80 bd e8                                      pop {r4, r5, r6, pc}
005b0a74  08 20 94 e5                                      ldr r2, [r4, #8]
005b0a78  70 40 bd e8                                      pop {r4, r5, r6, lr}
005b0a7c  ed fe ff ea                                      b #0x5b0638
005b0a80  70 40 bd e8                                      pop {r4, r5, r6, lr}
005b0a84  59 ff ff ea                                      b #0x5b07f0
005b0a88  0c 00 a0 e1                                      mov r0, ip
005b0a8c  70 40 bd e8                                      pop {r4, r5, r6, lr}
005b0a90  94 ff ff ea                                      b #0x5b08e8
; mapping-symbol data/literal pool
005b0a94  30 f6 32 00 d8 f5 32 00                          .byte 0x30, 0xf6, 0x32, 0x00, 0xd8, 0xf5, 0x32, 0x00

; PACKAGE FUNCTION texture_loader_selection
; ELF VA 0x005e8144, range_size=284, SHA-256=1dc678331e1264fc6776fb40bc0990b8f4372da74b2b9e959257592726b1cdec
; Original assembly source glitch_video_CTextureManager-c45d9c0c5ad5-001.asm lines 75-151
; FUNCTION 0x005e8144, declared_size=284, range_size=284, mode=arm
; class-group: glitch::video::CTextureManager
; alias: _ZNK6glitch5video15CTextureManager14getImageLoaderEPNS_2io9IReadFileE
; demangled: glitch::video::CTextureManager::getImageLoader(glitch::io::IReadFile*) const
; decoder-mode: arm
005e8144  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005e8148  00 40 52 e2                                      subs r4, r2, #0
005e814c  00 90 a0 e1                                      mov sb, r0
005e8150  01 a0 a0 e1                                      mov sl, r1
005e8154  24 00 00 0a                                      beq #0x5e81ec
005e8158  00 30 94 e5                                      ldr r3, [r4]
005e815c  04 00 a0 e1                                      mov r0, r4
005e8160  0f e0 a0 e1                                      mov lr, pc
005e8164  24 f0 93 e5                                      ldr pc, [r3, #0x24]
005e8168  30 50 9a e5                                      ldr r5, [sl, #0x30]
005e816c  34 70 9a e5                                      ldr r7, [sl, #0x34]
005e8170  00 80 a0 e1                                      mov r8, r0
005e8174  07 00 55 e1                                      cmp r5, r7
005e8178  03 00 00 1a                                      bne #0x5e818c
005e817c  1a 00 00 ea                                      b #0x5e81ec
005e8180  04 50 85 e2                                      add r5, r5, #4
005e8184  07 00 55 e1                                      cmp r5, r7
005e8188  1b 00 00 0a                                      beq #0x5e81fc
005e818c  00 30 95 e5                                      ldr r3, [r5]
005e8190  04 10 a0 e1                                      mov r1, r4
005e8194  03 00 a0 e1                                      mov r0, r3
005e8198  00 30 93 e5                                      ldr r3, [r3]
005e819c  0f e0 a0 e1                                      mov lr, pc
005e81a0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
005e81a4  00 30 94 e5                                      ldr r3, [r4]
005e81a8  00 60 a0 e1                                      mov r6, r0
005e81ac  08 10 a0 e1                                      mov r1, r8
005e81b0  04 00 a0 e1                                      mov r0, r4
005e81b4  00 20 a0 e3                                      mov r2, #0
005e81b8  0f e0 a0 e1                                      mov lr, pc
005e81bc  18 f0 93 e5                                      ldr pc, [r3, #0x18]
005e81c0  00 00 56 e3                                      cmp r6, #0
005e81c4  ed ff ff 0a                                      beq #0x5e8180
005e81c8  00 30 95 e5                                      ldr r3, [r5]
005e81cc  00 00 53 e3                                      cmp r3, #0
005e81d0  00 30 89 e5                                      str r3, [sb]
005e81d4  02 00 00 0a                                      beq #0x5e81e4
005e81d8  04 20 93 e5                                      ldr r2, [r3, #4]
005e81dc  01 20 82 e2                                      add r2, r2, #1
005e81e0  04 20 83 e5                                      str r2, [r3, #4]
005e81e4  09 00 a0 e1                                      mov r0, sb
005e81e8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005e81ec  00 30 a0 e3                                      mov r3, #0
005e81f0  00 30 89 e5                                      str r3, [sb]
005e81f4  09 00 a0 e1                                      mov r0, sb
005e81f8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005e81fc  34 70 9a e5                                      ldr r7, [sl, #0x34]
005e8200  30 50 9a e5                                      ldr r5, [sl, #0x30]
005e8204  07 00 55 e1                                      cmp r5, r7
005e8208  03 00 00 1a                                      bne #0x5e821c
005e820c  f6 ff ff ea                                      b #0x5e81ec
005e8210  04 50 85 e2                                      add r5, r5, #4
005e8214  07 00 55 e1                                      cmp r5, r7
005e8218  f3 ff ff 0a                                      beq #0x5e81ec
005e821c  00 80 95 e5                                      ldr r8, [r5]
005e8220  00 30 94 e5                                      ldr r3, [r4]
005e8224  04 00 a0 e1                                      mov r0, r4
005e8228  00 20 98 e5                                      ldr r2, [r8]
005e822c  0c 60 92 e5                                      ldr r6, [r2, #0xc]
005e8230  0f e0 a0 e1                                      mov lr, pc
005e8234  28 f0 93 e5                                      ldr pc, [r3, #0x28]
005e8238  00 10 a0 e1                                      mov r1, r0
005e823c  08 00 a0 e1                                      mov r0, r8
005e8240  36 ff 2f e1                                      blx r6
005e8244  00 00 50 e3                                      cmp r0, #0
005e8248  f0 ff ff 0a                                      beq #0x5e8210
005e824c  00 30 95 e5                                      ldr r3, [r5]
005e8250  00 00 53 e3                                      cmp r3, #0
005e8254  00 30 89 e5                                      str r3, [sb]
005e8258  de ff ff 1a                                      bne #0x5e81d8
005e825c  e0 ff ff ea                                      b #0x5e81e4

; PACKAGE FUNCTION pvr_header_to_texture_desc
; ELF VA 0x00605b10, range_size=1056, SHA-256=f6d8f0103f81bbff0162ed3206a344ffe240f19a6eb53f7007af64d6e4bb973b
; Original assembly source glitch_video_CImageLoaderPVR-700fdada5af7-001.asm lines 116-383
; FUNCTION 0x00605b10, declared_size=1056, range_size=1056, mode=arm
; class-group: glitch::video::CImageLoaderPVR
; alias: _ZNK6glitch5video15CImageLoaderPVR17loadTextureHeaderEPNS_2io9IReadFileERNS0_12STextureDescE
; demangled: glitch::video::CImageLoaderPVR::loadTextureHeader(glitch::io::IReadFile*, glitch::video::STextureDesc&) const
; decoder-mode: arm
00605b10  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00605b14  3c d0 4d e2                                      sub sp, sp, #0x3c
00605b18  01 00 a0 e1                                      mov r0, r1
00605b1c  01 50 a0 e1                                      mov r5, r1
00605b20  02 40 a0 e1                                      mov r4, r2
00605b24  0d 10 a0 e1                                      mov r1, sp
00605b28  37 20 8d e2                                      add r2, sp, #0x37
00605b2c  5c ff ff eb                                      bl #0x6058a4
00605b30  e4 63 9f e5                                      ldr r6, [pc, #0x3e4]
00605b34  00 00 50 e3                                      cmp r0, #0
00605b38  06 60 8f e0                                      add r6, pc, r6
00605b3c  01 00 00 1a                                      bne #0x605b48
00605b40  3c d0 8d e2                                      add sp, sp, #0x3c
00605b44  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00605b48  10 30 9d e5                                      ldr r3, [sp, #0x10]
00605b4c  37 70 dd e5                                      ldrb r7, [sp, #0x37]
00605b50  01 0a 13 e3                                      tst r3, #0x1000
00605b54  02 20 a0 13                                      movne r2, #2
00605b58  00 20 84 15                                      strne r2, [r4]
00605b5c  78 00 00 0a                                      beq #0x605d44
00605b60  00 00 94 e5                                      ldr r0, [r4]
00605b64  04 20 9d e5                                      ldr r2, [sp, #4]
00605b68  08 10 9d e5                                      ldr r1, [sp, #8]
00605b6c  01 00 50 e3                                      cmp r0, #1
00605b70  00 00 a0 e3                                      mov r0, #0
00605b74  14 20 84 e5                                      str r2, [r4, #0x14]
00605b78  08 00 84 e5                                      str r0, [r4, #8]
00605b7c  10 10 84 e5                                      str r1, [r4, #0x10]
00605b80  30 20 9d 05                                      ldreq r2, [sp, #0x30]
00605b84  01 20 a0 13                                      movne r2, #1
00605b88  53 34 e0 e7                                      ubfx r3, r3, #8, #1
00605b8c  18 20 84 e5                                      str r2, [r4, #0x18]
00605b90  1c 30 c4 e5                                      strb r3, [r4, #0x1c]
00605b94  00 30 95 e5                                      ldr r3, [r5]
00605b98  05 00 a0 e1                                      mov r0, r5
00605b9c  0f e0 a0 e1                                      mov lr, pc
00605ba0  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00605ba4  00 30 94 e5                                      ldr r3, [r4]
00605ba8  00 00 57 e3                                      cmp r7, #0
00605bac  14 20 9d e5                                      ldr r2, [sp, #0x14]
00605bb0  08 70 a0 13                                      movne r7, #8
00605bb4  02 00 53 e3                                      cmp r3, #2
00605bb8  06 30 a0 03                                      moveq r3, #6
00605bbc  01 30 a0 13                                      movne r3, #1
00605bc0  92 03 03 e0                                      mul r3, r2, r3
00605bc4  34 00 40 e2                                      sub r0, r0, #0x34
00605bc8  00 70 67 e0                                      rsb r7, r7, r0
00605bcc  03 00 57 e1                                      cmp r7, r3
00605bd0  5f 00 00 1a                                      bne #0x605d54
00605bd4  10 30 9d e5                                      ldr r3, [sp, #0x10]
00605bd8  ff 20 03 e2                                      and r2, r3, #0xff
00605bdc  56 00 52 e3                                      cmp r2, #0x56
00605be0  02 f1 8f 90                                      addls pc, pc, r2, lsl #2
00605be4  7c 00 00 ea                                      b #0x605ddc
00605be8  87 00 00 ea                                      b #0x605e0c
00605bec  89 00 00 ea                                      b #0x605e18
00605bf0  8b 00 00 ea                                      b #0x605e24
00605bf4  78 00 00 ea                                      b #0x605ddc
00605bf8  8c 00 00 ea                                      b #0x605e30
00605bfc  8e 00 00 ea                                      b #0x605e3c
00605c00  75 00 00 ea                                      b #0x605ddc
00605c04  8f 00 00 ea                                      b #0x605e48
00605c08  91 00 00 ea                                      b #0x605e54
00605c0c  72 00 00 ea                                      b #0x605ddc
00605c10  71 00 00 ea                                      b #0x605ddc
00605c14  70 00 00 ea                                      b #0x605ddc
00605c18  90 00 00 ea                                      b #0x605e60
00605c1c  94 00 00 ea                                      b #0x605e74
00605c20  6d 00 00 ea                                      b #0x605ddc
00605c24  6c 00 00 ea                                      b #0x605ddc
00605c28  96 00 00 ea                                      b #0x605e88
00605c2c  98 00 00 ea                                      b #0x605e94
00605c30  9a 00 00 ea                                      b #0x605ea0
00605c34  7a 00 00 ea                                      b #0x605e24
00605c38  67 00 00 ea                                      b #0x605ddc
00605c3c  7b 00 00 ea                                      b #0x605e30
00605c40  80 00 00 ea                                      b #0x605e48
00605c44  82 00 00 ea                                      b #0x605e54
00605c48  84 00 00 ea                                      b #0x605e60
00605c4c  88 00 00 ea                                      b #0x605e74
00605c50  79 00 00 ea                                      b #0x605e3c
00605c54  60 00 00 ea                                      b #0x605ddc
00605c58  5f 00 00 ea                                      b #0x605ddc
00605c5c  5e 00 00 ea                                      b #0x605ddc
00605c60  5d 00 00 ea                                      b #0x605ddc
00605c64  5c 00 00 ea                                      b #0x605ddc
00605c68  8f 00 00 ea                                      b #0x605eac
00605c6c  93 00 00 ea                                      b #0x605ec0
00605c70  92 00 00 ea                                      b #0x605ec0
00605c74  94 00 00 ea                                      b #0x605ecc
00605c78  93 00 00 ea                                      b #0x605ecc
00605c7c  56 00 00 ea                                      b #0x605ddc
00605c80  55 00 00 ea                                      b #0x605ddc
00605c84  54 00 00 ea                                      b #0x605ddc
00605c88  53 00 00 ea                                      b #0x605ddc
00605c8c  52 00 00 ea                                      b #0x605ddc
00605c90  90 00 00 ea                                      b #0x605ed8
00605c94  50 00 00 ea                                      b #0x605ddc
00605c98  4f 00 00 ea                                      b #0x605ddc
00605c9c  4e 00 00 ea                                      b #0x605ddc
00605ca0  4d 00 00 ea                                      b #0x605ddc
00605ca4  4c 00 00 ea                                      b #0x605ddc
00605ca8  4b 00 00 ea                                      b #0x605ddc
00605cac  4a 00 00 ea                                      b #0x605ddc
00605cb0  49 00 00 ea                                      b #0x605ddc
00605cb4  48 00 00 ea                                      b #0x605ddc
00605cb8  47 00 00 ea                                      b #0x605ddc
00605cbc  46 00 00 ea                                      b #0x605ddc
00605cc0  45 00 00 ea                                      b #0x605ddc
00605cc4  44 00 00 ea                                      b #0x605ddc
00605cc8  43 00 00 ea                                      b #0x605ddc
00605ccc  84 00 00 ea                                      b #0x605ee4
00605cd0  41 00 00 ea                                      b #0x605ddc
00605cd4  85 00 00 ea                                      b #0x605ef0
00605cd8  3f 00 00 ea                                      b #0x605ddc
00605cdc  3e 00 00 ea                                      b #0x605ddc
00605ce0  3d 00 00 ea                                      b #0x605ddc
00605ce4  3c 00 00 ea                                      b #0x605ddc
00605ce8  3b 00 00 ea                                      b #0x605ddc
00605cec  3a 00 00 ea                                      b #0x605ddc
00605cf0  39 00 00 ea                                      b #0x605ddc
00605cf4  38 00 00 ea                                      b #0x605ddc
00605cf8  37 00 00 ea                                      b #0x605ddc
00605cfc  36 00 00 ea                                      b #0x605ddc
00605d00  35 00 00 ea                                      b #0x605ddc
00605d04  34 00 00 ea                                      b #0x605ddc
00605d08  33 00 00 ea                                      b #0x605ddc
00605d0c  32 00 00 ea                                      b #0x605ddc
00605d10  31 00 00 ea                                      b #0x605ddc
00605d14  30 00 00 ea                                      b #0x605ddc
00605d18  2f 00 00 ea                                      b #0x605ddc
00605d1c  2e 00 00 ea                                      b #0x605ddc
00605d20  2d 00 00 ea                                      b #0x605ddc
00605d24  2c 00 00 ea                                      b #0x605ddc
00605d28  73 00 00 ea                                      b #0x605efc
00605d2c  2a 00 00 ea                                      b #0x605ddc
00605d30  29 00 00 ea                                      b #0x605ddc
00605d34  73 00 00 ea                                      b #0x605f08
00605d38  27 00 00 ea                                      b #0x605ddc
00605d3c  26 00 00 ea                                      b #0x605ddc
00605d40  0e 00 00 ea                                      b #0x605d80
00605d44  01 29 13 e2                                      ands r2, r3, #0x4000
00605d48  01 20 a0 13                                      movne r2, #1
00605d4c  00 20 84 e5                                      str r2, [r4]
00605d50  82 ff ff ea                                      b #0x605b60
00605d54  00 30 95 e5                                      ldr r3, [r5]
00605d58  05 00 a0 e1                                      mov r0, r5
00605d5c  0f e0 a0 e1                                      mov lr, pc
00605d60  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00605d64  b4 11 9f e5                                      ldr r1, [pc, #0x1b4]
00605d68  00 20 a0 e1                                      mov r2, r0
00605d6c  03 00 a0 e3                                      mov r0, #3
00605d70  01 10 8f e0                                      add r1, pc, r1
00605d74  ae 14 00 eb                                      bl #0x60b034
00605d78  00 00 a0 e3                                      mov r0, #0
00605d7c  6f ff ff ea                                      b #0x605b40
00605d80  1d 20 a0 e3                                      mov r2, #0x1d
00605d84  04 20 84 e5                                      str r2, [r4, #4]
00605d88  02 0c 13 e3                                      tst r3, #0x200
00605d8c  60 00 00 0a                                      beq #0x605f14
00605d90  04 30 94 e5                                      ldr r3, [r4, #4]
00605d94  28 20 a0 e3                                      mov r2, #0x28
00605d98  92 03 03 e0                                      mul r3, r2, r3
00605d9c  80 21 9f e5                                      ldr r2, [pc, #0x180]
00605da0  02 20 96 e7                                      ldr r2, [r6, r2]
00605da4  03 40 92 e7                                      ldr r4, [r2, r3]
00605da8  08 40 14 e2                                      ands r4, r4, #8
00605dac  58 00 00 1a                                      bne #0x605f14
00605db0  00 30 95 e5                                      ldr r3, [r5]
00605db4  05 00 a0 e1                                      mov r0, r5
00605db8  0f e0 a0 e1                                      mov lr, pc
00605dbc  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00605dc0  60 11 9f e5                                      ldr r1, [pc, #0x160]
00605dc4  00 20 a0 e1                                      mov r2, r0
00605dc8  03 00 a0 e3                                      mov r0, #3
00605dcc  01 10 8f e0                                      add r1, pc, r1
00605dd0  97 14 00 eb                                      bl #0x60b034
00605dd4  04 00 a0 e1                                      mov r0, r4
00605dd8  58 ff ff ea                                      b #0x605b40
00605ddc  00 30 95 e5                                      ldr r3, [r5]
00605de0  05 00 a0 e1                                      mov r0, r5
00605de4  0f e0 a0 e1                                      mov lr, pc
00605de8  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00605dec  38 11 9f e5                                      ldr r1, [pc, #0x138]
00605df0  00 20 a0 e1                                      mov r2, r0
00605df4  10 30 dd e5                                      ldrb r3, [sp, #0x10]
00605df8  03 00 a0 e3                                      mov r0, #3
00605dfc  01 10 8f e0                                      add r1, pc, r1
00605e00  8b 14 00 eb                                      bl #0x60b034
00605e04  00 00 a0 e3                                      mov r0, #0
00605e08  4c ff ff ea                                      b #0x605b40
00605e0c  06 20 a0 e3                                      mov r2, #6
00605e10  04 20 84 e5                                      str r2, [r4, #4]
00605e14  db ff ff ea                                      b #0x605d88
00605e18  08 20 a0 e3                                      mov r2, #8
00605e1c  04 20 84 e5                                      str r2, [r4, #4]
00605e20  d8 ff ff ea                                      b #0x605d88
00605e24  05 20 a0 e3                                      mov r2, #5
00605e28  04 20 84 e5                                      str r2, [r4, #4]
00605e2c  d5 ff ff ea                                      b #0x605d88
00605e30  0a 20 a0 e3                                      mov r2, #0xa
00605e34  04 20 84 e5                                      str r2, [r4, #4]
00605e38  d2 ff ff ea                                      b #0x605d88
00605e3c  0d 20 a0 e3                                      mov r2, #0xd
00605e40  04 20 84 e5                                      str r2, [r4, #4]
00605e44  cf ff ff ea                                      b #0x605d88
00605e48  00 20 a0 e3                                      mov r2, #0
00605e4c  04 20 84 e5                                      str r2, [r4, #4]
00605e50  cc ff ff ea                                      b #0x605d88
00605e54  04 20 a0 e3                                      mov r2, #4
00605e58  04 20 84 e5                                      str r2, [r4, #4]
00605e5c  c9 ff ff ea                                      b #0x605d88
00605e60  02 09 13 e3                                      tst r3, #0x8000
00605e64  19 20 a0 13                                      movne r2, #0x19
00605e68  18 20 a0 03                                      moveq r2, #0x18
00605e6c  04 20 84 e5                                      str r2, [r4, #4]
00605e70  c4 ff ff ea                                      b #0x605d88
00605e74  02 09 13 e3                                      tst r3, #0x8000
00605e78  1b 20 a0 13                                      movne r2, #0x1b
00605e7c  1a 20 a0 03                                      moveq r2, #0x1a
00605e80  04 20 84 e5                                      str r2, [r4, #4]
00605e84  bf ff ff ea                                      b #0x605d88
00605e88  07 20 a0 e3                                      mov r2, #7
00605e8c  04 20 84 e5                                      str r2, [r4, #4]
00605e90  bc ff ff ea                                      b #0x605d88
00605e94  09 20 a0 e3                                      mov r2, #9
00605e98  04 20 84 e5                                      str r2, [r4, #4]
00605e9c  b9 ff ff ea                                      b #0x605d88
00605ea0  0e 20 a0 e3                                      mov r2, #0xe
00605ea4  04 20 84 e5                                      str r2, [r4, #4]
00605ea8  b6 ff ff ea                                      b #0x605d88
00605eac  02 09 13 e3                                      tst r3, #0x8000
00605eb0  12 20 a0 13                                      movne r2, #0x12
00605eb4  11 20 a0 03                                      moveq r2, #0x11
00605eb8  04 20 84 e5                                      str r2, [r4, #4]
00605ebc  b1 ff ff ea                                      b #0x605d88
00605ec0  13 20 a0 e3                                      mov r2, #0x13
00605ec4  04 20 84 e5                                      str r2, [r4, #4]
00605ec8  ae ff ff ea                                      b #0x605d88
00605ecc  14 20 a0 e3                                      mov r2, #0x14
00605ed0  04 20 84 e5                                      str r2, [r4, #4]
00605ed4  ab ff ff ea                                      b #0x605d88
00605ed8  10 20 a0 e3                                      mov r2, #0x10
00605edc  04 20 84 e5                                      str r2, [r4, #4]
00605ee0  a8 ff ff ea                                      b #0x605d88
00605ee4  02 20 a0 e3                                      mov r2, #2
00605ee8  04 20 84 e5                                      str r2, [r4, #4]
00605eec  a5 ff ff ea                                      b #0x605d88
00605ef0  01 20 a0 e3                                      mov r2, #1
00605ef4  04 20 84 e5                                      str r2, [r4, #4]
00605ef8  a2 ff ff ea                                      b #0x605d88
00605efc  1f 20 a0 e3                                      mov r2, #0x1f
00605f00  04 20 84 e5                                      str r2, [r4, #4]
00605f04  9f ff ff ea                                      b #0x605d88
00605f08  1e 20 a0 e3                                      mov r2, #0x1e
00605f0c  04 20 84 e5                                      str r2, [r4, #4]
00605f10  9c ff ff ea                                      b #0x605d88
00605f14  01 00 a0 e3                                      mov r0, #1
00605f18  08 ff ff ea                                      b #0x605b40
; mapping-symbol data/literal pool
00605f1c  58 ef 38 00 08 ec 2d 00 34 1f 00 00 0c ec 2d 00  .byte 0x58, 0xef, 0x38, 0x00, 0x08, 0xec, 0x2d, 0x00, 0x34, 0x1f, 0x00, 0x00, 0x0c, 0xec, 0x2d, 0x00
00605f2c  ac eb 2d 00                                      .byte 0xac, 0xeb, 0x2d, 0x00

; PACKAGE FUNCTION pvr_header_reader
; ELF VA 0x006058a4, range_size=620, SHA-256=37b97d8ece5f06d3799bcc5283ad8e279dca9ee4bfa24db0124a96e3d4835b3e
; Original assembly source glitch_video-aadc65bf0959-001.asm lines 5223-5381
; FUNCTION 0x006058a4, declared_size=620, range_size=620, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video12_GLOBAL__N_113readPVRHeaderEPNS_2io9IReadFileERNS1_10SPVRHeaderERb
; demangled: glitch::video::(anonymous namespace)::readPVRHeader(glitch::io::IReadFile*, glitch::video::(anonymous namespace)::SPVRHeader&, bool&)
; decoder-mode: arm
006058a4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
006058a8  4c 52 9f e5                                      ldr r5, [pc, #0x24c]
006058ac  4c 82 9f e5                                      ldr r8, [pc, #0x24c]
006058b0  1c d0 4d e2                                      sub sp, sp, #0x1c
006058b4  05 50 8f e0                                      add r5, pc, r5
006058b8  08 30 95 e7                                      ldr r3, [r5, r8]
006058bc  01 70 a0 e1                                      mov r7, r1
006058c0  00 10 a0 e3                                      mov r1, #0
006058c4  00 c0 93 e5                                      ldr ip, [r3]
006058c8  02 a0 a0 e1                                      mov sl, r2
006058cc  00 30 90 e5                                      ldr r3, [r0]
006058d0  01 20 a0 e1                                      mov r2, r1
006058d4  14 c0 8d e5                                      str ip, [sp, #0x14]
006058d8  00 40 a0 e1                                      mov r4, r0
006058dc  0f e0 a0 e1                                      mov lr, pc
006058e0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006058e4  00 30 a0 e3                                      mov r3, #0
006058e8  00 30 ca e5                                      strb r3, [sl]
006058ec  0c 60 8d e2                                      add r6, sp, #0xc
006058f0  13 30 cd e5                                      strb r3, [sp, #0x13]
006058f4  0c 30 cd e5                                      strb r3, [sp, #0xc]
006058f8  0d 30 cd e5                                      strb r3, [sp, #0xd]
006058fc  0e 30 cd e5                                      strb r3, [sp, #0xe]
00605900  0f 30 cd e5                                      strb r3, [sp, #0xf]
00605904  10 30 cd e5                                      strb r3, [sp, #0x10]
00605908  11 30 cd e5                                      strb r3, [sp, #0x11]
0060590c  12 30 cd e5                                      strb r3, [sp, #0x12]
00605910  06 10 a0 e1                                      mov r1, r6
00605914  08 20 a0 e3                                      mov r2, #8
00605918  00 30 94 e5                                      ldr r3, [r4]
0060591c  04 00 a0 e1                                      mov r0, r4
00605920  0f e0 a0 e1                                      mov lr, pc
00605924  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00605928  d4 11 9f e5                                      ldr r1, [pc, #0x1d4]
0060592c  06 00 a0 e1                                      mov r0, r6
00605930  08 20 a0 e3                                      mov r2, #8
00605934  01 10 8f e0                                      add r1, pc, r1
00605938  cf 24 f4 eb                                      bl #0x30ec7c
0060593c  00 00 50 e3                                      cmp r0, #0
00605940  11 00 00 1a                                      bne #0x60598c
00605944  00 30 94 e5                                      ldr r3, [r4]
00605948  04 00 a0 e1                                      mov r0, r4
0060594c  07 10 a0 e1                                      mov r1, r7
00605950  34 20 a0 e3                                      mov r2, #0x34
00605954  0f e0 a0 e1                                      mov lr, pc
00605958  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0060595c  01 30 a0 e3                                      mov r3, #1
00605960  34 00 50 e3                                      cmp r0, #0x34
00605964  00 30 ca e5                                      strb r3, [sl]
00605968  14 00 00 0a                                      beq #0x6059c0
0060596c  00 00 a0 e3                                      mov r0, #0
00605970  08 30 95 e7                                      ldr r3, [r5, r8]
00605974  14 20 9d e5                                      ldr r2, [sp, #0x14]
00605978  00 30 93 e5                                      ldr r3, [r3]
0060597c  03 00 52 e1                                      cmp r2, r3
00605980  5c 00 00 1a                                      bne #0x605af8
00605984  1c d0 8d e2                                      add sp, sp, #0x1c
00605988  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0060598c  06 10 a0 e1                                      mov r1, r6
00605990  08 20 a0 e3                                      mov r2, #8
00605994  07 00 a0 e1                                      mov r0, r7
00605998  b2 23 f4 eb                                      bl #0x30e868
0060599c  00 30 94 e5                                      ldr r3, [r4]
006059a0  04 00 a0 e1                                      mov r0, r4
006059a4  08 10 87 e2                                      add r1, r7, #8
006059a8  2c 20 a0 e3                                      mov r2, #0x2c
006059ac  0f e0 a0 e1                                      mov lr, pc
006059b0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006059b4  08 00 80 e2                                      add r0, r0, #8
006059b8  34 00 50 e3                                      cmp r0, #0x34
006059bc  ea ff ff 1a                                      bne #0x60596c
006059c0  40 11 9f e5                                      ldr r1, [pc, #0x140]
006059c4  2c 00 87 e2                                      add r0, r7, #0x2c
006059c8  04 20 a0 e3                                      mov r2, #4
006059cc  01 10 8f e0                                      add r1, pc, r1
006059d0  a9 24 f4 eb                                      bl #0x30ec7c
006059d4  00 00 50 e3                                      cmp r0, #0
006059d8  e3 ff ff 1a                                      bne #0x60596c
006059dc  00 30 97 e5                                      ldr r3, [r7]
006059e0  34 00 53 e3                                      cmp r3, #0x34
006059e4  e0 ff ff 1a                                      bne #0x60596c
006059e8  10 00 97 e5                                      ldr r0, [r7, #0x10]
006059ec  01 3c 10 e2                                      ands r3, r0, #0x100
006059f0  02 00 00 0a                                      beq #0x605a00
006059f4  0c 20 97 e5                                      ldr r2, [r7, #0xc]
006059f8  00 00 52 e3                                      cmp r2, #0
006059fc  da ff ff 0a                                      beq #0x60596c
00605a00  01 0a 10 e3                                      tst r0, #0x1000
00605a04  30 00 00 1a                                      bne #0x605acc
00605a08  00 00 53 e3                                      cmp r3, #0
00605a0c  32 00 00 0a                                      beq #0x605adc
00605a10  08 30 97 e5                                      ldr r3, [r7, #8]
00605a14  00 00 53 e3                                      cmp r3, #0
00605a18  00 20 e0 03                                      mvneq r2, #0
00605a1c  03 00 00 0a                                      beq #0x605a30
00605a20  00 20 e0 e3                                      mvn r2, #0
00605a24  a3 30 b0 e1                                      lsrs r3, r3, #1
00605a28  01 20 82 e2                                      add r2, r2, #1
00605a2c  fc ff ff 1a                                      bne #0x605a24
00605a30  04 30 97 e5                                      ldr r3, [r7, #4]
00605a34  08 20 8d e5                                      str r2, [sp, #8]
00605a38  00 00 53 e3                                      cmp r3, #0
00605a3c  00 10 e0 03                                      mvneq r1, #0
00605a40  03 00 00 0a                                      beq #0x605a54
00605a44  00 10 e0 e3                                      mvn r1, #0
00605a48  a3 30 b0 e1                                      lsrs r3, r3, #1
00605a4c  01 10 81 e2                                      add r1, r1, #1
00605a50  fc ff ff 1a                                      bne #0x605a48
00605a54  01 09 10 e3                                      tst r0, #0x4000
00605a58  04 10 8d e5                                      str r1, [sp, #4]
00605a5c  20 00 00 1a                                      bne #0x605ae4
00605a60  01 30 a0 e3                                      mov r3, #1
00605a64  00 00 e0 e3                                      mvn r0, #0
00605a68  a3 30 b0 e1                                      lsrs r3, r3, #1
00605a6c  01 00 80 e2                                      add r0, r0, #1
00605a70  fc ff ff 1a                                      bne #0x605a68
00605a74  02 00 51 e1                                      cmp r1, r2
00605a78  01 20 a0 81                                      movhi r2, r1
00605a7c  04 30 8d 82                                      addhi r3, sp, #4
00605a80  08 30 8d 92                                      addls r3, sp, #8
00605a84  00 00 52 e1                                      cmp r2, r0
00605a88  0d 30 a0 31                                      movlo r3, sp
00605a8c  00 00 8d e5                                      str r0, [sp]
00605a90  00 20 93 e5                                      ldr r2, [r3]
00605a94  0c 30 97 e5                                      ldr r3, [r7, #0xc]
00605a98  03 00 52 e1                                      cmp r2, r3
00605a9c  0e 00 00 0a                                      beq #0x605adc
00605aa0  00 30 94 e5                                      ldr r3, [r4]
00605aa4  04 00 a0 e1                                      mov r0, r4
00605aa8  0f e0 a0 e1                                      mov lr, pc
00605aac  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00605ab0  54 10 9f e5                                      ldr r1, [pc, #0x54]
00605ab4  00 20 a0 e1                                      mov r2, r0
00605ab8  03 00 a0 e3                                      mov r0, #3
00605abc  01 10 8f e0                                      add r1, pc, r1
00605ac0  5b 15 00 eb                                      bl #0x60b034
00605ac4  00 00 a0 e3                                      mov r0, #0
00605ac8  a8 ff ff ea                                      b #0x605970
00605acc  30 20 97 e5                                      ldr r2, [r7, #0x30]
00605ad0  06 00 52 e3                                      cmp r2, #6
00605ad4  a4 ff ff 1a                                      bne #0x60596c
00605ad8  ca ff ff ea                                      b #0x605a08
00605adc  01 00 a0 e3                                      mov r0, #1
00605ae0  a2 ff ff ea                                      b #0x605970
00605ae4  30 30 97 e5                                      ldr r3, [r7, #0x30]
00605ae8  00 00 53 e3                                      cmp r3, #0
00605aec  00 00 e0 03                                      mvneq r0, #0
00605af0  db ff ff 1a                                      bne #0x605a64
00605af4  de ff ff ea                                      b #0x605a74
00605af8  04 22 f4 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00605afc  dc f1 38 00 ac 40 00 00 f4 ef 2d 00 6c ef 2d 00  .byte 0xdc, 0xf1, 0x38, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0xef, 0x2d, 0x00, 0x6c, 0xef, 0x2d, 0x00
00605b0c  84 ee 2d 00                                      .byte 0x84, 0xee, 0x2d, 0x00

; PACKAGE FUNCTION texture_update_dispatch
; ELF VA 0x005b044c, range_size=76, SHA-256=ae5c1bb5165c65806b5cf8b2bafbe3e06d7e94762c76a1279164906bf1856004
; Original assembly source glitch_video_CCommonGLDriver_glitch_video_CProgrammableGLDriver_glitch_video_CGLSLShaderHa-8ceb812a790b-001.asm lines 460-484
; FUNCTION 0x005b044c, declared_size=76, range_size=76, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture
; alias: _ZNK6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture6updateEb
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::update(bool) const
; decoder-mode: arm
005b044c  70 40 2d e9                                      push {r4, r5, r6, lr}
005b0450  b0 34 d0 e1                                      ldrh r3, [r0, #0x40]
005b0454  00 40 a0 e1                                      mov r4, r0
005b0458  01 50 a0 e1                                      mov r5, r1
005b045c  03 20 c3 e3                                      bic r2, r3, #3
005b0460  82 29 a0 e1                                      lsl r2, r2, #0x13
005b0464  a2 29 a0 e1                                      lsr r2, r2, #0x13
005b0468  00 00 52 e3                                      cmp r2, #0
005b046c  06 00 00 1a                                      bne #0x5b048c
005b0470  01 00 13 e2                                      ands r0, r3, #1
005b0474  00 00 00 1a                                      bne #0x5b047c
005b0478  70 80 bd e8                                      pop {r4, r5, r6, pc}
005b047c  04 00 a0 e1                                      mov r0, r4
005b0480  05 10 a0 e1                                      mov r1, r5
005b0484  70 40 bd e8                                      pop {r4, r5, r6, lr}
005b0488  d8 fe ff ea                                      b #0x5afff0
005b048c  2b fe ff eb                                      bl #0x5afd40
005b0490  b0 34 d4 e1                                      ldrh r3, [r4, #0x40]
005b0494  f5 ff ff ea                                      b #0x5b0470

; PACKAGE FUNCTION commit_current_material_wrapper
; ELF VA 0x005b7594, range_size=8, SHA-256=9b967887ce10137530b4c9062dc7355cf54f9cdf8f5e36fbdd7b82a7b520abbf
; Original assembly source glitch_video_CCommonGLDriver_glitch_video_CProgrammableGLDriver_glitch_video_CGLSLShaderHa-569492699322-001.asm lines 4454-4461
; FUNCTION 0x005b7594, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE21commitCurrentMaterialEv
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::commitCurrentMaterial()
; decoder-mode: arm
005b7594  00 10 a0 e3                                      mov r1, #0
005b7598  d2 ff ff ea                                      b #0x5b74e8
