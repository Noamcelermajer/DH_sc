; Byte-backed, bounded ARM excerpts from libDungeonHunter2.so in the supplied APK.
; APK SHA-256: 32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200
; ELF SHA-256: 36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80
; Each excerpt's raw instruction/data bytes were compared with the file-backed PT_LOAD bytes.

; --- mesh_buffer_c2_stream_mask: Collada C2 stream slots and generic allocation ---
; ELF VA [0x006bd114, 0x006bd3d8); 708 bytes; SHA-256 9769d930518ca0dde792049818b3172fbeead96d1a51d7223caa601ee62a68c9

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

006bcf80 <_ZN6glitch5scene11CMeshBufferC2EPNS_5video12IVideoDriverERNS_7collada5SMeshEjRKNS5_13SBufferConfigESA_b>:
  6bd114: e3a00e1e     	mov	r0, #480
  6bd118: ebf9dd35     	bl	0x5345f4 <_ZN6glitch4core18allocProcessBufferEi> @ imm = #-0x188b2c
  6bd11c: e59d8068     	ldr	r8, [sp, #0x68]
  6bd120: e1d530dc     	ldrsb	r3, [r5, #12]
  6bd124: e1a07000     	mov	r7, r0
  6bd128: e3a0b000     	mov	r11, #0
  6bd12c: e1a00009     	mov	r0, r9
  6bd130: e1a01006     	mov	r1, r6
  6bd134: e1a02005     	mov	r2, r5
  6bd138: e58d8008     	str	r8, [sp, #0x8]
  6bd13c: e88d0880     	stm	sp, {r7, r11}
  6bd140: ebfffeea     	bl	0x6bccf0 <_ZN6glitch5scene12_GLOBAL__N_19addStreamEPNS_5video12IVideoDriverERNS_7collada5SMeshERNS5_11SMeshBufferEcPNS2_17SVertexStreamDataEhRKNS5_13SBufferConfigE> @ imm = #-0x458
  6bd144: e3a0a001     	mov	r10, #1
  6bd148: e1a08000     	mov	r8, r0
  6bd14c: e58d5014     	str	r5, [sp, #0x14]
  6bd150: e58d5010     	str	r5, [sp, #0x10]
  6bd154: e59d0010     	ldr	r0, [sp, #0x10]
  6bd158: e1a01006     	mov	r1, r6
  6bd15c: e1a02005     	mov	r2, r5
  6bd160: e1d0c1d0     	ldrsb	r12, [r0, #16]
  6bd164: e1a00009     	mov	r0, r9
  6bd168: e35c0000     	cmp	r12, #0
  6bd16c: e1a0300c     	mov	r3, r12
  6bd170: ba00000d     	blt	0x6bd1ac <_ZN6glitch5scene11CMeshBufferC2EPNS_5video12IVideoDriverERNS_7collada5SMeshEjRKNS5_13SBufferConfigESA_b+0x22c> @ imm = #0x34
  6bd174: e58d8004     	str	r8, [sp, #0x4]
  6bd178: e59d8068     	ldr	r8, [sp, #0x68]
  6bd17c: e3a0c002     	mov	r12, #2
  6bd180: e18aab1c     	orr	r10, r10, r12, lsl r11
  6bd184: e58d8008     	str	r8, [sp, #0x8]
  6bd188: e58d7000     	str	r7, [sp]
  6bd18c: ebfffed7     	bl	0x6bccf0 <_ZN6glitch5scene12_GLOBAL__N_19addStreamEPNS_5video12IVideoDriverERNS_7collada5SMeshERNS5_11SMeshBufferEcPNS2_17SVertexStreamDataEhRKNS5_13SBufferConfigE> @ imm = #-0x4a4
  6bd190: e59dc010     	ldr	r12, [sp, #0x10]
  6bd194: e28bb001     	add	r11, r11, #1
  6bd198: e35b0004     	cmp	r11, #4
  6bd19c: e28cc001     	add	r12, r12, #1
  6bd1a0: e1a08000     	mov	r8, r0
  6bd1a4: e58dc010     	str	r12, [sp, #0x10]
  6bd1a8: 1affffe9     	bne	0x6bd154 <_ZN6glitch5scene11CMeshBufferC2EPNS_5video12IVideoDriverERNS_7collada5SMeshEjRKNS5_13SBufferConfigESA_b+0x1d4> @ imm = #-0x5c
  6bd1ac: e1d530dd     	ldrsb	r3, [r5, #13]
  6bd1b0: e3530000     	cmp	r3, #0
  6bd1b4: ba000009     	blt	0x6bd1e0 <_ZN6glitch5scene11CMeshBufferC2EPNS_5video12IVideoDriverERNS_7collada5SMeshEjRKNS5_13SBufferConfigESA_b+0x260> @ imm = #0x24
  6bd1b8: e58d8004     	str	r8, [sp, #0x4]
  6bd1bc: e59d8068     	ldr	r8, [sp, #0x68]
  6bd1c0: e1a00009     	mov	r0, r9
  6bd1c4: e1a01006     	mov	r1, r6
  6bd1c8: e1a02005     	mov	r2, r5
  6bd1cc: e58d8008     	str	r8, [sp, #0x8]
  6bd1d0: e58d7000     	str	r7, [sp]
  6bd1d4: ebfffec5     	bl	0x6bccf0 <_ZN6glitch5scene12_GLOBAL__N_19addStreamEPNS_5video12IVideoDriverERNS_7collada5SMeshERNS5_11SMeshBufferEcPNS2_17SVertexStreamDataEhRKNS5_13SBufferConfigE> @ imm = #-0x4ec
  6bd1d8: e38aa802     	orr	r10, r10, #131072
  6bd1dc: e1a08000     	mov	r8, r0
  6bd1e0: e1d530de     	ldrsb	r3, [r5, #14]
  6bd1e4: e3530000     	cmp	r3, #0
  6bd1e8: ba000007     	blt	0x6bd20c <_ZN6glitch5scene11CMeshBufferC2EPNS_5video12IVideoDriverERNS_7collada5SMeshEjRKNS5_13SBufferConfigESA_b+0x28c> @ imm = #0x1c
  6bd1ec: e59dc068     	ldr	r12, [sp, #0x68]
  6bd1f0: e1a00009     	mov	r0, r9
  6bd1f4: e1a01006     	mov	r1, r6
  6bd1f8: e1a02005     	mov	r2, r5
  6bd1fc: e88d1180     	stm	sp, {r7, r8, r12}
  6bd200: ebfffeba     	bl	0x6bccf0 <_ZN6glitch5scene12_GLOBAL__N_19addStreamEPNS_5video12IVideoDriverERNS_7collada5SMeshERNS5_11SMeshBufferEcPNS2_17SVertexStreamDataEhRKNS5_13SBufferConfigE> @ imm = #-0x518
  6bd204: e38aa701     	orr	r10, r10, #262144
  6bd208: e1a08000     	mov	r8, r0
  6bd20c: e1d530df     	ldrsb	r3, [r5, #15]
  6bd210: e3530000     	cmp	r3, #0
  6bd214: ba000009     	blt	0x6bd240 <_ZN6glitch5scene11CMeshBufferC2EPNS_5video12IVideoDriverERNS_7collada5SMeshEjRKNS5_13SBufferConfigESA_b+0x2c0> @ imm = #0x24
  6bd218: e58d8004     	str	r8, [sp, #0x4]
  6bd21c: e59d8068     	ldr	r8, [sp, #0x68]
  6bd220: e1a00009     	mov	r0, r9
  6bd224: e1a01006     	mov	r1, r6
  6bd228: e1a02005     	mov	r2, r5
  6bd22c: e58d8008     	str	r8, [sp, #0x8]
  6bd230: e58d7000     	str	r7, [sp]
  6bd234: ebfffead     	bl	0x6bccf0 <_ZN6glitch5scene12_GLOBAL__N_19addStreamEPNS_5video12IVideoDriverERNS_7collada5SMeshERNS5_11SMeshBufferEcPNS2_17SVertexStreamDataEhRKNS5_13SBufferConfigE> @ imm = #-0x54c
  6bd238: e38aa702     	orr	r10, r10, #524288
  6bd23c: e1a08000     	mov	r8, r0
  6bd240: e58d5010     	str	r5, [sp, #0x10]
  6bd244: e3a0b000     	mov	r11, #0
  6bd248: e59d0010     	ldr	r0, [sp, #0x10]
  6bd24c: e1a01006     	mov	r1, r6
  6bd250: e1a02005     	mov	r2, r5
  6bd254: e1d0c1d8     	ldrsb	r12, [r0, #24]
  6bd258: e1a00009     	mov	r0, r9
  6bd25c: e35c0000     	cmp	r12, #0
  6bd260: e1a0300c     	mov	r3, r12
  6bd264: ba00000d     	blt	0x6bd2a0 <_ZN6glitch5scene11CMeshBufferC2EPNS_5video12IVideoDriverERNS_7collada5SMeshEjRKNS5_13SBufferConfigESA_b+0x320> @ imm = #0x34
  6bd268: e58d8004     	str	r8, [sp, #0x4]
  6bd26c: e59d8068     	ldr	r8, [sp, #0x68]
  6bd270: e3a0c601     	mov	r12, #1048576
  6bd274: e18aab1c     	orr	r10, r10, r12, lsl r11
  6bd278: e58d8008     	str	r8, [sp, #0x8]
  6bd27c: e58d7000     	str	r7, [sp]
  6bd280: ebfffe9a     	bl	0x6bccf0 <_ZN6glitch5scene12_GLOBAL__N_19addStreamEPNS_5video12IVideoDriverERNS_7collada5SMeshERNS5_11SMeshBufferEcPNS2_17SVertexStreamDataEhRKNS5_13SBufferConfigE> @ imm = #-0x598
  6bd284: e59dc010     	ldr	r12, [sp, #0x10]
  6bd288: e28bb001     	add	r11, r11, #1
  6bd28c: e35b0004     	cmp	r11, #4
  6bd290: e28cc001     	add	r12, r12, #1
  6bd294: e1a08000     	mov	r8, r0
  6bd298: e58dc010     	str	r12, [sp, #0x10]
  6bd29c: 1affffe9     	bne	0x6bd248 <_ZN6glitch5scene11CMeshBufferC2EPNS_5video12IVideoDriverERNS_7collada5SMeshEjRKNS5_13SBufferConfigESA_b+0x2c8> @ imm = #-0x5c
  6bd2a0: e58d5010     	str	r5, [sp, #0x10]
  6bd2a4: e3a0b000     	mov	r11, #0
  6bd2a8: e59d0010     	ldr	r0, [sp, #0x10]
  6bd2ac: e1a01006     	mov	r1, r6
  6bd2b0: e1a02005     	mov	r2, r5
  6bd2b4: e1d0c1d4     	ldrsb	r12, [r0, #20]
  6bd2b8: e1a00009     	mov	r0, r9
  6bd2bc: e35c0000     	cmp	r12, #0
  6bd2c0: e1a0300c     	mov	r3, r12
  6bd2c4: ba00000d     	blt	0x6bd300 <_ZN6glitch5scene11CMeshBufferC2EPNS_5video12IVideoDriverERNS_7collada5SMeshEjRKNS5_13SBufferConfigESA_b+0x380> @ imm = #0x34
  6bd2c8: e58d8004     	str	r8, [sp, #0x4]
  6bd2cc: e59d8068     	ldr	r8, [sp, #0x68]
  6bd2d0: e3a0c401     	mov	r12, #16777216
  6bd2d4: e18aab1c     	orr	r10, r10, r12, lsl r11
  6bd2d8: e58d8008     	str	r8, [sp, #0x8]
  6bd2dc: e58d7000     	str	r7, [sp]
  6bd2e0: ebfffe82     	bl	0x6bccf0 <_ZN6glitch5scene12_GLOBAL__N_19addStreamEPNS_5video12IVideoDriverERNS_7collada5SMeshERNS5_11SMeshBufferEcPNS2_17SVertexStreamDataEhRKNS5_13SBufferConfigE> @ imm = #-0x5f8
  6bd2e4: e59dc010     	ldr	r12, [sp, #0x10]
  6bd2e8: e28bb001     	add	r11, r11, #1
  6bd2ec: e35b0004     	cmp	r11, #4
  6bd2f0: e28cc001     	add	r12, r12, #1
  6bd2f4: e1a08000     	mov	r8, r0
  6bd2f8: e58dc010     	str	r12, [sp, #0x10]
  6bd2fc: 1affffe9     	bne	0x6bd2a8 <_ZN6glitch5scene11CMeshBufferC2EPNS_5video12IVideoDriverERNS_7collada5SMeshEjRKNS5_13SBufferConfigESA_b+0x328> @ imm = #-0x5c
  6bd300: e1d531dc     	ldrsb	r3, [r5, #28]
  6bd304: e3530000     	cmp	r3, #0
  6bd308: ba000009     	blt	0x6bd334 <_ZN6glitch5scene11CMeshBufferC2EPNS_5video12IVideoDriverERNS_7collada5SMeshEjRKNS5_13SBufferConfigESA_b+0x3b4> @ imm = #0x24
  6bd30c: e58d8004     	str	r8, [sp, #0x4]
  6bd310: e59d8068     	ldr	r8, [sp, #0x68]
  6bd314: e1a00009     	mov	r0, r9
  6bd318: e1a01006     	mov	r1, r6
  6bd31c: e1a02005     	mov	r2, r5
  6bd320: e58d8008     	str	r8, [sp, #0x8]
  6bd324: e58d7000     	str	r7, [sp]
  6bd328: ebfffe70     	bl	0x6bccf0 <_ZN6glitch5scene12_GLOBAL__N_19addStreamEPNS_5video12IVideoDriverERNS_7collada5SMeshERNS5_11SMeshBufferEcPNS2_17SVertexStreamDataEhRKNS5_13SBufferConfigE> @ imm = #-0x640
  6bd32c: e38aa201     	orr	r10, r10, #268435456
  6bd330: e1a08000     	mov	r8, r0
  6bd334: e1d531dd     	ldrsb	r3, [r5, #29]
  6bd338: e3530000     	cmp	r3, #0
  6bd33c: ba000007     	blt	0x6bd360 <_ZN6glitch5scene11CMeshBufferC2EPNS_5video12IVideoDriverERNS_7collada5SMeshEjRKNS5_13SBufferConfigESA_b+0x3e0> @ imm = #0x1c
  6bd340: e59dc068     	ldr	r12, [sp, #0x68]
  6bd344: e1a00009     	mov	r0, r9
  6bd348: e1a01006     	mov	r1, r6
  6bd34c: e1a02005     	mov	r2, r5
  6bd350: e88d1180     	stm	sp, {r7, r8, r12}
  6bd354: ebfffe65     	bl	0x6bccf0 <_ZN6glitch5scene12_GLOBAL__N_19addStreamEPNS_5video12IVideoDriverERNS_7collada5SMeshERNS5_11SMeshBufferEcPNS2_17SVertexStreamDataEhRKNS5_13SBufferConfigE> @ imm = #-0x66c
  6bd358: e38aa202     	orr	r10, r10, #536870912
  6bd35c: e1a08000     	mov	r8, r0
  6bd360: e1a0100a     	mov	r1, r10
  6bd364: e28d0018     	add	r0, sp, #24
  6bd368: ebfb8ffb     	bl	0x5a135c <_ZN6glitch5video14CVertexStreams8allocateEj> @ imm = #-0x11c014
  6bd36c: e59d3018     	ldr	r3, [sp, #0x18]
  6bd370: e3530000     	cmp	r3, #0
  6bd374: 15932000     	ldrne	r2, [r3]
  6bd378: 12822001     	addne	r2, r2, #1
  6bd37c: 15832000     	strne	r2, [r3]
  6bd380: e594a014     	ldr	r10, [r4, #0x14]
  6bd384: e5843014     	str	r3, [r4, #0x14]
  6bd388: e35a0000     	cmp	r10, #0
  6bd38c: 0a000004     	beq	0x6bd3a4 <_ZN6glitch5scene11CMeshBufferC2EPNS_5video12IVideoDriverERNS_7collada5SMeshEjRKNS5_13SBufferConfigESA_b+0x424> @ imm = #0x10
  6bd390: e59a3000     	ldr	r3, [r10]
  6bd394: e2433001     	sub	r3, r3, #1
  6bd398: e3530000     	cmp	r3, #0
  6bd39c: e58a3000     	str	r3, [r10]
  6bd3a0: 0a000079     	beq	0x6bd58c <_ZN6glitch5scene11CMeshBufferC2EPNS_5video12IVideoDriverERNS_7collada5SMeshEjRKNS5_13SBufferConfigESA_b+0x60c> @ imm = #0x1e4
  6bd3a4: e59da018     	ldr	r10, [sp, #0x18]
  6bd3a8: e35a0000     	cmp	r10, #0
  6bd3ac: 0a000004     	beq	0x6bd3c4 <_ZN6glitch5scene11CMeshBufferC2EPNS_5video12IVideoDriverERNS_7collada5SMeshEjRKNS5_13SBufferConfigESA_b+0x444> @ imm = #0x10
  6bd3b0: e59a3000     	ldr	r3, [r10]
  6bd3b4: e2433001     	sub	r3, r3, #1
  6bd3b8: e3530000     	cmp	r3, #0
  6bd3bc: e58a3000     	str	r3, [r10]
  6bd3c0: 0a00006c     	beq	0x6bd578 <_ZN6glitch5scene11CMeshBufferC2EPNS_5video12IVideoDriverERNS_7collada5SMeshEjRKNS5_13SBufferConfigESA_b+0x5f8> @ imm = #0x1b0
  6bd3c4: e3e02000     	mvn	r2, #0
  6bd3c8: e3a03000     	mov	r3, #0
  6bd3cc: e5940014     	ldr	r0, [r4, #0x14]
  6bd3d0: e1a01007     	mov	r1, r7
  6bd3d4: ebfb90ec     	bl	0x5a178c <_ZN6glitch5video14CVertexStreams12setupStreamsEPKNS0_17SVertexStreamDataEjb> @ imm = #-0x11bc50

; --- mesh_buffer_c1_stream_mask: Collada C1 mirror of stream slots and allocation ---
; ELF VA [0x006bdb8c, 0x006bde5c); 720 bytes; SHA-256 be489b9da6c94fe2e22a24c221585b065018a8879eb5d56e1a5b3adbff61d7ce

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

006bd9f8 <_ZN6glitch5scene11CMeshBufferC1EPNS_5video12IVideoDriverERNS_7collada5SMeshEjRKNS5_13SBufferConfigESA_b>:
  6bdb8c: e3a00e1e     	mov	r0, #480
  6bdb90: ebf9da97     	bl	0x5345f4 <_ZN6glitch4core18allocProcessBufferEi> @ imm = #-0x1895a4
  6bdb94: e59d8068     	ldr	r8, [sp, #0x68]
  6bdb98: e1d530dc     	ldrsb	r3, [r5, #12]
  6bdb9c: e1a07000     	mov	r7, r0
  6bdba0: e3a0b000     	mov	r11, #0
  6bdba4: e1a00009     	mov	r0, r9
  6bdba8: e1a01006     	mov	r1, r6
  6bdbac: e1a02005     	mov	r2, r5
  6bdbb0: e58d8008     	str	r8, [sp, #0x8]
  6bdbb4: e88d0880     	stm	sp, {r7, r11}
  6bdbb8: ebfffc4c     	bl	0x6bccf0 <_ZN6glitch5scene12_GLOBAL__N_19addStreamEPNS_5video12IVideoDriverERNS_7collada5SMeshERNS5_11SMeshBufferEcPNS2_17SVertexStreamDataEhRKNS5_13SBufferConfigE> @ imm = #-0xed0
  6bdbbc: e3a0a001     	mov	r10, #1
  6bdbc0: e1a08000     	mov	r8, r0
  6bdbc4: e58d5014     	str	r5, [sp, #0x14]
  6bdbc8: e58d5010     	str	r5, [sp, #0x10]
  6bdbcc: e59d0010     	ldr	r0, [sp, #0x10]
  6bdbd0: e1a01006     	mov	r1, r6
  6bdbd4: e1a02005     	mov	r2, r5
  6bdbd8: e1d0c1d0     	ldrsb	r12, [r0, #16]
  6bdbdc: e1a00009     	mov	r0, r9
  6bdbe0: e35c0000     	cmp	r12, #0
  6bdbe4: e1a0300c     	mov	r3, r12
  6bdbe8: ba00000d     	blt	0x6bdc24 <_ZN6glitch5scene11CMeshBufferC1EPNS_5video12IVideoDriverERNS_7collada5SMeshEjRKNS5_13SBufferConfigESA_b+0x22c> @ imm = #0x34
  6bdbec: e58d8004     	str	r8, [sp, #0x4]
  6bdbf0: e59d8068     	ldr	r8, [sp, #0x68]
  6bdbf4: e3a0c002     	mov	r12, #2
  6bdbf8: e18aab1c     	orr	r10, r10, r12, lsl r11
  6bdbfc: e58d8008     	str	r8, [sp, #0x8]
  6bdc00: e58d7000     	str	r7, [sp]
  6bdc04: ebfffc39     	bl	0x6bccf0 <_ZN6glitch5scene12_GLOBAL__N_19addStreamEPNS_5video12IVideoDriverERNS_7collada5SMeshERNS5_11SMeshBufferEcPNS2_17SVertexStreamDataEhRKNS5_13SBufferConfigE> @ imm = #-0xf1c
  6bdc08: e59dc010     	ldr	r12, [sp, #0x10]
  6bdc0c: e28bb001     	add	r11, r11, #1
  6bdc10: e35b0004     	cmp	r11, #4
  6bdc14: e28cc001     	add	r12, r12, #1
  6bdc18: e1a08000     	mov	r8, r0
  6bdc1c: e58dc010     	str	r12, [sp, #0x10]
  6bdc20: 1affffe9     	bne	0x6bdbcc <_ZN6glitch5scene11CMeshBufferC1EPNS_5video12IVideoDriverERNS_7collada5SMeshEjRKNS5_13SBufferConfigESA_b+0x1d4> @ imm = #-0x5c
  6bdc24: e1d530dd     	ldrsb	r3, [r5, #13]
  6bdc28: e3530000     	cmp	r3, #0
  6bdc2c: ba000009     	blt	0x6bdc58 <_ZN6glitch5scene11CMeshBufferC1EPNS_5video12IVideoDriverERNS_7collada5SMeshEjRKNS5_13SBufferConfigESA_b+0x260> @ imm = #0x24
  6bdc30: e58d8004     	str	r8, [sp, #0x4]
  6bdc34: e59d8068     	ldr	r8, [sp, #0x68]
  6bdc38: e1a00009     	mov	r0, r9
  6bdc3c: e1a01006     	mov	r1, r6
  6bdc40: e1a02005     	mov	r2, r5
  6bdc44: e58d8008     	str	r8, [sp, #0x8]
  6bdc48: e58d7000     	str	r7, [sp]
  6bdc4c: ebfffc27     	bl	0x6bccf0 <_ZN6glitch5scene12_GLOBAL__N_19addStreamEPNS_5video12IVideoDriverERNS_7collada5SMeshERNS5_11SMeshBufferEcPNS2_17SVertexStreamDataEhRKNS5_13SBufferConfigE> @ imm = #-0xf64
  6bdc50: e38aa802     	orr	r10, r10, #131072
  6bdc54: e1a08000     	mov	r8, r0
  6bdc58: e1d530de     	ldrsb	r3, [r5, #14]
  6bdc5c: e3530000     	cmp	r3, #0
  6bdc60: ba000007     	blt	0x6bdc84 <_ZN6glitch5scene11CMeshBufferC1EPNS_5video12IVideoDriverERNS_7collada5SMeshEjRKNS5_13SBufferConfigESA_b+0x28c> @ imm = #0x1c
  6bdc64: e59dc068     	ldr	r12, [sp, #0x68]
  6bdc68: e1a00009     	mov	r0, r9
  6bdc6c: e1a01006     	mov	r1, r6
  6bdc70: e1a02005     	mov	r2, r5
  6bdc74: e88d1180     	stm	sp, {r7, r8, r12}
  6bdc78: ebfffc1c     	bl	0x6bccf0 <_ZN6glitch5scene12_GLOBAL__N_19addStreamEPNS_5video12IVideoDriverERNS_7collada5SMeshERNS5_11SMeshBufferEcPNS2_17SVertexStreamDataEhRKNS5_13SBufferConfigE> @ imm = #-0xf90
  6bdc7c: e38aa701     	orr	r10, r10, #262144
  6bdc80: e1a08000     	mov	r8, r0
  6bdc84: e1d530df     	ldrsb	r3, [r5, #15]
  6bdc88: e3530000     	cmp	r3, #0
  6bdc8c: ba000009     	blt	0x6bdcb8 <_ZN6glitch5scene11CMeshBufferC1EPNS_5video12IVideoDriverERNS_7collada5SMeshEjRKNS5_13SBufferConfigESA_b+0x2c0> @ imm = #0x24
  6bdc90: e58d8004     	str	r8, [sp, #0x4]
  6bdc94: e59d8068     	ldr	r8, [sp, #0x68]
  6bdc98: e1a00009     	mov	r0, r9
  6bdc9c: e1a01006     	mov	r1, r6
  6bdca0: e1a02005     	mov	r2, r5
  6bdca4: e58d8008     	str	r8, [sp, #0x8]
  6bdca8: e58d7000     	str	r7, [sp]
  6bdcac: ebfffc0f     	bl	0x6bccf0 <_ZN6glitch5scene12_GLOBAL__N_19addStreamEPNS_5video12IVideoDriverERNS_7collada5SMeshERNS5_11SMeshBufferEcPNS2_17SVertexStreamDataEhRKNS5_13SBufferConfigE> @ imm = #-0xfc4
  6bdcb0: e38aa702     	orr	r10, r10, #524288
  6bdcb4: e1a08000     	mov	r8, r0
  6bdcb8: e58d5010     	str	r5, [sp, #0x10]
  6bdcbc: e3a0b000     	mov	r11, #0
  6bdcc0: e59d0010     	ldr	r0, [sp, #0x10]
  6bdcc4: e1a01006     	mov	r1, r6
  6bdcc8: e1a02005     	mov	r2, r5
  6bdccc: e1d0c1d8     	ldrsb	r12, [r0, #24]
  6bdcd0: e1a00009     	mov	r0, r9
  6bdcd4: e35c0000     	cmp	r12, #0
  6bdcd8: e1a0300c     	mov	r3, r12
  6bdcdc: ba00000d     	blt	0x6bdd18 <_ZN6glitch5scene11CMeshBufferC1EPNS_5video12IVideoDriverERNS_7collada5SMeshEjRKNS5_13SBufferConfigESA_b+0x320> @ imm = #0x34
  6bdce0: e58d8004     	str	r8, [sp, #0x4]
  6bdce4: e59d8068     	ldr	r8, [sp, #0x68]
  6bdce8: e3a0c601     	mov	r12, #1048576
  6bdcec: e18aab1c     	orr	r10, r10, r12, lsl r11
  6bdcf0: e58d8008     	str	r8, [sp, #0x8]
  6bdcf4: e58d7000     	str	r7, [sp]
  6bdcf8: ebfffbfc     	bl	0x6bccf0 <_ZN6glitch5scene12_GLOBAL__N_19addStreamEPNS_5video12IVideoDriverERNS_7collada5SMeshERNS5_11SMeshBufferEcPNS2_17SVertexStreamDataEhRKNS5_13SBufferConfigE> @ imm = #-0x1010
  6bdcfc: e59dc010     	ldr	r12, [sp, #0x10]
  6bdd00: e28bb001     	add	r11, r11, #1
  6bdd04: e35b0004     	cmp	r11, #4
  6bdd08: e28cc001     	add	r12, r12, #1
  6bdd0c: e1a08000     	mov	r8, r0
  6bdd10: e58dc010     	str	r12, [sp, #0x10]
  6bdd14: 1affffe9     	bne	0x6bdcc0 <_ZN6glitch5scene11CMeshBufferC1EPNS_5video12IVideoDriverERNS_7collada5SMeshEjRKNS5_13SBufferConfigESA_b+0x2c8> @ imm = #-0x5c
  6bdd18: e58d5010     	str	r5, [sp, #0x10]
  6bdd1c: e3a0b000     	mov	r11, #0
  6bdd20: e59d0010     	ldr	r0, [sp, #0x10]
  6bdd24: e1a01006     	mov	r1, r6
  6bdd28: e1a02005     	mov	r2, r5
  6bdd2c: e1d0c1d4     	ldrsb	r12, [r0, #20]
  6bdd30: e1a00009     	mov	r0, r9
  6bdd34: e35c0000     	cmp	r12, #0
  6bdd38: e1a0300c     	mov	r3, r12
  6bdd3c: ba00000d     	blt	0x6bdd78 <_ZN6glitch5scene11CMeshBufferC1EPNS_5video12IVideoDriverERNS_7collada5SMeshEjRKNS5_13SBufferConfigESA_b+0x380> @ imm = #0x34
  6bdd40: e58d8004     	str	r8, [sp, #0x4]
  6bdd44: e59d8068     	ldr	r8, [sp, #0x68]
  6bdd48: e3a0c401     	mov	r12, #16777216
  6bdd4c: e18aab1c     	orr	r10, r10, r12, lsl r11
  6bdd50: e58d8008     	str	r8, [sp, #0x8]
  6bdd54: e58d7000     	str	r7, [sp]
  6bdd58: ebfffbe4     	bl	0x6bccf0 <_ZN6glitch5scene12_GLOBAL__N_19addStreamEPNS_5video12IVideoDriverERNS_7collada5SMeshERNS5_11SMeshBufferEcPNS2_17SVertexStreamDataEhRKNS5_13SBufferConfigE> @ imm = #-0x1070
  6bdd5c: e59dc010     	ldr	r12, [sp, #0x10]
  6bdd60: e28bb001     	add	r11, r11, #1
  6bdd64: e35b0004     	cmp	r11, #4
  6bdd68: e28cc001     	add	r12, r12, #1
  6bdd6c: e1a08000     	mov	r8, r0
  6bdd70: e58dc010     	str	r12, [sp, #0x10]
  6bdd74: 1affffe9     	bne	0x6bdd20 <_ZN6glitch5scene11CMeshBufferC1EPNS_5video12IVideoDriverERNS_7collada5SMeshEjRKNS5_13SBufferConfigESA_b+0x328> @ imm = #-0x5c
  6bdd78: e1d531dc     	ldrsb	r3, [r5, #28]
  6bdd7c: e3530000     	cmp	r3, #0
  6bdd80: ba000009     	blt	0x6bddac <_ZN6glitch5scene11CMeshBufferC1EPNS_5video12IVideoDriverERNS_7collada5SMeshEjRKNS5_13SBufferConfigESA_b+0x3b4> @ imm = #0x24
  6bdd84: e58d8004     	str	r8, [sp, #0x4]
  6bdd88: e59d8068     	ldr	r8, [sp, #0x68]
  6bdd8c: e1a00009     	mov	r0, r9
  6bdd90: e1a01006     	mov	r1, r6
  6bdd94: e1a02005     	mov	r2, r5
  6bdd98: e58d8008     	str	r8, [sp, #0x8]
  6bdd9c: e58d7000     	str	r7, [sp]
  6bdda0: ebfffbd2     	bl	0x6bccf0 <_ZN6glitch5scene12_GLOBAL__N_19addStreamEPNS_5video12IVideoDriverERNS_7collada5SMeshERNS5_11SMeshBufferEcPNS2_17SVertexStreamDataEhRKNS5_13SBufferConfigE> @ imm = #-0x10b8
  6bdda4: e38aa201     	orr	r10, r10, #268435456
  6bdda8: e1a08000     	mov	r8, r0
  6bddac: e1d531dd     	ldrsb	r3, [r5, #29]
  6bddb0: e3530000     	cmp	r3, #0
  6bddb4: ba000007     	blt	0x6bddd8 <_ZN6glitch5scene11CMeshBufferC1EPNS_5video12IVideoDriverERNS_7collada5SMeshEjRKNS5_13SBufferConfigESA_b+0x3e0> @ imm = #0x1c
  6bddb8: e59dc068     	ldr	r12, [sp, #0x68]
  6bddbc: e1a00009     	mov	r0, r9
  6bddc0: e1a01006     	mov	r1, r6
  6bddc4: e1a02005     	mov	r2, r5
  6bddc8: e88d1180     	stm	sp, {r7, r8, r12}
  6bddcc: ebfffbc7     	bl	0x6bccf0 <_ZN6glitch5scene12_GLOBAL__N_19addStreamEPNS_5video12IVideoDriverERNS_7collada5SMeshERNS5_11SMeshBufferEcPNS2_17SVertexStreamDataEhRKNS5_13SBufferConfigE> @ imm = #-0x10e4
  6bddd0: e38aa202     	orr	r10, r10, #536870912
  6bddd4: e1a08000     	mov	r8, r0
  6bddd8: e1a0100a     	mov	r1, r10
  6bdddc: e28d0018     	add	r0, sp, #24
  6bdde0: ebfb8d5d     	bl	0x5a135c <_ZN6glitch5video14CVertexStreams8allocateEj> @ imm = #-0x11ca8c
  6bdde4: e59d3018     	ldr	r3, [sp, #0x18]
  6bdde8: e3530000     	cmp	r3, #0
  6bddec: 15932000     	ldrne	r2, [r3]
  6bddf0: 12822001     	addne	r2, r2, #1
  6bddf4: 15832000     	strne	r2, [r3]
  6bddf8: e594a014     	ldr	r10, [r4, #0x14]
  6bddfc: e5843014     	str	r3, [r4, #0x14]
  6bde00: e35a0000     	cmp	r10, #0
  6bde04: 0a000004     	beq	0x6bde1c <_ZN6glitch5scene11CMeshBufferC1EPNS_5video12IVideoDriverERNS_7collada5SMeshEjRKNS5_13SBufferConfigESA_b+0x424> @ imm = #0x10
  6bde08: e59a3000     	ldr	r3, [r10]
  6bde0c: e2433001     	sub	r3, r3, #1
  6bde10: e3530000     	cmp	r3, #0
  6bde14: e58a3000     	str	r3, [r10]
  6bde18: 0a000079     	beq	0x6be004 <_ZN6glitch5scene11CMeshBufferC1EPNS_5video12IVideoDriverERNS_7collada5SMeshEjRKNS5_13SBufferConfigESA_b+0x60c> @ imm = #0x1e4
  6bde1c: e59da018     	ldr	r10, [sp, #0x18]
  6bde20: e35a0000     	cmp	r10, #0
  6bde24: 0a000004     	beq	0x6bde3c <_ZN6glitch5scene11CMeshBufferC1EPNS_5video12IVideoDriverERNS_7collada5SMeshEjRKNS5_13SBufferConfigESA_b+0x444> @ imm = #0x10
  6bde28: e59a3000     	ldr	r3, [r10]
  6bde2c: e2433001     	sub	r3, r3, #1
  6bde30: e3530000     	cmp	r3, #0
  6bde34: e58a3000     	str	r3, [r10]
  6bde38: 0a00006c     	beq	0x6bdff0 <_ZN6glitch5scene11CMeshBufferC1EPNS_5video12IVideoDriverERNS_7collada5SMeshEjRKNS5_13SBufferConfigESA_b+0x5f8> @ imm = #0x1b0
  6bde3c: e3e02000     	mvn	r2, #0
  6bde40: e3a03000     	mov	r3, #0
  6bde44: e5940014     	ldr	r0, [r4, #0x14]
  6bde48: e1a01007     	mov	r1, r7
  6bde4c: ebfb8e4e     	bl	0x5a178c <_ZN6glitch5video14CVertexStreams12setupStreamsEPKNS0_17SVertexStreamDataEjb> @ imm = #-0x11c6c8
  6bde50: e5963000     	ldr	r3, [r6]
  6bde54: e5942014     	ldr	r2, [r4, #0x14]
  6bde58: e3530000     	cmp	r3, #0

; --- add_stream: Collada stream record preparation ---
; ELF VA [0x006bccf0, 0x006bcfe0); 752 bytes; SHA-256 48ef9589f023cb25a2a38fb8fce4fda41b0494d23281dbcbc6a81938369422cf

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

006bccf0 <_ZN6glitch5scene12_GLOBAL__N_19addStreamEPNS_5video12IVideoDriverERNS_7collada5SMeshERNS5_11SMeshBufferEcPNS2_17SVertexStreamDataEhRKNS5_13SBufferConfigE>:
  6bccf0: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  6bccf4: e1a05001     	mov	r5, r1
  6bccf8: e5911000     	ldr	r1, [r1]
  6bccfc: e59f6274     	ldr	r6, [pc, #0x274]        @ 0x6bcf78 <_ZN6glitch5scene12_GLOBAL__N_19addStreamEPNS_5video12IVideoDriverERNS_7collada5SMeshERNS5_11SMeshBufferEcPNS2_17SVertexStreamDataEhRKNS5_13SBufferConfigE+0x288>
  6bcd00: e24dd024     	sub	sp, sp, #36
  6bcd04: e3510000     	cmp	r1, #0
  6bcd08: e08f6006     	add	r6, pc, r6
  6bcd0c: e1a0c000     	mov	r12, r0
  6bcd10: e1a08003     	mov	r8, r3
  6bcd14: e59da048     	ldr	r10, [sp, #0x48]
  6bcd18: e5dd704c     	ldrb	r7, [sp, #0x4c]
  6bcd1c: 0a000038     	beq	0x6bce04 <_ZN6glitch5scene12_GLOBAL__N_19addStreamEPNS_5video12IVideoDriverERNS_7collada5SMeshERNS5_11SMeshBufferEcPNS2_17SVertexStreamDataEhRKNS5_13SBufferConfigE+0x114> @ imm = #0xe0
  6bcd20: e5952008     	ldr	r2, [r5, #0x8]
  6bcd24: e5924028     	ldr	r4, [r2, #0x28]
  6bcd28: e3540000     	cmp	r4, #0
  6bcd2c: 0a000023     	beq	0x6bcdc0 <_ZN6glitch5scene12_GLOBAL__N_19addStreamEPNS_5video12IVideoDriverERNS_7collada5SMeshERNS5_11SMeshBufferEcPNS2_17SVertexStreamDataEhRKNS5_13SBufferConfigE+0xd0> @ imm = #0x8c
  6bcd30: e5943004     	ldr	r3, [r4, #0x4]
  6bcd34: e2833001     	add	r3, r3, #1
  6bcd38: e5843004     	str	r3, [r4, #0x4]
  6bcd3c: e595c000     	ldr	r12, [r5]
  6bcd40: e35c0000     	cmp	r12, #0
  6bcd44: 1a00001c     	bne	0x6bcdbc <_ZN6glitch5scene12_GLOBAL__N_19addStreamEPNS_5video12IVideoDriverERNS_7collada5SMeshERNS5_11SMeshBufferEcPNS2_17SVertexStreamDataEhRKNS5_13SBufferConfigE+0xcc> @ imm = #0x70
  6bcd48: e3a03014     	mov	r3, #20
  6bcd4c: e5952008     	ldr	r2, [r5, #0x8]
  6bcd50: e0080893     	mul	r8, r3, r8
  6bcd54: e59f1220     	ldr	r1, [pc, #0x220]        @ 0x6bcf7c <_ZN6glitch5scene12_GLOBAL__N_19addStreamEPNS_5video12IVideoDriverERNS_7collada5SMeshERNS5_11SMeshBufferEcPNS2_17SVertexStreamDataEhRKNS5_13SBufferConfigE+0x28c>
  6bcd58: e7923008     	ldr	r3, [r2, r8]
  6bcd5c: e0828008     	add	r8, r2, r8
  6bcd60: e7961001     	ldr	r1, [r6, r1]
  6bcd64: e5982004     	ldr	r2, [r8, #0x4]
  6bcd68: e3540000     	cmp	r4, #0
  6bcd6c: e7d10003     	ldrb	r0, [r1, r3]
  6bcd70: e6ff1072     	uxth	r1, r2
  6bcd74: e78a4207     	str	r4, [r10, r7, lsl #4]
  6bcd78: e0020092     	mul	r2, r2, r0
  6bcd7c: e08aa207     	add	r10, r10, r7, lsl #4
  6bcd80: e6ff2072     	uxth	r2, r2
  6bcd84: 0a000019     	beq	0x6bcdf0 <_ZN6glitch5scene12_GLOBAL__N_19addStreamEPNS_5video12IVideoDriverERNS_7collada5SMeshERNS5_11SMeshBufferEcPNS2_17SVertexStreamDataEhRKNS5_13SBufferConfigE+0x100> @ imm = #0x64
  6bcd88: e594e004     	ldr	lr, [r4, #0x4]
  6bcd8c: e1a00004     	mov	r0, r4
  6bcd90: e28ee001     	add	lr, lr, #1
  6bcd94: e584e004     	str	lr, [r4, #0x4]
  6bcd98: e1ca20be     	strh	r2, [r10, #14]
  6bcd9c: e58ac004     	str	r12, [r10, #0x4]
  6bcda0: e58a3008     	str	r3, [r10, #0x8]
  6bcda4: e1ca10bc     	strh	r1, [r10, #12]
  6bcda8: ebf181f5     	bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x39f82c
  6bcdac: e2870001     	add	r0, r7, #1
  6bcdb0: e6ef0070     	uxtb	r0, r0
  6bcdb4: e28dd024     	add	sp, sp, #36
  6bcdb8: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  6bcdbc: e5952008     	ldr	r2, [r5, #0x8]
  6bcdc0: e5921018     	ldr	r1, [r2, #0x18]
  6bcdc4: e5920008     	ldr	r0, [r2, #0x8]
  6bcdc8: e5923010     	ldr	r3, [r2, #0x10]
  6bcdcc: e7911108     	ldr	r1, [r1, r8, lsl #2]
  6bcdd0: e3540000     	cmp	r4, #0
  6bcdd4: e790c108     	ldr	r12, [r0, r8, lsl #2]
  6bcdd8: e7933108     	ldr	r3, [r3, r8, lsl #2]
  6bcddc: e1d220b0     	ldrh	r2, [r2]
  6bcde0: e6ff1071     	uxth	r1, r1
  6bcde4: e78a4207     	str	r4, [r10, r7, lsl #4]
  6bcde8: e08aa207     	add	r10, r10, r7, lsl #4
  6bcdec: 1affffe5     	bne	0x6bcd88 <_ZN6glitch5scene12_GLOBAL__N_19addStreamEPNS_5video12IVideoDriverERNS_7collada5SMeshERNS5_11SMeshBufferEcPNS2_17SVertexStreamDataEhRKNS5_13SBufferConfigE+0x98> @ imm = #-0x6c
  6bcdf0: e1ca20be     	strh	r2, [r10, #14]
  6bcdf4: e58ac004     	str	r12, [r10, #0x4]
  6bcdf8: e58a3008     	str	r3, [r10, #0x8]
  6bcdfc: e1ca10bc     	strh	r1, [r10, #12]
  6bce00: eaffffe9     	b	0x6bcdac <_ZN6glitch5scene12_GLOBAL__N_19addStreamEPNS_5video12IVideoDriverERNS_7collada5SMeshERNS5_11SMeshBufferEcPNS2_17SVertexStreamDataEhRKNS5_13SBufferConfigE+0xbc> @ imm = #-0x5c
  6bce04: e3a01014     	mov	r1, #20
  6bce08: e5953008     	ldr	r3, [r5, #0x8]
  6bce0c: e0090891     	mul	r9, r1, r8
  6bce10: e083b009     	add	r11, r3, r9
  6bce14: e59b4010     	ldr	r4, [r11, #0x10]
  6bce18: e3540000     	cmp	r4, #0
  6bce1c: 0a00001a     	beq	0x6bce8c <_ZN6glitch5scene12_GLOBAL__N_19addStreamEPNS_5video12IVideoDriverERNS_7collada5SMeshERNS5_11SMeshBufferEcPNS2_17SVertexStreamDataEhRKNS5_13SBufferConfigE+0x19c> @ imm = #0x68
  6bce20: e59d3050     	ldr	r3, [sp, #0x50]
  6bce24: e593b000     	ldr	r11, [r3]
  6bce28: e5d43011     	ldrb	r3, [r4, #0x11]
  6bce2c: e15b0003     	cmp	r11, r3
  6bce30: 0a00000e     	beq	0x6bce70 <_ZN6glitch5scene12_GLOBAL__N_19addStreamEPNS_5video12IVideoDriverERNS_7collada5SMeshERNS5_11SMeshBufferEcPNS2_17SVertexStreamDataEhRKNS5_13SBufferConfigE+0x180> @ imm = #0x38
  6bce34: e5d43012     	ldrb	r3, [r4, #0x12]
  6bce38: e3130008     	tst	r3, #8
  6bce3c: 1a000048     	bne	0x6bcf64 <_ZN6glitch5scene12_GLOBAL__N_19addStreamEPNS_5video12IVideoDriverERNS_7collada5SMeshERNS5_11SMeshBufferEcPNS2_17SVertexStreamDataEhRKNS5_13SBufferConfigE+0x274> @ imm = #0x120
  6bce40: e6efb07b     	uxtb	r11, r11
  6bce44: e35b0004     	cmp	r11, #4
  6bce48: e5c4b011     	strb	r11, [r4, #0x11]
  6bce4c: 0a000004     	beq	0x6bce64 <_ZN6glitch5scene12_GLOBAL__N_19addStreamEPNS_5video12IVideoDriverERNS_7collada5SMeshERNS5_11SMeshBufferEcPNS2_17SVertexStreamDataEhRKNS5_13SBufferConfigE+0x174> @ imm = #0x10
  6bce50: e5943008     	ldr	r3, [r4, #0x8]
  6bce54: e3530000     	cmp	r3, #0
  6bce58: 15d43012     	ldrbne	r3, [r4, #0x12]
  6bce5c: 13833002     	orrne	r3, r3, #2
  6bce60: 15c43012     	strbne	r3, [r4, #0x12]
  6bce64: e5953008     	ldr	r3, [r5, #0x8]
  6bce68: e0833009     	add	r3, r3, r9
  6bce6c: e5934010     	ldr	r4, [r3, #0x10]
  6bce70: e59d2050     	ldr	r2, [sp, #0x50]
  6bce74: e5d23004     	ldrb	r3, [r2, #0x4]
  6bce78: e3530000     	cmp	r3, #0
  6bce7c: 1a000027     	bne	0x6bcf20 <_ZN6glitch5scene12_GLOBAL__N_19addStreamEPNS_5video12IVideoDriverERNS_7collada5SMeshERNS5_11SMeshBufferEcPNS2_17SVertexStreamDataEhRKNS5_13SBufferConfigE+0x230> @ imm = #0x9c
  6bce80: e3540000     	cmp	r4, #0
  6bce84: 1affffa9     	bne	0x6bcd30 <_ZN6glitch5scene12_GLOBAL__N_19addStreamEPNS_5video12IVideoDriverERNS_7collada5SMeshERNS5_11SMeshBufferEcPNS2_17SVertexStreamDataEhRKNS5_13SBufferConfigE+0x40> @ imm = #-0x15c
  6bce88: eaffffab     	b	0x6bcd3c <_ZN6glitch5scene12_GLOBAL__N_19addStreamEPNS_5video12IVideoDriverERNS_7collada5SMeshERNS5_11SMeshBufferEcPNS2_17SVertexStreamDataEhRKNS5_13SBufferConfigE+0x4c> @ imm = #-0x154
  6bce8c: e1d200dc     	ldrsb	r0, [r2, #12]
  6bce90: e3052556     	movw	r2, #0x5556
  6bce94: e3452555     	movt	r2, #0x5555
  6bce98: e0213091     	mla	r1, r1, r0, r3
  6bce9c: e59f00d8     	ldr	r0, [pc, #0xd8]         @ 0x6bcf7c <_ZN6glitch5scene12_GLOBAL__N_19addStreamEPNS_5video12IVideoDriverERNS_7collada5SMeshERNS5_11SMeshBufferEcPNS2_17SVertexStreamDataEhRKNS5_13SBufferConfigE+0x28c>
  6bcea0: e5911008     	ldr	r1, [r1, #0x8]
  6bcea4: e7933009     	ldr	r3, [r3, r9]
  6bcea8: e7960000     	ldr	r0, [r6, r0]
  6bceac: e0c2e192     	smull	lr, r2, r2, r1
  6bceb0: e59be004     	ldr	lr, [r11, #0x4]
  6bceb4: e0422fc1     	sub	r2, r2, r1, asr #31
  6bceb8: e7d00003     	ldrb	r0, [r0, r3]
  6bcebc: e00e029e     	mul	lr, lr, r2
  6bcec0: e59d2050     	ldr	r2, [sp, #0x50]
  6bcec4: e00e0e90     	mul	lr, r0, lr
  6bcec8: e5923000     	ldr	r3, [r2]
  6bcecc: e28d201c     	add	r2, sp, #28
  6bced0: e58d2014     	str	r2, [sp, #0x14]
  6bced4: e58de000     	str	lr, [sp]
  6bced8: e59b100c     	ldr	r1, [r11, #0xc]
  6bcedc: e58d4008     	str	r4, [sp, #0x8]
  6bcee0: e1a02004     	mov	r2, r4
  6bcee4: e58d1004     	str	r1, [sp, #0x4]
  6bcee8: e59d0014     	ldr	r0, [sp, #0x14]
  6bceec: e1a0100c     	mov	r1, r12
  6bcef0: e59cc000     	ldr	r12, [r12]
  6bcef4: e1a0e00f     	mov	lr, pc
  6bcef8: e59cf078     	ldr	pc, [r12, #0x78]
  6bcefc: e59d1014     	ldr	r1, [sp, #0x14]
  6bcf00: e28b0010     	add	r0, r11, #16
  6bcf04: ebfffe60     	bl	0x6bc88c <_ZN5boost13intrusive_ptrIN6glitch5video7IBufferEEaSERKS4_> @ imm = #-0x680
  6bcf08: e59d0014     	ldr	r0, [sp, #0x14]
  6bcf0c: ebfdeb1e     	bl	0x637b8c <_ZN5boost13intrusive_ptrIN6glitch5video7IBufferEED1Ev> @ imm = #-0x85388
  6bcf10: e5953008     	ldr	r3, [r5, #0x8]
  6bcf14: e0833009     	add	r3, r3, r9
  6bcf18: e5934010     	ldr	r4, [r3, #0x10]
  6bcf1c: eaffffd3     	b	0x6bce70 <_ZN6glitch5scene12_GLOBAL__N_19addStreamEPNS_5video12IVideoDriverERNS_7collada5SMeshERNS5_11SMeshBufferEcPNS2_17SVertexStreamDataEhRKNS5_13SBufferConfigE+0x180> @ imm = #-0xb4
  6bcf20: e5d43012     	ldrb	r3, [r4, #0x12]
  6bcf24: e5d21005     	ldrb	r1, [r2, #0x5]
  6bcf28: e3130008     	tst	r3, #8
  6bcf2c: 0a000001     	beq	0x6bcf38 <_ZN6glitch5scene12_GLOBAL__N_19addStreamEPNS_5video12IVideoDriverERNS_7collada5SMeshERNS5_11SMeshBufferEcPNS2_17SVertexStreamDataEhRKNS5_13SBufferConfigE+0x248> @ imm = #0x4
  6bcf30: e3130002     	tst	r3, #2
  6bcf34: 0affffd1     	beq	0x6bce80 <_ZN6glitch5scene12_GLOBAL__N_19addStreamEPNS_5video12IVideoDriverERNS_7collada5SMeshERNS5_11SMeshBufferEcPNS2_17SVertexStreamDataEhRKNS5_13SBufferConfigE+0x190> @ imm = #-0xbc
  6bcf38: e5d43011     	ldrb	r3, [r4, #0x11]
  6bcf3c: e3530004     	cmp	r3, #4
  6bcf40: 0affffce     	beq	0x6bce80 <_ZN6glitch5scene12_GLOBAL__N_19addStreamEPNS_5video12IVideoDriverERNS_7collada5SMeshERNS5_11SMeshBufferEcPNS2_17SVertexStreamDataEhRKNS5_13SBufferConfigE+0x190> @ imm = #-0xc8
  6bcf44: e5943000     	ldr	r3, [r4]
  6bcf48: e1a00004     	mov	r0, r4
  6bcf4c: e1a0e00f     	mov	lr, pc
  6bcf50: e593f00c     	ldr	pc, [r3, #0xc]
  6bcf54: e5953008     	ldr	r3, [r5, #0x8]
  6bcf58: e0839009     	add	r9, r3, r9
  6bcf5c: e5994010     	ldr	r4, [r9, #0x10]
  6bcf60: eaffffc6     	b	0x6bce80 <_ZN6glitch5scene12_GLOBAL__N_19addStreamEPNS_5video12IVideoDriverERNS_7collada5SMeshERNS5_11SMeshBufferEcPNS2_17SVertexStreamDataEhRKNS5_13SBufferConfigE+0x190> @ imm = #-0xe8
  6bcf64: e5943000     	ldr	r3, [r4]
  6bcf68: e1a00004     	mov	r0, r4
  6bcf6c: e1a0e00f     	mov	lr, pc
  6bcf70: e593f010     	ldr	pc, [r3, #0x10]
  6bcf74: eaffffb1     	b	0x6bce40 <_ZN6glitch5scene12_GLOBAL__N_19addStreamEPNS_5video12IVideoDriverERNS_7collada5SMeshERNS5_11SMeshBufferEcPNS2_17SVertexStreamDataEhRKNS5_13SBufferConfigE+0x150> @ imm = #-0x13c
  6bcf78: 88 7d 2d 00  	.word	0x002d7d88
  6bcf7c: 08 11 00 00  	.word	0x00001108

006bcf80 <_ZN6glitch5scene11CMeshBufferC2EPNS_5video12IVideoDriverERNS_7collada5SMeshEjRKNS5_13SBufferConfigESA_b>:
  6bcf80: e59fca64     	ldr	r12, [pc, #0xa64]       @ 0x6bd9ec <_ZN6glitch5scene11CMeshBufferC2EPNS_5video12IVideoDriverERNS_7collada5SMeshEjRKNS5_13SBufferConfigESA_b+0xa6c>
  6bcf84: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  6bcf88: e59fea60     	ldr	lr, [pc, #0xa60]        @ 0x6bd9f0 <_ZN6glitch5scene11CMeshBufferC2EPNS_5video12IVideoDriverERNS_7collada5SMeshEjRKNS5_13SBufferConfigESA_b+0xa70>
  6bcf8c: e08fc00c     	add	r12, pc, r12
  6bcf90: e1a04000     	mov	r4, r0
  6bcf94: e79ce00e     	ldr	lr, [r12, lr]
  6bcf98: e3a00000     	mov	r0, #0
  6bcf9c: e5840014     	str	r0, [r4, #0x14]
  6bcfa0: e28ee008     	add	lr, lr, #8
  6bcfa4: e584e000     	str	lr, [r4]
  6bcfa8: e5840004     	str	r0, [r4, #0x4]
  6bcfac: e5840008     	str	r0, [r4, #0x8]
  6bcfb0: e584000c     	str	r0, [r4, #0xc]
  6bcfb4: e5840010     	str	r0, [r4, #0x10]
  6bcfb8: e3a05038     	mov	r5, #56
  6bcfbc: e0050395     	mul	r5, r5, r3
  6bcfc0: e1a06002     	mov	r6, r2
  6bcfc4: e5922010     	ldr	r2, [r2, #0x10]
  6bcfc8: e1a09001     	mov	r9, r1
  6bcfcc: e59f3a20     	ldr	r3, [pc, #0xa20]        @ 0x6bd9f4 <_ZN6glitch5scene11CMeshBufferC2EPNS_5video12IVideoDriverERNS_7collada5SMeshEjRKNS5_13SBufferConfigESA_b+0xa74>
  6bcfd0: e0821005     	add	r1, r2, r5
  6bcfd4: e5910024     	ldr	r0, [r1, #0x24]
  6bcfd8: e7922005     	ldr	r2, [r2, r5]
  6bcfdc: e24dd044     	sub	sp, sp, #68

; --- vertex_stream_constructor: Mask-bit iteration and stream-code field initialization ---
; ELF VA [0x005a113c, 0x005a1270); 308 bytes; SHA-256 06fa519a5d66b89ea7f831e122add6825e4502e4236c52263da2ca1fdbe534c1

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

005a113c <_ZN6glitch5video14CVertexStreamsC1EjjhhPKNS0_13SVertexStreamEPKNS_4core8vector3dIfEE>:
  5a113c: e92d41f0     	push	{r4, r5, r6, r7, r8, lr}
  5a1140: e5ddc018     	ldrb	r12, [sp, #0x18]
  5a1144: e280e014     	add	lr, r0, #20
  5a1148: e1a04000     	mov	r4, r0
  5a114c: e08e020c     	add	r0, lr, r12, lsl #4
  5a1150: e5841008     	str	r1, [r4, #0x8]
  5a1154: e15e0000     	cmp	lr, r0
  5a1158: e3a01003     	mov	r1, #3
  5a115c: e3a0e000     	mov	lr, #0
  5a1160: e584e000     	str	lr, [r4]
  5a1164: e5842004     	str	r2, [r4, #0x4]
  5a1168: e5c4300c     	strb	r3, [r4, #0xc]
  5a116c: e5c4c00d     	strb	r12, [r4, #0xd]
  5a1170: e1c410be     	strh	r1, [r4, #14]
  5a1174: e5840010     	str	r0, [r4, #0x10]
  5a1178: e59d601c     	ldr	r6, [sp, #0x1c]
  5a117c: e59d1020     	ldr	r1, [sp, #0x20]
  5a1180: 0a00002f     	beq	0x5a1244 <_ZN6glitch5video14CVertexStreamsC1EjjhhPKNS0_13SVertexStreamEPKNS_4core8vector3dIfEE+0x108> @ imm = #0xbc
  5a1184: e284c024     	add	r12, r4, #36
  5a1188: e06c0000     	rsb	r0, r12, r0
  5a118c: e3c0000f     	bic	r0, r0, #15
  5a1190: e2848010     	add	r8, r4, #16
  5a1194: e0888000     	add	r8, r8, r0
  5a1198: e1a05004     	mov	r5, r4
  5a119c: e3a0c001     	mov	r12, #1
  5a11a0: e0120e1c     	ands	r0, r2, r12, lsl lr
  5a11a4: e1a0000e     	mov	r0, lr
  5a11a8: 1a000003     	bne	0x5a11bc <_ZN6glitch5video14CVertexStreamsC1EjjhhPKNS0_13SVertexStreamEPKNS_4core8vector3dIfEE+0x80> @ imm = #0xc
  5a11ac: e2800001     	add	r0, r0, #1
  5a11b0: e012e01c     	ands	lr, r2, r12, lsl r0
  5a11b4: e1a0e000     	mov	lr, r0
  5a11b8: 0afffffb     	beq	0x5a11ac <_ZN6glitch5video14CVertexStreamsC1EjjhhPKNS0_13SVertexStreamEPKNS_4core8vector3dIfEE+0x70> @ imm = #-0x14
  5a11bc: e3560000     	cmp	r6, #0
  5a11c0: 0a000015     	beq	0x5a121c <_ZN6glitch5video14CVertexStreamsC1EjjhhPKNS0_13SVertexStreamEPKNS_4core8vector3dIfEE+0xe0> @ imm = #0x54
  5a11c4: e596e000     	ldr	lr, [r6]
  5a11c8: e585e014     	str	lr, [r5, #0x14]
  5a11cc: e35e0000     	cmp	lr, #0
  5a11d0: 159e7004     	ldrne	r7, [lr, #0x4]
  5a11d4: 12877001     	addne	r7, r7, #1
  5a11d8: 158e7004     	strne	r7, [lr, #0x4]
  5a11dc: e596e004     	ldr	lr, [r6, #0x4]
  5a11e0: e585e018     	str	lr, [r5, #0x18]
  5a11e4: e1d6e0b8     	ldrh	lr, [r6, #8]
  5a11e8: e1c5e1bc     	strh	lr, [r5, #28]
  5a11ec: e1d6e0ba     	ldrh	lr, [r6, #10]
  5a11f0: e1c5e1be     	strh	lr, [r5, #30]
  5a11f4: e1d6e0bc     	ldrh	lr, [r6, #12]
  5a11f8: e1c5e2b0     	strh	lr, [r5, #32]
  5a11fc: e1d6e0be     	ldrh	lr, [r6, #14]
  5a1200: e2866010     	add	r6, r6, #16
  5a1204: e1c5e2b2     	strh	lr, [r5, #34]
  5a1208: e2855010     	add	r5, r5, #16
  5a120c: e1550008     	cmp	r5, r8
  5a1210: 0a00000b     	beq	0x5a1244 <_ZN6glitch5video14CVertexStreamsC1EjjhhPKNS0_13SVertexStreamEPKNS_4core8vector3dIfEE+0x108> @ imm = #0x2c
  5a1214: e280e001     	add	lr, r0, #1
  5a1218: eaffffe0     	b	0x5a11a0 <_ZN6glitch5video14CVertexStreamsC1EjjhhPKNS0_13SVertexStreamEPKNS_4core8vector3dIfEE+0x64> @ imm = #-0x80
  5a121c: e1c5e1bc     	strh	lr, [r5, #28]
  5a1220: e3a0e0ff     	mov	lr, #255
  5a1224: e5856014     	str	r6, [r5, #0x14]
  5a1228: e5856018     	str	r6, [r5, #0x18]
  5a122c: e1c5e1be     	strh	lr, [r5, #30]
  5a1230: e1c562b0     	strh	r6, [r5, #32]
  5a1234: e1c562b2     	strh	r6, [r5, #34]
  5a1238: e2855010     	add	r5, r5, #16
  5a123c: e1550008     	cmp	r5, r8
  5a1240: 1afffff3     	bne	0x5a1214 <_ZN6glitch5video14CVertexStreamsC1EjjhhPKNS0_13SVertexStreamEPKNS_4core8vector3dIfEE+0xd8> @ imm = #-0x34
  5a1244: e3a02018     	mov	r2, #24
  5a1248: e3510000     	cmp	r1, #0
  5a124c: e0222293     	mla	r2, r3, r2, r2
  5a1250: 0a000003     	beq	0x5a1264 <_ZN6glitch5video14CVertexStreamsC1EjjhhPKNS0_13SVertexStreamEPKNS_4core8vector3dIfEE+0x128> @ imm = #0xc
  5a1254: e5940010     	ldr	r0, [r4, #0x10]
  5a1258: ebf5b582     	bl	0x30e868 <memcpy@plt>   @ imm = #-0x2929f8
  5a125c: e1a00004     	mov	r0, r4
  5a1260: e8bd81f0     	pop	{r4, r5, r6, r7, r8, pc}
  5a1264: e5940010     	ldr	r0, [r4, #0x10]
  5a1268: ebf5b47c     	bl	0x30e460 <memset@plt>   @ imm = #-0x292e10
  5a126c: eafffffa     	b	0x5a125c <_ZN6glitch5video14CVertexStreamsC1EjjhhPKNS0_13SVertexStreamEPKNS_4core8vector3dIfEE+0x120> @ imm = #-0x18

; --- vertex_stream_allocate_mask: Generic allocation retains the requested mask and adds code zero ---
; ELF VA [0x005a135c, 0x005a1404); 168 bytes; SHA-256 5744e0ab783865ff3b4b632bc50c7b98906982dcf7a0b9523ccb81cd231e8725

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

005a135c <_ZN6glitch5video14CVertexStreams8allocateEj>:
  5a135c: e92d4010     	push	{r4, lr}
  5a1360: e3812001     	orr	r2, r1, #1
  5a1364: e24dd010     	sub	sp, sp, #16
  5a1368: e1a04000     	mov	r4, r0
  5a136c: e1a03002     	mov	r3, r2
  5a1370: e3a01001     	mov	r1, #1
  5a1374: e3a0c000     	mov	r12, #0
  5a1378: ea000000     	b	0x5a1380 <_ZN6glitch5video14CVertexStreams8allocateEj+0x24> @ imm = #0x0
  5a137c: e1a01081     	lsl	r1, r1, #1
  5a1380: e1110003     	tst	r1, r3
  5a1384: 128cc001     	addne	r12, r12, #1
  5a1388: 11c33001     	bicne	r3, r3, r1
  5a138c: 16efc07c     	uxtbne	r12, r12
  5a1390: e3530000     	cmp	r3, #0
  5a1394: 1afffff8     	bne	0x5a137c <_ZN6glitch5video14CVertexStreams8allocateEj+0x20> @ imm = #-0x20
  5a1398: e3c214ff     	bic	r1, r2, #-16777216
  5a139c: e3c118fe     	bic	r1, r1, #16646144
  5a13a0: e3c11001     	bic	r1, r1, #1
  5a13a4: e3510000     	cmp	r1, #0
  5a13a8: 0a00000b     	beq	0x5a13dc <_ZN6glitch5video14CVertexStreams8allocateEj+0x80> @ imm = #0x2c
  5a13ac: e1a0e002     	mov	lr, r2
  5a13b0: e3a00002     	mov	r0, #2
  5a13b4: ea000000     	b	0x5a13bc <_ZN6glitch5video14CVertexStreams8allocateEj+0x60> @ imm = #0x0
  5a13b8: e1a00080     	lsl	r0, r0, #1
  5a13bc: e110000e     	tst	r0, lr
  5a13c0: 11cee000     	bicne	lr, lr, r0
  5a13c4: e3ce14ff     	bic	r1, lr, #-16777216
  5a13c8: e3c118fe     	bic	r1, r1, #16646144
  5a13cc: e3c11001     	bic	r1, r1, #1
  5a13d0: 12833001     	addne	r3, r3, #1
  5a13d4: e3510000     	cmp	r1, #0
  5a13d8: 1afffff6     	bne	0x5a13b8 <_ZN6glitch5video14CVertexStreams8allocateEj+0x5c> @ imm = #-0x28
  5a13dc: e3a0e000     	mov	lr, #0
  5a13e0: e1a00004     	mov	r0, r4
  5a13e4: e1a0100e     	mov	r1, lr
  5a13e8: e6ef3073     	uxtb	r3, r3
  5a13ec: e88d5000     	stm	sp, {r12, lr}
  5a13f0: e58de008     	str	lr, [sp, #0x8]
  5a13f4: ebffff9d     	bl	0x5a1270 <_ZN6glitch5video14CVertexStreams8allocateEjjhhPKNS0_13SVertexStreamEPKNS_4core8vector3dIfEE> @ imm = #-0x18c
  5a13f8: e1a00004     	mov	r0, r4
  5a13fc: e28dd010     	add	sp, sp, #16
  5a1400: e8bd8010     	pop	{r4, pc}

; --- setup_streams_from_data: Installs data only into already allocated code records ---
; ELF VA [0x005a178c, 0x005a1878); 236 bytes; SHA-256 985be40058f4d862eb1e37b5c3d9c850e1a3b5dccce2b3f307c3cd0eb6b32045

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

005a178c <_ZN6glitch5video14CVertexStreams12setupStreamsEPKNS0_17SVertexStreamDataEjb>:
  5a178c: e92d4ff8     	push	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
  5a1790: e5905010     	ldr	r5, [r0, #0x10]
  5a1794: e5907004     	ldr	r7, [r0, #0x4]
  5a1798: e1a04000     	mov	r4, r0
  5a179c: e2800014     	add	r0, r0, #20
  5a17a0: e1550000     	cmp	r5, r0
  5a17a4: e0027007     	and	r7, r2, r7
  5a17a8: e1a06001     	mov	r6, r1
  5a17ac: e1a0b003     	mov	r11, r3
  5a17b0: 0a00002e     	beq	0x5a1870 <_ZN6glitch5video14CVertexStreams12setupStreamsEPKNS0_17SVertexStreamDataEjb+0xe4> @ imm = #0xb8
  5a17b4: e2848024     	add	r8, r4, #36
  5a17b8: e3a09001     	mov	r9, #1
  5a17bc: e3a0a000     	mov	r10, #0
  5a17c0: ea000010     	b	0x5a1808 <_ZN6glitch5video14CVertexStreams12setupStreamsEPKNS0_17SVertexStreamDataEjb+0x7c> @ imm = #0x40
  5a17c4: e5180010     	ldr	r0, [r8, #-0x10]
  5a17c8: e5083010     	str	r3, [r8, #-0x10]
  5a17cc: e3500000     	cmp	r0, #0
  5a17d0: 0a000000     	beq	0x5a17d8 <_ZN6glitch5video14CVertexStreams12setupStreamsEPKNS0_17SVertexStreamDataEjb+0x4c> @ imm = #0x0
  5a17d4: ebf5ef6a     	bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x284258
  5a17d8: e3a030ff     	mov	r3, #255
  5a17dc: e508a00c     	str	r10, [r8, #-0xc]
  5a17e0: e14830b6     	strh	r3, [r8, #-6]
  5a17e4: e148a0b4     	strh	r10, [r8, #-4]
  5a17e8: e148a0b2     	strh	r10, [r8, #-2]
  5a17ec: e1a00004     	mov	r0, r4
  5a17f0: e1a0100b     	mov	r1, r11
  5a17f4: ebfffd00     	bl	0x5a0bfc <_ZN6glitch5video14CVertexStreams25updateHomogeneityInternalEb> @ imm = #-0xc00
  5a17f8: e1550008     	cmp	r5, r8
  5a17fc: 0a00001b     	beq	0x5a1870 <_ZN6glitch5video14CVertexStreams12setupStreamsEPKNS0_17SVertexStreamDataEjb+0xe4> @ imm = #0x6c
  5a1800: e2866010     	add	r6, r6, #16
  5a1804: e2888010     	add	r8, r8, #16
  5a1808: e15830b8     	ldrh	r3, [r8, #-8]
  5a180c: e0173319     	ands	r3, r7, r9, lsl r3
  5a1810: 0affffeb     	beq	0x5a17c4 <_ZN6glitch5video14CVertexStreams12setupStreamsEPKNS0_17SVertexStreamDataEjb+0x38> @ imm = #-0x54
  5a1814: e5963000     	ldr	r3, [r6]
  5a1818: e3530000     	cmp	r3, #0
  5a181c: 15932004     	ldrne	r2, [r3, #0x4]
  5a1820: 12822001     	addne	r2, r2, #1
  5a1824: 15832004     	strne	r2, [r3, #0x4]
  5a1828: e5180010     	ldr	r0, [r8, #-0x10]
  5a182c: e5083010     	str	r3, [r8, #-0x10]
  5a1830: e3500000     	cmp	r0, #0
  5a1834: 0a000000     	beq	0x5a183c <_ZN6glitch5video14CVertexStreams12setupStreamsEPKNS0_17SVertexStreamDataEjb+0xb0> @ imm = #0x0
  5a1838: ebf5ef51     	bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x2842bc
  5a183c: e5963004     	ldr	r3, [r6, #0x4]
  5a1840: e1a00004     	mov	r0, r4
  5a1844: e1a0100b     	mov	r1, r11
  5a1848: e508300c     	str	r3, [r8, #-0xc]
  5a184c: e1d630b8     	ldrh	r3, [r6, #8]
  5a1850: e14830b6     	strh	r3, [r8, #-6]
  5a1854: e1d630bc     	ldrh	r3, [r6, #12]
  5a1858: e14830b4     	strh	r3, [r8, #-4]
  5a185c: e1d630be     	ldrh	r3, [r6, #14]
  5a1860: e14830b2     	strh	r3, [r8, #-2]
  5a1864: ebfffce4     	bl	0x5a0bfc <_ZN6glitch5video14CVertexStreams25updateHomogeneityInternalEb> @ imm = #-0xc70
  5a1868: e1550008     	cmp	r5, r8
  5a186c: 1affffe3     	bne	0x5a1800 <_ZN6glitch5video14CVertexStreams12setupStreamsEPKNS0_17SVertexStreamDataEjb+0x74> @ imm = #-0x74
  5a1870: e1a00007     	mov	r0, r7
  5a1874: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}

; --- set_stream: Copies buffer/layout fields without rewriting the code field ---
; ELF VA [0x007d46fc, 0x007d4768); 108 bytes; SHA-256 d7ea5c6ea16e533112f3481a188ebca9cbd04a09ceb856c227e13485d4081237

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

007d46fc <_ZN6glitch5video14CVertexStreams9setStreamEPNS0_13SVertexStreamERKNS0_17SVertexStreamDataEb>:
  7d46fc: e92d41f0     	push	{r4, r5, r6, r7, r8, lr}
  7d4700: e1a05002     	mov	r5, r2
  7d4704: e5922000     	ldr	r2, [r2]
  7d4708: e1a07003     	mov	r7, r3
  7d470c: e1a06000     	mov	r6, r0
  7d4710: e3520000     	cmp	r2, #0
  7d4714: 15923004     	ldrne	r3, [r2, #0x4]
  7d4718: e1a04001     	mov	r4, r1
  7d471c: 12833001     	addne	r3, r3, #1
  7d4720: 15823004     	strne	r3, [r2, #0x4]
  7d4724: e5910000     	ldr	r0, [r1]
  7d4728: e5812000     	str	r2, [r1]
  7d472c: e3500000     	cmp	r0, #0
  7d4730: 0a000000     	beq	0x7d4738 <_ZN6glitch5video14CVertexStreams9setStreamEPNS0_13SVertexStreamERKNS0_17SVertexStreamDataEb+0x3c> @ imm = #0x0
  7d4734: ebed2392     	bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x4b71b8
  7d4738: e5952004     	ldr	r2, [r5, #0x4]
  7d473c: e1a00006     	mov	r0, r6
  7d4740: e1a01007     	mov	r1, r7
  7d4744: e5842004     	str	r2, [r4, #0x4]
  7d4748: e1d530b8     	ldrh	r3, [r5, #8]
  7d474c: e1c430ba     	strh	r3, [r4, #10]
  7d4750: e1d530bc     	ldrh	r3, [r5, #12]
  7d4754: e1c430bc     	strh	r3, [r4, #12]
  7d4758: e1d550be     	ldrh	r5, [r5, #14]
  7d475c: e1c450be     	strh	r5, [r4, #14]
  7d4760: e8bd41f0     	pop	{r4, r5, r6, r7, r8, lr}
  7d4764: eaf73124     	b	0x5a0bfc <_ZN6glitch5video14CVertexStreams25updateHomogeneityInternalEb> @ imm = #-0x233b70

; --- loadvs_header_codes: Serialized 16-bit code values form the allocation mask ---
; ELF VA [0x006b74c8, 0x006b7628); 352 bytes; SHA-256 4e1b10cb6094f77d4205d2962b0efeadf5f62ce78450ceede70beb3f2ae5f7c5

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

006b73d8 <_ZN6glitch2io6loadVSEPNS0_9IReadFileEbPNS_5video12IVideoDriverE>:
  6b74c8: e5962000     	ldr	r2, [r6]
  6b74cc: e2877001     	add	r7, r7, #1
  6b74d0: e3a0c001     	mov	r12, #1
  6b74d4: e4832004     	str	r2, [r3], #4
  6b74d8: e59a2000     	ldr	r2, [r10]
  6b74dc: e5812004     	str	r2, [r1, #0x4]
  6b74e0: e59b2000     	ldr	r2, [r11]
  6b74e4: e5832004     	str	r2, [r3, #0x4]
  6b74e8: e59d30b0     	ldr	r3, [sp, #0xb0]
  6b74ec: e59d20c4     	ldr	r2, [sp, #0xc4]
  6b74f0: e283300c     	add	r3, r3, #12
  6b74f4: e58d30b0     	str	r3, [sp, #0xb0]
  6b74f8: e1dd35b8     	ldrh	r3, [sp, #88]
  6b74fc: e1520007     	cmp	r2, r7
  6b7500: e185531c     	orr	r5, r5, r12, lsl r3
  6b7504: 9a000041     	bls	0x6b7610 <_ZN6glitch2io6loadVSEPNS0_9IReadFileEbPNS_5video12IVideoDriverE+0x238> @ imm = #0x104
  6b7508: e1a01006     	mov	r1, r6
  6b750c: e3a0200c     	mov	r2, #12
  6b7510: e5943000     	ldr	r3, [r4]
  6b7514: e1a00004     	mov	r0, r4
  6b7518: e1a0e00f     	mov	lr, pc
  6b751c: e593f00c     	ldr	pc, [r3, #0xc]
  6b7520: e59dc010     	ldr	r12, [sp, #0x10]
  6b7524: e35c0000     	cmp	r12, #0
  6b7528: 0a000029     	beq	0x6b75d4 <_ZN6glitch2io6loadVSEPNS0_9IReadFileEbPNS_5video12IVideoDriverE+0x1fc> @ imm = #0xa4
  6b752c: e58d90b8     	str	r9, [sp, #0xb8]
  6b7530: e5d63003     	ldrb	r3, [r6, #0x3]
  6b7534: e59dc014     	ldr	r12, [sp, #0x14]
  6b7538: e5cd30b8     	strb	r3, [sp, #0xb8]
  6b753c: e5d63002     	ldrb	r3, [r6, #0x2]
  6b7540: e5cd30b9     	strb	r3, [sp, #0xb9]
  6b7544: e5d63001     	ldrb	r3, [r6, #0x1]
  6b7548: e5cd30ba     	strb	r3, [sp, #0xba]
  6b754c: e5d63000     	ldrb	r3, [r6]
  6b7550: e5cd30bb     	strb	r3, [sp, #0xbb]
  6b7554: e5983000     	ldr	r3, [r8]
  6b7558: e1cd9bb8     	strh	r9, [sp, #184]
  6b755c: e58d3054     	str	r3, [sp, #0x54]
  6b7560: e5da3001     	ldrb	r3, [r10, #0x1]
  6b7564: e5cd30b8     	strb	r3, [sp, #0xb8]
  6b7568: e5da3000     	ldrb	r3, [r10]
  6b756c: e5cd30b9     	strb	r3, [sp, #0xb9]
  6b7570: e1d820b0     	ldrh	r2, [r8]
  6b7574: e1cd9bb8     	strh	r9, [sp, #184]
  6b7578: e1cd25b8     	strh	r2, [sp, #88]
  6b757c: e5dc3001     	ldrb	r3, [r12, #0x1]
  6b7580: e5cd30b8     	strb	r3, [sp, #0xb8]
  6b7584: e5dc3000     	ldrb	r3, [r12]
  6b7588: e59dc018     	ldr	r12, [sp, #0x18]
  6b758c: e5cd30b9     	strb	r3, [sp, #0xb9]
  6b7590: e1d820b0     	ldrh	r2, [r8]
  6b7594: e1cd9bb8     	strh	r9, [sp, #184]
  6b7598: e1cd25ba     	strh	r2, [sp, #90]
  6b759c: e5dc3001     	ldrb	r3, [r12, #0x1]
  6b75a0: e5cd30b8     	strb	r3, [sp, #0xb8]
  6b75a4: e5dc3000     	ldrb	r3, [r12]
  6b75a8: e5cd30b9     	strb	r3, [sp, #0xb9]
  6b75ac: e1d820b0     	ldrh	r2, [r8]
  6b75b0: e1cd25bc     	strh	r2, [sp, #92]
  6b75b4: e59dc01c     	ldr	r12, [sp, #0x1c]
  6b75b8: e1cd9bb8     	strh	r9, [sp, #184]
  6b75bc: e5dc3001     	ldrb	r3, [r12, #0x1]
  6b75c0: e5cd30b8     	strb	r3, [sp, #0xb8]
  6b75c4: e5dc3000     	ldrb	r3, [r12]
  6b75c8: e5cd30b9     	strb	r3, [sp, #0xb9]
  6b75cc: e1d820b0     	ldrh	r2, [r8]
  6b75d0: e1cd25be     	strh	r2, [sp, #94]
  6b75d4: e59d10b0     	ldr	r1, [sp, #0xb0]
  6b75d8: e59d20b4     	ldr	r2, [sp, #0xb4]
  6b75dc: e1a03001     	mov	r3, r1
  6b75e0: e1510002     	cmp	r1, r2
  6b75e4: 1affffb7     	bne	0x6b74c8 <_ZN6glitch2io6loadVSEPNS0_9IReadFileEbPNS_5video12IVideoDriverE+0xf0> @ imm = #-0x124
  6b75e8: e1a02006     	mov	r2, r6
  6b75ec: e59d0028     	ldr	r0, [sp, #0x28]
  6b75f0: ebfffd40     	bl	0x6b6af8 <_ZNSt6vectorIN6glitch2io19SVertexStreamHeaderESaIS2_EE22_M_insert_overflow_auxEPS2_RKS2_RKSt12__false_typejb.clone.2> @ imm = #-0xb00
  6b75f4: e59d20c4     	ldr	r2, [sp, #0xc4]
  6b75f8: e1dd35b8     	ldrh	r3, [sp, #88]
  6b75fc: e2877001     	add	r7, r7, #1
  6b7600: e3a0c001     	mov	r12, #1
  6b7604: e1520007     	cmp	r2, r7
  6b7608: e185531c     	orr	r5, r5, r12, lsl r3
  6b760c: 8affffbd     	bhi	0x6b7508 <_ZN6glitch2io6loadVSEPNS0_9IReadFileEbPNS_5video12IVideoDriverE+0x130> @ imm = #-0x10c
  6b7610: e1a0c005     	mov	r12, r5
  6b7614: e59db010     	ldr	r11, [sp, #0x10]
  6b7618: e59d502c     	ldr	r5, [sp, #0x2c]
  6b761c: e1a0100c     	mov	r1, r12
  6b7620: e1a00005     	mov	r0, r5
  6b7624: ebfba74c     	bl	0x5a135c <_ZN6glitch5video14CVertexStreams8allocateEj> @ imm = #-0x1162d0

; --- loadvs_install_streams: Reader fills allocated records with setStream ---
; ELF VA [0x006b7960, 0x006b7a50); 240 bytes; SHA-256 b836535b6c53554e5be7c4574bdccda6d310715adad9c1a9d0659793177758f4

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

006b73d8 <_ZN6glitch2io6loadVSEPNS0_9IReadFileEbPNS_5video12IVideoDriverE>:
  6b7960: e1a08005     	mov	r8, r5
  6b7964: e59d50a0     	ldr	r5, [sp, #0xa0]
  6b7968: e1550003     	cmp	r5, r3
  6b796c: 0a000019     	beq	0x6b79d8 <_ZN6glitch2io6loadVSEPNS0_9IReadFileEbPNS_5video12IVideoDriverE+0x600> @ imm = #0x64
  6b7970: e1d561b6     	ldrh	r6, [r5, #22]
  6b7974: e1a00007     	mov	r0, r7
  6b7978: e1a01006     	mov	r1, r6
  6b797c: ebf15c6a     	bl	0x30eb2c <__aeabi_uidivmod@plt> @ imm = #-0x3a8e58
  6b7980: e0610006     	rsb	r0, r1, r6
  6b7984: e1a01006     	mov	r1, r6
  6b7988: ebf15c67     	bl	0x30eb2c <__aeabi_uidivmod@plt> @ imm = #-0x3a8e64
  6b798c: e5943000     	ldr	r3, [r4]
  6b7990: e3a02001     	mov	r2, #1
  6b7994: e1a00004     	mov	r0, r4
  6b7998: e1a06001     	mov	r6, r1
  6b799c: e1a0e00f     	mov	lr, pc
  6b79a0: e593f018     	ldr	pc, [r3, #0x18]
  6b79a4: e1a00005     	mov	r0, r5
  6b79a8: e1a01004     	mov	r1, r4
  6b79ac: e3a02001     	mov	r2, #1
  6b79b0: ebfff86f     	bl	0x6b5b74 <_ZN6glitch2io16SStreamItrLoader14loadAndAdvanceEPNS0_9IReadFileEb> @ imm = #-0x1e44
  6b79b4: e1d521b4     	ldrh	r2, [r5, #20]
  6b79b8: e1d511b6     	ldrh	r1, [r5, #22]
  6b79bc: e59d30a4     	ldr	r3, [sp, #0xa4]
  6b79c0: e2855020     	add	r5, r5, #32
  6b79c4: e0266291     	mla	r6, r1, r2, r6
  6b79c8: e1550003     	cmp	r5, r3
  6b79cc: e0877006     	add	r7, r7, r6
  6b79d0: 1affffe6     	bne	0x6b7970 <_ZN6glitch2io6loadVSEPNS0_9IReadFileEbPNS_5video12IVideoDriverE+0x598> @ imm = #-0x68
  6b79d4: e59d20c0     	ldr	r2, [sp, #0xc0]
  6b79d8: e28aa001     	add	r10, r10, #1
  6b79dc: e152000a     	cmp	r2, r10
  6b79e0: 8affffdf     	bhi	0x6b7964 <_ZN6glitch2io6loadVSEPNS0_9IReadFileEbPNS_5video12IVideoDriverE+0x58c> @ imm = #-0x84
  6b79e4: e1a05008     	mov	r5, r8
  6b79e8: e59d40ac     	ldr	r4, [sp, #0xac]
  6b79ec: e59d30b0     	ldr	r3, [sp, #0xb0]
  6b79f0: e1530004     	cmp	r3, r4
  6b79f4: 0a00001d     	beq	0x6b7a70 <_ZN6glitch2io6loadVSEPNS0_9IReadFileEbPNS_5video12IVideoDriverE+0x698> @ imm = #0x74
  6b79f8: e3a07000     	mov	r7, #0
  6b79fc: e28d6054     	add	r6, sp, #84
  6b7a00: e59d10bc     	ldr	r1, [sp, #0xbc]
  6b7a04: e5948000     	ldr	r8, [r4]
  6b7a08: e1d4e0b6     	ldrh	lr, [r4, #6]
  6b7a0c: e1d4c0b8     	ldrh	r12, [r4, #8]
  6b7a10: e1d430ba     	ldrh	r3, [r4, #10]
  6b7a14: e3510000     	cmp	r1, #0
  6b7a18: e58d1054     	str	r1, [sp, #0x54]
  6b7a1c: 15910004     	ldrne	r0, [r1, #0x4]
  6b7a20: e1a02006     	mov	r2, r6
  6b7a24: e284400c     	add	r4, r4, #12
  6b7a28: 12800001     	addne	r0, r0, #1
  6b7a2c: 15810004     	strne	r0, [r1, #0x4]
  6b7a30: e5950000     	ldr	r0, [r5]
  6b7a34: e58d8058     	str	r8, [sp, #0x58]
  6b7a38: e58de05c     	str	lr, [sp, #0x5c]
  6b7a3c: e2801014     	add	r1, r0, #20
  6b7a40: e0811007     	add	r1, r1, r7
  6b7a44: e1cdc6b0     	strh	r12, [sp, #96]
  6b7a48: e1cd36b2     	strh	r3, [sp, #98]
  6b7a4c: ebfff9d0     	bl	0x6b6194 <_ZN6glitch5video14CVertexStreams9setStreamEPNS0_13SVertexStreamERKNS0_17SVertexStreamDataEb.clone.1> @ imm = #-0x18c0

; --- loadvs_set_stream_clone: setStream clone preserves the target code ---
; ELF VA [0x006b6194, 0x006b61fc); 104 bytes; SHA-256 a7a5fc70525fb82b25adca6f86891b634732a444d841788b725d450ff7825cac

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

006b6194 <_ZN6glitch5video14CVertexStreams9setStreamEPNS0_13SVertexStreamERKNS0_17SVertexStreamDataEb.clone.1>:
  6b6194: e92d4070     	push	{r4, r5, r6, lr}
  6b6198: e5923000     	ldr	r3, [r2]
  6b619c: e1a05002     	mov	r5, r2
  6b61a0: e1a06000     	mov	r6, r0
  6b61a4: e3530000     	cmp	r3, #0
  6b61a8: 15932004     	ldrne	r2, [r3, #0x4]
  6b61ac: e1a04001     	mov	r4, r1
  6b61b0: 12822001     	addne	r2, r2, #1
  6b61b4: 15832004     	strne	r2, [r3, #0x4]
  6b61b8: e5910000     	ldr	r0, [r1]
  6b61bc: e5813000     	str	r3, [r1]
  6b61c0: e3500000     	cmp	r0, #0
  6b61c4: 0a000000     	beq	0x6b61cc <_ZN6glitch5video14CVertexStreams9setStreamEPNS0_13SVertexStreamERKNS0_17SVertexStreamDataEb.clone.1+0x38> @ imm = #0x0
  6b61c8: ebf19ced     	bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x398c4c
  6b61cc: e5953004     	ldr	r3, [r5, #0x4]
  6b61d0: e1a00006     	mov	r0, r6
  6b61d4: e3a01000     	mov	r1, #0
  6b61d8: e5843004     	str	r3, [r4, #0x4]
  6b61dc: e1d530b8     	ldrh	r3, [r5, #8]
  6b61e0: e1c430ba     	strh	r3, [r4, #10]
  6b61e4: e1d530bc     	ldrh	r3, [r5, #12]
  6b61e8: e1c430bc     	strh	r3, [r4, #12]
  6b61ec: e1d550be     	ldrh	r5, [r5, #14]
  6b61f0: e1c450be     	strh	r5, [r4, #14]
  6b61f4: e8bd4070     	pop	{r4, r5, r6, lr}
  6b61f8: eafbaa7f     	b	0x5a0bfc <_ZN6glitch5video14CVertexStreams25updateHomogeneityInternalEb> @ imm = #-0x115604

; --- load_headers_raw_codes: Descriptor parser ORs the serialized 16-bit code into a stream mask ---
; ELF VA [0x006b6e4c, 0x006b6f64); 280 bytes; SHA-256 023b55f2ff0bbfbfc71ea70945738556bc9cae271fff246acd3e342cb9be934b

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

006b6cac <_ZN6glitch2io22loadHeadersAndSkipDataEPNS0_9IReadFileERNS0_20SPrimitiveStreamDescEb>:
  6b6e4c: e5cd3079     	strb	r3, [sp, #0x79]
  6b6e50: e1d830b0     	ldrh	r3, [r8]
  6b6e54: e1cd97b8     	strh	r9, [sp, #120]
  6b6e58: e1cd32b4     	strh	r3, [sp, #36]
  6b6e5c: e5dc2001     	ldrb	r2, [r12, #0x1]
  6b6e60: e5cd2078     	strb	r2, [sp, #0x78]
  6b6e64: e5dc2000     	ldrb	r2, [r12]
  6b6e68: e5cd2079     	strb	r2, [sp, #0x79]
  6b6e6c: e1d8e0b0     	ldrh	lr, [r8]
  6b6e70: e1cd97b8     	strh	r9, [sp, #120]
  6b6e74: e1cde2b6     	strh	lr, [sp, #38]
  6b6e78: e5d02001     	ldrb	r2, [r0, #0x1]
  6b6e7c: e5cd2078     	strb	r2, [sp, #0x78]
  6b6e80: e5d02000     	ldrb	r2, [r0]
  6b6e84: e5cd2079     	strb	r2, [sp, #0x79]
  6b6e88: e1d810b0     	ldrh	r1, [r8]
  6b6e8c: e1cd12b8     	strh	r1, [sp, #40]
  6b6e90: e59dc010     	ldr	r12, [sp, #0x10]
  6b6e94: e1cd97b8     	strh	r9, [sp, #120]
  6b6e98: e5dc2001     	ldrb	r2, [r12, #0x1]
  6b6e9c: e5cd2078     	strb	r2, [sp, #0x78]
  6b6ea0: e5dc2000     	ldrb	r2, [r12]
  6b6ea4: e5cd2079     	strb	r2, [sp, #0x79]
  6b6ea8: e1d8e0b0     	ldrh	lr, [r8]
  6b6eac: e1cde2ba     	strh	lr, [sp, #42]
  6b6eb0: e3a00001     	mov	r0, #1
  6b6eb4: e59d1070     	ldr	r1, [sp, #0x70]
  6b6eb8: e18bb310     	orr	r11, r11, r0, lsl r3
  6b6ebc: e59d3074     	ldr	r3, [sp, #0x74]
  6b6ec0: e1510003     	cmp	r1, r3
  6b6ec4: 1affffb7     	bne	0x6b6da8 <_ZN6glitch2io22loadHeadersAndSkipDataEPNS0_9IReadFileERNS0_20SPrimitiveStreamDescEb+0xfc> @ imm = #-0x124
  6b6ec8: e59d0018     	ldr	r0, [sp, #0x18]
  6b6ecc: e1a02006     	mov	r2, r6
  6b6ed0: ebffff08     	bl	0x6b6af8 <_ZNSt6vectorIN6glitch2io19SVertexStreamHeaderESaIS2_EE22_M_insert_overflow_auxEPS2_RKS2_RKSt12__false_typejb.clone.2> @ imm = #-0x3e0
  6b6ed4: e59d3080     	ldr	r3, [sp, #0x80]
  6b6ed8: e2877001     	add	r7, r7, #1
  6b6edc: e1530007     	cmp	r3, r7
  6b6ee0: 8affffbe     	bhi	0x6b6de0 <_ZN6glitch2io22loadHeadersAndSkipDataEPNS0_9IReadFileERNS0_20SPrimitiveStreamDescEb+0x134> @ imm = #-0x108
  6b6ee4: e59d501c     	ldr	r5, [sp, #0x1c]
  6b6ee8: e1a0100b     	mov	r1, r11
  6b6eec: e1a00005     	mov	r0, r5
  6b6ef0: ebfba919     	bl	0x5a135c <_ZN6glitch5video14CVertexStreams8allocateEj> @ imm = #-0x115b9c
  6b6ef4: e59d706c     	ldr	r7, [sp, #0x6c]
  6b6ef8: e59d3070     	ldr	r3, [sp, #0x70]
  6b6efc: e1570003     	cmp	r7, r3
  6b6f00: 0a00001b     	beq	0x6b6f74 <_ZN6glitch2io22loadHeadersAndSkipDataEPNS0_9IReadFileERNS0_20SPrimitiveStreamDescEb+0x2c8> @ imm = #0x6c
  6b6f04: e3a08000     	mov	r8, #0
  6b6f08: e28d6020     	add	r6, sp, #32
  6b6f0c: e1a0a008     	mov	r10, r8
  6b6f10: e1a09004     	mov	r9, r4
  6b6f14: e5950000     	ldr	r0, [r5]
  6b6f18: e5974000     	ldr	r4, [r7]
  6b6f1c: e1d7e0b6     	ldrh	lr, [r7, #6]
  6b6f20: e1d7c0b8     	ldrh	r12, [r7, #8]
  6b6f24: e1d730ba     	ldrh	r3, [r7, #10]
  6b6f28: e2801014     	add	r1, r0, #20
  6b6f2c: e0811008     	add	r1, r1, r8
  6b6f30: e1a02006     	mov	r2, r6
  6b6f34: e58d4024     	str	r4, [sp, #0x24]
  6b6f38: e58de028     	str	lr, [sp, #0x28]
  6b6f3c: e1cdc2bc     	strh	r12, [sp, #44]
  6b6f40: e1cd32be     	strh	r3, [sp, #46]
  6b6f44: e58da020     	str	r10, [sp, #0x20]
  6b6f48: ebfffc91     	bl	0x6b6194 <_ZN6glitch5video14CVertexStreams9setStreamEPNS0_13SVertexStreamERKNS0_17SVertexStreamDataEb.clone.1> @ imm = #-0xdbc
  6b6f4c: e59d0020     	ldr	r0, [sp, #0x20]
  6b6f50: e287700c     	add	r7, r7, #12
  6b6f54: e2888010     	add	r8, r8, #16
  6b6f58: e3500000     	cmp	r0, #0
  6b6f5c: 0a000000     	beq	0x6b6f64 <_ZN6glitch2io22loadHeadersAndSkipDataEPNS0_9IReadFileERNS0_20SPrimitiveStreamDescEb+0x2b8> @ imm = #0x0
  6b6f60: ebf19987     	bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x3999e4

; --- generic_baker_code_switch: Append-buffer layout dispatch for codes 0 through 27 ---
; ELF VA [0x00609bb0, 0x00609d28); 376 bytes; SHA-256 fbc52597b384914f4a209187b0c3998557c76068424826997ad54b4813151ecb

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

00609ba4 <_ZNK6glitch5video13CGenericBaker21configureAppendBufferERKN5boost13intrusive_ptrINS_5scene17CAppendMeshBufferEEE>:
  609bb0: e5910000     	ldr	r0, [r1]
  609bb4: e1a07001     	mov	r7, r1
  609bb8: eb02bbfd     	bl	0x6b8bb4 <_ZN6glitch5scene17CAppendMeshBuffer5resetEv> @ imm = #0xaeff4
  609bbc: e5963008     	ldr	r3, [r6, #0x8]
  609bc0: e5d3503c     	ldrb	r5, [r3, #0x3c]
  609bc4: e5934024     	ldr	r4, [r3, #0x24]
  609bc8: e1b05185     	lsls	r5, r5, #3
  609bcc: 0a00003a     	beq	0x609cbc <_ZNK6glitch5video13CGenericBaker21configureAppendBufferERKN5boost13intrusive_ptrINS_5scene17CAppendMeshBufferEEE+0x118> @ imm = #0xe8
  609bd0: e2844008     	add	r4, r4, #8
  609bd4: e3a05000     	mov	r5, #0
  609bd8: e3a0a004     	mov	r10, #4
  609bdc: e3a08003     	mov	r8, #3
  609be0: e3a09002     	mov	r9, #2
  609be4: e15410b4     	ldrh	r1, [r4, #-4]
  609be8: e1a03001     	mov	r3, r1
  609bec: e351001b     	cmp	r1, #27
  609bf0: 908ff101     	addls	pc, pc, r1, lsl #2
  609bf4: ea000025     	b	0x609c90 <_ZNK6glitch5video13CGenericBaker21configureAppendBufferERKN5boost13intrusive_ptrINS_5scene17CAppendMeshBufferEEE+0xec> @ imm = #0x94
  609bf8: ea00001a     	b	0x609c68 <_ZNK6glitch5video13CGenericBaker21configureAppendBufferERKN5boost13intrusive_ptrINS_5scene17CAppendMeshBufferEEE+0xc4> @ imm = #0x68
  609bfc: ea000033     	b	0x609cd0 <_ZNK6glitch5video13CGenericBaker21configureAppendBufferERKN5boost13intrusive_ptrINS_5scene17CAppendMeshBufferEEE+0x12c> @ imm = #0xcc
  609c00: ea000032     	b	0x609cd0 <_ZNK6glitch5video13CGenericBaker21configureAppendBufferERKN5boost13intrusive_ptrINS_5scene17CAppendMeshBufferEEE+0x12c> @ imm = #0xc8
  609c04: ea000031     	b	0x609cd0 <_ZNK6glitch5video13CGenericBaker21configureAppendBufferERKN5boost13intrusive_ptrINS_5scene17CAppendMeshBufferEEE+0x12c> @ imm = #0xc4
  609c08: ea000030     	b	0x609cd0 <_ZNK6glitch5video13CGenericBaker21configureAppendBufferERKN5boost13intrusive_ptrINS_5scene17CAppendMeshBufferEEE+0x12c> @ imm = #0xc0
  609c0c: ea00002f     	b	0x609cd0 <_ZNK6glitch5video13CGenericBaker21configureAppendBufferERKN5boost13intrusive_ptrINS_5scene17CAppendMeshBufferEEE+0x12c> @ imm = #0xbc
  609c10: ea00002e     	b	0x609cd0 <_ZNK6glitch5video13CGenericBaker21configureAppendBufferERKN5boost13intrusive_ptrINS_5scene17CAppendMeshBufferEEE+0x12c> @ imm = #0xb8
  609c14: ea00002d     	b	0x609cd0 <_ZNK6glitch5video13CGenericBaker21configureAppendBufferERKN5boost13intrusive_ptrINS_5scene17CAppendMeshBufferEEE+0x12c> @ imm = #0xb4
  609c18: ea00002c     	b	0x609cd0 <_ZNK6glitch5video13CGenericBaker21configureAppendBufferERKN5boost13intrusive_ptrINS_5scene17CAppendMeshBufferEEE+0x12c> @ imm = #0xb0
  609c1c: ea00002b     	b	0x609cd0 <_ZNK6glitch5video13CGenericBaker21configureAppendBufferERKN5boost13intrusive_ptrINS_5scene17CAppendMeshBufferEEE+0x12c> @ imm = #0xac
  609c20: ea00002a     	b	0x609cd0 <_ZNK6glitch5video13CGenericBaker21configureAppendBufferERKN5boost13intrusive_ptrINS_5scene17CAppendMeshBufferEEE+0x12c> @ imm = #0xa8
  609c24: ea000029     	b	0x609cd0 <_ZNK6glitch5video13CGenericBaker21configureAppendBufferERKN5boost13intrusive_ptrINS_5scene17CAppendMeshBufferEEE+0x12c> @ imm = #0xa4
  609c28: ea000028     	b	0x609cd0 <_ZNK6glitch5video13CGenericBaker21configureAppendBufferERKN5boost13intrusive_ptrINS_5scene17CAppendMeshBufferEEE+0x12c> @ imm = #0xa0
  609c2c: ea000027     	b	0x609cd0 <_ZNK6glitch5video13CGenericBaker21configureAppendBufferERKN5boost13intrusive_ptrINS_5scene17CAppendMeshBufferEEE+0x12c> @ imm = #0x9c
  609c30: ea000026     	b	0x609cd0 <_ZNK6glitch5video13CGenericBaker21configureAppendBufferERKN5boost13intrusive_ptrINS_5scene17CAppendMeshBufferEEE+0x12c> @ imm = #0x98
  609c34: ea000025     	b	0x609cd0 <_ZNK6glitch5video13CGenericBaker21configureAppendBufferERKN5boost13intrusive_ptrINS_5scene17CAppendMeshBufferEEE+0x12c> @ imm = #0x94
  609c38: ea000024     	b	0x609cd0 <_ZNK6glitch5video13CGenericBaker21configureAppendBufferERKN5boost13intrusive_ptrINS_5scene17CAppendMeshBufferEEE+0x12c> @ imm = #0x90
  609c3c: ea000009     	b	0x609c68 <_ZNK6glitch5video13CGenericBaker21configureAppendBufferERKN5boost13intrusive_ptrINS_5scene17CAppendMeshBufferEEE+0xc4> @ imm = #0x24
  609c40: ea00002d     	b	0x609cfc <_ZNK6glitch5video13CGenericBaker21configureAppendBufferERKN5boost13intrusive_ptrINS_5scene17CAppendMeshBufferEEE+0x158> @ imm = #0xb4
  609c44: ea00002c     	b	0x609cfc <_ZNK6glitch5video13CGenericBaker21configureAppendBufferERKN5boost13intrusive_ptrINS_5scene17CAppendMeshBufferEEE+0x158> @ imm = #0xb0
  609c48: ea000006     	b	0x609c68 <_ZNK6glitch5video13CGenericBaker21configureAppendBufferERKN5boost13intrusive_ptrINS_5scene17CAppendMeshBufferEEE+0xc4> @ imm = #0x18
  609c4c: ea000005     	b	0x609c68 <_ZNK6glitch5video13CGenericBaker21configureAppendBufferERKN5boost13intrusive_ptrINS_5scene17CAppendMeshBufferEEE+0xc4> @ imm = #0x14
  609c50: ea000004     	b	0x609c68 <_ZNK6glitch5video13CGenericBaker21configureAppendBufferERKN5boost13intrusive_ptrINS_5scene17CAppendMeshBufferEEE+0xc4> @ imm = #0x10
  609c54: ea000003     	b	0x609c68 <_ZNK6glitch5video13CGenericBaker21configureAppendBufferERKN5boost13intrusive_ptrINS_5scene17CAppendMeshBufferEEE+0xc4> @ imm = #0xc
  609c58: ea000002     	b	0x609c68 <_ZNK6glitch5video13CGenericBaker21configureAppendBufferERKN5boost13intrusive_ptrINS_5scene17CAppendMeshBufferEEE+0xc4> @ imm = #0x8
  609c5c: ea000001     	b	0x609c68 <_ZNK6glitch5video13CGenericBaker21configureAppendBufferERKN5boost13intrusive_ptrINS_5scene17CAppendMeshBufferEEE+0xc4> @ imm = #0x4
  609c60: ea000000     	b	0x609c68 <_ZNK6glitch5video13CGenericBaker21configureAppendBufferERKN5boost13intrusive_ptrINS_5scene17CAppendMeshBufferEEE+0xc4> @ imm = #0x0
  609c64: eaffffff     	b	0x609c68 <_ZNK6glitch5video13CGenericBaker21configureAppendBufferERKN5boost13intrusive_ptrINS_5scene17CAppendMeshBufferEEE+0xc4> @ imm = #-0x4
  609c68: e5970000     	ldr	r0, [r7]
  609c6c: e6ef1071     	uxtb	r1, r1
  609c70: e1a02005     	mov	r2, r5
  609c74: e3a03006     	mov	r3, #6
  609c78: e58d8000     	str	r8, [sp]
  609c7c: eb02bb33     	bl	0x6b8950 <_ZN6glitch5scene17CAppendMeshBuffer15configureStreamEhiNS_5video29E_VERTEX_ATTRIBUTE_VALUE_TYPEEt> @ imm = #0xaeccc
  609c80: e15410b4     	ldrh	r1, [r4, #-4]
  609c84: e285500c     	add	r5, r5, #12
  609c88: e6ff5075     	uxth	r5, r5
  609c8c: e1a03001     	mov	r3, r1
  609c90: e596000c     	ldr	r0, [r6, #0xc]
  609c94: e1a02004     	mov	r2, r4
  609c98: e2844008     	add	r4, r4, #8
  609c9c: e0803003     	add	r3, r0, r3
  609ca0: e5c31004     	strb	r1, [r3, #0x4]
  609ca4: e5963008     	ldr	r3, [r6, #0x8]
  609ca8: e5931024     	ldr	r1, [r3, #0x24]
  609cac: e5d3303c     	ldrb	r3, [r3, #0x3c]
  609cb0: e0813183     	add	r3, r1, r3, lsl #3
  609cb4: e1520003     	cmp	r2, r3
  609cb8: 1affffc9     	bne	0x609be4 <_ZNK6glitch5video13CGenericBaker21configureAppendBufferERKN5boost13intrusive_ptrINS_5scene17CAppendMeshBufferEEE+0x40> @ imm = #-0xdc
  609cbc: e5970000     	ldr	r0, [r7]
  609cc0: e1a01005     	mov	r1, r5
  609cc4: e28dd008     	add	sp, sp, #8
  609cc8: e8bd47f0     	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
  609ccc: ea02bad8     	b	0x6b8834 <_ZN6glitch5scene17CAppendMeshBuffer12adjustStrideEt> @ imm = #0xaeb60
  609cd0: e5970000     	ldr	r0, [r7]
  609cd4: e6ef1071     	uxtb	r1, r1
  609cd8: e1a02005     	mov	r2, r5
  609cdc: e3a03006     	mov	r3, #6
  609ce0: e58d9000     	str	r9, [sp]
  609ce4: eb02bb19     	bl	0x6b8950 <_ZN6glitch5scene17CAppendMeshBuffer15configureStreamEhiNS_5video29E_VERTEX_ATTRIBUTE_VALUE_TYPEEt> @ imm = #0xaec64
  609ce8: e15410b4     	ldrh	r1, [r4, #-4]
  609cec: e2855008     	add	r5, r5, #8
  609cf0: e6ff5075     	uxth	r5, r5
  609cf4: e1a03001     	mov	r3, r1
  609cf8: eaffffe4     	b	0x609c90 <_ZNK6glitch5video13CGenericBaker21configureAppendBufferERKN5boost13intrusive_ptrINS_5scene17CAppendMeshBufferEEE+0xec> @ imm = #-0x70
  609cfc: e5970000     	ldr	r0, [r7]
  609d00: e6ef1071     	uxtb	r1, r1
  609d04: e1a02005     	mov	r2, r5
  609d08: e3a03001     	mov	r3, #1
  609d0c: e58da000     	str	r10, [sp]
  609d10: eb02bb0e     	bl	0x6b8950 <_ZN6glitch5scene17CAppendMeshBuffer15configureStreamEhiNS_5video29E_VERTEX_ATTRIBUTE_VALUE_TYPEEt> @ imm = #0xaec38
  609d14: e15410b4     	ldrh	r1, [r4, #-4]
  609d18: e2855004     	add	r5, r5, #4
  609d1c: e6ff5075     	uxth	r5, r5
  609d20: e1a03001     	mov	r3, r1
  609d24: eaffffd9     	b	0x609c90 <_ZNK6glitch5video13CGenericBaker21configureAppendBufferERKN5boost13intrusive_ptrINS_5scene17CAppendMeshBufferEEE+0xec> @ imm = #-0x9c

; --- append_configure_stream: Stores layout in a stream slot and appends its code ---
; ELF VA [0x006b8950, 0x006b8aa0); 336 bytes; SHA-256 fd7b12b36b9e764c498d0a31a6d43bc035aaee790680f13cd63861c016ba684c

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

006b8950 <_ZN6glitch5scene17CAppendMeshBuffer15configureStreamEhiNS_5video29E_VERTEX_ATTRIBUTE_VALUE_TYPEEt>:
  6b8950: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  6b8954: e5904058     	ldr	r4, [r0, #0x58]
  6b8958: e1a0b003     	mov	r11, r3
  6b895c: e24dd004     	sub	sp, sp, #4
  6b8960: e3540000     	cmp	r4, #0
  6b8964: 15943004     	ldrne	r3, [r4, #0x4]
  6b8968: e1dd92b8     	ldrh	r9, [sp, #40]
  6b896c: e1a07002     	mov	r7, r2
  6b8970: 12833001     	addne	r3, r3, #1
  6b8974: 15843004     	strne	r3, [r4, #0x4]
  6b8978: e3540000     	cmp	r4, #0
  6b897c: 15942004     	ldrne	r2, [r4, #0x4]
  6b8980: e590a014     	ldr	r10, [r0, #0x14]
  6b8984: e1a05000     	mov	r5, r0
  6b8988: 12822001     	addne	r2, r2, #1
  6b898c: e28a3014     	add	r3, r10, #20
  6b8990: 15842004     	strne	r2, [r4, #0x4]
  6b8994: e7930201     	ldr	r0, [r3, r1, lsl #4]
  6b8998: e1a06001     	mov	r6, r1
  6b899c: e0838201     	add	r8, r3, r1, lsl #4
  6b89a0: e3500000     	cmp	r0, #0
  6b89a4: e7834201     	str	r4, [r3, r1, lsl #4]
  6b89a8: 0a000000     	beq	0x6b89b0 <_ZN6glitch5scene17CAppendMeshBuffer15configureStreamEhiNS_5video29E_VERTEX_ATTRIBUTE_VALUE_TYPEEt+0x60> @ imm = #0x0
  6b89ac: ebf192f4     	bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x39b430
  6b89b0: e3a03000     	mov	r3, #0
  6b89b4: e1c830be     	strh	r3, [r8, #14]
  6b89b8: e1a0000a     	mov	r0, r10
  6b89bc: e5887004     	str	r7, [r8, #0x4]
  6b89c0: e1c8b0ba     	strh	r11, [r8, #10]
  6b89c4: e1c890bc     	strh	r9, [r8, #12]
  6b89c8: e3a01000     	mov	r1, #0
  6b89cc: ebfba08a     	bl	0x5a0bfc <_ZN6glitch5video14CVertexStreams25updateHomogeneityInternalEb> @ imm = #-0x117dd8
  6b89d0: e595a068     	ldr	r10, [r5, #0x68]
  6b89d4: e595306c     	ldr	r3, [r5, #0x6c]
  6b89d8: e15a0003     	cmp	r10, r3
  6b89dc: 0a00000b     	beq	0x6b8a10 <_ZN6glitch5scene17CAppendMeshBuffer15configureStreamEhiNS_5video29E_VERTEX_ATTRIBUTE_VALUE_TYPEEt+0xc0> @ imm = #0x2c
  6b89e0: e5ca6000     	strb	r6, [r10]
  6b89e4: e5953068     	ldr	r3, [r5, #0x68]
  6b89e8: e2833001     	add	r3, r3, #1
  6b89ec: e5853068     	str	r3, [r5, #0x68]
  6b89f0: e3540000     	cmp	r4, #0
  6b89f4: 0a000003     	beq	0x6b8a08 <_ZN6glitch5scene17CAppendMeshBuffer15configureStreamEhiNS_5video29E_VERTEX_ATTRIBUTE_VALUE_TYPEEt+0xb8> @ imm = #0xc
  6b89f8: e1a00004     	mov	r0, r4
  6b89fc: e28dd004     	add	sp, sp, #4
  6b8a00: e8bd4ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  6b8a04: eaf192de     	b	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x39b488
  6b8a08: e28dd004     	add	sp, sp, #4
  6b8a0c: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  6b8a10: e5953064     	ldr	r3, [r5, #0x64]
  6b8a14: e063300a     	rsb	r3, r3, r10
  6b8a18: e3730001     	cmn	r3, #1
  6b8a1c: 0a000015     	beq	0x6b8a78 <_ZN6glitch5scene17CAppendMeshBuffer15configureStreamEhiNS_5video29E_VERTEX_ATTRIBUTE_VALUE_TYPEEt+0x128> @ imm = #0x54
  6b8a20: e3530001     	cmp	r3, #1
  6b8a24: 20837003     	addhs	r7, r3, r3
  6b8a28: 32837001     	addlo	r7, r3, #1
  6b8a2c: e1530007     	cmp	r3, r7
  6b8a30: 83e07000     	mvnhi	r7, #0
  6b8a34: e3a01000     	mov	r1, #0
  6b8a38: e1a00007     	mov	r0, r7
  6b8a3c: ebf15ec9     	bl	0x310568 <_Z11GlitchAllocjN6glitch6memory13E_MEMORY_HINTE> @ imm = #-0x3a84dc
  6b8a40: e5951064     	ldr	r1, [r5, #0x64]
  6b8a44: e1a08000     	mov	r8, r0
  6b8a48: e05aa001     	subs	r10, r10, r1
  6b8a4c: 01a0a000     	moveq	r10, r0
  6b8a50: 1a00000d     	bne	0x6b8a8c <_ZN6glitch5scene17CAppendMeshBuffer15configureStreamEhiNS_5video29E_VERTEX_ATTRIBUTE_VALUE_TYPEEt+0x13c> @ imm = #0x34
  6b8a54: e5ca6000     	strb	r6, [r10]
  6b8a58: e5950064     	ldr	r0, [r5, #0x64]
  6b8a5c: e28aa001     	add	r10, r10, #1
  6b8a60: e0887007     	add	r7, r8, r7
  6b8a64: ebf15e79     	bl	0x310450 <_Z10GlitchFreePv> @ imm = #-0x3a861c
  6b8a68: e585706c     	str	r7, [r5, #0x6c]
  6b8a6c: e585a068     	str	r10, [r5, #0x68]
  6b8a70: e5858064     	str	r8, [r5, #0x64]
  6b8a74: eaffffdd     	b	0x6b89f0 <_ZN6glitch5scene17CAppendMeshBuffer15configureStreamEhiNS_5video29E_VERTEX_ATTRIBUTE_VALUE_TYPEEt+0xa0> @ imm = #-0x8c
  6b8a78: e59f001c     	ldr	r0, [pc, #0x1c]         @ 0x6b8a9c <_ZN6glitch5scene17CAppendMeshBuffer15configureStreamEhiNS_5video29E_VERTEX_ATTRIBUTE_VALUE_TYPEEt+0x14c>
  6b8a7c: e1a07003     	mov	r7, r3
  6b8a80: e08f0000     	add	r0, pc, r0
  6b8a84: eb0140ed     	bl	0x708e40 <___ZSt24__stl_throw_length_errorPKc_veneer> @ imm = #0x503b4
  6b8a88: eaffffe9     	b	0x6b8a34 <_ZN6glitch5scene17CAppendMeshBuffer15configureStreamEhiNS_5video29E_VERTEX_ATTRIBUTE_VALUE_TYPEEt+0xe4> @ imm = #-0x5c
  6b8a8c: e1a0200a     	mov	r2, r10
  6b8a90: ebf15528     	bl	0x30df38 <memmove@plt>  @ imm = #-0x3aab60
  6b8a94: e080a00a     	add	r10, r0, r10
  6b8a98: eaffffed     	b	0x6b8a54 <_ZN6glitch5scene17CAppendMeshBuffer15configureStreamEhiNS_5video29E_VERTEX_ATTRIBUTE_VALUE_TYPEEt+0x104> @ imm = #-0x4c
  6b8a9c: e8 59 20 00  	.word	0x002059e8

; --- append_allocate_configured_streams: Configured code list becomes a mask and streams are populated ---
; ELF VA [0x0058cc74, 0x0058cdd4); 352 bytes; SHA-256 82302752fdfcd87f9036783fede57aa1d69585be3abe4df0a753d368775f31e7

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

0058cc74 <_ZNK6glitch5scene17CAppendMeshBuffer31allocateConfiguredVertexStreamsERKN5boost13intrusive_ptrINS_5video7IBufferEEE>:
  58cc74: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  58cc78: e5913064     	ldr	r3, [r1, #0x64]
  58cc7c: e591c068     	ldr	r12, [r1, #0x68]
  58cc80: e24dd024     	sub	sp, sp, #36
  58cc84: e1a06001     	mov	r6, r1
  58cc88: e153000c     	cmp	r3, r12
  58cc8c: e1a07000     	mov	r7, r0
  58cc90: e58d2008     	str	r2, [sp, #0x8]
  58cc94: 03a01000     	moveq	r1, #0
  58cc98: 0a000005     	beq	0x58ccb4 <_ZNK6glitch5scene17CAppendMeshBuffer31allocateConfiguredVertexStreamsERKN5boost13intrusive_ptrINS_5video7IBufferEEE+0x40> @ imm = #0x14
  58cc9c: e3a01000     	mov	r1, #0
  58cca0: e3a00001     	mov	r0, #1
  58cca4: e4d32001     	ldrb	r2, [r3], #1
  58cca8: e153000c     	cmp	r3, r12
  58ccac: e1811210     	orr	r1, r1, r0, lsl r2
  58ccb0: 1afffffb     	bne	0x58cca4 <_ZNK6glitch5scene17CAppendMeshBuffer31allocateConfiguredVertexStreamsERKN5boost13intrusive_ptrINS_5video7IBufferEEE+0x30> @ imm = #-0x14
  58ccb4: e1a00007     	mov	r0, r7
  58ccb8: eb0051a7     	bl	0x5a135c <_ZN6glitch5video14CVertexStreams8allocateEj> @ imm = #0x1469c
  58ccbc: e5961068     	ldr	r1, [r6, #0x68]
  58ccc0: e5963064     	ldr	r3, [r6, #0x64]
  58ccc4: e28d2014     	add	r2, sp, #20
  58ccc8: e1a00002     	mov	r0, r2
  58cccc: e0631001     	rsb	r1, r3, r1
  58ccd0: e58d200c     	str	r2, [sp, #0xc]
  58ccd4: ebffffc4     	bl	0x58cbec <_ZNSt6vectorIN6glitch5video17SVertexStreamDataESaIS2_EEC1Ej> @ imm = #-0xf0
  58ccd8: e5965064     	ldr	r5, [r6, #0x64]
  58ccdc: e5963068     	ldr	r3, [r6, #0x68]
  58cce0: e1550003     	cmp	r5, r3
  58cce4: 0a000030     	beq	0x58cdac <_ZNK6glitch5scene17CAppendMeshBuffer31allocateConfiguredVertexStreamsERKN5boost13intrusive_ptrINS_5video7IBufferEEE+0x138> @ imm = #0xc0
  58cce8: e59d2008     	ldr	r2, [sp, #0x8]
  58ccec: e5963014     	ldr	r3, [r6, #0x14]
  58ccf0: e5924000     	ldr	r4, [r2]
  58ccf4: e5d52000     	ldrb	r2, [r5]
  58ccf8: e2833014     	add	r3, r3, #20
  58ccfc: e3540000     	cmp	r4, #0
  58cd00: e0833202     	add	r3, r3, r2, lsl #4
  58cd04: 15942004     	ldrne	r2, [r4, #0x4]
  58cd08: e5938004     	ldr	r8, [r3, #0x4]
  58cd0c: e1d390ba     	ldrh	r9, [r3, #10]
  58cd10: 12822001     	addne	r2, r2, #1
  58cd14: e1d3b0bc     	ldrh	r11, [r3, #12]
  58cd18: e1d3a0be     	ldrh	r10, [r3, #14]
  58cd1c: 15842004     	strne	r2, [r4, #0x4]
  58cd20: e5970000     	ldr	r0, [r7]
  58cd24: e1d310b8     	ldrh	r1, [r3, #8]
  58cd28: e2855001     	add	r5, r5, #1
  58cd2c: e2802014     	add	r2, r0, #20
  58cd30: e5903010     	ldr	r3, [r0, #0x10]
  58cd34: eb004f6d     	bl	0x5a0af0 <_ZN6glitch5video14CVertexStreams9getStreamENS0_18E_VERTEX_ATTRIBUTEEPNS0_13SVertexStreamES4_> @ imm = #0x13db4
  58cd38: e3540000     	cmp	r4, #0
  58cd3c: 15941004     	ldrne	r1, [r4, #0x4]
  58cd40: e5972000     	ldr	r2, [r7]
  58cd44: e1a03000     	mov	r3, r0
  58cd48: 12811001     	addne	r1, r1, #1
  58cd4c: 15841004     	strne	r1, [r4, #0x4]
  58cd50: e5900000     	ldr	r0, [r0]
  58cd54: e5834000     	str	r4, [r3]
  58cd58: e3500000     	cmp	r0, #0
  58cd5c: 0a000004     	beq	0x58cd74 <_ZNK6glitch5scene17CAppendMeshBuffer31allocateConfiguredVertexStreamsERKN5boost13intrusive_ptrINS_5video7IBufferEEE+0x100> @ imm = #0x10
  58cd60: e58d2004     	str	r2, [sp, #0x4]
  58cd64: e58d3000     	str	r3, [sp]
  58cd68: ebf64205     	bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x26f7ec
  58cd6c: e59d3000     	ldr	r3, [sp]
  58cd70: e59d2004     	ldr	r2, [sp, #0x4]
  58cd74: e1a00002     	mov	r0, r2
  58cd78: e5838004     	str	r8, [r3, #0x4]
  58cd7c: e1c3a0be     	strh	r10, [r3, #14]
  58cd80: e1c390ba     	strh	r9, [r3, #10]
  58cd84: e1c3b0bc     	strh	r11, [r3, #12]
  58cd88: e3a01000     	mov	r1, #0
  58cd8c: eb004f9a     	bl	0x5a0bfc <_ZN6glitch5video14CVertexStreams25updateHomogeneityInternalEb> @ imm = #0x13e68
  58cd90: e3540000     	cmp	r4, #0
  58cd94: e1a00004     	mov	r0, r4
  58cd98: 0affffcf     	beq	0x58ccdc <_ZNK6glitch5scene17CAppendMeshBuffer31allocateConfiguredVertexStreamsERKN5boost13intrusive_ptrINS_5video7IBufferEEE+0x68> @ imm = #-0xc4
  58cd9c: ebf641f8     	bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x26f820
  58cda0: e5963068     	ldr	r3, [r6, #0x68]
  58cda4: e1550003     	cmp	r5, r3
  58cda8: 1affffce     	bne	0x58cce8 <_ZNK6glitch5scene17CAppendMeshBuffer31allocateConfiguredVertexStreamsERKN5boost13intrusive_ptrINS_5video7IBufferEEE+0x74> @ imm = #-0xc8
  58cdac: e5961048     	ldr	r1, [r6, #0x48]
  58cdb0: e596003c     	ldr	r0, [r6, #0x3c]
  58cdb4: ebf607a4     	bl	0x30ec4c <__aeabi_uidiv@plt> @ imm = #-0x27e170
  58cdb8: e5973000     	ldr	r3, [r7]
  58cdbc: e5830008     	str	r0, [r3, #0x8]
  58cdc0: e59d000c     	ldr	r0, [sp, #0xc]
  58cdc4: ebfff442     	bl	0x589ed4 <_ZNSt6vectorIN6glitch5video17SVertexStreamDataESaIS2_EED1Ev> @ imm = #-0x2ef8
  58cdc8: e1a00007     	mov	r0, r7
  58cdcc: e28dd024     	add	sp, sp, #36
  58cdd0: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}

; --- shader_reflection_filter: Classifier result above code 29 is skipped before storage ---
; ELF VA [0x006debe4, 0x006dec74); 144 bytes; SHA-256 ae85304314df035bfbc1bc1070c6f35b9862f5538508bdd95fcafbb6100cdf72

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

006de9f8 <_ZN6glitch5video11CGLSLShader11linkProgramEv>:
  6debe4: e594004c     	ldr	r0, [r4, #0x4c]
  6debe8: e1a01005     	mov	r1, r5
  6debec: e59d2038     	ldr	r2, [sp, #0x38]
  6debf0: e3a03000     	mov	r3, #0
  6debf4: e58da000     	str	r10, [sp]
  6debf8: e58d7004     	str	r7, [sp, #0x4]
  6debfc: e58d6008     	str	r6, [sp, #0x8]
  6dec00: ebf0bd05     	bl	0x30e01c <glGetActiveAttrib@plt> @ imm = #-0x3d0bec
  6dec04: e1a00006     	mov	r0, r6
  6dec08: ebfff3d0     	bl	0x6dbb50 <_ZN6glitch5video26guessShaderVertexAttributeEPKc> @ imm = #-0x30c0
  6dec0c: e350001d     	cmp	r0, #29
  6dec10: e1a09000     	mov	r9, r0
  6dec14: caffffeb     	bgt	0x6debc8 <_ZN6glitch5video11CGLSLShader11linkProgramEv+0x1d0> @ imm = #-0x54
  6dec18: e1a01006     	mov	r1, r6
  6dec1c: e594004c     	ldr	r0, [r4, #0x4c]
  6dec20: ebf0bec5     	bl	0x30e73c <glGetAttribLocation@plt> @ imm = #-0x3d04ec
  6dec24: e3a01001     	mov	r1, #1
  6dec28: e6ff3070     	uxth	r3, r0
  6dec2c: e1a00006     	mov	r0, r6
  6dec30: e594b024     	ldr	r11, [r4, #0x24]
  6dec34: e58d3014     	str	r3, [sp, #0x14]
  6dec38: ebff190d     	bl	0x6a5074 <_ZN6glitch4core6detail22SSharedStringHeapEntry5SData3getEPKcb> @ imm = #-0x39bcc
  6dec3c: e78b0185     	str	r0, [r11, r5, lsl #3]
  6dec40: e3500000     	cmp	r0, #0
  6dec44: 15902000     	ldrne	r2, [r0]
  6dec48: e59d3014     	ldr	r3, [sp, #0x14]
  6dec4c: e08bb185     	add	r11, r11, r5, lsl #3
  6dec50: 12822001     	addne	r2, r2, #1
  6dec54: 15802000     	strne	r2, [r0]
  6dec58: e1cb90b4     	strh	r9, [r11, #4]
  6dec5c: e1cb30b6     	strh	r3, [r11, #6]
  6dec60: e5943038     	ldr	r3, [r4, #0x38]
  6dec64: e2855001     	add	r5, r5, #1
  6dec68: e1839918     	orr	r9, r3, r8, lsl r9
  6dec6c: e59d3040     	ldr	r3, [sp, #0x40]
  6dec70: e5849038     	str	r9, [r4, #0x38]

; --- buffered_renderer_stream_codes: Renderer constructor initializes position, UV, and color streams ---
; ELF VA [0x007d48d8, 0x007d49b8); 224 bytes; SHA-256 2e8bbf52a03be331cc0f4908ca8f11097524b7e77536698654d35ff56f56d7b5

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

007d4768 <_ZN16BufferedRendererC1EPN6glitch5video12IVideoDriverE>:
  7d48d8: e3a0c00c     	mov	r12, #12
  7d48dc: e58dc034     	str	r12, [sp, #0x34]
  7d48e0: e3a0c006     	mov	r12, #6
  7d48e4: e58dc038     	str	r12, [sp, #0x38]
  7d48e8: e3a0c003     	mov	r12, #3
  7d48ec: e2801014     	add	r1, r0, #20
  7d48f0: e1cdc3bc     	strh	r12, [sp, #60]
  7d48f4: e28d2030     	add	r2, sp, #48
  7d48f8: e3a0c018     	mov	r12, #24
  7d48fc: e3a03001     	mov	r3, #1
  7d4900: e1cdc3be     	strh	r12, [sp, #62]
  7d4904: ebffff7c     	bl	0x7d46fc <_ZN6glitch5video14CVertexStreams9setStreamEPNS0_13SVertexStreamERKNS0_17SVertexStreamDataEb> @ imm = #-0x210
  7d4908: e59d0030     	ldr	r0, [sp, #0x30]
  7d490c: e3500000     	cmp	r0, #0
  7d4910: 0a000000     	beq	0x7d4918 <_ZN16BufferedRendererC1EPN6glitch5video12IVideoDriverE+0x1b0> @ imm = #0x0
  7d4914: ebed231a     	bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x4b7398
  7d4918: e3560000     	cmp	r6, #0
  7d491c: e58d6020     	str	r6, [sp, #0x20]
  7d4920: 15963004     	ldrne	r3, [r6, #0x4]
  7d4924: e5950010     	ldr	r0, [r5, #0x10]
  7d4928: e3a0c000     	mov	r12, #0
  7d492c: 12833001     	addne	r3, r3, #1
  7d4930: 15863004     	strne	r3, [r6, #0x4]
  7d4934: e58dc024     	str	r12, [sp, #0x24]
  7d4938: e3a0c006     	mov	r12, #6
  7d493c: e58dc028     	str	r12, [sp, #0x28]
  7d4940: e3a0c002     	mov	r12, #2
  7d4944: e2801024     	add	r1, r0, #36
  7d4948: e1cdc2bc     	strh	r12, [sp, #44]
  7d494c: e28d2020     	add	r2, sp, #32
  7d4950: e3a0c018     	mov	r12, #24
  7d4954: e3a03001     	mov	r3, #1
  7d4958: e1cdc2be     	strh	r12, [sp, #46]
  7d495c: ebffff66     	bl	0x7d46fc <_ZN6glitch5video14CVertexStreams9setStreamEPNS0_13SVertexStreamERKNS0_17SVertexStreamDataEb> @ imm = #-0x268
  7d4960: e59d0020     	ldr	r0, [sp, #0x20]
  7d4964: e3500000     	cmp	r0, #0
  7d4968: 0a000000     	beq	0x7d4970 <_ZN16BufferedRendererC1EPN6glitch5video12IVideoDriverE+0x208> @ imm = #0x0
  7d496c: ebed2304     	bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x4b73f0
  7d4970: e3560000     	cmp	r6, #0
  7d4974: e58d6010     	str	r6, [sp, #0x10]
  7d4978: 15963004     	ldrne	r3, [r6, #0x4]
  7d497c: e5950010     	ldr	r0, [r5, #0x10]
  7d4980: e3a0c008     	mov	r12, #8
  7d4984: 12833001     	addne	r3, r3, #1
  7d4988: 15863004     	strne	r3, [r6, #0x4]
  7d498c: e58dc014     	str	r12, [sp, #0x14]
  7d4990: e3a0c001     	mov	r12, #1
  7d4994: e58dc018     	str	r12, [sp, #0x18]
  7d4998: e3a0c004     	mov	r12, #4
  7d499c: e2801034     	add	r1, r0, #52
  7d49a0: e1cdc1bc     	strh	r12, [sp, #28]
  7d49a4: e28d2010     	add	r2, sp, #16
  7d49a8: e3a0c018     	mov	r12, #24
  7d49ac: e3a03000     	mov	r3, #0
  7d49b0: e1cdc1be     	strh	r12, [sp, #30]
  7d49b4: ebffff50     	bl	0x7d46fc <_ZN6glitch5video14CVertexStreams9setStreamEPNS0_13SVertexStreamERKNS0_17SVertexStreamDataEb> @ imm = #-0x2c0

; --- glitch_renderer_stream_codes: Glitch renderer initializes position, UV, and color streams ---
; ELF VA [0x007d62f4, 0x007d63f8); 260 bytes; SHA-256 09ec98a4a4f567150bfec3554263df9c72092b2ff95b0dc7f1a205ba63f7a2b4

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

007d60f4 <_ZN21render_handler_glitchC1EPN6glitch5video12IVideoDriverE>:
  7d62f4: e59d306c     	ldr	r3, [sp, #0x6c]
  7d62f8: e5940378     	ldr	r0, [r4, #0x378]
  7d62fc: e3a0c00c     	mov	r12, #12
  7d6300: e3530000     	cmp	r3, #0
  7d6304: e58d3034     	str	r3, [sp, #0x34]
  7d6308: 15932004     	ldrne	r2, [r3, #0x4]
  7d630c: e2801014     	add	r1, r0, #20
  7d6310: 12822001     	addne	r2, r2, #1
  7d6314: 15832004     	strne	r2, [r3, #0x4]
  7d6318: e58dc038     	str	r12, [sp, #0x38]
  7d631c: e3a0c006     	mov	r12, #6
  7d6320: e58dc03c     	str	r12, [sp, #0x3c]
  7d6324: e3a0c003     	mov	r12, #3
  7d6328: e1cdc4b0     	strh	r12, [sp, #64]
  7d632c: e28d2034     	add	r2, sp, #52
  7d6330: e3a0c018     	mov	r12, #24
  7d6334: e3a03001     	mov	r3, #1
  7d6338: e1cdc4b2     	strh	r12, [sp, #66]
  7d633c: ebfff8ee     	bl	0x7d46fc <_ZN6glitch5video14CVertexStreams9setStreamEPNS0_13SVertexStreamERKNS0_17SVertexStreamDataEb> @ imm = #-0x1c48
  7d6340: e59d0034     	ldr	r0, [sp, #0x34]
  7d6344: e3500000     	cmp	r0, #0
  7d6348: 0a000000     	beq	0x7d6350 <_ZN21render_handler_glitchC1EPN6glitch5video12IVideoDriverE+0x25c> @ imm = #0x0
  7d634c: ebed1c8c     	bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x4b8dd0
  7d6350: e59d306c     	ldr	r3, [sp, #0x6c]
  7d6354: e5940378     	ldr	r0, [r4, #0x378]
  7d6358: e3a0c000     	mov	r12, #0
  7d635c: e3530000     	cmp	r3, #0
  7d6360: e58d3024     	str	r3, [sp, #0x24]
  7d6364: 15932004     	ldrne	r2, [r3, #0x4]
  7d6368: e2801024     	add	r1, r0, #36
  7d636c: 12822001     	addne	r2, r2, #1
  7d6370: 15832004     	strne	r2, [r3, #0x4]
  7d6374: e58dc028     	str	r12, [sp, #0x28]
  7d6378: e3a0c006     	mov	r12, #6
  7d637c: e58dc02c     	str	r12, [sp, #0x2c]
  7d6380: e3a0c002     	mov	r12, #2
  7d6384: e1cdc3b0     	strh	r12, [sp, #48]
  7d6388: e28d2024     	add	r2, sp, #36
  7d638c: e3a0c018     	mov	r12, #24
  7d6390: e3a03001     	mov	r3, #1
  7d6394: e1cdc3b2     	strh	r12, [sp, #50]
  7d6398: ebfff8d7     	bl	0x7d46fc <_ZN6glitch5video14CVertexStreams9setStreamEPNS0_13SVertexStreamERKNS0_17SVertexStreamDataEb> @ imm = #-0x1ca4
  7d639c: e59d0024     	ldr	r0, [sp, #0x24]
  7d63a0: e3500000     	cmp	r0, #0
  7d63a4: 0a000000     	beq	0x7d63ac <_ZN21render_handler_glitchC1EPN6glitch5video12IVideoDriverE+0x2b8> @ imm = #0x0
  7d63a8: ebed1c75     	bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x4b8e2c
  7d63ac: e59d306c     	ldr	r3, [sp, #0x6c]
  7d63b0: e5940378     	ldr	r0, [r4, #0x378]
  7d63b4: e3a0c008     	mov	r12, #8
  7d63b8: e3530000     	cmp	r3, #0
  7d63bc: e58d3014     	str	r3, [sp, #0x14]
  7d63c0: 15932004     	ldrne	r2, [r3, #0x4]
  7d63c4: e2801034     	add	r1, r0, #52
  7d63c8: 12822001     	addne	r2, r2, #1
  7d63cc: 15832004     	strne	r2, [r3, #0x4]
  7d63d0: e58dc018     	str	r12, [sp, #0x18]
  7d63d4: e3a0c001     	mov	r12, #1
  7d63d8: e58dc01c     	str	r12, [sp, #0x1c]
  7d63dc: e3a0c004     	mov	r12, #4
  7d63e0: e1cdc2b0     	strh	r12, [sp, #32]
  7d63e4: e28d2014     	add	r2, sp, #20
  7d63e8: e3a0c018     	mov	r12, #24
  7d63ec: e3a03000     	mov	r3, #0
  7d63f0: e1cdc2b2     	strh	r12, [sp, #34]
  7d63f4: ebfff8c0     	bl	0x7d46fc <_ZN6glitch5video14CVertexStreams9setStreamEPNS0_13SVertexStreamERKNS0_17SVertexStreamDataEb> @ imm = #-0x1d00

; --- end_of_batch_allocate_call: Batch completion invokes configured-stream allocation ---
; ELF VA [0x005902b8, 0x00590310); 88 bytes; SHA-256 52cbe17d4f71904d6395d19a19a35c9a7c0858ad13caddc67b94f759213e9c50

libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

0059013c <_ZN6glitch5scene26SDefaultEndOfBatchCallbackclERKNS0_17CAppendMeshBufferERKN5boost13intrusive_ptrINS_5video9CMaterialEEE>:
  5902b8: e203201f     	and	r2, r3, #31
  5902bc: e3520001     	cmp	r2, #1
  5902c0: 9a0000c8     	bls	0x5905e8 <_ZN6glitch5scene26SDefaultEndOfBatchCallbackclERKNS0_17CAppendMeshBufferERKN5boost13intrusive_ptrINS_5video9CMaterialEEE+0x4ac> @ imm = #0x320
  5902c4: e2422001     	sub	r2, r2, #1
  5902c8: e3c3301f     	bic	r3, r3, #31
  5902cc: e1823003     	orr	r3, r2, r3
  5902d0: e5c63013     	strb	r3, [r6, #0x13]
  5902d4: e59d2018     	ldr	r2, [sp, #0x18]
  5902d8: e28d0050     	add	r0, sp, #80
  5902dc: e1a01004     	mov	r1, r4
  5902e0: ebfff263     	bl	0x58cc74 <_ZNK6glitch5scene17CAppendMeshBuffer31allocateConfiguredVertexStreamsERKN5boost13intrusive_ptrINS_5video7IBufferEEE> @ imm = #-0x3674
  5902e4: e594104c     	ldr	r1, [r4, #0x4c]
  5902e8: e5940044     	ldr	r0, [r4, #0x44]
  5902ec: ebf5fa56     	bl	0x30ec4c <__aeabi_uidiv@plt> @ imm = #-0x2816a8
  5902f0: e58d0018     	str	r0, [sp, #0x18]
  5902f4: e5941048     	ldr	r1, [r4, #0x48]
  5902f8: e594003c     	ldr	r0, [r4, #0x3c]
  5902fc: ebf5fa52     	bl	0x30ec4c <__aeabi_uidiv@plt> @ imm = #-0x2816b8
  590300: e59d6054     	ldr	r6, [sp, #0x54]
  590304: e1a0a000     	mov	r10, r0
  590308: e3560000     	cmp	r6, #0
  59030c: 0a000004     	beq	0x590324 <_ZN6glitch5scene26SDefaultEndOfBatchCallbackclERKNS0_17CAppendMeshBufferERKN5boost13intrusive_ptrINS_5video9CMaterialEEE+0x1e8> @ imm = #0x10
