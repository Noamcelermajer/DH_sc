; TrueType GUI evidence from the APK-matched ELF.
; All byte ranges below use PT_LOAD 1: file_offset = ELF_VA.
; LLVM ARM disassembly includes literal-pool words falling inside each symbol range.

; SYMBOL glitch::gui::CGUITTLibrary::CGUITTLibrary()
; FUNCTION 0x0055c518, size=0x4c, file_offset=0x55c518, sha256=a7399c675e480275bd7cf89d8d970bf97fb73f19995638e65da5a45cd91ff9f9
libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

0055c518 <_ZN6glitch3gui13CGUITTLibraryC1Ev>:
  55c518: e59f303c     	ldr	r3, [pc, #0x3c]         @ 0x55c55c <_ZN6glitch3gui13CGUITTLibraryC1Ev+0x44>
  55c51c: e59f203c     	ldr	r2, [pc, #0x3c]         @ 0x55c560 <_ZN6glitch3gui13CGUITTLibraryC1Ev+0x48>
  55c520: e92d4070     	push	{r4, r5, r6, lr}
  55c524: e08f3003     	add	r3, pc, r3
  55c528: e7932002     	ldr	r2, [r3, r2]
  55c52c: e1a04000     	mov	r4, r0
  55c530: e3a05000     	mov	r5, #0
  55c534: e2822008     	add	r2, r2, #8
  55c538: e5845004     	str	r5, [r4, #0x4]
  55c53c: e4802008     	str	r2, [r0], #8
  55c540: eb06c470     	bl	0x70d708 <FT_Init_FreeType> @ imm = #0x1b11c0
  55c544: e1500005     	cmp	r0, r5
  55c548: 03a03001     	moveq	r3, #1
  55c54c: 15c4500c     	strbne	r5, [r4, #0xc]
  55c550: 05c4300c     	strbeq	r3, [r4, #0xc]
  55c554: e1a00004     	mov	r0, r4
  55c558: e8bd8070     	pop	{r4, r5, r6, pc}
  55c55c: 6c 85 43 00  	.word	0x0043856c
  55c560: c4 17 00 00  	.word	0x000017c4

; SYMBOL glitch::gui::CGUITTLibrary::~CGUITTLibrary() [D1]
; FUNCTION 0x0055c48c, size=0x38, file_offset=0x55c48c, sha256=06d52b83aa0296f6e1275838d3920e29b01028390c0d371f1010583ff07d4097
libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

0055c48c <_ZN6glitch3gui13CGUITTLibraryD1Ev>:
  55c48c: e59f3028     	ldr	r3, [pc, #0x28]         @ 0x55c4bc <_ZN6glitch3gui13CGUITTLibraryD1Ev+0x30>
  55c490: e59f2028     	ldr	r2, [pc, #0x28]         @ 0x55c4c0 <_ZN6glitch3gui13CGUITTLibraryD1Ev+0x34>
  55c494: e92d4010     	push	{r4, lr}
  55c498: e08f3003     	add	r3, pc, r3
  55c49c: e7932002     	ldr	r2, [r3, r2]
  55c4a0: e1a04000     	mov	r4, r0
  55c4a4: e5900008     	ldr	r0, [r0, #0x8]
  55c4a8: e2822008     	add	r2, r2, #8
  55c4ac: e5842000     	str	r2, [r4]
  55c4b0: eb06c46d     	bl	0x70d66c <FT_Done_FreeType> @ imm = #0x1b11b4
  55c4b4: e1a00004     	mov	r0, r4
  55c4b8: e8bd8010     	pop	{r4, pc}
  55c4bc: f8 85 43 00  	.word	0x004385f8
  55c4c0: c4 17 00 00  	.word	0x000017c4

; SYMBOL glitch::gui::CGUITTFace::CGUITTFace()
; FUNCTION 0x0055c564, size=0x9c, file_offset=0x55c564, sha256=d691ff195c4fc2ccd4435b7fcde5f32cc8238e34732dbb42dc6029697fe5ff90
libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

0055c564 <_ZN6glitch3gui10CGUITTFaceC1Ev>:
  55c564: e59f3088     	ldr	r3, [pc, #0x88]         @ 0x55c5f4 <_ZN6glitch3gui10CGUITTFaceC1Ev+0x90>
  55c568: e59f2088     	ldr	r2, [pc, #0x88]         @ 0x55c5f8 <_ZN6glitch3gui10CGUITTFaceC1Ev+0x94>
  55c56c: e59f1088     	ldr	r1, [pc, #0x88]         @ 0x55c5fc <_ZN6glitch3gui10CGUITTFaceC1Ev+0x98>
  55c570: e08f3003     	add	r3, pc, r3
  55c574: e7932002     	ldr	r2, [r3, r2]
  55c578: e92d4070     	push	{r4, r5, r6, lr}
  55c57c: e7935001     	ldr	r5, [r3, r1]
  55c580: e2822008     	add	r2, r2, #8
  55c584: e3a01001     	mov	r1, #1
  55c588: e5802000     	str	r2, [r0]
  55c58c: e3a02000     	mov	r2, #0
  55c590: e9800006     	stmib	r0, {r1, r2}
  55c594: e5951000     	ldr	r1, [r5]
  55c598: e1a04000     	mov	r4, r0
  55c59c: e1510002     	cmp	r1, r2
  55c5a0: 0a000004     	beq	0x55c5b8 <_ZN6glitch3gui10CGUITTFaceC1Ev+0x54> @ imm = #0x10
  55c5a4: e5913004     	ldr	r3, [r1, #0x4]
  55c5a8: e2833001     	add	r3, r3, #1
  55c5ac: e5813004     	str	r3, [r1, #0x4]
  55c5b0: e1a00004     	mov	r0, r4
  55c5b4: e8bd8070     	pop	{r4, r5, r6, pc}
  55c5b8: e3a00010     	mov	r0, #16
  55c5bc: ebff5efa     	bl	0x5341ac <_ZnwjN6glitch6memory13E_MEMORY_HINTE> @ imm = #-0x28418
  55c5c0: e1a06000     	mov	r6, r0
  55c5c4: ebffffd3     	bl	0x55c518 <_ZN6glitch3gui13CGUITTLibraryC1Ev> @ imm = #-0xb4
  55c5c8: e5856000     	str	r6, [r5]
  55c5cc: e5963004     	ldr	r3, [r6, #0x4]
  55c5d0: e2833001     	add	r3, r3, #1
  55c5d4: e5863004     	str	r3, [r6, #0x4]
  55c5d8: e5950000     	ldr	r0, [r5]
  55c5dc: e5d0600c     	ldrb	r6, [r0, #0xc]
  55c5e0: e3560000     	cmp	r6, #0
  55c5e4: 1afffff1     	bne	0x55c5b0 <_ZN6glitch3gui10CGUITTFaceC1Ev+0x4c> @ imm = #-0x3c
  55c5e8: ebf703e5     	bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x23f06c
  55c5ec: e5856000     	str	r6, [r5]
  55c5f0: eaffffee     	b	0x55c5b0 <_ZN6glitch3gui10CGUITTFaceC1Ev+0x4c> @ imm = #-0x48
  55c5f4: 20 85 43 00  	.word	0x00438520
  55c5f8: 9c 3d 00 00  	.word	0x00003d9c
  55c5fc: e4 0a 00 00  	.word	0x00000ae4

; SYMBOL glitch::gui::CGUITTFace::load(glitch::io::IReadFile*)
; FUNCTION 0x0055c3cc, size=0x84, file_offset=0x55c3cc, sha256=7a473679db189344a3cb3b2caaca861539f3385543f4e68831d49794f7f225fa
libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

0055c3cc <_ZN6glitch3gui10CGUITTFace4loadEPNS_2io9IReadFileE>:
  55c3cc: e59f2074     	ldr	r2, [pc, #0x74]         @ 0x55c448 <_ZN6glitch3gui10CGUITTFace4loadEPNS_2io9IReadFileE+0x7c>
  55c3d0: e59f3074     	ldr	r3, [pc, #0x74]         @ 0x55c44c <_ZN6glitch3gui10CGUITTFace4loadEPNS_2io9IReadFileE+0x80>
  55c3d4: e92d40f0     	push	{r4, r5, r6, r7, lr}
  55c3d8: e08f2002     	add	r2, pc, r2
  55c3dc: e7923003     	ldr	r3, [r2, r3]
  55c3e0: e1a04001     	mov	r4, r1
  55c3e4: e24dd00c     	sub	sp, sp, #12
  55c3e8: e593c000     	ldr	r12, [r3]
  55c3ec: e1a06000     	mov	r6, r0
  55c3f0: e3a01000     	mov	r1, #0
  55c3f4: e5943000     	ldr	r3, [r4]
  55c3f8: e1a00004     	mov	r0, r4
  55c3fc: e59c5008     	ldr	r5, [r12, #0x8]
  55c400: e1a0e00f     	mov	lr, pc
  55c404: e593f030     	ldr	pc, [r3, #0x30]
  55c408: e5943000     	ldr	r3, [r4]
  55c40c: e1a07000     	mov	r7, r0
  55c410: e1a00004     	mov	r0, r4
  55c414: e1a0e00f     	mov	lr, pc
  55c418: e593f020     	ldr	pc, [r3, #0x20]
  55c41c: e286c008     	add	r12, r6, #8
  55c420: e1a02000     	mov	r2, r0
  55c424: e1a01007     	mov	r1, r7
  55c428: e1a00005     	mov	r0, r5
  55c42c: e3a03000     	mov	r3, #0
  55c430: e58dc000     	str	r12, [sp]
  55c434: eb06c115     	bl	0x70c890 <FT_New_Memory_Face> @ imm = #0x1b0454
  55c438: e2700001     	rsbs	r0, r0, #1
  55c43c: 33a00000     	movlo	r0, #0
  55c440: e28dd00c     	add	sp, sp, #12
  55c444: e8bd80f0     	pop	{r4, r5, r6, r7, pc}
  55c448: b8 86 43 00  	.word	0x004386b8
  55c44c: e4 0a 00 00  	.word	0x00000ae4

; SYMBOL glitch::gui::CGUITTFace::load(char const*)
; FUNCTION 0x0055c450, size=0x3c, file_offset=0x55c450, sha256=cb9ad0fc418f5c9deee86c7330128ebe1a30037d2a507df5a146f05cdd7e15a2
libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

0055c450 <_ZN6glitch3gui10CGUITTFace4loadEPKc>:
  55c450: e59fc02c     	ldr	r12, [pc, #0x2c]        @ 0x55c484 <_ZN6glitch3gui10CGUITTFace4loadEPKc+0x34>
  55c454: e59f202c     	ldr	r2, [pc, #0x2c]         @ 0x55c488 <_ZN6glitch3gui10CGUITTFace4loadEPKc+0x38>
  55c458: e92d4010     	push	{r4, lr}
  55c45c: e08fc00c     	add	r12, pc, r12
  55c460: e79ce002     	ldr	lr, [r12, r2]
  55c464: e2803008     	add	r3, r0, #8
  55c468: e3a02000     	mov	r2, #0
  55c46c: e59e0000     	ldr	r0, [lr]
  55c470: e5900008     	ldr	r0, [r0, #0x8]
  55c474: eb06c114     	bl	0x70c8cc <FT_New_Face>  @ imm = #0x1b0450
  55c478: e2700001     	rsbs	r0, r0, #1
  55c47c: 33a00000     	movlo	r0, #0
  55c480: e8bd8010     	pop	{r4, pc}
  55c484: 34 86 43 00  	.word	0x00438634
  55c488: e4 0a 00 00  	.word	0x00000ae4

; SYMBOL glitch::gui::CGUITTFace::~CGUITTFace() [D1]
; FUNCTION 0x0055c2f8, size=0x5c, file_offset=0x55c2f8, sha256=dd3d338a7ced02c9004ead34fcd68352ded7be6bbb20084f4df7853ab397439b
libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

0055c2f8 <_ZN6glitch3gui10CGUITTFaceD1Ev>:
  55c2f8: e92d4070     	push	{r4, r5, r6, lr}
  55c2fc: e59f4044     	ldr	r4, [pc, #0x44]         @ 0x55c348 <_ZN6glitch3gui10CGUITTFaceD1Ev+0x50>
  55c300: e59f3044     	ldr	r3, [pc, #0x44]         @ 0x55c34c <_ZN6glitch3gui10CGUITTFaceD1Ev+0x54>
  55c304: e1a05000     	mov	r5, r0
  55c308: e08f4004     	add	r4, pc, r4
  55c30c: e7943003     	ldr	r3, [r4, r3]
  55c310: e5900008     	ldr	r0, [r0, #0x8]
  55c314: e3a06000     	mov	r6, #0
  55c318: e2833008     	add	r3, r3, #8
  55c31c: e5853000     	str	r3, [r5]
  55c320: eb06ad35     	bl	0x7077fc <FT_Done_Face> @ imm = #0x1ab4d4
  55c324: e59f3024     	ldr	r3, [pc, #0x24]         @ 0x55c350 <_ZN6glitch3gui10CGUITTFaceD1Ev+0x58>
  55c328: e5856008     	str	r6, [r5, #0x8]
  55c32c: e7944003     	ldr	r4, [r4, r3]
  55c330: e5940000     	ldr	r0, [r4]
  55c334: ebf70492     	bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x23edb8
  55c338: e1500006     	cmp	r0, r6
  55c33c: 15846000     	strne	r6, [r4]
  55c340: e1a00005     	mov	r0, r5
  55c344: e8bd8070     	pop	{r4, r5, r6, pc}
  55c348: 88 87 43 00  	.word	0x00438788
  55c34c: 9c 3d 00 00  	.word	0x00003d9c
  55c350: e4 0a 00 00  	.word	0x00000ae4

; SYMBOL glitch::gui::CGUIEnvironment::getTTFont(char const*, unsigned int)
; FUNCTION 0x0053ada8, size=0x324, file_offset=0x53ada8, sha256=f6cd52588156d4ea4dd0c46734a649dd4f6e6200d7ff79f75f057f418f75160c
libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

0053ada8 <_ZN6glitch3gui15CGUIEnvironment9getTTFontEPKcj>:
  53ada8: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  53adac: e59f6308     	ldr	r6, [pc, #0x308]        @ 0x53b0bc <_ZN6glitch3gui15CGUIEnvironment9getTTFontEPKcj+0x314>
  53adb0: e59f7308     	ldr	r7, [pc, #0x308]        @ 0x53b0c0 <_ZN6glitch3gui15CGUIEnvironment9getTTFontEPKcj+0x318>
  53adb4: e24dd05c     	sub	sp, sp, #92
  53adb8: e08f6006     	add	r6, pc, r6
  53adbc: e7963007     	ldr	r3, [r6, r7]
  53adc0: e28d4038     	add	r4, sp, #56
  53adc4: e1a08001     	mov	r8, r1
  53adc8: e5933000     	ldr	r3, [r3]
  53adcc: e1a0a000     	mov	r10, r0
  53add0: e3a01010     	mov	r1, #16
  53add4: e1a00004     	mov	r0, r4
  53add8: e58d3054     	str	r3, [sp, #0x54]
  53addc: e1a09002     	mov	r9, r2
  53ade0: e58d4048     	str	r4, [sp, #0x48]
  53ade4: e58d404c     	str	r4, [sp, #0x4c]
  53ade8: ebf796ee     	bl	0x3209a8 <_ZNSt4priv12_String_baseIcN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE17_M_allocate_blockEj> @ imm = #-0x21a448
  53adec: e59d3048     	ldr	r3, [sp, #0x48]
  53adf0: e3a05000     	mov	r5, #0
  53adf4: e3580000     	cmp	r8, #0
  53adf8: e5c35000     	strb	r5, [r3]
  53adfc: 0a000063     	beq	0x53af90 <_ZN6glitch3gui15CGUIEnvironment9getTTFontEPKcj+0x1e8> @ imm = #0x18c
  53ae00: e1a00008     	mov	r0, r8
  53ae04: ebf74c12     	bl	0x30de54 <strlen@plt>   @ imm = #-0x22cfb8
  53ae08: e1a01008     	mov	r1, r8
  53ae0c: e0882000     	add	r2, r8, r0
  53ae10: e1a00004     	mov	r0, r4
  53ae14: ebf7975b     	bl	0x320b88 <_ZNSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE9_M_assignEPKcS9_> @ imm = #-0x21a294
  53ae18: e59d304c     	ldr	r3, [sp, #0x4c]
  53ae1c: e59d2048     	ldr	r2, [sp, #0x48]
  53ae20: e1530002     	cmp	r3, r2
  53ae24: 0a00000e     	beq	0x53ae64 <_ZN6glitch3gui15CGUIEnvironment9getTTFontEPKcj+0xbc> @ imm = #0x38
  53ae28: e7d32005     	ldrb	r2, [r3, r5]
  53ae2c: e0833005     	add	r3, r3, r5
  53ae30: e2855001     	add	r5, r5, #1
  53ae34: e6ef1072     	uxtb	r1, r2
  53ae38: e2410041     	sub	r0, r1, #65
  53ae3c: e6ef0070     	uxtb	r0, r0
  53ae40: e3500019     	cmp	r0, #25
  53ae44: 92812020     	addls	r2, r1, #32
  53ae48: 96ef2072     	uxtbls	r2, r2
  53ae4c: e5c32000     	strb	r2, [r3]
  53ae50: e59d304c     	ldr	r3, [sp, #0x4c]
  53ae54: e59d2048     	ldr	r2, [sp, #0x48]
  53ae58: e0632002     	rsb	r2, r3, r2
  53ae5c: e1550002     	cmp	r5, r2
  53ae60: 3afffff0     	blo	0x53ae28 <_ZN6glitch3gui15CGUIEnvironment9getTTFontEPKcj+0x80> @ imm = #-0x40
  53ae64: e28a5e19     	add	r5, r10, #400
  53ae68: e1a00005     	mov	r0, r5
  53ae6c: e1a01004     	mov	r1, r4
  53ae70: ebfff5d5     	bl	0x5385cc <_ZN6glitch4core13binary_searchINS_3gui15CGUIEnvironment5SFaceENS0_10SAllocatorIS4_LNS_6memory13E_MEMORY_HINTE0EEEEEiRKSt6vectorIT_T0_ERKSA_> @ imm = #-0x28ac
  53ae74: e3700001     	cmn	r0, #1
  53ae78: 0a00004f     	beq	0x53afbc <_ZN6glitch3gui15CGUIEnvironment9getTTFontEPKcj+0x214> @ imm = #0x13c
  53ae7c: e59a3190     	ldr	r3, [r10, #0x190]
  53ae80: e3a0201c     	mov	r2, #28
  53ae84: e0203092     	mla	r0, r2, r0, r3
  53ae88: e590b018     	ldr	r11, [r0, #0x18]
  53ae8c: e28d5018     	add	r5, sp, #24
  53ae90: e1a00005     	mov	r0, r5
  53ae94: e3a01010     	mov	r1, #16
  53ae98: e58d5028     	str	r5, [sp, #0x28]
  53ae9c: e58d502c     	str	r5, [sp, #0x2c]
  53aea0: ebf796c0     	bl	0x3209a8 <_ZNSt4priv12_String_baseIcN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE17_M_allocate_blockEj> @ imm = #-0x21a500
  53aea4: e59d3028     	ldr	r3, [sp, #0x28]
  53aea8: e3a02000     	mov	r2, #0
  53aeac: e3580000     	cmp	r8, #0
  53aeb0: e5c32000     	strb	r2, [r3]
  53aeb4: 0a00004f     	beq	0x53aff8 <_ZN6glitch3gui15CGUIEnvironment9getTTFontEPKcj+0x250> @ imm = #0x13c
  53aeb8: e1a00005     	mov	r0, r5
  53aebc: e59d104c     	ldr	r1, [sp, #0x4c]
  53aec0: e59d2048     	ldr	r2, [sp, #0x48]
  53aec4: ebf7972f     	bl	0x320b88 <_ZNSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE9_M_assignEPKcS9_> @ imm = #-0x21a344
  53aec8: e59d204c     	ldr	r2, [sp, #0x4c]
  53aecc: e59d3048     	ldr	r3, [sp, #0x48]
  53aed0: e1520003     	cmp	r2, r3
  53aed4: 0a00000f     	beq	0x53af18 <_ZN6glitch3gui15CGUIEnvironment9getTTFontEPKcj+0x170> @ imm = #0x3c
  53aed8: e3a03000     	mov	r3, #0
  53aedc: e7d21003     	ldrb	r1, [r2, r3]
  53aee0: e0822003     	add	r2, r2, r3
  53aee4: e2833001     	add	r3, r3, #1
  53aee8: e6ef0071     	uxtb	r0, r1
  53aeec: e240c041     	sub	r12, r0, #65
  53aef0: e6efc07c     	uxtb	r12, r12
  53aef4: e35c0019     	cmp	r12, #25
  53aef8: 92801020     	addls	r1, r0, #32
  53aefc: 96ef1071     	uxtbls	r1, r1
  53af00: e5c21000     	strb	r1, [r2]
  53af04: e59d204c     	ldr	r2, [sp, #0x4c]
  53af08: e59d1048     	ldr	r1, [sp, #0x48]
  53af0c: e0621001     	rsb	r1, r2, r1
  53af10: e1530001     	cmp	r3, r1
  53af14: 3afffff0     	blo	0x53aedc <_ZN6glitch3gui15CGUIEnvironment9getTTFontEPKcj+0x134> @ imm = #-0x40
  53af18: e28a8f61     	add	r8, r10, #388
  53af1c: e1a00008     	mov	r0, r8
  53af20: e1a01005     	mov	r1, r5
  53af24: e58d9030     	str	r9, [sp, #0x30]
  53af28: ebfffbc3     	bl	0x539e3c <_ZN6glitch4core13binary_searchINS_3gui15CGUIEnvironment7STTFontENS0_10SAllocatorIS4_LNS_6memory13E_MEMORY_HINTE0EEEEEiRKSt6vectorIT_T0_ERKSA_> @ imm = #-0x10f4
  53af2c: e3700001     	cmn	r0, #1
  53af30: 0a000036     	beq	0x53b010 <_ZN6glitch3gui15CGUIEnvironment9getTTFontEPKcj+0x268> @ imm = #0xd8
  53af34: e59a3184     	ldr	r3, [r10, #0x184]
  53af38: e0830280     	add	r0, r3, r0, lsl #5
  53af3c: e590801c     	ldr	r8, [r0, #0x1c]
  53af40: e59d002c     	ldr	r0, [sp, #0x2c]
  53af44: e1500005     	cmp	r0, r5
  53af48: 0a000002     	beq	0x53af58 <_ZN6glitch3gui15CGUIEnvironment9getTTFontEPKcj+0x1b0> @ imm = #0x8
  53af4c: e3500000     	cmp	r0, #0
  53af50: 0a000000     	beq	0x53af58 <_ZN6glitch3gui15CGUIEnvironment9getTTFontEPKcj+0x1b0> @ imm = #0x0
  53af54: ebf7553d     	bl	0x310450 <_Z10GlitchFreePv> @ imm = #-0x22ab0c
  53af58: e59d004c     	ldr	r0, [sp, #0x4c]
  53af5c: e1500004     	cmp	r0, r4
  53af60: 0a000002     	beq	0x53af70 <_ZN6glitch3gui15CGUIEnvironment9getTTFontEPKcj+0x1c8> @ imm = #0x8
  53af64: e3500000     	cmp	r0, #0
  53af68: 0a000000     	beq	0x53af70 <_ZN6glitch3gui15CGUIEnvironment9getTTFontEPKcj+0x1c8> @ imm = #0x0
  53af6c: ebf75537     	bl	0x310450 <_Z10GlitchFreePv> @ imm = #-0x22ab24
  53af70: e7963007     	ldr	r3, [r6, r7]
  53af74: e59d2054     	ldr	r2, [sp, #0x54]
  53af78: e1a00008     	mov	r0, r8
  53af7c: e5933000     	ldr	r3, [r3]
  53af80: e1520003     	cmp	r2, r3
  53af84: 1a00004b     	bne	0x53b0b8 <_ZN6glitch3gui15CGUIEnvironment9getTTFontEPKcj+0x310> @ imm = #0x12c
  53af88: e28dd05c     	add	sp, sp, #92
  53af8c: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  53af90: e59f112c     	ldr	r1, [pc, #0x12c]        @ 0x53b0c4 <_ZN6glitch3gui15CGUIEnvironment9getTTFontEPKcj+0x31c>
  53af94: e1a00004     	mov	r0, r4
  53af98: e28a5e19     	add	r5, r10, #400
  53af9c: e08f1001     	add	r1, pc, r1
  53afa0: e1a02001     	mov	r2, r1
  53afa4: ebf796f7     	bl	0x320b88 <_ZNSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE9_M_assignEPKcS9_> @ imm = #-0x21a424
  53afa8: e1a00005     	mov	r0, r5
  53afac: e1a01004     	mov	r1, r4
  53afb0: ebfff585     	bl	0x5385cc <_ZN6glitch4core13binary_searchINS_3gui15CGUIEnvironment5SFaceENS0_10SAllocatorIS4_LNS_6memory13E_MEMORY_HINTE0EEEEEiRKSt6vectorIT_T0_ERKSA_> @ imm = #-0x29ec
  53afb4: e3700001     	cmn	r0, #1
  53afb8: 1affffaf     	bne	0x53ae7c <_ZN6glitch3gui15CGUIEnvironment9getTTFontEPKcj+0xd4> @ imm = #-0x144
  53afbc: e3a01000     	mov	r1, #0
  53afc0: e3a0000c     	mov	r0, #12
  53afc4: ebffe478     	bl	0x5341ac <_ZnwjN6glitch6memory13E_MEMORY_HINTE> @ imm = #-0x6e20
  53afc8: e1a0b000     	mov	r11, r0
  53afcc: eb008564     	bl	0x55c564 <_ZN6glitch3gui10CGUITTFaceC1Ev> @ imm = #0x21590
  53afd0: e1a0000b     	mov	r0, r11
  53afd4: e59d104c     	ldr	r1, [sp, #0x4c]
  53afd8: eb00851c     	bl	0x55c450 <_ZN6glitch3gui10CGUITTFace4loadEPKc> @ imm = #0x21470
  53afdc: e2503000     	subs	r3, r0, #0
  53afe0: 0a000030     	beq	0x53b0a8 <_ZN6glitch3gui15CGUIEnvironment9getTTFontEPKcj+0x300> @ imm = #0xc0
  53afe4: e1a00005     	mov	r0, r5
  53afe8: e1a01004     	mov	r1, r4
  53afec: e58db050     	str	r11, [sp, #0x50]
  53aff0: ebfff74d     	bl	0x538d2c <_ZNSt6vectorIN6glitch3gui15CGUIEnvironment5SFaceENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE9push_backERKS3_> @ imm = #-0x22cc
  53aff4: eaffffa4     	b	0x53ae8c <_ZN6glitch3gui15CGUIEnvironment9getTTFontEPKcj+0xe4> @ imm = #-0x170
  53aff8: e59f10c8     	ldr	r1, [pc, #0xc8]         @ 0x53b0c8 <_ZN6glitch3gui15CGUIEnvironment9getTTFontEPKcj+0x320>
  53affc: e1a00005     	mov	r0, r5
  53b000: e08f1001     	add	r1, pc, r1
  53b004: e1a02001     	mov	r2, r1
  53b008: ebf796de     	bl	0x320b88 <_ZNSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE9_M_assignEPKcS9_> @ imm = #-0x21a488
  53b00c: eaffffad     	b	0x53aec8 <_ZN6glitch3gui15CGUIEnvironment9getTTFontEPKcj+0x120> @ imm = #-0x14c
  53b010: e3a01000     	mov	r1, #0
  53b014: e3a00040     	mov	r0, #64
  53b018: ebffe463     	bl	0x5341ac <_ZnwjN6glitch6memory13E_MEMORY_HINTE> @ imm = #-0x6e74
  53b01c: e59a11a8     	ldr	r1, [r10, #0x1a8]
  53b020: e58d000c     	str	r0, [sp, #0xc]
  53b024: eb0082e2     	bl	0x55bbb4 <_ZN6glitch3gui10CGUITTFontC1EPNS_5video12IVideoDriverE> @ imm = #0x20b88
  53b028: e59dc00c     	ldr	r12, [sp, #0xc]
  53b02c: e35c0000     	cmp	r12, #0
  53b030: 0a00001a     	beq	0x53b0a0 <_ZN6glitch3gui15CGUIEnvironment9getTTFontEPKcj+0x2f8> @ imm = #0x68
  53b034: e59c2000     	ldr	r2, [r12]
  53b038: e3a03000     	mov	r3, #0
  53b03c: e1a0100b     	mov	r1, r11
  53b040: e592a06c     	ldr	r10, [r2, #0x6c]
  53b044: e5cd3014     	strb	r3, [sp, #0x14]
  53b048: e5cd3015     	strb	r3, [sp, #0x15]
  53b04c: e5cd3016     	strb	r3, [sp, #0x16]
  53b050: e5cd3017     	strb	r3, [sp, #0x17]
  53b054: e59d0014     	ldr	r0, [sp, #0x14]
  53b058: e58dc00c     	str	r12, [sp, #0xc]
  53b05c: e1a02009     	mov	r2, r9
  53b060: e58d0000     	str	r0, [sp]
  53b064: e1a0000c     	mov	r0, r12
  53b068: e12fff3a     	blx	r10
  53b06c: e2503000     	subs	r3, r0, #0
  53b070: e59dc00c     	ldr	r12, [sp, #0xc]
  53b074: 1a000003     	bne	0x53b088 <_ZN6glitch3gui15CGUIEnvironment9getTTFontEPKcj+0x2e0> @ imm = #0xc
  53b078: e1a0000c     	mov	r0, r12
  53b07c: e1a08003     	mov	r8, r3
  53b080: ebf7893f     	bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x21db04
  53b084: eaffffad     	b	0x53af40 <_ZN6glitch3gui15CGUIEnvironment9getTTFontEPKcj+0x198> @ imm = #-0x14c
  53b088: e1a00008     	mov	r0, r8
  53b08c: e1a01005     	mov	r1, r5
  53b090: e58dc034     	str	r12, [sp, #0x34]
  53b094: e58dc00c     	str	r12, [sp, #0xc]
  53b098: ebfff777     	bl	0x538e7c <_ZNSt6vectorIN6glitch3gui15CGUIEnvironment7STTFontENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE9push_backERKS3_> @ imm = #-0x2224
  53b09c: e59dc00c     	ldr	r12, [sp, #0xc]
  53b0a0: e1a0800c     	mov	r8, r12
  53b0a4: eaffffa5     	b	0x53af40 <_ZN6glitch3gui15CGUIEnvironment9getTTFontEPKcj+0x198> @ imm = #-0x16c
  53b0a8: e1a0000b     	mov	r0, r11
  53b0ac: e1a08003     	mov	r8, r3
  53b0b0: ebf78933     	bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x21db34
  53b0b4: eaffffa7     	b	0x53af58 <_ZN6glitch3gui15CGUIEnvironment9getTTFontEPKcj+0x1b0> @ imm = #-0x164
  53b0b8: ebf74c94     	bl	0x30e310 <__stack_chk_fail@plt> @ imm = #-0x22cdb0
  53b0bc: d8 9c 45 00  	.word	0x00459cd8
  53b0c0: ac 40 00 00  	.word	0x000040ac
  53b0c4: 6c 08 39 00  	.word	0x0039086c
  53b0c8: 08 08 39 00  	.word	0x00390808

; SYMBOL glitch::gui::CGUIEnvironment::getTTFont(glitch::io::IReadFile*, unsigned int)
; FUNCTION 0x0053b0cc, size=0x34c, file_offset=0x53b0cc, sha256=04c87c53983884944c1b69ab2678dff2c91e0c4badc45d8b47a3a8791593d941
libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

0053b0cc <_ZN6glitch3gui15CGUIEnvironment9getTTFontEPNS_2io9IReadFileEj>:
  53b0cc: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  53b0d0: e59f6330     	ldr	r6, [pc, #0x330]        @ 0x53b408 <_ZN6glitch3gui15CGUIEnvironment9getTTFontEPNS_2io9IReadFileEj+0x33c>
  53b0d4: e59f7330     	ldr	r7, [pc, #0x330]        @ 0x53b40c <_ZN6glitch3gui15CGUIEnvironment9getTTFontEPNS_2io9IReadFileEj+0x340>
  53b0d8: e24dd05c     	sub	sp, sp, #92
  53b0dc: e08f6006     	add	r6, pc, r6
  53b0e0: e7963007     	ldr	r3, [r6, r7]
  53b0e4: e28d4038     	add	r4, sp, #56
  53b0e8: e1a08001     	mov	r8, r1
  53b0ec: e5933000     	ldr	r3, [r3]
  53b0f0: e1a0a000     	mov	r10, r0
  53b0f4: e3a01010     	mov	r1, #16
  53b0f8: e1a00004     	mov	r0, r4
  53b0fc: e58d3054     	str	r3, [sp, #0x54]
  53b100: e1a09002     	mov	r9, r2
  53b104: e58d4048     	str	r4, [sp, #0x48]
  53b108: e58d404c     	str	r4, [sp, #0x4c]
  53b10c: ebf79625     	bl	0x3209a8 <_ZNSt4priv12_String_baseIcN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE17_M_allocate_blockEj> @ imm = #-0x21a76c
  53b110: e59d3048     	ldr	r3, [sp, #0x48]
  53b114: e3a05000     	mov	r5, #0
  53b118: e3580000     	cmp	r8, #0
  53b11c: e5c35000     	strb	r5, [r3]
  53b120: 0a00006d     	beq	0x53b2dc <_ZN6glitch3gui15CGUIEnvironment9getTTFontEPNS_2io9IReadFileEj+0x210> @ imm = #0x1b4
  53b124: e5983000     	ldr	r3, [r8]
  53b128: e1a00008     	mov	r0, r8
  53b12c: e1a0e00f     	mov	lr, pc
  53b130: e593f028     	ldr	pc, [r3, #0x28]
  53b134: e1a0b000     	mov	r11, r0
  53b138: ebf74b45     	bl	0x30de54 <strlen@plt>   @ imm = #-0x22d2ec
  53b13c: e1a0100b     	mov	r1, r11
  53b140: e08b2000     	add	r2, r11, r0
  53b144: e1a00004     	mov	r0, r4
  53b148: ebf7968e     	bl	0x320b88 <_ZNSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE9_M_assignEPKcS9_> @ imm = #-0x21a5c8
  53b14c: e59d304c     	ldr	r3, [sp, #0x4c]
  53b150: e59d2048     	ldr	r2, [sp, #0x48]
  53b154: e1530002     	cmp	r3, r2
  53b158: 0a00000e     	beq	0x53b198 <_ZN6glitch3gui15CGUIEnvironment9getTTFontEPNS_2io9IReadFileEj+0xcc> @ imm = #0x38
  53b15c: e7d32005     	ldrb	r2, [r3, r5]
  53b160: e0833005     	add	r3, r3, r5
  53b164: e2855001     	add	r5, r5, #1
  53b168: e6ef1072     	uxtb	r1, r2
  53b16c: e2410041     	sub	r0, r1, #65
  53b170: e6ef0070     	uxtb	r0, r0
  53b174: e3500019     	cmp	r0, #25
  53b178: 92812020     	addls	r2, r1, #32
  53b17c: 96ef2072     	uxtbls	r2, r2
  53b180: e5c32000     	strb	r2, [r3]
  53b184: e59d304c     	ldr	r3, [sp, #0x4c]
  53b188: e59d2048     	ldr	r2, [sp, #0x48]
  53b18c: e0632002     	rsb	r2, r3, r2
  53b190: e1550002     	cmp	r5, r2
  53b194: 3afffff0     	blo	0x53b15c <_ZN6glitch3gui15CGUIEnvironment9getTTFontEPNS_2io9IReadFileEj+0x90> @ imm = #-0x40
  53b198: e28a5e19     	add	r5, r10, #400
  53b19c: e1a00005     	mov	r0, r5
  53b1a0: e1a01004     	mov	r1, r4
  53b1a4: ebfff508     	bl	0x5385cc <_ZN6glitch4core13binary_searchINS_3gui15CGUIEnvironment5SFaceENS0_10SAllocatorIS4_LNS_6memory13E_MEMORY_HINTE0EEEEEiRKSt6vectorIT_T0_ERKSA_> @ imm = #-0x2be0
  53b1a8: e3700001     	cmn	r0, #1
  53b1ac: 0a000055     	beq	0x53b308 <_ZN6glitch3gui15CGUIEnvironment9getTTFontEPNS_2io9IReadFileEj+0x23c> @ imm = #0x154
  53b1b0: e59a3190     	ldr	r3, [r10, #0x190]
  53b1b4: e3a0201c     	mov	r2, #28
  53b1b8: e0203092     	mla	r0, r2, r0, r3
  53b1bc: e590b018     	ldr	r11, [r0, #0x18]
  53b1c0: e28d5018     	add	r5, sp, #24
  53b1c4: e1a00005     	mov	r0, r5
  53b1c8: e3a01010     	mov	r1, #16
  53b1cc: e58d5028     	str	r5, [sp, #0x28]
  53b1d0: e58d502c     	str	r5, [sp, #0x2c]
  53b1d4: ebf795f3     	bl	0x3209a8 <_ZNSt4priv12_String_baseIcN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE17_M_allocate_blockEj> @ imm = #-0x21a834
  53b1d8: e59d3028     	ldr	r3, [sp, #0x28]
  53b1dc: e3a02000     	mov	r2, #0
  53b1e0: e3580000     	cmp	r8, #0
  53b1e4: e5c32000     	strb	r2, [r3]
  53b1e8: 0a000055     	beq	0x53b344 <_ZN6glitch3gui15CGUIEnvironment9getTTFontEPNS_2io9IReadFileEj+0x278> @ imm = #0x154
  53b1ec: e5983000     	ldr	r3, [r8]
  53b1f0: e1a00008     	mov	r0, r8
  53b1f4: e1a0e00f     	mov	lr, pc
  53b1f8: e593f028     	ldr	pc, [r3, #0x28]
  53b1fc: e1a08000     	mov	r8, r0
  53b200: ebf74b13     	bl	0x30de54 <strlen@plt>   @ imm = #-0x22d3b4
  53b204: e1a01008     	mov	r1, r8
  53b208: e0882000     	add	r2, r8, r0
  53b20c: e1a00005     	mov	r0, r5
  53b210: ebf7965c     	bl	0x320b88 <_ZNSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE9_M_assignEPKcS9_> @ imm = #-0x21a690
  53b214: e59d204c     	ldr	r2, [sp, #0x4c]
  53b218: e59d3048     	ldr	r3, [sp, #0x48]
  53b21c: e1530002     	cmp	r3, r2
  53b220: 0a00000f     	beq	0x53b264 <_ZN6glitch3gui15CGUIEnvironment9getTTFontEPNS_2io9IReadFileEj+0x198> @ imm = #0x3c
  53b224: e3a03000     	mov	r3, #0
  53b228: e7d21003     	ldrb	r1, [r2, r3]
  53b22c: e0822003     	add	r2, r2, r3
  53b230: e2833001     	add	r3, r3, #1
  53b234: e6ef0071     	uxtb	r0, r1
  53b238: e240c041     	sub	r12, r0, #65
  53b23c: e6efc07c     	uxtb	r12, r12
  53b240: e35c0019     	cmp	r12, #25
  53b244: 92801020     	addls	r1, r0, #32
  53b248: 96ef1071     	uxtbls	r1, r1
  53b24c: e5c21000     	strb	r1, [r2]
  53b250: e59d204c     	ldr	r2, [sp, #0x4c]
  53b254: e59d1048     	ldr	r1, [sp, #0x48]
  53b258: e0621001     	rsb	r1, r2, r1
  53b25c: e1530001     	cmp	r3, r1
  53b260: 3afffff0     	blo	0x53b228 <_ZN6glitch3gui15CGUIEnvironment9getTTFontEPNS_2io9IReadFileEj+0x15c> @ imm = #-0x40
  53b264: e28a8f61     	add	r8, r10, #388
  53b268: e1a00008     	mov	r0, r8
  53b26c: e1a01005     	mov	r1, r5
  53b270: e58d9030     	str	r9, [sp, #0x30]
  53b274: ebfffaf0     	bl	0x539e3c <_ZN6glitch4core13binary_searchINS_3gui15CGUIEnvironment7STTFontENS0_10SAllocatorIS4_LNS_6memory13E_MEMORY_HINTE0EEEEEiRKSt6vectorIT_T0_ERKSA_> @ imm = #-0x1440
  53b278: e3700001     	cmn	r0, #1
  53b27c: 0a000036     	beq	0x53b35c <_ZN6glitch3gui15CGUIEnvironment9getTTFontEPNS_2io9IReadFileEj+0x290> @ imm = #0xd8
  53b280: e59a3184     	ldr	r3, [r10, #0x184]
  53b284: e0830280     	add	r0, r3, r0, lsl #5
  53b288: e590801c     	ldr	r8, [r0, #0x1c]
  53b28c: e59d002c     	ldr	r0, [sp, #0x2c]
  53b290: e1500005     	cmp	r0, r5
  53b294: 0a000002     	beq	0x53b2a4 <_ZN6glitch3gui15CGUIEnvironment9getTTFontEPNS_2io9IReadFileEj+0x1d8> @ imm = #0x8
  53b298: e3500000     	cmp	r0, #0
  53b29c: 0a000000     	beq	0x53b2a4 <_ZN6glitch3gui15CGUIEnvironment9getTTFontEPNS_2io9IReadFileEj+0x1d8> @ imm = #0x0
  53b2a0: ebf7546a     	bl	0x310450 <_Z10GlitchFreePv> @ imm = #-0x22ae58
  53b2a4: e59d004c     	ldr	r0, [sp, #0x4c]
  53b2a8: e1500004     	cmp	r0, r4
  53b2ac: 0a000002     	beq	0x53b2bc <_ZN6glitch3gui15CGUIEnvironment9getTTFontEPNS_2io9IReadFileEj+0x1f0> @ imm = #0x8
  53b2b0: e3500000     	cmp	r0, #0
  53b2b4: 0a000000     	beq	0x53b2bc <_ZN6glitch3gui15CGUIEnvironment9getTTFontEPNS_2io9IReadFileEj+0x1f0> @ imm = #0x0
  53b2b8: ebf75464     	bl	0x310450 <_Z10GlitchFreePv> @ imm = #-0x22ae70
  53b2bc: e7963007     	ldr	r3, [r6, r7]
  53b2c0: e59d2054     	ldr	r2, [sp, #0x54]
  53b2c4: e1a00008     	mov	r0, r8
  53b2c8: e5933000     	ldr	r3, [r3]
  53b2cc: e1520003     	cmp	r2, r3
  53b2d0: 1a00004b     	bne	0x53b404 <_ZN6glitch3gui15CGUIEnvironment9getTTFontEPNS_2io9IReadFileEj+0x338> @ imm = #0x12c
  53b2d4: e28dd05c     	add	sp, sp, #92
  53b2d8: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  53b2dc: e59f112c     	ldr	r1, [pc, #0x12c]        @ 0x53b410 <_ZN6glitch3gui15CGUIEnvironment9getTTFontEPNS_2io9IReadFileEj+0x344>
  53b2e0: e1a00004     	mov	r0, r4
  53b2e4: e28a5e19     	add	r5, r10, #400
  53b2e8: e08f1001     	add	r1, pc, r1
  53b2ec: e1a02001     	mov	r2, r1
  53b2f0: ebf79624     	bl	0x320b88 <_ZNSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE9_M_assignEPKcS9_> @ imm = #-0x21a770
  53b2f4: e1a00005     	mov	r0, r5
  53b2f8: e1a01004     	mov	r1, r4
  53b2fc: ebfff4b2     	bl	0x5385cc <_ZN6glitch4core13binary_searchINS_3gui15CGUIEnvironment5SFaceENS0_10SAllocatorIS4_LNS_6memory13E_MEMORY_HINTE0EEEEEiRKSt6vectorIT_T0_ERKSA_> @ imm = #-0x2d38
  53b300: e3700001     	cmn	r0, #1
  53b304: 1affffa9     	bne	0x53b1b0 <_ZN6glitch3gui15CGUIEnvironment9getTTFontEPNS_2io9IReadFileEj+0xe4> @ imm = #-0x15c
  53b308: e3a01000     	mov	r1, #0
  53b30c: e3a0000c     	mov	r0, #12
  53b310: ebffe3a5     	bl	0x5341ac <_ZnwjN6glitch6memory13E_MEMORY_HINTE> @ imm = #-0x716c
  53b314: e1a0b000     	mov	r11, r0
  53b318: eb008491     	bl	0x55c564 <_ZN6glitch3gui10CGUITTFaceC1Ev> @ imm = #0x21244
  53b31c: e1a0000b     	mov	r0, r11
  53b320: e1a01008     	mov	r1, r8
  53b324: eb008428     	bl	0x55c3cc <_ZN6glitch3gui10CGUITTFace4loadEPNS_2io9IReadFileE> @ imm = #0x210a0
  53b328: e2503000     	subs	r3, r0, #0
  53b32c: 0a000030     	beq	0x53b3f4 <_ZN6glitch3gui15CGUIEnvironment9getTTFontEPNS_2io9IReadFileEj+0x328> @ imm = #0xc0
  53b330: e1a00005     	mov	r0, r5
  53b334: e1a01004     	mov	r1, r4
  53b338: e58db050     	str	r11, [sp, #0x50]
  53b33c: ebfff67a     	bl	0x538d2c <_ZNSt6vectorIN6glitch3gui15CGUIEnvironment5SFaceENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE9push_backERKS3_> @ imm = #-0x2618
  53b340: eaffff9e     	b	0x53b1c0 <_ZN6glitch3gui15CGUIEnvironment9getTTFontEPNS_2io9IReadFileEj+0xf4> @ imm = #-0x188
  53b344: e59f10c8     	ldr	r1, [pc, #0xc8]         @ 0x53b414 <_ZN6glitch3gui15CGUIEnvironment9getTTFontEPNS_2io9IReadFileEj+0x348>
  53b348: e1a00005     	mov	r0, r5
  53b34c: e08f1001     	add	r1, pc, r1
  53b350: e1a02001     	mov	r2, r1
  53b354: ebf7960b     	bl	0x320b88 <_ZNSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE9_M_assignEPKcS9_> @ imm = #-0x21a7d4
  53b358: eaffffad     	b	0x53b214 <_ZN6glitch3gui15CGUIEnvironment9getTTFontEPNS_2io9IReadFileEj+0x148> @ imm = #-0x14c
  53b35c: e3a01000     	mov	r1, #0
  53b360: e3a00040     	mov	r0, #64
  53b364: ebffe390     	bl	0x5341ac <_ZnwjN6glitch6memory13E_MEMORY_HINTE> @ imm = #-0x71c0
  53b368: e59a11a8     	ldr	r1, [r10, #0x1a8]
  53b36c: e58d000c     	str	r0, [sp, #0xc]
  53b370: eb00820f     	bl	0x55bbb4 <_ZN6glitch3gui10CGUITTFontC1EPNS_5video12IVideoDriverE> @ imm = #0x2083c
  53b374: e59dc00c     	ldr	r12, [sp, #0xc]
  53b378: e35c0000     	cmp	r12, #0
  53b37c: 0a00001a     	beq	0x53b3ec <_ZN6glitch3gui15CGUIEnvironment9getTTFontEPNS_2io9IReadFileEj+0x320> @ imm = #0x68
  53b380: e59c2000     	ldr	r2, [r12]
  53b384: e3a03000     	mov	r3, #0
  53b388: e1a0100b     	mov	r1, r11
  53b38c: e592a06c     	ldr	r10, [r2, #0x6c]
  53b390: e5cd3014     	strb	r3, [sp, #0x14]
  53b394: e5cd3015     	strb	r3, [sp, #0x15]
  53b398: e5cd3016     	strb	r3, [sp, #0x16]
  53b39c: e5cd3017     	strb	r3, [sp, #0x17]
  53b3a0: e59d0014     	ldr	r0, [sp, #0x14]
  53b3a4: e58dc00c     	str	r12, [sp, #0xc]
  53b3a8: e1a02009     	mov	r2, r9
  53b3ac: e58d0000     	str	r0, [sp]
  53b3b0: e1a0000c     	mov	r0, r12
  53b3b4: e12fff3a     	blx	r10
  53b3b8: e2503000     	subs	r3, r0, #0
  53b3bc: e59dc00c     	ldr	r12, [sp, #0xc]
  53b3c0: 1a000003     	bne	0x53b3d4 <_ZN6glitch3gui15CGUIEnvironment9getTTFontEPNS_2io9IReadFileEj+0x308> @ imm = #0xc
  53b3c4: e1a0000c     	mov	r0, r12
  53b3c8: e1a08003     	mov	r8, r3
  53b3cc: ebf7886c     	bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x21de50
  53b3d0: eaffffad     	b	0x53b28c <_ZN6glitch3gui15CGUIEnvironment9getTTFontEPNS_2io9IReadFileEj+0x1c0> @ imm = #-0x14c
  53b3d4: e1a00008     	mov	r0, r8
  53b3d8: e1a01005     	mov	r1, r5
  53b3dc: e58dc034     	str	r12, [sp, #0x34]
  53b3e0: e58dc00c     	str	r12, [sp, #0xc]
  53b3e4: ebfff6a4     	bl	0x538e7c <_ZNSt6vectorIN6glitch3gui15CGUIEnvironment7STTFontENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE9push_backERKS3_> @ imm = #-0x2570
  53b3e8: e59dc00c     	ldr	r12, [sp, #0xc]
  53b3ec: e1a0800c     	mov	r8, r12
  53b3f0: eaffffa5     	b	0x53b28c <_ZN6glitch3gui15CGUIEnvironment9getTTFontEPNS_2io9IReadFileEj+0x1c0> @ imm = #-0x16c
  53b3f4: e1a0000b     	mov	r0, r11
  53b3f8: e1a08003     	mov	r8, r3
  53b3fc: ebf78860     	bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x21de80
  53b400: eaffffa7     	b	0x53b2a4 <_ZN6glitch3gui15CGUIEnvironment9getTTFontEPNS_2io9IReadFileEj+0x1d8> @ imm = #-0x164
  53b404: ebf74bc1     	bl	0x30e310 <__stack_chk_fail@plt> @ imm = #-0x22d0fc
  53b408: b4 99 45 00  	.word	0x004599b4
  53b40c: ac 40 00 00  	.word	0x000040ac
  53b410: 20 05 39 00  	.word	0x00390520
  53b414: bc 04 39 00  	.word	0x003904bc

; SYMBOL glitch::gui::CGUITTFont::attach(glitch::gui::CGUITTFace*, unsigned int, unsigned int, glitch::video::SColor)
; FUNCTION 0x0055e9f0, size=0x150, file_offset=0x55e9f0, sha256=60d45a178f138cab67abce13666e14353e0370c0ebd84485b7fc44e612ebd113
libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

0055e9f0 <_ZN6glitch3gui10CGUITTFont6attachEPNS0_10CGUITTFaceEjjNS_5video6SColorE>:
  55e9f0: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  55e9f4: e1a04000     	mov	r4, r0
  55e9f8: e5900008     	ldr	r0, [r0, #0x8]
  55e9fc: e24dd0bc     	sub	sp, sp, #188
  55ea00: e1a0b001     	mov	r11, r1
  55ea04: e3500000     	cmp	r0, #0
  55ea08: 13510000     	cmpne	r1, #0
  55ea0c: e1a05002     	mov	r5, r2
  55ea10: e1a0a003     	mov	r10, r3
  55ea14: e5dd80e0     	ldrb	r8, [sp, #0xe0]
  55ea18: e5dd70e1     	ldrb	r7, [sp, #0xe1]
  55ea1c: e5dd60e2     	ldrb	r6, [sp, #0xe2]
  55ea20: e5dd90e3     	ldrb	r9, [sp, #0xe3]
  55ea24: 03a00000     	moveq	r0, #0
  55ea28: 0a000042     	beq	0x55eb38 <_ZN6glitch3gui10CGUITTFont6attachEPNS0_10CGUITTFaceEjjNS_5video6SColorE+0x148> @ imm = #0x108
  55ea2c: e5940030     	ldr	r0, [r4, #0x30]
  55ea30: e3500000     	cmp	r0, #0
  55ea34: 0a000000     	beq	0x55ea3c <_ZN6glitch3gui10CGUITTFont6attachEPNS0_10CGUITTFaceEjjNS_5video6SColorE+0x4c> @ imm = #0x0
  55ea38: ebf6fad1     	bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x2414bc
  55ea3c: e584b030     	str	r11, [r4, #0x30]
  55ea40: e59b3004     	ldr	r3, [r11, #0x4]
  55ea44: e28d2060     	add	r2, sp, #96
  55ea48: e58d2004     	str	r2, [sp, #0x4]
  55ea4c: e2833001     	add	r3, r3, #1
  55ea50: e58b3004     	str	r3, [r11, #0x4]
  55ea54: e1a00004     	mov	r0, r4
  55ea58: e5943000     	ldr	r3, [r4]
  55ea5c: e1a0e00f     	mov	lr, pc
  55ea60: e593f060     	ldr	pc, [r3, #0x60]
  55ea64: e5943030     	ldr	r3, [r4, #0x30]
  55ea68: e59d0004     	ldr	r0, [sp, #0x4]
  55ea6c: e28db008     	add	r11, sp, #8
  55ea70: e5933008     	ldr	r3, [r3, #0x8]
  55ea74: e5931010     	ldr	r1, [r3, #0x10]
  55ea78: e58d1000     	str	r1, [sp]
  55ea7c: ebfff40b     	bl	0x55bab0 <_ZN6glitch3gui11CGUITTGlyphC1Ev> @ imm = #-0x2fd4
  55ea80: e89d0006     	ldm	sp, {r1, r2}
  55ea84: e284000c     	add	r0, r4, #12
  55ea88: ebffffc0     	bl	0x55e990 <_ZNSt6vectorIN6glitch3gui11CGUITTGlyphENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEE6resizeEjRKS2_> @ imm = #-0x100
  55ea8c: e59d0004     	ldr	r0, [sp, #0x4]
  55ea90: ebfff714     	bl	0x55c6e8 <_ZN6glitch3gui11CGUITTGlyphD1Ev> @ imm = #-0x23b0
  55ea94: e5943030     	ldr	r3, [r4, #0x30]
  55ea98: e1a0000b     	mov	r0, r11
  55ea9c: e5933008     	ldr	r3, [r3, #0x8]
  55eaa0: e5931010     	ldr	r1, [r3, #0x10]
  55eaa4: e58d1000     	str	r1, [sp]
  55eaa8: ebfff400     	bl	0x55bab0 <_ZN6glitch3gui11CGUITTGlyphC1Ev> @ imm = #-0x3000
  55eaac: e59d1000     	ldr	r1, [sp]
  55eab0: e1a0200b     	mov	r2, r11
  55eab4: e2840018     	add	r0, r4, #24
  55eab8: ebffffb4     	bl	0x55e990 <_ZNSt6vectorIN6glitch3gui11CGUITTGlyphENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEE6resizeEjRKS2_> @ imm = #-0x130
  55eabc: e1a0000b     	mov	r0, r11
  55eac0: ebfff708     	bl	0x55c6e8 <_ZN6glitch3gui11CGUITTGlyphD1Ev> @ imm = #-0x23e0
  55eac4: e5943030     	ldr	r3, [r4, #0x30]
  55eac8: e5933008     	ldr	r3, [r3, #0x8]
  55eacc: e5933010     	ldr	r3, [r3, #0x10]
  55ead0: e3530000     	cmp	r3, #0
  55ead4: da000016     	ble	0x55eb34 <_ZN6glitch3gui10CGUITTFont6attachEPNS0_10CGUITTFaceEjjNS_5video6SColorE+0x144> @ imm = #0x58
  55ead8: e3a02000     	mov	r2, #0
  55eadc: e1a01002     	mov	r1, r2
  55eae0: e1a0c002     	mov	r12, r2
  55eae4: e594000c     	ldr	r0, [r4, #0xc]
  55eae8: e5943018     	ldr	r3, [r4, #0x18]
  55eaec: e2811001     	add	r1, r1, #1
  55eaf0: e0800002     	add	r0, r0, r2
  55eaf4: e0833002     	add	r3, r3, r2
  55eaf8: e5c0c008     	strb	r12, [r0, #0x8]
  55eafc: e580500c     	str	r5, [r0, #0xc]
  55eb00: e5c3c008     	strb	r12, [r3, #0x8]
  55eb04: e5c38054     	strb	r8, [r3, #0x54]
  55eb08: e583500c     	str	r5, [r3, #0xc]
  55eb0c: e583a050     	str	r10, [r3, #0x50]
  55eb10: e5c39057     	strb	r9, [r3, #0x57]
  55eb14: e5c36056     	strb	r6, [r3, #0x56]
  55eb18: e5c37055     	strb	r7, [r3, #0x55]
  55eb1c: e5943030     	ldr	r3, [r4, #0x30]
  55eb20: e2822058     	add	r2, r2, #88
  55eb24: e5933008     	ldr	r3, [r3, #0x8]
  55eb28: e5933010     	ldr	r3, [r3, #0x10]
  55eb2c: e1530001     	cmp	r3, r1
  55eb30: caffffeb     	bgt	0x55eae4 <_ZN6glitch3gui10CGUITTFont6attachEPNS0_10CGUITTFaceEjjNS_5video6SColorE+0xf4> @ imm = #-0x54
  55eb34: e3a00001     	mov	r0, #1
  55eb38: e28dd0bc     	add	sp, sp, #188
  55eb3c: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}

; SYMBOL glitch::gui::CGUITTGlyph::cache(unsigned int, glitch::gui::CGUITTFace*, glitch::video::IVideoDriver*, bool)
; FUNCTION 0x0055cbfc, size=0x61c, file_offset=0x55cbfc, sha256=a157a50c97d8e7cb100e895e5cafc1e40b84878e635c6aab1cbdbd3d5e2b7c9e
libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

0055cbfc <_ZN6glitch3gui11CGUITTGlyph5cacheEjPNS0_10CGUITTFaceEPNS_5video12IVideoDriverEb>:
  55cbfc: e59fc600     	ldr	r12, [pc, #0x600]       @ 0x55d204 <_ZN6glitch3gui11CGUITTGlyph5cacheEjPNS0_10CGUITTFaceEPNS_5video12IVideoDriverEb+0x608>
  55cc00: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  55cc04: e59fe5fc     	ldr	lr, [pc, #0x5fc]        @ 0x55d208 <_ZN6glitch3gui11CGUITTGlyph5cacheEjPNS0_10CGUITTFaceEPNS_5video12IVideoDriverEb+0x60c>
  55cc08: e08fc00c     	add	r12, pc, r12
  55cc0c: e1a04000     	mov	r4, r0
  55cc10: e79c000e     	ldr	r0, [r12, lr]
  55cc14: e24dd0ec     	sub	sp, sp, #236
  55cc18: e58dc014     	str	r12, [sp, #0x14]
  55cc1c: e5900000     	ldr	r0, [r0]
  55cc20: e58de020     	str	lr, [sp, #0x20]
  55cc24: e58d1018     	str	r1, [sp, #0x18]
  55cc28: e58d3024     	str	r3, [sp, #0x24]
  55cc2c: e58d00e4     	str	r0, [sp, #0xe4]
  55cc30: e5925008     	ldr	r5, [r2, #0x8]
  55cc34: e3a01000     	mov	r1, #0
  55cc38: e594200c     	ldr	r2, [r4, #0xc]
  55cc3c: e1a00005     	mov	r0, r5
  55cc40: e5dd7110     	ldrb	r7, [sp, #0x110]
  55cc44: eb06b6ec     	bl	0x70a7fc <FT_Set_Pixel_Sizes> @ imm = #0x1adbb0
  55cc48: e59d1018     	ldr	r1, [sp, #0x18]
  55cc4c: e1a00005     	mov	r0, r5
  55cc50: e3a0200a     	mov	r2, #10
  55cc54: eb06b161     	bl	0x7091e0 <FT_Load_Glyph> @ imm = #0x1ac584
  55cc58: e2501000     	subs	r1, r0, #0
  55cc5c: 1a000005     	bne	0x55cc78 <_ZN6glitch3gui11CGUITTGlyph5cacheEjPNS0_10CGUITTFaceEPNS_5video12IVideoDriverEb+0x7c> @ imm = #0x14
  55cc60: e5956054     	ldr	r6, [r5, #0x54]
  55cc64: e307346c     	movw	r3, #0x746c
  55cc68: e3463f75     	movt	r3, #0x6f75
  55cc6c: e5962048     	ldr	r2, [r6, #0x48]
  55cc70: e1520003     	cmp	r2, r3
  55cc74: 0a0000ad     	beq	0x55cf30 <_ZN6glitch3gui11CGUITTGlyph5cacheEjPNS0_10CGUITTFaceEPNS_5video12IVideoDriverEb+0x334> @ imm = #0x2b4
  55cc78: e1a00005     	mov	r0, r5
  55cc7c: e59d1018     	ldr	r1, [sp, #0x18]
  55cc80: e301200e     	movw	r2, #0x100e
  55cc84: eb06b155     	bl	0x7091e0 <FT_Load_Glyph> @ imm = #0x1ac554
  55cc88: e3500000     	cmp	r0, #0
  55cc8c: 0a000091     	beq	0x55ced8 <_ZN6glitch3gui11CGUITTGlyph5cacheEjPNS0_10CGUITTFaceEPNS_5video12IVideoDriverEb+0x2dc> @ imm = #0x244
  55cc90: e5955054     	ldr	r5, [r5, #0x54]
  55cc94: e3570000     	cmp	r7, #0
  55cc98: 0285604c     	addeq	r6, r5, #76
  55cc9c: 1a000096     	bne	0x55cefc <_ZN6glitch3gui11CGUITTGlyph5cacheEjPNS0_10CGUITTFaceEPNS_5video12IVideoDriverEb+0x300> @ imm = #0x258
  55cca0: e28dc02c     	add	r12, sp, #44
  55cca4: e8b6000f     	ldm	r6!, {r0, r1, r2, r3}
  55cca8: e8ac000f     	stm	r12!, {r0, r1, r2, r3}
  55ccac: e8960003     	ldm	r6, {r0, r1}
  55ccb0: e59d702c     	ldr	r7, [sp, #0x2c]
  55ccb4: e88c0003     	stm	r12, {r0, r1}
  55ccb8: e5953068     	ldr	r3, [r5, #0x68]
  55ccbc: e59d6030     	ldr	r6, [sp, #0x30]
  55ccc0: e5843028     	str	r3, [r4, #0x28]
  55ccc4: e5952064     	ldr	r2, [r5, #0x64]
  55ccc8: e3a03001     	mov	r3, #1
  55cccc: e5843038     	str	r3, [r4, #0x38]
  55ccd0: e584202c     	str	r2, [r4, #0x2c]
  55ccd4: e584303c     	str	r3, [r4, #0x3c]
  55ccd8: e5846030     	str	r6, [r4, #0x30]
  55ccdc: e5847034     	str	r7, [r4, #0x34]
  55cce0: e3560001     	cmp	r6, #1
  55cce4: e59d8038     	ldr	r8, [sp, #0x38]
  55cce8: e59d5034     	ldr	r5, [sp, #0x34]
  55ccec: 9a000003     	bls	0x55cd00 <_ZN6glitch3gui11CGUITTGlyph5cacheEjPNS0_10CGUITTFaceEPNS_5video12IVideoDriverEb+0x104> @ imm = #0xc
  55ccf0: e1a03083     	lsl	r3, r3, #1
  55ccf4: e1560003     	cmp	r6, r3
  55ccf8: 8afffffc     	bhi	0x55ccf0 <_ZN6glitch3gui11CGUITTGlyph5cacheEjPNS0_10CGUITTFaceEPNS_5video12IVideoDriverEb+0xf4> @ imm = #-0x10
  55ccfc: e5843038     	str	r3, [r4, #0x38]
  55cd00: e594303c     	ldr	r3, [r4, #0x3c]
  55cd04: e5942034     	ldr	r2, [r4, #0x34]
  55cd08: e1530002     	cmp	r3, r2
  55cd0c: 2a000003     	bhs	0x55cd20 <_ZN6glitch3gui11CGUITTGlyph5cacheEjPNS0_10CGUITTFaceEPNS_5video12IVideoDriverEb+0x124> @ imm = #0xc
  55cd10: e1a03083     	lsl	r3, r3, #1
  55cd14: e1530002     	cmp	r3, r2
  55cd18: 3afffffc     	blo	0x55cd10 <_ZN6glitch3gui11CGUITTGlyph5cacheEjPNS0_10CGUITTFaceEPNS_5video12IVideoDriverEb+0x114> @ imm = #-0x10
  55cd1c: e584303c     	str	r3, [r4, #0x3c]
  55cd20: e5940038     	ldr	r0, [r4, #0x38]
  55cd24: e3a01000     	mov	r1, #0
  55cd28: e1500003     	cmp	r0, r3
  55cd2c: 9594003c     	ldrls	r0, [r4, #0x3c]
  55cd30: 81a03000     	movhi	r3, r0
  55cd34: 8584003c     	strhi	r0, [r4, #0x3c]
  55cd38: e0000390     	mul	r0, r0, r3
  55cd3c: 95843038     	strls	r3, [r4, #0x38]
  55cd40: e1a00080     	lsl	r0, r0, #1
  55cd44: ebff5d17     	bl	0x5341a8 <_ZnajN6glitch6memory13E_MEMORY_HINTE> @ imm = #-0x28ba4
  55cd48: e58d001c     	str	r0, [sp, #0x1c]
  55cd4c: e5943038     	ldr	r3, [r4, #0x38]
  55cd50: e594203c     	ldr	r2, [r4, #0x3c]
  55cd54: e3a01000     	mov	r1, #0
  55cd58: e0020392     	mul	r2, r2, r3
  55cd5c: e1a02082     	lsl	r2, r2, #1
  55cd60: ebf6c5be     	bl	0x30e460 <memset@plt>   @ imm = #-0x24e908
  55cd64: e594300c     	ldr	r3, [r4, #0xc]
  55cd68: e3570000     	cmp	r7, #0
  55cd6c: e0673003     	rsb	r3, r7, r3
  55cd70: e5843040     	str	r3, [r4, #0x40]
  55cd74: da000019     	ble	0x55cde0 <_ZN6glitch3gui11CGUITTGlyph5cacheEjPNS0_10CGUITTFaceEPNS_5video12IVideoDriverEb+0x1e4> @ imm = #0x64
  55cd78: e59db01c     	ldr	r11, [sp, #0x1c]
  55cd7c: e3a09000     	mov	r9, #0
  55cd80: e1a0a009     	mov	r10, r9
  55cd84: e1a0e00b     	mov	lr, r11
  55cd88: e3a0c080     	mov	r12, #128
  55cd8c: e3560000     	cmp	r6, #0
  55cd90: c3a03000     	movgt	r3, #0
  55cd94: c0880009     	addgt	r0, r8, r9
  55cd98: da000008     	ble	0x55cdc0 <_ZN6glitch3gui11CGUITTGlyph5cacheEjPNS0_10CGUITTFaceEPNS_5video12IVideoDriverEb+0x1c4> @ imm = #0x20
  55cd9c: e7d021c3     	ldrb	r2, [r0, r3, asr #3]
  55cda0: e2031007     	and	r1, r3, #7
  55cda4: e012115c     	ands	r1, r2, r12, asr r1
  55cda8: 11a02083     	lslne	r2, r3, #1
  55cdac: 13e01000     	mvnne	r1, #0
  55cdb0: e2833001     	add	r3, r3, #1
  55cdb4: 118e10b2     	strhne	r1, [lr, r2]
  55cdb8: e1530006     	cmp	r3, r6
  55cdbc: 1afffff6     	bne	0x55cd9c <_ZN6glitch3gui11CGUITTGlyph5cacheEjPNS0_10CGUITTFaceEPNS_5video12IVideoDriverEb+0x1a0> @ imm = #-0x28
  55cdc0: e28aa001     	add	r10, r10, #1
  55cdc4: e15a0007     	cmp	r10, r7
  55cdc8: e0899005     	add	r9, r9, r5
  55cdcc: e5943038     	ldr	r3, [r4, #0x38]
  55cdd0: 0a000002     	beq	0x55cde0 <_ZN6glitch3gui11CGUITTGlyph5cacheEjPNS0_10CGUITTFaceEPNS_5video12IVideoDriverEb+0x1e4> @ imm = #0x8
  55cdd4: e08bb083     	add	r11, r11, r3, lsl #1
  55cdd8: e1a0e00b     	mov	lr, r11
  55cddc: eaffffea     	b	0x55cd8c <_ZN6glitch3gui11CGUITTGlyph5cacheEjPNS0_10CGUITTFaceEPNS_5video12IVideoDriverEb+0x190> @ imm = #-0x58
  55cde0: e59f1424     	ldr	r1, [pc, #0x424]        @ 0x55d20c <_ZN6glitch3gui11CGUITTGlyph5cacheEjPNS0_10CGUITTFaceEPNS_5video12IVideoDriverEb+0x610>
  55cde4: e28d7064     	add	r7, sp, #100
  55cde8: e59d2018     	ldr	r2, [sp, #0x18]
  55cdec: e08f1001     	add	r1, pc, r1
  55cdf0: e1a00007     	mov	r0, r7
  55cdf4: ebf6c73a     	bl	0x30eae4 <sprintf@plt>  @ imm = #-0x24e318
  55cdf8: e594c03c     	ldr	r12, [r4, #0x3c]
  55cdfc: e59d2024     	ldr	r2, [sp, #0x24]
  55ce00: e594e038     	ldr	lr, [r4, #0x38]
  55ce04: e28d805c     	add	r8, sp, #92
  55ce08: e59250e0     	ldr	r5, [r2, #0xe0]
  55ce0c: e58dc048     	str	r12, [sp, #0x48]
  55ce10: e3a0c001     	mov	r12, #1
  55ce14: e58dc008     	str	r12, [sp, #0x8]
  55ce18: e59dc01c     	ldr	r12, [sp, #0x1c]
  55ce1c: e3a06000     	mov	r6, #0
  55ce20: e1a00008     	mov	r0, r8
  55ce24: e1a01005     	mov	r1, r5
  55ce28: e3a02008     	mov	r2, #8
  55ce2c: e28d3044     	add	r3, sp, #68
  55ce30: e58de044     	str	lr, [sp, #0x44]
  55ce34: e58dc000     	str	r12, [sp]
  55ce38: e58d6004     	str	r6, [sp, #0x4]
  55ce3c: eb022e63     	bl	0x5e87d0 <_ZN6glitch5video15CTextureManager19createImageFromDataENS0_14E_PIXEL_FORMATERKNS_4core11dimension2dIiEEPvbb> @ imm = #0x8b98c
  55ce40: e1a02007     	mov	r2, r7
  55ce44: e1a03008     	mov	r3, r8
  55ce48: e28d0058     	add	r0, sp, #88
  55ce4c: e1a01005     	mov	r1, r5
  55ce50: e58d6004     	str	r6, [sp, #0x4]
  55ce54: e58d6000     	str	r6, [sp]
  55ce58: eb023f11     	bl	0x5ecaa4 <_ZN6glitch5video15CTextureManager10addTextureEPKcRKN5boost13intrusive_ptrINS0_6CImageEEEbNS0_16E_TEXTURE_LAYOUTE> @ imm = #0x8fc44
  55ce5c: e59d3058     	ldr	r3, [sp, #0x58]
  55ce60: e1530006     	cmp	r3, r6
  55ce64: 15932004     	ldrne	r2, [r3, #0x4]
  55ce68: 12822001     	addne	r2, r2, #1
  55ce6c: 15832004     	strne	r2, [r3, #0x4]
  55ce70: e5940048     	ldr	r0, [r4, #0x48]
  55ce74: e5843048     	str	r3, [r4, #0x48]
  55ce78: e3500000     	cmp	r0, #0
  55ce7c: 0a000000     	beq	0x55ce84 <_ZN6glitch3gui11CGUITTGlyph5cacheEjPNS0_10CGUITTFaceEPNS_5video12IVideoDriverEb+0x288> @ imm = #0x0
  55ce80: ebf701bf     	bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x23f904
  55ce84: e59d0058     	ldr	r0, [sp, #0x58]
  55ce88: e3500000     	cmp	r0, #0
  55ce8c: 0a000000     	beq	0x55ce94 <_ZN6glitch3gui11CGUITTGlyph5cacheEjPNS0_10CGUITTFaceEPNS_5video12IVideoDriverEb+0x298> @ imm = #0x0
  55ce90: ebf701bb     	bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x23f914
  55ce94: e3a03000     	mov	r3, #0
  55ce98: e5cd3057     	strb	r3, [sp, #0x57]
  55ce9c: e5cd3054     	strb	r3, [sp, #0x54]
  55cea0: e5cd3055     	strb	r3, [sp, #0x55]
  55cea4: e5cd3056     	strb	r3, [sp, #0x56]
  55cea8: e1a00005     	mov	r0, r5
  55ceac: e2841048     	add	r1, r4, #72
  55ceb0: e59d2054     	ldr	r2, [sp, #0x54]
  55ceb4: eb023c34     	bl	0x5ebf8c <_ZNK6glitch5video15CTextureManager19makeColorKeyTextureERKN5boost13intrusive_ptrINS0_8ITextureEEENS0_6SColorE> @ imm = #0x8f0d0
  55ceb8: e59d001c     	ldr	r0, [sp, #0x1c]
  55cebc: e3500000     	cmp	r0, #0
  55cec0: 0a000000     	beq	0x55cec8 <_ZN6glitch3gui11CGUITTGlyph5cacheEjPNS0_10CGUITTFaceEPNS_5video12IVideoDriverEb+0x2cc> @ imm = #0x0
  55cec4: ebf6c47b     	bl	0x30e0b8 <_ZdaPv@plt>   @ imm = #-0x24ee14
  55cec8: e59d005c     	ldr	r0, [sp, #0x5c]
  55cecc: e3500000     	cmp	r0, #0
  55ced0: 0a000000     	beq	0x55ced8 <_ZN6glitch3gui11CGUITTGlyph5cacheEjPNS0_10CGUITTFaceEPNS_5video12IVideoDriverEb+0x2dc> @ imm = #0x0
  55ced4: ebf701aa     	bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x23f958
  55ced8: e59d2014     	ldr	r2, [sp, #0x14]
  55cedc: e59d1020     	ldr	r1, [sp, #0x20]
  55cee0: e7923001     	ldr	r3, [r2, r1]
  55cee4: e59d20e4     	ldr	r2, [sp, #0xe4]
  55cee8: e5933000     	ldr	r3, [r3]
  55ceec: e1520003     	cmp	r2, r3
  55cef0: 1a0000c2     	bne	0x55d200 <_ZN6glitch3gui11CGUITTGlyph5cacheEjPNS0_10CGUITTFaceEPNS_5video12IVideoDriverEb+0x604> @ imm = #0x308
  55cef4: e28dd0ec     	add	sp, sp, #236
  55cef8: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  55cefc: e1a00005     	mov	r0, r5
  55cf00: eb06ca76     	bl	0x70f8e0 <FT_GlyphSlot_Own_Bitmap> @ imm = #0x1b29d8
  55cf04: e59f3304     	ldr	r3, [pc, #0x304]        @ 0x55d210 <_ZN6glitch3gui11CGUITTGlyph5cacheEjPNS0_10CGUITTFaceEPNS_5video12IVideoDriverEb+0x614>
  55cf08: e59dc014     	ldr	r12, [sp, #0x14]
  55cf0c: e285604c     	add	r6, r5, #76
  55cf10: e3a02008     	mov	r2, #8
  55cf14: e79c0003     	ldr	r0, [r12, r3]
  55cf18: e1a01006     	mov	r1, r6
  55cf1c: e1a03002     	mov	r3, r2
  55cf20: e5900000     	ldr	r0, [r0]
  55cf24: e5900008     	ldr	r0, [r0, #0x8]
  55cf28: eb06bf8d     	bl	0x70cd64 <FT_Bitmap_Embolden> @ imm = #0x1afe34
  55cf2c: eaffff5b     	b	0x55cca0 <_ZN6glitch3gui11CGUITTGlyph5cacheEjPNS0_10CGUITTFaceEPNS_5video12IVideoDriverEb+0xa4> @ imm = #-0x294
  55cf30: e1a00006     	mov	r0, r6
  55cf34: eb06a950     	bl	0x70747c <FT_Render_Glyph> @ imm = #0x1aa540
  55cf38: e3500000     	cmp	r0, #0
  55cf3c: 1affff4d     	bne	0x55cc78 <_ZN6glitch3gui11CGUITTGlyph5cacheEjPNS0_10CGUITTFaceEPNS_5video12IVideoDriverEb+0x7c> @ imm = #-0x2cc
  55cf40: e3570000     	cmp	r7, #0
  55cf44: 0286804c     	addeq	r8, r6, #76
  55cf48: 1a00009f     	bne	0x55d1cc <_ZN6glitch3gui11CGUITTGlyph5cacheEjPNS0_10CGUITTFaceEPNS_5video12IVideoDriverEb+0x5d0> @ imm = #0x27c
  55cf4c: e28dc02c     	add	r12, sp, #44
  55cf50: e8b8000f     	ldm	r8!, {r0, r1, r2, r3}
  55cf54: e8ac000f     	stm	r12!, {r0, r1, r2, r3}
  55cf58: e5981004     	ldr	r1, [r8, #0x4]
  55cf5c: e594304c     	ldr	r3, [r4, #0x4c]
  55cf60: e5980000     	ldr	r0, [r8]
  55cf64: e58c1004     	str	r1, [r12, #0x4]
  55cf68: e59d1038     	ldr	r1, [sp, #0x38]
  55cf6c: e3530000     	cmp	r3, #0
  55cf70: e58c0000     	str	r0, [r12]
  55cf74: e58d101c     	str	r1, [sp, #0x1c]
  55cf78: e59d8030     	ldr	r8, [sp, #0x30]
  55cf7c: e59d902c     	ldr	r9, [sp, #0x2c]
  55cf80: 0a000001     	beq	0x55cf8c <_ZN6glitch3gui11CGUITTGlyph5cacheEjPNS0_10CGUITTFaceEPNS_5video12IVideoDriverEb+0x390> @ imm = #0x4
  55cf84: e1a00003     	mov	r0, r3
  55cf88: ebf6c44a     	bl	0x30e0b8 <_ZdaPv@plt>   @ imm = #-0x24eed8
  55cf8c: e00a0998     	mul	r10, r8, r9
  55cf90: e3a01000     	mov	r1, #0
  55cf94: e1a0000a     	mov	r0, r10
  55cf98: ebff5c82     	bl	0x5341a8 <_ZnajN6glitch6memory13E_MEMORY_HINTE> @ imm = #-0x28df8
  55cf9c: e584004c     	str	r0, [r4, #0x4c]
  55cfa0: e1a0200a     	mov	r2, r10
  55cfa4: e59d101c     	ldr	r1, [sp, #0x1c]
  55cfa8: ebf6c62e     	bl	0x30e868 <memcpy@plt>   @ imm = #-0x24e748
  55cfac: e5962068     	ldr	r2, [r6, #0x68]
  55cfb0: e3a03001     	mov	r3, #1
  55cfb4: e3580000     	cmp	r8, #0
  55cfb8: e5842010     	str	r2, [r4, #0x10]
  55cfbc: e5962064     	ldr	r2, [r6, #0x64]
  55cfc0: e5843020     	str	r3, [r4, #0x20]
  55cfc4: e5843024     	str	r3, [r4, #0x24]
  55cfc8: e5842014     	str	r2, [r4, #0x14]
  55cfcc: e5848018     	str	r8, [r4, #0x18]
  55cfd0: e584901c     	str	r9, [r4, #0x1c]
  55cfd4: 0a000003     	beq	0x55cfe8 <_ZN6glitch3gui11CGUITTGlyph5cacheEjPNS0_10CGUITTFaceEPNS_5video12IVideoDriverEb+0x3ec> @ imm = #0xc
  55cfd8: e1a03083     	lsl	r3, r3, #1
  55cfdc: e1580003     	cmp	r8, r3
  55cfe0: 2afffffc     	bhs	0x55cfd8 <_ZN6glitch3gui11CGUITTGlyph5cacheEjPNS0_10CGUITTFaceEPNS_5video12IVideoDriverEb+0x3dc> @ imm = #-0x10
  55cfe4: e5843020     	str	r3, [r4, #0x20]
  55cfe8: e5942024     	ldr	r2, [r4, #0x24]
  55cfec: e594301c     	ldr	r3, [r4, #0x1c]
  55cff0: e1520003     	cmp	r2, r3
  55cff4: 8a000003     	bhi	0x55d008 <_ZN6glitch3gui11CGUITTGlyph5cacheEjPNS0_10CGUITTFaceEPNS_5video12IVideoDriverEb+0x40c> @ imm = #0xc
  55cff8: e1a02082     	lsl	r2, r2, #1
  55cffc: e1520003     	cmp	r2, r3
  55d000: 9afffffc     	bls	0x55cff8 <_ZN6glitch3gui11CGUITTGlyph5cacheEjPNS0_10CGUITTFaceEPNS_5video12IVideoDriverEb+0x3fc> @ imm = #-0x10
  55d004: e5842024     	str	r2, [r4, #0x24]
  55d008: e5943020     	ldr	r3, [r4, #0x20]
  55d00c: e3a01000     	mov	r1, #0
  55d010: e1530002     	cmp	r3, r2
  55d014: 85843024     	strhi	r3, [r4, #0x24]
  55d018: 91a03002     	movls	r3, r2
  55d01c: 95842020     	strls	r2, [r4, #0x20]
  55d020: e5942024     	ldr	r2, [r4, #0x24]
  55d024: e0030392     	mul	r3, r2, r3
  55d028: e1a00103     	lsl	r0, r3, #2
  55d02c: ebff5c5d     	bl	0x5341a8 <_ZnajN6glitch6memory13E_MEMORY_HINTE> @ imm = #-0x28e8c
  55d030: e5943020     	ldr	r3, [r4, #0x20]
  55d034: e5942024     	ldr	r2, [r4, #0x24]
  55d038: e3a01000     	mov	r1, #0
  55d03c: e1a0b000     	mov	r11, r0
  55d040: e0020392     	mul	r2, r2, r3
  55d044: e1a02102     	lsl	r2, r2, #2
  55d048: ebf6c504     	bl	0x30e460 <memset@plt>   @ imm = #-0x24ebf0
  55d04c: e594300c     	ldr	r3, [r4, #0xc]
  55d050: e59d0024     	ldr	r0, [sp, #0x24]
  55d054: e0693003     	rsb	r3, r9, r3
  55d058: e5843040     	str	r3, [r4, #0x40]
  55d05c: e59d2024     	ldr	r2, [sp, #0x24]
  55d060: e5923000     	ldr	r3, [r2]
  55d064: e1a0e00f     	mov	lr, pc
  55d068: e593f05c     	ldr	pc, [r3, #0x5c]
  55d06c: e3590000     	cmp	r9, #0
  55d070: da00001e     	ble	0x55d0f0 <_ZN6glitch3gui11CGUITTGlyph5cacheEjPNS0_10CGUITTFaceEPNS_5video12IVideoDriverEb+0x4f4> @ imm = #0x78
  55d074: e59dc01c     	ldr	r12, [sp, #0x1c]
  55d078: e1a0a00b     	mov	r10, r11
  55d07c: e1a0e00b     	mov	lr, r11
  55d080: e3a06000     	mov	r6, #0
  55d084: e3580000     	cmp	r8, #0
  55d088: c3a02000     	movgt	r2, #0
  55d08c: c1a03002     	movgt	r3, r2
  55d090: da00000f     	ble	0x55d0d4 <_ZN6glitch3gui11CGUITTGlyph5cacheEjPNS0_10CGUITTFaceEPNS_5video12IVideoDriverEb+0x4d8> @ imm = #0x3c
  55d094: e7dc1003     	ldrb	r1, [r12, r3]
  55d098: e3510000     	cmp	r1, #0
  55d09c: 078e1002     	streq	r1, [lr, r2]
  55d0a0: 0a000006     	beq	0x55d0c0 <_ZN6glitch3gui11CGUITTGlyph5cacheEjPNS0_10CGUITTFaceEPNS_5video12IVideoDriverEb+0x4c4> @ imm = #0x18
  55d0a4: e3500080     	cmp	r0, #128
  55d0a8: 11a01c01     	lslne	r1, r1, #24
  55d0ac: 00811401     	addeq	r1, r1, r1, lsl #8
  55d0b0: 11e01c21     	mvnne	r1, r1, lsr #24
  55d0b4: 00811801     	addeq	r1, r1, r1, lsl #16
  55d0b8: 11e01c01     	mvnne	r1, r1, lsl #24
  55d0bc: e78e1002     	str	r1, [lr, r2]
  55d0c0: e2833001     	add	r3, r3, #1
  55d0c4: e1530008     	cmp	r3, r8
  55d0c8: e2822004     	add	r2, r2, #4
  55d0cc: 1afffff0     	bne	0x55d094 <_ZN6glitch3gui11CGUITTGlyph5cacheEjPNS0_10CGUITTFaceEPNS_5video12IVideoDriverEb+0x498> @ imm = #-0x40
  55d0d0: e08cc008     	add	r12, r12, r8
  55d0d4: e2866001     	add	r6, r6, #1
  55d0d8: e1560009     	cmp	r6, r9
  55d0dc: e5943020     	ldr	r3, [r4, #0x20]
  55d0e0: 0a000002     	beq	0x55d0f0 <_ZN6glitch3gui11CGUITTGlyph5cacheEjPNS0_10CGUITTFaceEPNS_5video12IVideoDriverEb+0x4f4> @ imm = #0x8
  55d0e4: e08aa103     	add	r10, r10, r3, lsl #2
  55d0e8: e1a0e00a     	mov	lr, r10
  55d0ec: eaffffe4     	b	0x55d084 <_ZN6glitch3gui11CGUITTGlyph5cacheEjPNS0_10CGUITTFaceEPNS_5video12IVideoDriverEb+0x488> @ imm = #-0x70
  55d0f0: e59f111c     	ldr	r1, [pc, #0x11c]        @ 0x55d214 <_ZN6glitch3gui11CGUITTGlyph5cacheEjPNS0_10CGUITTFaceEPNS_5video12IVideoDriverEb+0x618>
  55d0f4: e28da064     	add	r10, sp, #100
  55d0f8: e59d2018     	ldr	r2, [sp, #0x18]
  55d0fc: e08f1001     	add	r1, pc, r1
  55d100: e1a0000a     	mov	r0, r10
  55d104: ebf6c676     	bl	0x30eae4 <sprintf@plt>  @ imm = #-0x24e628
  55d108: e59d3024     	ldr	r3, [sp, #0x24]
  55d10c: e594c024     	ldr	r12, [r4, #0x24]
  55d110: e594e020     	ldr	lr, [r4, #0x20]
  55d114: e59380e0     	ldr	r8, [r3, #0xe0]
  55d118: e28d905c     	add	r9, sp, #92
  55d11c: e3a06000     	mov	r6, #0
  55d120: e1a00009     	mov	r0, r9
  55d124: e1a01008     	mov	r1, r8
  55d128: e3a0200c     	mov	r2, #12
  55d12c: e28d304c     	add	r3, sp, #76
  55d130: e58dc050     	str	r12, [sp, #0x50]
  55d134: e3a0c001     	mov	r12, #1
  55d138: e58de04c     	str	lr, [sp, #0x4c]
  55d13c: e58dc008     	str	r12, [sp, #0x8]
  55d140: e58db000     	str	r11, [sp]
  55d144: e58d6004     	str	r6, [sp, #0x4]
  55d148: eb022da0     	bl	0x5e87d0 <_ZN6glitch5video15CTextureManager19createImageFromDataENS0_14E_PIXEL_FORMATERKNS_4core11dimension2dIiEEPvbb> @ imm = #0x8b680
  55d14c: e1a0200a     	mov	r2, r10
  55d150: e1a03009     	mov	r3, r9
  55d154: e28d0060     	add	r0, sp, #96
  55d158: e1a01008     	mov	r1, r8
  55d15c: e58d6004     	str	r6, [sp, #0x4]
  55d160: e58d6000     	str	r6, [sp]
  55d164: eb023e4e     	bl	0x5ecaa4 <_ZN6glitch5video15CTextureManager10addTextureEPKcRKN5boost13intrusive_ptrINS0_6CImageEEEbNS0_16E_TEXTURE_LAYOUTE> @ imm = #0x8f938
  55d168: e59d3060     	ldr	r3, [sp, #0x60]
  55d16c: e1530006     	cmp	r3, r6
  55d170: 15932004     	ldrne	r2, [r3, #0x4]
  55d174: 12822001     	addne	r2, r2, #1
  55d178: 15832004     	strne	r2, [r3, #0x4]
  55d17c: e5940044     	ldr	r0, [r4, #0x44]
  55d180: e5843044     	str	r3, [r4, #0x44]
  55d184: e3500000     	cmp	r0, #0
  55d188: 0a000000     	beq	0x55d190 <_ZN6glitch3gui11CGUITTGlyph5cacheEjPNS0_10CGUITTFaceEPNS_5video12IVideoDriverEb+0x594> @ imm = #0x0
  55d18c: ebf700fc     	bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x23fc10
  55d190: e59d0060     	ldr	r0, [sp, #0x60]
  55d194: e3500000     	cmp	r0, #0
  55d198: 0a000000     	beq	0x55d1a0 <_ZN6glitch3gui11CGUITTGlyph5cacheEjPNS0_10CGUITTFaceEPNS_5video12IVideoDriverEb+0x5a4> @ imm = #0x0
  55d19c: ebf700f8     	bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x23fc20
  55d1a0: e35b0000     	cmp	r11, #0
  55d1a4: 0a000001     	beq	0x55d1b0 <_ZN6glitch3gui11CGUITTGlyph5cacheEjPNS0_10CGUITTFaceEPNS_5video12IVideoDriverEb+0x5b4> @ imm = #0x4
  55d1a8: e1a0000b     	mov	r0, r11
  55d1ac: ebf6c3c1     	bl	0x30e0b8 <_ZdaPv@plt>   @ imm = #-0x24f0fc
  55d1b0: e59d005c     	ldr	r0, [sp, #0x5c]
  55d1b4: e3a03001     	mov	r3, #1
  55d1b8: e5c43008     	strb	r3, [r4, #0x8]
  55d1bc: e3500000     	cmp	r0, #0
  55d1c0: 0afffeac     	beq	0x55cc78 <_ZN6glitch3gui11CGUITTGlyph5cacheEjPNS0_10CGUITTFaceEPNS_5video12IVideoDriverEb+0x7c> @ imm = #-0x550
  55d1c4: ebf700ee     	bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x23fc48
  55d1c8: eafffeaa     	b	0x55cc78 <_ZN6glitch3gui11CGUITTGlyph5cacheEjPNS0_10CGUITTFaceEPNS_5video12IVideoDriverEb+0x7c> @ imm = #-0x558
  55d1cc: e1a00006     	mov	r0, r6
  55d1d0: eb06c9c2     	bl	0x70f8e0 <FT_GlyphSlot_Own_Bitmap> @ imm = #0x1b2708
  55d1d4: e59d0014     	ldr	r0, [sp, #0x14]
  55d1d8: e59f3030     	ldr	r3, [pc, #0x30]         @ 0x55d210 <_ZN6glitch3gui11CGUITTGlyph5cacheEjPNS0_10CGUITTFaceEPNS_5video12IVideoDriverEb+0x614>
  55d1dc: e5942050     	ldr	r2, [r4, #0x50]
  55d1e0: e286804c     	add	r8, r6, #76
  55d1e4: e7903003     	ldr	r3, [r0, r3]
  55d1e8: e1a01008     	mov	r1, r8
  55d1ec: e5930000     	ldr	r0, [r3]
  55d1f0: e1a03002     	mov	r3, r2
  55d1f4: e5900008     	ldr	r0, [r0, #0x8]
  55d1f8: eb06bed9     	bl	0x70cd64 <FT_Bitmap_Embolden> @ imm = #0x1afb64
  55d1fc: eaffff52     	b	0x55cf4c <_ZN6glitch3gui11CGUITTGlyph5cacheEjPNS0_10CGUITTFaceEPNS_5video12IVideoDriverEb+0x350> @ imm = #-0x2b8
  55d200: ebf6c442     	bl	0x30e310 <__stack_chk_fail@plt> @ imm = #-0x24eef8
  55d204: 88 7e 43 00  	.word	0x00437e88
  55d208: ac 40 00 00  	.word	0x000040ac
  55d20c: b4 1e 38 00  	.word	0x00381eb4
  55d210: e4 0a 00 00  	.word	0x00000ae4
  55d214: 94 1b 38 00  	.word	0x00381b94

; SYMBOL glitch::gui::CGUITTFont::getGlyphByChar(wchar_t) const
; FUNCTION 0x0055dbd8, size=0x98, file_offset=0x55dbd8, sha256=f3cd38a66a63ed1a20b5be54e5abb7cd3fd52b664abca7967a0458ecea33ca95
libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

0055dbd8 <_ZNK6glitch3gui10CGUITTFont14getGlyphByCharEw>:
  55dbd8: e92d4070     	push	{r4, r5, r6, lr}
  55dbdc: e5903030     	ldr	r3, [r0, #0x30]
  55dbe0: e24dd008     	sub	sp, sp, #8
  55dbe4: e1a04000     	mov	r4, r0
  55dbe8: e5930008     	ldr	r0, [r3, #0x8]
  55dbec: eb069d3e     	bl	0x7050ec <FT_Get_Char_Index> @ imm = #0x1a74f8
  55dbf0: e2505000     	subs	r5, r0, #0
  55dbf4: 0a00001a     	beq	0x55dc64 <_ZNK6glitch3gui10CGUITTFont14getGlyphByCharEw+0x8c> @ imm = #0x68
  55dbf8: e2453001     	sub	r3, r5, #1
  55dbfc: e3a06058     	mov	r6, #88
  55dc00: e0060396     	mul	r6, r6, r3
  55dc04: e594000c     	ldr	r0, [r4, #0xc]
  55dc08: e0800006     	add	r0, r0, r6
  55dc0c: e5d0c008     	ldrb	r12, [r0, #0x8]
  55dc10: e35c0000     	cmp	r12, #0
  55dc14: 1a000004     	bne	0x55dc2c <_ZNK6glitch3gui10CGUITTFont14getGlyphByCharEw+0x54> @ imm = #0x10
  55dc18: e5942030     	ldr	r2, [r4, #0x30]
  55dc1c: e5943008     	ldr	r3, [r4, #0x8]
  55dc20: e1a01005     	mov	r1, r5
  55dc24: e58dc000     	str	r12, [sp]
  55dc28: ebfffbf3     	bl	0x55cbfc <_ZN6glitch3gui11CGUITTGlyph5cacheEjPNS0_10CGUITTFaceEPNS_5video12IVideoDriverEb> @ imm = #-0x1034
  55dc2c: e5940018     	ldr	r0, [r4, #0x18]
  55dc30: e0800006     	add	r0, r0, r6
  55dc34: e5903050     	ldr	r3, [r0, #0x50]
  55dc38: e3530000     	cmp	r3, #0
  55dc3c: 0a000008     	beq	0x55dc64 <_ZNK6glitch3gui10CGUITTFont14getGlyphByCharEw+0x8c> @ imm = #0x20
  55dc40: e5d03008     	ldrb	r3, [r0, #0x8]
  55dc44: e3530000     	cmp	r3, #0
  55dc48: 1a000005     	bne	0x55dc64 <_ZNK6glitch3gui10CGUITTFont14getGlyphByCharEw+0x8c> @ imm = #0x14
  55dc4c: e5943008     	ldr	r3, [r4, #0x8]
  55dc50: e5942030     	ldr	r2, [r4, #0x30]
  55dc54: e3a0c001     	mov	r12, #1
  55dc58: e1a01005     	mov	r1, r5
  55dc5c: e58dc000     	str	r12, [sp]
  55dc60: ebfffbe5     	bl	0x55cbfc <_ZN6glitch3gui11CGUITTGlyph5cacheEjPNS0_10CGUITTFaceEPNS_5video12IVideoDriverEb> @ imm = #-0x106c
  55dc64: e1a00005     	mov	r0, r5
  55dc68: e28dd008     	add	sp, sp, #8
  55dc6c: e8bd8070     	pop	{r4, r5, r6, pc}

; SYMBOL glitch::gui::CGUITTFont::drawGlyph(glitch::gui::CGUITTGlyph const*, glitch::core::position2d<int>, glitch::core::rect<int> const*, glitch::video::SColor)
; FUNCTION 0x0055bfec, size=0x124, file_offset=0x55bfec, sha256=bef4b0eaa9ad4b5826dc958ba01ec491ddf48994fe2a83f9c085f1255408d6bb
libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

0055bfec <_ZN6glitch3gui10CGUITTFont9drawGlyphEPKNS0_11CGUITTGlyphENS_4core10position2dIiEEPKNS5_4rectIiEENS_5video6SColorE>:
  55bfec: e92d41f0     	push	{r4, r5, r6, r7, r8, lr}
  55bff0: e5d0c035     	ldrb	r12, [r0, #0x35]
  55bff4: e24dd040     	sub	sp, sp, #64
  55bff8: e1a04003     	mov	r4, r3
  55bffc: e35c0000     	cmp	r12, #0
  55c000: 03e03000     	mvneq	r3, #0
  55c004: 05cd305b     	strbeq	r3, [sp, #0x5b]
  55c008: e591c048     	ldr	r12, [r1, #0x48]
  55c00c: e35c0000     	cmp	r12, #0
  55c010: 0a00001e     	beq	0x55c090 <_ZN6glitch3gui10CGUITTFont9drawGlyphEPKNS0_11CGUITTGlyphENS_4core10position2dIiEEPKNS5_4rectIiEENS_5video6SColorE+0xa4> @ imm = #0x78
  55c014: e591c03c     	ldr	r12, [r1, #0x3c]
  55c018: e5927004     	ldr	r7, [r2, #0x4]
  55c01c: e5915028     	ldr	r5, [r1, #0x28]
  55c020: e24cc001     	sub	r12, r12, #1
  55c024: e591302c     	ldr	r3, [r1, #0x2c]
  55c028: e5926000     	ldr	r6, [r2]
  55c02c: e591e038     	ldr	lr, [r1, #0x38]
  55c030: e591200c     	ldr	r2, [r1, #0xc]
  55c034: e5900008     	ldr	r0, [r0, #0x8]
  55c038: e58dc02c     	str	r12, [sp, #0x2c]
  55c03c: e59dc058     	ldr	r12, [sp, #0x58]
  55c040: e0655007     	rsb	r5, r5, r7
  55c044: e0855002     	add	r5, r5, r2
  55c048: e0866003     	add	r6, r6, r3
  55c04c: e3a07000     	mov	r7, #0
  55c050: e24ee001     	sub	lr, lr, #1
  55c054: e58dc004     	str	r12, [sp, #0x4]
  55c058: e2811048     	add	r1, r1, #72
  55c05c: e3a0c001     	mov	r12, #1
  55c060: e28d2038     	add	r2, sp, #56
  55c064: e28d3020     	add	r3, sp, #32
  55c068: e58d6038     	str	r6, [sp, #0x38]
  55c06c: e58d503c     	str	r5, [sp, #0x3c]
  55c070: e58d7024     	str	r7, [sp, #0x24]
  55c074: e58de028     	str	lr, [sp, #0x28]
  55c078: e58d4000     	str	r4, [sp]
  55c07c: e58dc008     	str	r12, [sp, #0x8]
  55c080: e58d7020     	str	r7, [sp, #0x20]
  55c084: eb010e7d     	bl	0x59fa80 <_ZN6glitch5video9C2DDriver11draw2DImageEPNS0_12IVideoDriverERKN5boost13intrusive_ptrINS0_8ITextureEEERKNS_4core10position2dIiEERKNSA_4rectIiEEPSH_NS0_6SColorEb> @ imm = #0x439f4
  55c088: e28dd040     	add	sp, sp, #64
  55c08c: e8bd81f0     	pop	{r4, r5, r6, r7, r8, pc}
  55c090: e5913044     	ldr	r3, [r1, #0x44]
  55c094: e3530000     	cmp	r3, #0
  55c098: 0afffffa     	beq	0x55c088 <_ZN6glitch3gui10CGUITTFont9drawGlyphEPKNS0_11CGUITTGlyphENS_4core10position2dIiEEPKNS5_4rectIiEENS_5video6SColorE+0x9c> @ imm = #-0x18
  55c09c: e591e024     	ldr	lr, [r1, #0x24]
  55c0a0: e5928004     	ldr	r8, [r2, #0x4]
  55c0a4: e5915010     	ldr	r5, [r1, #0x10]
  55c0a8: e24ee001     	sub	lr, lr, #1
  55c0ac: e5913014     	ldr	r3, [r1, #0x14]
  55c0b0: e5926000     	ldr	r6, [r2]
  55c0b4: e5917020     	ldr	r7, [r1, #0x20]
  55c0b8: e591200c     	ldr	r2, [r1, #0xc]
  55c0bc: e5900008     	ldr	r0, [r0, #0x8]
  55c0c0: e58de01c     	str	lr, [sp, #0x1c]
  55c0c4: e59de058     	ldr	lr, [sp, #0x58]
  55c0c8: e0655008     	rsb	r5, r5, r8
  55c0cc: e0855002     	add	r5, r5, r2
  55c0d0: e0866003     	add	r6, r6, r3
  55c0d4: e2477001     	sub	r7, r7, #1
  55c0d8: e58de004     	str	lr, [sp, #0x4]
  55c0dc: e2811044     	add	r1, r1, #68
  55c0e0: e3a0e001     	mov	lr, #1
  55c0e4: e28d2030     	add	r2, sp, #48
  55c0e8: e28d3010     	add	r3, sp, #16
  55c0ec: e58d6030     	str	r6, [sp, #0x30]
  55c0f0: e58d5034     	str	r5, [sp, #0x34]
  55c0f4: e58dc014     	str	r12, [sp, #0x14]
  55c0f8: e58d7018     	str	r7, [sp, #0x18]
  55c0fc: e58d4000     	str	r4, [sp]
  55c100: e58de008     	str	lr, [sp, #0x8]
  55c104: e58dc010     	str	r12, [sp, #0x10]
  55c108: eb010e5c     	bl	0x59fa80 <_ZN6glitch5video9C2DDriver11draw2DImageEPNS0_12IVideoDriverERKN5boost13intrusive_ptrINS0_8ITextureEEERKNS_4core10position2dIiEERKNSA_4rectIiEEPSH_NS0_6SColorEb> @ imm = #0x43970
  55c10c: eaffffdd     	b	0x55c088 <_ZN6glitch3gui10CGUITTFont9drawGlyphEPKNS0_11CGUITTGlyphENS_4core10position2dIiEEPKNS5_4rectIiEENS_5video6SColorE+0x9c> @ imm = #-0x8c

; SYMBOL glitch::gui::CGUITTFont::draw(wchar_t const*, glitch::core::rect<int> const&, glitch::video::SColor, bool, bool, glitch::core::rect<int> const*)
; FUNCTION 0x0055e020, size=0x2d0, file_offset=0x55e020, sha256=2f0ae7e46b176dc87f5cd770d76646a5ea5a8f687e3385a4ed1427a0001a86f7
libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

0055e020 <_ZN6glitch3gui10CGUITTFont4drawEPKwRKNS_4core4rectIiEENS_5video6SColorEbbPS7_>:
  55e020: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  55e024: e1a04000     	mov	r4, r0
  55e028: e5900008     	ldr	r0, [r0, #0x8]
  55e02c: e24dd09c     	sub	sp, sp, #156
  55e030: e1a05001     	mov	r5, r1
  55e034: e3500000     	cmp	r0, #0
  55e038: e5dd10c4     	ldrb	r1, [sp, #0xc4]
  55e03c: e5dd00c0     	ldrb	r0, [sp, #0xc0]
  55e040: e58d302c     	str	r3, [sp, #0x2c]
  55e044: e1a0a002     	mov	r10, r2
  55e048: e59d80c8     	ldr	r8, [sp, #0xc8]
  55e04c: e58d0018     	str	r0, [sp, #0x18]
  55e050: e58d101c     	str	r1, [sp, #0x1c]
  55e054: 0a000053     	beq	0x55e1a8 <_ZN6glitch3gui10CGUITTFont4drawEPKwRKNS_4core4rectIiEENS_5video6SColorEbbPS7_+0x188> @ imm = #0x14c
  55e058: e28d9034     	add	r9, sp, #52
  55e05c: e5943000     	ldr	r3, [r4]
  55e060: e28d008c     	add	r0, sp, #140
  55e064: e1a01004     	mov	r1, r4
  55e068: e1a02005     	mov	r2, r5
  55e06c: e58d9014     	str	r9, [sp, #0x14]
  55e070: e1a0e00f     	mov	lr, pc
  55e074: e593f01c     	ldr	pc, [r3, #0x1c]
  55e078: e59dc090     	ldr	r12, [sp, #0x90]
  55e07c: e59de08c     	ldr	lr, [sp, #0x8c]
  55e080: e1a01005     	mov	r1, r5
  55e084: e58dc024     	str	r12, [sp, #0x24]
  55e088: e58de020     	str	lr, [sp, #0x20]
  55e08c: e59a3004     	ldr	r3, [r10, #0x4]
  55e090: e59d0014     	ldr	r0, [sp, #0x14]
  55e094: e28d2094     	add	r2, sp, #148
  55e098: e59a6000     	ldr	r6, [r10]
  55e09c: e58d3010     	str	r3, [sp, #0x10]
  55e0a0: ebf71f95     	bl	0x325efc <_ZNSbIwSt11char_traitsIwEN6glitch4core10SAllocatorIwLNS1_6memory13E_MEMORY_HINTE0EEEEC1EPKwRKS6_> @ imm = #-0x2381ac
  55e0a4: e5943018     	ldr	r3, [r4, #0x18]
  55e0a8: e5933050     	ldr	r3, [r3, #0x50]
  55e0ac: e3530000     	cmp	r3, #0
  55e0b0: 1a00003e     	bne	0x55e1b0 <_ZN6glitch3gui10CGUITTFont4drawEPKwRKNS_4core4rectIiEENS_5video6SColorEbbPS7_+0x190> @ imm = #0xf8
  55e0b4: e59d3078     	ldr	r3, [sp, #0x78]
  55e0b8: e5931000     	ldr	r1, [r3]
  55e0bc: e59dc018     	ldr	r12, [sp, #0x18]
  55e0c0: e89a0240     	ldm	r10, {r6, r9}
  55e0c4: e35c0000     	cmp	r12, #0
  55e0c8: 0a000005     	beq	0x55e0e4 <_ZN6glitch3gui10CGUITTFont4drawEPKwRKNS_4core4rectIiEENS_5video6SColorEbbPS7_+0xc4> @ imm = #0x14
  55e0cc: e59a2008     	ldr	r2, [r10, #0x8]
  55e0d0: e59d0020     	ldr	r0, [sp, #0x20]
  55e0d4: e0662002     	rsb	r2, r6, r2
  55e0d8: e0602002     	rsb	r2, r0, r2
  55e0dc: e0822fa2     	add	r2, r2, r2, lsr #31
  55e0e0: e08660c2     	add	r6, r6, r2, asr #1
  55e0e4: e59d201c     	ldr	r2, [sp, #0x1c]
  55e0e8: e3520000     	cmp	r2, #0
  55e0ec: 0a000005     	beq	0x55e108 <_ZN6glitch3gui10CGUITTFont4drawEPKwRKNS_4core4rectIiEENS_5video6SColorEbbPS7_+0xe8> @ imm = #0x14
  55e0f0: e59a200c     	ldr	r2, [r10, #0xc]
  55e0f4: e59da024     	ldr	r10, [sp, #0x24]
  55e0f8: e0692002     	rsb	r2, r9, r2
  55e0fc: e06a2002     	rsb	r2, r10, r2
  55e100: e0822fa2     	add	r2, r2, r2, lsr #31
  55e104: e08990c2     	add	r9, r9, r2, asr #1
  55e108: e3510000     	cmp	r1, #0
  55e10c: 0a00001e     	beq	0x55e18c <_ZN6glitch3gui10CGUITTFont4drawEPKwRKNS_4core4rectIiEENS_5video6SColorEbbPS7_+0x16c> @ imm = #0x78
  55e110: e3a05004     	mov	r5, #4
  55e114: e3a07000     	mov	r7, #0
  55e118: e3a0b058     	mov	r11, #88
  55e11c: e28da07c     	add	r10, sp, #124
  55e120: e1a00004     	mov	r0, r4
  55e124: ebfffeab     	bl	0x55dbd8 <_ZNK6glitch3gui10CGUITTFont14getGlyphByCharEw> @ imm = #-0x554
  55e128: e2501000     	subs	r1, r0, #0
  55e12c: e2411001     	sub	r1, r1, #1
  55e130: e1a00004     	mov	r0, r4
  55e134: e1a0200a     	mov	r2, r10
  55e138: e1a03008     	mov	r3, r8
  55e13c: 0a000006     	beq	0x55e15c <_ZN6glitch3gui10CGUITTFont4drawEPKwRKNS_4core4rectIiEENS_5video6SColorEbbPS7_+0x13c> @ imm = #0x18
  55e140: e594c00c     	ldr	r12, [r4, #0xc]
  55e144: e58d607c     	str	r6, [sp, #0x7c]
  55e148: e58d9080     	str	r9, [sp, #0x80]
  55e14c: e021c19b     	mla	r1, r11, r1, r12
  55e150: e59dc02c     	ldr	r12, [sp, #0x2c]
  55e154: e58dc000     	str	r12, [sp]
  55e158: ebfff7a3     	bl	0x55bfec <_ZN6glitch3gui10CGUITTFont9drawGlyphEPKNS0_11CGUITTGlyphENS_4core10position2dIiEEPKNS5_4rectIiEENS_5video6SColorE> @ imm = #-0x2174
  55e15c: e59d3078     	ldr	r3, [sp, #0x78]
  55e160: e1a00004     	mov	r0, r4
  55e164: e7931007     	ldr	r1, [r3, r7]
  55e168: ebfffc50     	bl	0x55d2b0 <_ZNK6glitch3gui10CGUITTFont21getWidthFromCharacterEj> @ imm = #-0xec0
  55e16c: e59d3078     	ldr	r3, [sp, #0x78]
  55e170: e2852004     	add	r2, r5, #4
  55e174: e1a07005     	mov	r7, r5
  55e178: e7931005     	ldr	r1, [r3, r5]
  55e17c: e0866000     	add	r6, r6, r0
  55e180: e1a05002     	mov	r5, r2
  55e184: e3510000     	cmp	r1, #0
  55e188: 1affffe4     	bne	0x55e120 <_ZN6glitch3gui10CGUITTFont4drawEPKwRKNS_4core4rectIiEENS_5video6SColorEbbPS7_+0x100> @ imm = #-0x70
  55e18c: e59dc014     	ldr	r12, [sp, #0x14]
  55e190: e153000c     	cmp	r3, r12
  55e194: 0a000003     	beq	0x55e1a8 <_ZN6glitch3gui10CGUITTFont4drawEPKwRKNS_4core4rectIiEENS_5video6SColorEbbPS7_+0x188> @ imm = #0xc
  55e198: e3530000     	cmp	r3, #0
  55e19c: 0a000001     	beq	0x55e1a8 <_ZN6glitch3gui10CGUITTFont4drawEPKwRKNS_4core4rectIiEENS_5video6SColorEbbPS7_+0x188> @ imm = #0x4
  55e1a0: e1a00003     	mov	r0, r3
  55e1a4: ebf6c8a9     	bl	0x310450 <_Z10GlitchFreePv> @ imm = #-0x24dd5c
  55e1a8: e28dd09c     	add	sp, sp, #156
  55e1ac: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  55e1b0: e59d9018     	ldr	r9, [sp, #0x18]
  55e1b4: e3590000     	cmp	r9, #0
  55e1b8: 0a000006     	beq	0x55e1d8 <_ZN6glitch3gui10CGUITTFont4drawEPKwRKNS_4core4rectIiEENS_5video6SColorEbbPS7_+0x1b8> @ imm = #0x18
  55e1bc: e59a2008     	ldr	r2, [r10, #0x8]
  55e1c0: e59a3000     	ldr	r3, [r10]
  55e1c4: e59dc020     	ldr	r12, [sp, #0x20]
  55e1c8: e0633002     	rsb	r3, r3, r2
  55e1cc: e06c3003     	rsb	r3, r12, r3
  55e1d0: e0833fa3     	add	r3, r3, r3, lsr #31
  55e1d4: e08660c3     	add	r6, r6, r3, asr #1
  55e1d8: e59d001c     	ldr	r0, [sp, #0x1c]
  55e1dc: e3500000     	cmp	r0, #0
  55e1e0: 1a000038     	bne	0x55e2c8 <_ZN6glitch3gui10CGUITTFont4drawEPKwRKNS_4core4rectIiEENS_5video6SColorEbbPS7_+0x2a8> @ imm = #0xe0
  55e1e4: e59d3078     	ldr	r3, [sp, #0x78]
  55e1e8: e5931000     	ldr	r1, [r3]
  55e1ec: e3510000     	cmp	r1, #0
  55e1f0: 0affffb1     	beq	0x55e0bc <_ZN6glitch3gui10CGUITTFont4drawEPKwRKNS_4core4rectIiEENS_5video6SColorEbbPS7_+0x9c> @ imm = #-0x13c
  55e1f4: e28d3084     	add	r3, sp, #132
  55e1f8: e3a05004     	mov	r5, #4
  55e1fc: e3a07000     	mov	r7, #0
  55e200: e58da028     	str	r10, [sp, #0x28]
  55e204: e1a0b003     	mov	r11, r3
  55e208: e1a00004     	mov	r0, r4
  55e20c: ebfffe71     	bl	0x55dbd8 <_ZNK6glitch3gui10CGUITTFont14getGlyphByCharEw> @ imm = #-0x63c
  55e210: e2501000     	subs	r1, r0, #0
  55e214: e3a03058     	mov	r3, #88
  55e218: e2411001     	sub	r1, r1, #1
  55e21c: e0010193     	mul	r1, r3, r1
  55e220: e1a00004     	mov	r0, r4
  55e224: e1a0200b     	mov	r2, r11
  55e228: e1a03008     	mov	r3, r8
  55e22c: 0a000016     	beq	0x55e28c <_ZN6glitch3gui10CGUITTFont4drawEPKwRKNS_4core4rectIiEENS_5video6SColorEbbPS7_+0x26c> @ imm = #0x58
  55e230: e594e00c     	ldr	lr, [r4, #0xc]
  55e234: e594c018     	ldr	r12, [r4, #0x18]
  55e238: e08cc001     	add	r12, r12, r1
  55e23c: e08e1001     	add	r1, lr, r1
  55e240: e5919018     	ldr	r9, [r1, #0x18]
  55e244: e58d9008     	str	r9, [sp, #0x8]
  55e248: e59c901c     	ldr	r9, [r12, #0x1c]
  55e24c: e591e01c     	ldr	lr, [r1, #0x1c]
  55e250: e1a0100c     	mov	r1, r12
  55e254: e06ee009     	rsb	lr, lr, r9
  55e258: e58de00c     	str	lr, [sp, #0xc]
  55e25c: e59ca018     	ldr	r10, [r12, #0x18]
  55e260: e59d9008     	ldr	r9, [sp, #0x8]
  55e264: e069e00a     	rsb	lr, r9, r10
  55e268: e046a0ae     	sub	r10, r6, lr, lsr #1
  55e26c: e59d900c     	ldr	r9, [sp, #0xc]
  55e270: e59de010     	ldr	lr, [sp, #0x10]
  55e274: e58da084     	str	r10, [sp, #0x84]
  55e278: e04ee0a9     	sub	lr, lr, r9, lsr #1
  55e27c: e58de088     	str	lr, [sp, #0x88]
  55e280: e59cc054     	ldr	r12, [r12, #0x54]
  55e284: e58dc000     	str	r12, [sp]
  55e288: ebfff757     	bl	0x55bfec <_ZN6glitch3gui10CGUITTFont9drawGlyphEPKNS0_11CGUITTGlyphENS_4core10position2dIiEEPKNS5_4rectIiEENS_5video6SColorE> @ imm = #-0x22a4
  55e28c: e59d3078     	ldr	r3, [sp, #0x78]
  55e290: e1a00004     	mov	r0, r4
  55e294: e7931007     	ldr	r1, [r3, r7]
  55e298: ebfffc04     	bl	0x55d2b0 <_ZNK6glitch3gui10CGUITTFont21getWidthFromCharacterEj> @ imm = #-0xff0
  55e29c: e59d3078     	ldr	r3, [sp, #0x78]
  55e2a0: e2852004     	add	r2, r5, #4
  55e2a4: e1a07005     	mov	r7, r5
  55e2a8: e7931005     	ldr	r1, [r3, r5]
  55e2ac: e0866000     	add	r6, r6, r0
  55e2b0: e1a05002     	mov	r5, r2
  55e2b4: e3510000     	cmp	r1, #0
  55e2b8: 1affffd2     	bne	0x55e208 <_ZN6glitch3gui10CGUITTFont4drawEPKwRKNS_4core4rectIiEENS_5video6SColorEbbPS7_+0x1e8> @ imm = #-0xb8
  55e2bc: e59da028     	ldr	r10, [sp, #0x28]
  55e2c0: e5931000     	ldr	r1, [r3]
  55e2c4: eaffff7c     	b	0x55e0bc <_ZN6glitch3gui10CGUITTFont4drawEPKwRKNS_4core4rectIiEENS_5video6SColorEbbPS7_+0x9c> @ imm = #-0x210
  55e2c8: e59a200c     	ldr	r2, [r10, #0xc]
  55e2cc: e59a3004     	ldr	r3, [r10, #0x4]
  55e2d0: e59d1024     	ldr	r1, [sp, #0x24]
  55e2d4: e0633002     	rsb	r3, r3, r2
  55e2d8: e0613003     	rsb	r3, r1, r3
  55e2dc: e59d2010     	ldr	r2, [sp, #0x10]
  55e2e0: e0833fa3     	add	r3, r3, r3, lsr #31
  55e2e4: e08220c3     	add	r2, r2, r3, asr #1
  55e2e8: e58d2010     	str	r2, [sp, #0x10]
  55e2ec: eaffffbc     	b	0x55e1e4 <_ZN6glitch3gui10CGUITTFont4drawEPKwRKNS_4core4rectIiEENS_5video6SColorEbbPS7_+0x1c4> @ imm = #-0x110

; SYMBOL glitch::gui::CGUITTFont::drawInTexture(wchar_t const*, boost::intrusive_ptr<glitch::video::ITexture> const&, glitch::core::rect<int>, glitch::video::SColor, bool, bool)
; FUNCTION 0x0055dc70, size=0x3b0, file_offset=0x55dc70, sha256=7940131bff7ed62c2ee7fe806146206ffdc4b71e7501bd3e300ae1fa8a7ff5c2
libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

0055dc70 <_ZN6glitch3gui10CGUITTFont13drawInTextureEPKwRKN5boost13intrusive_ptrINS_5video8ITextureEEENS_4core4rectIiEENS6_6SColorEbb>:
  55dc70: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  55dc74: e1a04000     	mov	r4, r0
  55dc78: e24dd0ac     	sub	sp, sp, #172
  55dc7c: e5900008     	ldr	r0, [r0, #0x8]
  55dc80: e1a08002     	mov	r8, r2
  55dc84: e1a0a003     	mov	r10, r3
  55dc88: e5dd20d4     	ldrb	r2, [sp, #0xd4]
  55dc8c: e5dd30d8     	ldrb	r3, [sp, #0xd8]
  55dc90: e3500000     	cmp	r0, #0
  55dc94: e1a05001     	mov	r5, r1
  55dc98: e58d201c     	str	r2, [sp, #0x1c]
  55dc9c: e58d3020     	str	r3, [sp, #0x20]
  55dca0: 0a000081     	beq	0x55deac <_ZN6glitch3gui10CGUITTFont13drawInTextureEPKwRKN5boost13intrusive_ptrINS_5video8ITextureEEENS_4core4rectIiEENS6_6SColorEbb+0x23c> @ imm = #0x204
  55dca4: e5983000     	ldr	r3, [r8]
  55dca8: e3530000     	cmp	r3, #0
  55dcac: 0a00007e     	beq	0x55deac <_ZN6glitch3gui10CGUITTFont13drawInTextureEPKwRKN5boost13intrusive_ptrINS_5video8ITextureEEENS_4core4rectIiEENS6_6SColorEbb+0x23c> @ imm = #0x1f8
  55dcb0: e28d9034     	add	r9, sp, #52
  55dcb4: e1a02005     	mov	r2, r5
  55dcb8: e5943000     	ldr	r3, [r4]
  55dcbc: e28d0094     	add	r0, sp, #148
  55dcc0: e1a01004     	mov	r1, r4
  55dcc4: e58d9018     	str	r9, [sp, #0x18]
  55dcc8: e1a0e00f     	mov	lr, pc
  55dccc: e593f01c     	ldr	pc, [r3, #0x1c]
  55dcd0: e59de094     	ldr	lr, [sp, #0x94]
  55dcd4: e59dc098     	ldr	r12, [sp, #0x98]
  55dcd8: e1a01005     	mov	r1, r5
  55dcdc: e58de024     	str	lr, [sp, #0x24]
  55dce0: e58dc028     	str	r12, [sp, #0x28]
  55dce4: e59a3004     	ldr	r3, [r10, #0x4]
  55dce8: e28d20a4     	add	r2, sp, #164
  55dcec: e59d0018     	ldr	r0, [sp, #0x18]
  55dcf0: e59a6000     	ldr	r6, [r10]
  55dcf4: e58d3014     	str	r3, [sp, #0x14]
  55dcf8: ebf7207f     	bl	0x325efc <_ZNSbIwSt11char_traitsIwEN6glitch4core10SAllocatorIwLNS1_6memory13E_MEMORY_HINTE0EEEEC1EPKwRKS6_> @ imm = #-0x237e04
  55dcfc: e594c008     	ldr	r12, [r4, #0x8]
  55dd00: e28d50a0     	add	r5, sp, #160
  55dd04: e1a02008     	mov	r2, r8
  55dd08: e1a0100c     	mov	r1, r12
  55dd0c: e1a00005     	mov	r0, r5
  55dd10: e59cc000     	ldr	r12, [r12]
  55dd14: e3a03000     	mov	r3, #0
  55dd18: e1a0e00f     	mov	lr, pc
  55dd1c: e59cf084     	ldr	pc, [r12, #0x84]
  55dd20: e5943008     	ldr	r3, [r4, #0x8]
  55dd24: e1a01005     	mov	r1, r5
  55dd28: e1a00003     	mov	r0, r3
  55dd2c: e5933000     	ldr	r3, [r3]
  55dd30: e1a0e00f     	mov	lr, pc
  55dd34: e593f08c     	ldr	pc, [r3, #0x8c]
  55dd38: e5943008     	ldr	r3, [r4, #0x8]
  55dd3c: e1a00003     	mov	r0, r3
  55dd40: e5933000     	ldr	r3, [r3]
  55dd44: e1a0e00f     	mov	lr, pc
  55dd48: e593f014     	ldr	pc, [r3, #0x14]
  55dd4c: e5943008     	ldr	r3, [r4, #0x8]
  55dd50: e593509c     	ldr	r5, [r3, #0x9c]
  55dd54: e2155b02     	ands	r5, r5, #2048
  55dd58: 0a00009a     	beq	0x55dfc8 <_ZN6glitch3gui10CGUITTFont13drawInTextureEPKwRKN5boost13intrusive_ptrINS_5video8ITextureEEENS_4core4rectIiEENS6_6SColorEbb+0x358> @ imm = #0x268
  55dd5c: e5943018     	ldr	r3, [r4, #0x18]
  55dd60: e5933050     	ldr	r3, [r3, #0x50]
  55dd64: e3530000     	cmp	r3, #0
  55dd68: 1a000051     	bne	0x55deb4 <_ZN6glitch3gui10CGUITTFont13drawInTextureEPKwRKN5boost13intrusive_ptrINS_5video8ITextureEEENS_4core4rectIiEENS6_6SColorEbb+0x244> @ imm = #0x144
  55dd6c: e59d3078     	ldr	r3, [sp, #0x78]
  55dd70: e5931000     	ldr	r1, [r3]
  55dd74: e59dc01c     	ldr	r12, [sp, #0x1c]
  55dd78: e89a0240     	ldm	r10, {r6, r9}
  55dd7c: e35c0000     	cmp	r12, #0
  55dd80: 0a000005     	beq	0x55dd9c <_ZN6glitch3gui10CGUITTFont13drawInTextureEPKwRKN5boost13intrusive_ptrINS_5video8ITextureEEENS_4core4rectIiEENS6_6SColorEbb+0x12c> @ imm = #0x14
  55dd84: e59a3008     	ldr	r3, [r10, #0x8]
  55dd88: e59de024     	ldr	lr, [sp, #0x24]
  55dd8c: e0663003     	rsb	r3, r6, r3
  55dd90: e06e3003     	rsb	r3, lr, r3
  55dd94: e0833fa3     	add	r3, r3, r3, lsr #31
  55dd98: e08660c3     	add	r6, r6, r3, asr #1
  55dd9c: e59d2020     	ldr	r2, [sp, #0x20]
  55dda0: e3520000     	cmp	r2, #0
  55dda4: 0a000005     	beq	0x55ddc0 <_ZN6glitch3gui10CGUITTFont13drawInTextureEPKwRKN5boost13intrusive_ptrINS_5video8ITextureEEENS_4core4rectIiEENS6_6SColorEbb+0x150> @ imm = #0x14
  55dda8: e59a300c     	ldr	r3, [r10, #0xc]
  55ddac: e59dc028     	ldr	r12, [sp, #0x28]
  55ddb0: e0693003     	rsb	r3, r9, r3
  55ddb4: e06c3003     	rsb	r3, r12, r3
  55ddb8: e0833fa3     	add	r3, r3, r3, lsr #31
  55ddbc: e08990c3     	add	r9, r9, r3, asr #1
  55ddc0: e3510000     	cmp	r1, #0
  55ddc4: 0a00001e     	beq	0x55de44 <_ZN6glitch3gui10CGUITTFont13drawInTextureEPKwRKN5boost13intrusive_ptrINS_5video8ITextureEEENS_4core4rectIiEENS6_6SColorEbb+0x1d4> @ imm = #0x78
  55ddc8: e3a05004     	mov	r5, #4
  55ddcc: e3a07000     	mov	r7, #0
  55ddd0: e3a0a058     	mov	r10, #88
  55ddd4: e28d807c     	add	r8, sp, #124
  55ddd8: e1a00004     	mov	r0, r4
  55dddc: ebffff7d     	bl	0x55dbd8 <_ZNK6glitch3gui10CGUITTFont14getGlyphByCharEw> @ imm = #-0x20c
  55dde0: e2501000     	subs	r1, r0, #0
  55dde4: e2411001     	sub	r1, r1, #1
  55dde8: e1a00004     	mov	r0, r4
  55ddec: e1a02008     	mov	r2, r8
  55ddf0: e3a03000     	mov	r3, #0
  55ddf4: 0a000006     	beq	0x55de14 <_ZN6glitch3gui10CGUITTFont13drawInTextureEPKwRKN5boost13intrusive_ptrINS_5video8ITextureEEENS_4core4rectIiEENS6_6SColorEbb+0x1a4> @ imm = #0x18
  55ddf8: e594c00c     	ldr	r12, [r4, #0xc]
  55ddfc: e58d607c     	str	r6, [sp, #0x7c]
  55de00: e58d9080     	str	r9, [sp, #0x80]
  55de04: e021c19a     	mla	r1, r10, r1, r12
  55de08: e59dc0d0     	ldr	r12, [sp, #0xd0]
  55de0c: e58dc000     	str	r12, [sp]
  55de10: ebfff875     	bl	0x55bfec <_ZN6glitch3gui10CGUITTFont9drawGlyphEPKNS0_11CGUITTGlyphENS_4core10position2dIiEEPKNS5_4rectIiEENS_5video6SColorE> @ imm = #-0x1e2c
  55de14: e59d3078     	ldr	r3, [sp, #0x78]
  55de18: e1a00004     	mov	r0, r4
  55de1c: e7931007     	ldr	r1, [r3, r7]
  55de20: ebfffd22     	bl	0x55d2b0 <_ZNK6glitch3gui10CGUITTFont21getWidthFromCharacterEj> @ imm = #-0xb78
  55de24: e59d2078     	ldr	r2, [sp, #0x78]
  55de28: e2853004     	add	r3, r5, #4
  55de2c: e1a07005     	mov	r7, r5
  55de30: e7921005     	ldr	r1, [r2, r5]
  55de34: e0866000     	add	r6, r6, r0
  55de38: e1a05003     	mov	r5, r3
  55de3c: e3510000     	cmp	r1, #0
  55de40: 1affffe4     	bne	0x55ddd8 <_ZN6glitch3gui10CGUITTFont13drawInTextureEPKwRKN5boost13intrusive_ptrINS_5video8ITextureEEENS_4core4rectIiEENS6_6SColorEbb+0x168> @ imm = #-0x70
  55de44: e5943008     	ldr	r3, [r4, #0x8]
  55de48: e1a00003     	mov	r0, r3
  55de4c: e5933000     	ldr	r3, [r3]
  55de50: e1a0e00f     	mov	lr, pc
  55de54: e593f018     	ldr	pc, [r3, #0x18]
  55de58: e5943008     	ldr	r3, [r4, #0x8]
  55de5c: e28d009c     	add	r0, sp, #156
  55de60: e1a01003     	mov	r1, r3
  55de64: e5933000     	ldr	r3, [r3]
  55de68: e1a0e00f     	mov	lr, pc
  55de6c: e593f090     	ldr	pc, [r3, #0x90]
  55de70: e59d009c     	ldr	r0, [sp, #0x9c]
  55de74: e3500000     	cmp	r0, #0
  55de78: 0a000000     	beq	0x55de80 <_ZN6glitch3gui10CGUITTFont13drawInTextureEPKwRKN5boost13intrusive_ptrINS_5video8ITextureEEENS_4core4rectIiEENS6_6SColorEbb+0x210> @ imm = #0x0
  55de7c: ebf6fdc0     	bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x240900
  55de80: e59d00a0     	ldr	r0, [sp, #0xa0]
  55de84: e3500000     	cmp	r0, #0
  55de88: 0a000000     	beq	0x55de90 <_ZN6glitch3gui10CGUITTFont13drawInTextureEPKwRKN5boost13intrusive_ptrINS_5video8ITextureEEENS_4core4rectIiEENS6_6SColorEbb+0x220> @ imm = #0x0
  55de8c: ebf6fdbc     	bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x240910
  55de90: e59d0078     	ldr	r0, [sp, #0x78]
  55de94: e59d2018     	ldr	r2, [sp, #0x18]
  55de98: e1500002     	cmp	r0, r2
  55de9c: 0a000002     	beq	0x55deac <_ZN6glitch3gui10CGUITTFont13drawInTextureEPKwRKN5boost13intrusive_ptrINS_5video8ITextureEEENS_4core4rectIiEENS6_6SColorEbb+0x23c> @ imm = #0x8
  55dea0: e3500000     	cmp	r0, #0
  55dea4: 0a000000     	beq	0x55deac <_ZN6glitch3gui10CGUITTFont13drawInTextureEPKwRKN5boost13intrusive_ptrINS_5video8ITextureEEENS_4core4rectIiEENS6_6SColorEbb+0x23c> @ imm = #0x0
  55dea8: ebf6c968     	bl	0x310450 <_Z10GlitchFreePv> @ imm = #-0x24da60
  55deac: e28dd0ac     	add	sp, sp, #172
  55deb0: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  55deb4: e59d901c     	ldr	r9, [sp, #0x1c]
  55deb8: e3590000     	cmp	r9, #0
  55debc: 0a000006     	beq	0x55dedc <_ZN6glitch3gui10CGUITTFont13drawInTextureEPKwRKN5boost13intrusive_ptrINS_5video8ITextureEEENS_4core4rectIiEENS6_6SColorEbb+0x26c> @ imm = #0x18
  55dec0: e59a2008     	ldr	r2, [r10, #0x8]
  55dec4: e59a3000     	ldr	r3, [r10]
  55dec8: e59dc024     	ldr	r12, [sp, #0x24]
  55decc: e0633002     	rsb	r3, r3, r2
  55ded0: e06c3003     	rsb	r3, r12, r3
  55ded4: e0833fa3     	add	r3, r3, r3, lsr #31
  55ded8: e08660c3     	add	r6, r6, r3, asr #1
  55dedc: e59de020     	ldr	lr, [sp, #0x20]
  55dee0: e35e0000     	cmp	lr, #0
  55dee4: 1a000043     	bne	0x55dff8 <_ZN6glitch3gui10CGUITTFont13drawInTextureEPKwRKN5boost13intrusive_ptrINS_5video8ITextureEEENS_4core4rectIiEENS6_6SColorEbb+0x388> @ imm = #0x10c
  55dee8: e59d3078     	ldr	r3, [sp, #0x78]
  55deec: e5931000     	ldr	r1, [r3]
  55def0: e3510000     	cmp	r1, #0
  55def4: 0affff9e     	beq	0x55dd74 <_ZN6glitch3gui10CGUITTFont13drawInTextureEPKwRKN5boost13intrusive_ptrINS_5video8ITextureEEENS_4core4rectIiEENS6_6SColorEbb+0x104> @ imm = #-0x188
  55def8: e28d3084     	add	r3, sp, #132
  55defc: e3a07000     	mov	r7, #0
  55df00: e3a05004     	mov	r5, #4
  55df04: e58da02c     	str	r10, [sp, #0x2c]
  55df08: e1a0b003     	mov	r11, r3
  55df0c: e1a00004     	mov	r0, r4
  55df10: ebffff30     	bl	0x55dbd8 <_ZNK6glitch3gui10CGUITTFont14getGlyphByCharEw> @ imm = #-0x340
  55df14: e250c000     	subs	r12, r0, #0
  55df18: e24cc001     	sub	r12, r12, #1
  55df1c: e3a0e058     	mov	lr, #88
  55df20: e00c0c9e     	mul	r12, lr, r12
  55df24: e1a00004     	mov	r0, r4
  55df28: e1a02008     	mov	r2, r8
  55df2c: e1a0300b     	mov	r3, r11
  55df30: 0a000015     	beq	0x55df8c <_ZN6glitch3gui10CGUITTFont13drawInTextureEPKwRKN5boost13intrusive_ptrINS_5video8ITextureEEENS_4core4rectIiEENS6_6SColorEbb+0x31c> @ imm = #0x54
  55df34: e594e00c     	ldr	lr, [r4, #0xc]
  55df38: e5941018     	ldr	r1, [r4, #0x18]
  55df3c: e081100c     	add	r1, r1, r12
  55df40: e08ec00c     	add	r12, lr, r12
  55df44: e59c9018     	ldr	r9, [r12, #0x18]
  55df48: e58d900c     	str	r9, [sp, #0xc]
  55df4c: e591e01c     	ldr	lr, [r1, #0x1c]
  55df50: e59cc01c     	ldr	r12, [r12, #0x1c]
  55df54: e591a018     	ldr	r10, [r1, #0x18]
  55df58: e3a09000     	mov	r9, #0
  55df5c: e06cc00e     	rsb	r12, r12, lr
  55df60: e59de00c     	ldr	lr, [sp, #0xc]
  55df64: e58d9000     	str	r9, [sp]
  55df68: e59d9014     	ldr	r9, [sp, #0x14]
  55df6c: e06ea00a     	rsb	r10, lr, r10
  55df70: e046a0aa     	sub	r10, r6, r10, lsr #1
  55df74: e049c0ac     	sub	r12, r9, r12, lsr #1
  55df78: e58da084     	str	r10, [sp, #0x84]
  55df7c: e58dc088     	str	r12, [sp, #0x88]
  55df80: e591c054     	ldr	r12, [r1, #0x54]
  55df84: e58dc004     	str	r12, [sp, #0x4]
  55df88: ebfff860     	bl	0x55c110 <_ZN6glitch3gui10CGUITTFont18drawGlyphInTextureEPKNS0_11CGUITTGlyphERKN5boost13intrusive_ptrINS_5video8ITextureEEENS_4core10position2dIiEEPKNSC_4rectIiEENS7_6SColorE> @ imm = #-0x1e80
  55df8c: e59d3078     	ldr	r3, [sp, #0x78]
  55df90: e1a00004     	mov	r0, r4
  55df94: e7931007     	ldr	r1, [r3, r7]
  55df98: ebfffcc4     	bl	0x55d2b0 <_ZNK6glitch3gui10CGUITTFont21getWidthFromCharacterEj> @ imm = #-0xcf0
  55df9c: e59d3078     	ldr	r3, [sp, #0x78]
  55dfa0: e2852004     	add	r2, r5, #4
  55dfa4: e1a07005     	mov	r7, r5
  55dfa8: e7931005     	ldr	r1, [r3, r5]
  55dfac: e0866000     	add	r6, r6, r0
  55dfb0: e1a05002     	mov	r5, r2
  55dfb4: e3510000     	cmp	r1, #0
  55dfb8: 1affffd3     	bne	0x55df0c <_ZN6glitch3gui10CGUITTFont13drawInTextureEPKwRKN5boost13intrusive_ptrINS_5video8ITextureEEENS_4core4rectIiEENS6_6SColorEbb+0x29c> @ imm = #-0xb4
  55dfbc: e59da02c     	ldr	r10, [sp, #0x2c]
  55dfc0: e5931000     	ldr	r1, [r3]
  55dfc4: eaffff6a     	b	0x55dd74 <_ZN6glitch3gui10CGUITTFont13drawInTextureEPKwRKN5boost13intrusive_ptrINS_5video8ITextureEEENS_4core4rectIiEENS6_6SColorEbb+0x104> @ imm = #-0x258
  55dfc8: e1a00003     	mov	r0, r3
  55dfcc: e3a01001     	mov	r1, #1
  55dfd0: e5933000     	ldr	r3, [r3]
  55dfd4: e1a0e00f     	mov	lr, pc
  55dfd8: e593f0a8     	ldr	pc, [r3, #0xa8]
  55dfdc: e5940008     	ldr	r0, [r4, #0x8]
  55dfe0: e1a01008     	mov	r1, r8
  55dfe4: e28d208c     	add	r2, sp, #140
  55dfe8: e58d5090     	str	r5, [sp, #0x90]
  55dfec: e58d508c     	str	r5, [sp, #0x8c]
  55dff0: eb0106f7     	bl	0x59fbd4 <_ZN6glitch5video9C2DDriver11draw2DImageEPNS0_12IVideoDriverERKN5boost13intrusive_ptrINS0_8ITextureEEERKNS_4core10position2dIiEE> @ imm = #0x41bdc
  55dff4: eaffff58     	b	0x55dd5c <_ZN6glitch3gui10CGUITTFont13drawInTextureEPKwRKN5boost13intrusive_ptrINS_5video8ITextureEEENS_4core4rectIiEENS6_6SColorEbb+0xec> @ imm = #-0x2a0
  55dff8: e59a200c     	ldr	r2, [r10, #0xc]
  55dffc: e59a3004     	ldr	r3, [r10, #0x4]
  55e000: e59d9014     	ldr	r9, [sp, #0x14]
  55e004: e0633002     	rsb	r3, r3, r2
  55e008: e59d2028     	ldr	r2, [sp, #0x28]
  55e00c: e0623003     	rsb	r3, r2, r3
  55e010: e0833fa3     	add	r3, r3, r3, lsr #31
  55e014: e08990c3     	add	r9, r9, r3, asr #1
  55e018: e58d9014     	str	r9, [sp, #0x14]
  55e01c: eaffffb1     	b	0x55dee8 <_ZN6glitch3gui10CGUITTFont13drawInTextureEPKwRKN5boost13intrusive_ptrINS_5video8ITextureEEENS_4core4rectIiEENS6_6SColorEbb+0x278> @ imm = #-0x13c

; SYMBOL glitch::gui::CGUITTGlyph::Free(glitch::video::IVideoDriver*)
; FUNCTION 0x0055c7a4, size=0x48, file_offset=0x55c7a4, sha256=dd55167fcbab41287403849b03a5eb7bbcdef9c36bc3de198f27023c2ce6308b
libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

0055c7a4 <_ZN6glitch3gui11CGUITTGlyph4FreeEPNS_5video12IVideoDriverE>:
  55c7a4: e92d4070     	push	{r4, r5, r6, lr}
  55c7a8: e1a04000     	mov	r4, r0
  55c7ac: e590004c     	ldr	r0, [r0, #0x4c]
  55c7b0: e1a05001     	mov	r5, r1
  55c7b4: e3500000     	cmp	r0, #0
  55c7b8: 0a000000     	beq	0x55c7c0 <_ZN6glitch3gui11CGUITTGlyph4FreeEPNS_5video12IVideoDriverE+0x1c> @ imm = #0x0
  55c7bc: ebf6c63d     	bl	0x30e0b8 <_ZdaPv@plt>   @ imm = #-0x24e70c
  55c7c0: e3a03000     	mov	r3, #0
  55c7c4: e5c43008     	strb	r3, [r4, #0x8]
  55c7c8: e584304c     	str	r3, [r4, #0x4c]
  55c7cc: e59550e0     	ldr	r5, [r5, #0xe0]
  55c7d0: e2841044     	add	r1, r4, #68
  55c7d4: e1a00005     	mov	r0, r5
  55c7d8: ebf8a1b5     	bl	0x384eb4 <_ZN6glitch5video15CTextureManager13removeTextureERN5boost13intrusive_ptrINS0_8ITextureEEE> @ imm = #-0x1d792c
  55c7dc: e1a00005     	mov	r0, r5
  55c7e0: e2841048     	add	r1, r4, #72
  55c7e4: e8bd4070     	pop	{r4, r5, r6, lr}
  55c7e8: eaf8a1b1     	b	0x384eb4 <_ZN6glitch5video15CTextureManager13removeTextureERN5boost13intrusive_ptrINS0_8ITextureEEE> @ imm = #-0x1d793c

; SYMBOL glitch::gui::CGUITTFont::clearGlyphs()
; FUNCTION 0x0055c97c, size=0x164, file_offset=0x55c97c, sha256=0c94b6cef6e68f7f6af320e08c297f5e07f4dd238f3835dc17c317a8771c6920
libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

0055c97c <_ZN6glitch3gui10CGUITTFont11clearGlyphsEv>:
  55c97c: e92d40f0     	push	{r4, r5, r6, r7, lr}
  55c980: e5902010     	ldr	r2, [r0, #0x10]
  55c984: e590100c     	ldr	r1, [r0, #0xc]
  55c988: e3087ba3     	movw	r7, #0x8ba3
  55c98c: e34b7a2e     	movt	r7, #0xba2e
  55c990: e0613002     	rsb	r3, r1, r2
  55c994: e1a031c3     	asr	r3, r3, #3
  55c998: e0030397     	mul	r3, r7, r3
  55c99c: e24dd014     	sub	sp, sp, #20
  55c9a0: e3530000     	cmp	r3, #0
  55c9a4: e1a04000     	mov	r4, r0
  55c9a8: 0a00000d     	beq	0x55c9e4 <_ZN6glitch3gui10CGUITTFont11clearGlyphsEv+0x68> @ imm = #0x34
  55c9ac: e3a05000     	mov	r5, #0
  55c9b0: e1a06005     	mov	r6, r5
  55c9b4: e0810005     	add	r0, r1, r5
  55c9b8: e5941008     	ldr	r1, [r4, #0x8]
  55c9bc: ebffff78     	bl	0x55c7a4 <_ZN6glitch3gui11CGUITTGlyph4FreeEPNS_5video12IVideoDriverE> @ imm = #-0x220
  55c9c0: e5942010     	ldr	r2, [r4, #0x10]
  55c9c4: e594100c     	ldr	r1, [r4, #0xc]
  55c9c8: e2866001     	add	r6, r6, #1
  55c9cc: e2855058     	add	r5, r5, #88
  55c9d0: e0613002     	rsb	r3, r1, r2
  55c9d4: e1a031c3     	asr	r3, r3, #3
  55c9d8: e0030397     	mul	r3, r7, r3
  55c9dc: e1560003     	cmp	r6, r3
  55c9e0: 3afffff3     	blo	0x55c9b4 <_ZN6glitch3gui10CGUITTFont11clearGlyphsEv+0x38> @ imm = #-0x34
  55c9e4: e1510002     	cmp	r1, r2
  55c9e8: 0a000002     	beq	0x55c9f8 <_ZN6glitch3gui10CGUITTFont11clearGlyphsEv+0x7c> @ imm = #0x8
  55c9ec: e284000c     	add	r0, r4, #12
  55c9f0: e28d300c     	add	r3, sp, #12
  55c9f4: ebffffbb     	bl	0x55c8e8 <_ZNSt6vectorIN6glitch3gui11CGUITTGlyphENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPS2_S9_RKSt12__false_type> @ imm = #-0x114
  55c9f8: e594201c     	ldr	r2, [r4, #0x1c]
  55c9fc: e5941018     	ldr	r1, [r4, #0x18]
  55ca00: e3087ba3     	movw	r7, #0x8ba3
  55ca04: e34b7a2e     	movt	r7, #0xba2e
  55ca08: e0613002     	rsb	r3, r1, r2
  55ca0c: e1a031c3     	asr	r3, r3, #3
  55ca10: e0030397     	mul	r3, r7, r3
  55ca14: e3530000     	cmp	r3, #0
  55ca18: 0a00000d     	beq	0x55ca54 <_ZN6glitch3gui10CGUITTFont11clearGlyphsEv+0xd8> @ imm = #0x34
  55ca1c: e3a05000     	mov	r5, #0
  55ca20: e1a06005     	mov	r6, r5
  55ca24: e0810005     	add	r0, r1, r5
  55ca28: e5941008     	ldr	r1, [r4, #0x8]
  55ca2c: ebffff5c     	bl	0x55c7a4 <_ZN6glitch3gui11CGUITTGlyph4FreeEPNS_5video12IVideoDriverE> @ imm = #-0x290
  55ca30: e594201c     	ldr	r2, [r4, #0x1c]
  55ca34: e5941018     	ldr	r1, [r4, #0x18]
  55ca38: e2866001     	add	r6, r6, #1
  55ca3c: e2855058     	add	r5, r5, #88
  55ca40: e0613002     	rsb	r3, r1, r2
  55ca44: e1a031c3     	asr	r3, r3, #3
  55ca48: e0030397     	mul	r3, r7, r3
  55ca4c: e1560003     	cmp	r6, r3
  55ca50: 3afffff3     	blo	0x55ca24 <_ZN6glitch3gui10CGUITTFont11clearGlyphsEv+0xa8> @ imm = #-0x34
  55ca54: e1520001     	cmp	r2, r1
  55ca58: 0a000002     	beq	0x55ca68 <_ZN6glitch3gui10CGUITTFont11clearGlyphsEv+0xec> @ imm = #0x8
  55ca5c: e2840018     	add	r0, r4, #24
  55ca60: e28d3008     	add	r3, sp, #8
  55ca64: ebffff9f     	bl	0x55c8e8 <_ZNSt6vectorIN6glitch3gui11CGUITTGlyphENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPS2_S9_RKSt12__false_type> @ imm = #-0x184
  55ca68: e5942028     	ldr	r2, [r4, #0x28]
  55ca6c: e5941024     	ldr	r1, [r4, #0x24]
  55ca70: e3087ba3     	movw	r7, #0x8ba3
  55ca74: e34b7a2e     	movt	r7, #0xba2e
  55ca78: e0613002     	rsb	r3, r1, r2
  55ca7c: e1a031c3     	asr	r3, r3, #3
  55ca80: e0030397     	mul	r3, r7, r3
  55ca84: e3530000     	cmp	r3, #0
  55ca88: 0a00000d     	beq	0x55cac4 <_ZN6glitch3gui10CGUITTFont11clearGlyphsEv+0x148> @ imm = #0x34
  55ca8c: e3a05000     	mov	r5, #0
  55ca90: e1a06005     	mov	r6, r5
  55ca94: e0810005     	add	r0, r1, r5
  55ca98: e5941008     	ldr	r1, [r4, #0x8]
  55ca9c: ebffff40     	bl	0x55c7a4 <_ZN6glitch3gui11CGUITTGlyph4FreeEPNS_5video12IVideoDriverE> @ imm = #-0x300
  55caa0: e5942028     	ldr	r2, [r4, #0x28]
  55caa4: e5941024     	ldr	r1, [r4, #0x24]
  55caa8: e2866001     	add	r6, r6, #1
  55caac: e2855058     	add	r5, r5, #88
  55cab0: e0613002     	rsb	r3, r1, r2
  55cab4: e1a031c3     	asr	r3, r3, #3
  55cab8: e0030397     	mul	r3, r7, r3
  55cabc: e1560003     	cmp	r6, r3
  55cac0: 3afffff3     	blo	0x55ca94 <_ZN6glitch3gui10CGUITTFont11clearGlyphsEv+0x118> @ imm = #-0x34
  55cac4: e1520001     	cmp	r2, r1
  55cac8: 0a000002     	beq	0x55cad8 <_ZN6glitch3gui10CGUITTFont11clearGlyphsEv+0x15c> @ imm = #0x8
  55cacc: e2840024     	add	r0, r4, #36
  55cad0: e28d3004     	add	r3, sp, #4
  55cad4: ebffff83     	bl	0x55c8e8 <_ZNSt6vectorIN6glitch3gui11CGUITTGlyphENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPS2_S9_RKSt12__false_type> @ imm = #-0x1f4
  55cad8: e28dd014     	add	sp, sp, #20
  55cadc: e8bd80f0     	pop	{r4, r5, r6, r7, pc}

; SYMBOL glitch::gui::CGUITTFont::~CGUITTFont() [D1]
; FUNCTION 0x0055cae0, size=0x80, file_offset=0x55cae0, sha256=7d1c0460e062b866e198c99546cf07b3fb6d0e82cc5b4aa6d0c8c0bab60a9c3d
libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

0055cae0 <_ZN6glitch3gui10CGUITTFontD1Ev>:
  55cae0: e92d4010     	push	{r4, lr}
  55cae4: e59f306c     	ldr	r3, [pc, #0x6c]         @ 0x55cb58 <_ZN6glitch3gui10CGUITTFontD1Ev+0x78>
  55cae8: e59f206c     	ldr	r2, [pc, #0x6c]         @ 0x55cb5c <_ZN6glitch3gui10CGUITTFontD1Ev+0x7c>
  55caec: e1a04000     	mov	r4, r0
  55caf0: e08f3003     	add	r3, pc, r3
  55caf4: e5900030     	ldr	r0, [r0, #0x30]
  55caf8: e7932002     	ldr	r2, [r3, r2]
  55cafc: e3500000     	cmp	r0, #0
  55cb00: e2822008     	add	r2, r2, #8
  55cb04: e5842000     	str	r2, [r4]
  55cb08: 0a000002     	beq	0x55cb18 <_ZN6glitch3gui10CGUITTFontD1Ev+0x38> @ imm = #0x8
  55cb0c: ebf7029c     	bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x23f590
  55cb10: e3a03000     	mov	r3, #0
  55cb14: e5843030     	str	r3, [r4, #0x30]
  55cb18: e1a00004     	mov	r0, r4
  55cb1c: ebffff96     	bl	0x55c97c <_ZN6glitch3gui10CGUITTFont11clearGlyphsEv> @ imm = #-0x1a8
  55cb20: e5940008     	ldr	r0, [r4, #0x8]
  55cb24: e3500000     	cmp	r0, #0
  55cb28: 0a000002     	beq	0x55cb38 <_ZN6glitch3gui10CGUITTFontD1Ev+0x58> @ imm = #0x8
  55cb2c: ebf70294     	bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x23f5b0
  55cb30: e3a03000     	mov	r3, #0
  55cb34: e5843008     	str	r3, [r4, #0x8]
  55cb38: e2840024     	add	r0, r4, #36
  55cb3c: ebfffd18     	bl	0x55bfa4 <_ZNSt6vectorIN6glitch3gui11CGUITTGlyphENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEED1Ev> @ imm = #-0xba0
  55cb40: e2840018     	add	r0, r4, #24
  55cb44: ebfffd16     	bl	0x55bfa4 <_ZNSt6vectorIN6glitch3gui11CGUITTGlyphENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEED1Ev> @ imm = #-0xba8
  55cb48: e284000c     	add	r0, r4, #12
  55cb4c: ebfffd14     	bl	0x55bfa4 <_ZNSt6vectorIN6glitch3gui11CGUITTGlyphENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEED1Ev> @ imm = #-0xbb0
  55cb50: e1a00004     	mov	r0, r4
  55cb54: e8bd8010     	pop	{r4, pc}
  55cb58: a0 7f 43 00  	.word	0x00437fa0
  55cb5c: 50 0d 00 00  	.word	0x00000d50

; SYMBOL glitch::gui::CGUITTFont::setBorder(unsigned int, glitch::video::SColor)
; FUNCTION 0x0055bc38, size=0x9c, file_offset=0x55bc38, sha256=0704cb5ede5fd46075d9a594ffdb40275270dc17b87b526ec96b22b9303f37d3
libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

0055bc38 <_ZN6glitch3gui10CGUITTFont9setBorderEjNS_5video6SColorE>:
  55bc38: e92d00f0     	push	{r4, r5, r6, r7}
  55bc3c: e5903030     	ldr	r3, [r0, #0x30]
  55bc40: e24dd008     	sub	sp, sp, #8
  55bc44: e58d2004     	str	r2, [sp, #0x4]
  55bc48: e3530000     	cmp	r3, #0
  55bc4c: e1a0cc22     	lsr	r12, r2, #24
  55bc50: e6ef5072     	uxtb	r5, r2
  55bc54: e7e74452     	ubfx	r4, r2, #0x8, #0x8
  55bc58: e7e72852     	ubfx	r2, r2, #0x10, #0x8
  55bc5c: 0a000019     	beq	0x55bcc8 <_ZN6glitch3gui10CGUITTFont9setBorderEjNS_5video6SColorE+0x90> @ imm = #0x64
  55bc60: e5936008     	ldr	r6, [r3, #0x8]
  55bc64: e5903018     	ldr	r3, [r0, #0x18]
  55bc68: e5967010     	ldr	r7, [r6, #0x10]
  55bc6c: e593600c     	ldr	r6, [r3, #0xc]
  55bc70: e3570000     	cmp	r7, #0
  55bc74: e0010196     	mul	r1, r6, r1
  55bc78: da000012     	ble	0x55bcc8 <_ZN6glitch3gui10CGUITTFont9setBorderEjNS_5video6SColorE+0x90> @ imm = #0x48
  55bc7c: e3a06000     	mov	r6, #0
  55bc80: e1a07006     	mov	r7, r6
  55bc84: ea000000     	b	0x55bc8c <_ZN6glitch3gui10CGUITTFont9setBorderEjNS_5video6SColorE+0x54> @ imm = #0x0
  55bc88: e5903018     	ldr	r3, [r0, #0x18]
  55bc8c: e0833006     	add	r3, r3, r6
  55bc90: e5831050     	str	r1, [r3, #0x50]
  55bc94: e5903018     	ldr	r3, [r0, #0x18]
  55bc98: e2877001     	add	r7, r7, #1
  55bc9c: e0833006     	add	r3, r3, r6
  55bca0: e5c35054     	strb	r5, [r3, #0x54]
  55bca4: e5c3c057     	strb	r12, [r3, #0x57]
  55bca8: e5c32056     	strb	r2, [r3, #0x56]
  55bcac: e5c34055     	strb	r4, [r3, #0x55]
  55bcb0: e5903030     	ldr	r3, [r0, #0x30]
  55bcb4: e2866058     	add	r6, r6, #88
  55bcb8: e5933008     	ldr	r3, [r3, #0x8]
  55bcbc: e5933010     	ldr	r3, [r3, #0x10]
  55bcc0: e1530007     	cmp	r3, r7
  55bcc4: caffffef     	bgt	0x55bc88 <_ZN6glitch3gui10CGUITTFont9setBorderEjNS_5video6SColorE+0x50> @ imm = #-0x44
  55bcc8: e28dd008     	add	sp, sp, #8
  55bccc: e8bd00f0     	pop	{r4, r5, r6, r7}
  55bcd0: e12fff1e     	bx	lr
