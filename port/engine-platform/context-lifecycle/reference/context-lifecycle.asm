; Exact ARM disassembly of selected APK-matched ranges. The manifest hashes these and additional resource routines.
; Instruction encodings are checked against ELF bytes; see context-lifecycle-ranges.json.

; renderer_native_init: VA 0x005311c8, size 0x4c, SHA-256 108813528c1cbb7e997a0e158ea82c6aa3f231e33f4f8225be093214981f90d9
  5311c8: e59f3038     	ldr	r3, [pc, #0x38]         @ 0x531208 <Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeInit+0x40>
  5311cc: e59f1038     	ldr	r1, [pc, #0x38]         @ 0x53120c <Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeInit+0x44>
  5311d0: e92d4010     	push	{r4, lr}
  5311d4: e08f3003     	add	r3, pc, r3
  5311d8: e7934001     	ldr	r4, [r3, r1]
  5311dc: e5941000     	ldr	r1, [r4]
  5311e0: e3510000     	cmp	r1, #0
  5311e4: 0a000003     	beq	0x5311f8 <Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeInit+0x30> @ imm = #0xc
  5311e8: e59f1020     	ldr	r1, [pc, #0x20]         @ 0x531210 <Java_com_gameloft_android_GAND_GloftD2SS_GameRenderer_nativeInit+0x48>
  5311ec: e7933001     	ldr	r3, [r3, r1]
  5311f0: e5832000     	str	r2, [r3]
  5311f4: e8bd8010     	pop	{r4, pc}
  5311f8: ebfffe6a     	bl	0x530ba8 <appInit>      @ imm = #-0x658
  5311fc: e3a03001     	mov	r3, #1
  531200: e5843000     	str	r3, [r4]
  531204: e8bd8010     	pop	{r4, pc}
  531208: bc 38 46 00  	.word	0x004638bc
  53120c: 8c 0f 00 00  	.word	0x00000f8c
  531210: d4 0b 00 00  	.word	0x00000bd4

; common_gl_reinit_driver: VA 0x005b1b10, size 0xc8, SHA-256 a451a65ed13f1e51792991187640f68de14295d66ba4080ba0b475e62f37cb4e
  5b1b10: e92d41f0     	push	{r4, r5, r6, r7, r8, lr}
  5b1b14: e1a06000     	mov	r6, r0
  5b1b18: e5903000     	ldr	r3, [r0]
  5b1b1c: e59070d4     	ldr	r7, [r0, #0xd4]
  5b1b20: e1a0e00f     	mov	lr, pc
  5b1b24: e593f040     	ldr	pc, [r3, #0x40]
  5b1b28: e59630c8     	ldr	r3, [r6, #0xc8]
  5b1b2c: e3a04000     	mov	r4, #0
  5b1b30: e1a05006     	mov	r5, r6
  5b1b34: e5933000     	ldr	r3, [r3]
  5b1b38: e1a00003     	mov	r0, r3
  5b1b3c: e5933000     	ldr	r3, [r3]
  5b1b40: e1a0e00f     	mov	lr, pc
  5b1b44: e593f010     	ldr	pc, [r3, #0x10]
  5b1b48: e5972060     	ldr	r2, [r7, #0x60]
  5b1b4c: e5973064     	ldr	r3, [r7, #0x64]
  5b1b50: e1a00004     	mov	r0, r4
  5b1b54: e1a01004     	mov	r1, r4
  5b1b58: ebf57105     	bl	0x30df74 <glViewport@plt> @ imm = #-0x2a3bec
  5b1b5c: e3a01001     	mov	r1, #1
  5b1b60: e3000d05     	movw	r0, #0xd05
  5b1b64: ebf57180     	bl	0x30e16c <glPixelStorei@plt> @ imm = #-0x2a3a00
  5b1b68: e2871060     	add	r1, r7, #96
  5b1b6c: e1a00006     	mov	r0, r6
  5b1b70: ebffffcf     	bl	0x5b1ab4 <_ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE10driverInitERKNS_4core11dimension2dIiEE> @ imm = #-0xc4
  5b1b74: e59f7058     	ldr	r7, [pc, #0x58]         @ 0x5b1bd4 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE12ReinitDriverEv+0xc4>
  5b1b78: e08f7007     	add	r7, pc, r7
  5b1b7c: e2877e11     	add	r7, r7, #272
  5b1b80: e7970004     	ldr	r0, [r7, r4]
  5b1b84: e2844004     	add	r4, r4, #4
  5b1b88: e3500000     	cmp	r0, #0
  5b1b8c: 1a00000d     	bne	0x5b1bc8 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE12ReinitDriverEv+0xb8> @ imm = #0x34
  5b1b90: e3540014     	cmp	r4, #20
  5b1b94: e2855004     	add	r5, r5, #4
  5b1b98: 1afffff8     	bne	0x5b1b80 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE12ReinitDriverEv+0x70> @ imm = #-0x20
  5b1b9c: e1a00006     	mov	r0, r6
  5b1ba0: e5963000     	ldr	r3, [r6]
  5b1ba4: e1a0e00f     	mov	lr, pc
  5b1ba8: e593f074     	ldr	pc, [r3, #0x74]
  5b1bac: e1a00006     	mov	r0, r6
  5b1bb0: e5963000     	ldr	r3, [r6]
  5b1bb4: e3a01001     	mov	r1, #1
  5b1bb8: e1a0e00f     	mov	lr, pc
  5b1bbc: e593f0a8     	ldr	pc, [r3, #0xa8]
  5b1bc0: e3a00001     	mov	r0, #1
  5b1bc4: e8bd81f0     	pop	{r4, r5, r6, r7, r8, pc}
  5b1bc8: e5951254     	ldr	r1, [r5, #0x254]
  5b1bcc: ebf57088     	bl	0x30ddf4 <glBindBuffer@plt> @ imm = #-0x2a3de0
  5b1bd0: eaffffee     	b	0x5b1b90 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE12ReinitDriverEv+0x80> @ imm = #-0x48
  5b1bd4: bc e4 32 00  	.word	0x0032e4bc

; programmable_driver_init: VA 0x005b1ab4, size 0x5c, SHA-256 c809e4a84d5afbdfe2baf6e3052f7b8abda01906e07768f5bcc198c8de25b548
  5b1ab4: e92d4010     	push	{r4, lr}
  5b1ab8: e1a04000     	mov	r4, r0
  5b1abc: e24dd008     	sub	sp, sp, #8
  5b1ac0: e59010d8     	ldr	r1, [r0, #0xd8]
  5b1ac4: e2800e82     	add	r0, r0, #2080
  5b1ac8: eb04b7c0     	bl	0x6df9d0 <_ZN6glitch5video18CGLSLShaderHandler17initShaderHandlerEPNS0_14IShaderManagerE> @ imm = #0x12df00
  5b1acc: e28d1004     	add	r1, sp, #4
  5b1ad0: e3080869     	movw	r0, #0x8869
  5b1ad4: ebf572a3     	bl	0x30e568 <glGetIntegerv@plt> @ imm = #-0x2a3574
  5b1ad8: e59d3004     	ldr	r3, [sp, #0x4]
  5b1adc: e3a02002     	mov	r2, #2
  5b1ae0: e58420a0     	str	r2, [r4, #0xa0]
  5b1ae4: e5843824     	str	r3, [r4, #0x824]
  5b1ae8: e308009d     	movw	r0, #0x809d
  5b1aec: ebf57294     	bl	0x30e544 <glEnable@plt> @ imm = #-0x2a35b0
  5b1af0: e3011102     	movw	r1, #0x1102
  5b1af4: e3000c52     	movw	r0, #0xc52
  5b1af8: ebf572a9     	bl	0x30e5a4 <glHint@plt>   @ imm = #-0x2a355c
  5b1afc: e3a00eb2     	mov	r0, #2848
  5b1b00: ebf5728f     	bl	0x30e544 <glEnable@plt> @ imm = #-0x2a35c4
  5b1b04: e3a00001     	mov	r0, #1
  5b1b08: e28dd008     	add	sp, sp, #8
  5b1b0c: e8bd8010     	pop	{r4, pc}

; common_gl_reload_shaders: VA 0x005b15f0, size 0x144, SHA-256 c59508df30084d08aa1de1b963632019c01f048970bafda15ed4eed265c3653e
  5b15f0: e92d41f0     	push	{r4, r5, r6, r7, r8, lr}
  5b15f4: e1a06000     	mov	r6, r0
  5b15f8: e59030d8     	ldr	r3, [r0, #0xd8]
  5b15fc: e59f0124     	ldr	r0, [pc, #0x124]        @ 0x5b1728 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE13reloadShadersEv+0x138>
  5b1600: e2865e7f     	add	r5, r6, #2032
  5b1604: e1d312ba     	ldrh	r1, [r3, #42]
  5b1608: e08f0000     	add	r0, pc, r0
  5b160c: eb01671b     	bl	0x60b280 <_ZN6glitch2os7Printer5printEPKcz> @ imm = #0x59c6c
  5b1610: e59630d8     	ldr	r3, [r6, #0xd8]
  5b1614: e285500c     	add	r5, r5, #12
  5b1618: e59f710c     	ldr	r7, [pc, #0x10c]        @ 0x5b172c <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE13reloadShadersEv+0x13c>
  5b161c: e593200c     	ldr	r2, [r3, #0xc]
  5b1620: e2831004     	add	r1, r3, #4
  5b1624: e08f7007     	add	r7, pc, r7
  5b1628: e58627fc     	str	r2, [r6, #0x7fc]
  5b162c: e5952000     	ldr	r2, [r5]
  5b1630: e3a00000     	mov	r0, #0
  5b1634: e59f80f4     	ldr	r8, [pc, #0xf4]         @ 0x5b1730 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE13reloadShadersEv+0x140>
  5b1638: e1510002     	cmp	r1, r2
  5b163c: 0a000027     	beq	0x5b16e0 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE13reloadShadersEv+0xf0> @ imm = #0x9c
  5b1640: e5931020     	ldr	r1, [r3, #0x20]
  5b1644: e593301c     	ldr	r3, [r3, #0x1c]
  5b1648: e1d221bc     	ldrh	r2, [r2, #28]
  5b164c: e0631001     	rsb	r1, r3, r1
  5b1650: e15201c1     	cmp	r2, r1, asr #3
  5b1654: 27973008     	ldrhs	r3, [r7, r8]
  5b1658: 30833182     	addlo	r3, r3, r2, lsl #3
  5b165c: e5934000     	ldr	r4, [r3]
  5b1660: e3540000     	cmp	r4, #0
  5b1664: 15943004     	ldrne	r3, [r4, #0x4]
  5b1668: 12833002     	addne	r3, r3, #2
  5b166c: 15843004     	strne	r3, [r4, #0x4]
  5b1670: e3500000     	cmp	r0, #0
  5b1674: 0a000000     	beq	0x5b167c <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE13reloadShadersEv+0x8c> @ imm = #0x0
  5b1678: ebf5afc1     	bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x2940fc
  5b167c: e3540000     	cmp	r4, #0
  5b1680: 0a000001     	beq	0x5b168c <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE13reloadShadersEv+0x9c> @ imm = #0x4
  5b1684: e1a00004     	mov	r0, r4
  5b1688: ebf5afbd     	bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x29410c
  5b168c: e59630d8     	ldr	r3, [r6, #0xd8]
  5b1690: e1a00004     	mov	r0, r4
  5b1694: e593102c     	ldr	r1, [r3, #0x2c]
  5b1698: eb04b6bb     	bl	0x6df18c <_ZN6glitch5video11CGLSLShader18rmRegenerateShaderEPNS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEE> @ imm = #0x12daec
  5b169c: e5953000     	ldr	r3, [r5]
  5b16a0: e593200c     	ldr	r2, [r3, #0xc]
  5b16a4: e3520000     	cmp	r2, #0
  5b16a8: 1a000001     	bne	0x5b16b4 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE13reloadShadersEv+0xc4> @ imm = #0x4
  5b16ac: ea00000f     	b	0x5b16f0 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE13reloadShadersEv+0x100> @ imm = #0x3c
  5b16b0: e1a02003     	mov	r2, r3
  5b16b4: e5923008     	ldr	r3, [r2, #0x8]
  5b16b8: e3530000     	cmp	r3, #0
  5b16bc: 1afffffb     	bne	0x5b16b0 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE13reloadShadersEv+0xc0> @ imm = #-0x14
  5b16c0: e1a03002     	mov	r3, r2
  5b16c4: e5853000     	str	r3, [r5]
  5b16c8: e59630d8     	ldr	r3, [r6, #0xd8]
  5b16cc: e5952000     	ldr	r2, [r5]
  5b16d0: e1a00004     	mov	r0, r4
  5b16d4: e2831004     	add	r1, r3, #4
  5b16d8: e1510002     	cmp	r1, r2
  5b16dc: 1affffd7     	bne	0x5b1640 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE13reloadShadersEv+0x50> @ imm = #-0xa4
  5b16e0: e3500000     	cmp	r0, #0
  5b16e4: 0a00000e     	beq	0x5b1724 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE13reloadShadersEv+0x134> @ imm = #0x38
  5b16e8: e8bd41f0     	pop	{r4, r5, r6, r7, r8, lr}
  5b16ec: eaf5afa4     	b	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x294170
  5b16f0: e5931004     	ldr	r1, [r3, #0x4]
  5b16f4: e591000c     	ldr	r0, [r1, #0xc]
  5b16f8: e1500003     	cmp	r0, r3
  5b16fc: 1a000005     	bne	0x5b1718 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE13reloadShadersEv+0x128> @ imm = #0x14
  5b1700: e1a03001     	mov	r3, r1
  5b1704: e5911004     	ldr	r1, [r1, #0x4]
  5b1708: e591200c     	ldr	r2, [r1, #0xc]
  5b170c: e1530002     	cmp	r3, r2
  5b1710: 0afffffa     	beq	0x5b1700 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE13reloadShadersEv+0x110> @ imm = #-0x18
  5b1714: e593200c     	ldr	r2, [r3, #0xc]
  5b1718: e1510002     	cmp	r1, r2
  5b171c: 11a03001     	movne	r3, r1
  5b1720: eaffffe7     	b	0x5b16c4 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE13reloadShadersEv+0xd4> @ imm = #-0x64
  5b1724: e8bd81f0     	pop	{r4, r5, r6, r7, r8, pc}
  5b1728: 50 ee 32 00  	.word	0x0032ee50
  5b172c: 6c 34 3e 00  	.word	0x003e346c
  5b1730: fc 49 00 00  	.word	0x000049fc

; common_gl_reload_textures: VA 0x005b1fe4, size 0x260, SHA-256 1c957b39d8f281f5a6d0ff23769c973305fd45a69cba183e8133eadcbd9356e3
  5b1fe4: e92d41f0     	push	{r4, r5, r6, r7, r8, lr}
  5b1fe8: e59030e0     	ldr	r3, [r0, #0xe0]
  5b1fec: e59027f8     	ldr	r2, [r0, #0x7f8]
  5b1ff0: e59f6234     	ldr	r6, [pc, #0x234]        @ 0x5b222c <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE18reloadTexturesDataEv+0x248>
  5b1ff4: e593101c     	ldr	r1, [r3, #0x1c]
  5b1ff8: e5933018     	ldr	r3, [r3, #0x18]
  5b1ffc: e1d223b4     	ldrh	r2, [r2, #52]
  5b2000: e08f6006     	add	r6, pc, r6
  5b2004: e0631001     	rsb	r1, r3, r1
  5b2008: e15201c1     	cmp	r2, r1, asr #3
  5b200c: e1a05000     	mov	r5, r0
  5b2010: 30833182     	addlo	r3, r3, r2, lsl #3
  5b2014: 259f3214     	ldrhs	r3, [pc, #0x214]        @ 0x5b2230 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE18reloadTexturesDataEv+0x24c>
  5b2018: 27963003     	ldrhs	r3, [r6, r3]
  5b201c: e5934000     	ldr	r4, [r3]
  5b2020: e3540000     	cmp	r4, #0
  5b2024: 0a000039     	beq	0x5b2110 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE18reloadTexturesDataEv+0x12c> @ imm = #0xe4
  5b2028: e5943004     	ldr	r3, [r4, #0x4]
  5b202c: e1a00004     	mov	r0, r4
  5b2030: e2833002     	add	r3, r3, #2
  5b2034: e5843004     	str	r3, [r4, #0x4]
  5b2038: ebf5ad51     	bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x294abc
  5b203c: e594302c     	ldr	r3, [r4, #0x2c]
  5b2040: e3a02001     	mov	r2, #1
  5b2044: e5c42058     	strb	r2, [r4, #0x58]
  5b2048: e3530000     	cmp	r3, #0
  5b204c: e5947054     	ldr	r7, [r4, #0x54]
  5b2050: 0a000002     	beq	0x5b2060 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE18reloadTexturesDataEv+0x7c> @ imm = #0x8
  5b2054: e5d4303f     	ldrb	r3, [r4, #0x3f]
  5b2058: e3130008     	tst	r3, #8
  5b205c: 1a000030     	bne	0x5b2124 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE18reloadTexturesDataEv+0x140> @ imm = #0xc0
  5b2060: e3a03000     	mov	r3, #0
  5b2064: e5c43058     	strb	r3, [r4, #0x58]
  5b2068: e59530e0     	ldr	r3, [r5, #0xe0]
  5b206c: e1d423bc     	ldrh	r2, [r4, #60]
  5b2070: e593101c     	ldr	r1, [r3, #0x1c]
  5b2074: e5933018     	ldr	r3, [r3, #0x18]
  5b2078: e0631001     	rsb	r1, r3, r1
  5b207c: e15201c1     	cmp	r2, r1, asr #3
  5b2080: 30831182     	addlo	r1, r3, r2, lsl #3
  5b2084: 2a000023     	bhs	0x5b2118 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE18reloadTexturesDataEv+0x134> @ imm = #0x8c
  5b2088: e5911000     	ldr	r1, [r1]
  5b208c: e3510000     	cmp	r1, #0
  5b2090: 0a000028     	beq	0x5b2138 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE18reloadTexturesDataEv+0x154> @ imm = #0xa0
  5b2094: e0833182     	add	r3, r3, r2, lsl #3
  5b2098: e5933004     	ldr	r3, [r3, #0x4]
  5b209c: e5932028     	ldr	r2, [r3, #0x28]
  5b20a0: e593102c     	ldr	r1, [r3, #0x2c]
  5b20a4: e1510002     	cmp	r1, r2
  5b20a8: 0a000022     	beq	0x5b2138 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE18reloadTexturesDataEv+0x154> @ imm = #0x88
  5b20ac: e59f0180     	ldr	r0, [pc, #0x180]        @ 0x5b2234 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE18reloadTexturesDataEv+0x250>
  5b20b0: e08f0000     	add	r0, pc, r0
  5b20b4: eb016471     	bl	0x60b280 <_ZN6glitch2os7Printer5printEPKcz> @ imm = #0x591c4
  5b20b8: e594302c     	ldr	r3, [r4, #0x2c]
  5b20bc: e3530000     	cmp	r3, #0
  5b20c0: 0a00002b     	beq	0x5b2174 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE18reloadTexturesDataEv+0x190> @ imm = #0xac
  5b20c4: e59527f0     	ldr	r2, [r5, #0x7f0]
  5b20c8: e59537f8     	ldr	r3, [r5, #0x7f8]
  5b20cc: e2822001     	add	r2, r2, #1
  5b20d0: e58527f0     	str	r2, [r5, #0x7f0]
  5b20d4: e593200c     	ldr	r2, [r3, #0xc]
  5b20d8: e3520000     	cmp	r2, #0
  5b20dc: 1a000001     	bne	0x5b20e8 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE18reloadTexturesDataEv+0x104> @ imm = #0x4
  5b20e0: ea000016     	b	0x5b2140 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE18reloadTexturesDataEv+0x15c> @ imm = #0x58
  5b20e4: e1a02003     	mov	r2, r3
  5b20e8: e5923008     	ldr	r3, [r2, #0x8]
  5b20ec: e3530000     	cmp	r3, #0
  5b20f0: 1afffffb     	bne	0x5b20e4 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE18reloadTexturesDataEv+0x100> @ imm = #-0x14
  5b20f4: e1a03002     	mov	r3, r2
  5b20f8: e59520e0     	ldr	r2, [r5, #0xe0]
  5b20fc: e1a00004     	mov	r0, r4
  5b2100: e58537f8     	str	r3, [r5, #0x7f8]
  5b2104: e0524003     	subs	r4, r2, r3
  5b2108: 13a04001     	movne	r4, #1
  5b210c: ebf5ad1c     	bl	0x31d584 <_ZNK6glitch17IReferenceCounted4dropEv> @ imm = #-0x294b90
  5b2110: e1a00004     	mov	r0, r4
  5b2114: e8bd81f0     	pop	{r4, r5, r6, r7, r8, pc}
  5b2118: e59f1110     	ldr	r1, [pc, #0x110]        @ 0x5b2230 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE18reloadTexturesDataEv+0x24c>
  5b211c: e7961001     	ldr	r1, [r6, r1]
  5b2120: eaffffd8     	b	0x5b2088 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE18reloadTexturesDataEv+0xa4> @ imm = #-0xa0
  5b2124: e5943000     	ldr	r3, [r4]
  5b2128: e1a00004     	mov	r0, r4
  5b212c: e1a0e00f     	mov	lr, pc
  5b2130: e593f010     	ldr	pc, [r3, #0x10]
  5b2134: eaffffc9     	b	0x5b2060 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE18reloadTexturesDataEv+0x7c> @ imm = #-0xdc
  5b2138: e3a01000     	mov	r1, #0
  5b213c: eaffffda     	b	0x5b20ac <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE18reloadTexturesDataEv+0xc8> @ imm = #-0x98
  5b2140: e5931004     	ldr	r1, [r3, #0x4]
  5b2144: e591000c     	ldr	r0, [r1, #0xc]
  5b2148: e1530000     	cmp	r3, r0
  5b214c: 1a000005     	bne	0x5b2168 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE18reloadTexturesDataEv+0x184> @ imm = #0x14
  5b2150: e1a03001     	mov	r3, r1
  5b2154: e5911004     	ldr	r1, [r1, #0x4]
  5b2158: e591200c     	ldr	r2, [r1, #0xc]
  5b215c: e1520003     	cmp	r2, r3
  5b2160: 0afffffa     	beq	0x5b2150 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE18reloadTexturesDataEv+0x16c> @ imm = #-0x18
  5b2164: e593200c     	ldr	r2, [r3, #0xc]
  5b2168: e1510002     	cmp	r1, r2
  5b216c: 11a03001     	movne	r3, r1
  5b2170: eaffffe0     	b	0x5b20f8 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE18reloadTexturesDataEv+0x114> @ imm = #-0x80
  5b2174: e59f00bc     	ldr	r0, [pc, #0xbc]         @ 0x5b2238 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE18reloadTexturesDataEv+0x254>
  5b2178: e1a02007     	mov	r2, r7
  5b217c: e1d413bc     	ldrh	r1, [r4, #60]
  5b2180: e594301c     	ldr	r3, [r4, #0x1c]
  5b2184: e08f0000     	add	r0, pc, r0
  5b2188: eb01643c     	bl	0x60b280 <_ZN6glitch2os7Printer5printEPKcz> @ imm = #0x590f0
  5b218c: e59f00a8     	ldr	r0, [pc, #0xa8]         @ 0x5b223c <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE18reloadTexturesDataEv+0x258>
  5b2190: e08f0000     	add	r0, pc, r0
  5b2194: eb016439     	bl	0x60b280 <_ZN6glitch2os7Printer5printEPKcz> @ imm = #0x590e4
  5b2198: e59500e0     	ldr	r0, [r5, #0xe0]
  5b219c: e1d423bc     	ldrh	r2, [r4, #60]
  5b21a0: e5903018     	ldr	r3, [r0, #0x18]
  5b21a4: e590101c     	ldr	r1, [r0, #0x1c]
  5b21a8: e0631001     	rsb	r1, r3, r1
  5b21ac: e15201c1     	cmp	r2, r1, asr #3
  5b21b0: 30831182     	addlo	r1, r3, r2, lsl #3
  5b21b4: 259f1074     	ldrhs	r1, [pc, #0x74]         @ 0x5b2230 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE18reloadTexturesDataEv+0x24c>
  5b21b8: 27961001     	ldrhs	r1, [r6, r1]
  5b21bc: e5911000     	ldr	r1, [r1]
  5b21c0: e3510000     	cmp	r1, #0
  5b21c4: 0a000014     	beq	0x5b221c <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE18reloadTexturesDataEv+0x238> @ imm = #0x50
  5b21c8: e0833182     	add	r3, r3, r2, lsl #3
  5b21cc: e5933004     	ldr	r3, [r3, #0x4]
  5b21d0: e5932028     	ldr	r2, [r3, #0x28]
  5b21d4: e593302c     	ldr	r3, [r3, #0x2c]
  5b21d8: e1530002     	cmp	r3, r2
  5b21dc: 0a00000e     	beq	0x5b221c <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE18reloadTexturesDataEv+0x238> @ imm = #0x38
  5b21e0: e3530000     	cmp	r3, #0
  5b21e4: 0a00000c     	beq	0x5b221c <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE18reloadTexturesDataEv+0x238> @ imm = #0x30
  5b21e8: e5d4303f     	ldrb	r3, [r4, #0x3f]
  5b21ec: e3130008     	tst	r3, #8
  5b21f0: 1a000003     	bne	0x5b2204 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE18reloadTexturesDataEv+0x220> @ imm = #0xc
  5b21f4: e59517f8     	ldr	r1, [r5, #0x7f8]
  5b21f8: e594201c     	ldr	r2, [r4, #0x1c]
  5b21fc: eb00ec5f     	bl	0x5ed380 <_ZN6glitch5video15CTextureManager19rmReloadDataTextureENS1_9SIteratorEPKc> @ imm = #0x3b17c
  5b2200: eaffffaf     	b	0x5b20c4 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE18reloadTexturesDataEv+0xe0> @ imm = #-0x144
  5b2204: e1a00004     	mov	r0, r4
  5b2208: e5943000     	ldr	r3, [r4]
  5b220c: e1a0e00f     	mov	lr, pc
  5b2210: e593f010     	ldr	pc, [r3, #0x10]
  5b2214: e59500e0     	ldr	r0, [r5, #0xe0]
  5b2218: eafffff5     	b	0x5b21f4 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE18reloadTexturesDataEv+0x210> @ imm = #-0x2c
  5b221c: e59f001c     	ldr	r0, [pc, #0x1c]         @ 0x5b2240 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE18reloadTexturesDataEv+0x25c>
  5b2220: e08f0000     	add	r0, pc, r0
  5b2224: eb016415     	bl	0x60b280 <_ZN6glitch2os7Printer5printEPKcz> @ imm = #0x59054
  5b2228: eaffffa5     	b	0x5b20c4 <_ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE18reloadTexturesDataEv+0xe0> @ imm = #-0x16c
  5b222c: 90 2a 3e 00  	.word	0x003e2a90
  5b2230: e8 10 00 00  	.word	0x000010e8
  5b2234: c0 e3 32 00  	.word	0x0032e3c0
  5b2238: 04 e3 32 00  	.word	0x0032e304
  5b223c: 48 62 31 00  	.word	0x00316248
  5b2240: c8 61 31 00  	.word	0x003161c8

; glsl_shader_regenerate: VA 0x006df18c, size 0x64, SHA-256 462859c6d646532b84b090884621dbe7399ad2c3aa533d7658982a0ebdc52054
  6df18c: e92d4070     	push	{r4, r5, r6, lr}
  6df190: e1a04000     	mov	r4, r0
  6df194: e5900044     	ldr	r0, [r0, #0x44]
  6df198: eb000101     	bl	0x6df5a4 <_ZN6glitch5video15CGLSLShaderCode17rmRecompileShaderEv> @ imm = #0x404
  6df19c: e5940048     	ldr	r0, [r4, #0x48]
  6df1a0: eb0000ff     	bl	0x6df5a4 <_ZN6glitch5video15CGLSLShaderCode17rmRecompileShaderEv> @ imm = #0x3fc
  6df1a4: ebf0be9c     	bl	0x30ec1c <glCreateProgram@plt> @ imm = #-0x3d0590
  6df1a8: e5943044     	ldr	r3, [r4, #0x44]
  6df1ac: e584004c     	str	r0, [r4, #0x4c]
  6df1b0: e5931030     	ldr	r1, [r3, #0x30]
  6df1b4: ebf0be8f     	bl	0x30ebf8 <glAttachShader@plt> @ imm = #-0x3d05c4
  6df1b8: e5943048     	ldr	r3, [r4, #0x48]
  6df1bc: e594004c     	ldr	r0, [r4, #0x4c]
  6df1c0: e5931030     	ldr	r1, [r3, #0x30]
  6df1c4: ebf0be8b     	bl	0x30ebf8 <glAttachShader@plt> @ imm = #-0x3d05d4
  6df1c8: e3a03000     	mov	r3, #0
  6df1cc: e5843038     	str	r3, [r4, #0x38]
  6df1d0: e1a00004     	mov	r0, r4
  6df1d4: ebfffe07     	bl	0x6de9f8 <_ZN6glitch5video11CGLSLShader11linkProgramEv> @ imm = #-0x7e4
  6df1d8: e2505000     	subs	r5, r0, #0
  6df1dc: 1a000002     	bne	0x6df1ec <_ZN6glitch5video11CGLSLShader18rmRegenerateShaderEPNS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEE+0x60> @ imm = #0x8
  6df1e0: e594004c     	ldr	r0, [r4, #0x4c]
  6df1e4: ebf0bbad     	bl	0x30e0a0 <glDeleteProgram@plt> @ imm = #-0x3d114c
  6df1e8: e584504c     	str	r5, [r4, #0x4c]
  6df1ec: e8bd8070     	pop	{r4, r5, r6, pc}

; glsl_shader_code_recompile: VA 0x006df5a4, size 0x30, SHA-256 8e259969284f2caa1d41e54ed5871ace9de100fda0775c4f60820bd924bccba2
  6df5a4: e92d4070     	push	{r4, r5, r6, lr}
  6df5a8: e3a05000     	mov	r5, #0
  6df5ac: e5805030     	str	r5, [r0, #0x30]
  6df5b0: e5901028     	ldr	r1, [r0, #0x28]
  6df5b4: e5902020     	ldr	r2, [r0, #0x20]
  6df5b8: e5903024     	ldr	r3, [r0, #0x24]
  6df5bc: e1a04000     	mov	r4, r0
  6df5c0: ebffffe6     	bl	0x6df560 <_ZN6glitch5video15CGLSLShaderCode12createShaderEiPPKci> @ imm = #-0x68
  6df5c4: e1a00004     	mov	r0, r4
  6df5c8: e5c45034     	strb	r5, [r4, #0x34]
  6df5cc: e8bd4070     	pop	{r4, r5, r6, lr}
  6df5d0: eaffff7a     	b	0x6df3c0 <_ZNK6glitch5video15CGLSLShaderCode13compileShaderEv> @ imm = #-0x218

