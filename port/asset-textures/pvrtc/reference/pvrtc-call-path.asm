; Selected exact ARM listings from lib/armeabi-v7a/libDungeonHunter2.so. Not assembler-ready source.
; APK SHA-256: 32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200
; ELF SHA-256: 36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80
; Executable PT_LOAD: p_vaddr=0x0 p_offset=0x0 p_filesz=0x955130; listed VAs map to same file offsets.
; Function size/hash provenance: ../original-functions.json

; RANGE 0x005f97d0..0x005f9808 end exclusive: pixel_format::convert dispatch to decompress
005f95ac <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb>:
  5f97d0: e59de158     	ldr	lr, [sp, #0x158]
  5f97d4: e58d4008     	str	r4, [sp, #0x8]
  5f97d8: e59d5038     	ldr	r5, [sp, #0x38]
  5f97dc: e59d4164     	ldr	r4, [sp, #0x164]
  5f97e0: e1a0000a     	mov	r0, r10
  5f97e4: e1a01008     	mov	r1, r8
  5f97e8: e59d205c     	ldr	r2, [sp, #0x5c]
  5f97ec: e1a03007     	mov	r3, r7
  5f97f0: e58de000     	str	lr, [sp]
  5f97f4: e58d9004     	str	r9, [sp, #0x4]
  5f97f8: e58d400c     	str	r4, [sp, #0xc]
  5f97fc: e58d5010     	str	r5, [sp, #0x10]
  5f9800: eb001023     	bl	0x5fd894 <_ZN6glitch5video12pixel_format12_GLOBAL__N_110decompressENS0_14E_PIXEL_FORMATEPKvjS3_Pvjjjb> @ imm = #0x408c
  5f9804: eaffff90     	b	0x5f964c <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb+0xa0> @ imm = #-0x1c0

; RANGE 0x005fd894..0x005fda68 end exclusive: pixel_format::{anonymous}::decompress
005fd894 <_ZN6glitch5video12pixel_format12_GLOBAL__N_110decompressENS0_14E_PIXEL_FORMATEPKvjS3_Pvjjjb>:
  5fd894: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  5fd898: e240c011     	sub	r12, r0, #17
  5fd89c: e24dd024     	sub	sp, sp, #36
  5fd8a0: e35c0003     	cmp	r12, #3
  5fd8a4: e1a04000     	mov	r4, r0
  5fd8a8: e58d101c     	str	r1, [sp, #0x1c]
  5fd8ac: e1a0a002     	mov	r10, r2
  5fd8b0: e1a06003     	mov	r6, r3
  5fd8b4: e59d7048     	ldr	r7, [sp, #0x48]
  5fd8b8: e59d904c     	ldr	r9, [sp, #0x4c]
  5fd8bc: e59d5050     	ldr	r5, [sp, #0x50]
  5fd8c0: e59d8054     	ldr	r8, [sp, #0x54]
  5fd8c4: e5ddb058     	ldrb	r11, [sp, #0x58]
  5fd8c8: 9a00002d     	bls	0x5fd984 <_ZN6glitch5video12pixel_format12_GLOBAL__N_110decompressENS0_14E_PIXEL_FORMATEPKvjS3_Pvjjjb+0xf0> @ imm = #0xb4
  5fd8cc: e1a01005     	mov	r1, r5
  5fd8d0: ebffc085     	bl	0x5edaec <_ZN6glitch5video12pixel_format12computePitchENS0_14E_PIXEL_FORMATEj> @ imm = #-0xfdec
  5fd8d4: e150000a     	cmp	r0, r10
  5fd8d8: 1a000021     	bne	0x5fd964 <_ZN6glitch5video12pixel_format12_GLOBAL__N_110decompressENS0_14E_PIXEL_FORMATEPKvjS3_Pvjjjb+0xd0> @ imm = #0x84
  5fd8dc: e2443015     	sub	r3, r4, #21
  5fd8e0: e3530002     	cmp	r3, #2
  5fd8e4: 9a000054     	bls	0x5fda3c <_ZN6glitch5video12pixel_format12_GLOBAL__N_110decompressENS0_14E_PIXEL_FORMATEPKvjS3_Pvjjjb+0x1a8> @ imm = #0x150
  5fd8e8: e1a00006     	mov	r0, r6
  5fd8ec: e1a01005     	mov	r1, r5
  5fd8f0: ebffc07d     	bl	0x5edaec <_ZN6glitch5video12pixel_format12computePitchENS0_14E_PIXEL_FORMATEj> @ imm = #-0xfe0c
  5fd8f4: e356000e     	cmp	r6, #14
  5fd8f8: 01500009     	cmpeq	r0, r9
  5fd8fc: e1a0a000     	mov	r10, r0
  5fd900: 1a000025     	bne	0x5fd99c <_ZN6glitch5video12pixel_format12_GLOBAL__N_110decompressENS0_14E_PIXEL_FORMATEPKvjS3_Pvjjjb+0x108> @ imm = #0x94
  5fd904: e2441018     	sub	r1, r4, #24
  5fd908: e3510001     	cmp	r1, #1
  5fd90c: 83a01000     	movhi	r1, #0
  5fd910: 93a01001     	movls	r1, #1
  5fd914: e59d001c     	ldr	r0, [sp, #0x1c]
  5fd918: e1a02005     	mov	r2, r5
  5fd91c: e1a03008     	mov	r3, r8
  5fd920: e58d7000     	str	r7, [sp]
  5fd924: eb02878f     	bl	0x69f768 <_Z15PVRTCDecompressPKviiiPh> @ imm = #0xa1e3c
  5fd928: e1a01007     	mov	r1, r7
  5fd92c: e35b0000     	cmp	r11, #0
  5fd930: 03a04001     	moveq	r4, #1
  5fd934: 0a00000f     	beq	0x5fd978 <_ZN6glitch5video12pixel_format12_GLOBAL__N_110decompressENS0_14E_PIXEL_FORMATEPKvjS3_Pvjjjb+0xe4> @ imm = #0x3c
  5fd938: e1a0200a     	mov	r2, r10
  5fd93c: e1a03006     	mov	r3, r6
  5fd940: e3a0000e     	mov	r0, #14
  5fd944: e58d7048     	str	r7, [sp, #0x48]
  5fd948: e58d904c     	str	r9, [sp, #0x4c]
  5fd94c: e58d5050     	str	r5, [sp, #0x50]
  5fd950: e58d8054     	str	r8, [sp, #0x54]
  5fd954: e58db058     	str	r11, [sp, #0x58]
  5fd958: e28dd024     	add	sp, sp, #36
  5fd95c: e8bd4ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  5fd960: eaffef11     	b	0x5f95ac <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb> @ imm = #-0x43bc
  5fd964: e59f00e8     	ldr	r0, [pc, #0xe8]         @ 0x5fda54 <_ZN6glitch5video12pixel_format12_GLOBAL__N_110decompressENS0_14E_PIXEL_FORMATEPKvjS3_Pvjjjb+0x1c0>
  5fd968: e3a01003     	mov	r1, #3
  5fd96c: e3a04000     	mov	r4, #0
  5fd970: e08f0000     	add	r0, pc, r0
  5fd974: eb0034c9     	bl	0x60aca0 <_ZN6glitch2os7Printer3logEPKcNS_10ELOG_LEVELE> @ imm = #0xd324
  5fd978: e1a00004     	mov	r0, r4
  5fd97c: e28dd024     	add	sp, sp, #36
  5fd980: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  5fd984: e59f00cc     	ldr	r0, [pc, #0xcc]         @ 0x5fda58 <_ZN6glitch5video12pixel_format12_GLOBAL__N_110decompressENS0_14E_PIXEL_FORMATEPKvjS3_Pvjjjb+0x1c4>
  5fd988: e3a01003     	mov	r1, #3
  5fd98c: e3a04000     	mov	r4, #0
  5fd990: e08f0000     	add	r0, pc, r0
  5fd994: eb0034c1     	bl	0x60aca0 <_ZN6glitch2os7Printer3logEPKcNS_10ELOG_LEVELE> @ imm = #0xd304
  5fd998: eafffff6     	b	0x5fd978 <_ZN6glitch5video12pixel_format12_GLOBAL__N_110decompressENS0_14E_PIXEL_FORMATEPKvjS3_Pvjjjb+0xe4> @ imm = #-0x28
  5fd99c: e59f00b8     	ldr	r0, [pc, #0xb8]         @ 0x5fda5c <_ZN6glitch5video12pixel_format12_GLOBAL__N_110decompressENS0_14E_PIXEL_FORMATEPKvjS3_Pvjjjb+0x1c8>
  5fd9a0: e59f10b8     	ldr	r1, [pc, #0xb8]         @ 0x5fda60 <_ZN6glitch5video12pixel_format12_GLOBAL__N_110decompressENS0_14E_PIXEL_FORMATEPKvjS3_Pvjjjb+0x1cc>
  5fd9a4: e3a02002     	mov	r2, #2
  5fd9a8: e08f0000     	add	r0, pc, r0
  5fd9ac: e08f1001     	add	r1, pc, r1
  5fd9b0: eb0034cc     	bl	0x60ace8 <_ZN6glitch2os7Printer3logEPKcS3_NS_10ELOG_LEVELE> @ imm = #0xd330
  5fd9b4: e1a00105     	lsl	r0, r5, #2
  5fd9b8: e3a01000     	mov	r1, #0
  5fd9bc: e0000098     	mul	r0, r8, r0
  5fd9c0: ebfcd9f8     	bl	0x5341a8 <_ZnajN6glitch6memory13E_MEMORY_HINTE> @ imm = #-0xc9820
  5fd9c4: e2441018     	sub	r1, r4, #24
  5fd9c8: e1a0c000     	mov	r12, r0
  5fd9cc: e3510001     	cmp	r1, #1
  5fd9d0: 83a01000     	movhi	r1, #0
  5fd9d4: 93a01001     	movls	r1, #1
  5fd9d8: e59d001c     	ldr	r0, [sp, #0x1c]
  5fd9dc: e1a02005     	mov	r2, r5
  5fd9e0: e1a03008     	mov	r3, r8
  5fd9e4: e58dc000     	str	r12, [sp]
  5fd9e8: e58dc018     	str	r12, [sp, #0x18]
  5fd9ec: eb02875d     	bl	0x69f768 <_Z15PVRTCDecompressPKviiiPh> @ imm = #0xa1d74
  5fd9f0: e59dc018     	ldr	r12, [sp, #0x18]
  5fd9f4: e35c0000     	cmp	r12, #0
  5fd9f8: 01a0100c     	moveq	r1, r12
  5fd9fc: 0affffca     	beq	0x5fd92c <_ZN6glitch5video12pixel_format12_GLOBAL__N_110decompressENS0_14E_PIXEL_FORMATEPKvjS3_Pvjjjb+0x98> @ imm = #-0xd8
  5fda00: e1a0100c     	mov	r1, r12
  5fda04: e1a0200a     	mov	r2, r10
  5fda08: e1a03006     	mov	r3, r6
  5fda0c: e3a0000e     	mov	r0, #14
  5fda10: e58dc018     	str	r12, [sp, #0x18]
  5fda14: e88d0280     	stm	sp, {r7, r9}
  5fda18: e58d5008     	str	r5, [sp, #0x8]
  5fda1c: e58d800c     	str	r8, [sp, #0xc]
  5fda20: e58db010     	str	r11, [sp, #0x10]
  5fda24: ebffeee0     	bl	0x5f95ac <_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb> @ imm = #-0x4480
  5fda28: e59dc018     	ldr	r12, [sp, #0x18]
  5fda2c: e1a04000     	mov	r4, r0
  5fda30: e1a0000c     	mov	r0, r12
  5fda34: ebf4419f     	bl	0x30e0b8 <_ZdaPv@plt>   @ imm = #-0x2ef984
  5fda38: eaffffce     	b	0x5fd978 <_ZN6glitch5video12pixel_format12_GLOBAL__N_110decompressENS0_14E_PIXEL_FORMATEPKvjS3_Pvjjjb+0xe4> @ imm = #-0xc8
  5fda3c: e59f0020     	ldr	r0, [pc, #0x20]         @ 0x5fda64 <_ZN6glitch5video12pixel_format12_GLOBAL__N_110decompressENS0_14E_PIXEL_FORMATEPKvjS3_Pvjjjb+0x1d0>
  5fda40: e3a01003     	mov	r1, #3
  5fda44: e3a04000     	mov	r4, #0
  5fda48: e08f0000     	add	r0, pc, r0
  5fda4c: eb003493     	bl	0x60aca0 <_ZN6glitch2os7Printer3logEPKcNS_10ELOG_LEVELE> @ imm = #0xd24c
  5fda50: eaffffc8     	b	0x5fd978 <_ZN6glitch5video12pixel_format12_GLOBAL__N_110decompressENS0_14E_PIXEL_FORMATEPKvjS3_Pvjjjb+0xe4> @ imm = #-0xe0
  5fda54: e8 65 2e 00  	.word	0x002e65e8
  5fda58: 98 65 2e 00  	.word	0x002e6598
  5fda5c: 20 66 2e 00  	.word	0x002e6620
  5fda60: 34 66 2e 00  	.word	0x002e6634
  5fda64: 58 65 2e 00  	.word	0x002e6558

; RANGE 0x0069f570..0x0069f6f4 end exclusive: InterpolateColours
0069f570 <_ZL18InterpolateColoursPKiS0_S0_S0_iiiPi>:
  69f570: e92d0ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11}
  69f574: e24dd048     	sub	sp, sp, #72
  69f578: e59dc074     	ldr	r12, [sp, #0x74]
  69f57c: e1a0b001     	mov	r11, r1
  69f580: e28d7038     	add	r7, sp, #56
  69f584: e3a01000     	mov	r1, #0
  69f588: e28d5028     	add	r5, sp, #40
  69f58c: e28d6018     	add	r6, sp, #24
  69f590: e28d4008     	add	r4, sp, #8
  69f594: e58dc004     	str	r12, [sp, #0x4]
  69f598: e7909001     	ldr	r9, [r0, r1]
  69f59c: e79ba001     	ldr	r10, [r11, r1]
  69f5a0: e7928001     	ldr	r8, [r2, r1]
  69f5a4: e793c001     	ldr	r12, [r3, r1]
  69f5a8: e7879001     	str	r9, [r7, r1]
  69f5ac: e785a001     	str	r10, [r5, r1]
  69f5b0: e7868001     	str	r8, [r6, r1]
  69f5b4: e784c001     	str	r12, [r4, r1]
  69f5b8: e2811004     	add	r1, r1, #4
  69f5bc: e3510010     	cmp	r1, #16
  69f5c0: 1afffff4     	bne	0x69f598 <_ZL18InterpolateColoursPKiS0_S0_S0_iiiPi+0x28> @ imm = #-0x30
  69f5c4: e59d2070     	ldr	r2, [sp, #0x70]
  69f5c8: e59da068     	ldr	r10, [sp, #0x68]
  69f5cc: e59dc004     	ldr	r12, [sp, #0x4]
  69f5d0: e1e0b002     	mvn	r11, r2
  69f5d4: e20bb002     	and	r11, r11, #2
  69f5d8: e2023003     	and	r3, r2, #3
  69f5dc: e35a0000     	cmp	r10, #0
  69f5e0: e183b08b     	orr	r11, r3, r11, lsl #1
  69f5e4: 0a000039     	beq	0x69f6d0 <_ZL18InterpolateColoursPKiS0_S0_S0_iiiPi+0x160> @ imm = #0xe4
  69f5e8: e59d206c     	ldr	r2, [sp, #0x6c]
  69f5ec: e24bb002     	sub	r11, r11, #2
  69f5f0: e3a00008     	mov	r0, #8
  69f5f4: e1e08002     	mvn	r8, r2
  69f5f8: e2088004     	and	r8, r8, #4
  69f5fc: e2023007     	and	r3, r2, #7
  69f600: e1838088     	orr	r8, r3, r8, lsl #1
  69f604: e2488004     	sub	r8, r8, #4
  69f608: e3a03000     	mov	r3, #0
  69f60c: e58db004     	str	r11, [sp, #0x4]
  69f610: e7971003     	ldr	r1, [r7, r3]
  69f614: e795b003     	ldr	r11, [r5, r3]
  69f618: e7962003     	ldr	r2, [r6, r3]
  69f61c: e0090091     	mul	r9, r1, r0
  69f620: e061100b     	rsb	r1, r1, r11
  69f624: e794b003     	ldr	r11, [r4, r3]
  69f628: e00a0092     	mul	r10, r2, r0
  69f62c: e062200b     	rsb	r2, r2, r11
  69f630: e0219891     	mla	r1, r1, r8, r9
  69f634: e022a892     	mla	r2, r2, r8, r10
  69f638: e59da004     	ldr	r10, [sp, #0x4]
  69f63c: e0612002     	rsb	r2, r1, r2
  69f640: e002029a     	mul	r2, r10, r2
  69f644: e0821101     	add	r1, r2, r1, lsl #2
  69f648: e78c1003     	str	r1, [r12, r3]
  69f64c: e2833004     	add	r3, r3, #4
  69f650: e3530010     	cmp	r3, #16
  69f654: 1affffed     	bne	0x69f610 <_ZL18InterpolateColoursPKiS0_S0_S0_iiiPi+0xa0> @ imm = #-0x4c
  69f658: e59db068     	ldr	r11, [sp, #0x68]
  69f65c: e35b0000     	cmp	r11, #0
  69f660: 1a000012     	bne	0x69f6b0 <_ZL18InterpolateColoursPKiS0_S0_S0_iiiPi+0x140> @ imm = #0x48
  69f664: e89c000e     	ldm	r12, {r1, r2, r3}
  69f668: e1a010c1     	asr	r1, r1, #1
  69f66c: e1a020c2     	asr	r2, r2, #1
  69f670: e1a030c3     	asr	r3, r3, #1
  69f674: e88c000e     	stm	r12, {r1, r2, r3}
  69f678: e28c100c     	add	r1, r12, #12
  69f67c: e3a03000     	mov	r3, #0
  69f680: e79c2003     	ldr	r2, [r12, r3]
  69f684: e08222c2     	add	r2, r2, r2, asr #5
  69f688: e78c2003     	str	r2, [r12, r3]
  69f68c: e2833004     	add	r3, r3, #4
  69f690: e353000c     	cmp	r3, #12
  69f694: 1afffff9     	bne	0x69f680 <_ZL18InterpolateColoursPKiS0_S0_S0_iiiPi+0x110> @ imm = #-0x1c
  69f698: e5913000     	ldr	r3, [r1]
  69f69c: e0833243     	add	r3, r3, r3, asr #4
  69f6a0: e5813000     	str	r3, [r1]
  69f6a4: e28dd048     	add	sp, sp, #72
  69f6a8: e8bd0ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11}
  69f6ac: e12fff1e     	bx	lr
  69f6b0: e89c000f     	ldm	r12, {r0, r1, r2, r3}
  69f6b4: e1a01141     	asr	r1, r1, #2
  69f6b8: e1a00140     	asr	r0, r0, #2
  69f6bc: e1a02142     	asr	r2, r2, #2
  69f6c0: e1a030c3     	asr	r3, r3, #1
  69f6c4: e88c000f     	stm	r12, {r0, r1, r2, r3}
  69f6c8: e28c100c     	add	r1, r12, #12
  69f6cc: eaffffea     	b	0x69f67c <_ZL18InterpolateColoursPKiS0_S0_S0_iiiPi+0x10c> @ imm = #-0x58
  69f6d0: e59d306c     	ldr	r3, [sp, #0x6c]
  69f6d4: e24bb002     	sub	r11, r11, #2
  69f6d8: e3a00004     	mov	r0, #4
  69f6dc: e1e08003     	mvn	r8, r3
  69f6e0: e2088002     	and	r8, r8, #2
  69f6e4: e2033003     	and	r3, r3, #3
  69f6e8: e1838088     	orr	r8, r3, r8, lsl #1
  69f6ec: e2488002     	sub	r8, r8, #2
  69f6f0: eaffffc4     	b	0x69f608 <_ZL18InterpolateColoursPKiS0_S0_S0_iiiPi+0x98> @ imm = #-0xf0

; RANGE 0x0069f6f4..0x0069f768 end exclusive: TwiddleUV
0069f6f4 <_ZL9TwiddleUVmmmm>:
  69f6f4: e1500001     	cmp	r0, r1
  69f6f8: 21a00001     	movhs	r0, r1
  69f6fc: 31a01003     	movlo	r1, r3
  69f700: 21a01002     	movhs	r1, r2
  69f704: e3500001     	cmp	r0, #1
  69f708: 93a03000     	movls	r3, #0
  69f70c: e92d0070     	push	{r4, r5, r6}
  69f710: 91a05003     	movls	r5, r3
  69f714: 91a06003     	movls	r6, r3
  69f718: 9a00000e     	bls	0x69f758 <_ZL9TwiddleUVmmmm+0x64> @ imm = #0x38
  69f71c: e3a05000     	mov	r5, #0
  69f720: e3a04001     	mov	r4, #1
  69f724: e1a06005     	mov	r6, r5
  69f728: e1a0c004     	mov	r12, r4
  69f72c: ea000000     	b	0x69f734 <_ZL9TwiddleUVmmmm+0x40> @ imm = #0x0
  69f730: e1a04104     	lsl	r4, r4, #2
  69f734: e11c0002     	tst	r12, r2
  69f738: 11855004     	orrne	r5, r5, r4
  69f73c: e11c0003     	tst	r12, r3
  69f740: e1a0c08c     	lsl	r12, r12, #1
  69f744: 11855084     	orrne	r5, r5, r4, lsl #1
  69f748: e150000c     	cmp	r0, r12
  69f74c: e2866001     	add	r6, r6, #1
  69f750: 8afffff6     	bhi	0x69f730 <_ZL9TwiddleUVmmmm+0x3c> @ imm = #-0x28
  69f754: e1a03086     	lsl	r3, r6, #1
  69f758: e1a06631     	lsr	r6, r1, r6
  69f75c: e1850316     	orr	r0, r5, r6, lsl r3
  69f760: e8bd0070     	pop	{r4, r5, r6}
  69f764: e12fff1e     	bx	lr

; RANGE 0x0069f768..0x0069ffe4 end exclusive: PVRTCDecompress
0069f768 <_Z15PVRTCDecompressPKviiiPh>:
  69f768: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  69f76c: e24dde5a     	sub	sp, sp, #1440
  69f770: e24dd004     	sub	sp, sp, #4
  69f774: e3510000     	cmp	r1, #0
  69f778: e58d1028     	str	r1, [sp, #0x28]
  69f77c: e58d0030     	str	r0, [sp, #0x30]
  69f780: 13a01008     	movne	r1, #8
  69f784: 03a01004     	moveq	r1, #4
  69f788: e1a00002     	mov	r0, r2
  69f78c: e58d206c     	str	r2, [sp, #0x6c]
  69f790: e58d30b0     	str	r3, [sp, #0xb0]
  69f794: e58d1068     	str	r1, [sp, #0x68]
  69f798: ebf1bac1     	bl	0x30e2a4 <__aeabi_idiv@plt> @ imm = #-0x3914fc
  69f79c: e59d20b0     	ldr	r2, [sp, #0xb0]
  69f7a0: e3500002     	cmp	r0, #2
  69f7a4: b3a00002     	movlt	r0, #2
  69f7a8: e58d002c     	str	r0, [sp, #0x2c]
  69f7ac: e3520007     	cmp	r2, #7
  69f7b0: c1a03142     	asrgt	r3, r2, #2
  69f7b4: c58d3024     	strgt	r3, [sp, #0x24]
  69f7b8: ca000004     	bgt	0x69f7d0 <_Z15PVRTCDecompressPKviiiPh+0x68> @ imm = #0x10
  69f7bc: e59d40b0     	ldr	r4, [sp, #0xb0]
  69f7c0: e3540000     	cmp	r4, #0
  69f7c4: da00018b     	ble	0x69fdf8 <_Z15PVRTCDecompressPKviiiPh+0x690> @ imm = #0x62c
  69f7c8: e3a05002     	mov	r5, #2
  69f7cc: e58d5024     	str	r5, [sp, #0x24]
  69f7d0: e3a03000     	mov	r3, #0
  69f7d4: e58d3070     	str	r3, [sp, #0x70]
  69f7d8: e58d3578     	str	r3, [sp, #0x578]
  69f7dc: e58d357c     	str	r3, [sp, #0x57c]
  69f7e0: e58d3580     	str	r3, [sp, #0x580]
  69f7e4: e58d3584     	str	r3, [sp, #0x584]
  69f7e8: e59f37dc     	ldr	r3, [pc, #0x7dc]        @ 0x69ffcc <_Z15PVRTCDecompressPKviiiPh+0x864>
  69f7ec: e59d7068     	ldr	r7, [sp, #0x68]
  69f7f0: e59f07d8     	ldr	r0, [pc, #0x7d8]        @ 0x69ffd0 <_Z15PVRTCDecompressPKviiiPh+0x868>
  69f7f4: e08f3003     	add	r3, pc, r3
  69f7f8: e58d30ac     	str	r3, [sp, #0xac]
  69f7fc: e59f37d0     	ldr	r3, [pc, #0x7d0]        @ 0x69ffd4 <_Z15PVRTCDecompressPKviiiPh+0x86c>
  69f800: e1a020a7     	lsr	r2, r7, #1
  69f804: e2622000     	rsb	r2, r2, #0
  69f808: e08f3003     	add	r3, pc, r3
  69f80c: e58d30b4     	str	r3, [sp, #0xb4]
  69f810: e59f37c0     	ldr	r3, [pc, #0x7c0]        @ 0x69ffd8 <_Z15PVRTCDecompressPKviiiPh+0x870>
  69f814: e3a0c000     	mov	r12, #0
  69f818: e58d20a0     	str	r2, [sp, #0xa0]
  69f81c: e08f3003     	add	r3, pc, r3
  69f820: e58d30c0     	str	r3, [sp, #0xc0]
  69f824: e58dc050     	str	r12, [sp, #0x50]
  69f828: e58d00c4     	str	r0, [sp, #0xc4]
  69f82c: e59d306c     	ldr	r3, [sp, #0x6c]
  69f830: e3530000     	cmp	r3, #0
  69f834: da000165     	ble	0x69fdd0 <_Z15PVRTCDecompressPKviiiPh+0x668> @ imm = #0x594
  69f838: e59d4050     	ldr	r4, [sp, #0x50]
  69f83c: e59d50b0     	ldr	r5, [sp, #0xb0]
  69f840: e28d7d13     	add	r7, sp, #1216
  69f844: e2442002     	sub	r2, r4, #2
  69f848: e2453001     	sub	r3, r5, #1
  69f84c: e0023003     	and	r3, r2, r3
  69f850: e2830003     	add	r0, r3, #3
  69f854: e1e01004     	mvn	r1, r4
  69f858: e3530000     	cmp	r3, #0
  69f85c: e2042003     	and	r2, r4, #3
  69f860: b1a03000     	movlt	r3, r0
  69f864: e2011002     	and	r1, r1, #2
  69f868: e1821081     	orr	r1, r2, r1, lsl #1
  69f86c: e1a03143     	asr	r3, r3, #2
  69f870: e58d10a8     	str	r1, [sp, #0xa8]
  69f874: e58d3054     	str	r3, [sp, #0x54]
  69f878: e28d30d0     	add	r3, sp, #208
  69f87c: e59d50a8     	ldr	r5, [sp, #0xa8]
  69f880: e59d0054     	ldr	r0, [sp, #0x54]
  69f884: e2433008     	sub	r3, r3, #8
  69f888: e58d301c     	str	r3, [sp, #0x1c]
  69f88c: e59d3024     	ldr	r3, [sp, #0x24]
  69f890: e2877008     	add	r7, r7, #8
  69f894: e58d703c     	str	r7, [sp, #0x3c]
  69f898: e28dcfb2     	add	r12, sp, #712
  69f89c: e2801001     	add	r1, r0, #1
  69f8a0: e59d40a8     	ldr	r4, [sp, #0xa8]
  69f8a4: e2850001     	add	r0, r5, #1
  69f8a8: e59d706c     	ldr	r7, [sp, #0x6c]
  69f8ac: e08c0300     	add	r0, r12, r0, lsl #6
  69f8b0: e2432001     	sub	r2, r3, #1
  69f8b4: e2453001     	sub	r3, r5, #1
  69f8b8: e08c3303     	add	r3, r12, r3, lsl #6
  69f8bc: e58dc064     	str	r12, [sp, #0x64]
  69f8c0: e58d00bc     	str	r0, [sp, #0xbc]
  69f8c4: e59dc02c     	ldr	r12, [sp, #0x2c]
  69f8c8: e59d003c     	ldr	r0, [sp, #0x3c]
  69f8cc: e0012002     	and	r2, r1, r2
  69f8d0: e1a04304     	lsl	r4, r4, #6
  69f8d4: e2477001     	sub	r7, r7, #1
  69f8d8: e58d40a4     	str	r4, [sp, #0xa4]
  69f8dc: e58d2058     	str	r2, [sp, #0x58]
  69f8e0: e58d30b8     	str	r3, [sp, #0xb8]
  69f8e4: e58d708c     	str	r7, [sp, #0x8c]
  69f8e8: e59d203c     	ldr	r2, [sp, #0x3c]
  69f8ec: e59d303c     	ldr	r3, [sp, #0x3c]
  69f8f0: e59d403c     	ldr	r4, [sp, #0x3c]
  69f8f4: e59d503c     	ldr	r5, [sp, #0x3c]
  69f8f8: e59d703c     	ldr	r7, [sp, #0x3c]
  69f8fc: e24cc001     	sub	r12, r12, #1
  69f900: e2800020     	add	r0, r0, #32
  69f904: e59d103c     	ldr	r1, [sp, #0x3c]
  69f908: e58dc090     	str	r12, [sp, #0x90]
  69f90c: e58d0098     	str	r0, [sp, #0x98]
  69f910: e59dc01c     	ldr	r12, [sp, #0x1c]
  69f914: e59d00a4     	ldr	r0, [sp, #0xa4]
  69f918: e2822060     	add	r2, r2, #96
  69f91c: e2833010     	add	r3, r3, #16
  69f920: e2844030     	add	r4, r4, #48
  69f924: e2855050     	add	r5, r5, #80
  69f928: e2877070     	add	r7, r7, #112
  69f92c: e2811040     	add	r1, r1, #64
  69f930: e58d2078     	str	r2, [sp, #0x78]
  69f934: e58d307c     	str	r3, [sp, #0x7c]
  69f938: e58d4080     	str	r4, [sp, #0x80]
  69f93c: e58d5084     	str	r5, [sp, #0x84]
  69f940: e58d7088     	str	r7, [sp, #0x88]
  69f944: e28d2e57     	add	r2, sp, #1392
  69f948: e28d3d16     	add	r3, sp, #1408
  69f94c: e28d4e56     	add	r4, sp, #1376
  69f950: e28d5e55     	add	r5, sp, #1360
  69f954: e28d7d15     	add	r7, sp, #1344
  69f958: e58d1074     	str	r1, [sp, #0x74]
  69f95c: e08cc000     	add	r12, r12, r0
  69f960: e3a01000     	mov	r1, #0
  69f964: e2822008     	add	r2, r2, #8
  69f968: e2833008     	add	r3, r3, #8
  69f96c: e2844008     	add	r4, r4, #8
  69f970: e2855008     	add	r5, r5, #8
  69f974: e2877008     	add	r7, r7, #8
  69f978: e58dc094     	str	r12, [sp, #0x94]
  69f97c: e58d1010     	str	r1, [sp, #0x10]
  69f980: e58d2044     	str	r2, [sp, #0x44]
  69f984: e58d3034     	str	r3, [sp, #0x34]
  69f988: e58d4060     	str	r4, [sp, #0x60]
  69f98c: e58d505c     	str	r5, [sp, #0x5c]
  69f990: e58d709c     	str	r7, [sp, #0x9c]
  69f994: e59d20a0     	ldr	r2, [sp, #0xa0]
  69f998: e59d1010     	ldr	r1, [sp, #0x10]
  69f99c: e59d308c     	ldr	r3, [sp, #0x8c]
  69f9a0: e0810002     	add	r0, r1, r2
  69f9a4: e0030000     	and	r0, r3, r0
  69f9a8: e59d1068     	ldr	r1, [sp, #0x68]
  69f9ac: ebf1ba3c     	bl	0x30e2a4 <__aeabi_idiv@plt> @ imm = #-0x391710
  69f9b0: e1a04000     	mov	r4, r0
  69f9b4: e1a03004     	mov	r3, r4
  69f9b8: e59d102c     	ldr	r1, [sp, #0x2c]
  69f9bc: e59d2054     	ldr	r2, [sp, #0x54]
  69f9c0: e59d0024     	ldr	r0, [sp, #0x24]
  69f9c4: ebffff4a     	bl	0x69f6f4 <_ZL9TwiddleUVmmmm> @ imm = #-0x2d8
  69f9c8: e59d7090     	ldr	r7, [sp, #0x90]
  69f9cc: e59d1030     	ldr	r1, [sp, #0x30]
  69f9d0: e2845001     	add	r5, r4, #1
  69f9d4: e0055007     	and	r5, r5, r7
  69f9d8: e081c180     	add	r12, r1, r0, lsl #3
  69f9dc: e59d2054     	ldr	r2, [sp, #0x54]
  69f9e0: e59d102c     	ldr	r1, [sp, #0x2c]
  69f9e4: e1a03005     	mov	r3, r5
  69f9e8: e59d0024     	ldr	r0, [sp, #0x24]
  69f9ec: e58dc588     	str	r12, [sp, #0x588]
  69f9f0: ebffff3f     	bl	0x69f6f4 <_ZL9TwiddleUVmmmm> @ imm = #-0x304
  69f9f4: e59d2030     	ldr	r2, [sp, #0x30]
  69f9f8: e1a03004     	mov	r3, r4
  69f9fc: e59d102c     	ldr	r1, [sp, #0x2c]
  69fa00: e082c180     	add	r12, r2, r0, lsl #3
  69fa04: e59d2058     	ldr	r2, [sp, #0x58]
  69fa08: e59d0024     	ldr	r0, [sp, #0x24]
  69fa0c: e58dc58c     	str	r12, [sp, #0x58c]
  69fa10: ebffff37     	bl	0x69f6f4 <_ZL9TwiddleUVmmmm> @ imm = #-0x324
  69fa14: e59d4030     	ldr	r4, [sp, #0x30]
  69fa18: e1a03005     	mov	r3, r5
  69fa1c: e59d102c     	ldr	r1, [sp, #0x2c]
  69fa20: e084c180     	add	r12, r4, r0, lsl #3
  69fa24: e59d2058     	ldr	r2, [sp, #0x58]
  69fa28: e59d0024     	ldr	r0, [sp, #0x24]
  69fa2c: e58dc590     	str	r12, [sp, #0x590]
  69fa30: ebffff2f     	bl	0x69f6f4 <_ZL9TwiddleUVmmmm> @ imm = #-0x344
  69fa34: e59d1034     	ldr	r1, [sp, #0x34]
  69fa38: e0843180     	add	r3, r4, r0, lsl #3
  69fa3c: e3a02010     	mov	r2, #16
  69fa40: e59d0044     	ldr	r0, [sp, #0x44]
  69fa44: e58d3594     	str	r3, [sp, #0x594]
  69fa48: ebf1bae4     	bl	0x30e5e0 <memcmp@plt>   @ imm = #-0x391470
  69fa4c: e3500000     	cmp	r0, #0
  69fa50: 0a000081     	beq	0x69fc5c <_Z15PVRTCDecompressPKviiiPh+0x4f4> @ imm = #0x204
  69fa54: e59d5028     	ldr	r5, [sp, #0x28]
  69fa58: e59dc068     	ldr	r12, [sp, #0x68]
  69fa5c: e59d7064     	ldr	r7, [sp, #0x64]
  69fa60: e3a0e000     	mov	lr, #0
  69fa64: e28d0e59     	add	r0, sp, #1424
  69fa68: e055500e     	subs	r5, r5, lr
  69fa6c: 13a05001     	movne	r5, #1
  69fa70: e1a0c10c     	lsl	r12, r12, #2
  69fa74: e2800008     	add	r0, r0, #8
  69fa78: e58d5018     	str	r5, [sp, #0x18]
  69fa7c: e58d7038     	str	r7, [sp, #0x38]
  69fa80: e58de020     	str	lr, [sp, #0x20]
  69fa84: e58dc048     	str	r12, [sp, #0x48]
  69fa88: e58d004c     	str	r0, [sp, #0x4c]
  69fa8c: e3a02001     	mov	r2, #1
  69fa90: e59d3020     	ldr	r3, [sp, #0x20]
  69fa94: e59d1034     	ldr	r1, [sp, #0x34]
  69fa98: e3a00000     	mov	r0, #0
  69fa9c: e1a04083     	lsl	r4, r3, #1
  69faa0: e0816183     	add	r6, r1, r3, lsl #3
  69faa4: e1a05000     	mov	r5, r0
  69faa8: e58d4040     	str	r4, [sp, #0x40]
  69faac: e59d1040     	ldr	r1, [sp, #0x40]
  69fab0: e5963000     	ldr	r3, [r6]
  69fab4: e59d703c     	ldr	r7, [sp, #0x3c]
  69fab8: e0814005     	add	r4, r1, r5
  69fabc: e3a0c000     	mov	r12, #0
  69fac0: e0874284     	add	r4, r7, r4, lsl #5
  69fac4: e5937004     	ldr	r7, [r3, #0x4]
  69fac8: e1a01004     	mov	r1, r4
  69facc: e3c73001     	bic	r3, r7, #1
  69fad0: e1a03803     	lsl	r3, r3, #16
  69fad4: e1a07827     	lsr	r7, r7, #16
  69fad8: e1a03823     	lsr	r3, r3, #16
  69fadc: e58d759c     	str	r7, [sp, #0x59c]
  69fae0: e58d3598     	str	r3, [sp, #0x598]
  69fae4: e1a083a3     	lsr	r8, r3, #7
  69fae8: e1a071a3     	lsr	r7, r3, #3
  69faec: e203a00f     	and	r10, r3, #15
  69faf0: e1a0a08a     	lsl	r10, r10, #1
  69faf4: e208801e     	and	r8, r8, #30
  69faf8: e207701e     	and	r7, r7, #30
  69fafc: e3130902     	tst	r3, #32768
  69fb00: e58da014     	str	r10, [sp, #0x14]
  69fb04: e1888228     	orr	r8, r8, r8, lsr #4
  69fb08: e1877227     	orr	r7, r7, r7, lsr #4
  69fb0c: e203a01f     	and	r10, r3, #31
  69fb10: e7e4b553     	ubfx	r11, r3, #0xa, #0x5
  69fb14: e7e492d3     	ubfx	r9, r3, #0x5, #0x5
  69fb18: 0a00000e     	beq	0x69fb58 <_Z15PVRTCDecompressPKviiiPh+0x3f0> @ imm = #0x38
  69fb1c: e35c0000     	cmp	r12, #0
  69fb20: e581b000     	str	r11, [r1]
  69fb24: e9810600     	stmib	r1, {r9, r10}
  69fb28: 05943008     	ldreq	r3, [r4, #0x8]
  69fb2c: 01833243     	orreq	r3, r3, r3, asr #4
  69fb30: 05843008     	streq	r3, [r4, #0x8]
  69fb34: e3a0300f     	mov	r3, #15
  69fb38: e35c0001     	cmp	r12, #1
  69fb3c: e581300c     	str	r3, [r1, #0xc]
  69fb40: e2811010     	add	r1, r1, #16
  69fb44: 0a000012     	beq	0x69fb94 <_Z15PVRTCDecompressPKviiiPh+0x42c> @ imm = #0x48
  69fb48: e59dc04c     	ldr	r12, [sp, #0x4c]
  69fb4c: e59c3004     	ldr	r3, [r12, #0x4]
  69fb50: e3a0c001     	mov	r12, #1
  69fb54: eaffffe2     	b	0x69fae4 <_Z15PVRTCDecompressPKviiiPh+0x37c> @ imm = #-0x78
  69fb58: e5818000     	str	r8, [r1]
  69fb5c: e5817004     	str	r7, [r1, #0x4]
  69fb60: e59d7014     	ldr	r7, [sp, #0x14]
  69fb64: e35c0000     	cmp	r12, #0
  69fb68: e1a035a3     	lsr	r3, r3, #11
  69fb6c: e5817008     	str	r7, [r1, #0x8]
  69fb70: e5947008     	ldr	r7, [r4, #0x8]
  69fb74: e203300e     	and	r3, r3, #14
  69fb78: 018771c7     	orreq	r7, r7, r7, asr #3
  69fb7c: 11877247     	orrne	r7, r7, r7, asr #4
  69fb80: e35c0001     	cmp	r12, #1
  69fb84: e5847008     	str	r7, [r4, #0x8]
  69fb88: e581300c     	str	r3, [r1, #0xc]
  69fb8c: e2811010     	add	r1, r1, #16
  69fb90: 1affffec     	bne	0x69fb48 <_Z15PVRTCDecompressPKviiiPh+0x3e0> @ imm = #-0x50
  69fb94: e5963000     	ldr	r3, [r6]
  69fb98: e8931002     	ldm	r3, {r1, r12}
  69fb9c: e59d3018     	ldr	r3, [sp, #0x18]
  69fba0: e20cc001     	and	r12, r12, #1
  69fba4: e013a00c     	ands	r10, r3, r12
  69fba8: 0a000095     	beq	0x69fe04 <_Z15PVRTCDecompressPKviiiPh+0x69c> @ imm = #0x254
  69fbac: e59d4038     	ldr	r4, [sp, #0x38]
  69fbb0: e3a09000     	mov	r9, #0
  69fbb4: e1a07009     	mov	r7, r9
  69fbb8: e080b004     	add	r11, r0, r4
  69fbbc: e59dc01c     	ldr	r12, [sp, #0x1c]
  69fbc0: e089800e     	add	r8, r9, lr
  69fbc4: e3a03000     	mov	r3, #0
  69fbc8: e08c8008     	add	r8, r12, r8
  69fbcc: e0888000     	add	r8, r8, r0
  69fbd0: e1a0c003     	mov	r12, r3
  69fbd4: e089a00b     	add	r10, r9, r11
  69fbd8: e02c4007     	eor	r4, r12, r7
  69fbdc: e3140001     	tst	r4, #1
  69fbe0: 02014003     	andeq	r4, r1, #3
  69fbe4: e7882003     	str	r2, [r8, r3]
  69fbe8: 078a4003     	streq	r4, [r10, r3]
  69fbec: e2833004     	add	r3, r3, #4
  69fbf0: 01a01121     	lsreq	r1, r1, #2
  69fbf4: e3530020     	cmp	r3, #32
  69fbf8: e28cc001     	add	r12, r12, #1
  69fbfc: 1afffff5     	bne	0x69fbd8 <_Z15PVRTCDecompressPKviiiPh+0x470> @ imm = #-0x2c
  69fc00: e2877001     	add	r7, r7, #1
  69fc04: e3570004     	cmp	r7, #4
  69fc08: e2899040     	add	r9, r9, #64
  69fc0c: 1affffea     	bne	0x69fbbc <_Z15PVRTCDecompressPKviiiPh+0x454> @ imm = #-0x58
  69fc10: e59d7048     	ldr	r7, [sp, #0x48]
  69fc14: e2855001     	add	r5, r5, #1
  69fc18: e3550002     	cmp	r5, #2
  69fc1c: e2866004     	add	r6, r6, #4
  69fc20: e0800007     	add	r0, r0, r7
  69fc24: 1affffa0     	bne	0x69faac <_Z15PVRTCDecompressPKviiiPh+0x344> @ imm = #-0x180
  69fc28: e59dc020     	ldr	r12, [sp, #0x20]
  69fc2c: e59d0038     	ldr	r0, [sp, #0x38]
  69fc30: e28eec01     	add	lr, lr, #256
  69fc34: e28cc001     	add	r12, r12, #1
  69fc38: e2800c01     	add	r0, r0, #256
  69fc3c: e35e0c02     	cmp	lr, #512
  69fc40: e58dc020     	str	r12, [sp, #0x20]
  69fc44: e58d0038     	str	r0, [sp, #0x38]
  69fc48: 1affff90     	bne	0x69fa90 <_Z15PVRTCDecompressPKviiiPh+0x328> @ imm = #-0x1c0
  69fc4c: e59d5034     	ldr	r5, [sp, #0x34]
  69fc50: e59d7044     	ldr	r7, [sp, #0x44]
  69fc54: e895000f     	ldm	r5, {r0, r1, r2, r3}
  69fc58: e887000f     	stm	r7, {r0, r1, r2, r3}
  69fc5c: e59d7060     	ldr	r7, [sp, #0x60]
  69fc60: e59d4010     	ldr	r4, [sp, #0x10]
  69fc64: e59d5050     	ldr	r5, [sp, #0x50]
  69fc68: e59dc028     	ldr	r12, [sp, #0x28]
  69fc6c: e59d003c     	ldr	r0, [sp, #0x3c]
  69fc70: e59d1098     	ldr	r1, [sp, #0x98]
  69fc74: e59d2074     	ldr	r2, [sp, #0x74]
  69fc78: e59d3078     	ldr	r3, [sp, #0x78]
  69fc7c: e58dc000     	str	r12, [sp]
  69fc80: e98d00b0     	stmib	sp, {r4, r5, r7}
  69fc84: ebfffe39     	bl	0x69f570 <_ZL18InterpolateColoursPKiS0_S0_S0_iiiPi> @ imm = #-0x71c
  69fc88: e59dc028     	ldr	r12, [sp, #0x28]
  69fc8c: e58d4004     	str	r4, [sp, #0x4]
  69fc90: e59d405c     	ldr	r4, [sp, #0x5c]
  69fc94: e28d007c     	add	r0, sp, #124
  69fc98: e890000f     	ldm	r0, {r0, r1, r2, r3}
  69fc9c: e58dc000     	str	r12, [sp]
  69fca0: e58d5008     	str	r5, [sp, #0x8]
  69fca4: e58d400c     	str	r4, [sp, #0xc]
  69fca8: ebfffe30     	bl	0x69f570 <_ZL18InterpolateColoursPKiS0_S0_S0_iiiPi> @ imm = #-0x740
  69fcac: e59d5028     	ldr	r5, [sp, #0x28]
  69fcb0: e59d0094     	ldr	r0, [sp, #0x94]
  69fcb4: e3550000     	cmp	r5, #0
  69fcb8: 159d7010     	ldrne	r7, [sp, #0x10]
  69fcbc: 059dc010     	ldreq	r12, [sp, #0x10]
  69fcc0: 11e02007     	mvnne	r2, r7
  69fcc4: 01e0200c     	mvneq	r2, r12
  69fcc8: 12022004     	andne	r2, r2, #4
  69fccc: 12073007     	andne	r3, r7, #7
  69fcd0: 02022002     	andeq	r2, r2, #2
  69fcd4: 020c3003     	andeq	r3, r12, #3
  69fcd8: e1833082     	orr	r3, r3, r2, lsl #1
  69fcdc: e7904103     	ldr	r4, [r0, r3, lsl #2]
  69fce0: e3540000     	cmp	r4, #0
  69fce4: 0a000071     	beq	0x69feb0 <_Z15PVRTCDecompressPKviiiPh+0x748> @ imm = #0x1c4
  69fce8: e59d7028     	ldr	r7, [sp, #0x28]
  69fcec: e3570000     	cmp	r7, #0
  69fcf0: 0a000076     	beq	0x69fed0 <_Z15PVRTCDecompressPKviiiPh+0x768> @ imm = #0x1d8
  69fcf4: e59dc0a8     	ldr	r12, [sp, #0xa8]
  69fcf8: e023200c     	eor	r2, r3, r12
  69fcfc: e2122001     	ands	r2, r2, #1
  69fd00: 0a00007d     	beq	0x69fefc <_Z15PVRTCDecompressPKviiiPh+0x794> @ imm = #0x1f4
  69fd04: e3540001     	cmp	r4, #1
  69fd08: 0a000094     	beq	0x69ff60 <_Z15PVRTCDecompressPKviiiPh+0x7f8> @ imm = #0x250
  69fd0c: e3540002     	cmp	r4, #2
  69fd10: 0a000082     	beq	0x69ff20 <_Z15PVRTCDecompressPKviiiPh+0x7b8> @ imm = #0x208
  69fd14: e59d40b8     	ldr	r4, [sp, #0xb8]
  69fd18: e59d10bc     	ldr	r1, [sp, #0xbc]
  69fd1c: e59d50b4     	ldr	r5, [sp, #0xb4]
  69fd20: e7912103     	ldr	r2, [r1, r3, lsl #2]
  69fd24: e7943103     	ldr	r3, [r4, r3, lsl #2]
  69fd28: e3a04000     	mov	r4, #0
  69fd2c: e7952102     	ldr	r2, [r5, r2, lsl #2]
  69fd30: e795c103     	ldr	r12, [r5, r3, lsl #2]
  69fd34: e08cc002     	add	r12, r12, r2
  69fd38: e28cc001     	add	r12, r12, #1
  69fd3c: e08ccfac     	add	r12, r12, r12, lsr #31
  69fd40: e1a0c0cc     	asr	r12, r12, #1
  69fd44: e59d509c     	ldr	r5, [sp, #0x9c]
  69fd48: e59d605c     	ldr	r6, [sp, #0x5c]
  69fd4c: e59d7060     	ldr	r7, [sp, #0x60]
  69fd50: e3a03000     	mov	r3, #0
  69fd54: e7972003     	ldr	r2, [r7, r3]
  69fd58: e7960003     	ldr	r0, [r6, r3]
  69fd5c: e1a01182     	lsl	r1, r2, #3
  69fd60: e0622000     	rsb	r2, r2, r0
  69fd64: e0221c92     	mla	r2, r2, r12, r1
  69fd68: e1a021c2     	asr	r2, r2, #3
  69fd6c: e7852003     	str	r2, [r5, r3]
  69fd70: e2833004     	add	r3, r3, #4
  69fd74: e3530010     	cmp	r3, #16
  69fd78: 1afffff5     	bne	0x69fd54 <_Z15PVRTCDecompressPKviiiPh+0x5ec> @ imm = #-0x2c
  69fd7c: e59d3070     	ldr	r3, [sp, #0x70]
  69fd80: e3540000     	cmp	r4, #0
  69fd84: e59d4010     	ldr	r4, [sp, #0x10]
  69fd88: e59d55c8     	ldr	r5, [sp, #0x5c8]
  69fd8c: e59d154c     	ldr	r1, [sp, #0x54c]
  69fd90: e59d0548     	ldr	r0, [sp, #0x548]
  69fd94: e0832004     	add	r2, r3, r4
  69fd98: e0853102     	add	r3, r5, r2, lsl #2
  69fd9c: 13a0c000     	movne	r12, #0
  69fda0: 05ddc554     	ldrbeq	r12, [sp, #0x554]
  69fda4: 158dc554     	strne	r12, [sp, #0x554]
  69fda8: e7c50102     	strb	r0, [r5, r2, lsl #2]
  69fdac: e5c31001     	strb	r1, [r3, #0x1]
  69fdb0: e59d706c     	ldr	r7, [sp, #0x6c]
  69fdb4: e59d2550     	ldr	r2, [sp, #0x550]
  69fdb8: e2844001     	add	r4, r4, #1
  69fdbc: e1540007     	cmp	r4, r7
  69fdc0: e58d4010     	str	r4, [sp, #0x10]
  69fdc4: e5c3c003     	strb	r12, [r3, #0x3]
  69fdc8: e5c32002     	strb	r2, [r3, #0x2]
  69fdcc: 1afffef0     	bne	0x69f994 <_Z15PVRTCDecompressPKviiiPh+0x22c> @ imm = #-0x440
  69fdd0: e59dc050     	ldr	r12, [sp, #0x50]
  69fdd4: e59d1070     	ldr	r1, [sp, #0x70]
  69fdd8: e59d00b0     	ldr	r0, [sp, #0xb0]
  69fddc: e59d206c     	ldr	r2, [sp, #0x6c]
  69fde0: e28cc001     	add	r12, r12, #1
  69fde4: e15c0000     	cmp	r12, r0
  69fde8: e0811002     	add	r1, r1, r2
  69fdec: e58dc050     	str	r12, [sp, #0x50]
  69fdf0: e58d1070     	str	r1, [sp, #0x70]
  69fdf4: 1afffe8c     	bne	0x69f82c <_Z15PVRTCDecompressPKviiiPh+0xc4> @ imm = #-0x5d0
  69fdf8: e28ddf69     	add	sp, sp, #420
  69fdfc: e28ddb01     	add	sp, sp, #1024
  69fe00: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  69fe04: e59d3018     	ldr	r3, [sp, #0x18]
  69fe08: e3530000     	cmp	r3, #0
  69fe0c: 1a000013     	bne	0x69fe60 <_Z15PVRTCDecompressPKviiiPh+0x6f8> @ imm = #0x4c
  69fe10: e59d901c     	ldr	r9, [sp, #0x1c]
  69fe14: e59db064     	ldr	r11, [sp, #0x64]
  69fe18: e1a0a003     	mov	r10, r3
  69fe1c: e08e800a     	add	r8, lr, r10
  69fe20: e08b7008     	add	r7, r11, r8
  69fe24: e0898008     	add	r8, r9, r8
  69fe28: e0888000     	add	r8, r8, r0
  69fe2c: e0877000     	add	r7, r7, r0
  69fe30: e3a03000     	mov	r3, #0
  69fe34: e2014003     	and	r4, r1, #3
  69fe38: e788c003     	str	r12, [r8, r3]
  69fe3c: e7874003     	str	r4, [r7, r3]
  69fe40: e2833004     	add	r3, r3, #4
  69fe44: e3530010     	cmp	r3, #16
  69fe48: e1a01121     	lsr	r1, r1, #2
  69fe4c: 1afffff8     	bne	0x69fe34 <_Z15PVRTCDecompressPKviiiPh+0x6cc> @ imm = #-0x20
  69fe50: e28aa040     	add	r10, r10, #64
  69fe54: e35a0c01     	cmp	r10, #256
  69fe58: 1affffef     	bne	0x69fe1c <_Z15PVRTCDecompressPKviiiPh+0x6b4> @ imm = #-0x44
  69fe5c: eaffff6b     	b	0x69fc10 <_Z15PVRTCDecompressPKviiiPh+0x4a8> @ imm = #-0x254
  69fe60: e59d4038     	ldr	r4, [sp, #0x38]
  69fe64: e59d901c     	ldr	r9, [sp, #0x1c]
  69fe68: e0807004     	add	r7, r0, r4
  69fe6c: e08e800a     	add	r8, lr, r10
  69fe70: e0898008     	add	r8, r9, r8
  69fe74: e0888000     	add	r8, r8, r0
  69fe78: e3a03000     	mov	r3, #0
  69fe7c: e2114001     	ands	r4, r1, #1
  69fe80: 13a04003     	movne	r4, #3
  69fe84: e788c003     	str	r12, [r8, r3]
  69fe88: e7874003     	str	r4, [r7, r3]
  69fe8c: e2833004     	add	r3, r3, #4
  69fe90: e3530020     	cmp	r3, #32
  69fe94: e1a010a1     	lsr	r1, r1, #1
  69fe98: 1afffff7     	bne	0x69fe7c <_Z15PVRTCDecompressPKviiiPh+0x714> @ imm = #-0x24
  69fe9c: e28aa040     	add	r10, r10, #64
  69fea0: e35a0c01     	cmp	r10, #256
  69fea4: e2877040     	add	r7, r7, #64
  69fea8: 1affffef     	bne	0x69fe6c <_Z15PVRTCDecompressPKviiiPh+0x704> @ imm = #-0x44
  69feac: eaffff57     	b	0x69fc10 <_Z15PVRTCDecompressPKviiiPh+0x4a8> @ imm = #-0x2a4
  69feb0: e59d10a4     	ldr	r1, [sp, #0xa4]
  69feb4: e59d5064     	ldr	r5, [sp, #0x64]
  69feb8: e0812103     	add	r2, r1, r3, lsl #2
  69febc: e59f3118     	ldr	r3, [pc, #0x118]        @ 0x69ffdc <_Z15PVRTCDecompressPKviiiPh+0x874>
  69fec0: e7952002     	ldr	r2, [r5, r2]
  69fec4: e08f3003     	add	r3, pc, r3
  69fec8: e793c102     	ldr	r12, [r3, r2, lsl #2]
  69fecc: eaffff9c     	b	0x69fd44 <_Z15PVRTCDecompressPKviiiPh+0x5dc> @ imm = #-0x190
  69fed0: e59d70a4     	ldr	r7, [sp, #0xa4]
  69fed4: e59dc064     	ldr	r12, [sp, #0x64]
  69fed8: e59d00ac     	ldr	r0, [sp, #0xac]
  69fedc: e0873103     	add	r3, r7, r3, lsl #2
  69fee0: e79c4003     	ldr	r4, [r12, r3]
  69fee4: e0803104     	add	r3, r0, r4, lsl #2
  69fee8: e593c010     	ldr	r12, [r3, #0x10]
  69feec: e3540002     	cmp	r4, #2
  69fef0: 13a04000     	movne	r4, #0
  69fef4: 03a04001     	moveq	r4, #1
  69fef8: eaffff91     	b	0x69fd44 <_Z15PVRTCDecompressPKviiiPh+0x5dc> @ imm = #-0x1bc
  69fefc: e59d00a4     	ldr	r0, [sp, #0xa4]
  69ff00: e59d4064     	ldr	r4, [sp, #0x64]
  69ff04: e0801103     	add	r1, r0, r3, lsl #2
  69ff08: e59f30d0     	ldr	r3, [pc, #0xd0]         @ 0x69ffe0 <_Z15PVRTCDecompressPKviiiPh+0x878>
  69ff0c: e7941001     	ldr	r1, [r4, r1]
  69ff10: e1a04002     	mov	r4, r2
  69ff14: e08f3003     	add	r3, pc, r3
  69ff18: e793c101     	ldr	r12, [r3, r1, lsl #2]
  69ff1c: eaffff88     	b	0x69fd44 <_Z15PVRTCDecompressPKviiiPh+0x5dc> @ imm = #-0x1e0
  69ff20: e59dc0a4     	ldr	r12, [sp, #0xa4]
  69ff24: e59d7064     	ldr	r7, [sp, #0x64]
  69ff28: e2831001     	add	r1, r3, #1
  69ff2c: e2433001     	sub	r3, r3, #1
  69ff30: e087200c     	add	r2, r7, r12
  69ff34: e7923103     	ldr	r3, [r2, r3, lsl #2]
  69ff38: e59d00c0     	ldr	r0, [sp, #0xc0]
  69ff3c: e7921101     	ldr	r1, [r2, r1, lsl #2]
  69ff40: e3a04000     	mov	r4, #0
  69ff44: e790c103     	ldr	r12, [r0, r3, lsl #2]
  69ff48: e7902101     	ldr	r2, [r0, r1, lsl #2]
  69ff4c: e08cc002     	add	r12, r12, r2
  69ff50: e28cc001     	add	r12, r12, #1
  69ff54: e08ccfac     	add	r12, r12, r12, lsr #31
  69ff58: e1a0c0cc     	asr	r12, r12, #1
  69ff5c: eaffff78     	b	0x69fd44 <_Z15PVRTCDecompressPKviiiPh+0x5dc> @ imm = #-0x220
  69ff60: e59d50b8     	ldr	r5, [sp, #0xb8]
  69ff64: e59d70bc     	ldr	r7, [sp, #0xbc]
  69ff68: e59d2064     	ldr	r2, [sp, #0x64]
  69ff6c: e59d40a4     	ldr	r4, [sp, #0xa4]
  69ff70: e7950103     	ldr	r0, [r5, r3, lsl #2]
  69ff74: e59d50c4     	ldr	r5, [sp, #0xc4]
  69ff78: e797c103     	ldr	r12, [r7, r3, lsl #2]
  69ff7c: e0821004     	add	r1, r2, r4
  69ff80: e2432001     	sub	r2, r3, #1
  69ff84: e7914102     	ldr	r4, [r1, r2, lsl #2]
  69ff88: e2832001     	add	r2, r3, #1
  69ff8c: e08f3005     	add	r3, pc, r5
  69ff90: e7912102     	ldr	r2, [r1, r2, lsl #2]
  69ff94: e7931100     	ldr	r1, [r3, r0, lsl #2]
  69ff98: e793010c     	ldr	r0, [r3, r12, lsl #2]
  69ff9c: e793c104     	ldr	r12, [r3, r4, lsl #2]
  69ffa0: e7932102     	ldr	r2, [r3, r2, lsl #2]
  69ffa4: e0813000     	add	r3, r1, r0
  69ffa8: e2833002     	add	r3, r3, #2
  69ffac: e083300c     	add	r3, r3, r12
  69ffb0: e0833002     	add	r3, r3, r2
  69ffb4: e3530000     	cmp	r3, #0
  69ffb8: e283c003     	add	r12, r3, #3
  69ffbc: a1a0c003     	movge	r12, r3
  69ffc0: e1a0c14c     	asr	r12, r12, #2
  69ffc4: e3a04000     	mov	r4, #0
  69ffc8: eaffff5d     	b	0x69fd44 <_Z15PVRTCDecompressPKviiiPh+0x5dc> @ imm = #-0x28c
  69ffcc: 04 b7 24 00  	.word	0x0024b704
  69ffd0: 6c af 24 00  	.word	0x0024af6c
  69ffd4: f0 b6 24 00  	.word	0x0024b6f0
  69ffd8: dc b6 24 00  	.word	0x0024b6dc
  69ffdc: 34 b0 24 00  	.word	0x0024b034
  69ffe0: e4 af 24 00  	.word	0x0024afe4
