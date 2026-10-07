; Source: verified APK ELF member lib/armeabi-v7a/libDungeonHunter2.so.
; APK SHA-256: 32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200
; ELF SHA-256: 36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80
; PT_LOAD VAs map to file offsets as p_offset + (VA - p_vaddr). Listed words were byte-checked against those mapped slices.

; getPackedType
; RANGE 0x005ed954..0x005ed9cc end-exclusive; file_offset=0x5ed954; exact byte match.
005ed954  6c 30 9f e5  ldr	r3, [pc, #0x6c]         @ 0x5ed9c8 <_ZN6glitch5video12pixel_format13getPackedTypeENS0_14E_PIXEL_FORMATE+0x74>
005ed958  6c 20 9f e5  ldr	r2, [pc, #0x6c]         @ 0x5ed9cc <_ZN6glitch5video12pixel_format13getPackedTypeENS0_14E_PIXEL_FORMATE+0x78>
005ed95c  28 10 a0 e3  mov	r1, #40
005ed960  03 30 8f e0  add	r3, pc, r3
005ed964  91 00 01 e0  mul	r1, r1, r0
005ed968  02 20 93 e7  ldr	r2, [r3, r2]
005ed96c  01 30 92 e7  ldr	r3, [r2, r1]
005ed970  01 20 82 e0  add	r2, r2, r1
005ed974  10 20 82 e2  add	r2, r2, #16
005ed978  40 00 13 e3  tst	r3, #64
005ed97c  04 00 d2 e5  ldrb	r0, [r2, #0x4]
005ed980  07 30 d2 e5  ldrb	r3, [r2, #0x7]
005ed984  1e ff 2f 11  bxne	lr
005ed988  01 00 53 e3  cmp	r3, #1
005ed98c  1e ff 2f 01  bxeq	lr
005ed990  00 00 50 e3  cmp	r0, #0
005ed994  03 00 00 0a  beq	0x5ed9a8 <_ZN6glitch5video12pixel_format13getPackedTypeENS0_14E_PIXEL_FORMATE+0x54> @ imm = #0xc
005ed998  01 00 50 e3  cmp	r0, #1
005ed99c  06 00 00 0a  beq	0x5ed9bc <_ZN6glitch5video12pixel_format13getPackedTypeENS0_14E_PIXEL_FORMATE+0x68> @ imm = #0x18
005ed9a0  ff 00 a0 e3  mov	r0, #255
005ed9a4  1e ff 2f e1  bx	lr
005ed9a8  02 00 53 e3  cmp	r3, #2
005ed9ac  01 00 a0 93  movls	r0, #1
005ed9b0  1e ff 2f 91  bxls	lr
005ed9b4  02 00 a0 e3  mov	r0, #2
005ed9b8  1e ff 2f e1  bx	lr
005ed9bc  02 00 53 e3  cmp	r3, #2
005ed9c0  f6 ff ff 1a  bne	0x5ed9a0 <_ZN6glitch5video12pixel_format13getPackedTypeENS0_14E_PIXEL_FORMATE+0x4c> @ imm = #-0x28
005ed9c4  fa ff ff ea  b	0x5ed9b4 <_ZN6glitch5video12pixel_format13getPackedTypeENS0_14E_PIXEL_FORMATE+0x60> @ imm = #-0x18
005ed9c8  30 71 3a 00  .word 0x003a7130

; same-format copy
; RANGE 0x005ee40c..0x005ee5e8 end-exclusive; file_offset=0x5ee40c; exact byte match.
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

; convertPacked switch
; RANGE 0x005f4fe8..0x005f50a0 end-exclusive; file_offset=0x5f4fe8; exact byte match.
005f4fe8  f0 4f 2d e9  push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
005f4fec  b4 d0 4d e2  sub	sp, sp, #180
005f4ff0  30 10 8d e5  str	r1, [sp, #0x30]
005f4ff4  e8 10 dd e5  ldrb	r1, [sp, #0xe8]
005f4ff8  03 80 a0 e1  mov	r8, r3
005f4ffc  5c 20 8d e5  str	r2, [sp, #0x5c]
005f5000  2c 10 8d e5  str	r1, [sp, #0x2c]
005f5004  00 a0 a0 e1  mov	r10, r0
005f5008  51 e2 ff eb  bl	0x5ed954 <_ZN6glitch5video12pixel_format13getPackedTypeENS0_14E_PIXEL_FORMATE> @ imm = #-0x76bc
005f500c  00 40 a0 e1  mov	r4, r0
005f5010  08 00 a0 e1  mov	r0, r8
005f5014  4e e2 ff eb  bl	0x5ed954 <_ZN6glitch5video12pixel_format13getPackedTypeENS0_14E_PIXEL_FORMATE> @ imm = #-0x76c8
005f5018  bc 7e 9f e5  ldr	r7, [pc, #0xebc]        @ 0x5f5edc <_ZN6glitch5video12pixel_format12_GLOBAL__N_113convertPackedENS0_14E_PIXEL_FORMATEPKvjS3_Pvjjjb+0xef4>
005f501c  04 01 80 e1  orr	r0, r0, r4, lsl #2
005f5020  07 70 8f e0  add	r7, pc, r7
005f5024  0a 00 50 e3  cmp	r0, #10
005f5028  00 f1 8f 90  addls	pc, pc, r0, lsl #2
005f502c  0a 00 00 ea  b	0x5f505c <_ZN6glitch5video12pixel_format12_GLOBAL__N_113convertPackedENS0_14E_PIXEL_FORMATEPKvjS3_Pvjjjb+0x74> @ imm = #0x28
005f5030  0c 00 00 ea  b	0x5f5068 <_ZN6glitch5video12pixel_format12_GLOBAL__N_113convertPackedENS0_14E_PIXEL_FORMATEPKvjS3_Pvjjjb+0x80> @ imm = #0x30
005f5034  16 00 00 ea  b	0x5f5094 <_ZN6glitch5video12pixel_format12_GLOBAL__N_113convertPackedENS0_14E_PIXEL_FORMATEPKvjS3_Pvjjjb+0xac> @ imm = #0x58
005f5038  99 00 00 ea  b	0x5f52a4 <_ZN6glitch5video12pixel_format12_GLOBAL__N_113convertPackedENS0_14E_PIXEL_FORMATEPKvjS3_Pvjjjb+0x2bc> @ imm = #0x264
005f503c  06 00 00 ea  b	0x5f505c <_ZN6glitch5video12pixel_format12_GLOBAL__N_113convertPackedENS0_14E_PIXEL_FORMATEPKvjS3_Pvjjjb+0x74> @ imm = #0x18
005f5040  1b 01 00 ea  b	0x5f54b4 <_ZN6glitch5video12pixel_format12_GLOBAL__N_113convertPackedENS0_14E_PIXEL_FORMATEPKvjS3_Pvjjjb+0x4cc> @ imm = #0x46c
005f5044  9a 01 00 ea  b	0x5f56b4 <_ZN6glitch5video12pixel_format12_GLOBAL__N_113convertPackedENS0_14E_PIXEL_FORMATEPKvjS3_Pvjjjb+0x6cc> @ imm = #0x668
005f5048  a5 01 00 ea  b	0x5f56e4 <_ZN6glitch5video12pixel_format12_GLOBAL__N_113convertPackedENS0_14E_PIXEL_FORMATEPKvjS3_Pvjjjb+0x6fc> @ imm = #0x694
005f504c  02 00 00 ea  b	0x5f505c <_ZN6glitch5video12pixel_format12_GLOBAL__N_113convertPackedENS0_14E_PIXEL_FORMATEPKvjS3_Pvjjjb+0x74> @ imm = #0x8
005f5050  29 02 00 ea  b	0x5f58fc <_ZN6glitch5video12pixel_format12_GLOBAL__N_113convertPackedENS0_14E_PIXEL_FORMATEPKvjS3_Pvjjjb+0x914> @ imm = #0x8a4
005f5054  aa 02 00 ea  b	0x5f5b04 <_ZN6glitch5video12pixel_format12_GLOBAL__N_113convertPackedENS0_14E_PIXEL_FORMATEPKvjS3_Pvjjjb+0xb1c> @ imm = #0xaa8
005f5058  2d 03 00 ea  b	0x5f5d14 <_ZN6glitch5video12pixel_format12_GLOBAL__N_113convertPackedENS0_14E_PIXEL_FORMATEPKvjS3_Pvjjjb+0xd2c> @ imm = #0xcb4
005f505c  00 00 a0 e3  mov	r0, #0
005f5060  b4 d0 8d e2  add	sp, sp, #180
005f5064  f0 8f bd e8  pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
005f5068  08 30 a0 e1  mov	r3, r8
005f506c  d8 40 8d e2  add	r4, sp, #216
005f5070  f0 00 94 e8  ldm	r4, {r4, r5, r6, r7}
005f5074  2c 80 9d e5  ldr	r8, [sp, #0x2c]
005f5078  0a 00 a0 e1  mov	r0, r10
005f507c  30 10 9d e5  ldr	r1, [sp, #0x30]
005f5080  5c 20 9d e5  ldr	r2, [sp, #0x5c]
005f5084  f0 00 8d e8  stm	sp, {r4, r5, r6, r7}
005f5088  10 80 8d e5  str	r8, [sp, #0x10]
005f508c  d2 f7 ff eb  bl	0x5f2fdc <_ZN6glitch5video12pixel_format12_GLOBAL__N_117convertPackedImplIhhEEbNS0_14E_PIXEL_FORMATEPKT_jS4_PT0_jjjb> @ imm = #-0x20b8
005f5090  f2 ff ff ea  b	0x5f5060 <_ZN6glitch5video12pixel_format12_GLOBAL__N_113convertPackedENS0_14E_PIXEL_FORMATEPKvjS3_Pvjjjb+0x78> @ imm = #-0x38
005f5094  44 9e 9f e5  ldr	r9, [pc, #0xe44]        @ 0x5f5ee0 <_ZN6glitch5video12pixel_format12_GLOBAL__N_113convertPackedENS0_14E_PIXEL_FORMATEPKvjS3_Pvjjjb+0xef8>
005f5098  28 b0 a0 e3  mov	r11, #40
005f509c  30 40 9d e5  ldr	r4, [sp, #0x30]

; convert gates and direct routes
; RANGE 0x005f95ac..0x005f986c end-exclusive; file_offset=0x5f95ac; exact byte match.
005f95ac  f0 4f 2d e9  push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
005f95b0  4d df 4d e2  sub	sp, sp, #308
005f95b4  a0 5e 9f e5  ldr	r5, [pc, #0xea0]        @ 0x5fa45c <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb+0xeb0>
005f95b8  01 80 a0 e1  mov	r8, r1
005f95bc  68 11 dd e5  ldrb	r1, [sp, #0x168]
005f95c0  00 00 52 e3  cmp	r2, #0
005f95c4  05 50 8f e0  add	r5, pc, r5
005f95c8  5c 20 8d e5  str	r2, [sp, #0x5c]
005f95cc  03 70 a0 e1  mov	r7, r3
005f95d0  00 a0 a0 e1  mov	r10, r0
005f95d4  5c 91 9d e5  ldr	r9, [sp, #0x15c]
005f95d8  60 41 9d e5  ldr	r4, [sp, #0x160]
005f95dc  38 10 8d e5  str	r1, [sp, #0x38]
005f95e0  54 00 00 0a  beq	0x5f9738 <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb+0x18c> @ imm = #0x150
005f95e4  00 00 59 e3  cmp	r9, #0
005f95e8  4d 00 00 0a  beq	0x5f9724 <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb+0x178> @ imm = #0x134
005f95ec  07 00 5a e1  cmp	r10, r7
005f95f0  6a 00 00 0a  beq	0x5f97a0 <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb+0x1f4> @ imm = #0x1a8
005f95f4  58 61 9d e5  ldr	r6, [sp, #0x158]
005f95f8  06 00 58 e1  cmp	r8, r6
005f95fc  81 00 00 0a  beq	0x5f9808 <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb+0x25c> @ imm = #0x204
005f9600  58 be 9f e5  ldr	r11, [pc, #0xe58]       @ 0x5fa460 <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb+0xeb4>
005f9604  28 10 a0 e3  mov	r1, #40
005f9608  91 07 06 e0  mul	r6, r1, r7
005f960c  0b 20 95 e7  ldr	r2, [r5, r11]
005f9610  06 30 92 e7  ldr	r3, [r2, r6]
005f9614  06 60 82 e0  add	r6, r2, r6
005f9618  08 00 13 e3  tst	r3, #8
005f961c  0c 00 00 0a  beq	0x5f9654 <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb+0xa8> @ imm = #0x30
005f9620  77 30 ff e6  uxth	r3, r7
005f9624  27 00 53 e3  cmp	r3, #39
005f9628  59 00 00 0a  beq	0x5f9794 <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb+0x1e8> @ imm = #0x164
005f962c  00 00 a0 e3  mov	r0, #0
005f9630  c3 d0 ff eb  bl	0x5ed944 <_ZN6glitch5video18getStringsInternalEPNS0_14E_PIXEL_FORMATE> @ imm = #-0xbcf4
005f9634  07 11 90 e7  ldr	r1, [r0, r7, lsl #2]
005f9638  24 0e 9f e5  ldr	r0, [pc, #0xe24]        @ 0x5fa464 <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb+0xeb8>
005f963c  03 20 a0 e3  mov	r2, #3
005f9640  00 00 8f e0  add	r0, pc, r0
005f9644  a7 45 00 eb  bl	0x60ace8 <_ZN6glitch2os7Printer3logEPKcS3_NS_10ELOG_LEVELE> @ imm = #0x1169c
005f9648  00 00 a0 e3  mov	r0, #0
005f964c  4d df 8d e2  add	sp, sp, #308
005f9650  f0 8f bd e8  pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
005f9654  91 0a 01 e0  mul	r1, r1, r10
005f9658  01 20 92 e7  ldr	r2, [r2, r1]
005f965c  08 00 12 e3  tst	r2, #8
005f9660  5a 00 00 1a  bne	0x5f97d0 <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb+0x224> @ imm = #0x168
005f9664  04 00 13 e3  tst	r3, #4
005f9668  11 00 00 0a  beq	0x5f96b4 <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb+0x108> @ imm = #0x44
005f966c  04 00 12 e3  tst	r2, #4
005f9670  0f 00 00 1a  bne	0x5f96b4 <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb+0x108> @ imm = #0x3c
005f9674  0a 00 a0 e1  mov	r0, r10
005f9678  28 30 8d e5  str	r3, [sp, #0x28]
005f967c  b4 d0 ff eb  bl	0x5ed954 <_ZN6glitch5video12pixel_format13getPackedTypeENS0_14E_PIXEL_FORMATE> @ imm = #-0xbd30
005f9680  14 20 d6 e5  ldrb	r2, [r6, #0x14]
005f9684  28 30 9d e5  ldr	r3, [sp, #0x28]
005f9688  00 21 82 e1  orr	r2, r2, r0, lsl #2
005f968c  04 20 42 e2  sub	r2, r2, #4
005f9690  05 00 52 e3  cmp	r2, #5
005f9694  02 f1 8f 90  addls	pc, pc, r2, lsl #2
005f9698  01 01 00 ea  b	0x5f9aa4 <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb+0x4f8> @ imm = #0x404
005f969c  cf 00 00 ea  b	0x5f99e0 <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb+0x434> @ imm = #0x33c
005f96a0  05 01 00 ea  b	0x5f9abc <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb+0x510> @ imm = #0x414
005f96a4  fe 00 00 ea  b	0x5f9aa4 <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb+0x4f8> @ imm = #0x3f8
005f96a8  fd 00 00 ea  b	0x5f9aa4 <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb+0x4f8> @ imm = #0x3f4
005f96ac  9a 00 00 ea  b	0x5f991c <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb+0x370> @ imm = #0x268
005f96b0  6d 00 00 ea  b	0x5f986c <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb+0x2c0> @ imm = #0x1b4
005f96b4  0b 10 95 e7  ldr	r1, [r5, r11]
005f96b8  28 00 a0 e3  mov	r0, #40
005f96bc  90 17 2c e0  mla	r12, r0, r7, r1
005f96c0  90 1a 21 e0  mla	r1, r0, r10, r1
005f96c4  14 00 dc e5  ldrb	r0, [r12, #0x14]
005f96c8  14 10 d1 e5  ldrb	r1, [r1, #0x14]
005f96cc  00 00 51 e1  cmp	r1, r0
005f96d0  1c 00 00 0a  beq	0x5f9748 <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb+0x19c> @ imm = #0x70
005f96d4  03 10 82 e1  orr	r1, r2, r3
005f96d8  02 10 11 e2  ands	r1, r1, #2
005f96dc  58 00 00 1a  bne	0x5f9844 <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb+0x298> @ imm = #0x160
005f96e0  0a 00 4a e2  sub	r0, r10, #10
005f96e4  01 00 50 e3  cmp	r0, #1
005f96e8  f3 01 00 9a  bls	0x5f9ebc <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb+0x910> @ imm = #0x7cc
005f96ec  58 e1 9d e5  ldr	lr, [sp, #0x158]
005f96f0  08 40 8d e5  str	r4, [sp, #0x8]
005f96f4  38 50 9d e5  ldr	r5, [sp, #0x38]
005f96f8  64 41 9d e5  ldr	r4, [sp, #0x164]
005f96fc  0a 00 a0 e1  mov	r0, r10
005f9700  08 10 a0 e1  mov	r1, r8
005f9704  5c 20 9d e5  ldr	r2, [sp, #0x5c]
005f9708  07 30 a0 e1  mov	r3, r7
005f970c  00 e0 8d e5  str	lr, [sp]
005f9710  04 90 8d e5  str	r9, [sp, #0x4]
005f9714  0c 40 8d e5  str	r4, [sp, #0xc]
005f9718  10 50 8d e5  str	r5, [sp, #0x10]
005f971c  31 ee ff eb  bl	0x5f4fe8 <_ZN6glitch5video12pixel_format12_GLOBAL__N_113convertPackedENS0_14E_PIXEL_FORMATEPKvjS3_Pvjjjb> @ imm = #-0x473c
005f9720  c9 ff ff ea  b	0x5f964c <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb+0xa0> @ imm = #-0xdc
005f9724  07 00 a0 e1  mov	r0, r7
005f9728  04 10 a0 e1  mov	r1, r4
005f972c  ee d0 ff eb  bl	0x5edaec <_ZN6glitch5video12pixel_format12computePitchENS0_14E_PIXEL_FORMATEj> @ imm = #-0xbc48
005f9730  00 90 a0 e1  mov	r9, r0
005f9734  ac ff ff ea  b	0x5f95ec <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb+0x40> @ imm = #-0x150
005f9738  04 10 a0 e1  mov	r1, r4
005f973c  ea d0 ff eb  bl	0x5edaec <_ZN6glitch5video12pixel_format12computePitchENS0_14E_PIXEL_FORMATEj> @ imm = #-0xbc58
005f9740  5c 00 8d e5  str	r0, [sp, #0x5c]
005f9744  a6 ff ff ea  b	0x5f95e4 <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb+0x38> @ imm = #-0x168
005f9748  40 00 12 e3  tst	r2, #64
005f974c  e0 ff ff 1a  bne	0x5f96d4 <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb+0x128> @ imm = #-0x80
005f9750  40 00 13 e3  tst	r3, #64
005f9754  de ff ff 1a  bne	0x5f96d4 <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb+0x128> @ imm = #-0x88
005f9758  01 00 13 e3  tst	r3, #1
005f975c  01 00 00 0a  beq	0x5f9768 <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb+0x1bc> @ imm = #0x4
005f9760  01 00 12 e3  tst	r2, #1
005f9764  da ff ff 0a  beq	0x5f96d4 <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb+0x128> @ imm = #-0x98
005f9768  02 00 57 e3  cmp	r7, #2
005f976c  02 00 5a 13  cmpne	r10, #2
005f9770  d7 ff ff 0a  beq	0x5f96d4 <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb+0x128> @ imm = #-0xa4
005f9774  04 00 51 e3  cmp	r1, #4
005f9778  01 f1 8f 90  addls	pc, pc, r1, lsl #2
005f977c  34 00 00 ea  b	0x5f9854 <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb+0x2a8> @ imm = #0xd0
005f9780  6b 01 00 ea  b	0x5f9d34 <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb+0x788> @ imm = #0x5ac
005f9784  30 01 00 ea  b	0x5f9c4c <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb+0x6a0> @ imm = #0x4c0
005f9788  f7 00 00 ea  b	0x5f9b6c <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb+0x5c0> @ imm = #0x3dc
005f978c  2e 01 00 ea  b	0x5f9c4c <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb+0x6a0> @ imm = #0x4b8
005f9790  f5 00 00 ea  b	0x5f9b6c <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb+0x5c0> @ imm = #0x3d4
005f9794  cc 1c 9f e5  ldr	r1, [pc, #0xccc]        @ 0x5fa468 <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb+0xebc>
005f9798  01 10 8f e0  add	r1, pc, r1
005f979c  a5 ff ff ea  b	0x5f9638 <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb+0x8c> @ imm = #-0x16c
005f97a0  04 40 8d e5  str	r4, [sp, #0x4]
005f97a4  38 50 9d e5  ldr	r5, [sp, #0x38]
005f97a8  64 41 9d e5  ldr	r4, [sp, #0x164]
005f97ac  0a 00 a0 e1  mov	r0, r10
005f97b0  08 10 a0 e1  mov	r1, r8
005f97b4  5c 20 9d e5  ldr	r2, [sp, #0x5c]
005f97b8  58 31 9d e5  ldr	r3, [sp, #0x158]
005f97bc  00 90 8d e5  str	r9, [sp]
005f97c0  08 40 8d e5  str	r4, [sp, #0x8]
005f97c4  0c 50 8d e5  str	r5, [sp, #0xc]
005f97c8  0f d3 ff eb  bl	0x5ee40c <_ZN6glitch5video12pixel_format12_GLOBAL__N_14copyENS0_14E_PIXEL_FORMATEPKvjPvjjjb> @ imm = #-0xb3c4
005f97cc  9e ff ff ea  b	0x5f964c <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb+0xa0> @ imm = #-0x188
005f97d0  58 e1 9d e5  ldr	lr, [sp, #0x158]
005f97d4  08 40 8d e5  str	r4, [sp, #0x8]
005f97d8  38 50 9d e5  ldr	r5, [sp, #0x38]
005f97dc  64 41 9d e5  ldr	r4, [sp, #0x164]
005f97e0  0a 00 a0 e1  mov	r0, r10
005f97e4  08 10 a0 e1  mov	r1, r8
005f97e8  5c 20 9d e5  ldr	r2, [sp, #0x5c]
005f97ec  07 30 a0 e1  mov	r3, r7
005f97f0  00 e0 8d e5  str	lr, [sp]
005f97f4  04 90 8d e5  str	r9, [sp, #0x4]
005f97f8  0c 40 8d e5  str	r4, [sp, #0xc]
005f97fc  10 50 8d e5  str	r5, [sp, #0x10]
005f9800  23 10 00 eb  bl	0x5fd894 <_ZN6glitch5video12pixel_format12_GLOBAL__N_110decompressENS0_14E_PIXEL_FORMATEPKvjS3_Pvjjjb> @ imm = #0x408c
005f9804  90 ff ff ea  b	0x5f964c <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb+0xa0> @ imm = #-0x1c0
005f9808  04 10 a0 e1  mov	r1, r4
005f980c  0a 00 a0 e1  mov	r0, r10
005f9810  b5 d0 ff eb  bl	0x5edaec <_ZN6glitch5video12pixel_format12computePitchENS0_14E_PIXEL_FORMATEj> @ imm = #-0xbd2c
005f9814  04 10 a0 e1  mov	r1, r4
005f9818  00 60 a0 e1  mov	r6, r0
005f981c  07 00 a0 e1  mov	r0, r7
005f9820  b1 d0 ff eb  bl	0x5edaec <_ZN6glitch5video12pixel_format12computePitchENS0_14E_PIXEL_FORMATEj> @ imm = #-0xbd3c
005f9824  00 00 56 e1  cmp	r6, r0
005f9828  0b 00 00 0a  beq	0x5f985c <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb+0x2b0> @ imm = #0x2c
005f982c  38 0c 9f e5  ldr	r0, [pc, #0xc38]        @ 0x5fa46c <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb+0xec0>
005f9830  03 10 a0 e3  mov	r1, #3
005f9834  00 00 8f e0  add	r0, pc, r0
005f9838  18 45 00 eb  bl	0x60aca0 <_ZN6glitch2os7Printer3logEPKcNS_10ELOG_LEVELE> @ imm = #0x11460
005f983c  00 00 a0 e3  mov	r0, #0
005f9840  81 ff ff ea  b	0x5f964c <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb+0xa0> @ imm = #-0x1fc
005f9844  24 0c 9f e5  ldr	r0, [pc, #0xc24]        @ 0x5fa470 <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb+0xec4>
005f9848  03 10 a0 e3  mov	r1, #3
005f984c  00 00 8f e0  add	r0, pc, r0
005f9850  12 45 00 eb  bl	0x60aca0 <_ZN6glitch2os7Printer3logEPKcNS_10ELOG_LEVELE> @ imm = #0x11448
005f9854  00 00 a0 e3  mov	r0, #0
005f9858  7b ff ff ea  b	0x5f964c <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb+0xa0> @ imm = #-0x214
005f985c  5c c0 9d e5  ldr	r12, [sp, #0x5c]
005f9860  09 00 5c e1  cmp	r12, r9
005f9864  f0 ff ff 1a  bne	0x5f982c <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb+0x280> @ imm = #-0x40
005f9868  64 ff ff ea  b	0x5f9600 <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb+0x54> @ imm = #-0x270

; compressed dispatch limits
; RANGE 0x005fd894..0x005fda68 end-exclusive; file_offset=0x5fd894; exact byte match.
005fd894  f0 4f 2d e9  push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
005fd898  11 c0 40 e2  sub	r12, r0, #17
005fd89c  24 d0 4d e2  sub	sp, sp, #36
005fd8a0  03 00 5c e3  cmp	r12, #3
005fd8a4  00 40 a0 e1  mov	r4, r0
005fd8a8  1c 10 8d e5  str	r1, [sp, #0x1c]
005fd8ac  02 a0 a0 e1  mov	r10, r2
005fd8b0  03 60 a0 e1  mov	r6, r3
005fd8b4  48 70 9d e5  ldr	r7, [sp, #0x48]
005fd8b8  4c 90 9d e5  ldr	r9, [sp, #0x4c]
005fd8bc  50 50 9d e5  ldr	r5, [sp, #0x50]
005fd8c0  54 80 9d e5  ldr	r8, [sp, #0x54]
005fd8c4  58 b0 dd e5  ldrb	r11, [sp, #0x58]
005fd8c8  2d 00 00 9a  bls	0x5fd984 <_ZN6glitch5video12pixel_format12_GLOBAL__N_110decompressENS0_14E_PIXEL_FORMATEPKvjS3_Pvjjjb+0xf0> @ imm = #0xb4
005fd8cc  05 10 a0 e1  mov	r1, r5
005fd8d0  85 c0 ff eb  bl	0x5edaec <_ZN6glitch5video12pixel_format12computePitchENS0_14E_PIXEL_FORMATEj> @ imm = #-0xfdec
005fd8d4  0a 00 50 e1  cmp	r0, r10
005fd8d8  21 00 00 1a  bne	0x5fd964 <_ZN6glitch5video12pixel_format12_GLOBAL__N_110decompressENS0_14E_PIXEL_FORMATEPKvjS3_Pvjjjb+0xd0> @ imm = #0x84
005fd8dc  15 30 44 e2  sub	r3, r4, #21
005fd8e0  02 00 53 e3  cmp	r3, #2
005fd8e4  54 00 00 9a  bls	0x5fda3c <_ZN6glitch5video12pixel_format12_GLOBAL__N_110decompressENS0_14E_PIXEL_FORMATEPKvjS3_Pvjjjb+0x1a8> @ imm = #0x150
005fd8e8  06 00 a0 e1  mov	r0, r6
005fd8ec  05 10 a0 e1  mov	r1, r5
005fd8f0  7d c0 ff eb  bl	0x5edaec <_ZN6glitch5video12pixel_format12computePitchENS0_14E_PIXEL_FORMATEj> @ imm = #-0xfe0c
005fd8f4  0e 00 56 e3  cmp	r6, #14
005fd8f8  09 00 50 01  cmpeq	r0, r9
005fd8fc  00 a0 a0 e1  mov	r10, r0
005fd900  25 00 00 1a  bne	0x5fd99c <_ZN6glitch5video12pixel_format12_GLOBAL__N_110decompressENS0_14E_PIXEL_FORMATEPKvjS3_Pvjjjb+0x108> @ imm = #0x94
005fd904  18 10 44 e2  sub	r1, r4, #24
005fd908  01 00 51 e3  cmp	r1, #1
005fd90c  00 10 a0 83  movhi	r1, #0
005fd910  01 10 a0 93  movls	r1, #1
005fd914  1c 00 9d e5  ldr	r0, [sp, #0x1c]
005fd918  05 20 a0 e1  mov	r2, r5
005fd91c  08 30 a0 e1  mov	r3, r8
005fd920  00 70 8d e5  str	r7, [sp]
005fd924  8f 87 02 eb  bl	0x69f768 <_Z15PVRTCDecompressPKviiiPh> @ imm = #0xa1e3c
005fd928  07 10 a0 e1  mov	r1, r7
005fd92c  00 00 5b e3  cmp	r11, #0
005fd930  01 40 a0 03  moveq	r4, #1
005fd934  0f 00 00 0a  beq	0x5fd978 <_ZN6glitch5video12pixel_format12_GLOBAL__N_110decompressENS0_14E_PIXEL_FORMATEPKvjS3_Pvjjjb+0xe4> @ imm = #0x3c
005fd938  0a 20 a0 e1  mov	r2, r10
005fd93c  06 30 a0 e1  mov	r3, r6
005fd940  0e 00 a0 e3  mov	r0, #14
005fd944  48 70 8d e5  str	r7, [sp, #0x48]
005fd948  4c 90 8d e5  str	r9, [sp, #0x4c]
005fd94c  50 50 8d e5  str	r5, [sp, #0x50]
005fd950  54 80 8d e5  str	r8, [sp, #0x54]
005fd954  58 b0 8d e5  str	r11, [sp, #0x58]
005fd958  24 d0 8d e2  add	sp, sp, #36
005fd95c  f0 4f bd e8  pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
005fd960  11 ef ff ea  b	0x5f95ac <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb> @ imm = #-0x43bc
005fd964  e8 00 9f e5  ldr	r0, [pc, #0xe8]         @ 0x5fda54 <_ZN6glitch5video12pixel_format12_GLOBAL__N_110decompressENS0_14E_PIXEL_FORMATEPKvjS3_Pvjjjb+0x1c0>
005fd968  03 10 a0 e3  mov	r1, #3
005fd96c  00 40 a0 e3  mov	r4, #0
005fd970  00 00 8f e0  add	r0, pc, r0
005fd974  c9 34 00 eb  bl	0x60aca0 <_ZN6glitch2os7Printer3logEPKcNS_10ELOG_LEVELE> @ imm = #0xd324
005fd978  04 00 a0 e1  mov	r0, r4
005fd97c  24 d0 8d e2  add	sp, sp, #36
005fd980  f0 8f bd e8  pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
005fd984  cc 00 9f e5  ldr	r0, [pc, #0xcc]         @ 0x5fda58 <_ZN6glitch5video12pixel_format12_GLOBAL__N_110decompressENS0_14E_PIXEL_FORMATEPKvjS3_Pvjjjb+0x1c4>
005fd988  03 10 a0 e3  mov	r1, #3
005fd98c  00 40 a0 e3  mov	r4, #0
005fd990  00 00 8f e0  add	r0, pc, r0
005fd994  c1 34 00 eb  bl	0x60aca0 <_ZN6glitch2os7Printer3logEPKcNS_10ELOG_LEVELE> @ imm = #0xd304
005fd998  f6 ff ff ea  b	0x5fd978 <_ZN6glitch5video12pixel_format12_GLOBAL__N_110decompressENS0_14E_PIXEL_FORMATEPKvjS3_Pvjjjb+0xe4> @ imm = #-0x28
005fd99c  b8 00 9f e5  ldr	r0, [pc, #0xb8]         @ 0x5fda5c <_ZN6glitch5video12pixel_format12_GLOBAL__N_110decompressENS0_14E_PIXEL_FORMATEPKvjS3_Pvjjjb+0x1c8>
005fd9a0  b8 10 9f e5  ldr	r1, [pc, #0xb8]         @ 0x5fda60 <_ZN6glitch5video12pixel_format12_GLOBAL__N_110decompressENS0_14E_PIXEL_FORMATEPKvjS3_Pvjjjb+0x1cc>
005fd9a4  02 20 a0 e3  mov	r2, #2
005fd9a8  00 00 8f e0  add	r0, pc, r0
005fd9ac  01 10 8f e0  add	r1, pc, r1
005fd9b0  cc 34 00 eb  bl	0x60ace8 <_ZN6glitch2os7Printer3logEPKcS3_NS_10ELOG_LEVELE> @ imm = #0xd330
005fd9b4  05 01 a0 e1  lsl	r0, r5, #2
005fd9b8  00 10 a0 e3  mov	r1, #0
005fd9bc  98 00 00 e0  mul	r0, r8, r0
005fd9c0  f8 d9 fc eb  bl	0x5341a8 <_ZnajN6glitch6memory13E_MEMORY_HINTE> @ imm = #-0xc9820
005fd9c4  18 10 44 e2  sub	r1, r4, #24
005fd9c8  00 c0 a0 e1  mov	r12, r0
005fd9cc  01 00 51 e3  cmp	r1, #1
005fd9d0  00 10 a0 83  movhi	r1, #0
005fd9d4  01 10 a0 93  movls	r1, #1
005fd9d8  1c 00 9d e5  ldr	r0, [sp, #0x1c]
005fd9dc  05 20 a0 e1  mov	r2, r5
005fd9e0  08 30 a0 e1  mov	r3, r8
005fd9e4  00 c0 8d e5  str	r12, [sp]
005fd9e8  18 c0 8d e5  str	r12, [sp, #0x18]
005fd9ec  5d 87 02 eb  bl	0x69f768 <_Z15PVRTCDecompressPKviiiPh> @ imm = #0xa1d74
005fd9f0  18 c0 9d e5  ldr	r12, [sp, #0x18]
005fd9f4  00 00 5c e3  cmp	r12, #0
005fd9f8  0c 10 a0 01  moveq	r1, r12
005fd9fc  ca ff ff 0a  beq	0x5fd92c <_ZN6glitch5video12pixel_format12_GLOBAL__N_110decompressENS0_14E_PIXEL_FORMATEPKvjS3_Pvjjjb+0x98> @ imm = #-0xd8
005fda00  0c 10 a0 e1  mov	r1, r12
005fda04  0a 20 a0 e1  mov	r2, r10
005fda08  06 30 a0 e1  mov	r3, r6
005fda0c  0e 00 a0 e3  mov	r0, #14
005fda10  18 c0 8d e5  str	r12, [sp, #0x18]
005fda14  80 02 8d e8  stm	sp, {r7, r9}
005fda18  08 50 8d e5  str	r5, [sp, #0x8]
005fda1c  0c 80 8d e5  str	r8, [sp, #0xc]
005fda20  10 b0 8d e5  str	r11, [sp, #0x10]
005fda24  e0 ee ff eb  bl	0x5f95ac <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb> @ imm = #-0x4480
005fda28  18 c0 9d e5  ldr	r12, [sp, #0x18]
005fda2c  00 40 a0 e1  mov	r4, r0
005fda30  0c 00 a0 e1  mov	r0, r12
005fda34  9f 41 f4 eb  bl	0x30e0b8 <_ZdaPv@plt>   @ imm = #-0x2ef984
005fda38  ce ff ff ea  b	0x5fd978 <_ZN6glitch5video12pixel_format12_GLOBAL__N_110decompressENS0_14E_PIXEL_FORMATEPKvjS3_Pvjjjb+0xe4> @ imm = #-0xc8
005fda3c  20 00 9f e5  ldr	r0, [pc, #0x20]         @ 0x5fda64 <_ZN6glitch5video12pixel_format12_GLOBAL__N_110decompressENS0_14E_PIXEL_FORMATEPKvjS3_Pvjjjb+0x1d0>
005fda40  03 10 a0 e3  mov	r1, #3
005fda44  00 40 a0 e3  mov	r4, #0
005fda48  00 00 8f e0  add	r0, pc, r0
005fda4c  93 34 00 eb  bl	0x60aca0 <_ZN6glitch2os7Printer3logEPKcNS_10ELOG_LEVELE> @ imm = #0xd24c
005fda50  c8 ff ff ea  b	0x5fd978 <_ZN6glitch5video12pixel_format12_GLOBAL__N_110decompressENS0_14E_PIXEL_FORMATEPKvjS3_Pvjjjb+0xe4> @ imm = #-0xe0
005fda54  e8 65 2e 00  .word 0x002e65e8
005fda58  98 65 2e 00  .word 0x002e6598
005fda5c  20 66 2e 00  .word 0x002e6620
005fda60  34 66 2e 00  .word 0x002e6634
005fda64  58 65 2e 00  .word 0x002e6558
