; Native segmented-audio supporting ARM listings.
; Raw instruction bytes and VAs are emitted by llvm-objdump from the exact APK-matched ELF.

; FUNCTION vox::DecoderNativeCursor::DecoderNativeCursor(DecoderInterface*, StreamCursorInterface*)
; ELF VA 0x008742f4 SIZE 0x354 FILE OFFSET 0x8742f4 SHA-256 12cfc954015c917817a19554c66b9ebc163421b9e4372464728c97d6a6a7da7c

work\libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

008742f4 <_ZN3vox19DecoderNativeCursorC1EPNS_16DecoderInterfaceEPNS_21StreamCursorInterfaceE>:
  8742f4: e59f3344     	ldr	r3, [pc, #0x344]        @ 0x874640 <_ZN3vox19DecoderNativeCursorC1EPNS_16DecoderInterfaceEPNS_21StreamCursorInterfaceE+0x34c>
  8742f8: e59fc344     	ldr	r12, [pc, #0x344]       @ 0x874644 <_ZN3vox19DecoderNativeCursorC1EPNS_16DecoderInterfaceEPNS_21StreamCursorInterfaceE+0x350>
  8742fc: e92d47f0     	push	{r4, r5, r6, r7, r8, r9, r10, lr}
  874300: e08f3003     	add	r3, pc, r3
  874304: e793c00c     	ldr	r12, [r3, r12]
  874308: e3a06000     	mov	r6, #0
  87430c: e1a05002     	mov	r5, r2
  874310: e28cc008     	add	r12, r12, #8
  874314: e2802040     	add	r2, r0, #64
  874318: e1a04000     	mov	r4, r0
  87431c: e5801014     	str	r1, [r0, #0x14]
  874320: e580c000     	str	r12, [r0]
  874324: e5802044     	str	r2, [r0, #0x44]
  874328: e5806004     	str	r6, [r0, #0x4]
  87432c: e5806008     	str	r6, [r0, #0x8]
  874330: e580600c     	str	r6, [r0, #0xc]
  874334: e5806010     	str	r6, [r0, #0x10]
  874338: e5805018     	str	r5, [r0, #0x18]
  87433c: e5c0601c     	strb	r6, [r0, #0x1c]
  874340: e5806020     	str	r6, [r0, #0x20]
  874344: e5806024     	str	r6, [r0, #0x24]
  874348: e5806028     	str	r6, [r0, #0x28]
  87434c: e580602c     	str	r6, [r0, #0x2c]
  874350: e5806030     	str	r6, [r0, #0x30]
  874354: e5806034     	str	r6, [r0, #0x34]
  874358: e5806038     	str	r6, [r0, #0x38]
  87435c: e580603c     	str	r6, [r0, #0x3c]
  874360: e5802040     	str	r2, [r0, #0x40]
  874364: e5806048     	str	r6, [r0, #0x48]
  874368: e580604c     	str	r6, [r0, #0x4c]
  87436c: e5806050     	str	r6, [r0, #0x50]
  874370: e5806054     	str	r6, [r0, #0x54]
  874374: e5806058     	str	r6, [r0, #0x58]
  874378: e580605c     	str	r6, [r0, #0x5c]
  87437c: e5806060     	str	r6, [r0, #0x60]
  874380: e5806064     	str	r6, [r0, #0x64]
  874384: e24dd028     	sub	sp, sp, #40
  874388: e2800068     	add	r0, r0, #104
  87438c: eb007c8f     	bl	0x8935d0 <_ZN3vox5MutexC1Ev> @ imm = #0x1f23c
  874390: e5947014     	ldr	r7, [r4, #0x14]
  874394: e2873004     	add	r3, r7, #4
  874398: e5843020     	str	r3, [r4, #0x20]
  87439c: e5d73088     	ldrb	r3, [r7, #0x88]
  8743a0: e1530006     	cmp	r3, r6
  8743a4: 0a000006     	beq	0x8743c4 <_ZN3vox19DecoderNativeCursorC1EPNS_16DecoderInterfaceEPNS_21StreamCursorInterfaceE+0xd0> @ imm = #0x18
  8743a8: e1a00004     	mov	r0, r4
  8743ac: ebfffd42     	bl	0x8738bc <_ZN3vox19DecoderNativeCursor9ParseFileEv> @ imm = #-0xaf8
  8743b0: e3500000     	cmp	r0, #0
  8743b4: 0a000042     	beq	0x8744c4 <_ZN3vox19DecoderNativeCursorC1EPNS_16DecoderInterfaceEPNS_21StreamCursorInterfaceE+0x1d0> @ imm = #0x108
  8743b8: e5943014     	ldr	r3, [r4, #0x14]
  8743bc: e5c36088     	strb	r6, [r3, #0x88]
  8743c0: e5947014     	ldr	r7, [r4, #0x14]
  8743c4: e287e030     	add	lr, r7, #48
  8743c8: e287c058     	add	r12, r7, #88
  8743cc: e2872070     	add	r2, r7, #112
  8743d0: e2873048     	add	r3, r7, #72
  8743d4: e2870050     	add	r0, r7, #80
  8743d8: e2871064     	add	r1, r7, #100
  8743dc: e584e024     	str	lr, [r4, #0x24]
  8743e0: e584c034     	str	r12, [r4, #0x34]
  8743e4: e584002c     	str	r0, [r4, #0x2c]
  8743e8: e5841030     	str	r1, [r4, #0x30]
  8743ec: e5842038     	str	r2, [r4, #0x38]
  8743f0: e5843028     	str	r3, [r4, #0x28]
  8743f4: e3a01000     	mov	r1, #0
  8743f8: e3a00010     	mov	r0, #16
  8743fc: ebea7091     	bl	0x310648 <_Z8VoxAllocjN3vox10VoxMemHintE> @ imm = #-0x563dbc
  874400: e2877038     	add	r7, r7, #56
  874404: e1a06000     	mov	r6, r0
  874408: e1a01007     	mov	r1, r7
  87440c: eb003ea6     	bl	0x883eac <_ZN3vox22NativePlaylistsManagerC1ERS0_> @ imm = #0xfa98
  874410: e3560000     	cmp	r6, #0
  874414: e584603c     	str	r6, [r4, #0x3c]
  874418: 0a000036     	beq	0x8744f8 <_ZN3vox19DecoderNativeCursorC1EPNS_16DecoderInterfaceEPNS_21StreamCursorInterfaceE+0x204> @ imm = #0xd8
  87441c: e1a00006     	mov	r0, r6
  874420: eb003826     	bl	0x8824c0 <_ZN3vox22NativePlaylistsManager7IsValidEv> @ imm = #0xe098
  874424: e3500000     	cmp	r0, #0
  874428: 0a000025     	beq	0x8744c4 <_ZN3vox19DecoderNativeCursorC1EPNS_16DecoderInterfaceEPNS_21StreamCursorInterfaceE+0x1d0> @ imm = #0x94
  87442c: e5943020     	ldr	r3, [r4, #0x20]
  874430: e1d332f0     	ldrsh	r3, [r3, #32]
  874434: e3530001     	cmp	r3, #1
  874438: 0a000038     	beq	0x874520 <_ZN3vox19DecoderNativeCursorC1EPNS_16DecoderInterfaceEPNS_21StreamCursorInterfaceE+0x22c> @ imm = #0xe0
  87443c: e3530011     	cmp	r3, #17
  874440: 0a00005a     	beq	0x8745b0 <_ZN3vox19DecoderNativeCursorC1EPNS_16DecoderInterfaceEPNS_21StreamCursorInterfaceE+0x2bc> @ imm = #0x168
  874444: e5941048     	ldr	r1, [r4, #0x48]
  874448: e3510000     	cmp	r1, #0
  87444c: 0a00002e     	beq	0x87450c <_ZN3vox19DecoderNativeCursorC1EPNS_16DecoderInterfaceEPNS_21StreamCursorInterfaceE+0x218> @ imm = #0xb8
  874450: e28d5018     	add	r5, sp, #24
  874454: e1a00005     	mov	r0, r5
  874458: eb003ff6     	bl	0x884438 <_ZN3vox19VoxNativeSubDecoder14GetTrackParamsEv> @ imm = #0xffd8
  87445c: e895000f     	ldm	r5, {r0, r1, r2, r3}
  874460: e284c004     	add	r12, r4, #4
  874464: e88c000f     	stm	r12, {r0, r1, r2, r3}
  874468: e5943050     	ldr	r3, [r4, #0x50]
  87446c: e3530000     	cmp	r3, #0
  874470: 0a00001a     	beq	0x8744e0 <_ZN3vox19DecoderNativeCursorC1EPNS_16DecoderInterfaceEPNS_21StreamCursorInterfaceE+0x1ec> @ imm = #0x68
  874474: e5942054     	ldr	r2, [r4, #0x54]
  874478: e3520000     	cmp	r2, #0
  87447c: 0a000017     	beq	0x8744e0 <_ZN3vox19DecoderNativeCursorC1EPNS_16DecoderInterfaceEPNS_21StreamCursorInterfaceE+0x1ec> @ imm = #0x5c
  874480: e5933004     	ldr	r3, [r3, #0x4]
  874484: e3530000     	cmp	r3, #0
  874488: 0a000014     	beq	0x8744e0 <_ZN3vox19DecoderNativeCursorC1EPNS_16DecoderInterfaceEPNS_21StreamCursorInterfaceE+0x1ec> @ imm = #0x50
  87448c: e5923004     	ldr	r3, [r2, #0x4]
  874490: e3530000     	cmp	r3, #0
  874494: 0a000011     	beq	0x8744e0 <_ZN3vox19DecoderNativeCursorC1EPNS_16DecoderInterfaceEPNS_21StreamCursorInterfaceE+0x1ec> @ imm = #0x44
  874498: e994000c     	ldmib	r4, {r2, r3}
  87449c: e3a00f96     	mov	r0, #600
  8744a0: e0030392     	mul	r3, r2, r3
  8744a4: e0000390     	mul	r0, r0, r3
  8744a8: ebea692d     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x565b4c
  8744ac: e3a01443     	mov	r1, #1124073472
  8744b0: e28118fa     	add	r1, r1, #16384000
  8744b4: ebea69f6     	bl	0x30ec94 <__aeabi_fdiv@plt> @ imm = #-0x565828
  8744b8: ebea6803     	bl	0x30e4cc <__aeabi_f2iz@plt> @ imm = #-0x565ff4
  8744bc: e5840060     	str	r0, [r4, #0x60]
  8744c0: ea000003     	b	0x8744d4 <_ZN3vox19DecoderNativeCursorC1EPNS_16DecoderInterfaceEPNS_21StreamCursorInterfaceE+0x1e0> @ imm = #0xc
  8744c4: e5840010     	str	r0, [r4, #0x10]
  8744c8: e5840004     	str	r0, [r4, #0x4]
  8744cc: e5840008     	str	r0, [r4, #0x8]
  8744d0: e584000c     	str	r0, [r4, #0xc]
  8744d4: e1a00004     	mov	r0, r4
  8744d8: e28dd028     	add	sp, sp, #40
  8744dc: e8bd87f0     	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
  8744e0: e3a03000     	mov	r3, #0
  8744e4: e5843010     	str	r3, [r4, #0x10]
  8744e8: e5843004     	str	r3, [r4, #0x4]
  8744ec: e5843008     	str	r3, [r4, #0x8]
  8744f0: e584300c     	str	r3, [r4, #0xc]
  8744f4: eafffff6     	b	0x8744d4 <_ZN3vox19DecoderNativeCursorC1EPNS_16DecoderInterfaceEPNS_21StreamCursorInterfaceE+0x1e0> @ imm = #-0x28
  8744f8: e5846010     	str	r6, [r4, #0x10]
  8744fc: e5846004     	str	r6, [r4, #0x4]
  874500: e5846008     	str	r6, [r4, #0x8]
  874504: e584600c     	str	r6, [r4, #0xc]
  874508: eafffff1     	b	0x8744d4 <_ZN3vox19DecoderNativeCursorC1EPNS_16DecoderInterfaceEPNS_21StreamCursorInterfaceE+0x1e0> @ imm = #-0x3c
  87450c: e5841010     	str	r1, [r4, #0x10]
  874510: e5841004     	str	r1, [r4, #0x4]
  874514: e5841008     	str	r1, [r4, #0x8]
  874518: e584100c     	str	r1, [r4, #0xc]
  87451c: eaffffec     	b	0x8744d4 <_ZN3vox19DecoderNativeCursorC1EPNS_16DecoderInterfaceEPNS_21StreamCursorInterfaceE+0x1e0> @ imm = #-0x50
  874520: e3a01000     	mov	r1, #0
  874524: e3a00e17     	mov	r0, #368
  874528: ebea7046     	bl	0x310648 <_Z8VoxAllocjN3vox10VoxMemHintE> @ imm = #-0x563ee8
  87452c: e594e030     	ldr	lr, [r4, #0x30]
  874530: e594c038     	ldr	r12, [r4, #0x38]
  874534: e5949024     	ldr	r9, [r4, #0x24]
  874538: e5947034     	ldr	r7, [r4, #0x34]
  87453c: e594602c     	ldr	r6, [r4, #0x2c]
  874540: e594803c     	ldr	r8, [r4, #0x3c]
  874544: e5942020     	ldr	r2, [r4, #0x20]
  874548: e5943028     	ldr	r3, [r4, #0x28]
  87454c: e1a01005     	mov	r1, r5
  874550: e1a0a000     	mov	r10, r0
  874554: e58de00c     	str	lr, [sp, #0xc]
  874558: e58dc010     	str	r12, [sp, #0x10]
  87455c: e58d9000     	str	r9, [sp]
  874560: e58d7004     	str	r7, [sp, #0x4]
  874564: e58d6008     	str	r6, [sp, #0x8]
  874568: e58d8014     	str	r8, [sp, #0x14]
  87456c: eb004fe8     	bl	0x888514 <_ZN3vox22VoxNativeSubDecoderPCMC1EPNS_21StreamCursorInterfaceEPNS_12NativeChunksEPNS_6StatesEPNS_13AudioSegmentsEPSt6vectorIS9_IiNS_10SAllocatorIiLNS_10VoxMemHintE0EEEENSA_ISD_LSB_0EEEEPNS_15TransitionRulesEPS9_IS9_INS_16TransitionParamsENSA_ISJ_LSB_0EEEENSA_ISL_LSB_0EEEEPSt3mapISbIcSt11char_traitsIcENSA_IcLSB_0EEEEiNS_13StringCompareENSA_ISt4pairIKST_iELSB_0EEEEPNS_22NativePlaylistsManagerE> @ imm = #0x13fa0
  874570: e3a01000     	mov	r1, #0
  874574: e584a048     	str	r10, [r4, #0x48]
  874578: e3a00f51     	mov	r0, #324
  87457c: ebea7031     	bl	0x310648 <_Z8VoxAllocjN3vox10VoxMemHintE> @ imm = #-0x563f3c
  874580: e594103c     	ldr	r1, [r4, #0x3c]
  874584: e1a05000     	mov	r5, r0
  874588: eb005038     	bl	0x888670 <_ZN3vox24NativeSubDecoderPCMStateC1EPNS_22NativePlaylistsManagerE> @ imm = #0x140e0
  87458c: e5845050     	str	r5, [r4, #0x50]
  874590: e3a01000     	mov	r1, #0
  874594: e3a00f51     	mov	r0, #324
  874598: ebea702a     	bl	0x310648 <_Z8VoxAllocjN3vox10VoxMemHintE> @ imm = #-0x563f58
  87459c: e594103c     	ldr	r1, [r4, #0x3c]
  8745a0: e1a05000     	mov	r5, r0
  8745a4: eb005031     	bl	0x888670 <_ZN3vox24NativeSubDecoderPCMStateC1EPNS_22NativePlaylistsManagerE> @ imm = #0x140c4
  8745a8: e5845054     	str	r5, [r4, #0x54]
  8745ac: eaffffa4     	b	0x874444 <_ZN3vox19DecoderNativeCursorC1EPNS_16DecoderInterfaceEPNS_21StreamCursorInterfaceE+0x150> @ imm = #-0x170
  8745b0: e3a01000     	mov	r1, #0
  8745b4: e3a00d07     	mov	r0, #448
  8745b8: ebea7022     	bl	0x310648 <_Z8VoxAllocjN3vox10VoxMemHintE> @ imm = #-0x563f78
  8745bc: e594e030     	ldr	lr, [r4, #0x30]
  8745c0: e594c038     	ldr	r12, [r4, #0x38]
  8745c4: e5949024     	ldr	r9, [r4, #0x24]
  8745c8: e5947034     	ldr	r7, [r4, #0x34]
  8745cc: e594602c     	ldr	r6, [r4, #0x2c]
  8745d0: e594803c     	ldr	r8, [r4, #0x3c]
  8745d4: e5942020     	ldr	r2, [r4, #0x20]
  8745d8: e5943028     	ldr	r3, [r4, #0x28]
  8745dc: e1a01005     	mov	r1, r5
  8745e0: e1a0a000     	mov	r10, r0
  8745e4: e58de00c     	str	lr, [sp, #0xc]
  8745e8: e58dc010     	str	r12, [sp, #0x10]
  8745ec: e58d9000     	str	r9, [sp]
  8745f0: e58d7004     	str	r7, [sp, #0x4]
  8745f4: e58d6008     	str	r6, [sp, #0x8]
  8745f8: e58d8014     	str	r8, [sp, #0x14]
  8745fc: eb00497e     	bl	0x886bfc <_ZN3vox27VoxNativeSubDecoderIMAADPCMC1EPNS_21StreamCursorInterfaceEPNS_12NativeChunksEPNS_6StatesEPNS_13AudioSegmentsEPSt6vectorIS9_IiNS_10SAllocatorIiLNS_10VoxMemHintE0EEEENSA_ISD_LSB_0EEEEPNS_15TransitionRulesEPS9_IS9_INS_16TransitionParamsENSA_ISJ_LSB_0EEEENSA_ISL_LSB_0EEEEPSt3mapISbIcSt11char_traitsIcENSA_IcLSB_0EEEEiNS_13StringCompareENSA_ISt4pairIKST_iELSB_0EEEEPNS_22NativePlaylistsManagerE> @ imm = #0x125f8
  874600: e3a01000     	mov	r1, #0
  874604: e584a048     	str	r10, [r4, #0x48]
  874608: e3a00e15     	mov	r0, #336
  87460c: ebea700d     	bl	0x310648 <_Z8VoxAllocjN3vox10VoxMemHintE> @ imm = #-0x563fcc
  874610: e594103c     	ldr	r1, [r4, #0x3c]
  874614: e1a05000     	mov	r5, r0
  874618: eb004a78     	bl	0x887000 <_ZN3vox29NativeSubDecoderIMAADPCMStateC1EPNS_22NativePlaylistsManagerE> @ imm = #0x129e0
  87461c: e5845050     	str	r5, [r4, #0x50]
  874620: e3a01000     	mov	r1, #0
  874624: e3a00e15     	mov	r0, #336
  874628: ebea7006     	bl	0x310648 <_Z8VoxAllocjN3vox10VoxMemHintE> @ imm = #-0x563fe8
  87462c: e594103c     	ldr	r1, [r4, #0x3c]
  874630: e1a05000     	mov	r5, r0
  874634: eb004a71     	bl	0x887000 <_ZN3vox29NativeSubDecoderIMAADPCMStateC1EPNS_22NativePlaylistsManagerE> @ imm = #0x129c4
  874638: e5845054     	str	r5, [r4, #0x54]
  87463c: eaffff80     	b	0x874444 <_ZN3vox19DecoderNativeCursorC1EPNS_16DecoderInterfaceEPNS_21StreamCursorInterfaceE+0x150> @ imm = #-0x200
  874640: 90 07 12 00  	.word	0x00120790
  874644: 10 0f 00 00  	.word	0x00000f10

; FUNCTION vox::DecoderNativeCursor::Decode(void*, int)
; ELF VA 0x00872218 SIZE 0xfc FILE OFFSET 0x872218 SHA-256 1b5c3b1c3b8d639640513de3e1986b2f88600a49837b1450525544ed32927973

work\libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

00872218 <_ZN3vox19DecoderNativeCursor6DecodeEPvi>:
  872218: e92d4070     	push	{r4, r5, r6, lr}
  87221c: e1a04000     	mov	r4, r0
  872220: e5900048     	ldr	r0, [r0, #0x48]
  872224: e1a05001     	mov	r5, r1
  872228: e1a06002     	mov	r6, r2
  87222c: e3500000     	cmp	r0, #0
  872230: 0a00002e     	beq	0x8722f0 <_ZN3vox19DecoderNativeCursor6DecodeEPvi+0xd8> @ imm = #0xb8
  872234: e594304c     	ldr	r3, [r4, #0x4c]
  872238: e3530001     	cmp	r3, #1
  87223c: 0a000004     	beq	0x872254 <_ZN3vox19DecoderNativeCursor6DecodeEPvi+0x3c> @ imm = #0x10
  872240: e594205c     	ldr	r2, [r4, #0x5c]
  872244: e5943060     	ldr	r3, [r4, #0x60]
  872248: e0862002     	add	r2, r6, r2
  87224c: e1520003     	cmp	r2, r3
  872250: da00000c     	ble	0x872288 <_ZN3vox19DecoderNativeCursor6DecodeEPvi+0x70> @ imm = #0x30
  872254: e5941050     	ldr	r1, [r4, #0x50]
  872258: e5942054     	ldr	r2, [r4, #0x54]
  87225c: e5943020     	ldr	r3, [r4, #0x20]
  872260: e5841054     	str	r1, [r4, #0x54]
  872264: e5842050     	str	r2, [r4, #0x50]
  872268: e1d332f0     	ldrsh	r3, [r3, #32]
  87226c: e3530011     	cmp	r3, #17
  872270: 0a000025     	beq	0x87230c <_ZN3vox19DecoderNativeCursor6DecodeEPvi+0xf4> @ imm = #0x94
  872274: eb005651     	bl	0x887bc0 <_ZN3vox22VoxNativeSubDecoderPCM8GetStateEPNS_24NativeSubDecoderPCMStateE> @ imm = #0x15944
  872278: e594305c     	ldr	r3, [r4, #0x5c]
  87227c: e3a02000     	mov	r2, #0
  872280: e584205c     	str	r2, [r4, #0x5c]
  872284: e5843058     	str	r3, [r4, #0x58]
  872288: e1a00004     	mov	r0, r4
  87228c: ebfffdb0     	bl	0x871954 <_ZN3vox19DecoderNativeCursor13GetStateIndexEv> @ imm = #-0x940
  872290: e2501000     	subs	r1, r0, #0
  872294: ba000016     	blt	0x8722f4 <_ZN3vox19DecoderNativeCursor6DecodeEPvi+0xdc> @ imm = #0x58
  872298: e5940048     	ldr	r0, [r4, #0x48]
  87229c: eb004de6     	bl	0x885a3c <_ZN3vox19VoxNativeSubDecoder8SetStateEi> @ imm = #0x13798
  8722a0: e3a03000     	mov	r3, #0
  8722a4: e5843064     	str	r3, [r4, #0x64]
  8722a8: e1a01005     	mov	r1, r5
  8722ac: e1a02006     	mov	r2, r6
  8722b0: e5940048     	ldr	r0, [r4, #0x48]
  8722b4: eb004e58     	bl	0x885c1c <_ZN3vox19VoxNativeSubDecoder6DecodeEPvi> @ imm = #0x13960
  8722b8: e594304c     	ldr	r3, [r4, #0x4c]
  8722bc: e3530000     	cmp	r3, #0
  8722c0: 0a000008     	beq	0x8722e8 <_ZN3vox19DecoderNativeCursor6DecodeEPvi+0xd0> @ imm = #0x20
  8722c4: e594c058     	ldr	r12, [r4, #0x58]
  8722c8: e594105c     	ldr	r1, [r4, #0x5c]
  8722cc: e5942064     	ldr	r2, [r4, #0x64]
  8722d0: e08cc000     	add	r12, r12, r0
  8722d4: e0811000     	add	r1, r1, r0
  8722d8: e0822000     	add	r2, r2, r0
  8722dc: e584c058     	str	r12, [r4, #0x58]
  8722e0: e584105c     	str	r1, [r4, #0x5c]
  8722e4: e5842064     	str	r2, [r4, #0x64]
  8722e8: e2833001     	add	r3, r3, #1
  8722ec: e584304c     	str	r3, [r4, #0x4c]
  8722f0: e8bd8070     	pop	{r4, r5, r6, pc}
  8722f4: e594104c     	ldr	r1, [r4, #0x4c]
  8722f8: e3510000     	cmp	r1, #0
  8722fc: 1affffe9     	bne	0x8722a8 <_ZN3vox19DecoderNativeCursor6DecodeEPvi+0x90> @ imm = #-0x5c
  872300: e5940048     	ldr	r0, [r4, #0x48]
  872304: eb004dcc     	bl	0x885a3c <_ZN3vox19VoxNativeSubDecoder8SetStateEi> @ imm = #0x13730
  872308: eaffffe6     	b	0x8722a8 <_ZN3vox19DecoderNativeCursor6DecodeEPvi+0x90> @ imm = #-0x68
  87230c: eb005090     	bl	0x886554 <_ZN3vox27VoxNativeSubDecoderIMAADPCM8GetStateEPNS_29NativeSubDecoderIMAADPCMStateE> @ imm = #0x14240
  872310: eaffffd8     	b	0x872278 <_ZN3vox19DecoderNativeCursor6DecodeEPvi+0x60> @ imm = #-0xa0

; FUNCTION vox::VoxNativeSubDecoder::Decode(void*, int)
; ELF VA 0x00885c1c SIZE 0x128 FILE OFFSET 0x885c1c SHA-256 a3de1e57db993e85cc4f46c895e5e1670be2a01c19c217ea6d8cbdbfa1cac579

work\libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

00885c1c <_ZN3vox19VoxNativeSubDecoder6DecodeEPvi>:
  885c1c: e92d47f0     	push	{r4, r5, r6, r7, r8, r9, r10, lr}
  885c20: e1d081f2     	ldrsh	r8, [r0, #18]
  885c24: e1d030fa     	ldrsh	r3, [r0, #10]
  885c28: e1a04000     	mov	r4, r0
  885c2c: e1a081c8     	asr	r8, r8, #3
  885c30: e0080893     	mul	r8, r3, r8
  885c34: e1a0a001     	mov	r10, r1
  885c38: e1a00002     	mov	r0, r2
  885c3c: e1a01008     	mov	r1, r8
  885c40: e1a06002     	mov	r6, r2
  885c44: ebea232e     	bl	0x30e904 <__aeabi_idivmod@plt> @ imm = #-0x577348
  885c48: e5947164     	ldr	r7, [r4, #0x164]
  885c4c: e0616006     	rsb	r6, r1, r6
  885c50: e3570000     	cmp	r7, #0
  885c54: ba000006     	blt	0x885c74 <_ZN3vox19VoxNativeSubDecoder6DecodeEPvi+0x58> @ imm = #0x18
  885c58: e1a01008     	mov	r1, r8
  885c5c: e1a00006     	mov	r0, r6
  885c60: ebea218f     	bl	0x30e2a4 <__aeabi_idiv@plt> @ imm = #-0x5779c4
  885c64: e594312c     	ldr	r3, [r4, #0x12c]
  885c68: e0800003     	add	r0, r0, r3
  885c6c: e1570000     	cmp	r7, r0
  885c70: da00001f     	ble	0x885cf4 <_ZN3vox19VoxNativeSubDecoder6DecodeEPvi+0xd8> @ imm = #0x7c
  885c74: e5943094     	ldr	r3, [r4, #0x94]
  885c78: e3530001     	cmp	r3, #1
  885c7c: da00000f     	ble	0x885cc0 <_ZN3vox19VoxNativeSubDecoder6DecodeEPvi+0xa4> @ imm = #0x3c
  885c80: e1a0100a     	mov	r1, r10
  885c84: e1a02006     	mov	r2, r6
  885c88: e1a00004     	mov	r0, r4
  885c8c: ebfffd71     	bl	0x885258 <_ZN3vox19VoxNativeSubDecoder19MixMultipleSegmentsEPsi> @ imm = #-0xa3c
  885c90: e1a05000     	mov	r5, r0
  885c94: e59430bc     	ldr	r3, [r4, #0xbc]
  885c98: e3530001     	cmp	r3, #1
  885c9c: da00001e     	ble	0x885d1c <_ZN3vox19VoxNativeSubDecoder6DecodeEPvi+0x100> @ imm = #0x78
  885ca0: e5943100     	ldr	r3, [r4, #0x100]
  885ca4: e3530001     	cmp	r3, #1
  885ca8: da000021     	ble	0x885d34 <_ZN3vox19VoxNativeSubDecoder6DecodeEPvi+0x118> @ imm = #0x84
  885cac: e5943144     	ldr	r3, [r4, #0x144]
  885cb0: e3530001     	cmp	r3, #1
  885cb4: da000013     	ble	0x885d08 <_ZN3vox19VoxNativeSubDecoder6DecodeEPvi+0xec> @ imm = #0x4c
  885cb8: e1a00005     	mov	r0, r5
  885cbc: e8bd87f0     	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
  885cc0: 1afffff3     	bne	0x885c94 <_ZN3vox19VoxNativeSubDecoder6DecodeEPvi+0x78> @ imm = #-0x34
  885cc4: e5943150     	ldr	r3, [r4, #0x150]
  885cc8: e3530000     	cmp	r3, #0
  885ccc: caffffeb     	bgt	0x885c80 <_ZN3vox19VoxNativeSubDecoder6DecodeEPvi+0x64> @ imm = #-0x54
  885cd0: e1a03004     	mov	r3, r4
  885cd4: e493c120     	ldr	r12, [r3], #288
  885cd8: e1a0100a     	mov	r1, r10
  885cdc: e1a02006     	mov	r2, r6
  885ce0: e1a00004     	mov	r0, r4
  885ce4: e1a0e00f     	mov	lr, pc
  885ce8: e59cf018     	ldr	pc, [r12, #0x18]
  885cec: e1a05000     	mov	r5, r0
  885cf0: eaffffe7     	b	0x885c94 <_ZN3vox19VoxNativeSubDecoder6DecodeEPvi+0x78> @ imm = #-0x64
  885cf4: e0637007     	rsb	r7, r3, r7
  885cf8: e5847168     	str	r7, [r4, #0x168]
  885cfc: e1a00004     	mov	r0, r4
  885d00: ebfffe8e     	bl	0x885740 <_ZN3vox19VoxNativeSubDecoder20UpdateSegmentsStatesEv> @ imm = #-0x5c8
  885d04: eaffffda     	b	0x885c74 <_ZN3vox19VoxNativeSubDecoder6DecodeEPvi+0x58> @ imm = #-0x98
  885d08: e1a00004     	mov	r0, r4
  885d0c: e2841e12     	add	r1, r4, #288
  885d10: ebfffa87     	bl	0x884734 <_ZN3vox19VoxNativeSubDecoder11StopSegmentEPNS_12SegmentStateE> @ imm = #-0x15e4
  885d14: e1a00005     	mov	r0, r5
  885d18: e8bd87f0     	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
  885d1c: e1a00004     	mov	r0, r4
  885d20: e2841098     	add	r1, r4, #152
  885d24: ebfffa82     	bl	0x884734 <_ZN3vox19VoxNativeSubDecoder11StopSegmentEPNS_12SegmentStateE> @ imm = #-0x15f8
  885d28: e5943100     	ldr	r3, [r4, #0x100]
  885d2c: e3530001     	cmp	r3, #1
  885d30: caffffdd     	bgt	0x885cac <_ZN3vox19VoxNativeSubDecoder6DecodeEPvi+0x90> @ imm = #-0x8c
  885d34: e1a00004     	mov	r0, r4
  885d38: e28410dc     	add	r1, r4, #220
  885d3c: ebfffa7c     	bl	0x884734 <_ZN3vox19VoxNativeSubDecoder11StopSegmentEPNS_12SegmentStateE> @ imm = #-0x1610
  885d40: eaffffd9     	b	0x885cac <_ZN3vox19VoxNativeSubDecoder6DecodeEPvi+0x90> @ imm = #-0x9c

; FUNCTION vox::VoxNativeSubDecoder::MixMultipleSegments(short*, int)
; ELF VA 0x00885258 SIZE 0x224 FILE OFFSET 0x885258 SHA-256 f3cf07848741aa0491723007af18edb762f7ed6b2f5ad9fcdd663be0e8b4f123

work\libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

00885258 <_ZN3vox19VoxNativeSubDecoder19MixMultipleSegmentsEPsi>:
  885258: e92d4ff8     	push	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
  88525c: e1a05000     	mov	r5, r0
  885260: e1d001f2     	ldrsh	r0, [r0, #18]
  885264: e1d530fa     	ldrsh	r3, [r5, #10]
  885268: e1a04001     	mov	r4, r1
  88526c: e1a001c0     	asr	r0, r0, #3
  885270: e0010093     	mul	r1, r3, r0
  885274: e1a00002     	mov	r0, r2
  885278: e1a07002     	mov	r7, r2
  88527c: ebea2408     	bl	0x30e2a4 <__aeabi_idiv@plt> @ imm = #-0x576fe0
  885280: e59f61e8     	ldr	r6, [pc, #0x1e8]        @ 0x885470 <_ZN3vox19VoxNativeSubDecoder19MixMultipleSegmentsEPsi+0x218>
  885284: e59fa1e8     	ldr	r10, [pc, #0x1e8]       @ 0x885474 <_ZN3vox19VoxNativeSubDecoder19MixMultipleSegmentsEPsi+0x21c>
  885288: e1a09000     	mov	r9, r0
  88528c: e08f6006     	add	r6, pc, r6
  885290: e796300a     	ldr	r3, [r6, r10]
  885294: e5933000     	ldr	r3, [r3]
  885298: e1500003     	cmp	r0, r3
  88529c: da00003e     	ble	0x88539c <_ZN3vox19VoxNativeSubDecoder19MixMultipleSegmentsEPsi+0x144> @ imm = #0xf8
  8852a0: e59f81d0     	ldr	r8, [pc, #0x1d0]        @ 0x885478 <_ZN3vox19VoxNativeSubDecoder19MixMultipleSegmentsEPsi+0x220>
  8852a4: e7963008     	ldr	r3, [r6, r8]
  8852a8: e5930000     	ldr	r0, [r3]
  8852ac: e3500000     	cmp	r0, #0
  8852b0: 0a000000     	beq	0x8852b8 <_ZN3vox19VoxNativeSubDecoder19MixMultipleSegmentsEPsi+0x60> @ imm = #0x0
  8852b4: ebea2c62     	bl	0x310444 <_Z7VoxFreePv> @ imm = #-0x574e78
  8852b8: e1a0b087     	lsl	r11, r7, #1
  8852bc: e1a0000b     	mov	r0, r11
  8852c0: ebea2c8c     	bl	0x3104f8 <_Z8VoxAllocj> @ imm = #-0x574dd0
  8852c4: e7963008     	ldr	r3, [r6, r8]
  8852c8: e3500000     	cmp	r0, #0
  8852cc: e5830000     	str	r0, [r3]
  8852d0: 0a00005e     	beq	0x885450 <_ZN3vox19VoxNativeSubDecoder19MixMultipleSegmentsEPsi+0x1f8> @ imm = #0x178
  8852d4: e796300a     	ldr	r3, [r6, r10]
  8852d8: e1a0200b     	mov	r2, r11
  8852dc: e3a01000     	mov	r1, #0
  8852e0: e5839000     	str	r9, [r3]
  8852e4: ebea245d     	bl	0x30e460 <memset@plt>   @ imm = #-0x576e8c
  8852e8: e59530bc     	ldr	r3, [r5, #0xbc]
  8852ec: e3530002     	cmp	r3, #2
  8852f0: d3a0a000     	movle	r10, #0
  8852f4: ca000033     	bgt	0x8853c8 <_ZN3vox19VoxNativeSubDecoder19MixMultipleSegmentsEPsi+0x170> @ imm = #0xcc
  8852f8: e5953100     	ldr	r3, [r5, #0x100]
  8852fc: e3530002     	cmp	r3, #2
  885300: ca000041     	bgt	0x88540c <_ZN3vox19VoxNativeSubDecoder19MixMultipleSegmentsEPsi+0x1b4> @ imm = #0x104
  885304: e1a02007     	mov	r2, r7
  885308: e1a01004     	mov	r1, r4
  88530c: e5953000     	ldr	r3, [r5]
  885310: e1a00005     	mov	r0, r5
  885314: e1a0e00f     	mov	lr, pc
  885318: e593f014     	ldr	pc, [r3, #0x14]
  88531c: e2853e12     	add	r3, r5, #288
  885320: e1a02000     	mov	r2, r0
  885324: e1a07000     	mov	r7, r0
  885328: e1a01004     	mov	r1, r4
  88532c: e1a00005     	mov	r0, r5
  885330: ebfffc6c     	bl	0x8844e8 <_ZN3vox19VoxNativeSubDecoder18MixSegmentInBufferEPsiPNS_12SegmentStateE> @ imm = #-0xe50
  885334: e1d520fa     	ldrsh	r2, [r5, #10]
  885338: e7963008     	ldr	r3, [r6, r8]
  88533c: e157000a     	cmp	r7, r10
  885340: b1a0700a     	movlt	r7, r10
  885344: e0090992     	mul	r9, r2, r9
  885348: e5930000     	ldr	r0, [r3]
  88534c: e3590000     	cmp	r9, #0
  885350: da00000f     	ble	0x885394 <_ZN3vox19VoxNativeSubDecoder19MixMultipleSegmentsEPsi+0x13c> @ imm = #0x3c
  885354: e1a09089     	lsl	r9, r9, #1
  885358: e3a03000     	mov	r3, #0
  88535c: e30fcfff     	movw	r12, #0xffff
  885360: e3075fff     	movw	r5, #0x7fff
  885364: e7902083     	ldr	r2, [r0, r3, lsl #1]
  885368: e2821902     	add	r1, r2, #32768
  88536c: e151000c     	cmp	r1, r12
  885370: 918420b3     	strhls	r2, [r4, r3]
  885374: 9a000003     	bls	0x885388 <_ZN3vox19VoxNativeSubDecoder19MixMultipleSegmentsEPsi+0x130> @ imm = #0xc
  885378: e3520000     	cmp	r2, #0
  88537c: a1a02005     	movge	r2, r5
  885380: b3a02902     	movlt	r2, #32768
  885384: e18420b3     	strh	r2, [r4, r3]
  885388: e2833002     	add	r3, r3, #2
  88538c: e1530009     	cmp	r3, r9
  885390: 1afffff3     	bne	0x885364 <_ZN3vox19VoxNativeSubDecoder19MixMultipleSegmentsEPsi+0x10c> @ imm = #-0x34
  885394: e1a00007     	mov	r0, r7
  885398: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
  88539c: e59f80d4     	ldr	r8, [pc, #0xd4]         @ 0x885478 <_ZN3vox19VoxNativeSubDecoder19MixMultipleSegmentsEPsi+0x220>
  8853a0: e1a0b087     	lsl	r11, r7, #1
  8853a4: e1a0200b     	mov	r2, r11
  8853a8: e7963008     	ldr	r3, [r6, r8]
  8853ac: e3a01000     	mov	r1, #0
  8853b0: e5930000     	ldr	r0, [r3]
  8853b4: ebea2429     	bl	0x30e460 <memset@plt>   @ imm = #-0x576f5c
  8853b8: e59530bc     	ldr	r3, [r5, #0xbc]
  8853bc: e3530002     	cmp	r3, #2
  8853c0: d3a0a000     	movle	r10, #0
  8853c4: daffffcb     	ble	0x8852f8 <_ZN3vox19VoxNativeSubDecoder19MixMultipleSegmentsEPsi+0xa0> @ imm = #-0xd4
  8853c8: e285b098     	add	r11, r5, #152
  8853cc: e595c000     	ldr	r12, [r5]
  8853d0: e1a01004     	mov	r1, r4
  8853d4: e1a02007     	mov	r2, r7
  8853d8: e1a0300b     	mov	r3, r11
  8853dc: e1a00005     	mov	r0, r5
  8853e0: e1a0e00f     	mov	lr, pc
  8853e4: e59cf018     	ldr	pc, [r12, #0x18]
  8853e8: e1a0a000     	mov	r10, r0
  8853ec: e1a0300b     	mov	r3, r11
  8853f0: e1a00005     	mov	r0, r5
  8853f4: e1a01004     	mov	r1, r4
  8853f8: e1a0200a     	mov	r2, r10
  8853fc: ebfffc39     	bl	0x8844e8 <_ZN3vox19VoxNativeSubDecoder18MixSegmentInBufferEPsiPNS_12SegmentStateE> @ imm = #-0xf1c
  885400: e5953100     	ldr	r3, [r5, #0x100]
  885404: e3530002     	cmp	r3, #2
  885408: daffffbd     	ble	0x885304 <_ZN3vox19VoxNativeSubDecoder19MixMultipleSegmentsEPsi+0xac> @ imm = #-0x10c
  88540c: e285b0dc     	add	r11, r5, #220
  885410: e1a01004     	mov	r1, r4
  885414: e1a02007     	mov	r2, r7
  885418: e1a0300b     	mov	r3, r11
  88541c: e595c000     	ldr	r12, [r5]
  885420: e1a00005     	mov	r0, r5
  885424: e1a0e00f     	mov	lr, pc
  885428: e59cf018     	ldr	pc, [r12, #0x18]
  88542c: e1a0300b     	mov	r3, r11
  885430: e1a0c000     	mov	r12, r0
  885434: e1a02000     	mov	r2, r0
  885438: e1a01004     	mov	r1, r4
  88543c: e1a00005     	mov	r0, r5
  885440: e15a000c     	cmp	r10, r12
  885444: b1a0a00c     	movlt	r10, r12
  885448: ebfffc26     	bl	0x8844e8 <_ZN3vox19VoxNativeSubDecoder18MixSegmentInBufferEPsiPNS_12SegmentStateE> @ imm = #-0xf68
  88544c: eaffffac     	b	0x885304 <_ZN3vox19VoxNativeSubDecoder19MixMultipleSegmentsEPsi+0xac> @ imm = #-0x150
  885450: e796200a     	ldr	r2, [r6, r10]
  885454: e3a03001     	mov	r3, #1
  885458: e1a07000     	mov	r7, r0
  88545c: e5820000     	str	r0, [r2]
  885460: e5853144     	str	r3, [r5, #0x144]
  885464: e58530bc     	str	r3, [r5, #0xbc]
  885468: e5853100     	str	r3, [r5, #0x100]
  88546c: eaffffc8     	b	0x885394 <_ZN3vox19VoxNativeSubDecoder19MixMultipleSegmentsEPsi+0x13c> @ imm = #-0xe0
  885470: 04 f8 10 00  	.word	0x0010f804
  885474: 58 06 00 00  	.word	0x00000658
  885478: a4 06 00 00  	.word	0x000006a4

; FUNCTION vox::VoxNativeSubDecoder::ApplyTransitionRule(TransitionRule*)
; ELF VA 0x008855e8 SIZE 0x158 FILE OFFSET 0x8855e8 SHA-256 0fffcb23c9d24fc7f30cb820337c48a605dbb4937ff22af7f6079593a1aa7914

work\libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

008855e8 <_ZN3vox19VoxNativeSubDecoder19ApplyTransitionRuleEPNS_14TransitionRuleE>:
  8855e8: e92d4070     	push	{r4, r5, r6, lr}
  8855ec: e1a05001     	mov	r5, r1
  8855f0: e1a04000     	mov	r4, r0
  8855f4: ebfffb6f     	bl	0x8843b8 <_ZN3vox19VoxNativeSubDecoder28GetNextDyingSegmentLifeStateEv> @ imm = #-0x1244
  8855f8: e5953000     	ldr	r3, [r5]
  8855fc: e3530001     	cmp	r3, #1
  885600: 0a000014     	beq	0x885658 <_ZN3vox19VoxNativeSubDecoder19ApplyTransitionRuleEPNS_14TransitionRuleE+0x70> @ imm = #0x50
  885604: e5d4304c     	ldrb	r3, [r4, #0x4c]
  885608: e3530000     	cmp	r3, #0
  88560c: 1a00003c     	bne	0x885704 <_ZN3vox19VoxNativeSubDecoder19ApplyTransitionRuleEPNS_14TransitionRuleE+0x11c> @ imm = #0xf0
  885610: e5940030     	ldr	r0, [r4, #0x30]
  885614: e5941048     	ldr	r1, [r4, #0x48]
  885618: e3a02000     	mov	r2, #0
  88561c: e3e03000     	mvn	r3, #0
  885620: ebfff398     	bl	0x882488 <_ZN3vox22NativePlaylistsManager18GetPlaylistElementEiii> @ imm = #-0x31a0
  885624: e1a06000     	mov	r6, r0
  885628: e3560000     	cmp	r6, #0
  88562c: 0a000031     	beq	0x8856f8 <_ZN3vox19VoxNativeSubDecoder19ApplyTransitionRuleEPNS_14TransitionRuleE+0x110> @ imm = #0xc4
  885630: e284c078     	add	r12, r4, #120
  885634: e8b6000f     	ldm	r6!, {r0, r1, r2, r3}
  885638: e8ac000f     	stm	r12!, {r0, r1, r2, r3}
  88563c: e5963000     	ldr	r3, [r6]
  885640: e58c3000     	str	r3, [r12]
  885644: e5953000     	ldr	r3, [r5]
  885648: e584307c     	str	r3, [r4, #0x7c]
  88564c: e5953008     	ldr	r3, [r5, #0x8]
  885650: e5843080     	str	r3, [r4, #0x80]
  885654: e8bd8070     	pop	{r4, r5, r6, pc}
  885658: e3500002     	cmp	r0, #2
  88565c: 0a00002e     	beq	0x88571c <_ZN3vox19VoxNativeSubDecoder19ApplyTransitionRuleEPNS_14TransitionRuleE+0x134> @ imm = #0xb8
  885660: e5943044     	ldr	r3, [r4, #0x44]
  885664: e5941040     	ldr	r1, [r4, #0x40]
  885668: e1530001     	cmp	r3, r1
  88566c: 0a00002f     	beq	0x885730 <_ZN3vox19VoxNativeSubDecoder19ApplyTransitionRuleEPNS_14TransitionRuleE+0x148> @ imm = #0xbc
  885670: e5940030     	ldr	r0, [r4, #0x30]
  885674: e5942048     	ldr	r2, [r4, #0x48]
  885678: ebfff563     	bl	0x882c0c <_ZN3vox22NativePlaylistsManager27TransposePlaylistParametersEii> @ imm = #-0x2a74
  88567c: e1a00004     	mov	r0, r4
  885680: ebffffac     	bl	0x885538 <_ZN3vox19VoxNativeSubDecoder25SwapOldAndCurrentSegmentsEv> @ imm = #-0x150
  885684: e3a02001     	mov	r2, #1
  885688: e3e03000     	mvn	r3, #0
  88568c: e5941048     	ldr	r1, [r4, #0x48]
  885690: e5940030     	ldr	r0, [r4, #0x30]
  885694: ebfff37b     	bl	0x882488 <_ZN3vox22NativePlaylistsManager18GetPlaylistElementEiii> @ imm = #-0x3214
  885698: e1a06000     	mov	r6, r0
  88569c: e594000c     	ldr	r0, [r4, #0xc]
  8856a0: ebea24af     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x576d44
  8856a4: e5951018     	ldr	r1, [r5, #0x18]
  8856a8: ebea25af     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x576944
  8856ac: ebea2386     	bl	0x30e4cc <__aeabi_f2iz@plt> @ imm = #-0x5771e8
  8856b0: e3500000     	cmp	r0, #0
  8856b4: caffffdb     	bgt	0x885628 <_ZN3vox19VoxNativeSubDecoder19ApplyTransitionRuleEPNS_14TransitionRuleE+0x40> @ imm = #-0x94
  8856b8: e5943100     	ldr	r3, [r4, #0x100]
  8856bc: e3530002     	cmp	r3, #2
  8856c0: c5943094     	ldrgt	r3, [r4, #0x94]
  8856c4: c3a02000     	movgt	r2, #0
  8856c8: c5842100     	strgt	r2, [r4, #0x100]
  8856cc: c2433001     	subgt	r3, r3, #1
  8856d0: c5843094     	strgt	r3, [r4, #0x94]
  8856d4: e59430bc     	ldr	r3, [r4, #0xbc]
  8856d8: e3530002     	cmp	r3, #2
  8856dc: daffffd1     	ble	0x885628 <_ZN3vox19VoxNativeSubDecoder19ApplyTransitionRuleEPNS_14TransitionRuleE+0x40> @ imm = #-0xbc
  8856e0: e5943094     	ldr	r3, [r4, #0x94]
  8856e4: e3a02000     	mov	r2, #0
  8856e8: e58420bc     	str	r2, [r4, #0xbc]
  8856ec: e2433001     	sub	r3, r3, #1
  8856f0: e5843094     	str	r3, [r4, #0x94]
  8856f4: eaffffcb     	b	0x885628 <_ZN3vox19VoxNativeSubDecoder19ApplyTransitionRuleEPNS_14TransitionRuleE+0x40> @ imm = #-0xd4
  8856f8: e3e03000     	mvn	r3, #0
  8856fc: e5843078     	str	r3, [r4, #0x78]
  885700: e8bd8070     	pop	{r4, r5, r6, pc}
  885704: e5940030     	ldr	r0, [r4, #0x30]
  885708: e5941048     	ldr	r1, [r4, #0x48]
  88570c: ebfff370     	bl	0x8824d4 <_ZN3vox22NativePlaylistsManager13ResetPlaylistEi> @ imm = #-0x3240
  885710: e3a03000     	mov	r3, #0
  885714: e5c4304c     	strb	r3, [r4, #0x4c]
  885718: eaffffbc     	b	0x885610 <_ZN3vox19VoxNativeSubDecoder19ApplyTransitionRuleEPNS_14TransitionRuleE+0x28> @ imm = #-0x110
  88571c: e5940030     	ldr	r0, [r4, #0x30]
  885720: e5941044     	ldr	r1, [r4, #0x44]
  885724: e5942048     	ldr	r2, [r4, #0x48]
  885728: ebfff537     	bl	0x882c0c <_ZN3vox22NativePlaylistsManager27TransposePlaylistParametersEii> @ imm = #-0x2b24
  88572c: eaffffd4     	b	0x885684 <_ZN3vox19VoxNativeSubDecoder19ApplyTransitionRuleEPNS_14TransitionRuleE+0x9c> @ imm = #-0xb0
  885730: e5940030     	ldr	r0, [r4, #0x30]
  885734: ebfff36b     	bl	0x8824e8 <_ZN3vox22NativePlaylistsManager26SetPlaylistToPreviousStateEi> @ imm = #-0x3254
  885738: e5941040     	ldr	r1, [r4, #0x40]
  88573c: eaffffcb     	b	0x885670 <_ZN3vox19VoxNativeSubDecoder19ApplyTransitionRuleEPNS_14TransitionRuleE+0x88> @ imm = #-0xd4

; FUNCTION vox::VoxNativeSubDecoder::UpdateSegmentsStates()
; ELF VA 0x00885740 SIZE 0x244 FILE OFFSET 0x885740 SHA-256 c8ce27e9b649e0a64ae6b939422bc3b767614f9327b7325886d0f8b78cc0c804

work\libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

00885740 <_ZN3vox19VoxNativeSubDecoder20UpdateSegmentsStatesEv>:
  885740: e92d41f0     	push	{r4, r5, r6, r7, r8, lr}
  885744: e5901020     	ldr	r1, [r0, #0x20]
  885748: e590303c     	ldr	r3, [r0, #0x3c]
  88574c: e5902038     	ldr	r2, [r0, #0x38]
  885750: e5911004     	ldr	r1, [r1, #0x4]
  885754: e1a04000     	mov	r4, r0
  885758: e1530002     	cmp	r3, r2
  88575c: e7915103     	ldr	r5, [r1, r3, lsl #2]
  885760: 0a00000f     	beq	0x8857a4 <_ZN3vox19VoxNativeSubDecoder20UpdateSegmentsStatesEv+0x64> @ imm = #0x3c
  885764: e3520000     	cmp	r2, #0
  885768: ba00000d     	blt	0x8857a4 <_ZN3vox19VoxNativeSubDecoder20UpdateSegmentsStatesEv+0x64> @ imm = #0x34
  88576c: e590301c     	ldr	r3, [r0, #0x1c]
  885770: e5902090     	ldr	r2, [r0, #0x90]
  885774: e3a06024     	mov	r6, #36
  885778: e5933004     	ldr	r3, [r3, #0x4]
  88577c: e2807078     	add	r7, r0, #120
  885780: e0263296     	mla	r6, r6, r2, r3
  885784: e1a01006     	mov	r1, r6
  885788: ebffff96     	bl	0x8855e8 <_ZN3vox19VoxNativeSubDecoder19ApplyTransitionRuleEPNS_14TransitionRuleE> @ imm = #-0x1a8
  88578c: e5943078     	ldr	r3, [r4, #0x78]
  885790: e3530000     	cmp	r3, #0
  885794: aa000014     	bge	0x8857ec <_ZN3vox19VoxNativeSubDecoder20UpdateSegmentsStatesEv+0xac> @ imm = #0x50
  885798: e3730001     	cmn	r3, #1
  88579c: 1a000030     	bne	0x885864 <_ZN3vox19VoxNativeSubDecoder20UpdateSegmentsStatesEv+0x124> @ imm = #0xc0
  8857a0: ea000050     	b	0x8858e8 <_ZN3vox19VoxNativeSubDecoder20UpdateSegmentsStatesEv+0x1a8> @ imm = #0x140
  8857a4: e5940030     	ldr	r0, [r4, #0x30]
  8857a8: e1a01005     	mov	r1, r5
  8857ac: e3a02000     	mov	r2, #0
  8857b0: e3e03000     	mvn	r3, #0
  8857b4: ebfff333     	bl	0x882488 <_ZN3vox22NativePlaylistsManager18GetPlaylistElementEiii> @ imm = #-0x3334
  8857b8: e250c000     	subs	r12, r0, #0
  8857bc: 0a000045     	beq	0x8858d8 <_ZN3vox19VoxNativeSubDecoder20UpdateSegmentsStatesEv+0x198> @ imm = #0x114
  8857c0: e2847078     	add	r7, r4, #120
  8857c4: e1a06007     	mov	r6, r7
  8857c8: e8bc000f     	ldm	r12!, {r0, r1, r2, r3}
  8857cc: e8a6000f     	stm	r6!, {r0, r1, r2, r3}
  8857d0: e59c2000     	ldr	r2, [r12]
  8857d4: e1a03006     	mov	r3, r6
  8857d8: e3a06000     	mov	r6, #0
  8857dc: e5832000     	str	r2, [r3]
  8857e0: e5943078     	ldr	r3, [r4, #0x78]
  8857e4: e3530000     	cmp	r3, #0
  8857e8: baffffea     	blt	0x885798 <_ZN3vox19VoxNativeSubDecoder20UpdateSegmentsStatesEv+0x58> @ imm = #-0x58
  8857ec: e1a00004     	mov	r0, r4
  8857f0: e1a01006     	mov	r1, r6
  8857f4: ebfffb1d     	bl	0x884470 <_ZN3vox19VoxNativeSubDecoder20IsExtraSegmentNeededEPNS_14TransitionRuleE> @ imm = #-0x138c
  8857f8: e2508000     	subs	r8, r0, #0
  8857fc: 05943094     	ldreq	r3, [r4, #0x94]
  885800: 0a000004     	beq	0x885818 <_ZN3vox19VoxNativeSubDecoder20UpdateSegmentsStatesEv+0xd8> @ imm = #0x10
  885804: e5943094     	ldr	r3, [r4, #0x94]
  885808: e3530002     	cmp	r3, #2
  88580c: ca00002a     	bgt	0x8858bc <_ZN3vox19VoxNativeSubDecoder20UpdateSegmentsStatesEv+0x17c> @ imm = #0xa8
  885810: e2833001     	add	r3, r3, #1
  885814: e5843094     	str	r3, [r4, #0x94]
  885818: e3530002     	cmp	r3, #2
  88581c: ca000026     	bgt	0x8858bc <_ZN3vox19VoxNativeSubDecoder20UpdateSegmentsStatesEv+0x17c> @ imm = #0x98
  885820: 1a000002     	bne	0x885830 <_ZN3vox19VoxNativeSubDecoder20UpdateSegmentsStatesEv+0xf0> @ imm = #0x8
  885824: e1a00004     	mov	r0, r4
  885828: e1a01006     	mov	r1, r6
  88582c: ebfffbed     	bl	0x8847e8 <_ZN3vox19VoxNativeSubDecoder21UpdateOldSegmentStateEPNS_14TransitionRuleE> @ imm = #-0x104c
  885830: e1a01006     	mov	r1, r6
  885834: e1a02008     	mov	r2, r8
  885838: e1a00004     	mov	r0, r4
  88583c: ebfffce0     	bl	0x884bc4 <_ZN3vox19VoxNativeSubDecoder25UpdateCurrentSegmentStateEPNS_14TransitionRuleEb> @ imm = #-0xc80
  885840: e594312c     	ldr	r3, [r4, #0x12c]
  885844: e3530000     	cmp	r3, #0
  885848: 13a03001     	movne	r3, #1
  88584c: 15c43160     	strbne	r3, [r4, #0x160]
  885850: e594313c     	ldr	r3, [r4, #0x13c]
  885854: e3530001     	cmp	r3, #1
  885858: 0a000027     	beq	0x8858fc <_ZN3vox19VoxNativeSubDecoder20UpdateSegmentsStatesEv+0x1bc> @ imm = #0x9c
  88585c: e3e03000     	mvn	r3, #0
  885860: e5843164     	str	r3, [r4, #0x164]
  885864: e5940038     	ldr	r0, [r4, #0x38]
  885868: e5942044     	ldr	r2, [r4, #0x44]
  88586c: e594103c     	ldr	r1, [r4, #0x3c]
  885870: e5943048     	ldr	r3, [r4, #0x48]
  885874: e5840034     	str	r0, [r4, #0x34]
  885878: e5841038     	str	r1, [r4, #0x38]
  88587c: e5842040     	str	r2, [r4, #0x40]
  885880: e5843044     	str	r3, [r4, #0x44]
  885884: e2845050     	add	r5, r4, #80
  885888: e284c064     	add	r12, r4, #100
  88588c: e8bc000f     	ldm	r12!, {r0, r1, r2, r3}
  885890: e8a5000f     	stm	r5!, {r0, r1, r2, r3}
  885894: e59c3000     	ldr	r3, [r12]
  885898: e2846064     	add	r6, r4, #100
  88589c: e5853000     	str	r3, [r5]
  8858a0: e8b7000f     	ldm	r7!, {r0, r1, r2, r3}
  8858a4: e8a6000f     	stm	r6!, {r0, r1, r2, r3}
  8858a8: e5973000     	ldr	r3, [r7]
  8858ac: e58c3000     	str	r3, [r12]
  8858b0: e5943090     	ldr	r3, [r4, #0x90]
  8858b4: e584308c     	str	r3, [r4, #0x8c]
  8858b8: e8bd81f0     	pop	{r4, r5, r6, r7, r8, pc}
  8858bc: e1a00004     	mov	r0, r4
  8858c0: e1a01006     	mov	r1, r6
  8858c4: ebfffc7a     	bl	0x884ab4 <_ZN3vox19VoxNativeSubDecoder23UpdateDyingSegmentStateEPNS_14TransitionRuleE> @ imm = #-0xe18
  8858c8: e1a00004     	mov	r0, r4
  8858cc: e1a01006     	mov	r1, r6
  8858d0: ebfffbc4     	bl	0x8847e8 <_ZN3vox19VoxNativeSubDecoder21UpdateOldSegmentStateEPNS_14TransitionRuleE> @ imm = #-0x10f0
  8858d4: eaffffd5     	b	0x885830 <_ZN3vox19VoxNativeSubDecoder20UpdateSegmentsStatesEv+0xf0> @ imm = #-0xac
  8858d8: e1a07004     	mov	r7, r4
  8858dc: e3e03000     	mvn	r3, #0
  8858e0: e5a73078     	str	r3, [r7, #0x78]!
  8858e4: e1a0600c     	mov	r6, r12
  8858e8: e1a01006     	mov	r1, r6
  8858ec: e1a00004     	mov	r0, r4
  8858f0: e3a02000     	mov	r2, #0
  8858f4: ebfffcb2     	bl	0x884bc4 <_ZN3vox19VoxNativeSubDecoder25UpdateCurrentSegmentStateEPNS_14TransitionRuleEb> @ imm = #-0xd38
  8858f8: eaffffd9     	b	0x885864 <_ZN3vox19VoxNativeSubDecoder20UpdateSegmentsStatesEv+0x124> @ imm = #-0x9c
  8858fc: e1a01005     	mov	r1, r5
  885900: e5940030     	ldr	r0, [r4, #0x30]
  885904: ebfff2ef     	bl	0x8824c8 <_ZN3vox22NativePlaylistsManager25PeekAtNextPlaylistElementEi> @ imm = #-0x3444
  885908: e3500000     	cmp	r0, #0
  88590c: 0affffd2     	beq	0x88585c <_ZN3vox19VoxNativeSubDecoder20UpdateSegmentsStatesEv+0x11c> @ imm = #-0xb8
  885910: e5903008     	ldr	r3, [r0, #0x8]
  885914: e3530001     	cmp	r3, #1
  885918: 0a00000b     	beq	0x88594c <_ZN3vox19VoxNativeSubDecoder20UpdateSegmentsStatesEv+0x20c> @ imm = #0x2c
  88591c: e5943084     	ldr	r3, [r4, #0x84]
  885920: e3530001     	cmp	r3, #1
  885924: 1affffce     	bne	0x885864 <_ZN3vox19VoxNativeSubDecoder20UpdateSegmentsStatesEv+0x124> @ imm = #-0xc8
  885928: e594202c     	ldr	r2, [r4, #0x2c]
  88592c: e5943120     	ldr	r3, [r4, #0x120]
  885930: e3a0100c     	mov	r1, #12
  885934: e5922000     	ldr	r2, [r2]
  885938: e0030391     	mul	r3, r1, r3
  88593c: e7923003     	ldr	r3, [r2, r3]
  885940: e5933008     	ldr	r3, [r3, #0x8]
  885944: e5843164     	str	r3, [r4, #0x164]
  885948: eaffffc5     	b	0x885864 <_ZN3vox19VoxNativeSubDecoder20UpdateSegmentsStatesEv+0x124> @ imm = #-0xec
  88594c: e5901000     	ldr	r1, [r0]
  885950: e594302c     	ldr	r3, [r4, #0x2c]
  885954: e5940120     	ldr	r0, [r4, #0x120]
  885958: e3a0200c     	mov	r2, #12
  88595c: e5933000     	ldr	r3, [r3]
  885960: e0010192     	mul	r1, r2, r1
  885964: e0020092     	mul	r2, r2, r0
  885968: e7931001     	ldr	r1, [r3, r1]
  88596c: e7932002     	ldr	r2, [r3, r2]
  885970: e5913004     	ldr	r3, [r1, #0x4]
  885974: e5922008     	ldr	r2, [r2, #0x8]
  885978: e0633002     	rsb	r3, r3, r2
  88597c: e5843164     	str	r3, [r4, #0x164]
  885980: eaffffb7     	b	0x885864 <_ZN3vox19VoxNativeSubDecoder20UpdateSegmentsStatesEv+0x124> @ imm = #-0x124

; FUNCTION vox::VoxNativeSubDecoder::InterpretTransitionRule(int)
; ELF VA 0x00885984 SIZE 0xb8 FILE OFFSET 0x885984 SHA-256 18f9dae9063ef0066e83ff615af64c128a58a42a8f15429c69947e0e5f203114

work\libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

00885984 <_ZN3vox19VoxNativeSubDecoder23InterpretTransitionRuleEi>:
  885984: e92d4010     	push	{r4, lr}
  885988: e590301c     	ldr	r3, [r0, #0x1c]
  88598c: e3a02024     	mov	r2, #36
  885990: e1a04000     	mov	r4, r0
  885994: e5933004     	ldr	r3, [r3, #0x4]
  885998: e0233192     	mla	r3, r2, r1, r3
  88599c: e5933004     	ldr	r3, [r3, #0x4]
  8859a0: e3530000     	cmp	r3, #0
  8859a4: 0a000014     	beq	0x8859fc <_ZN3vox19VoxNativeSubDecoder23InterpretTransitionRuleEi+0x78> @ imm = #0x50
  8859a8: e5903020     	ldr	r3, [r0, #0x20]
  8859ac: e590203c     	ldr	r2, [r0, #0x3c]
  8859b0: e5900030     	ldr	r0, [r0, #0x30]
  8859b4: e5933004     	ldr	r3, [r3, #0x4]
  8859b8: e7931102     	ldr	r1, [r3, r2, lsl #2]
  8859bc: ebfff2c1     	bl	0x8824c8 <_ZN3vox22NativePlaylistsManager25PeekAtNextPlaylistElementEi> @ imm = #-0x34fc
  8859c0: e3500000     	cmp	r0, #0
  8859c4: 0a00000b     	beq	0x8859f8 <_ZN3vox19VoxNativeSubDecoder23InterpretTransitionRuleEi+0x74> @ imm = #0x2c
  8859c8: e5903008     	ldr	r3, [r0, #0x8]
  8859cc: e3530001     	cmp	r3, #1
  8859d0: 0a00000b     	beq	0x885a04 <_ZN3vox19VoxNativeSubDecoder23InterpretTransitionRuleEi+0x80> @ imm = #0x2c
  8859d4: e594202c     	ldr	r2, [r4, #0x2c]
  8859d8: e5943120     	ldr	r3, [r4, #0x120]
  8859dc: e3a0100c     	mov	r1, #12
  8859e0: e5922000     	ldr	r2, [r2]
  8859e4: e0030391     	mul	r3, r1, r3
  8859e8: e7923003     	ldr	r3, [r2, r3]
  8859ec: e5933008     	ldr	r3, [r3, #0x8]
  8859f0: e5843164     	str	r3, [r4, #0x164]
  8859f4: e8bd8010     	pop	{r4, pc}
  8859f8: e1a00004     	mov	r0, r4
  8859fc: e8bd4010     	pop	{r4, lr}
  885a00: eaffff4e     	b	0x885740 <_ZN3vox19VoxNativeSubDecoder20UpdateSegmentsStatesEv> @ imm = #-0x2c8
  885a04: e5901000     	ldr	r1, [r0]
  885a08: e594302c     	ldr	r3, [r4, #0x2c]
  885a0c: e5940120     	ldr	r0, [r4, #0x120]
  885a10: e3a0200c     	mov	r2, #12
  885a14: e5933000     	ldr	r3, [r3]
  885a18: e0010192     	mul	r1, r2, r1
  885a1c: e0020092     	mul	r2, r2, r0
  885a20: e7931001     	ldr	r1, [r3, r1]
  885a24: e7932002     	ldr	r2, [r3, r2]
  885a28: e5913004     	ldr	r3, [r1, #0x4]
  885a2c: e5922008     	ldr	r2, [r2, #0x8]
  885a30: e0633002     	rsb	r3, r3, r2
  885a34: e5843164     	str	r3, [r4, #0x164]
  885a38: e8bd8010     	pop	{r4, pc}

; FUNCTION vox::VoxNativeSubDecoderPCM::DecodeSegment(void*, int, SegmentState*)
; ELF VA 0x00888050 SIZE 0x25c FILE OFFSET 0x888050 SHA-256 d4ecd59deda4c5eee3a2b033e9bb13e086b83801bff32b2bacdbed99bd0c485c

work\libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

00888050 <_ZN3vox22VoxNativeSubDecoderPCM13DecodeSegmentEPviPNS_12SegmentStateE>:
  888050: e92d4ff8     	push	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
  888054: e1a04000     	mov	r4, r0
  888058: e5900018     	ldr	r0, [r0, #0x18]
  88805c: e1a05003     	mov	r5, r3
  888060: e5933000     	ldr	r3, [r3]
  888064: e590c004     	ldr	r12, [r0, #0x4]
  888068: e3a00018     	mov	r0, #24
  88806c: e0000390     	mul	r0, r0, r3
  888070: e5956008     	ldr	r6, [r5, #0x8]
  888074: e79ce000     	ldr	lr, [r12, r0]
  888078: e5943004     	ldr	r3, [r4, #0x4]
  88807c: e594c014     	ldr	r12, [r4, #0x14]
  888080: e086600e     	add	r6, r6, lr
  888084: e1a00003     	mov	r0, r3
  888088: e5933000     	ldr	r3, [r3]
  88808c: e086600c     	add	r6, r6, r12
  888090: e1a09001     	mov	r9, r1
  888094: e1a08002     	mov	r8, r2
  888098: e1d4a1b0     	ldrh	r10, [r4, #16]
  88809c: e5957014     	ldr	r7, [r5, #0x14]
  8880a0: e1a0e00f     	mov	lr, pc
  8880a4: e593f018     	ldr	pc, [r3, #0x18]
  8880a8: e1560000     	cmp	r6, r0
  8880ac: 0a000006     	beq	0x8880cc <_ZN3vox22VoxNativeSubDecoderPCM13DecodeSegmentEPviPNS_12SegmentStateE+0x7c> @ imm = #0x18
  8880b0: e5943004     	ldr	r3, [r4, #0x4]
  8880b4: e1a01006     	mov	r1, r6
  8880b8: e3a02000     	mov	r2, #0
  8880bc: e1a00003     	mov	r0, r3
  8880c0: e5933000     	ldr	r3, [r3]
  8880c4: e1a0e00f     	mov	lr, pc
  8880c8: e593f010     	ldr	pc, [r3, #0x10]
  8880cc: e3580000     	cmp	r8, #0
  8880d0: d3a06000     	movle	r6, #0
  8880d4: da000042     	ble	0x8881e4 <_ZN3vox22VoxNativeSubDecoderPCM13DecodeSegmentEPviPNS_12SegmentStateE+0x194> @ imm = #0x108
  8880d8: e6bfa07a     	sxth	r10, r10
  8880dc: e027aa97     	mla	r7, r7, r10, r10
  8880e0: e3a06000     	mov	r6, #0
  8880e4: e3a0b00c     	mov	r11, #12
  8880e8: ea00002b     	b	0x88819c <_ZN3vox22VoxNativeSubDecoderPCM13DecodeSegmentEPviPNS_12SegmentStateE+0x14c> @ imm = #0xac
  8880ec: e5943004     	ldr	r3, [r4, #0x4]
  8880f0: e0891006     	add	r1, r9, r6
  8880f4: e1a00003     	mov	r0, r3
  8880f8: e5933000     	ldr	r3, [r3]
  8880fc: e1a0e00f     	mov	lr, pc
  888100: e593f01c     	ldr	pc, [r3, #0x1c]
  888104: e5952008     	ldr	r2, [r5, #0x8]
  888108: e1a03000     	mov	r3, r0
  88810c: e3530000     	cmp	r3, #0
  888110: e0822000     	add	r2, r2, r0
  888114: e5852008     	str	r2, [r5, #0x8]
  888118: 0a00002f     	beq	0x8881dc <_ZN3vox22VoxNativeSubDecoderPCM13DecodeSegmentEPviPNS_12SegmentStateE+0x18c> @ imm = #0xbc
  88811c: e5950008     	ldr	r0, [r5, #0x8]
  888120: e1a0100a     	mov	r1, r10
  888124: e0866003     	add	r6, r6, r3
  888128: ebea1ac7     	bl	0x30ec4c <__aeabi_uidiv@plt> @ imm = #-0x5794e4
  88812c: e5953014     	ldr	r3, [r5, #0x14]
  888130: e585000c     	str	r0, [r5, #0xc]
  888134: e1500003     	cmp	r0, r3
  888138: 9a000015     	bls	0x888194 <_ZN3vox22VoxNativeSubDecoderPCM13DecodeSegmentEPviPNS_12SegmentStateE+0x144> @ imm = #0x54
  88813c: e5952018     	ldr	r2, [r5, #0x18]
  888140: e1b030a2     	lsrs	r3, r2, #1
  888144: 0595301c     	ldreq	r3, [r5, #0x1c]
  888148: 0a000002     	beq	0x888158 <_ZN3vox22VoxNativeSubDecoderPCM13DecodeSegmentEPviPNS_12SegmentStateE+0x108> @ imm = #0x8
  88814c: e595301c     	ldr	r3, [r5, #0x1c]
  888150: e1520003     	cmp	r2, r3
  888154: 0a000037     	beq	0x888238 <_ZN3vox22VoxNativeSubDecoderPCM13DecodeSegmentEPviPNS_12SegmentStateE+0x1e8> @ imm = #0xdc
  888158: e2433001     	sub	r3, r3, #1
  88815c: e3530000     	cmp	r3, #0
  888160: e585301c     	str	r3, [r5, #0x1c]
  888164: 1a000005     	bne	0x888180 <_ZN3vox22VoxNativeSubDecoderPCM13DecodeSegmentEPviPNS_12SegmentStateE+0x130> @ imm = #0x14
  888168: e5953020     	ldr	r3, [r5, #0x20]
  88816c: e3530001     	cmp	r3, #1
  888170: 0a000038     	beq	0x888258 <_ZN3vox22VoxNativeSubDecoderPCM13DecodeSegmentEPviPNS_12SegmentStateE+0x208> @ imm = #0xe0
  888174: e5953004     	ldr	r3, [r5, #0x4]
  888178: e3530001     	cmp	r3, #1
  88817c: 0a000045     	beq	0x888298 <_ZN3vox22VoxNativeSubDecoderPCM13DecodeSegmentEPviPNS_12SegmentStateE+0x248> @ imm = #0x114
  888180: e5953024     	ldr	r3, [r5, #0x24]
  888184: e3530003     	cmp	r3, #3
  888188: 0a00001b     	beq	0x8881fc <_ZN3vox22VoxNativeSubDecoderPCM13DecodeSegmentEPviPNS_12SegmentStateE+0x1ac> @ imm = #0x6c
  88818c: e3530004     	cmp	r3, #4
  888190: 0a000023     	beq	0x888224 <_ZN3vox22VoxNativeSubDecoderPCM13DecodeSegmentEPviPNS_12SegmentStateE+0x1d4> @ imm = #0x8c
  888194: e1580006     	cmp	r8, r6
  888198: da000011     	ble	0x8881e4 <_ZN3vox22VoxNativeSubDecoderPCM13DecodeSegmentEPviPNS_12SegmentStateE+0x194> @ imm = #0x44
  88819c: e5951008     	ldr	r1, [r5, #0x8]
  8881a0: e0662008     	rsb	r2, r6, r8
  8881a4: e0823001     	add	r3, r2, r1
  8881a8: e1530007     	cmp	r3, r7
  8881ac: 9affffce     	bls	0x8880ec <_ZN3vox22VoxNativeSubDecoderPCM13DecodeSegmentEPviPNS_12SegmentStateE+0x9c> @ imm = #-0xc8
  8881b0: e5943004     	ldr	r3, [r4, #0x4]
  8881b4: e0612007     	rsb	r2, r1, r7
  8881b8: e0891006     	add	r1, r9, r6
  8881bc: e1a00003     	mov	r0, r3
  8881c0: e5933000     	ldr	r3, [r3]
  8881c4: e1a0e00f     	mov	lr, pc
  8881c8: e593f01c     	ldr	pc, [r3, #0x1c]
  8881cc: e1a03000     	mov	r3, r0
  8881d0: e3530000     	cmp	r3, #0
  8881d4: e5857008     	str	r7, [r5, #0x8]
  8881d8: 1affffcf     	bne	0x88811c <_ZN3vox22VoxNativeSubDecoderPCM13DecodeSegmentEPviPNS_12SegmentStateE+0xcc> @ imm = #-0xc4
  8881dc: e3a03001     	mov	r3, #1
  8881e0: e5853024     	str	r3, [r5, #0x24]
  8881e4: e5953004     	ldr	r3, [r5, #0x4]
  8881e8: e1a00006     	mov	r0, r6
  8881ec: e3530003     	cmp	r3, #3
  8881f0: 03a03001     	moveq	r3, #1
  8881f4: 05853024     	streq	r3, [r5, #0x24]
  8881f8: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
  8881fc: e595301c     	ldr	r3, [r5, #0x1c]
  888200: e3530000     	cmp	r3, #0
  888204: 0affffe2     	beq	0x888194 <_ZN3vox22VoxNativeSubDecoderPCM13DecodeSegmentEPviPNS_12SegmentStateE+0x144> @ imm = #-0x78
  888208: e5943000     	ldr	r3, [r4]
  88820c: e1a00004     	mov	r0, r4
  888210: e3e01000     	mvn	r1, #0
  888214: e1a02005     	mov	r2, r5
  888218: e1a0e00f     	mov	lr, pc
  88821c: e593f028     	ldr	pc, [r3, #0x28]
  888220: eaffffdb     	b	0x888194 <_ZN3vox22VoxNativeSubDecoderPCM13DecodeSegmentEPviPNS_12SegmentStateE+0x144> @ imm = #-0x94
  888224: e595200c     	ldr	r2, [r5, #0xc]
  888228: e5953014     	ldr	r3, [r5, #0x14]
  88822c: e1520003     	cmp	r2, r3
  888230: 9affffd7     	bls	0x888194 <_ZN3vox22VoxNativeSubDecoderPCM13DecodeSegmentEPviPNS_12SegmentStateE+0x144> @ imm = #-0xa4
  888234: eaffffe8     	b	0x8881dc <_ZN3vox22VoxNativeSubDecoderPCM13DecodeSegmentEPviPNS_12SegmentStateE+0x18c> @ imm = #-0x60
  888238: e594102c     	ldr	r1, [r4, #0x2c]
  88823c: e5952000     	ldr	r2, [r5]
  888240: e5911000     	ldr	r1, [r1]
  888244: e002029b     	mul	r2, r11, r2
  888248: e7912002     	ldr	r2, [r1, r2]
  88824c: e5922004     	ldr	r2, [r2, #0x4]
  888250: e5852010     	str	r2, [r5, #0x10]
  888254: eaffffbf     	b	0x888158 <_ZN3vox22VoxNativeSubDecoderPCM13DecodeSegmentEPviPNS_12SegmentStateE+0x108> @ imm = #-0x104
  888258: e594202c     	ldr	r2, [r4, #0x2c]
  88825c: e5953000     	ldr	r3, [r5]
  888260: e5922000     	ldr	r2, [r2]
  888264: e003039b     	mul	r3, r11, r3
  888268: e0821003     	add	r1, r2, r3
  88826c: e7923003     	ldr	r3, [r2, r3]
  888270: e5912004     	ldr	r2, [r1, #0x4]
  888274: e0632002     	rsb	r2, r3, r2
  888278: e1a02142     	asr	r2, r2, #2
  88827c: e2422001     	sub	r2, r2, #1
  888280: e7933102     	ldr	r3, [r3, r2, lsl #2]
  888284: e027aa93     	mla	r7, r3, r10, r10
  888288: e5853014     	str	r3, [r5, #0x14]
  88828c: e5953004     	ldr	r3, [r5, #0x4]
  888290: e3530001     	cmp	r3, #1
  888294: 1affffb9     	bne	0x888180 <_ZN3vox22VoxNativeSubDecoderPCM13DecodeSegmentEPviPNS_12SegmentStateE+0x130> @ imm = #-0x11c
  888298: e1a00004     	mov	r0, r4
  88829c: ebfff527     	bl	0x885740 <_ZN3vox19VoxNativeSubDecoder20UpdateSegmentsStatesEv> @ imm = #-0x2b64
  8882a0: e5957014     	ldr	r7, [r5, #0x14]
  8882a4: e027aa97     	mla	r7, r7, r10, r10
  8882a8: eaffffb4     	b	0x888180 <_ZN3vox22VoxNativeSubDecoderPCM13DecodeSegmentEPviPNS_12SegmentStateE+0x130> @ imm = #-0x130

; FUNCTION vox::VoxNativeSubDecoderIMAADPCM::DecodeSegment(void*, int, SegmentState*)
; ELF VA 0x008875b8 SIZE 0x2a8 FILE OFFSET 0x8875b8 SHA-256 b69a840232fde9b9ab43e96b647fdb086f2c43e5cf43ccafe98ff561a2b67c64

work\libDungeonHunter2.so:	file format elf32-littlearm

Disassembly of section .text:

008875b8 <_ZN3vox27VoxNativeSubDecoderIMAADPCM13DecodeSegmentEPviPNS_12SegmentStateE>:
  8875b8: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  8875bc: e1a04000     	mov	r4, r0
  8875c0: e1d001f2     	ldrsh	r0, [r0, #18]
  8875c4: e1d450fa     	ldrsh	r5, [r4, #10]
  8875c8: e24dd00c     	sub	sp, sp, #12
  8875cc: e58d1004     	str	r1, [sp, #0x4]
  8875d0: e1a011c0     	asr	r1, r0, #3
  8875d4: e0010195     	mul	r1, r5, r1
  8875d8: e1a00002     	mov	r0, r2
  8875dc: e1a06003     	mov	r6, r3
  8875e0: ebea1b2f     	bl	0x30e2a4 <__aeabi_idiv@plt> @ imm = #-0x579344
  8875e4: e3500000     	cmp	r0, #0
  8875e8: e58d0000     	str	r0, [sp]
  8875ec: e596903c     	ldr	r9, [r6, #0x3c]
  8875f0: d3a00000     	movle	r0, #0
  8875f4: da000060     	ble	0x88777c <_ZN3vox27VoxNativeSubDecoderIMAADPCM13DecodeSegmentEPviPNS_12SegmentStateE+0x1c4> @ imm = #0x180
  8875f8: e084a109     	add	r10, r4, r9, lsl #2
  8875fc: e1a0b109     	lsl	r11, r9, #2
  887600: e28aaf61     	add	r10, r10, #388
  887604: e59d8000     	ldr	r8, [sp]
  887608: e289905e     	add	r9, r9, #94
  88760c: ea00003e     	b	0x88770c <_ZN3vox27VoxNativeSubDecoderIMAADPCM13DecodeSegmentEPviPNS_12SegmentStateE+0x154> @ imm = #0xf8
  887610: e7940109     	ldr	r0, [r4, r9, lsl #2]
  887614: e59a3000     	ldr	r3, [r10]
  887618: e1530000     	cmp	r3, r0
  88761c: 0a000048     	beq	0x887744 <_ZN3vox27VoxNativeSubDecoderIMAADPCM13DecodeSegmentEPviPNS_12SegmentStateE+0x18c> @ imm = #0x120
  887620: e3500000     	cmp	r0, #0
  887624: 0a000050     	beq	0x88776c <_ZN3vox27VoxNativeSubDecoderIMAADPCM13DecodeSegmentEPviPNS_12SegmentStateE+0x1b4> @ imm = #0x140
  887628: e5967014     	ldr	r7, [r6, #0x14]
  88762c: e596300c     	ldr	r3, [r6, #0xc]
  887630: e59a1000     	ldr	r1, [r10]
  887634: e2877001     	add	r7, r7, #1
  887638: e0637007     	rsb	r7, r3, r7
  88763c: e5943174     	ldr	r3, [r4, #0x174]
  887640: e59d2000     	ldr	r2, [sp]
  887644: e0610000     	rsb	r0, r1, r0
  887648: e793300b     	ldr	r3, [r3, r11]
  88764c: e0010195     	mul	r1, r5, r1
  887650: e1580007     	cmp	r8, r7
  887654: b1a07008     	movlt	r7, r8
  887658: a1a07007     	movge	r7, r7
  88765c: e1570000     	cmp	r7, r0
  887660: a1a07000     	movge	r7, r0
  887664: e0680002     	rsb	r0, r8, r2
  887668: e0831081     	add	r1, r3, r1, lsl #1
  88766c: e0020795     	mul	r2, r5, r7
  887670: e59d3004     	ldr	r3, [sp, #0x4]
  887674: e0000095     	mul	r0, r5, r0
  887678: e1a02082     	lsl	r2, r2, #1
  88767c: e0830080     	add	r0, r3, r0, lsl #1
  887680: ebea1c78     	bl	0x30e868 <memcpy@plt>   @ imm = #-0x578e20
  887684: e59a3000     	ldr	r3, [r10]
  887688: e0678008     	rsb	r8, r7, r8
  88768c: e0873003     	add	r3, r7, r3
  887690: e58a3000     	str	r3, [r10]
  887694: e596200c     	ldr	r2, [r6, #0xc]
  887698: e5963014     	ldr	r3, [r6, #0x14]
  88769c: e0877002     	add	r7, r7, r2
  8876a0: e1570003     	cmp	r7, r3
  8876a4: e586700c     	str	r7, [r6, #0xc]
  8876a8: 9a000015     	bls	0x887704 <_ZN3vox27VoxNativeSubDecoderIMAADPCM13DecodeSegmentEPviPNS_12SegmentStateE+0x14c> @ imm = #0x54
  8876ac: e5962018     	ldr	r2, [r6, #0x18]
  8876b0: e1b000a2     	lsrs	r0, r2, #1
  8876b4: 0596301c     	ldreq	r3, [r6, #0x1c]
  8876b8: 0a000002     	beq	0x8876c8 <_ZN3vox27VoxNativeSubDecoderIMAADPCM13DecodeSegmentEPviPNS_12SegmentStateE+0x110> @ imm = #0x8
  8876bc: e596301c     	ldr	r3, [r6, #0x1c]
  8876c0: e1520003     	cmp	r2, r3
  8876c4: 0a000049     	beq	0x8877f0 <_ZN3vox27VoxNativeSubDecoderIMAADPCM13DecodeSegmentEPviPNS_12SegmentStateE+0x238> @ imm = #0x124
  8876c8: e2433001     	sub	r3, r3, #1
  8876cc: e3530000     	cmp	r3, #0
  8876d0: e586301c     	str	r3, [r6, #0x1c]
  8876d4: 1a000005     	bne	0x8876f0 <_ZN3vox27VoxNativeSubDecoderIMAADPCM13DecodeSegmentEPviPNS_12SegmentStateE+0x138> @ imm = #0x14
  8876d8: e5963020     	ldr	r3, [r6, #0x20]
  8876dc: e3530001     	cmp	r3, #1
  8876e0: 0a00004b     	beq	0x887814 <_ZN3vox27VoxNativeSubDecoderIMAADPCM13DecodeSegmentEPviPNS_12SegmentStateE+0x25c> @ imm = #0x12c
  8876e4: e5963004     	ldr	r3, [r6, #0x4]
  8876e8: e3530001     	cmp	r3, #1
  8876ec: 0a000058     	beq	0x887854 <_ZN3vox27VoxNativeSubDecoderIMAADPCM13DecodeSegmentEPviPNS_12SegmentStateE+0x29c> @ imm = #0x160
  8876f0: e5963024     	ldr	r3, [r6, #0x24]
  8876f4: e3530003     	cmp	r3, #3
  8876f8: 0a000029     	beq	0x8877a4 <_ZN3vox27VoxNativeSubDecoderIMAADPCM13DecodeSegmentEPviPNS_12SegmentStateE+0x1ec> @ imm = #0xa4
  8876fc: e3530004     	cmp	r3, #4
  887700: 0a000035     	beq	0x8877dc <_ZN3vox27VoxNativeSubDecoderIMAADPCM13DecodeSegmentEPviPNS_12SegmentStateE+0x224> @ imm = #0xd4
  887704: e3580000     	cmp	r8, #0
  887708: da000030     	ble	0x8877d0 <_ZN3vox27VoxNativeSubDecoderIMAADPCM13DecodeSegmentEPviPNS_12SegmentStateE+0x218> @ imm = #0xc0
  88770c: e5d63040     	ldrb	r3, [r6, #0x40]
  887710: e3530000     	cmp	r3, #0
  887714: 0affffbd     	beq	0x887610 <_ZN3vox27VoxNativeSubDecoderIMAADPCM13DecodeSegmentEPviPNS_12SegmentStateE+0x58> @ imm = #-0x10c
  887718: e5943000     	ldr	r3, [r4]
  88771c: e1a00004     	mov	r0, r4
  887720: e1a01006     	mov	r1, r6
  887724: e1a0e00f     	mov	lr, pc
  887728: e593f02c     	ldr	pc, [r3, #0x2c]
  88772c: e3a00000     	mov	r0, #0
  887730: e5c60040     	strb	r0, [r6, #0x40]
  887734: e7940109     	ldr	r0, [r4, r9, lsl #2]
  887738: e59a3000     	ldr	r3, [r10]
  88773c: e1530000     	cmp	r3, r0
  887740: 1affffb6     	bne	0x887620 <_ZN3vox27VoxNativeSubDecoderIMAADPCM13DecodeSegmentEPviPNS_12SegmentStateE+0x68> @ imm = #-0x128
  887744: e5943174     	ldr	r3, [r4, #0x174]
  887748: e1a02006     	mov	r2, r6
  88774c: e1a00004     	mov	r0, r4
  887750: e793100b     	ldr	r1, [r3, r11]
  887754: ebfffe43     	bl	0x887068 <_ZN3vox27VoxNativeSubDecoderIMAADPCM11DecodeBlockEPvPNS_12SegmentStateE> @ imm = #-0x6f4
  887758: e3a02000     	mov	r2, #0
  88775c: e3500000     	cmp	r0, #0
  887760: e7840109     	str	r0, [r4, r9, lsl #2]
  887764: e58a2000     	str	r2, [r10]
  887768: 1affffae     	bne	0x887628 <_ZN3vox27VoxNativeSubDecoderIMAADPCM13DecodeSegmentEPviPNS_12SegmentStateE+0x70> @ imm = #-0x148
  88776c: e3a03001     	mov	r3, #1
  887770: e5863024     	str	r3, [r6, #0x24]
  887774: e59d3000     	ldr	r3, [sp]
  887778: e0680003     	rsb	r0, r8, r3
  88777c: e5963004     	ldr	r3, [r6, #0x4]
  887780: e3530003     	cmp	r3, #3
  887784: 03a03001     	moveq	r3, #1
  887788: 05863024     	streq	r3, [r6, #0x24]
  88778c: e1d431f2     	ldrsh	r3, [r4, #18]
  887790: e1a031c3     	asr	r3, r3, #3
  887794: e0050395     	mul	r5, r5, r3
  887798: e0000590     	mul	r0, r0, r5
  88779c: e28dd00c     	add	sp, sp, #12
  8877a0: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  8877a4: e596301c     	ldr	r3, [r6, #0x1c]
  8877a8: e3530000     	cmp	r3, #0
  8877ac: 0affffd4     	beq	0x887704 <_ZN3vox27VoxNativeSubDecoderIMAADPCM13DecodeSegmentEPviPNS_12SegmentStateE+0x14c> @ imm = #-0xb0
  8877b0: e5943000     	ldr	r3, [r4]
  8877b4: e1a00004     	mov	r0, r4
  8877b8: e3e01000     	mvn	r1, #0
  8877bc: e1a02006     	mov	r2, r6
  8877c0: e1a0e00f     	mov	lr, pc
  8877c4: e593f028     	ldr	pc, [r3, #0x28]
  8877c8: e3580000     	cmp	r8, #0
  8877cc: caffffce     	bgt	0x88770c <_ZN3vox27VoxNativeSubDecoderIMAADPCM13DecodeSegmentEPviPNS_12SegmentStateE+0x154> @ imm = #-0xc8
  8877d0: e59d2000     	ldr	r2, [sp]
  8877d4: e0680002     	rsb	r0, r8, r2
  8877d8: eaffffe7     	b	0x88777c <_ZN3vox27VoxNativeSubDecoderIMAADPCM13DecodeSegmentEPviPNS_12SegmentStateE+0x1c4> @ imm = #-0x64
  8877dc: e596200c     	ldr	r2, [r6, #0xc]
  8877e0: e5963014     	ldr	r3, [r6, #0x14]
  8877e4: e1520003     	cmp	r2, r3
  8877e8: 9affffc5     	bls	0x887704 <_ZN3vox27VoxNativeSubDecoderIMAADPCM13DecodeSegmentEPviPNS_12SegmentStateE+0x14c> @ imm = #-0xec
  8877ec: eaffffde     	b	0x88776c <_ZN3vox27VoxNativeSubDecoderIMAADPCM13DecodeSegmentEPviPNS_12SegmentStateE+0x1b4> @ imm = #-0x88
  8877f0: e594102c     	ldr	r1, [r4, #0x2c]
  8877f4: e5962000     	ldr	r2, [r6]
  8877f8: e3a0000c     	mov	r0, #12
  8877fc: e5911000     	ldr	r1, [r1]
  887800: e0020290     	mul	r2, r0, r2
  887804: e7912002     	ldr	r2, [r1, r2]
  887808: e5922004     	ldr	r2, [r2, #0x4]
  88780c: e5862010     	str	r2, [r6, #0x10]
  887810: eaffffac     	b	0x8876c8 <_ZN3vox27VoxNativeSubDecoderIMAADPCM13DecodeSegmentEPviPNS_12SegmentStateE+0x110> @ imm = #-0x150
  887814: e594202c     	ldr	r2, [r4, #0x2c]
  887818: e5963000     	ldr	r3, [r6]
  88781c: e5921000     	ldr	r1, [r2]
  887820: e3a0200c     	mov	r2, #12
  887824: e0030392     	mul	r3, r2, r3
  887828: e0812003     	add	r2, r1, r3
  88782c: e5922004     	ldr	r2, [r2, #0x4]
  887830: e7913003     	ldr	r3, [r1, r3]
  887834: e0632002     	rsb	r2, r3, r2
  887838: e1a02142     	asr	r2, r2, #2
  88783c: e2422001     	sub	r2, r2, #1
  887840: e7933102     	ldr	r3, [r3, r2, lsl #2]
  887844: e5863014     	str	r3, [r6, #0x14]
  887848: e5963004     	ldr	r3, [r6, #0x4]
  88784c: e3530001     	cmp	r3, #1
  887850: 1affffa6     	bne	0x8876f0 <_ZN3vox27VoxNativeSubDecoderIMAADPCM13DecodeSegmentEPviPNS_12SegmentStateE+0x138> @ imm = #-0x168
  887854: e1a00004     	mov	r0, r4
  887858: ebfff7b8     	bl	0x885740 <_ZN3vox19VoxNativeSubDecoder20UpdateSegmentsStatesEv> @ imm = #-0x2120
  88785c: eaffffa3     	b	0x8876f0 <_ZN3vox27VoxNativeSubDecoderIMAADPCM13DecodeSegmentEPviPNS_12SegmentStateE+0x138> @ imm = #-0x174
