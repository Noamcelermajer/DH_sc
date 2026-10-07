; APK SHA-256: 32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200
; ELF SHA-256: 36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80
; File offsets equal ELF VAs for the listed ranges.
; The enclosing original function hashes and sizes are in original-functions.json.

; TGA header rejection and supported-depth branches
00606390  30 10 dd e5  ldrb	r1, [sp, #0x30]
00606394  00 00 51 e3  cmp	r1, #0
00606398  cc 00 00 1a  bne	0x6066d0 <_ZNK6glitch5video15CImageLoaderTGA9loadImageEPNS_2io9IReadFileE+0x368> @ imm = #0x330
0060639c  31 30 dd e5  ldrb	r3, [sp, #0x31]
006063a0  00 00 53 e3  cmp	r3, #0
006063a4  1c 30 8d 05  streq	r3, [sp, #0x1c]
006063a8  9c 00 00 1a  bne	0x606620 <_ZNK6glitch5video15CImageLoaderTGA9loadImageEPNS_2io9IReadFileE+0x2b8> @ imm = #0x270
006063ac  40 30 dd e5  ldrb	r3, [sp, #0x40]
006063b0  18 00 53 e3  cmp	r3, #24
006063b4  ae 00 00 0a  beq	0x606674 <_ZNK6glitch5video15CImageLoaderTGA9loadImageEPNS_2io9IReadFileE+0x30c> @ imm = #0x2b8
006063b8  20 00 53 e3  cmp	r3, #32
006063bc  c9 00 00 0a  beq	0x6066e8 <_ZNK6glitch5video15CImageLoaderTGA9loadImageEPNS_2io9IReadFileE+0x380> @ imm = #0x324
006063c0  10 00 53 e3  cmp	r3, #16
006063c4  13 00 00 0a  beq	0x606418 <_ZNK6glitch5video15CImageLoaderTGA9loadImageEPNS_2io9IReadFileE+0xb0> @ imm = #0x4c

; TGA type 2/10 and 16-bit route selection
00606418  08 30 a0 e3  mov	r3, #8
0060641c  24 30 8d e5  str	r3, [sp, #0x24]
00606420  28 30 8d e5  str	r3, [sp, #0x28]
00606424  32 70 dd e5  ldrb	r7, [sp, #0x32]
00606428  0a 00 57 e3  cmp	r7, #10
0060642c  02 00 57 13  cmpne	r7, #2
00606430  00 70 a0 03  moveq	r7, #0
00606434  01 70 a0 13  movne	r7, #1
00606438  97 00 00 1a  bne	0x60669c <_ZNK6glitch5video15CImageLoaderTGA9loadImageEPNS_2io9IReadFileE+0x334> @ imm = #0x25c
0060643c  be 33 dd e1  ldrh	r3, [sp, #62]
00606440  bc 23 dd e1  ldrh	r2, [sp, #60]
00606444  07 10 a0 e1  mov	r1, r7
00606448  2c 00 a0 e3  mov	r0, #44
0060644c  44 20 8d e5  str	r2, [sp, #0x44]
00606450  48 30 8d e5  str	r3, [sp, #0x48]
00606454  54 b7 fc eb  bl	0x5341ac <_ZnwjN6glitch6memory13E_MEMORY_HINTE> @ imm = #-0xd22b0
00606458  24 10 9d e5  ldr	r1, [sp, #0x24]
0060645c  44 20 8d e2  add	r2, sp, #68
00606460  00 50 a0 e1  mov	r5, r0
00606464  29 ef ff eb  bl	0x602110 <_ZN6glitch5video6CImageC1ENS0_14E_PIXEL_FORMATERKNS_4core11dimension2dIiEE> @ imm = #-0x435c
00606468  00 00 55 e3  cmp	r5, #0
0060646c  20 c0 9d 05  ldreq	r12, [sp, #0x20]
00606470  00 50 8c 05  streq	r5, [r12]
00606474  df ff ff 0a  beq	0x6063f8 <_ZNK6glitch5video15CImageLoaderTGA9loadImageEPNS_2io9IReadFileE+0x90> @ imm = #-0x84
00606478  08 10 95 e9  ldmib	r5, {r3, r12}
0060647c  01 30 83 e2  add	r3, r3, #1
00606480  2c c0 8d e5  str	r12, [sp, #0x2c]
00606484  04 30 85 e5  str	r3, [r5, #0x4]
00606488  32 30 dd e5  ldrb	r3, [sp, #0x32]
0060648c  02 00 53 e3  cmp	r3, #2
00606490  98 00 00 0a  beq	0x6066f8 <_ZNK6glitch5video15CImageLoaderTGA9loadImageEPNS_2io9IReadFileE+0x390> @ imm = #0x260
00606494  bc 33 dd e1  ldrh	r3, [sp, #60]
00606498  be a3 dd e1  ldrh	r10, [sp, #62]
0060649c  40 60 dd e5  ldrb	r6, [sp, #0x40]
006064a0  07 10 a0 e1  mov	r1, r7
006064a4  9a 03 0a e0  mul	r10, r10, r3

; 32-bit TGA format selection, direct read, and conversion setup
006066e8  0d c0 a0 e3  mov	r12, #13
006066ec  24 c0 8d e5  str	r12, [sp, #0x24]
006066f0  28 c0 8d e5  str	r12, [sp, #0x28]
006066f4  4a ff ff ea  b	0x606424 <_ZNK6glitch5video15CImageLoaderTGA9loadImageEPNS_2io9IReadFileE+0xbc> @ imm = #-0x2d8
006066f8  be 13 dd e1  ldrh	r1, [sp, #62]
006066fc  bc 33 dd e1  ldrh	r3, [sp, #60]
00606700  40 20 dd e5  ldrb	r2, [sp, #0x40]
00606704  08 00 a0 e1  mov	r0, r8
00606708  91 03 03 e0  mul	r3, r1, r3
0060670c  2c 10 9d e5  ldr	r1, [sp, #0x2c]
00606710  92 03 02 e0  mul	r2, r2, r3
00606714  00 30 98 e5  ldr	r3, [r8]
00606718  07 c0 82 e2  add	r12, r2, #7
0060671c  00 00 52 e3  cmp	r2, #0
00606720  0c 20 a0 b1  movlt	r2, r12
00606724  c2 21 a0 e1  asr	r2, r2, #3
00606728  0f e0 a0 e1  mov	lr, pc
0060672c  0c f0 93 e5  ldr	pc, [r3, #0xc]
00606730  41 c0 dd e5  ldrb	r12, [sp, #0x41]
00606734  2c 10 9d e5  ldr	r1, [sp, #0x2c]
00606738  bc e3 dd e1  ldrh	lr, [sp, #60]
0060673c  be 43 dd e1  ldrh	r4, [sp, #62]
00606740  20 c0 2c e2  eor	r12, r12, #32
00606744  dc c2 e0 e7  ubfx	r12, r12, #0x5, #0x1
00606748  28 00 9d e5  ldr	r0, [sp, #0x28]
0060674c  07 20 a0 e1  mov	r2, r7
00606750  24 30 9d e5  ldr	r3, [sp, #0x24]
00606754  08 e0 8d e5  str	lr, [sp, #0x8]
00606758  0c 40 8d e5  str	r4, [sp, #0xc]
0060675c  10 c0 8d e5  str	r12, [sp, #0x10]
00606760  01 80 a0 e1  mov	r8, r1
00606764  82 00 8d e8  stm	sp, {r1, r7}
00606768  8f cb ff eb  bl	0x5f95ac <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb> @ imm = #-0xd1c4

; complete pixel_format::copy range: the equal-format route reverses rows,
; including an in-place path, when the final boolean is set.
005ee40c  f8 4f 2d e9  push	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
005ee410  bc 61 9f e5  ldr	r6, [pc, #0x1bc]        @ 0x5ee5d4 <_ZN6glitch5video12pixel_format12_GLOBAL__N_14copyENS0_14E_PIXEL_FORMATEPKvjPvjjjb+0x1c8>
005ee414  bc 91 9f e5  ldr	r9, [pc, #0x1bc]        @ 0x5ee5d8 <_ZN6glitch5video12pixel_format12_GLOBAL__N_14copyENS0_14E_PIXEL_FORMATEPKvjPvjjjb+0x1cc>
005ee418  00 70 a0 e1  mov	r7, r0
005ee41c  06 60 8f e0  add	r6, pc, r6
005ee420  28 00 a0 e3  mov	r0, #40
005ee424  90 07 00 e0  mul	r0, r0, r7
005ee428  09 c0 96 e7  ldr	r12, [r6, r9]
005ee42c  02 50 a0 e1  mov	r5, r2
005ee430  01 40 a0 e1  mov	r4, r1
005ee434  00 20 9c e7  ldr	r2, [r12, r0]
005ee438  03 80 a0 e1  mov	r8, r3
005ee43c  34 b0 dd e5  ldrb	r11, [sp, #0x34]
005ee440  08 00 12 e3  tst	r2, #8
005ee444  01 00 00 0a  beq	0x5ee450 <_ZN6glitch5video12pixel_format12_GLOBAL__N_14copyENS0_14E_PIXEL_FORMATEPKvjPvjjjb+0x44> @ imm = #0x4
005ee448  00 00 5b e3  cmp	r11, #0
005ee44c  29 00 00 1a  bne	0x5ee4f8 <_ZN6glitch5video12pixel_format12_GLOBAL__N_14copyENS0_14E_PIXEL_FORMATEPKvjPvjjjb+0xec> @ imm = #0xa4
005ee450  2c 10 9d e5  ldr	r1, [sp, #0x2c]
005ee454  07 00 a0 e1  mov	r0, r7
005ee458  a3 fd ff eb  bl	0x5edaec <_ZN6glitch5video12pixel_format12computePitchENS0_14E_PIXEL_FORMATEj> @ imm = #-0x974
005ee45c  09 30 96 e7  ldr	r3, [r6, r9]
005ee460  28 20 a0 e3  mov	r2, #40
005ee464  00 a0 a0 e1  mov	r10, r0
005ee468  92 37 27 e0  mla	r7, r2, r7, r3
005ee46c  30 00 9d e5  ldr	r0, [sp, #0x30]
005ee470  25 10 d7 e5  ldrb	r1, [r7, #0x25]
005ee474  f4 81 f4 eb  bl	0x30ec4c <__aeabi_uidiv@plt> @ imm = #-0x2df830
005ee478  08 00 54 e1  cmp	r4, r8
005ee47c  00 60 a0 e1  mov	r6, r0
005ee480  22 00 00 0a  beq	0x5ee510 <_ZN6glitch5video12pixel_format12_GLOBAL__N_14copyENS0_14E_PIXEL_FORMATEPKvjPvjjjb+0x104> @ imm = #0x88
005ee484  00 00 5b e3  cmp	r11, #0
005ee488  0f 00 00 0a  beq	0x5ee4cc <_ZN6glitch5video12pixel_format12_GLOBAL__N_14copyENS0_14E_PIXEL_FORMATEPKvjPvjjjb+0xc0> @ imm = #0x3c
005ee48c  28 20 9d e5  ldr	r2, [sp, #0x28]
005ee490  01 30 46 e2  sub	r3, r6, #1
005ee494  92 83 28 e0  mla	r8, r2, r3, r8
005ee498  00 70 62 e2  rsb	r7, r2, #0
005ee49c  00 00 56 e3  cmp	r6, #0
005ee4a0  07 00 00 0a  beq	0x5ee4c4 <_ZN6glitch5video12pixel_format12_GLOBAL__N_14copyENS0_14E_PIXEL_FORMATEPKvjPvjjjb+0xb8> @ imm = #0x1c
005ee4a4  08 00 a0 e1  mov	r0, r8
005ee4a8  04 10 a0 e1  mov	r1, r4
005ee4ac  0a 20 a0 e1  mov	r2, r10
005ee4b0  ec 80 f4 eb  bl	0x30e868 <memcpy@plt>   @ imm = #-0x2dfc50
005ee4b4  01 60 56 e2  subs	r6, r6, #1
005ee4b8  05 40 84 e0  add	r4, r4, r5
005ee4bc  07 80 88 e0  add	r8, r8, r7
005ee4c0  f7 ff ff 1a  bne	0x5ee4a4 <_ZN6glitch5video12pixel_format12_GLOBAL__N_14copyENS0_14E_PIXEL_FORMATEPKvjPvjjjb+0x98> @ imm = #-0x24
005ee4c4  01 00 a0 e3  mov	r0, #1
005ee4c8  f8 8f bd e8  pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
005ee4cc  28 30 9d e5  ldr	r3, [sp, #0x28]
005ee4d0  03 00 5a e1  cmp	r10, r3
005ee4d4  05 00 5a 01  cmpeq	r10, r5
005ee4d8  28 70 9d 15  ldrne	r7, [sp, #0x28]
005ee4dc  ee ff ff 1a  bne	0x5ee49c <_ZN6glitch5video12pixel_format12_GLOBAL__N_14copyENS0_14E_PIXEL_FORMATEPKvjPvjjjb+0x90> @ imm = #-0x48
005ee4e0  96 0a 02 e0  mul	r2, r6, r10
005ee4e4  08 00 a0 e1  mov	r0, r8
005ee4e8  04 10 a0 e1  mov	r1, r4
005ee4ec  dd 80 f4 eb  bl	0x30e868 <memcpy@plt>   @ imm = #-0x2dfc8c
005ee4f0  01 00 a0 e3  mov	r0, #1
005ee4f4  f8 8f bd e8  pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
005ee4f8  dc 00 9f e5  ldr	r0, [pc, #0xdc]         @ 0x5ee5dc <_ZN6glitch5video12pixel_format12_GLOBAL__N_14copyENS0_14E_PIXEL_FORMATEPKvjPvjjjb+0x1d0>
005ee4fc  03 10 a0 e3  mov	r1, #3
005ee500  00 00 8f e0  add	r0, pc, r0
005ee504  e5 71 00 eb  bl	0x60aca0 <_ZN6glitch2os7Printer3logEPKcNS_10ELOG_LEVELE> @ imm = #0x1c794
005ee508  00 00 a0 e3  mov	r0, #0
005ee50c  f8 8f bd e8  pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
005ee510  28 20 9d e5  ldr	r2, [sp, #0x28]
005ee514  02 00 55 e1  cmp	r5, r2
005ee518  25 00 00 1a  bne	0x5ee5b4 <_ZN6glitch5video12pixel_format12_GLOBAL__N_14copyENS0_14E_PIXEL_FORMATEPKvjPvjjjb+0x1a8> @ imm = #0x94
005ee51c  00 00 5b e3  cmp	r11, #0
005ee520  e7 ff ff 0a  beq	0x5ee4c4 <_ZN6glitch5video12pixel_format12_GLOBAL__N_14copyENS0_14E_PIXEL_FORMATEPKvjPvjjjb+0xb8> @ imm = #-0x64
005ee524  4a 17 fd eb  bl	0x534254 <_ZN6glitch4core32isProcessBufferHeapExcessEnabledEv> @ imm = #-0xba2d8
005ee528  00 90 a0 e1  mov	r9, r0
005ee52c  01 00 a0 e3  mov	r0, #1
005ee530  4c 17 fd eb  bl	0x534268 <_ZN6glitch4core33setProcessBufferHeapExcessEnabledEb> @ imm = #-0xba2d0
005ee534  0a 00 a0 e1  mov	r0, r10
005ee538  2d 18 fd eb  bl	0x5345f4 <_ZN6glitch4core18allocProcessBufferEi> @ imm = #-0xb9f4c
005ee53c  01 60 46 e2  sub	r6, r6, #1
005ee540  96 45 26 e0  mla	r6, r6, r5, r4
005ee544  00 70 a0 e1  mov	r7, r0
005ee548  06 00 54 e1  cmp	r4, r6
005ee54c  10 00 00 8a  bhi	0x5ee594 <_ZN6glitch5video12pixel_format12_GLOBAL__N_14copyENS0_14E_PIXEL_FORMATEPKvjPvjjjb+0x188> @ imm = #0x40
005ee550  00 80 65 e2  rsb	r8, r5, #0
005ee554  06 10 a0 e1  mov	r1, r6
005ee558  0a 20 a0 e1  mov	r2, r10
005ee55c  07 00 a0 e1  mov	r0, r7
005ee560  c0 80 f4 eb  bl	0x30e868 <memcpy@plt>   @ imm = #-0x2dfd00
005ee564  04 10 a0 e1  mov	r1, r4
005ee568  06 00 a0 e1  mov	r0, r6
005ee56c  0a 20 a0 e1  mov	r2, r10
005ee570  bc 80 f4 eb  bl	0x30e868 <memcpy@plt>   @ imm = #-0x2dfd10
005ee574  08 60 86 e0  add	r6, r6, r8
005ee578  04 00 a0 e1  mov	r0, r4
005ee57c  07 10 a0 e1  mov	r1, r7
005ee580  0a 20 a0 e1  mov	r2, r10
005ee584  05 40 84 e0  add	r4, r4, r5
005ee588  b6 80 f4 eb  bl	0x30e868 <memcpy@plt>   @ imm = #-0x2dfd28
005ee58c  04 00 56 e1  cmp	r6, r4
005ee590  ef ff ff 2a  bhs	0x5ee554 <_ZN6glitch5video12pixel_format12_GLOBAL__N_14copyENS0_14E_PIXEL_FORMATEPKvjPvjjjb+0x148> @ imm = #-0x44
005ee594  00 00 57 e3  cmp	r7, #0
005ee598  01 00 00 0a  beq	0x5ee5a4 <_ZN6glitch5video12pixel_format12_GLOBAL__N_14copyENS0_14E_PIXEL_FORMATEPKvjPvjjjb+0x198> @ imm = #0x4
005ee59c  07 00 a0 e1  mov	r0, r7
005ee5a0  38 18 fd eb  bl	0x534688 <_ZN6glitch4core20releaseProcessBufferEPv> @ imm = #-0xb9f20
005ee5a4  09 00 a0 e1  mov	r0, r9
005ee5a8  2e 17 fd eb  bl	0x534268 <_ZN6glitch4core33setProcessBufferHeapExcessEnabledEb> @ imm = #-0xba348
005ee5ac  01 00 a0 e3  mov	r0, #1
005ee5b0  f8 8f bd e8  pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
005ee5b4  24 00 9f e5  ldr	r0, [pc, #0x24]         @ 0x5ee5e0 <_ZN6glitch5video12pixel_format12_GLOBAL__N_14copyENS0_14E_PIXEL_FORMATEPKvjPvjjjb+0x1d4>
005ee5b8  24 10 9f e5  ldr	r1, [pc, #0x24]         @ 0x5ee5e4 <_ZN6glitch5video12pixel_format12_GLOBAL__N_14copyENS0_14E_PIXEL_FORMATEPKvjPvjjjb+0x1d8>
005ee5bc  03 20 a0 e3  mov	r2, #3
005ee5c0  00 00 8f e0  add	r0, pc, r0
005ee5c4  01 10 8f e0  add	r1, pc, r1
005ee5c8  c6 71 00 eb  bl	0x60ace8 <_ZN6glitch2os7Printer3logEPKcS3_NS_10ELOG_LEVELE> @ imm = #0x1c718
005ee5cc  00 00 a0 e3  mov	r0, #0
005ee5d0  f8 8f bd e8  pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
005ee5d4  74 66 3a 00  .word 0x003a6674
005ee5d8  34 1f 00 00  .word 0x00001f34
005ee5dc  80 58 2f 00  .word 0x002f5880
005ee5e0  f0 57 2f 00  .word 0x002f57f0
005ee5e4  0c 58 2f 00  .word 0x002f580c
