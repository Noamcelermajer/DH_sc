; APK-backed ARM32 disassembly for scalar transform and material parameter non-key routes.
; Each block is bounded to the exact function slice hashed in functions.json.
; Vtable slices and selected slot words are recorded in vtables.json.

; FUNCTION 0x005c6b8c size=212 sha256=06f7d7773201b3e95917ee66bd08999bfe59994666ddd98462836272ecbdf324
; symbols: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<float>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameterCvt<float>(unsigned short, unsigned int, float const&)
005c6b8c <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtIfEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSB_>:
  5c6b8c: e92d41f0     	push	{r4, r5, r6, r7, r8, lr}
  5c6b90: e590c004     	ldr	r12, [r0, #0x4]
  5c6b94: e1a04000     	mov	r4, r0
  5c6b98: e59f00b8     	ldr	r0, [pc, #0xb8]         @ 0x5c6c58 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtIfEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSB_+0xcc>
  5c6b9c: e1dc50be     	ldrh	r5, [r12, #14]
  5c6ba0: e08f0000     	add	r0, pc, r0
  5c6ba4: e1550001     	cmp	r5, r1
  5c6ba8: e1a05003     	mov	r5, r3
  5c6bac: 9a00001d     	bls	0x5c6c28 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtIfEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSB_+0x9c> @ imm = #0x74
  5c6bb0: e59c3020     	ldr	r3, [r12, #0x20]
  5c6bb4: e0931201     	adds	r1, r3, r1, lsl #4
  5c6bb8: 0a00001a     	beq	0x5c6c28 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtIfEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSB_+0x9c> @ imm = #0x68
  5c6bbc: e59fc098     	ldr	r12, [pc, #0x98]        @ 0x5c6c5c <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtIfEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSB_+0xd0>
  5c6bc0: e5d13006     	ldrb	r3, [r1, #0x6]
  5c6bc4: e790000c     	ldr	r0, [r0, r12]
  5c6bc8: e7900103     	ldr	r0, [r0, r3, lsl #2]
  5c6bcc: e3100020     	tst	r0, #32
  5c6bd0: 0a000014     	beq	0x5c6c28 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtIfEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSB_+0x9c> @ imm = #0x50
  5c6bd4: e5910008     	ldr	r0, [r1, #0x8]
  5c6bd8: e1520000     	cmp	r2, r0
  5c6bdc: 2a000011     	bhs	0x5c6c28 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtIfEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSB_+0x9c> @ imm = #0x44
  5c6be0: e3530001     	cmp	r3, #1
  5c6be4: e591600c     	ldr	r6, [r1, #0xc]
  5c6be8: e2847020     	add	r7, r4, #32
  5c6bec: 0a00000f     	beq	0x5c6c30 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtIfEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSB_+0xa4> @ imm = #0x3c
  5c6bf0: e3530005     	cmp	r3, #5
  5c6bf4: 1a000009     	bne	0x5c6c20 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtIfEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSB_+0x94> @ imm = #0x24
  5c6bf8: e5958000     	ldr	r8, [r5]
  5c6bfc: e7970006     	ldr	r0, [r7, r6]
  5c6c00: e1a01008     	mov	r1, r8
  5c6c04: ebf51ce0     	bl	0x30df8c <__aeabi_fcmpeq@plt> @ imm = #-0x2b8c80
  5c6c08: e3500000     	cmp	r0, #0
  5c6c0c: 03e03000     	mvneq	r3, #0
  5c6c10: 0584300c     	streq	r3, [r4, #0xc]
  5c6c14: 05843010     	streq	r3, [r4, #0x10]
  5c6c18: 05958000     	ldreq	r8, [r5]
  5c6c1c: e7878006     	str	r8, [r7, r6]
  5c6c20: e3a00001     	mov	r0, #1
  5c6c24: e8bd81f0     	pop	{r4, r5, r6, r7, r8, pc}
  5c6c28: e3a00000     	mov	r0, #0
  5c6c2c: e8bd81f0     	pop	{r4, r5, r6, r7, r8, pc}
  5c6c30: e5950000     	ldr	r0, [r5]
  5c6c34: ebf51e24     	bl	0x30e4cc <__aeabi_f2iz@plt> @ imm = #-0x2b8770
  5c6c38: e7973006     	ldr	r3, [r7, r6]
  5c6c3c: e1500003     	cmp	r0, r3
  5c6c40: 13e03000     	mvnne	r3, #0
  5c6c44: 1584300c     	strne	r3, [r4, #0xc]
  5c6c48: 15843010     	strne	r3, [r4, #0x10]
  5c6c4c: e7870006     	str	r0, [r7, r6]
  5c6c50: e3a00001     	mov	r0, #1
  5c6c54: e8bd81f0     	pop	{r4, r5, r6, r7, r8, pc}
  5c6c58: f0 de 3c 00  	.word	0x003cdef0
  5c6c5c: a4 2c 00 00  	.word	0x00002ca4

; FUNCTION 0x005c6c60 size=212 sha256=69340ebf775cccebcfaee287d2861aaefe5376a0f31ebfdfba33e7b7f52bd36c
; symbols: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector2d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameterCvt<glitch::core::vector2d<float> >(unsigned short, unsigned int, glitch::core::vector2d<float> const&)
005c6c60 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector2dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_>:
  5c6c60: e92d47f0     	push	{r4, r5, r6, r7, r8, r9, r10, lr}
  5c6c64: e590c004     	ldr	r12, [r0, #0x4]
  5c6c68: e1a04000     	mov	r4, r0
  5c6c6c: e59f00b8     	ldr	r0, [pc, #0xb8]         @ 0x5c6d2c <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector2dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_+0xcc>
  5c6c70: e1dc50be     	ldrh	r5, [r12, #14]
  5c6c74: e08f0000     	add	r0, pc, r0
  5c6c78: e1550001     	cmp	r5, r1
  5c6c7c: e1a05003     	mov	r5, r3
  5c6c80: 9a000010     	bls	0x5c6cc8 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector2dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_+0x68> @ imm = #0x40
  5c6c84: e59c3020     	ldr	r3, [r12, #0x20]
  5c6c88: e0931201     	adds	r1, r3, r1, lsl #4
  5c6c8c: 0a00000d     	beq	0x5c6cc8 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector2dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_+0x68> @ imm = #0x34
  5c6c90: e59fc098     	ldr	r12, [pc, #0x98]        @ 0x5c6d30 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector2dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_+0xd0>
  5c6c94: e5d13006     	ldrb	r3, [r1, #0x6]
  5c6c98: e790000c     	ldr	r0, [r0, r12]
  5c6c9c: e7900103     	ldr	r0, [r0, r3, lsl #2]
  5c6ca0: e3100040     	tst	r0, #64
  5c6ca4: 0a000007     	beq	0x5c6cc8 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector2dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_+0x68> @ imm = #0x1c
  5c6ca8: e5910008     	ldr	r0, [r1, #0x8]
  5c6cac: e1520000     	cmp	r2, r0
  5c6cb0: 2a000004     	bhs	0x5c6cc8 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector2dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_+0x68> @ imm = #0x10
  5c6cb4: e3530006     	cmp	r3, #6
  5c6cb8: e591700c     	ldr	r7, [r1, #0xc]
  5c6cbc: 0a000003     	beq	0x5c6cd0 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector2dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_+0x70> @ imm = #0xc
  5c6cc0: e3a00001     	mov	r0, #1
  5c6cc4: e8bd87f0     	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
  5c6cc8: e3a00000     	mov	r0, #0
  5c6ccc: e8bd87f0     	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
  5c6cd0: e5958000     	ldr	r8, [r5]
  5c6cd4: e2846020     	add	r6, r4, #32
  5c6cd8: e7961007     	ldr	r1, [r6, r7]
  5c6cdc: e1a00008     	mov	r0, r8
  5c6ce0: ebf51ca9     	bl	0x30df8c <__aeabi_fcmpeq@plt> @ imm = #-0x2b8d5c
  5c6ce4: e3500000     	cmp	r0, #0
  5c6ce8: e086a007     	add	r10, r6, r7
  5c6cec: 1a000008     	bne	0x5c6d14 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector2dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_+0xb4> @ imm = #0x20
  5c6cf0: e3e03000     	mvn	r3, #0
  5c6cf4: e584300c     	str	r3, [r4, #0xc]
  5c6cf8: e5843010     	str	r3, [r4, #0x10]
  5c6cfc: e5958000     	ldr	r8, [r5]
  5c6d00: e7868007     	str	r8, [r6, r7]
  5c6d04: e5953004     	ldr	r3, [r5, #0x4]
  5c6d08: e3a00001     	mov	r0, #1
  5c6d0c: e58a3004     	str	r3, [r10, #0x4]
  5c6d10: e8bd87f0     	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
  5c6d14: e5950004     	ldr	r0, [r5, #0x4]
  5c6d18: e59a1004     	ldr	r1, [r10, #0x4]
  5c6d1c: ebf51c9a     	bl	0x30df8c <__aeabi_fcmpeq@plt> @ imm = #-0x2b8d98
  5c6d20: e3500000     	cmp	r0, #0
  5c6d24: 1afffff5     	bne	0x5c6d00 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector2dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_+0xa0> @ imm = #-0x2c
  5c6d28: eafffff0     	b	0x5c6cf0 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector2dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_+0x90> @ imm = #-0x40
  5c6d2c: 1c de 3c 00  	.word	0x003cde1c
  5c6d30: a4 2c 00 00  	.word	0x00002ca4

; FUNCTION 0x005c6d34 size=240 sha256=e148425119034dc218b90144fed2b81bd1939f4b725ed11518643f52b92e3c74
; symbols: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector3d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameterCvt<glitch::core::vector3d<float> >(unsigned short, unsigned int, glitch::core::vector3d<float> const&)
005c6d34 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector3dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_>:
  5c6d34: e92d47f0     	push	{r4, r5, r6, r7, r8, r9, r10, lr}
  5c6d38: e590c004     	ldr	r12, [r0, #0x4]
  5c6d3c: e1a04000     	mov	r4, r0
  5c6d40: e59f00d4     	ldr	r0, [pc, #0xd4]         @ 0x5c6e1c <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector3dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_+0xe8>
  5c6d44: e1dc50be     	ldrh	r5, [r12, #14]
  5c6d48: e08f0000     	add	r0, pc, r0
  5c6d4c: e1550001     	cmp	r5, r1
  5c6d50: e1a05003     	mov	r5, r3
  5c6d54: 9a000010     	bls	0x5c6d9c <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector3dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_+0x68> @ imm = #0x40
  5c6d58: e59c3020     	ldr	r3, [r12, #0x20]
  5c6d5c: e0931201     	adds	r1, r3, r1, lsl #4
  5c6d60: 0a00000d     	beq	0x5c6d9c <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector3dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_+0x68> @ imm = #0x34
  5c6d64: e59fc0b4     	ldr	r12, [pc, #0xb4]        @ 0x5c6e20 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector3dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_+0xec>
  5c6d68: e5d13006     	ldrb	r3, [r1, #0x6]
  5c6d6c: e790000c     	ldr	r0, [r0, r12]
  5c6d70: e7900103     	ldr	r0, [r0, r3, lsl #2]
  5c6d74: e3100080     	tst	r0, #128
  5c6d78: 0a000007     	beq	0x5c6d9c <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector3dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_+0x68> @ imm = #0x1c
  5c6d7c: e5910008     	ldr	r0, [r1, #0x8]
  5c6d80: e1520000     	cmp	r2, r0
  5c6d84: 2a000004     	bhs	0x5c6d9c <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector3dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_+0x68> @ imm = #0x10
  5c6d88: e3530007     	cmp	r3, #7
  5c6d8c: e591800c     	ldr	r8, [r1, #0xc]
  5c6d90: 0a000003     	beq	0x5c6da4 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector3dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_+0x70> @ imm = #0xc
  5c6d94: e3a00001     	mov	r0, #1
  5c6d98: e8bd87f0     	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
  5c6d9c: e3a00000     	mov	r0, #0
  5c6da0: e8bd87f0     	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
  5c6da4: e595a000     	ldr	r10, [r5]
  5c6da8: e2846020     	add	r6, r4, #32
  5c6dac: e7960008     	ldr	r0, [r6, r8]
  5c6db0: e1a0100a     	mov	r1, r10
  5c6db4: ebf51c74     	bl	0x30df8c <__aeabi_fcmpeq@plt> @ imm = #-0x2b8e30
  5c6db8: e3500000     	cmp	r0, #0
  5c6dbc: e0867008     	add	r7, r6, r8
  5c6dc0: 1a00000a     	bne	0x5c6df0 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector3dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_+0xbc> @ imm = #0x28
  5c6dc4: e3e03000     	mvn	r3, #0
  5c6dc8: e584300c     	str	r3, [r4, #0xc]
  5c6dcc: e5843010     	str	r3, [r4, #0x10]
  5c6dd0: e595a000     	ldr	r10, [r5]
  5c6dd4: e786a008     	str	r10, [r6, r8]
  5c6dd8: e5953004     	ldr	r3, [r5, #0x4]
  5c6ddc: e3a00001     	mov	r0, #1
  5c6de0: e5873004     	str	r3, [r7, #0x4]
  5c6de4: e5953008     	ldr	r3, [r5, #0x8]
  5c6de8: e5873008     	str	r3, [r7, #0x8]
  5c6dec: e8bd87f0     	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
  5c6df0: e5970004     	ldr	r0, [r7, #0x4]
  5c6df4: e5951004     	ldr	r1, [r5, #0x4]
  5c6df8: ebf51c63     	bl	0x30df8c <__aeabi_fcmpeq@plt> @ imm = #-0x2b8e74
  5c6dfc: e3500000     	cmp	r0, #0
  5c6e00: 0affffef     	beq	0x5c6dc4 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector3dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_+0x90> @ imm = #-0x44
  5c6e04: e5970008     	ldr	r0, [r7, #0x8]
  5c6e08: e5951008     	ldr	r1, [r5, #0x8]
  5c6e0c: ebf51c5e     	bl	0x30df8c <__aeabi_fcmpeq@plt> @ imm = #-0x2b8e88
  5c6e10: e3500000     	cmp	r0, #0
  5c6e14: 1affffee     	bne	0x5c6dd4 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector3dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_+0xa0> @ imm = #-0x48
  5c6e18: eaffffe9     	b	0x5c6dc4 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector3dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_+0x90> @ imm = #-0x5c
  5c6e1c: 48 dd 3c 00  	.word	0x003cdd48
  5c6e20: a4 2c 00 00  	.word	0x00002ca4

; FUNCTION 0x005cad38 size=472 sha256=17c62a6906f872d43deac5d7748b449678121518a98f8269f6e4f3d4855e6f01
; symbols: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::video::SColor>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameterCvt<glitch::video::SColor>(unsigned short, unsigned int, glitch::video::SColor const&)
005cad38 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSC_>:
  5cad38: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  5cad3c: e5905004     	ldr	r5, [r0, #0x4]
  5cad40: e59fc1c0     	ldr	r12, [pc, #0x1c0]       @ 0x5caf08 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSC_+0x1d0>
  5cad44: e24dd014     	sub	sp, sp, #20
  5cad48: e1d560be     	ldrh	r6, [r5, #14]
  5cad4c: e1a04000     	mov	r4, r0
  5cad50: e08fc00c     	add	r12, pc, r12
  5cad54: e1560001     	cmp	r6, r1
  5cad58: 9a000016     	bls	0x5cadb8 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSC_+0x80> @ imm = #0x58
  5cad5c: e5955020     	ldr	r5, [r5, #0x20]
  5cad60: e0951201     	adds	r1, r5, r1, lsl #4
  5cad64: 0a000013     	beq	0x5cadb8 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSC_+0x80> @ imm = #0x4c
  5cad68: e59f519c     	ldr	r5, [pc, #0x19c]        @ 0x5caf0c <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSC_+0x1d4>
  5cad6c: e5d18006     	ldrb	r8, [r1, #0x6]
  5cad70: e79cc005     	ldr	r12, [r12, r5]
  5cad74: e79cc108     	ldr	r12, [r12, r8, lsl #2]
  5cad78: e31c0801     	tst	r12, #65536
  5cad7c: 0a00000d     	beq	0x5cadb8 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSC_+0x80> @ imm = #0x34
  5cad80: e591c008     	ldr	r12, [r1, #0x8]
  5cad84: e152000c     	cmp	r2, r12
  5cad88: 2a00000a     	bhs	0x5cadb8 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSC_+0x80> @ imm = #0x28
  5cad8c: e591600c     	ldr	r6, [r1, #0xc]
  5cad90: e2807020     	add	r7, r0, #32
  5cad94: e3580010     	cmp	r8, #16
  5cad98: e0875006     	add	r5, r7, r6
  5cad9c: 0a000008     	beq	0x5cadc4 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSC_+0x8c> @ imm = #0x20
  5cada0: e3580011     	cmp	r8, #17
  5cada4: 0a000047     	beq	0x5caec8 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSC_+0x190> @ imm = #0x11c
  5cada8: e3580008     	cmp	r8, #8
  5cadac: 0a000010     	beq	0x5cadf4 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSC_+0xbc> @ imm = #0x40
  5cadb0: e3a00001     	mov	r0, #1
  5cadb4: ea000000     	b	0x5cadbc <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSC_+0x84> @ imm = #0x0
  5cadb8: e3a00000     	mov	r0, #0
  5cadbc: e28dd014     	add	sp, sp, #20
  5cadc0: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  5cadc4: e5932000     	ldr	r2, [r3]
  5cadc8: e7971006     	ldr	r1, [r7, r6]
  5cadcc: e1510002     	cmp	r1, r2
  5cadd0: 13e02000     	mvnne	r2, #0
  5cadd4: 1580200c     	strne	r2, [r0, #0xc]
  5cadd8: 15802010     	strne	r2, [r0, #0x10]
  5caddc: e1a01003     	mov	r1, r3
  5cade0: e1a00005     	mov	r0, r5
  5cade4: e3a02004     	mov	r2, #4
  5cade8: ebf50e9e     	bl	0x30e868 <memcpy@plt>   @ imm = #-0x2bc588
  5cadec: e3a00001     	mov	r0, #1
  5cadf0: eafffff1     	b	0x5cadbc <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSC_+0x84> @ imm = #-0x3c
  5cadf4: e5d30000     	ldrb	r0, [r3]
  5cadf8: e5d39001     	ldrb	r9, [r3, #0x1]
  5cadfc: e5d3a002     	ldrb	r10, [r3, #0x2]
  5cae00: e5d3b003     	ldrb	r11, [r3, #0x3]
  5cae04: ebf50ed6     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x2bc4a8
  5cae08: e3081081     	movw	r1, #0x8081
  5cae0c: e3431b80     	movt	r1, #0x3b80
  5cae10: ebf50fd5     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x2bc0ac
  5cae14: e1a08000     	mov	r8, r0
  5cae18: e1a00009     	mov	r0, r9
  5cae1c: e58d8000     	str	r8, [sp]
  5cae20: ebf50ecf     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x2bc4c4
  5cae24: e3081081     	movw	r1, #0x8081
  5cae28: e3431b80     	movt	r1, #0x3b80
  5cae2c: ebf50fce     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x2bc0c8
  5cae30: e1a09000     	mov	r9, r0
  5cae34: e1a0000a     	mov	r0, r10
  5cae38: e58d9004     	str	r9, [sp, #0x4]
  5cae3c: ebf50ec8     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x2bc4e0
  5cae40: e3081081     	movw	r1, #0x8081
  5cae44: e3431b80     	movt	r1, #0x3b80
  5cae48: ebf50fc7     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x2bc0e4
  5cae4c: e58d0008     	str	r0, [sp, #0x8]
  5cae50: e1a0000b     	mov	r0, r11
  5cae54: ebf50ec2     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x2bc4f8
  5cae58: e3081081     	movw	r1, #0x8081
  5cae5c: e3431b80     	movt	r1, #0x3b80
  5cae60: ebf50fc1     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x2bc0fc
  5cae64: e58d000c     	str	r0, [sp, #0xc]
  5cae68: e1a01008     	mov	r1, r8
  5cae6c: e7970006     	ldr	r0, [r7, r6]
  5cae70: ebf50c45     	bl	0x30df8c <__aeabi_fcmpeq@plt> @ imm = #-0x2bceec
  5cae74: e3500000     	cmp	r0, #0
  5cae78: e1a0a00d     	mov	r10, sp
  5cae7c: 0a000004     	beq	0x5cae94 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSC_+0x15c> @ imm = #0x10
  5cae80: e1a01009     	mov	r1, r9
  5cae84: e5950004     	ldr	r0, [r5, #0x4]
  5cae88: ebf50c3f     	bl	0x30df8c <__aeabi_fcmpeq@plt> @ imm = #-0x2bcf04
  5cae8c: e3500000     	cmp	r0, #0
  5cae90: 1a000011     	bne	0x5caedc <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSC_+0x1a4> @ imm = #0x44
  5cae94: e3e03000     	mvn	r3, #0
  5cae98: e59a8000     	ldr	r8, [r10]
  5cae9c: e584300c     	str	r3, [r4, #0xc]
  5caea0: e5843010     	str	r3, [r4, #0x10]
  5caea4: e59a100c     	ldr	r1, [r10, #0xc]
  5caea8: e59a2004     	ldr	r2, [r10, #0x4]
  5caeac: e59a3008     	ldr	r3, [r10, #0x8]
  5caeb0: e3a00001     	mov	r0, #1
  5caeb4: e7878006     	str	r8, [r7, r6]
  5caeb8: e585100c     	str	r1, [r5, #0xc]
  5caebc: e5852004     	str	r2, [r5, #0x4]
  5caec0: e5853008     	str	r3, [r5, #0x8]
  5caec4: eaffffbc     	b	0x5cadbc <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSC_+0x84> @ imm = #-0x110
  5caec8: e1a01005     	mov	r1, r5
  5caecc: e1a02003     	mov	r2, r3
  5caed0: ebffff6d     	bl	0x5cac8c <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE14setParameterAtINS0_7SColorfEEEN5boost9enable_ifINS1_22SIsValidColorSourceCvtIT_EEvE4typeEPSC_RKNS0_6SColorE> @ imm = #-0x24c
  5caed4: e3a00001     	mov	r0, #1
  5caed8: eaffffb7     	b	0x5cadbc <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSC_+0x84> @ imm = #-0x124
  5caedc: e5950008     	ldr	r0, [r5, #0x8]
  5caee0: e59d1008     	ldr	r1, [sp, #0x8]
  5caee4: ebf50c28     	bl	0x30df8c <__aeabi_fcmpeq@plt> @ imm = #-0x2bcf60
  5caee8: e3500000     	cmp	r0, #0
  5caeec: 0affffe8     	beq	0x5cae94 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSC_+0x15c> @ imm = #-0x60
  5caef0: e595000c     	ldr	r0, [r5, #0xc]
  5caef4: e59d100c     	ldr	r1, [sp, #0xc]
  5caef8: ebf50c23     	bl	0x30df8c <__aeabi_fcmpeq@plt> @ imm = #-0x2bcf74
  5caefc: e3500000     	cmp	r0, #0
  5caf00: 1affffe7     	bne	0x5caea4 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSC_+0x16c> @ imm = #-0x64
  5caf04: eaffffe2     	b	0x5cae94 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSC_+0x15c> @ imm = #-0x78
  5caf08: 40 9d 3c 00  	.word	0x003c9d40
  5caf0c: a4 2c 00 00  	.word	0x00002ca4

; FUNCTION 0x005ce768 size=500 sha256=a3adc1b54f00d60571ed8215f9fcbdf89641323c6b14762c1ee09d3e845d5fe5
; symbols: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParamaterOverload<glitch::core::vector4d<float> >, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameterCvt<glitch::core::vector4d<float> >(unsigned short, unsigned int, glitch::core::vector4d<float> const&)
005ce768 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_>:
  5ce768: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  5ce76c: e590c004     	ldr	r12, [r0, #0x4]
  5ce770: e1a04000     	mov	r4, r0
  5ce774: e59f01d8     	ldr	r0, [pc, #0x1d8]        @ 0x5ce954 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_+0x1ec>
  5ce778: e1dc50be     	ldrh	r5, [r12, #14]
  5ce77c: e24dd00c     	sub	sp, sp, #12
  5ce780: e08f0000     	add	r0, pc, r0
  5ce784: e1550001     	cmp	r5, r1
  5ce788: e1a06003     	mov	r6, r3
  5ce78c: 9a000016     	bls	0x5ce7ec <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_+0x84> @ imm = #0x58
  5ce790: e59c3020     	ldr	r3, [r12, #0x20]
  5ce794: e0931201     	adds	r1, r3, r1, lsl #4
  5ce798: 0a000013     	beq	0x5ce7ec <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_+0x84> @ imm = #0x4c
  5ce79c: e59fc1b4     	ldr	r12, [pc, #0x1b4]       @ 0x5ce958 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_+0x1f0>
  5ce7a0: e5d13006     	ldrb	r3, [r1, #0x6]
  5ce7a4: e790000c     	ldr	r0, [r0, r12]
  5ce7a8: e7900103     	ldr	r0, [r0, r3, lsl #2]
  5ce7ac: e3100c01     	tst	r0, #256
  5ce7b0: 0a00000d     	beq	0x5ce7ec <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_+0x84> @ imm = #0x34
  5ce7b4: e5910008     	ldr	r0, [r1, #0x8]
  5ce7b8: e1520000     	cmp	r2, r0
  5ce7bc: 2a00000a     	bhs	0x5ce7ec <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_+0x84> @ imm = #0x28
  5ce7c0: e591700c     	ldr	r7, [r1, #0xc]
  5ce7c4: e2848020     	add	r8, r4, #32
  5ce7c8: e3530010     	cmp	r3, #16
  5ce7cc: e0885007     	add	r5, r8, r7
  5ce7d0: 0a000009     	beq	0x5ce7fc <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_+0x94> @ imm = #0x24
  5ce7d4: e3530011     	cmp	r3, #17
  5ce7d8: 0a000047     	beq	0x5ce8fc <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_+0x194> @ imm = #0x11c
  5ce7dc: e3530008     	cmp	r3, #8
  5ce7e0: 0a00002d     	beq	0x5ce89c <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_+0x134> @ imm = #0xb4
  5ce7e4: e3a0c001     	mov	r12, #1
  5ce7e8: ea000000     	b	0x5ce7f0 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_+0x88> @ imm = #0x0
  5ce7ec: e3a0c000     	mov	r12, #0
  5ce7f0: e1a0000c     	mov	r0, r12
  5ce7f4: e28dd00c     	add	sp, sp, #12
  5ce7f8: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  5ce7fc: e3a01443     	mov	r1, #1124073472
  5ce800: e596000c     	ldr	r0, [r6, #0xc]
  5ce804: e281187f     	add	r1, r1, #8323072
  5ce808: ebf50157     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x2bfaa4
  5ce80c: eb0bbea3     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x2efa8c
  5ce810: e3a01443     	mov	r1, #1124073472
  5ce814: e6ef9070     	uxtb	r9, r0
  5ce818: e281187f     	add	r1, r1, #8323072
  5ce81c: e5960000     	ldr	r0, [r6]
  5ce820: ebf50151     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x2bfabc
  5ce824: eb0bbe9d     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x2efa74
  5ce828: e3a01443     	mov	r1, #1124073472
  5ce82c: e6efa070     	uxtb	r10, r0
  5ce830: e281187f     	add	r1, r1, #8323072
  5ce834: e5960004     	ldr	r0, [r6, #0x4]
  5ce838: ebf5014b     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x2bfad4
  5ce83c: eb0bbe97     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x2efa5c
  5ce840: e3a01443     	mov	r1, #1124073472
  5ce844: e6efb070     	uxtb	r11, r0
  5ce848: e281187f     	add	r1, r1, #8323072
  5ce84c: e5960008     	ldr	r0, [r6, #0x8]
  5ce850: ebf50145     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x2bfaec
  5ce854: eb0bbe91     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x2efa44
  5ce858: e6ef0070     	uxtb	r0, r0
  5ce85c: e5cd9007     	strb	r9, [sp, #0x7]
  5ce860: e5cd0006     	strb	r0, [sp, #0x6]
  5ce864: e5cdb005     	strb	r11, [sp, #0x5]
  5ce868: e5cda004     	strb	r10, [sp, #0x4]
  5ce86c: e59d3004     	ldr	r3, [sp, #0x4]
  5ce870: e7982007     	ldr	r2, [r8, r7]
  5ce874: e3a0c001     	mov	r12, #1
  5ce878: e1520003     	cmp	r2, r3
  5ce87c: 13e03000     	mvnne	r3, #0
  5ce880: 1584300c     	strne	r3, [r4, #0xc]
  5ce884: 15843010     	strne	r3, [r4, #0x10]
  5ce888: e5c5b001     	strb	r11, [r5, #0x1]
  5ce88c: e5c59003     	strb	r9, [r5, #0x3]
  5ce890: e5c50002     	strb	r0, [r5, #0x2]
  5ce894: e7c8a007     	strb	r10, [r8, r7]
  5ce898: eaffffd4     	b	0x5ce7f0 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_+0x88> @ imm = #-0xb0
  5ce89c: e596a000     	ldr	r10, [r6]
  5ce8a0: e7980007     	ldr	r0, [r8, r7]
  5ce8a4: e1a0100a     	mov	r1, r10
  5ce8a8: ebf4fdb7     	bl	0x30df8c <__aeabi_fcmpeq@plt> @ imm = #-0x2c0924
  5ce8ac: e3500000     	cmp	r0, #0
  5ce8b0: 0a000004     	beq	0x5ce8c8 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_+0x160> @ imm = #0x10
  5ce8b4: e5950004     	ldr	r0, [r5, #0x4]
  5ce8b8: e5961004     	ldr	r1, [r6, #0x4]
  5ce8bc: ebf4fdb2     	bl	0x30df8c <__aeabi_fcmpeq@plt> @ imm = #-0x2c0938
  5ce8c0: e3500000     	cmp	r0, #0
  5ce8c4: 1a000017     	bne	0x5ce928 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_+0x1c0> @ imm = #0x5c
  5ce8c8: e3e03000     	mvn	r3, #0
  5ce8cc: e584300c     	str	r3, [r4, #0xc]
  5ce8d0: e5843010     	str	r3, [r4, #0x10]
  5ce8d4: e596a000     	ldr	r10, [r6]
  5ce8d8: e788a007     	str	r10, [r8, r7]
  5ce8dc: e5963004     	ldr	r3, [r6, #0x4]
  5ce8e0: e3a0c001     	mov	r12, #1
  5ce8e4: e5853004     	str	r3, [r5, #0x4]
  5ce8e8: e5963008     	ldr	r3, [r6, #0x8]
  5ce8ec: e5853008     	str	r3, [r5, #0x8]
  5ce8f0: e596300c     	ldr	r3, [r6, #0xc]
  5ce8f4: e585300c     	str	r3, [r5, #0xc]
  5ce8f8: eaffffbc     	b	0x5ce7f0 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_+0x88> @ imm = #-0x110
  5ce8fc: e1a01006     	mov	r1, r6
  5ce900: e1a00005     	mov	r0, r5
  5ce904: ebfff063     	bl	0x5caa98 <_ZNK6glitch5video7SColorf6equalsERKS1_f.clone.1> @ imm = #-0x3e74
  5ce908: e3500000     	cmp	r0, #0
  5ce90c: 03e03000     	mvneq	r3, #0
  5ce910: 0584300c     	streq	r3, [r4, #0xc]
  5ce914: 05843010     	streq	r3, [r4, #0x10]
  5ce918: e896000f     	ldm	r6, {r0, r1, r2, r3}
  5ce91c: e3a0c001     	mov	r12, #1
  5ce920: e885000f     	stm	r5, {r0, r1, r2, r3}
  5ce924: eaffffb1     	b	0x5ce7f0 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_+0x88> @ imm = #-0x13c
  5ce928: e5950008     	ldr	r0, [r5, #0x8]
  5ce92c: e5961008     	ldr	r1, [r6, #0x8]
  5ce930: ebf4fd95     	bl	0x30df8c <__aeabi_fcmpeq@plt> @ imm = #-0x2c09ac
  5ce934: e3500000     	cmp	r0, #0
  5ce938: 0affffe2     	beq	0x5ce8c8 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_+0x160> @ imm = #-0x78
  5ce93c: e595000c     	ldr	r0, [r5, #0xc]
  5ce940: e596100c     	ldr	r1, [r6, #0xc]
  5ce944: ebf4fd90     	bl	0x30df8c <__aeabi_fcmpeq@plt> @ imm = #-0x2c09c0
  5ce948: e3500000     	cmp	r0, #0
  5ce94c: 1affffe1     	bne	0x5ce8d8 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_+0x170> @ imm = #-0x7c
  5ce950: eaffffdc     	b	0x5ce8c8 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_+0x160> @ imm = #-0x90
  5ce954: 10 63 3c 00  	.word	0x003c6310
  5ce958: a4 2c 00 00  	.word	0x00002ca4

; FUNCTION 0x0060f148 size=164 sha256=6b483fa88c90ebf4c38bb169498f3daa3979585d7674ffa59719a23e635d91fc
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 0, float> > >::getBlendedValue(void*, float*, int, void*) const
0060f148 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE15getBlendedValueEPvPfiSD_>:
  60f148: e92d4ff8     	push	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
  60f14c: e3530001     	cmp	r3, #1
  60f150: e1a04003     	mov	r4, r3
  60f154: e1a09002     	mov	r9, r2
  60f158: e59db028     	ldr	r11, [sp, #0x28]
  60f15c: e1a05001     	mov	r5, r1
  60f160: 0a00001c     	beq	0x60f1d8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE15getBlendedValueEPvPfiSD_+0x90> @ imm = #0x70
  60f164: e3530000     	cmp	r3, #0
  60f168: 03a08000     	moveq	r8, #0
  60f16c: 01a0a008     	moveq	r10, r8
  60f170: 0a000015     	beq	0x60f1cc <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE15getBlendedValueEPvPfiSD_+0x84> @ imm = #0x54
  60f174: e3a08000     	mov	r8, #0
  60f178: e3a06000     	mov	r6, #0
  60f17c: e1a0a008     	mov	r10, r8
  60f180: e7997006     	ldr	r7, [r9, r6]
  60f184: e5951000     	ldr	r1, [r5]
  60f188: e2866004     	add	r6, r6, #4
  60f18c: e1a00007     	mov	r0, r7
  60f190: ebf3fef5     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x30042c
  60f194: e1a01000     	mov	r1, r0
  60f198: e1a00008     	mov	r0, r8
  60f19c: ebf3fe80     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x300600
  60f1a0: e5951004     	ldr	r1, [r5, #0x4]
  60f1a4: e1a08000     	mov	r8, r0
  60f1a8: e1a00007     	mov	r0, r7
  60f1ac: ebf3feee     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x300448
  60f1b0: e1a01000     	mov	r1, r0
  60f1b4: e1a0000a     	mov	r0, r10
  60f1b8: ebf3fe79     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x30061c
  60f1bc: e2544001     	subs	r4, r4, #1
  60f1c0: e1a0a000     	mov	r10, r0
  60f1c4: e2855008     	add	r5, r5, #8
  60f1c8: 1affffec     	bne	0x60f180 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE15getBlendedValueEPvPfiSD_+0x38> @ imm = #-0x50
  60f1cc: e58ba004     	str	r10, [r11, #0x4]
  60f1d0: e58b8000     	str	r8, [r11]
  60f1d4: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
  60f1d8: e5913000     	ldr	r3, [r1]
  60f1dc: e58b3000     	str	r3, [r11]
  60f1e0: e5913004     	ldr	r3, [r1, #0x4]
  60f1e4: e58b3004     	str	r3, [r11, #0x4]
  60f1e8: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}

; FUNCTION 0x0061110c size=148 sha256=733be348d05c5e51197510512b81a6f5671a98303f6e76e9e7eb5481850cff45
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float, glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float> > >::getInstance()
0061110c <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEEEE11getInstanceEv>:
  61110c: e92d4070     	push	{r4, r5, r6, lr}
  611110: e59f4070     	ldr	r4, [pc, #0x70]         @ 0x611188 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEEEE11getInstanceEv+0x7c>
  611114: e59f3070     	ldr	r3, [pc, #0x70]         @ 0x61118c <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEEEE11getInstanceEv+0x80>
  611118: e08f4004     	add	r4, pc, r4
  61111c: e7946003     	ldr	r6, [r4, r3]
  611120: e5963000     	ldr	r3, [r6]
  611124: e3130001     	tst	r3, #1
  611128: 0a000002     	beq	0x611138 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEEEE11getInstanceEv+0x2c> @ imm = #0x8
  61112c: e59f505c     	ldr	r5, [pc, #0x5c]         @ 0x611190 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEEEE11getInstanceEv+0x84>
  611130: e7940005     	ldr	r0, [r4, r5]
  611134: e8bd8070     	pop	{r4, r5, r6, pc}
  611138: e1a00006     	mov	r0, r6
  61113c: ebf3f58a     	bl	0x30e76c <__cxa_guard_acquire@plt> @ imm = #-0x3029d8
  611140: e3500000     	cmp	r0, #0
  611144: 0afffff8     	beq	0x61112c <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEEEE11getInstanceEv+0x20> @ imm = #-0x20
  611148: e59f3044     	ldr	r3, [pc, #0x44]         @ 0x611194 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEEEE11getInstanceEv+0x88>
  61114c: e59f503c     	ldr	r5, [pc, #0x3c]         @ 0x611190 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEEEE11getInstanceEv+0x84>
  611150: e1a00006     	mov	r0, r6
  611154: e7943003     	ldr	r3, [r4, r3]
  611158: e7946005     	ldr	r6, [r4, r5]
  61115c: e2833008     	add	r3, r3, #8
  611160: e5863000     	str	r3, [r6]
  611164: ebf3f634     	bl	0x30ea3c <__cxa_guard_release@plt> @ imm = #-0x302730
  611168: e59f3028     	ldr	r3, [pc, #0x28]         @ 0x611198 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEEEE11getInstanceEv+0x8c>
  61116c: e1a00006     	mov	r0, r6
  611170: e7941003     	ldr	r1, [r4, r3]
  611174: e59f3020     	ldr	r3, [pc, #0x20]         @ 0x61119c <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEEEE11getInstanceEv+0x90>
  611178: e7942003     	ldr	r2, [r4, r3]
  61117c: ebf3f460     	bl	0x30e304 <__aeabi_atexit@plt> @ imm = #-0x302e80
  611180: e7940005     	ldr	r0, [r4, r5]
  611184: e8bd8070     	pop	{r4, r5, r6, pc}
  611188: 78 39 38 00  	.word	0x00383978
  61118c: b0 22 00 00  	.word	0x000022b0
  611190: ec 36 00 00  	.word	0x000036ec
  611194: dc 19 00 00  	.word	0x000019dc
  611198: 08 38 00 00  	.word	0x00003808
  61119c: 90 18 00 00  	.word	0x00001890

; FUNCTION 0x006111a0 size=148 sha256=5c3f4f3158e9101bcca5613458e2f0c261e01067c56229f3f89f376f44529942
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 0, float> > >::getInstance()
006111a0 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE11getInstanceEv>:
  6111a0: e92d4070     	push	{r4, r5, r6, lr}
  6111a4: e59f4070     	ldr	r4, [pc, #0x70]         @ 0x61121c <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE11getInstanceEv+0x7c>
  6111a8: e59f3070     	ldr	r3, [pc, #0x70]         @ 0x611220 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE11getInstanceEv+0x80>
  6111ac: e08f4004     	add	r4, pc, r4
  6111b0: e7946003     	ldr	r6, [r4, r3]
  6111b4: e5963000     	ldr	r3, [r6]
  6111b8: e3130001     	tst	r3, #1
  6111bc: 0a000002     	beq	0x6111cc <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE11getInstanceEv+0x2c> @ imm = #0x8
  6111c0: e59f505c     	ldr	r5, [pc, #0x5c]         @ 0x611224 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE11getInstanceEv+0x84>
  6111c4: e7940005     	ldr	r0, [r4, r5]
  6111c8: e8bd8070     	pop	{r4, r5, r6, pc}
  6111cc: e1a00006     	mov	r0, r6
  6111d0: ebf3f565     	bl	0x30e76c <__cxa_guard_acquire@plt> @ imm = #-0x302a6c
  6111d4: e3500000     	cmp	r0, #0
  6111d8: 0afffff8     	beq	0x6111c0 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE11getInstanceEv+0x20> @ imm = #-0x20
  6111dc: e59f3044     	ldr	r3, [pc, #0x44]         @ 0x611228 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE11getInstanceEv+0x88>
  6111e0: e59f503c     	ldr	r5, [pc, #0x3c]         @ 0x611224 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE11getInstanceEv+0x84>
  6111e4: e1a00006     	mov	r0, r6
  6111e8: e7943003     	ldr	r3, [r4, r3]
  6111ec: e7946005     	ldr	r6, [r4, r5]
  6111f0: e2833008     	add	r3, r3, #8
  6111f4: e5863000     	str	r3, [r6]
  6111f8: ebf3f60f     	bl	0x30ea3c <__cxa_guard_release@plt> @ imm = #-0x3027c4
  6111fc: e59f3028     	ldr	r3, [pc, #0x28]         @ 0x61122c <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE11getInstanceEv+0x8c>
  611200: e1a00006     	mov	r0, r6
  611204: e7941003     	ldr	r1, [r4, r3]
  611208: e59f3020     	ldr	r3, [pc, #0x20]         @ 0x611230 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE11getInstanceEv+0x90>
  61120c: e7942003     	ldr	r2, [r4, r3]
  611210: ebf3f43b     	bl	0x30e304 <__aeabi_atexit@plt> @ imm = #-0x302f14
  611214: e7940005     	ldr	r0, [r4, r5]
  611218: e8bd8070     	pop	{r4, r5, r6, pc}
  61121c: e4 38 38 00  	.word	0x003838e4
  611220: ec 0d 00 00  	.word	0x00000dec
  611224: 5c 18 00 00  	.word	0x0000185c
  611228: 04 3b 00 00  	.word	0x00003b04
  61122c: b8 21 00 00  	.word	0x000021b8
  611230: 90 18 00 00  	.word	0x00001890

; FUNCTION 0x00611234 size=148 sha256=746e3dc1491c6c9a3b414697894c006db5a3e25b27daec48404af9e47e90c337
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 1, float> > >::getInstance()
00611234 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE11getInstanceEv>:
  611234: e92d4070     	push	{r4, r5, r6, lr}
  611238: e59f4070     	ldr	r4, [pc, #0x70]         @ 0x6112b0 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE11getInstanceEv+0x7c>
  61123c: e59f3070     	ldr	r3, [pc, #0x70]         @ 0x6112b4 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE11getInstanceEv+0x80>
  611240: e08f4004     	add	r4, pc, r4
  611244: e7946003     	ldr	r6, [r4, r3]
  611248: e5963000     	ldr	r3, [r6]
  61124c: e3130001     	tst	r3, #1
  611250: 0a000002     	beq	0x611260 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE11getInstanceEv+0x2c> @ imm = #0x8
  611254: e59f505c     	ldr	r5, [pc, #0x5c]         @ 0x6112b8 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE11getInstanceEv+0x84>
  611258: e7940005     	ldr	r0, [r4, r5]
  61125c: e8bd8070     	pop	{r4, r5, r6, pc}
  611260: e1a00006     	mov	r0, r6
  611264: ebf3f540     	bl	0x30e76c <__cxa_guard_acquire@plt> @ imm = #-0x302b00
  611268: e3500000     	cmp	r0, #0
  61126c: 0afffff8     	beq	0x611254 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE11getInstanceEv+0x20> @ imm = #-0x20
  611270: e59f3044     	ldr	r3, [pc, #0x44]         @ 0x6112bc <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE11getInstanceEv+0x88>
  611274: e59f503c     	ldr	r5, [pc, #0x3c]         @ 0x6112b8 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE11getInstanceEv+0x84>
  611278: e1a00006     	mov	r0, r6
  61127c: e7943003     	ldr	r3, [r4, r3]
  611280: e7946005     	ldr	r6, [r4, r5]
  611284: e2833008     	add	r3, r3, #8
  611288: e5863000     	str	r3, [r6]
  61128c: ebf3f5ea     	bl	0x30ea3c <__cxa_guard_release@plt> @ imm = #-0x302858
  611290: e59f3028     	ldr	r3, [pc, #0x28]         @ 0x6112c0 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE11getInstanceEv+0x8c>
  611294: e1a00006     	mov	r0, r6
  611298: e7941003     	ldr	r1, [r4, r3]
  61129c: e59f3020     	ldr	r3, [pc, #0x20]         @ 0x6112c4 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE11getInstanceEv+0x90>
  6112a0: e7942003     	ldr	r2, [r4, r3]
  6112a4: ebf3f416     	bl	0x30e304 <__aeabi_atexit@plt> @ imm = #-0x302fa8
  6112a8: e7940005     	ldr	r0, [r4, r5]
  6112ac: e8bd8070     	pop	{r4, r5, r6, pc}
  6112b0: 50 38 38 00  	.word	0x00383850
  6112b4: 20 41 00 00  	.word	0x00004120
  6112b8: 08 2c 00 00  	.word	0x00002c08
  6112bc: 20 21 00 00  	.word	0x00002120
  6112c0: 50 0e 00 00  	.word	0x00000e50
  6112c4: 90 18 00 00  	.word	0x00001890

; FUNCTION 0x006112c8 size=148 sha256=47cf8c1d9a6557f3f6e86689d5e66d9a32957b4efe6e96dff6e96d126f9ba396
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, 0, float> > >::getInstance()
006112c8 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE11getInstanceEv>:
  6112c8: e92d4070     	push	{r4, r5, r6, lr}
  6112cc: e59f4070     	ldr	r4, [pc, #0x70]         @ 0x611344 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE11getInstanceEv+0x7c>
  6112d0: e59f3070     	ldr	r3, [pc, #0x70]         @ 0x611348 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE11getInstanceEv+0x80>
  6112d4: e08f4004     	add	r4, pc, r4
  6112d8: e7946003     	ldr	r6, [r4, r3]
  6112dc: e5963000     	ldr	r3, [r6]
  6112e0: e3130001     	tst	r3, #1
  6112e4: 0a000002     	beq	0x6112f4 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE11getInstanceEv+0x2c> @ imm = #0x8
  6112e8: e59f505c     	ldr	r5, [pc, #0x5c]         @ 0x61134c <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE11getInstanceEv+0x84>
  6112ec: e7940005     	ldr	r0, [r4, r5]
  6112f0: e8bd8070     	pop	{r4, r5, r6, pc}
  6112f4: e1a00006     	mov	r0, r6
  6112f8: ebf3f51b     	bl	0x30e76c <__cxa_guard_acquire@plt> @ imm = #-0x302b94
  6112fc: e3500000     	cmp	r0, #0
  611300: 0afffff8     	beq	0x6112e8 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE11getInstanceEv+0x20> @ imm = #-0x20
  611304: e59f3044     	ldr	r3, [pc, #0x44]         @ 0x611350 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE11getInstanceEv+0x88>
  611308: e59f503c     	ldr	r5, [pc, #0x3c]         @ 0x61134c <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE11getInstanceEv+0x84>
  61130c: e1a00006     	mov	r0, r6
  611310: e7943003     	ldr	r3, [r4, r3]
  611314: e7946005     	ldr	r6, [r4, r5]
  611318: e2833008     	add	r3, r3, #8
  61131c: e5863000     	str	r3, [r6]
  611320: ebf3f5c5     	bl	0x30ea3c <__cxa_guard_release@plt> @ imm = #-0x3028ec
  611324: e59f3028     	ldr	r3, [pc, #0x28]         @ 0x611354 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE11getInstanceEv+0x8c>
  611328: e1a00006     	mov	r0, r6
  61132c: e7941003     	ldr	r1, [r4, r3]
  611330: e59f3020     	ldr	r3, [pc, #0x20]         @ 0x611358 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE11getInstanceEv+0x90>
  611334: e7942003     	ldr	r2, [r4, r3]
  611338: ebf3f3f1     	bl	0x30e304 <__aeabi_atexit@plt> @ imm = #-0x30303c
  61133c: e7940005     	ldr	r0, [r4, r5]
  611340: e8bd8070     	pop	{r4, r5, r6, pc}
  611344: bc 37 38 00  	.word	0x003837bc
  611348: 60 1d 00 00  	.word	0x00001d60
  61134c: c4 28 00 00  	.word	0x000028c4
  611350: 70 48 00 00  	.word	0x00004870
  611354: 14 0f 00 00  	.word	0x00000f14
  611358: 90 18 00 00  	.word	0x00001890

; FUNCTION 0x0061135c size=148 sha256=20e83e742bd23554acc2afac2b43886b6f75040e4b77e0534cd36ab4ad4aaefa
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 0, float> > >::getInstance()
0061135c <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE11getInstanceEv>:
  61135c: e92d4070     	push	{r4, r5, r6, lr}
  611360: e59f4070     	ldr	r4, [pc, #0x70]         @ 0x6113d8 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE11getInstanceEv+0x7c>
  611364: e59f3070     	ldr	r3, [pc, #0x70]         @ 0x6113dc <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE11getInstanceEv+0x80>
  611368: e08f4004     	add	r4, pc, r4
  61136c: e7946003     	ldr	r6, [r4, r3]
  611370: e5963000     	ldr	r3, [r6]
  611374: e3130001     	tst	r3, #1
  611378: 0a000002     	beq	0x611388 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE11getInstanceEv+0x2c> @ imm = #0x8
  61137c: e59f505c     	ldr	r5, [pc, #0x5c]         @ 0x6113e0 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE11getInstanceEv+0x84>
  611380: e7940005     	ldr	r0, [r4, r5]
  611384: e8bd8070     	pop	{r4, r5, r6, pc}
  611388: e1a00006     	mov	r0, r6
  61138c: ebf3f4f6     	bl	0x30e76c <__cxa_guard_acquire@plt> @ imm = #-0x302c28
  611390: e3500000     	cmp	r0, #0
  611394: 0afffff8     	beq	0x61137c <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE11getInstanceEv+0x20> @ imm = #-0x20
  611398: e59f3044     	ldr	r3, [pc, #0x44]         @ 0x6113e4 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE11getInstanceEv+0x88>
  61139c: e59f503c     	ldr	r5, [pc, #0x3c]         @ 0x6113e0 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE11getInstanceEv+0x84>
  6113a0: e1a00006     	mov	r0, r6
  6113a4: e7943003     	ldr	r3, [r4, r3]
  6113a8: e7946005     	ldr	r6, [r4, r5]
  6113ac: e2833008     	add	r3, r3, #8
  6113b0: e5863000     	str	r3, [r6]
  6113b4: ebf3f5a0     	bl	0x30ea3c <__cxa_guard_release@plt> @ imm = #-0x302980
  6113b8: e59f3028     	ldr	r3, [pc, #0x28]         @ 0x6113e8 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE11getInstanceEv+0x8c>
  6113bc: e1a00006     	mov	r0, r6
  6113c0: e7941003     	ldr	r1, [r4, r3]
  6113c4: e59f3020     	ldr	r3, [pc, #0x20]         @ 0x6113ec <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE11getInstanceEv+0x90>
  6113c8: e7942003     	ldr	r2, [r4, r3]
  6113cc: ebf3f3cc     	bl	0x30e304 <__aeabi_atexit@plt> @ imm = #-0x3030d0
  6113d0: e7940005     	ldr	r0, [r4, r5]
  6113d4: e8bd8070     	pop	{r4, r5, r6, pc}
  6113d8: 28 37 38 00  	.word	0x00383728
  6113dc: 6c 0e 00 00  	.word	0x00000e6c
  6113e0: 1c 28 00 00  	.word	0x0000281c
  6113e4: e0 39 00 00  	.word	0x000039e0
  6113e8: 24 38 00 00  	.word	0x00003824
  6113ec: 90 18 00 00  	.word	0x00001890

; FUNCTION 0x006113f0 size=148 sha256=47b7743a1ef721e55061dedee5ff0a2b4a62472ce54831f256718d8082769c8d
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 1, float> > >::getInstance()
006113f0 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE11getInstanceEv>:
  6113f0: e92d4070     	push	{r4, r5, r6, lr}
  6113f4: e59f4070     	ldr	r4, [pc, #0x70]         @ 0x61146c <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE11getInstanceEv+0x7c>
  6113f8: e59f3070     	ldr	r3, [pc, #0x70]         @ 0x611470 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE11getInstanceEv+0x80>
  6113fc: e08f4004     	add	r4, pc, r4
  611400: e7946003     	ldr	r6, [r4, r3]
  611404: e5963000     	ldr	r3, [r6]
  611408: e3130001     	tst	r3, #1
  61140c: 0a000002     	beq	0x61141c <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE11getInstanceEv+0x2c> @ imm = #0x8
  611410: e59f505c     	ldr	r5, [pc, #0x5c]         @ 0x611474 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE11getInstanceEv+0x84>
  611414: e7940005     	ldr	r0, [r4, r5]
  611418: e8bd8070     	pop	{r4, r5, r6, pc}
  61141c: e1a00006     	mov	r0, r6
  611420: ebf3f4d1     	bl	0x30e76c <__cxa_guard_acquire@plt> @ imm = #-0x302cbc
  611424: e3500000     	cmp	r0, #0
  611428: 0afffff8     	beq	0x611410 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE11getInstanceEv+0x20> @ imm = #-0x20
  61142c: e59f3044     	ldr	r3, [pc, #0x44]         @ 0x611478 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE11getInstanceEv+0x88>
  611430: e59f503c     	ldr	r5, [pc, #0x3c]         @ 0x611474 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE11getInstanceEv+0x84>
  611434: e1a00006     	mov	r0, r6
  611438: e7943003     	ldr	r3, [r4, r3]
  61143c: e7946005     	ldr	r6, [r4, r5]
  611440: e2833008     	add	r3, r3, #8
  611444: e5863000     	str	r3, [r6]
  611448: ebf3f57b     	bl	0x30ea3c <__cxa_guard_release@plt> @ imm = #-0x302a14
  61144c: e59f3028     	ldr	r3, [pc, #0x28]         @ 0x61147c <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE11getInstanceEv+0x8c>
  611450: e1a00006     	mov	r0, r6
  611454: e7941003     	ldr	r1, [r4, r3]
  611458: e59f3020     	ldr	r3, [pc, #0x20]         @ 0x611480 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE11getInstanceEv+0x90>
  61145c: e7942003     	ldr	r2, [r4, r3]
  611460: ebf3f3a7     	bl	0x30e304 <__aeabi_atexit@plt> @ imm = #-0x303164
  611464: e7940005     	ldr	r0, [r4, r5]
  611468: e8bd8070     	pop	{r4, r5, r6, pc}
  61146c: 94 36 38 00  	.word	0x00383694
  611470: a8 27 00 00  	.word	0x000027a8
  611474: 0c 22 00 00  	.word	0x0000220c
  611478: 20 23 00 00  	.word	0x00002320
  61147c: 50 34 00 00  	.word	0x00003450
  611480: 90 18 00 00  	.word	0x00001890

; FUNCTION 0x00611484 size=148 sha256=5b8a485eccaa72ba5fd027ec9a88197aee52ae5f1c3d71496311b9aa5ac20d10
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 2, float> > >::getInstance()
00611484 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEE11getInstanceEv>:
  611484: e92d4070     	push	{r4, r5, r6, lr}
  611488: e59f4070     	ldr	r4, [pc, #0x70]         @ 0x611500 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEE11getInstanceEv+0x7c>
  61148c: e59f3070     	ldr	r3, [pc, #0x70]         @ 0x611504 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEE11getInstanceEv+0x80>
  611490: e08f4004     	add	r4, pc, r4
  611494: e7946003     	ldr	r6, [r4, r3]
  611498: e5963000     	ldr	r3, [r6]
  61149c: e3130001     	tst	r3, #1
  6114a0: 0a000002     	beq	0x6114b0 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEE11getInstanceEv+0x2c> @ imm = #0x8
  6114a4: e59f505c     	ldr	r5, [pc, #0x5c]         @ 0x611508 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEE11getInstanceEv+0x84>
  6114a8: e7940005     	ldr	r0, [r4, r5]
  6114ac: e8bd8070     	pop	{r4, r5, r6, pc}
  6114b0: e1a00006     	mov	r0, r6
  6114b4: ebf3f4ac     	bl	0x30e76c <__cxa_guard_acquire@plt> @ imm = #-0x302d50
  6114b8: e3500000     	cmp	r0, #0
  6114bc: 0afffff8     	beq	0x6114a4 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEE11getInstanceEv+0x20> @ imm = #-0x20
  6114c0: e59f3044     	ldr	r3, [pc, #0x44]         @ 0x61150c <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEE11getInstanceEv+0x88>
  6114c4: e59f503c     	ldr	r5, [pc, #0x3c]         @ 0x611508 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEE11getInstanceEv+0x84>
  6114c8: e1a00006     	mov	r0, r6
  6114cc: e7943003     	ldr	r3, [r4, r3]
  6114d0: e7946005     	ldr	r6, [r4, r5]
  6114d4: e2833008     	add	r3, r3, #8
  6114d8: e5863000     	str	r3, [r6]
  6114dc: ebf3f556     	bl	0x30ea3c <__cxa_guard_release@plt> @ imm = #-0x302aa8
  6114e0: e59f3028     	ldr	r3, [pc, #0x28]         @ 0x611510 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEE11getInstanceEv+0x8c>
  6114e4: e1a00006     	mov	r0, r6
  6114e8: e7941003     	ldr	r1, [r4, r3]
  6114ec: e59f3020     	ldr	r3, [pc, #0x20]         @ 0x611514 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEE11getInstanceEv+0x90>
  6114f0: e7942003     	ldr	r2, [r4, r3]
  6114f4: ebf3f382     	bl	0x30e304 <__aeabi_atexit@plt> @ imm = #-0x3031f8
  6114f8: e7940005     	ldr	r0, [r4, r5]
  6114fc: e8bd8070     	pop	{r4, r5, r6, pc}
  611500: 00 36 38 00  	.word	0x00383600
  611504: 10 0d 00 00  	.word	0x00000d10
  611508: 60 3b 00 00  	.word	0x00003b60
  61150c: 4c 07 00 00  	.word	0x0000074c
  611510: e4 21 00 00  	.word	0x000021e4
  611514: 90 18 00 00  	.word	0x00001890

; FUNCTION 0x00611518 size=148 sha256=a371ca3c5fce8b4ad21701ca46507a92e89933da1f1fcdaccda1c0ec07139646
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 3, float> > >::getInstance()
00611518 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEE11getInstanceEv>:
  611518: e92d4070     	push	{r4, r5, r6, lr}
  61151c: e59f4070     	ldr	r4, [pc, #0x70]         @ 0x611594 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEE11getInstanceEv+0x7c>
  611520: e59f3070     	ldr	r3, [pc, #0x70]         @ 0x611598 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEE11getInstanceEv+0x80>
  611524: e08f4004     	add	r4, pc, r4
  611528: e7946003     	ldr	r6, [r4, r3]
  61152c: e5963000     	ldr	r3, [r6]
  611530: e3130001     	tst	r3, #1
  611534: 0a000002     	beq	0x611544 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEE11getInstanceEv+0x2c> @ imm = #0x8
  611538: e59f505c     	ldr	r5, [pc, #0x5c]         @ 0x61159c <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEE11getInstanceEv+0x84>
  61153c: e7940005     	ldr	r0, [r4, r5]
  611540: e8bd8070     	pop	{r4, r5, r6, pc}
  611544: e1a00006     	mov	r0, r6
  611548: ebf3f487     	bl	0x30e76c <__cxa_guard_acquire@plt> @ imm = #-0x302de4
  61154c: e3500000     	cmp	r0, #0
  611550: 0afffff8     	beq	0x611538 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEE11getInstanceEv+0x20> @ imm = #-0x20
  611554: e59f3044     	ldr	r3, [pc, #0x44]         @ 0x6115a0 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEE11getInstanceEv+0x88>
  611558: e59f503c     	ldr	r5, [pc, #0x3c]         @ 0x61159c <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEE11getInstanceEv+0x84>
  61155c: e1a00006     	mov	r0, r6
  611560: e7943003     	ldr	r3, [r4, r3]
  611564: e7946005     	ldr	r6, [r4, r5]
  611568: e2833008     	add	r3, r3, #8
  61156c: e5863000     	str	r3, [r6]
  611570: ebf3f531     	bl	0x30ea3c <__cxa_guard_release@plt> @ imm = #-0x302b3c
  611574: e59f3028     	ldr	r3, [pc, #0x28]         @ 0x6115a4 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEE11getInstanceEv+0x8c>
  611578: e1a00006     	mov	r0, r6
  61157c: e7941003     	ldr	r1, [r4, r3]
  611580: e59f3020     	ldr	r3, [pc, #0x20]         @ 0x6115a8 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEE11getInstanceEv+0x90>
  611584: e7942003     	ldr	r2, [r4, r3]
  611588: ebf3f35d     	bl	0x30e304 <__aeabi_atexit@plt> @ imm = #-0x30328c
  61158c: e7940005     	ldr	r0, [r4, r5]
  611590: e8bd8070     	pop	{r4, r5, r6, pc}
  611594: 6c 35 38 00  	.word	0x0038356c
  611598: 24 41 00 00  	.word	0x00004124
  61159c: 98 35 00 00  	.word	0x00003598
  6115a0: 0c 3f 00 00  	.word	0x00003f0c
  6115a4: 40 1c 00 00  	.word	0x00001c40
  6115a8: 90 18 00 00  	.word	0x00001890

; FUNCTION 0x006115ac size=148 sha256=f6a23f28ec8f3b9095cf94092aa208b8c76d0fbf1009618d979a6a9fb2fb99d9
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, -1, float> > >::getInstance()
006115ac <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE11getInstanceEv>:
  6115ac: e92d4070     	push	{r4, r5, r6, lr}
  6115b0: e59f4070     	ldr	r4, [pc, #0x70]         @ 0x611628 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE11getInstanceEv+0x7c>
  6115b4: e59f3070     	ldr	r3, [pc, #0x70]         @ 0x61162c <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE11getInstanceEv+0x80>
  6115b8: e08f4004     	add	r4, pc, r4
  6115bc: e7946003     	ldr	r6, [r4, r3]
  6115c0: e5963000     	ldr	r3, [r6]
  6115c4: e3130001     	tst	r3, #1
  6115c8: 0a000002     	beq	0x6115d8 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE11getInstanceEv+0x2c> @ imm = #0x8
  6115cc: e59f505c     	ldr	r5, [pc, #0x5c]         @ 0x611630 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE11getInstanceEv+0x84>
  6115d0: e7940005     	ldr	r0, [r4, r5]
  6115d4: e8bd8070     	pop	{r4, r5, r6, pc}
  6115d8: e1a00006     	mov	r0, r6
  6115dc: ebf3f462     	bl	0x30e76c <__cxa_guard_acquire@plt> @ imm = #-0x302e78
  6115e0: e3500000     	cmp	r0, #0
  6115e4: 0afffff8     	beq	0x6115cc <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE11getInstanceEv+0x20> @ imm = #-0x20
  6115e8: e59f3044     	ldr	r3, [pc, #0x44]         @ 0x611634 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE11getInstanceEv+0x88>
  6115ec: e59f503c     	ldr	r5, [pc, #0x3c]         @ 0x611630 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE11getInstanceEv+0x84>
  6115f0: e1a00006     	mov	r0, r6
  6115f4: e7943003     	ldr	r3, [r4, r3]
  6115f8: e7946005     	ldr	r6, [r4, r5]
  6115fc: e2833008     	add	r3, r3, #8
  611600: e5863000     	str	r3, [r6]
  611604: ebf3f50c     	bl	0x30ea3c <__cxa_guard_release@plt> @ imm = #-0x302bd0
  611608: e59f3028     	ldr	r3, [pc, #0x28]         @ 0x611638 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE11getInstanceEv+0x8c>
  61160c: e1a00006     	mov	r0, r6
  611610: e7941003     	ldr	r1, [r4, r3]
  611614: e59f3020     	ldr	r3, [pc, #0x20]         @ 0x61163c <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE11getInstanceEv+0x90>
  611618: e7942003     	ldr	r2, [r4, r3]
  61161c: ebf3f338     	bl	0x30e304 <__aeabi_atexit@plt> @ imm = #-0x303320
  611620: e7940005     	ldr	r0, [r4, r5]
  611624: e8bd8070     	pop	{r4, r5, r6, pc}
  611628: d8 34 38 00  	.word	0x003834d8
  61162c: d4 09 00 00  	.word	0x000009d4
  611630: 94 3c 00 00  	.word	0x00003c94
  611634: 78 28 00 00  	.word	0x00002878
  611638: 80 1a 00 00  	.word	0x00001a80
  61163c: 90 18 00 00  	.word	0x00001890

; FUNCTION 0x00611640 size=148 sha256=d328cd9724a5047076b3713c49d335ff85bf44310063108f331a435f024313dd
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, -1, float> > >::getInstance()
00611640 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE11getInstanceEv>:
  611640: e92d4070     	push	{r4, r5, r6, lr}
  611644: e59f4070     	ldr	r4, [pc, #0x70]         @ 0x6116bc <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE11getInstanceEv+0x7c>
  611648: e59f3070     	ldr	r3, [pc, #0x70]         @ 0x6116c0 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE11getInstanceEv+0x80>
  61164c: e08f4004     	add	r4, pc, r4
  611650: e7946003     	ldr	r6, [r4, r3]
  611654: e5963000     	ldr	r3, [r6]
  611658: e3130001     	tst	r3, #1
  61165c: 0a000002     	beq	0x61166c <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE11getInstanceEv+0x2c> @ imm = #0x8
  611660: e59f505c     	ldr	r5, [pc, #0x5c]         @ 0x6116c4 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE11getInstanceEv+0x84>
  611664: e7940005     	ldr	r0, [r4, r5]
  611668: e8bd8070     	pop	{r4, r5, r6, pc}
  61166c: e1a00006     	mov	r0, r6
  611670: ebf3f43d     	bl	0x30e76c <__cxa_guard_acquire@plt> @ imm = #-0x302f0c
  611674: e3500000     	cmp	r0, #0
  611678: 0afffff8     	beq	0x611660 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE11getInstanceEv+0x20> @ imm = #-0x20
  61167c: e59f3044     	ldr	r3, [pc, #0x44]         @ 0x6116c8 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE11getInstanceEv+0x88>
  611680: e59f503c     	ldr	r5, [pc, #0x3c]         @ 0x6116c4 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE11getInstanceEv+0x84>
  611684: e1a00006     	mov	r0, r6
  611688: e7943003     	ldr	r3, [r4, r3]
  61168c: e7946005     	ldr	r6, [r4, r5]
  611690: e2833008     	add	r3, r3, #8
  611694: e5863000     	str	r3, [r6]
  611698: ebf3f4e7     	bl	0x30ea3c <__cxa_guard_release@plt> @ imm = #-0x302c64
  61169c: e59f3028     	ldr	r3, [pc, #0x28]         @ 0x6116cc <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE11getInstanceEv+0x8c>
  6116a0: e1a00006     	mov	r0, r6
  6116a4: e7941003     	ldr	r1, [r4, r3]
  6116a8: e59f3020     	ldr	r3, [pc, #0x20]         @ 0x6116d0 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE11getInstanceEv+0x90>
  6116ac: e7942003     	ldr	r2, [r4, r3]
  6116b0: ebf3f313     	bl	0x30e304 <__aeabi_atexit@plt> @ imm = #-0x3033b4
  6116b4: e7940005     	ldr	r0, [r4, r5]
  6116b8: e8bd8070     	pop	{r4, r5, r6, pc}
  6116bc: 44 34 38 00  	.word	0x00383444
  6116c0: 28 32 00 00  	.word	0x00003228
  6116c4: 70 1e 00 00  	.word	0x00001e70
  6116c8: 9c 07 00 00  	.word	0x0000079c
  6116cc: 24 49 00 00  	.word	0x00004924
  6116d0: 90 18 00 00  	.word	0x00001890

; FUNCTION 0x006116d4 size=148 sha256=97fcfd6f0660d9aa5c01b5abb7805657f038affd141167c7afefbc39603c33c5
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, -1, float> > >::getInstance()
006116d4 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE11getInstanceEv>:
  6116d4: e92d4070     	push	{r4, r5, r6, lr}
  6116d8: e59f4070     	ldr	r4, [pc, #0x70]         @ 0x611750 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE11getInstanceEv+0x7c>
  6116dc: e59f3070     	ldr	r3, [pc, #0x70]         @ 0x611754 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE11getInstanceEv+0x80>
  6116e0: e08f4004     	add	r4, pc, r4
  6116e4: e7946003     	ldr	r6, [r4, r3]
  6116e8: e5963000     	ldr	r3, [r6]
  6116ec: e3130001     	tst	r3, #1
  6116f0: 0a000002     	beq	0x611700 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE11getInstanceEv+0x2c> @ imm = #0x8
  6116f4: e59f505c     	ldr	r5, [pc, #0x5c]         @ 0x611758 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE11getInstanceEv+0x84>
  6116f8: e7940005     	ldr	r0, [r4, r5]
  6116fc: e8bd8070     	pop	{r4, r5, r6, pc}
  611700: e1a00006     	mov	r0, r6
  611704: ebf3f418     	bl	0x30e76c <__cxa_guard_acquire@plt> @ imm = #-0x302fa0
  611708: e3500000     	cmp	r0, #0
  61170c: 0afffff8     	beq	0x6116f4 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE11getInstanceEv+0x20> @ imm = #-0x20
  611710: e59f3044     	ldr	r3, [pc, #0x44]         @ 0x61175c <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE11getInstanceEv+0x88>
  611714: e59f503c     	ldr	r5, [pc, #0x3c]         @ 0x611758 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE11getInstanceEv+0x84>
  611718: e1a00006     	mov	r0, r6
  61171c: e7943003     	ldr	r3, [r4, r3]
  611720: e7946005     	ldr	r6, [r4, r5]
  611724: e2833008     	add	r3, r3, #8
  611728: e5863000     	str	r3, [r6]
  61172c: ebf3f4c2     	bl	0x30ea3c <__cxa_guard_release@plt> @ imm = #-0x302cf8
  611730: e59f3028     	ldr	r3, [pc, #0x28]         @ 0x611760 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE11getInstanceEv+0x8c>
  611734: e1a00006     	mov	r0, r6
  611738: e7941003     	ldr	r1, [r4, r3]
  61173c: e59f3020     	ldr	r3, [pc, #0x20]         @ 0x611764 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE11getInstanceEv+0x90>
  611740: e7942003     	ldr	r2, [r4, r3]
  611744: ebf3f2ee     	bl	0x30e304 <__aeabi_atexit@plt> @ imm = #-0x303448
  611748: e7940005     	ldr	r0, [r4, r5]
  61174c: e8bd8070     	pop	{r4, r5, r6, pc}
  611750: b0 33 38 00  	.word	0x003833b0
  611754: c8 17 00 00  	.word	0x000017c8
  611758: 68 4a 00 00  	.word	0x00004a68
  61175c: d4 4a 00 00  	.word	0x00004ad4
  611760: a8 0d 00 00  	.word	0x00000da8
  611764: 90 18 00 00  	.word	0x00001890

; FUNCTION 0x00611768 size=148 sha256=22760f0c3a422bb70e1cc171f3591d8d6e13c3e6aa705c40d7ef588d6ba2a818
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 0, unsigned char> > >::getInstance()
00611768 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEE11getInstanceEv>:
  611768: e92d4070     	push	{r4, r5, r6, lr}
  61176c: e59f4070     	ldr	r4, [pc, #0x70]         @ 0x6117e4 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEE11getInstanceEv+0x7c>
  611770: e59f3070     	ldr	r3, [pc, #0x70]         @ 0x6117e8 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEE11getInstanceEv+0x80>
  611774: e08f4004     	add	r4, pc, r4
  611778: e7946003     	ldr	r6, [r4, r3]
  61177c: e5963000     	ldr	r3, [r6]
  611780: e3130001     	tst	r3, #1
  611784: 0a000002     	beq	0x611794 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEE11getInstanceEv+0x2c> @ imm = #0x8
  611788: e59f505c     	ldr	r5, [pc, #0x5c]         @ 0x6117ec <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEE11getInstanceEv+0x84>
  61178c: e7940005     	ldr	r0, [r4, r5]
  611790: e8bd8070     	pop	{r4, r5, r6, pc}
  611794: e1a00006     	mov	r0, r6
  611798: ebf3f3f3     	bl	0x30e76c <__cxa_guard_acquire@plt> @ imm = #-0x303034
  61179c: e3500000     	cmp	r0, #0
  6117a0: 0afffff8     	beq	0x611788 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEE11getInstanceEv+0x20> @ imm = #-0x20
  6117a4: e59f3044     	ldr	r3, [pc, #0x44]         @ 0x6117f0 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEE11getInstanceEv+0x88>
  6117a8: e59f503c     	ldr	r5, [pc, #0x3c]         @ 0x6117ec <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEE11getInstanceEv+0x84>
  6117ac: e1a00006     	mov	r0, r6
  6117b0: e7943003     	ldr	r3, [r4, r3]
  6117b4: e7946005     	ldr	r6, [r4, r5]
  6117b8: e2833008     	add	r3, r3, #8
  6117bc: e5863000     	str	r3, [r6]
  6117c0: ebf3f49d     	bl	0x30ea3c <__cxa_guard_release@plt> @ imm = #-0x302d8c
  6117c4: e59f3028     	ldr	r3, [pc, #0x28]         @ 0x6117f4 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEE11getInstanceEv+0x8c>
  6117c8: e1a00006     	mov	r0, r6
  6117cc: e7941003     	ldr	r1, [r4, r3]
  6117d0: e59f3020     	ldr	r3, [pc, #0x20]         @ 0x6117f8 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEE11getInstanceEv+0x90>
  6117d4: e7942003     	ldr	r2, [r4, r3]
  6117d8: ebf3f2c9     	bl	0x30e304 <__aeabi_atexit@plt> @ imm = #-0x3034dc
  6117dc: e7940005     	ldr	r0, [r4, r5]
  6117e0: e8bd8070     	pop	{r4, r5, r6, pc}
  6117e4: 1c 33 38 00  	.word	0x0038331c
  6117e8: dc 0c 00 00  	.word	0x00000cdc
  6117ec: d0 26 00 00  	.word	0x000026d0
  6117f0: a0 42 00 00  	.word	0x000042a0
  6117f4: 2c 07 00 00  	.word	0x0000072c
  6117f8: 90 18 00 00  	.word	0x00001890

; FUNCTION 0x006117fc size=148 sha256=e0daa8381d579b90dbe0973bc952e100530b3cc8436db836026299a3c8e8b0c3
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 1, unsigned char> > >::getInstance()
006117fc <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEE11getInstanceEv>:
  6117fc: e92d4070     	push	{r4, r5, r6, lr}
  611800: e59f4070     	ldr	r4, [pc, #0x70]         @ 0x611878 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEE11getInstanceEv+0x7c>
  611804: e59f3070     	ldr	r3, [pc, #0x70]         @ 0x61187c <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEE11getInstanceEv+0x80>
  611808: e08f4004     	add	r4, pc, r4
  61180c: e7946003     	ldr	r6, [r4, r3]
  611810: e5963000     	ldr	r3, [r6]
  611814: e3130001     	tst	r3, #1
  611818: 0a000002     	beq	0x611828 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEE11getInstanceEv+0x2c> @ imm = #0x8
  61181c: e59f505c     	ldr	r5, [pc, #0x5c]         @ 0x611880 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEE11getInstanceEv+0x84>
  611820: e7940005     	ldr	r0, [r4, r5]
  611824: e8bd8070     	pop	{r4, r5, r6, pc}
  611828: e1a00006     	mov	r0, r6
  61182c: ebf3f3ce     	bl	0x30e76c <__cxa_guard_acquire@plt> @ imm = #-0x3030c8
  611830: e3500000     	cmp	r0, #0
  611834: 0afffff8     	beq	0x61181c <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEE11getInstanceEv+0x20> @ imm = #-0x20
  611838: e59f3044     	ldr	r3, [pc, #0x44]         @ 0x611884 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEE11getInstanceEv+0x88>
  61183c: e59f503c     	ldr	r5, [pc, #0x3c]         @ 0x611880 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEE11getInstanceEv+0x84>
  611840: e1a00006     	mov	r0, r6
  611844: e7943003     	ldr	r3, [r4, r3]
  611848: e7946005     	ldr	r6, [r4, r5]
  61184c: e2833008     	add	r3, r3, #8
  611850: e5863000     	str	r3, [r6]
  611854: ebf3f478     	bl	0x30ea3c <__cxa_guard_release@plt> @ imm = #-0x302e20
  611858: e59f3028     	ldr	r3, [pc, #0x28]         @ 0x611888 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEE11getInstanceEv+0x8c>
  61185c: e1a00006     	mov	r0, r6
  611860: e7941003     	ldr	r1, [r4, r3]
  611864: e59f3020     	ldr	r3, [pc, #0x20]         @ 0x61188c <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEE11getInstanceEv+0x90>
  611868: e7942003     	ldr	r2, [r4, r3]
  61186c: ebf3f2a4     	bl	0x30e304 <__aeabi_atexit@plt> @ imm = #-0x303570
  611870: e7940005     	ldr	r0, [r4, r5]
  611874: e8bd8070     	pop	{r4, r5, r6, pc}
  611878: 88 32 38 00  	.word	0x00383288
  61187c: c4 3a 00 00  	.word	0x00003ac4
  611880: d0 10 00 00  	.word	0x000010d0
  611884: 4c 38 00 00  	.word	0x0000384c
  611888: f8 42 00 00  	.word	0x000042f8
  61188c: 90 18 00 00  	.word	0x00001890

; FUNCTION 0x00611890 size=148 sha256=593d114e9cc92ac5e8b739088d3228b186f72d31ae543aeee92feafefb2e5471
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 2, unsigned char> > >::getInstance()
00611890 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEE11getInstanceEv>:
  611890: e92d4070     	push	{r4, r5, r6, lr}
  611894: e59f4070     	ldr	r4, [pc, #0x70]         @ 0x61190c <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEE11getInstanceEv+0x7c>
  611898: e59f3070     	ldr	r3, [pc, #0x70]         @ 0x611910 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEE11getInstanceEv+0x80>
  61189c: e08f4004     	add	r4, pc, r4
  6118a0: e7946003     	ldr	r6, [r4, r3]
  6118a4: e5963000     	ldr	r3, [r6]
  6118a8: e3130001     	tst	r3, #1
  6118ac: 0a000002     	beq	0x6118bc <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEE11getInstanceEv+0x2c> @ imm = #0x8
  6118b0: e59f505c     	ldr	r5, [pc, #0x5c]         @ 0x611914 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEE11getInstanceEv+0x84>
  6118b4: e7940005     	ldr	r0, [r4, r5]
  6118b8: e8bd8070     	pop	{r4, r5, r6, pc}
  6118bc: e1a00006     	mov	r0, r6
  6118c0: ebf3f3a9     	bl	0x30e76c <__cxa_guard_acquire@plt> @ imm = #-0x30315c
  6118c4: e3500000     	cmp	r0, #0
  6118c8: 0afffff8     	beq	0x6118b0 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEE11getInstanceEv+0x20> @ imm = #-0x20
  6118cc: e59f3044     	ldr	r3, [pc, #0x44]         @ 0x611918 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEE11getInstanceEv+0x88>
  6118d0: e59f503c     	ldr	r5, [pc, #0x3c]         @ 0x611914 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEE11getInstanceEv+0x84>
  6118d4: e1a00006     	mov	r0, r6
  6118d8: e7943003     	ldr	r3, [r4, r3]
  6118dc: e7946005     	ldr	r6, [r4, r5]
  6118e0: e2833008     	add	r3, r3, #8
  6118e4: e5863000     	str	r3, [r6]
  6118e8: ebf3f453     	bl	0x30ea3c <__cxa_guard_release@plt> @ imm = #-0x302eb4
  6118ec: e59f3028     	ldr	r3, [pc, #0x28]         @ 0x61191c <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEE11getInstanceEv+0x8c>
  6118f0: e1a00006     	mov	r0, r6
  6118f4: e7941003     	ldr	r1, [r4, r3]
  6118f8: e59f3020     	ldr	r3, [pc, #0x20]         @ 0x611920 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEE11getInstanceEv+0x90>
  6118fc: e7942003     	ldr	r2, [r4, r3]
  611900: ebf3f27f     	bl	0x30e304 <__aeabi_atexit@plt> @ imm = #-0x303604
  611904: e7940005     	ldr	r0, [r4, r5]
  611908: e8bd8070     	pop	{r4, r5, r6, pc}
  61190c: f4 31 38 00  	.word	0x003831f4
  611910: c0 2d 00 00  	.word	0x00002dc0
  611914: 1c 34 00 00  	.word	0x0000341c
  611918: dc 12 00 00  	.word	0x000012dc
  61191c: ec 09 00 00  	.word	0x000009ec
  611920: 90 18 00 00  	.word	0x00001890

; FUNCTION 0x00611924 size=148 sha256=f8e5b818e045a7a81e8ff64a8c0d79bf330c6a585b24306346bec067286c4325
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 3, unsigned char> > >::getInstance()
00611924 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEE11getInstanceEv>:
  611924: e92d4070     	push	{r4, r5, r6, lr}
  611928: e59f4070     	ldr	r4, [pc, #0x70]         @ 0x6119a0 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEE11getInstanceEv+0x7c>
  61192c: e59f3070     	ldr	r3, [pc, #0x70]         @ 0x6119a4 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEE11getInstanceEv+0x80>
  611930: e08f4004     	add	r4, pc, r4
  611934: e7946003     	ldr	r6, [r4, r3]
  611938: e5963000     	ldr	r3, [r6]
  61193c: e3130001     	tst	r3, #1
  611940: 0a000002     	beq	0x611950 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEE11getInstanceEv+0x2c> @ imm = #0x8
  611944: e59f505c     	ldr	r5, [pc, #0x5c]         @ 0x6119a8 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEE11getInstanceEv+0x84>
  611948: e7940005     	ldr	r0, [r4, r5]
  61194c: e8bd8070     	pop	{r4, r5, r6, pc}
  611950: e1a00006     	mov	r0, r6
  611954: ebf3f384     	bl	0x30e76c <__cxa_guard_acquire@plt> @ imm = #-0x3031f0
  611958: e3500000     	cmp	r0, #0
  61195c: 0afffff8     	beq	0x611944 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEE11getInstanceEv+0x20> @ imm = #-0x20
  611960: e59f3044     	ldr	r3, [pc, #0x44]         @ 0x6119ac <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEE11getInstanceEv+0x88>
  611964: e59f503c     	ldr	r5, [pc, #0x3c]         @ 0x6119a8 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEE11getInstanceEv+0x84>
  611968: e1a00006     	mov	r0, r6
  61196c: e7943003     	ldr	r3, [r4, r3]
  611970: e7946005     	ldr	r6, [r4, r5]
  611974: e2833008     	add	r3, r3, #8
  611978: e5863000     	str	r3, [r6]
  61197c: ebf3f42e     	bl	0x30ea3c <__cxa_guard_release@plt> @ imm = #-0x302f48
  611980: e59f3028     	ldr	r3, [pc, #0x28]         @ 0x6119b0 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEE11getInstanceEv+0x8c>
  611984: e1a00006     	mov	r0, r6
  611988: e7941003     	ldr	r1, [r4, r3]
  61198c: e59f3020     	ldr	r3, [pc, #0x20]         @ 0x6119b4 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEE11getInstanceEv+0x90>
  611990: e7942003     	ldr	r2, [r4, r3]
  611994: ebf3f25a     	bl	0x30e304 <__aeabi_atexit@plt> @ imm = #-0x303698
  611998: e7940005     	ldr	r0, [r4, r5]
  61199c: e8bd8070     	pop	{r4, r5, r6, pc}
  6119a0: 60 31 38 00  	.word	0x00383160
  6119a4: 54 25 00 00  	.word	0x00002554
  6119a8: f4 42 00 00  	.word	0x000042f4
  6119ac: 04 3e 00 00  	.word	0x00003e04
  6119b0: f4 28 00 00  	.word	0x000028f4
  6119b4: 90 18 00 00  	.word	0x00001890

; FUNCTION 0x006119b8 size=148 sha256=ea3da8c11c0d56f856132ee047c46f2d9aba651d32055f2c52fb620370301644
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [3], glitch::collada::animation_track::CMixin<unsigned char, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3], glitch::video::SColor> >, -1, unsigned char> > >::getInstance()
006119b8 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE11getInstanceEv>:
  6119b8: e92d4070     	push	{r4, r5, r6, lr}
  6119bc: e59f4070     	ldr	r4, [pc, #0x70]         @ 0x611a34 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE11getInstanceEv+0x7c>
  6119c0: e59f3070     	ldr	r3, [pc, #0x70]         @ 0x611a38 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE11getInstanceEv+0x80>
  6119c4: e08f4004     	add	r4, pc, r4
  6119c8: e7946003     	ldr	r6, [r4, r3]
  6119cc: e5963000     	ldr	r3, [r6]
  6119d0: e3130001     	tst	r3, #1
  6119d4: 0a000002     	beq	0x6119e4 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE11getInstanceEv+0x2c> @ imm = #0x8
  6119d8: e59f505c     	ldr	r5, [pc, #0x5c]         @ 0x611a3c <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE11getInstanceEv+0x84>
  6119dc: e7940005     	ldr	r0, [r4, r5]
  6119e0: e8bd8070     	pop	{r4, r5, r6, pc}
  6119e4: e1a00006     	mov	r0, r6
  6119e8: ebf3f35f     	bl	0x30e76c <__cxa_guard_acquire@plt> @ imm = #-0x303284
  6119ec: e3500000     	cmp	r0, #0
  6119f0: 0afffff8     	beq	0x6119d8 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE11getInstanceEv+0x20> @ imm = #-0x20
  6119f4: e59f3044     	ldr	r3, [pc, #0x44]         @ 0x611a40 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE11getInstanceEv+0x88>
  6119f8: e59f503c     	ldr	r5, [pc, #0x3c]         @ 0x611a3c <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE11getInstanceEv+0x84>
  6119fc: e1a00006     	mov	r0, r6
  611a00: e7943003     	ldr	r3, [r4, r3]
  611a04: e7946005     	ldr	r6, [r4, r5]
  611a08: e2833008     	add	r3, r3, #8
  611a0c: e5863000     	str	r3, [r6]
  611a10: ebf3f409     	bl	0x30ea3c <__cxa_guard_release@plt> @ imm = #-0x302fdc
  611a14: e59f3028     	ldr	r3, [pc, #0x28]         @ 0x611a44 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE11getInstanceEv+0x8c>
  611a18: e1a00006     	mov	r0, r6
  611a1c: e7941003     	ldr	r1, [r4, r3]
  611a20: e59f3020     	ldr	r3, [pc, #0x20]         @ 0x611a48 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE11getInstanceEv+0x90>
  611a24: e7942003     	ldr	r2, [r4, r3]
  611a28: ebf3f235     	bl	0x30e304 <__aeabi_atexit@plt> @ imm = #-0x30372c
  611a2c: e7940005     	ldr	r0, [r4, r5]
  611a30: e8bd8070     	pop	{r4, r5, r6, pc}
  611a34: cc 30 38 00  	.word	0x003830cc
  611a38: cc 30 00 00  	.word	0x000030cc
  611a3c: ac 30 00 00  	.word	0x000030ac
  611a40: 6c 30 00 00  	.word	0x0000306c
  611a44: 34 25 00 00  	.word	0x00002534
  611a48: 90 18 00 00  	.word	0x00001890

; FUNCTION 0x00611a4c size=148 sha256=d61b3b56959be4443af548abde290f95a433619fe9a087b4897647ad4e85ad52
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, -1, unsigned char> > >::getInstance()
00611a4c <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE11getInstanceEv>:
  611a4c: e92d4070     	push	{r4, r5, r6, lr}
  611a50: e59f4070     	ldr	r4, [pc, #0x70]         @ 0x611ac8 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE11getInstanceEv+0x7c>
  611a54: e59f3070     	ldr	r3, [pc, #0x70]         @ 0x611acc <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE11getInstanceEv+0x80>
  611a58: e08f4004     	add	r4, pc, r4
  611a5c: e7946003     	ldr	r6, [r4, r3]
  611a60: e5963000     	ldr	r3, [r6]
  611a64: e3130001     	tst	r3, #1
  611a68: 0a000002     	beq	0x611a78 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE11getInstanceEv+0x2c> @ imm = #0x8
  611a6c: e59f505c     	ldr	r5, [pc, #0x5c]         @ 0x611ad0 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE11getInstanceEv+0x84>
  611a70: e7940005     	ldr	r0, [r4, r5]
  611a74: e8bd8070     	pop	{r4, r5, r6, pc}
  611a78: e1a00006     	mov	r0, r6
  611a7c: ebf3f33a     	bl	0x30e76c <__cxa_guard_acquire@plt> @ imm = #-0x303318
  611a80: e3500000     	cmp	r0, #0
  611a84: 0afffff8     	beq	0x611a6c <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE11getInstanceEv+0x20> @ imm = #-0x20
  611a88: e59f3044     	ldr	r3, [pc, #0x44]         @ 0x611ad4 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE11getInstanceEv+0x88>
  611a8c: e59f503c     	ldr	r5, [pc, #0x3c]         @ 0x611ad0 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE11getInstanceEv+0x84>
  611a90: e1a00006     	mov	r0, r6
  611a94: e7943003     	ldr	r3, [r4, r3]
  611a98: e7946005     	ldr	r6, [r4, r5]
  611a9c: e2833008     	add	r3, r3, #8
  611aa0: e5863000     	str	r3, [r6]
  611aa4: ebf3f3e4     	bl	0x30ea3c <__cxa_guard_release@plt> @ imm = #-0x303070
  611aa8: e59f3028     	ldr	r3, [pc, #0x28]         @ 0x611ad8 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE11getInstanceEv+0x8c>
  611aac: e1a00006     	mov	r0, r6
  611ab0: e7941003     	ldr	r1, [r4, r3]
  611ab4: e59f3020     	ldr	r3, [pc, #0x20]         @ 0x611adc <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE11getInstanceEv+0x90>
  611ab8: e7942003     	ldr	r2, [r4, r3]
  611abc: ebf3f210     	bl	0x30e304 <__aeabi_atexit@plt> @ imm = #-0x3037c0
  611ac0: e7940005     	ldr	r0, [r4, r5]
  611ac4: e8bd8070     	pop	{r4, r5, r6, pc}
  611ac8: 38 30 38 00  	.word	0x00383038
  611acc: 44 39 00 00  	.word	0x00003944
  611ad0: dc 48 00 00  	.word	0x000048dc
  611ad4: 68 0a 00 00  	.word	0x00000a68
  611ad8: 94 0f 00 00  	.word	0x00000f94
  611adc: 90 18 00 00  	.word	0x00001890

; FUNCTION 0x00611ae0 size=1608 sha256=bb7590a23775d34fa5821fac78f1e6330a691b0c929b23cf1a3eedb733f37f72
; symbols: glitch::collada::CColladaDatabase::getAnimationTrackEx(glitch::collada::SAnimation const*)
00611ae0 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE>:
  611ae0: e59f361c     	ldr	r3, [pc, #0x61c]        @ 0x612104 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x624>
  611ae4: e92d4070     	push	{r4, r5, r6, lr}
  611ae8: e2504000     	subs	r4, r0, #0
  611aec: e08f3003     	add	r3, pc, r3
  611af0: 0a000062     	beq	0x611c80 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x1a0> @ imm = #0x188
  611af4: e5942010     	ldr	r2, [r4, #0x10]
  611af8: e5922008     	ldr	r2, [r2, #0x8]
  611afc: e2422001     	sub	r2, r2, #1
  611b00: e352005a     	cmp	r2, #90
  611b04: 908ff102     	addls	pc, pc, r2, lsl #2
  611b08: ea00005c     	b	0x611c80 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x1a0> @ imm = #0x170
  611b0c: ea00006c     	b	0x611cc4 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x1e4> @ imm = #0x1b0
  611b10: ea000074     	b	0x611ce8 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x208> @ imm = #0x1d0
  611b14: ea00007c     	b	0x611d0c <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x22c> @ imm = #0x1f0
  611b18: ea000084     	b	0x611d30 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x250> @ imm = #0x210
  611b1c: ea00008c     	b	0x611d54 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x274> @ imm = #0x230
  611b20: ea000094     	b	0x611d78 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x298> @ imm = #0x250
  611b24: ea000093     	b	0x611d78 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x298> @ imm = #0x24c
  611b28: ea000092     	b	0x611d78 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x298> @ imm = #0x248
  611b2c: ea000091     	b	0x611d78 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x298> @ imm = #0x244
  611b30: ea000099     	b	0x611d9c <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x2bc> @ imm = #0x264
  611b34: ea0000a1     	b	0x611dc0 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x2e0> @ imm = #0x284
  611b38: ea0000a9     	b	0x611de4 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x304> @ imm = #0x2a4
  611b3c: ea0000b1     	b	0x611e08 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x328> @ imm = #0x2c4
  611b40: ea0000b9     	b	0x611e2c <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x34c> @ imm = #0x2e4
  611b44: ea00004d     	b	0x611c80 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x1a0> @ imm = #0x134
  611b48: ea0000bd     	b	0x611e44 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x364> @ imm = #0x2f4
  611b4c: ea00004b     	b	0x611c80 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x1a0> @ imm = #0x12c
  611b50: ea00004a     	b	0x611c80 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x1a0> @ imm = #0x128
  611b54: ea000049     	b	0x611c80 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x1a0> @ imm = #0x124
  611b58: ea0000bb     	b	0x611e4c <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x36c> @ imm = #0x2ec
  611b5c: ea000047     	b	0x611c80 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x1a0> @ imm = #0x11c
  611b60: ea000046     	b	0x611c80 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x1a0> @ imm = #0x118
  611b64: ea000045     	b	0x611c80 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x1a0> @ imm = #0x114
  611b68: ea000044     	b	0x611c80 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x1a0> @ imm = #0x110
  611b6c: ea000043     	b	0x611c80 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x1a0> @ imm = #0x10c
  611b70: ea000042     	b	0x611c80 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x1a0> @ imm = #0x108
  611b74: ea000041     	b	0x611c80 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x1a0> @ imm = #0x104
  611b78: ea0000b6     	b	0x611e58 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x378> @ imm = #0x2d8
  611b7c: ea0000b5     	b	0x611e58 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x378> @ imm = #0x2d4
  611b80: ea0000b4     	b	0x611e58 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x378> @ imm = #0x2d0
  611b84: ea0000b3     	b	0x611e58 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x378> @ imm = #0x2cc
  611b88: ea0000b2     	b	0x611e58 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x378> @ imm = #0x2c8
  611b8c: ea0000b4     	b	0x611e64 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x384> @ imm = #0x2d0
  611b90: ea0000b0     	b	0x611e58 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x378> @ imm = #0x2c0
  611b94: ea0000af     	b	0x611e58 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x378> @ imm = #0x2bc
  611b98: ea0000ae     	b	0x611e58 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x378> @ imm = #0x2b8
  611b9c: ea0000ad     	b	0x611e58 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x378> @ imm = #0x2b4
  611ba0: ea0000ac     	b	0x611e58 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x378> @ imm = #0x2b0
  611ba4: ea0000ae     	b	0x611e64 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x384> @ imm = #0x2b8
  611ba8: ea0000aa     	b	0x611e58 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x378> @ imm = #0x2a8
  611bac: ea0000a9     	b	0x611e58 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x378> @ imm = #0x2a4
  611bb0: ea0000a8     	b	0x611e58 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x378> @ imm = #0x2a0
  611bb4: ea0000a7     	b	0x611e58 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x378> @ imm = #0x29c
  611bb8: ea0000a6     	b	0x611e58 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x378> @ imm = #0x298
  611bbc: ea0000a5     	b	0x611e58 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x378> @ imm = #0x294
  611bc0: ea0000a4     	b	0x611e58 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x378> @ imm = #0x290
  611bc4: ea0000a3     	b	0x611e58 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x378> @ imm = #0x28c
  611bc8: ea0000a2     	b	0x611e58 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x378> @ imm = #0x288
  611bcc: ea0000a1     	b	0x611e58 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x378> @ imm = #0x284
  611bd0: ea0000a0     	b	0x611e58 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x378> @ imm = #0x280
  611bd4: ea00009f     	b	0x611e58 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x378> @ imm = #0x27c
  611bd8: ea00009e     	b	0x611e58 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x378> @ imm = #0x278
  611bdc: ea00009d     	b	0x611e58 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x378> @ imm = #0x274
  611be0: ea00009c     	b	0x611e58 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x378> @ imm = #0x270
  611be4: ea00009b     	b	0x611e58 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x378> @ imm = #0x26c
  611be8: ea00009a     	b	0x611e58 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x378> @ imm = #0x268
  611bec: ea00009c     	b	0x611e64 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x384> @ imm = #0x270
  611bf0: ea00009b     	b	0x611e64 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x384> @ imm = #0x26c
  611bf4: ea000097     	b	0x611e58 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x378> @ imm = #0x25c
  611bf8: ea000096     	b	0x611e58 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x378> @ imm = #0x258
  611bfc: ea000095     	b	0x611e58 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x378> @ imm = #0x254
  611c00: ea000094     	b	0x611e58 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x378> @ imm = #0x250
  611c04: ea000093     	b	0x611e58 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x378> @ imm = #0x24c
  611c08: ea000092     	b	0x611e58 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x378> @ imm = #0x248
  611c0c: ea000091     	b	0x611e58 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x378> @ imm = #0x244
  611c10: ea000090     	b	0x611e58 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x378> @ imm = #0x240
  611c14: ea000092     	b	0x611e64 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x384> @ imm = #0x248
  611c18: ea00008e     	b	0x611e58 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x378> @ imm = #0x238
  611c1c: ea00008d     	b	0x611e58 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x378> @ imm = #0x234
  611c20: ea00008c     	b	0x611e58 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x378> @ imm = #0x230
  611c24: ea000015     	b	0x611c80 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x1a0> @ imm = #0x54
  611c28: ea000014     	b	0x611c80 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x1a0> @ imm = #0x50
  611c2c: ea000013     	b	0x611c80 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x1a0> @ imm = #0x4c
  611c30: ea000012     	b	0x611c80 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x1a0> @ imm = #0x48
  611c34: ea000011     	b	0x611c80 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x1a0> @ imm = #0x44
  611c38: ea000010     	b	0x611c80 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x1a0> @ imm = #0x40
  611c3c: ea00000f     	b	0x611c80 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x1a0> @ imm = #0x3c
  611c40: ea00000e     	b	0x611c80 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x1a0> @ imm = #0x38
  611c44: ea00000d     	b	0x611c80 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x1a0> @ imm = #0x34
  611c48: ea00000c     	b	0x611c80 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x1a0> @ imm = #0x30
  611c4c: ea00000b     	b	0x611c80 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x1a0> @ imm = #0x2c
  611c50: ea00000a     	b	0x611c80 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x1a0> @ imm = #0x28
  611c54: ea000009     	b	0x611c80 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x1a0> @ imm = #0x24
  611c58: ea000008     	b	0x611c80 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x1a0> @ imm = #0x20
  611c5c: ea000007     	b	0x611c80 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x1a0> @ imm = #0x1c
  611c60: ea000008     	b	0x611c88 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x1a8> @ imm = #0x20
  611c64: ea000073     	b	0x611e38 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x358> @ imm = #0x1cc
  611c68: ea000072     	b	0x611e38 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x358> @ imm = #0x1c8
  611c6c: ea000071     	b	0x611e38 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x358> @ imm = #0x1c4
  611c70: ea000070     	b	0x611e38 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x358> @ imm = #0x1c0
  611c74: ea00006f     	b	0x611e38 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x358> @ imm = #0x1bc
  611c78: e3530002     	cmp	r3, #2
  611c7c: 0a0000ba     	beq	0x611f6c <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x48c> @ imm = #0x2e8
  611c80: e3a00000     	mov	r0, #0
  611c84: e8bd8070     	pop	{r4, r5, r6, pc}
  611c88: e5942008     	ldr	r2, [r4, #0x8]
  611c8c: e5923010     	ldr	r3, [r2, #0x10]
  611c90: e3530001     	cmp	r3, #1
  611c94: 0a000075     	beq	0x611e70 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x390> @ imm = #0x1d4
  611c98: e3530006     	cmp	r3, #6
  611c9c: 1afffff7     	bne	0x611c80 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x1a0> @ imm = #-0x24
  611ca0: e5923014     	ldr	r3, [r2, #0x14]
  611ca4: e2433001     	sub	r3, r3, #1
  611ca8: e3530003     	cmp	r3, #3
  611cac: 908ff103     	addls	pc, pc, r3, lsl #2
  611cb0: eafffff2     	b	0x611c80 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x1a0> @ imm = #-0x38
  611cb4: ea0000b8     	b	0x611f9c <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x4bc> @ imm = #0x2e0
  611cb8: ea0000b5     	b	0x611f94 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x4b4> @ imm = #0x2d4
  611cbc: ea0000b2     	b	0x611f8c <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x4ac> @ imm = #0x2c8
  611cc0: ea0000af     	b	0x611f84 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x4a4> @ imm = #0x2bc
  611cc4: e594301c     	ldr	r3, [r4, #0x1c]
  611cc8: e3530000     	cmp	r3, #0
  611ccc: 0a000088     	beq	0x611ef4 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x414> @ imm = #0x220
  611cd0: e5933000     	ldr	r3, [r3]
  611cd4: e3530001     	cmp	r3, #1
  611cd8: 0a0000d5     	beq	0x612034 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x554> @ imm = #0x354
  611cdc: 2a000082     	bhs	0x611eec <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x40c> @ imm = #0x208
  611ce0: e8bd4070     	pop	{r4, r5, r6, lr}
  611ce4: eafff9b5     	b	0x6103c0 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIcEEEEE11getInstanceEv> @ imm = #-0x192c
  611ce8: e594301c     	ldr	r3, [r4, #0x1c]
  611cec: e3530000     	cmp	r3, #0
  611cf0: 0a000097     	beq	0x611f54 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x474> @ imm = #0x25c
  611cf4: e5933000     	ldr	r3, [r3]
  611cf8: e3530001     	cmp	r3, #1
  611cfc: 0a0000c8     	beq	0x612024 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x544> @ imm = #0x320
  611d00: 2a000091     	bhs	0x611f4c <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x46c> @ imm = #0x244
  611d04: e8bd4070     	pop	{r4, r5, r6, lr}
  611d08: eafffa1b     	b	0x61057c <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIcEELi0EcEEEEE11getInstanceEv> @ imm = #-0x1794
  611d0c: e594301c     	ldr	r3, [r4, #0x1c]
  611d10: e3530000     	cmp	r3, #0
  611d14: 0a00007a     	beq	0x611f04 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x424> @ imm = #0x1e8
  611d18: e5933000     	ldr	r3, [r3]
  611d1c: e3530001     	cmp	r3, #1
  611d20: 0a0000bd     	beq	0x61201c <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x53c> @ imm = #0x2f4
  611d24: 2a000074     	bhs	0x611efc <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x41c> @ imm = #0x1d0
  611d28: e8bd4070     	pop	{r4, r5, r6, lr}
  611d2c: eafffa81     	b	0x610738 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIcEELi1EcEEEEE11getInstanceEv> @ imm = #-0x15fc
  611d30: e594301c     	ldr	r3, [r4, #0x1c]
  611d34: e3530000     	cmp	r3, #0
  611d38: 0a000089     	beq	0x611f64 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x484> @ imm = #0x224
  611d3c: e5933000     	ldr	r3, [r3]
  611d40: e3530001     	cmp	r3, #1
  611d44: 0a0000c0     	beq	0x61204c <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x56c> @ imm = #0x300
  611d48: 2a000083     	bhs	0x611f5c <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x47c> @ imm = #0x20c
  611d4c: e8bd4070     	pop	{r4, r5, r6, lr}
  611d50: eafffae7     	b	0x6108f4 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIcEELi2EcEEEEE11getInstanceEv> @ imm = #-0x1464
  611d54: e594301c     	ldr	r3, [r4, #0x1c]
  611d58: e3530000     	cmp	r3, #0
  611d5c: 0a000082     	beq	0x611f6c <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x48c> @ imm = #0x208
  611d60: e5933000     	ldr	r3, [r3]
  611d64: e3530001     	cmp	r3, #1
  611d68: 0a0000bd     	beq	0x612064 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x584> @ imm = #0x2f4
  611d6c: 2affffc1     	bhs	0x611c78 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x198> @ imm = #-0xfc
  611d70: e8bd4070     	pop	{r4, r5, r6, lr}
  611d74: eafff8b3     	b	0x610048 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIcEEEEE11getInstanceEv> @ imm = #-0x1d34
  611d78: e594301c     	ldr	r3, [r4, #0x1c]
  611d7c: e3530000     	cmp	r3, #0
  611d80: 0a00006f     	beq	0x611f44 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x464> @ imm = #0x1bc
  611d84: e5933000     	ldr	r3, [r3]
  611d88: e3530001     	cmp	r3, #1
  611d8c: 0a0000b2     	beq	0x61205c <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x57c> @ imm = #0x2c8
  611d90: 2a000069     	bhs	0x611f3c <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x45c> @ imm = #0x1a4
  611d94: e8bd4070     	pop	{r4, r5, r6, lr}
  611d98: eafff919     	b	0x610204 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIcEEEEE11getInstanceEv> @ imm = #-0x1b9c
  611d9c: e594301c     	ldr	r3, [r4, #0x1c]
  611da0: e3530000     	cmp	r3, #0
  611da4: 0a000062     	beq	0x611f34 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x454> @ imm = #0x188
  611da8: e5933000     	ldr	r3, [r3]
  611dac: e3530001     	cmp	r3, #1
  611db0: 0a0000a7     	beq	0x612054 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x574> @ imm = #0x29c
  611db4: 2a00005c     	bhs	0x611f2c <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x44c> @ imm = #0x170
  611db8: e8bd4070     	pop	{r4, r5, r6, lr}
  611dbc: eafffb3b     	b	0x610ab0 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIcEEEEE11getInstanceEv> @ imm = #-0x1314
  611dc0: e594301c     	ldr	r3, [r4, #0x1c]
  611dc4: e3530000     	cmp	r3, #0
  611dc8: 0a000055     	beq	0x611f24 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x444> @ imm = #0x154
  611dcc: e5933000     	ldr	r3, [r3]
  611dd0: e3530001     	cmp	r3, #1
  611dd4: 0a000094     	beq	0x61202c <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x54c> @ imm = #0x250
  611dd8: 2a00004f     	bhs	0x611f1c <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x43c> @ imm = #0x13c
  611ddc: e8bd4070     	pop	{r4, r5, r6, lr}
  611de0: eafffba1     	b	0x610c6c <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIcEELi0EcEEEEE11getInstanceEv> @ imm = #-0x117c
  611de4: e594301c     	ldr	r3, [r4, #0x1c]
  611de8: e3530000     	cmp	r3, #0
  611dec: 0a000048     	beq	0x611f14 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x434> @ imm = #0x120
  611df0: e5933000     	ldr	r3, [r3]
  611df4: e3530001     	cmp	r3, #1
  611df8: 0a000091     	beq	0x612044 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x564> @ imm = #0x244
  611dfc: 2a000042     	bhs	0x611f0c <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x42c> @ imm = #0x108
  611e00: e8bd4070     	pop	{r4, r5, r6, lr}
  611e04: eafffc07     	b	0x610e28 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIcEELi1EcEEEEE11getInstanceEv> @ imm = #-0xfe4
  611e08: e594301c     	ldr	r3, [r4, #0x1c]
  611e0c: e3530000     	cmp	r3, #0
  611e10: 0a000059     	beq	0x611f7c <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x49c> @ imm = #0x164
  611e14: e5933000     	ldr	r3, [r3]
  611e18: e3530001     	cmp	r3, #1
  611e1c: 0a000086     	beq	0x61203c <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x55c> @ imm = #0x218
  611e20: 2a000053     	bhs	0x611f74 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x494> @ imm = #0x14c
  611e24: e8bd4070     	pop	{r4, r5, r6, lr}
  611e28: eafffc6d     	b	0x610fe4 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIcEELi2EcEEEEE11getInstanceEv> @ imm = #-0xe4c
  611e2c: e59f22d4     	ldr	r2, [pc, #0x2d4]        @ 0x612108 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x628>
  611e30: e7930002     	ldr	r0, [r3, r2]
  611e34: e8bd8070     	pop	{r4, r5, r6, pc}
  611e38: e59f22cc     	ldr	r2, [pc, #0x2cc]        @ 0x61210c <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x62c>
  611e3c: e7930002     	ldr	r0, [r3, r2]
  611e40: e8bd8070     	pop	{r4, r5, r6, pc}
  611e44: e8bd4070     	pop	{r4, r5, r6, lr}
  611e48: eafffc8a     	b	0x611078 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_16CLightColorMixinIhEEEEE11getInstanceEv> @ imm = #-0xdd8
  611e4c: e59f22bc     	ldr	r2, [pc, #0x2bc]        @ 0x612110 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x630>
  611e50: e7930002     	ldr	r0, [r3, r2]
  611e54: e8bd8070     	pop	{r4, r5, r6, pc}
  611e58: e59f22b4     	ldr	r2, [pc, #0x2b4]        @ 0x612114 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x634>
  611e5c: e7930002     	ldr	r0, [r3, r2]
  611e60: e8bd8070     	pop	{r4, r5, r6, pc}
  611e64: e59f22ac     	ldr	r2, [pc, #0x2ac]        @ 0x612118 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x638>
  611e68: e7930002     	ldr	r0, [r3, r2]
  611e6c: e8bd8070     	pop	{r4, r5, r6, pc}
  611e70: e5923014     	ldr	r3, [r2, #0x14]
  611e74: e3530003     	cmp	r3, #3
  611e78: 0a00007b     	beq	0x61206c <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x58c> @ imm = #0x1ec
  611e7c: e3530004     	cmp	r3, #4
  611e80: 0a00005b     	beq	0x611ff4 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x514> @ imm = #0x16c
  611e84: e3530001     	cmp	r3, #1
  611e88: 1affff7c     	bne	0x611c80 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x1a0> @ imm = #-0x210
  611e8c: e5943018     	ldr	r3, [r4, #0x18]
  611e90: e5932004     	ldr	r2, [r3, #0x4]
  611e94: e3520001     	cmp	r2, #1
  611e98: daffff78     	ble	0x611c80 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x1a0> @ imm = #-0x220
  611e9c: e5933000     	ldr	r3, [r3]
  611ea0: e2433001     	sub	r3, r3, #1
  611ea4: e353000e     	cmp	r3, #14
  611ea8: 908ff103     	addls	pc, pc, r3, lsl #2
  611eac: eaffff73     	b	0x611c80 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x1a0> @ imm = #-0x234
  611eb0: ea000053     	b	0x612004 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x524> @ imm = #0x14c
  611eb4: ea000050     	b	0x611ffc <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x51c> @ imm = #0x140
  611eb8: eaffff70     	b	0x611c80 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x1a0> @ imm = #-0x240
  611ebc: ea000054     	b	0x612014 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x534> @ imm = #0x150
  611ec0: eaffff6e     	b	0x611c80 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x1a0> @ imm = #-0x248
  611ec4: eaffff6d     	b	0x611c80 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x1a0> @ imm = #-0x24c
  611ec8: eaffff6c     	b	0x611c80 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x1a0> @ imm = #-0x250
  611ecc: ea00004e     	b	0x61200c <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x52c> @ imm = #0x138
  611ed0: eaffff6a     	b	0x611c80 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x1a0> @ imm = #-0x258
  611ed4: eaffff69     	b	0x611c80 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x1a0> @ imm = #-0x25c
  611ed8: eaffff68     	b	0x611c80 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x1a0> @ imm = #-0x260
  611edc: eaffff67     	b	0x611c80 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x1a0> @ imm = #-0x264
  611ee0: eaffff66     	b	0x611c80 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x1a0> @ imm = #-0x268
  611ee4: eaffff65     	b	0x611c80 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x1a0> @ imm = #-0x26c
  611ee8: ea000041     	b	0x611ff4 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x514> @ imm = #0x104
  611eec: e3530002     	cmp	r3, #2
  611ef0: 1affff62     	bne	0x611c80 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x1a0> @ imm = #-0x278
  611ef4: e8bd4070     	pop	{r4, r5, r6, lr}
  611ef8: eafff8e6     	b	0x610298 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIfEEEEE11getInstanceEv> @ imm = #-0x1c68
  611efc: e3530002     	cmp	r3, #2
  611f00: 1affff5e     	bne	0x611c80 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x1a0> @ imm = #-0x288
  611f04: e8bd4070     	pop	{r4, r5, r6, lr}
  611f08: eafff9c0     	b	0x610610 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIfEELi1EfEEEEE11getInstanceEv> @ imm = #-0x1900
  611f0c: e3530002     	cmp	r3, #2
  611f10: 1affff5a     	bne	0x611c80 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x1a0> @ imm = #-0x298
  611f14: e8bd4070     	pop	{r4, r5, r6, lr}
  611f18: eafffb78     	b	0x610d00 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIfEELi1EfEEEEE11getInstanceEv> @ imm = #-0x1220
  611f1c: e3530002     	cmp	r3, #2
  611f20: 1affff56     	bne	0x611c80 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x1a0> @ imm = #-0x2a8
  611f24: e8bd4070     	pop	{r4, r5, r6, lr}
  611f28: eafffb05     	b	0x610b44 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIfEELi0EfEEEEE11getInstanceEv> @ imm = #-0x13ec
  611f2c: e3530002     	cmp	r3, #2
  611f30: 1affff52     	bne	0x611c80 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x1a0> @ imm = #-0x2b8
  611f34: e8bd4070     	pop	{r4, r5, r6, lr}
  611f38: eafffa92     	b	0x610988 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIfEEEEE11getInstanceEv> @ imm = #-0x15b8
  611f3c: e3530002     	cmp	r3, #2
  611f40: 1affff4e     	bne	0x611c80 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x1a0> @ imm = #-0x2c8
  611f44: e8bd4070     	pop	{r4, r5, r6, lr}
  611f48: eafff863     	b	0x6100dc <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIfEEEEE11getInstanceEv> @ imm = #-0x1e74
  611f4c: e3530002     	cmp	r3, #2
  611f50: 1affff4a     	bne	0x611c80 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x1a0> @ imm = #-0x2d8
  611f54: e8bd4070     	pop	{r4, r5, r6, lr}
  611f58: eafff93d     	b	0x610454 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIfEELi0EfEEEEE11getInstanceEv> @ imm = #-0x1b0c
  611f5c: e3530002     	cmp	r3, #2
  611f60: 1affff46     	bne	0x611c80 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x1a0> @ imm = #-0x2e8
  611f64: e8bd4070     	pop	{r4, r5, r6, lr}
  611f68: eafffa17     	b	0x6107cc <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIfEELi2EfEEEEE11getInstanceEv> @ imm = #-0x17a4
  611f6c: e8bd4070     	pop	{r4, r5, r6, lr}
  611f70: eafff7ea     	b	0x60ff20 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIfEEEEE11getInstanceEv> @ imm = #-0x2058
  611f74: e3530002     	cmp	r3, #2
  611f78: 1affff40     	bne	0x611c80 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x1a0> @ imm = #-0x300
  611f7c: e8bd4070     	pop	{r4, r5, r6, lr}
  611f80: eafffbcd     	b	0x610ebc <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIfEELi2EfEEEEE11getInstanceEv> @ imm = #-0x10cc
  611f84: e8bd4070     	pop	{r4, r5, r6, lr}
  611f88: eafffdd1     	b	0x6116d4 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE11getInstanceEv> @ imm = #-0x8bc
  611f8c: e8bd4070     	pop	{r4, r5, r6, lr}
  611f90: eafffdaa     	b	0x611640 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE11getInstanceEv> @ imm = #-0x958
  611f94: e8bd4070     	pop	{r4, r5, r6, lr}
  611f98: eafffd83     	b	0x6115ac <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE11getInstanceEv> @ imm = #-0x9f4
  611f9c: e59f5178     	ldr	r5, [pc, #0x178]        @ 0x61211c <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x63c>
  611fa0: e08f5005     	add	r5, pc, r5
  611fa4: e595300c     	ldr	r3, [r5, #0xc]
  611fa8: e3130001     	tst	r3, #1
  611fac: 0a000030     	beq	0x612074 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x594> @ imm = #0xc0
  611fb0: e5943018     	ldr	r3, [r4, #0x18]
  611fb4: e8930006     	ldm	r3, {r1, r2}
  611fb8: e2413001     	sub	r3, r1, #1
  611fbc: e3530007     	cmp	r3, #7
  611fc0: 83a01000     	movhi	r1, #0
  611fc4: 8a000002     	bhi	0x611fd4 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x4f4> @ imm = #0x8
  611fc8: e59f1150     	ldr	r1, [pc, #0x150]        @ 0x612120 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x640>
  611fcc: e08f1001     	add	r1, pc, r1
  611fd0: e7911103     	ldr	r1, [r1, r3, lsl #2]
  611fd4: e59f3148     	ldr	r3, [pc, #0x148]        @ 0x612124 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x644>
  611fd8: e2422001     	sub	r2, r2, #1
  611fdc: e0822102     	add	r2, r2, r2, lsl #2
  611fe0: e0822001     	add	r2, r2, r1
  611fe4: e08f3003     	add	r3, pc, r3
  611fe8: e0833102     	add	r3, r3, r2, lsl #2
  611fec: e5930010     	ldr	r0, [r3, #0x10]
  611ff0: e8bd8070     	pop	{r4, r5, r6, pc}
  611ff4: e8bd4070     	pop	{r4, r5, r6, lr}
  611ff8: eafffe93     	b	0x611a4c <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE11getInstanceEv> @ imm = #-0x5b4
  611ffc: e8bd4070     	pop	{r4, r5, r6, lr}
  612000: eafffdfd     	b	0x6117fc <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEE11getInstanceEv> @ imm = #-0x80c
  612004: e8bd4070     	pop	{r4, r5, r6, lr}
  612008: eafffdd6     	b	0x611768 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEE11getInstanceEv> @ imm = #-0x8a8
  61200c: e8bd4070     	pop	{r4, r5, r6, lr}
  612010: eafffe43     	b	0x611924 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEE11getInstanceEv> @ imm = #-0x6f4
  612014: e8bd4070     	pop	{r4, r5, r6, lr}
  612018: eafffe1c     	b	0x611890 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEE11getInstanceEv> @ imm = #-0x790
  61201c: e8bd4070     	pop	{r4, r5, r6, lr}
  612020: eafff99f     	b	0x6106a4 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIsEELi1EsEEEEE11getInstanceEv> @ imm = #-0x1984
  612024: e8bd4070     	pop	{r4, r5, r6, lr}
  612028: eafff92e     	b	0x6104e8 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIsEELi0EsEEEEE11getInstanceEv> @ imm = #-0x1b48
  61202c: e8bd4070     	pop	{r4, r5, r6, lr}
  612030: eafffae8     	b	0x610bd8 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIsEELi0EsEEEEE11getInstanceEv> @ imm = #-0x1460
  612034: e8bd4070     	pop	{r4, r5, r6, lr}
  612038: eafff8bb     	b	0x61032c <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIsEEEEE11getInstanceEv> @ imm = #-0x1d14
  61203c: e8bd4070     	pop	{r4, r5, r6, lr}
  612040: eafffbc2     	b	0x610f50 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIsEELi2EsEEEEE11getInstanceEv> @ imm = #-0x10f8
  612044: e8bd4070     	pop	{r4, r5, r6, lr}
  612048: eafffb51     	b	0x610d94 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIsEELi1EsEEEEE11getInstanceEv> @ imm = #-0x12bc
  61204c: e8bd4070     	pop	{r4, r5, r6, lr}
  612050: eafffa02     	b	0x610860 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIsEELi2EsEEEEE11getInstanceEv> @ imm = #-0x17f8
  612054: e8bd4070     	pop	{r4, r5, r6, lr}
  612058: eafffa6f     	b	0x610a1c <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIsEEEEE11getInstanceEv> @ imm = #-0x1644
  61205c: e8bd4070     	pop	{r4, r5, r6, lr}
  612060: eafff842     	b	0x610170 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIsEEEEE11getInstanceEv> @ imm = #-0x1ef8
  612064: e8bd4070     	pop	{r4, r5, r6, lr}
  612068: eafff7d1     	b	0x60ffb4 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIsEEEEE11getInstanceEv> @ imm = #-0x20bc
  61206c: e8bd4070     	pop	{r4, r5, r6, lr}
  612070: eafffe50     	b	0x6119b8 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE11getInstanceEv> @ imm = #-0x6c0
  612074: e285600c     	add	r6, r5, #12
  612078: e1a00006     	mov	r0, r6
  61207c: ebf3f1ba     	bl	0x30e76c <__cxa_guard_acquire@plt> @ imm = #-0x303918
  612080: e3500000     	cmp	r0, #0
  612084: 0affffc9     	beq	0x611fb0 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x4d0> @ imm = #-0xdc
  612088: ebfffc1f     	bl	0x61110c <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEEEE11getInstanceEv> @ imm = #-0xf84
  61208c: e5850010     	str	r0, [r5, #0x10]
  612090: ebfffc1d     	bl	0x61110c <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEEEE11getInstanceEv> @ imm = #-0xf8c
  612094: e5850014     	str	r0, [r5, #0x14]
  612098: ebfffd43     	bl	0x6115ac <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE11getInstanceEv> @ imm = #-0xaf4
  61209c: e5850024     	str	r0, [r5, #0x24]
  6120a0: ebfffc3e     	bl	0x6111a0 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE11getInstanceEv> @ imm = #-0xf08
  6120a4: e5850028     	str	r0, [r5, #0x28]
  6120a8: ebfffc61     	bl	0x611234 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE11getInstanceEv> @ imm = #-0xe7c
  6120ac: e585002c     	str	r0, [r5, #0x2c]
  6120b0: ebfffd62     	bl	0x611640 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE11getInstanceEv> @ imm = #-0xa78
  6120b4: e5850038     	str	r0, [r5, #0x38]
  6120b8: ebfffc82     	bl	0x6112c8 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE11getInstanceEv> @ imm = #-0xdf8
  6120bc: e585003c     	str	r0, [r5, #0x3c]
  6120c0: ebfffc80     	bl	0x6112c8 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE11getInstanceEv> @ imm = #-0xe00
  6120c4: e5850040     	str	r0, [r5, #0x40]
  6120c8: ebfffc7e     	bl	0x6112c8 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE11getInstanceEv> @ imm = #-0xe08
  6120cc: e5850044     	str	r0, [r5, #0x44]
  6120d0: ebfffd7f     	bl	0x6116d4 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE11getInstanceEv> @ imm = #-0xa04
  6120d4: e585004c     	str	r0, [r5, #0x4c]
  6120d8: ebfffc9f     	bl	0x61135c <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE11getInstanceEv> @ imm = #-0xd84
  6120dc: e5850050     	str	r0, [r5, #0x50]
  6120e0: ebfffcc2     	bl	0x6113f0 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE11getInstanceEv> @ imm = #-0xcf8
  6120e4: e5850054     	str	r0, [r5, #0x54]
  6120e8: ebfffce5     	bl	0x611484 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEE11getInstanceEv> @ imm = #-0xc6c
  6120ec: e5850058     	str	r0, [r5, #0x58]
  6120f0: ebfffd08     	bl	0x611518 <_ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEE11getInstanceEv> @ imm = #-0xbe0
  6120f4: e585005c     	str	r0, [r5, #0x5c]
  6120f8: e1a00006     	mov	r0, r6
  6120fc: ebf3f24e     	bl	0x30ea3c <__cxa_guard_release@plt> @ imm = #-0x3036c8
  612100: eaffffaa     	b	0x611fb0 <_ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE+0x4d0> @ imm = #-0x158
  612104: a4 2f 38 00  	.word	0x00382fa4
  612108: 24 0f 00 00  	.word	0x00000f24
  61210c: 84 2d 00 00  	.word	0x00002d84
  612110: 80 40 00 00  	.word	0x00004080
  612114: b0 23 00 00  	.word	0x000023b0
  612118: d0 49 00 00  	.word	0x000049d0
  61211c: 74 4d 3e 00  	.word	0x003e4d74
  612120: 98 2d 2d 00  	.word	0x002d2d98
  612124: 30 4d 3e 00  	.word	0x003e4d30

; FUNCTION 0x00618ffc size=140 sha256=a98fc87e40a73f0def5f3c88fc3f8aa54114b18b77ee059a877f806d3d0c42c2
; symbols: glitch::collada::animation_track::CApplyValueEx<float, glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
00618ffc <_ZN6glitch7collada15animation_track13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEE17applyAddedValueExEPvPfiSA_PNS1_15CApplicatorInfoE>:
  618ffc: e92d45f0     	push	{r4, r5, r6, r7, r8, r10, lr}
  619000: e3520001     	cmp	r2, #1
  619004: e24dd00c     	sub	sp, sp, #12
  619008: e1a04002     	mov	r4, r2
  61900c: e1a05000     	mov	r5, r0
  619010: e1a06001     	mov	r6, r1
  619014: e1a0a003     	mov	r10, r3
  619018: 0a000017     	beq	0x61907c <_ZN6glitch7collada15animation_track13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEE17applyAddedValueExEPvPfiSA_PNS1_15CApplicatorInfoE+0x80> @ imm = #0x5c
  61901c: e3520000     	cmp	r2, #0
  619020: 03a08000     	moveq	r8, #0
  619024: 0a00000b     	beq	0x619058 <_ZN6glitch7collada15animation_track13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEE17applyAddedValueExEPvPfiSA_PNS1_15CApplicatorInfoE+0x5c> @ imm = #0x2c
  619028: e3a08000     	mov	r8, #0
  61902c: e3a07000     	mov	r7, #0
  619030: e7961007     	ldr	r1, [r6, r7]
  619034: e7950007     	ldr	r0, [r5, r7]
  619038: ebf3d74b     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x30a2d4
  61903c: e1a01000     	mov	r1, r0
  619040: e1a00008     	mov	r0, r8
  619044: ebf3d6d6     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x30a4a8
  619048: e2544001     	subs	r4, r4, #1
  61904c: e1a08000     	mov	r8, r0
  619050: e2877004     	add	r7, r7, #4
  619054: 1afffff5     	bne	0x619030 <_ZN6glitch7collada15animation_track13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEE17applyAddedValueExEPvPfiSA_PNS1_15CApplicatorInfoE+0x34> @ imm = #-0x2c
  619058: e58d8004     	str	r8, [sp, #0x4]
  61905c: e59d3028     	ldr	r3, [sp, #0x28]
  619060: e1a0000a     	mov	r0, r10
  619064: e3a02000     	mov	r2, #0
  619068: e1d310b8     	ldrh	r1, [r3, #8]
  61906c: e28d3004     	add	r3, sp, #4
  619070: ebfeb6c5     	bl	0x5c6b8c <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtIfEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSB_> @ imm = #-0x524ec
  619074: e28dd00c     	add	sp, sp, #12
  619078: e8bd85f0     	pop	{r4, r5, r6, r7, r8, r10, pc}
  61907c: e5903000     	ldr	r3, [r0]
  619080: e58d3004     	str	r3, [sp, #0x4]
  619084: eafffff4     	b	0x61905c <_ZN6glitch7collada15animation_track13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEE17applyAddedValueExEPvPfiSA_PNS1_15CApplicatorInfoE+0x60> @ imm = #-0x30

; FUNCTION 0x00619088 size=28 sha256=f29f69102dd6d85e7f1364ccb7b0bdaa5d84b7d484295b47f2dd7f382ba67388
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float, glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
00619088 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEEEE15applyAddedValueEPvPfiSC_PNS1_15CApplicatorInfoE>:
  619088: e1a00001     	mov	r0, r1
  61908c: e59dc004     	ldr	r12, [sp, #0x4]
  619090: e1a01002     	mov	r1, r2
  619094: e1a02003     	mov	r2, r3
  619098: e59d3000     	ldr	r3, [sp]
  61909c: e58dc000     	str	r12, [sp]
  6190a0: eaffffd5     	b	0x618ffc <_ZN6glitch7collada15animation_track13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEE17applyAddedValueExEPvPfiSA_PNS1_15CApplicatorInfoE> @ imm = #-0xac

; FUNCTION 0x006191f4 size=252 sha256=662fb853701dadd43f91cd8fb86f7df27f4c945e916504735218f43c3b0e0d3f
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, -1, float> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
006191f4 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  6191f4: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  6191f8: e3530001     	cmp	r3, #1
  6191fc: e24dd024     	sub	sp, sp, #36
  619200: e1a04003     	mov	r4, r3
  619204: e1a0b002     	mov	r11, r2
  619208: 0a00002a     	beq	0x6192b8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0xc4> @ imm = #0xa8
  61920c: e3a06000     	mov	r6, #0
  619210: e3530000     	cmp	r3, #0
  619214: e58d6000     	str	r6, [sp]
  619218: e58d6004     	str	r6, [sp, #0x4]
  61921c: e58d6008     	str	r6, [sp, #0x8]
  619220: e58d600c     	str	r6, [sp, #0xc]
  619224: 11a08001     	movne	r8, r1
  619228: 13a09000     	movne	r9, #0
  61922c: 11a0700d     	movne	r7, sp
  619230: 0a00002a     	beq	0x6192e0 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0xec> @ imm = #0xa8
  619234: e79ba109     	ldr	r10, [r11, r9, lsl #2]
  619238: e3a05000     	mov	r5, #0
  61923c: e7981005     	ldr	r1, [r8, r5]
  619240: e1a0000a     	mov	r0, r10
  619244: ebf3d6c8     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x30a4e0
  619248: e1a01006     	mov	r1, r6
  61924c: ebf3d654     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x30a6b0
  619250: e7870005     	str	r0, [r7, r5]
  619254: e2855004     	add	r5, r5, #4
  619258: e3550010     	cmp	r5, #16
  61925c: 17976005     	ldrne	r6, [r7, r5]
  619260: 1afffff5     	bne	0x61923c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0x48> @ imm = #-0x2c
  619264: e2899001     	add	r9, r9, #1
  619268: e1590004     	cmp	r9, r4
  61926c: e2888010     	add	r8, r8, #16
  619270: 159d6000     	ldrne	r6, [sp]
  619274: 1affffee     	bne	0x619234 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0x40> @ imm = #-0x48
  619278: e59d1000     	ldr	r1, [sp]
  61927c: e59d2004     	ldr	r2, [sp, #0x4]
  619280: e59d3008     	ldr	r3, [sp, #0x8]
  619284: e59d600c     	ldr	r6, [sp, #0xc]
  619288: e58d1010     	str	r1, [sp, #0x10]
  61928c: e58d2014     	str	r2, [sp, #0x14]
  619290: e58d3018     	str	r3, [sp, #0x18]
  619294: e58d601c     	str	r6, [sp, #0x1c]
  619298: e59d304c     	ldr	r3, [sp, #0x4c]
  61929c: e59d0048     	ldr	r0, [sp, #0x48]
  6192a0: e3a02000     	mov	r2, #0
  6192a4: e1d310b8     	ldrh	r1, [r3, #8]
  6192a8: e28d3010     	add	r3, sp, #16
  6192ac: ebfed52d     	bl	0x5ce768 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_> @ imm = #-0x4ab4c
  6192b0: e28dd024     	add	sp, sp, #36
  6192b4: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  6192b8: e1a03001     	mov	r3, r1
  6192bc: e4930004     	ldr	r0, [r3], #4
  6192c0: e5911004     	ldr	r1, [r1, #0x4]
  6192c4: e5932008     	ldr	r2, [r3, #0x8]
  6192c8: e5933004     	ldr	r3, [r3, #0x4]
  6192cc: e58d0010     	str	r0, [sp, #0x10]
  6192d0: e58d1014     	str	r1, [sp, #0x14]
  6192d4: e58d3018     	str	r3, [sp, #0x18]
  6192d8: e58d201c     	str	r2, [sp, #0x1c]
  6192dc: eaffffed     	b	0x619298 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0xa4> @ imm = #-0x4c
  6192e0: e1a03006     	mov	r3, r6
  6192e4: e1a02006     	mov	r2, r6
  6192e8: e1a01006     	mov	r1, r6
  6192ec: eaffffe5     	b	0x619288 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0x94> @ imm = #-0x6c

; FUNCTION 0x0062008c size=140 sha256=248a77d7af4a81613913b96e68882d1733e55ae70117fedd2fe615813fb4ece4
; symbols: glitch::collada::animation_track::CApplyValueEx<float, glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
0062008c <_ZN6glitch7collada15animation_track13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEE19applyBlendedValueExEPvPfiSA_PNS1_15CApplicatorInfoE>:
  62008c: e92d45f0     	push	{r4, r5, r6, r7, r8, r10, lr}
  620090: e3520001     	cmp	r2, #1
  620094: e24dd00c     	sub	sp, sp, #12
  620098: e1a04002     	mov	r4, r2
  62009c: e1a05000     	mov	r5, r0
  6200a0: e1a06001     	mov	r6, r1
  6200a4: e1a0a003     	mov	r10, r3
  6200a8: 0a000017     	beq	0x62010c <_ZN6glitch7collada15animation_track13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEE19applyBlendedValueExEPvPfiSA_PNS1_15CApplicatorInfoE+0x80> @ imm = #0x5c
  6200ac: e3520000     	cmp	r2, #0
  6200b0: 03a08000     	moveq	r8, #0
  6200b4: 0a00000b     	beq	0x6200e8 <_ZN6glitch7collada15animation_track13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEE19applyBlendedValueExEPvPfiSA_PNS1_15CApplicatorInfoE+0x5c> @ imm = #0x2c
  6200b8: e3a08000     	mov	r8, #0
  6200bc: e3a07000     	mov	r7, #0
  6200c0: e7961007     	ldr	r1, [r6, r7]
  6200c4: e7950007     	ldr	r0, [r5, r7]
  6200c8: ebf3bb27     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x311364
  6200cc: e1a01000     	mov	r1, r0
  6200d0: e1a00008     	mov	r0, r8
  6200d4: ebf3bab2     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x311538
  6200d8: e2544001     	subs	r4, r4, #1
  6200dc: e1a08000     	mov	r8, r0
  6200e0: e2877004     	add	r7, r7, #4
  6200e4: 1afffff5     	bne	0x6200c0 <_ZN6glitch7collada15animation_track13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEE19applyBlendedValueExEPvPfiSA_PNS1_15CApplicatorInfoE+0x34> @ imm = #-0x2c
  6200e8: e58d8004     	str	r8, [sp, #0x4]
  6200ec: e59d3028     	ldr	r3, [sp, #0x28]
  6200f0: e1a0000a     	mov	r0, r10
  6200f4: e3a02000     	mov	r2, #0
  6200f8: e1d310b8     	ldrh	r1, [r3, #8]
  6200fc: e28d3004     	add	r3, sp, #4
  620100: ebfe9aa1     	bl	0x5c6b8c <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtIfEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSB_> @ imm = #-0x5957c
  620104: e28dd00c     	add	sp, sp, #12
  620108: e8bd85f0     	pop	{r4, r5, r6, r7, r8, r10, pc}
  62010c: e5903000     	ldr	r3, [r0]
  620110: e58d3004     	str	r3, [sp, #0x4]
  620114: eafffff4     	b	0x6200ec <_ZN6glitch7collada15animation_track13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEE19applyBlendedValueExEPvPfiSA_PNS1_15CApplicatorInfoE+0x60> @ imm = #-0x30

; FUNCTION 0x00620118 size=28 sha256=f29f69102dd6d85e7f1364ccb7b0bdaa5d84b7d484295b47f2dd7f382ba67388
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float, glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
00620118 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEEEE17applyBlendedValueEPvPfiSC_PNS1_15CApplicatorInfoE>:
  620118: e1a00001     	mov	r0, r1
  62011c: e59dc004     	ldr	r12, [sp, #0x4]
  620120: e1a01002     	mov	r1, r2
  620124: e1a02003     	mov	r2, r3
  620128: e59d3000     	ldr	r3, [sp]
  62012c: e58dc000     	str	r12, [sp]
  620130: eaffffd5     	b	0x62008c <_ZN6glitch7collada15animation_track13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEE19applyBlendedValueExEPvPfiSA_PNS1_15CApplicatorInfoE> @ imm = #-0xac

; FUNCTION 0x00620134 size=108 sha256=9b6573225a79d4be67a808130674b52d7cdbacdaa94ae4bbd07cbf3655f05750
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float, glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float> > >::getBlendedValue(void*, float*, int, void*) const
00620134 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEEEE15getBlendedValueEPvPfiSC_>:
  620134: e92d47f0     	push	{r4, r5, r6, r7, r8, r9, r10, lr}
  620138: e3530001     	cmp	r3, #1
  62013c: e1a04003     	mov	r4, r3
  620140: e1a05001     	mov	r5, r1
  620144: e1a08002     	mov	r8, r2
  620148: e59da020     	ldr	r10, [sp, #0x20]
  62014c: 0a000010     	beq	0x620194 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEEEE15getBlendedValueEPvPfiSC_+0x60> @ imm = #0x40
  620150: e3530000     	cmp	r3, #0
  620154: 03a07000     	moveq	r7, #0
  620158: 0a00000b     	beq	0x62018c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEEEE15getBlendedValueEPvPfiSC_+0x58> @ imm = #0x2c
  62015c: e3a07000     	mov	r7, #0
  620160: e3a06000     	mov	r6, #0
  620164: e7981006     	ldr	r1, [r8, r6]
  620168: e7950006     	ldr	r0, [r5, r6]
  62016c: ebf3bafe     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x311408
  620170: e1a01000     	mov	r1, r0
  620174: e1a00007     	mov	r0, r7
  620178: ebf3ba89     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x3115dc
  62017c: e2544001     	subs	r4, r4, #1
  620180: e1a07000     	mov	r7, r0
  620184: e2866004     	add	r6, r6, #4
  620188: 1afffff5     	bne	0x620164 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEEEE15getBlendedValueEPvPfiSC_+0x30> @ imm = #-0x2c
  62018c: e58a7000     	str	r7, [r10]
  620190: e8bd87f0     	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
  620194: e5913000     	ldr	r3, [r1]
  620198: e58a3000     	str	r3, [r10]
  62019c: e8bd87f0     	pop	{r4, r5, r6, r7, r8, r9, r10, pc}

; FUNCTION 0x006201a0 size=108 sha256=306de721087aa478fddf87dc38c88cbc307555fd287db37c17965acc77dc0810
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float, glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float> > >::getAddedValue(void*, float*, int, void*) const
006201a0 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEEEE13getAddedValueEPvPfiSC_>:
  6201a0: e92d47f0     	push	{r4, r5, r6, r7, r8, r9, r10, lr}
  6201a4: e3530001     	cmp	r3, #1
  6201a8: e1a04003     	mov	r4, r3
  6201ac: e1a05001     	mov	r5, r1
  6201b0: e1a08002     	mov	r8, r2
  6201b4: e59da020     	ldr	r10, [sp, #0x20]
  6201b8: 0a000010     	beq	0x620200 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEEEE13getAddedValueEPvPfiSC_+0x60> @ imm = #0x40
  6201bc: e3530000     	cmp	r3, #0
  6201c0: 03a07000     	moveq	r7, #0
  6201c4: 0a00000b     	beq	0x6201f8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEEEE13getAddedValueEPvPfiSC_+0x58> @ imm = #0x2c
  6201c8: e3a07000     	mov	r7, #0
  6201cc: e3a06000     	mov	r6, #0
  6201d0: e7981006     	ldr	r1, [r8, r6]
  6201d4: e7950006     	ldr	r0, [r5, r6]
  6201d8: ebf3bae3     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x311474
  6201dc: e1a01000     	mov	r1, r0
  6201e0: e1a00007     	mov	r0, r7
  6201e4: ebf3ba6e     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x311648
  6201e8: e2544001     	subs	r4, r4, #1
  6201ec: e1a07000     	mov	r7, r0
  6201f0: e2866004     	add	r6, r6, #4
  6201f4: 1afffff5     	bne	0x6201d0 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIfNS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEEEE13getAddedValueEPvPfiSC_+0x30> @ imm = #-0x2c
  6201f8: e58a7000     	str	r7, [r10]
  6201fc: e8bd87f0     	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
  620200: e5913000     	ldr	r3, [r1]
  620204: e58a3000     	str	r3, [r10]
  620208: e8bd87f0     	pop	{r4, r5, r6, r7, r8, r9, r10, pc}

; FUNCTION 0x006212d8 size=240 sha256=863f3f3ee92476b4016204dc2562ff4e27e8d3a6d29cba9e9e5b9c0c4a35bb6c
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [3], glitch::collada::animation_track::CMixin<unsigned char, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3], glitch::video::SColor> >, -1, unsigned char> > >::getBlendedValue(void*, float*, int, void*) const
006212d8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE15getBlendedValueEPvPfiSF_>:
  6212d8: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  6212dc: e3530001     	cmp	r3, #1
  6212e0: e24dd014     	sub	sp, sp, #20
  6212e4: e1a09002     	mov	r9, r2
  6212e8: 0a00002c     	beq	0x6213a0 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE15getBlendedValueEPvPfiSF_+0xc8> @ imm = #0xb0
  6212ec: e3a07000     	mov	r7, #0
  6212f0: e3530000     	cmp	r3, #0
  6212f4: e58d7004     	str	r7, [sp, #0x4]
  6212f8: e58d7008     	str	r7, [sp, #0x8]
  6212fc: e58d700c     	str	r7, [sp, #0xc]
  621300: 01a00007     	moveq	r0, r7
  621304: 0a000019     	beq	0x621370 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE15getBlendedValueEPvPfiSF_+0x98> @ imm = #0x64
  621308: e0833083     	add	r3, r3, r3, lsl #1
  62130c: e1a06001     	mov	r6, r1
  621310: e081b003     	add	r11, r1, r3
  621314: e28d8004     	add	r8, sp, #4
  621318: e599a000     	ldr	r10, [r9]
  62131c: e3a04000     	mov	r4, #0
  621320: e1a05004     	mov	r5, r4
  621324: e7d60005     	ldrb	r0, [r6, r5]
  621328: ebf3b58d     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x3129cc
  62132c: e1a0100a     	mov	r1, r10
  621330: ebf3b68d     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3125cc
  621334: e1a01007     	mov	r1, r7
  621338: ebf3b619     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31279c
  62133c: e7880004     	str	r0, [r8, r4]
  621340: e2844004     	add	r4, r4, #4
  621344: e354000c     	cmp	r4, #12
  621348: e2855001     	add	r5, r5, #1
  62134c: 17987004     	ldrne	r7, [r8, r4]
  621350: 1afffff3     	bne	0x621324 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE15getBlendedValueEPvPfiSF_+0x4c> @ imm = #-0x34
  621354: e2866003     	add	r6, r6, #3
  621358: e156000b     	cmp	r6, r11
  62135c: 0a000002     	beq	0x62136c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE15getBlendedValueEPvPfiSF_+0x94> @ imm = #0x8
  621360: e59d7004     	ldr	r7, [sp, #0x4]
  621364: e2899004     	add	r9, r9, #4
  621368: eaffffea     	b	0x621318 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE15getBlendedValueEPvPfiSF_+0x40> @ imm = #-0x58
  62136c: e59d0004     	ldr	r0, [sp, #0x4]
  621370: eb0a73ca     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x29cf28
  621374: e59d4038     	ldr	r4, [sp, #0x38]
  621378: e4c40001     	strb	r0, [r4], #1
  62137c: e59d0008     	ldr	r0, [sp, #0x8]
  621380: eb0a73c6     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x29cf18
  621384: e59d2038     	ldr	r2, [sp, #0x38]
  621388: e5c20001     	strb	r0, [r2, #0x1]
  62138c: e59d000c     	ldr	r0, [sp, #0xc]
  621390: eb0a73c2     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x29cf08
  621394: e5c40001     	strb	r0, [r4, #0x1]
  621398: e28dd014     	add	sp, sp, #20
  62139c: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  6213a0: e1a02001     	mov	r2, r1
  6213a4: e4d20001     	ldrb	r0, [r2], #1
  6213a8: e59d3038     	ldr	r3, [sp, #0x38]
  6213ac: e4c30001     	strb	r0, [r3], #1
  6213b0: e5d11001     	ldrb	r1, [r1, #0x1]
  6213b4: e59d0038     	ldr	r0, [sp, #0x38]
  6213b8: e5c01001     	strb	r1, [r0, #0x1]
  6213bc: e5d22001     	ldrb	r2, [r2, #0x1]
  6213c0: e5c32001     	strb	r2, [r3, #0x1]
  6213c4: eafffff3     	b	0x621398 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE15getBlendedValueEPvPfiSF_+0xc0> @ imm = #-0x34

; FUNCTION 0x006214b8 size=288 sha256=481b5594363b47c7434b91a4dbbc77341d49a3c162abf5fb396dfcc97039e20b
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [3], glitch::collada::animation_track::CMixin<unsigned char, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3], glitch::video::SColor> >, -1, unsigned char> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
006214b8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE17applyBlendedValueEPvPfiSF_PNS1_15CApplicatorInfoE>:
  6214b8: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  6214bc: e3530001     	cmp	r3, #1
  6214c0: e24dd014     	sub	sp, sp, #20
  6214c4: e1a09002     	mov	r9, r2
  6214c8: 0a000039     	beq	0x6215b4 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE17applyBlendedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0xfc> @ imm = #0xe4
  6214cc: e3a07000     	mov	r7, #0
  6214d0: e3530000     	cmp	r3, #0
  6214d4: e58d7000     	str	r7, [sp]
  6214d8: e58d7004     	str	r7, [sp, #0x4]
  6214dc: e58d7008     	str	r7, [sp, #0x8]
  6214e0: 01a00007     	moveq	r0, r7
  6214e4: 01a0800d     	moveq	r8, sp
  6214e8: 0a000019     	beq	0x621554 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE17applyBlendedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x9c> @ imm = #0x64
  6214ec: e0833083     	add	r3, r3, r3, lsl #1
  6214f0: e1a06001     	mov	r6, r1
  6214f4: e081b003     	add	r11, r1, r3
  6214f8: e1a0800d     	mov	r8, sp
  6214fc: e599a000     	ldr	r10, [r9]
  621500: e3a04000     	mov	r4, #0
  621504: e1a05004     	mov	r5, r4
  621508: e7d60005     	ldrb	r0, [r6, r5]
  62150c: ebf3b514     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x312bb0
  621510: e1a0100a     	mov	r1, r10
  621514: ebf3b614     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3127b0
  621518: e1a01007     	mov	r1, r7
  62151c: ebf3b5a0     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x312980
  621520: e7880004     	str	r0, [r8, r4]
  621524: e2844004     	add	r4, r4, #4
  621528: e354000c     	cmp	r4, #12
  62152c: e2855001     	add	r5, r5, #1
  621530: 17987004     	ldrne	r7, [r8, r4]
  621534: 1afffff3     	bne	0x621508 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE17applyBlendedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x50> @ imm = #-0x34
  621538: e2866003     	add	r6, r6, #3
  62153c: e156000b     	cmp	r6, r11
  621540: 0a000002     	beq	0x621550 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE17applyBlendedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x98> @ imm = #0x8
  621544: e59d7000     	ldr	r7, [sp]
  621548: e2899004     	add	r9, r9, #4
  62154c: eaffffea     	b	0x6214fc <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE17applyBlendedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x44> @ imm = #-0x58
  621550: e59d0000     	ldr	r0, [sp]
  621554: eb0a7351     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x29cd44
  621558: e5cd000c     	strb	r0, [sp, #0xc]
  62155c: e59d0004     	ldr	r0, [sp, #0x4]
  621560: eb0a734e     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x29cd38
  621564: e5cd000d     	strb	r0, [sp, #0xd]
  621568: e59d0008     	ldr	r0, [sp, #0x8]
  62156c: eb0a734b     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x29cd2c
  621570: e5cd000e     	strb	r0, [sp, #0xe]
  621574: e59d303c     	ldr	r3, [sp, #0x3c]
  621578: e5dd400c     	ldrb	r4, [sp, #0xc]
  62157c: e5dde00d     	ldrb	lr, [sp, #0xd]
  621580: e5ddc00e     	ldrb	r12, [sp, #0xe]
  621584: e1d310b8     	ldrh	r1, [r3, #8]
  621588: e3e05000     	mvn	r5, #0
  62158c: e59d0038     	ldr	r0, [sp, #0x38]
  621590: e1a0300d     	mov	r3, sp
  621594: e3a02000     	mov	r2, #0
  621598: e5cd5003     	strb	r5, [sp, #0x3]
  62159c: e5cd4000     	strb	r4, [sp]
  6215a0: e5cde001     	strb	lr, [sp, #0x1]
  6215a4: e5cdc002     	strb	r12, [sp, #0x2]
  6215a8: ebfea5e2     	bl	0x5cad38 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSC_> @ imm = #-0x56878
  6215ac: e28dd014     	add	sp, sp, #20
  6215b0: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  6215b4: e1a03001     	mov	r3, r1
  6215b8: e4d30001     	ldrb	r0, [r3], #1
  6215bc: e5d12001     	ldrb	r2, [r1, #0x1]
  6215c0: e1a0800d     	mov	r8, sp
  6215c4: e5d33001     	ldrb	r3, [r3, #0x1]
  6215c8: e5cd000c     	strb	r0, [sp, #0xc]
  6215cc: e5cd200d     	strb	r2, [sp, #0xd]
  6215d0: e5cd300e     	strb	r3, [sp, #0xe]
  6215d4: eaffffe6     	b	0x621574 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE17applyBlendedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0xbc> @ imm = #-0x68

; FUNCTION 0x00621748 size=288 sha256=d4d832c296b72f6346cd90ffc22542b830f5bfae8feb2026bb0ef98ae1482f9f
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [3], glitch::collada::animation_track::CMixin<unsigned char, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3], glitch::video::SColor> >, -1, unsigned char> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
00621748 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE15applyAddedValueEPvPfiSF_PNS1_15CApplicatorInfoE>:
  621748: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62174c: e3530001     	cmp	r3, #1
  621750: e24dd014     	sub	sp, sp, #20
  621754: e1a09002     	mov	r9, r2
  621758: 0a000039     	beq	0x621844 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE15applyAddedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0xfc> @ imm = #0xe4
  62175c: e3a07000     	mov	r7, #0
  621760: e3530000     	cmp	r3, #0
  621764: e58d7000     	str	r7, [sp]
  621768: e58d7004     	str	r7, [sp, #0x4]
  62176c: e58d7008     	str	r7, [sp, #0x8]
  621770: 01a00007     	moveq	r0, r7
  621774: 01a0800d     	moveq	r8, sp
  621778: 0a000019     	beq	0x6217e4 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE15applyAddedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x9c> @ imm = #0x64
  62177c: e0833083     	add	r3, r3, r3, lsl #1
  621780: e1a06001     	mov	r6, r1
  621784: e081b003     	add	r11, r1, r3
  621788: e1a0800d     	mov	r8, sp
  62178c: e599a000     	ldr	r10, [r9]
  621790: e3a04000     	mov	r4, #0
  621794: e1a05004     	mov	r5, r4
  621798: e7d60005     	ldrb	r0, [r6, r5]
  62179c: ebf3b470     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x312e40
  6217a0: e1a0100a     	mov	r1, r10
  6217a4: ebf3b570     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x312a40
  6217a8: e1a01007     	mov	r1, r7
  6217ac: ebf3b4fc     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x312c10
  6217b0: e7880004     	str	r0, [r8, r4]
  6217b4: e2844004     	add	r4, r4, #4
  6217b8: e354000c     	cmp	r4, #12
  6217bc: e2855001     	add	r5, r5, #1
  6217c0: 17987004     	ldrne	r7, [r8, r4]
  6217c4: 1afffff3     	bne	0x621798 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE15applyAddedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x50> @ imm = #-0x34
  6217c8: e2866003     	add	r6, r6, #3
  6217cc: e156000b     	cmp	r6, r11
  6217d0: 0a000002     	beq	0x6217e0 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE15applyAddedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x98> @ imm = #0x8
  6217d4: e59d7000     	ldr	r7, [sp]
  6217d8: e2899004     	add	r9, r9, #4
  6217dc: eaffffea     	b	0x62178c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE15applyAddedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x44> @ imm = #-0x58
  6217e0: e59d0000     	ldr	r0, [sp]
  6217e4: eb0a72ad     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x29cab4
  6217e8: e5cd000c     	strb	r0, [sp, #0xc]
  6217ec: e59d0004     	ldr	r0, [sp, #0x4]
  6217f0: eb0a72aa     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x29caa8
  6217f4: e5cd000d     	strb	r0, [sp, #0xd]
  6217f8: e59d0008     	ldr	r0, [sp, #0x8]
  6217fc: eb0a72a7     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x29ca9c
  621800: e5cd000e     	strb	r0, [sp, #0xe]
  621804: e59d303c     	ldr	r3, [sp, #0x3c]
  621808: e5dd400c     	ldrb	r4, [sp, #0xc]
  62180c: e5dde00d     	ldrb	lr, [sp, #0xd]
  621810: e5ddc00e     	ldrb	r12, [sp, #0xe]
  621814: e1d310b8     	ldrh	r1, [r3, #8]
  621818: e3e05000     	mvn	r5, #0
  62181c: e59d0038     	ldr	r0, [sp, #0x38]
  621820: e1a0300d     	mov	r3, sp
  621824: e3a02000     	mov	r2, #0
  621828: e5cd5003     	strb	r5, [sp, #0x3]
  62182c: e5cd4000     	strb	r4, [sp]
  621830: e5cde001     	strb	lr, [sp, #0x1]
  621834: e5cdc002     	strb	r12, [sp, #0x2]
  621838: ebfea53e     	bl	0x5cad38 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSC_> @ imm = #-0x56b08
  62183c: e28dd014     	add	sp, sp, #20
  621840: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  621844: e1a03001     	mov	r3, r1
  621848: e4d30001     	ldrb	r0, [r3], #1
  62184c: e5d12001     	ldrb	r2, [r1, #0x1]
  621850: e1a0800d     	mov	r8, sp
  621854: e5d33001     	ldrb	r3, [r3, #0x1]
  621858: e5cd000c     	strb	r0, [sp, #0xc]
  62185c: e5cd200d     	strb	r2, [sp, #0xd]
  621860: e5cd300e     	strb	r3, [sp, #0xe]
  621864: eaffffe6     	b	0x621804 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE15applyAddedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0xbc> @ imm = #-0x68

; FUNCTION 0x00621868 size=240 sha256=a7faa71e2d679663997bf850fd18da979cec8c362566e45993921cba4a5674b5
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [3], glitch::collada::animation_track::CMixin<unsigned char, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3], glitch::video::SColor> >, -1, unsigned char> > >::getAddedValue(void*, float*, int, void*) const
00621868 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE13getAddedValueEPvPfiSF_>:
  621868: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62186c: e3530001     	cmp	r3, #1
  621870: e24dd014     	sub	sp, sp, #20
  621874: e1a09002     	mov	r9, r2
  621878: 0a00002c     	beq	0x621930 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE13getAddedValueEPvPfiSF_+0xc8> @ imm = #0xb0
  62187c: e3a07000     	mov	r7, #0
  621880: e3530000     	cmp	r3, #0
  621884: e58d7004     	str	r7, [sp, #0x4]
  621888: e58d7008     	str	r7, [sp, #0x8]
  62188c: e58d700c     	str	r7, [sp, #0xc]
  621890: 01a00007     	moveq	r0, r7
  621894: 0a000019     	beq	0x621900 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE13getAddedValueEPvPfiSF_+0x98> @ imm = #0x64
  621898: e0833083     	add	r3, r3, r3, lsl #1
  62189c: e1a06001     	mov	r6, r1
  6218a0: e081b003     	add	r11, r1, r3
  6218a4: e28d8004     	add	r8, sp, #4
  6218a8: e599a000     	ldr	r10, [r9]
  6218ac: e3a04000     	mov	r4, #0
  6218b0: e1a05004     	mov	r5, r4
  6218b4: e7d60005     	ldrb	r0, [r6, r5]
  6218b8: ebf3b429     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x312f5c
  6218bc: e1a0100a     	mov	r1, r10
  6218c0: ebf3b529     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x312b5c
  6218c4: e1a01007     	mov	r1, r7
  6218c8: ebf3b4b5     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x312d2c
  6218cc: e7880004     	str	r0, [r8, r4]
  6218d0: e2844004     	add	r4, r4, #4
  6218d4: e354000c     	cmp	r4, #12
  6218d8: e2855001     	add	r5, r5, #1
  6218dc: 17987004     	ldrne	r7, [r8, r4]
  6218e0: 1afffff3     	bne	0x6218b4 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE13getAddedValueEPvPfiSF_+0x4c> @ imm = #-0x34
  6218e4: e2866003     	add	r6, r6, #3
  6218e8: e156000b     	cmp	r6, r11
  6218ec: 0a000002     	beq	0x6218fc <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE13getAddedValueEPvPfiSF_+0x94> @ imm = #0x8
  6218f0: e59d7004     	ldr	r7, [sp, #0x4]
  6218f4: e2899004     	add	r9, r9, #4
  6218f8: eaffffea     	b	0x6218a8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE13getAddedValueEPvPfiSF_+0x40> @ imm = #-0x58
  6218fc: e59d0004     	ldr	r0, [sp, #0x4]
  621900: eb0a7266     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x29c998
  621904: e59d4038     	ldr	r4, [sp, #0x38]
  621908: e4c40001     	strb	r0, [r4], #1
  62190c: e59d0008     	ldr	r0, [sp, #0x8]
  621910: eb0a7262     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x29c988
  621914: e59d2038     	ldr	r2, [sp, #0x38]
  621918: e5c20001     	strb	r0, [r2, #0x1]
  62191c: e59d000c     	ldr	r0, [sp, #0xc]
  621920: eb0a725e     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x29c978
  621924: e5c40001     	strb	r0, [r4, #0x1]
  621928: e28dd014     	add	sp, sp, #20
  62192c: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  621930: e1a02001     	mov	r2, r1
  621934: e4d20001     	ldrb	r0, [r2], #1
  621938: e59d3038     	ldr	r3, [sp, #0x38]
  62193c: e4c30001     	strb	r0, [r3], #1
  621940: e5d11001     	ldrb	r1, [r1, #0x1]
  621944: e59d0038     	ldr	r0, [sp, #0x38]
  621948: e5c01001     	strb	r1, [r0, #0x1]
  62194c: e5d22001     	ldrb	r2, [r2, #0x1]
  621950: e5c32001     	strb	r2, [r3, #0x1]
  621954: eafffff3     	b	0x621928 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE13getAddedValueEPvPfiSF_+0xc0> @ imm = #-0x34

; FUNCTION 0x00621ba0 size=196 sha256=be5e3616542425de737e3156abccb913ab7b339b36a49c2dddc48650bd8f3d88
; symbols: glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 1, float> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
00621ba0 <_ZN6glitch7collada15animation_track13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELi1EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE>:
  621ba0: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  621ba4: e3520001     	cmp	r2, #1
  621ba8: e24dd00c     	sub	sp, sp, #12
  621bac: e1a04002     	mov	r4, r2
  621bb0: e1a05001     	mov	r5, r1
  621bb4: e1a0b003     	mov	r11, r3
  621bb8: e1a06000     	mov	r6, r0
  621bbc: 0a000023     	beq	0x621c50 <_ZN6glitch7collada15animation_track13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELi1EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xb0> @ imm = #0x8c
  621bc0: e3520000     	cmp	r2, #0
  621bc4: 03a0a000     	moveq	r10, #0
  621bc8: 01a0900a     	moveq	r9, r10
  621bcc: 0a000015     	beq	0x621c28 <_ZN6glitch7collada15animation_track13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELi1EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x88> @ imm = #0x54
  621bd0: e3a0a000     	mov	r10, #0
  621bd4: e3a07000     	mov	r7, #0
  621bd8: e1a0900a     	mov	r9, r10
  621bdc: e7958007     	ldr	r8, [r5, r7]
  621be0: e5961000     	ldr	r1, [r6]
  621be4: e2877004     	add	r7, r7, #4
  621be8: e1a00008     	mov	r0, r8
  621bec: ebf3b45e     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x312e88
  621bf0: e1a01000     	mov	r1, r0
  621bf4: e1a0000a     	mov	r0, r10
  621bf8: ebf3b3e9     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31305c
  621bfc: e5961004     	ldr	r1, [r6, #0x4]
  621c00: e1a0a000     	mov	r10, r0
  621c04: e1a00008     	mov	r0, r8
  621c08: ebf3b457     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x312ea4
  621c0c: e1a01000     	mov	r1, r0
  621c10: e1a00009     	mov	r0, r9
  621c14: ebf3b3e2     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x313078
  621c18: e2544001     	subs	r4, r4, #1
  621c1c: e1a09000     	mov	r9, r0
  621c20: e2866008     	add	r6, r6, #8
  621c24: 1affffec     	bne	0x621bdc <_ZN6glitch7collada15animation_track13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELi1EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x3c> @ imm = #-0x50
  621c28: e58da000     	str	r10, [sp]
  621c2c: e58d9004     	str	r9, [sp, #0x4]
  621c30: e59d3030     	ldr	r3, [sp, #0x30]
  621c34: e1a0000b     	mov	r0, r11
  621c38: e3a02000     	mov	r2, #0
  621c3c: e1d310b8     	ldrh	r1, [r3, #8]
  621c40: e1a0300d     	mov	r3, sp
  621c44: ebfe9405     	bl	0x5c6c60 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector2dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_> @ imm = #-0x5afec
  621c48: e28dd00c     	add	sp, sp, #12
  621c4c: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  621c50: e5902004     	ldr	r2, [r0, #0x4]
  621c54: e5903000     	ldr	r3, [r0]
  621c58: e58d2004     	str	r2, [sp, #0x4]
  621c5c: e58d3000     	str	r3, [sp]
  621c60: eafffff2     	b	0x621c30 <_ZN6glitch7collada15animation_track13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELi1EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x90> @ imm = #-0x38

; FUNCTION 0x00621c64 size=28 sha256=9dffd31655dbd508d8e38be9b8bcfa767fb56b9fba6fa1b135df1530a2bf6bd7
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 1, float> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
00621c64 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  621c64: e1a00001     	mov	r0, r1
  621c68: e59dc004     	ldr	r12, [sp, #0x4]
  621c6c: e1a01002     	mov	r1, r2
  621c70: e1a02003     	mov	r2, r3
  621c74: e59d3000     	ldr	r3, [sp]
  621c78: e58dc000     	str	r12, [sp]
  621c7c: eaffffc7     	b	0x621ba0 <_ZN6glitch7collada15animation_track13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELi1EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE> @ imm = #-0xe4

; FUNCTION 0x00621c80 size=196 sha256=2644dae4b49753eaa049b38494e4a9361df9ce17892e5360d249d018b24a395c
; symbols: glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 1, float> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
00621c80 <_ZN6glitch7collada15animation_track13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELi1EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE>:
  621c80: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  621c84: e3520001     	cmp	r2, #1
  621c88: e24dd00c     	sub	sp, sp, #12
  621c8c: e1a04002     	mov	r4, r2
  621c90: e1a05001     	mov	r5, r1
  621c94: e1a0b003     	mov	r11, r3
  621c98: e1a06000     	mov	r6, r0
  621c9c: 0a000023     	beq	0x621d30 <_ZN6glitch7collada15animation_track13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELi1EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xb0> @ imm = #0x8c
  621ca0: e3520000     	cmp	r2, #0
  621ca4: 03a0a000     	moveq	r10, #0
  621ca8: 01a0900a     	moveq	r9, r10
  621cac: 0a000015     	beq	0x621d08 <_ZN6glitch7collada15animation_track13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELi1EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x88> @ imm = #0x54
  621cb0: e3a0a000     	mov	r10, #0
  621cb4: e3a07000     	mov	r7, #0
  621cb8: e1a0900a     	mov	r9, r10
  621cbc: e7958007     	ldr	r8, [r5, r7]
  621cc0: e5961000     	ldr	r1, [r6]
  621cc4: e2877004     	add	r7, r7, #4
  621cc8: e1a00008     	mov	r0, r8
  621ccc: ebf3b426     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x312f68
  621cd0: e1a01000     	mov	r1, r0
  621cd4: e1a0000a     	mov	r0, r10
  621cd8: ebf3b3b1     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31313c
  621cdc: e5961004     	ldr	r1, [r6, #0x4]
  621ce0: e1a0a000     	mov	r10, r0
  621ce4: e1a00008     	mov	r0, r8
  621ce8: ebf3b41f     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x312f84
  621cec: e1a01000     	mov	r1, r0
  621cf0: e1a00009     	mov	r0, r9
  621cf4: ebf3b3aa     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x313158
  621cf8: e2544001     	subs	r4, r4, #1
  621cfc: e1a09000     	mov	r9, r0
  621d00: e2866008     	add	r6, r6, #8
  621d04: 1affffec     	bne	0x621cbc <_ZN6glitch7collada15animation_track13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELi1EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x3c> @ imm = #-0x50
  621d08: e58da000     	str	r10, [sp]
  621d0c: e58d9004     	str	r9, [sp, #0x4]
  621d10: e59d3030     	ldr	r3, [sp, #0x30]
  621d14: e1a0000b     	mov	r0, r11
  621d18: e3a02000     	mov	r2, #0
  621d1c: e1d310b8     	ldrh	r1, [r3, #8]
  621d20: e1a0300d     	mov	r3, sp
  621d24: ebfe93cd     	bl	0x5c6c60 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector2dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_> @ imm = #-0x5b0cc
  621d28: e28dd00c     	add	sp, sp, #12
  621d2c: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  621d30: e5902004     	ldr	r2, [r0, #0x4]
  621d34: e5903000     	ldr	r3, [r0]
  621d38: e58d2004     	str	r2, [sp, #0x4]
  621d3c: e58d3000     	str	r3, [sp]
  621d40: eafffff2     	b	0x621d10 <_ZN6glitch7collada15animation_track13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELi1EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x90> @ imm = #-0x38

; FUNCTION 0x00621d44 size=28 sha256=9dffd31655dbd508d8e38be9b8bcfa767fb56b9fba6fa1b135df1530a2bf6bd7
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 1, float> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
00621d44 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  621d44: e1a00001     	mov	r0, r1
  621d48: e59dc004     	ldr	r12, [sp, #0x4]
  621d4c: e1a01002     	mov	r1, r2
  621d50: e1a02003     	mov	r2, r3
  621d54: e59d3000     	ldr	r3, [sp]
  621d58: e58dc000     	str	r12, [sp]
  621d5c: eaffffc7     	b	0x621c80 <_ZN6glitch7collada15animation_track13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELi1EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE> @ imm = #-0xe4

; FUNCTION 0x00621d60 size=196 sha256=685dfd4090daf89dd5140cf8b32ab9f90128063ad2357dcf9333f6534e8a7f17
; symbols: glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, -1, float> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
00621d60 <_ZN6glitch7collada15animation_track13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELin1EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE>:
  621d60: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  621d64: e3520001     	cmp	r2, #1
  621d68: e24dd00c     	sub	sp, sp, #12
  621d6c: e1a04002     	mov	r4, r2
  621d70: e1a05001     	mov	r5, r1
  621d74: e1a0b003     	mov	r11, r3
  621d78: e1a06000     	mov	r6, r0
  621d7c: 0a000023     	beq	0x621e10 <_ZN6glitch7collada15animation_track13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELin1EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xb0> @ imm = #0x8c
  621d80: e3520000     	cmp	r2, #0
  621d84: 03a0a000     	moveq	r10, #0
  621d88: 01a0900a     	moveq	r9, r10
  621d8c: 0a000015     	beq	0x621de8 <_ZN6glitch7collada15animation_track13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELin1EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x88> @ imm = #0x54
  621d90: e3a0a000     	mov	r10, #0
  621d94: e3a07000     	mov	r7, #0
  621d98: e1a0900a     	mov	r9, r10
  621d9c: e7958007     	ldr	r8, [r5, r7]
  621da0: e5961000     	ldr	r1, [r6]
  621da4: e2877004     	add	r7, r7, #4
  621da8: e1a00008     	mov	r0, r8
  621dac: ebf3b3ee     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x313048
  621db0: e1a01000     	mov	r1, r0
  621db4: e1a0000a     	mov	r0, r10
  621db8: ebf3b379     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31321c
  621dbc: e5961004     	ldr	r1, [r6, #0x4]
  621dc0: e1a0a000     	mov	r10, r0
  621dc4: e1a00008     	mov	r0, r8
  621dc8: ebf3b3e7     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x313064
  621dcc: e1a01000     	mov	r1, r0
  621dd0: e1a00009     	mov	r0, r9
  621dd4: ebf3b372     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x313238
  621dd8: e2544001     	subs	r4, r4, #1
  621ddc: e1a09000     	mov	r9, r0
  621de0: e2866008     	add	r6, r6, #8
  621de4: 1affffec     	bne	0x621d9c <_ZN6glitch7collada15animation_track13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELin1EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x3c> @ imm = #-0x50
  621de8: e58da000     	str	r10, [sp]
  621dec: e58d9004     	str	r9, [sp, #0x4]
  621df0: e59d3030     	ldr	r3, [sp, #0x30]
  621df4: e1a0000b     	mov	r0, r11
  621df8: e3a02000     	mov	r2, #0
  621dfc: e1d310b8     	ldrh	r1, [r3, #8]
  621e00: e1a0300d     	mov	r3, sp
  621e04: ebfe9395     	bl	0x5c6c60 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector2dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_> @ imm = #-0x5b1ac
  621e08: e28dd00c     	add	sp, sp, #12
  621e0c: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  621e10: e5902004     	ldr	r2, [r0, #0x4]
  621e14: e5903000     	ldr	r3, [r0]
  621e18: e58d2004     	str	r2, [sp, #0x4]
  621e1c: e58d3000     	str	r3, [sp]
  621e20: eafffff2     	b	0x621df0 <_ZN6glitch7collada15animation_track13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELin1EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x90> @ imm = #-0x38

; FUNCTION 0x00621e24 size=28 sha256=9dffd31655dbd508d8e38be9b8bcfa767fb56b9fba6fa1b135df1530a2bf6bd7
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, -1, float> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
00621e24 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  621e24: e1a00001     	mov	r0, r1
  621e28: e59dc004     	ldr	r12, [sp, #0x4]
  621e2c: e1a01002     	mov	r1, r2
  621e30: e1a02003     	mov	r2, r3
  621e34: e59d3000     	ldr	r3, [sp]
  621e38: e58dc000     	str	r12, [sp]
  621e3c: eaffffc7     	b	0x621d60 <_ZN6glitch7collada15animation_track13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELin1EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE> @ imm = #-0xe4

; FUNCTION 0x00621e40 size=196 sha256=3657aee3e53698f2a2d953863636f0c245d098e518952f258d1ac3a948dc0458
; symbols: glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, -1, float> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
00621e40 <_ZN6glitch7collada15animation_track13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELin1EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE>:
  621e40: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  621e44: e3520001     	cmp	r2, #1
  621e48: e24dd00c     	sub	sp, sp, #12
  621e4c: e1a04002     	mov	r4, r2
  621e50: e1a05001     	mov	r5, r1
  621e54: e1a0b003     	mov	r11, r3
  621e58: e1a06000     	mov	r6, r0
  621e5c: 0a000023     	beq	0x621ef0 <_ZN6glitch7collada15animation_track13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELin1EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xb0> @ imm = #0x8c
  621e60: e3520000     	cmp	r2, #0
  621e64: 03a0a000     	moveq	r10, #0
  621e68: 01a0900a     	moveq	r9, r10
  621e6c: 0a000015     	beq	0x621ec8 <_ZN6glitch7collada15animation_track13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELin1EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x88> @ imm = #0x54
  621e70: e3a0a000     	mov	r10, #0
  621e74: e3a07000     	mov	r7, #0
  621e78: e1a0900a     	mov	r9, r10
  621e7c: e7958007     	ldr	r8, [r5, r7]
  621e80: e5961000     	ldr	r1, [r6]
  621e84: e2877004     	add	r7, r7, #4
  621e88: e1a00008     	mov	r0, r8
  621e8c: ebf3b3b6     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x313128
  621e90: e1a01000     	mov	r1, r0
  621e94: e1a0000a     	mov	r0, r10
  621e98: ebf3b341     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x3132fc
  621e9c: e5961004     	ldr	r1, [r6, #0x4]
  621ea0: e1a0a000     	mov	r10, r0
  621ea4: e1a00008     	mov	r0, r8
  621ea8: ebf3b3af     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x313144
  621eac: e1a01000     	mov	r1, r0
  621eb0: e1a00009     	mov	r0, r9
  621eb4: ebf3b33a     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x313318
  621eb8: e2544001     	subs	r4, r4, #1
  621ebc: e1a09000     	mov	r9, r0
  621ec0: e2866008     	add	r6, r6, #8
  621ec4: 1affffec     	bne	0x621e7c <_ZN6glitch7collada15animation_track13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELin1EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x3c> @ imm = #-0x50
  621ec8: e58da000     	str	r10, [sp]
  621ecc: e58d9004     	str	r9, [sp, #0x4]
  621ed0: e59d3030     	ldr	r3, [sp, #0x30]
  621ed4: e1a0000b     	mov	r0, r11
  621ed8: e3a02000     	mov	r2, #0
  621edc: e1d310b8     	ldrh	r1, [r3, #8]
  621ee0: e1a0300d     	mov	r3, sp
  621ee4: ebfe935d     	bl	0x5c6c60 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector2dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_> @ imm = #-0x5b28c
  621ee8: e28dd00c     	add	sp, sp, #12
  621eec: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  621ef0: e5902004     	ldr	r2, [r0, #0x4]
  621ef4: e5903000     	ldr	r3, [r0]
  621ef8: e58d2004     	str	r2, [sp, #0x4]
  621efc: e58d3000     	str	r3, [sp]
  621f00: eafffff2     	b	0x621ed0 <_ZN6glitch7collada15animation_track13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELin1EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x90> @ imm = #-0x38

; FUNCTION 0x00621f04 size=28 sha256=9dffd31655dbd508d8e38be9b8bcfa767fb56b9fba6fa1b135df1530a2bf6bd7
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, -1, float> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
00621f04 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  621f04: e1a00001     	mov	r0, r1
  621f08: e59dc004     	ldr	r12, [sp, #0x4]
  621f0c: e1a01002     	mov	r1, r2
  621f10: e1a02003     	mov	r2, r3
  621f14: e59d3000     	ldr	r3, [sp]
  621f18: e58dc000     	str	r12, [sp]
  621f1c: eaffffc7     	b	0x621e40 <_ZN6glitch7collada15animation_track13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELin1EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE> @ imm = #-0xe4

; FUNCTION 0x00621f20 size=164 sha256=f02f23d14ddf3cbaef04aa86a8f2e76907b24cc786c395956a7f0056282f6b6a
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 1, float> > >::getBlendedValue(void*, float*, int, void*) const
00621f20 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE15getBlendedValueEPvPfiSD_>:
  621f20: e92d4ff8     	push	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
  621f24: e3530001     	cmp	r3, #1
  621f28: e1a04003     	mov	r4, r3
  621f2c: e1a09002     	mov	r9, r2
  621f30: e59db028     	ldr	r11, [sp, #0x28]
  621f34: e1a05001     	mov	r5, r1
  621f38: 0a00001c     	beq	0x621fb0 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE15getBlendedValueEPvPfiSD_+0x90> @ imm = #0x70
  621f3c: e3530000     	cmp	r3, #0
  621f40: 03a08000     	moveq	r8, #0
  621f44: 01a0a008     	moveq	r10, r8
  621f48: 0a000015     	beq	0x621fa4 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE15getBlendedValueEPvPfiSD_+0x84> @ imm = #0x54
  621f4c: e3a08000     	mov	r8, #0
  621f50: e3a06000     	mov	r6, #0
  621f54: e1a0a008     	mov	r10, r8
  621f58: e7997006     	ldr	r7, [r9, r6]
  621f5c: e5951000     	ldr	r1, [r5]
  621f60: e2866004     	add	r6, r6, #4
  621f64: e1a00007     	mov	r0, r7
  621f68: ebf3b37f     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x313204
  621f6c: e1a01000     	mov	r1, r0
  621f70: e1a00008     	mov	r0, r8
  621f74: ebf3b30a     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x3133d8
  621f78: e5951004     	ldr	r1, [r5, #0x4]
  621f7c: e1a08000     	mov	r8, r0
  621f80: e1a00007     	mov	r0, r7
  621f84: ebf3b378     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x313220
  621f88: e1a01000     	mov	r1, r0
  621f8c: e1a0000a     	mov	r0, r10
  621f90: ebf3b303     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x3133f4
  621f94: e2544001     	subs	r4, r4, #1
  621f98: e1a0a000     	mov	r10, r0
  621f9c: e2855008     	add	r5, r5, #8
  621fa0: 1affffec     	bne	0x621f58 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE15getBlendedValueEPvPfiSD_+0x38> @ imm = #-0x50
  621fa4: e58ba004     	str	r10, [r11, #0x4]
  621fa8: e58b8000     	str	r8, [r11]
  621fac: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
  621fb0: e5913000     	ldr	r3, [r1]
  621fb4: e58b3000     	str	r3, [r11]
  621fb8: e5913004     	ldr	r3, [r1, #0x4]
  621fbc: e58b3004     	str	r3, [r11, #0x4]
  621fc0: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}

; FUNCTION 0x00621fc4 size=164 sha256=6f1cfe6868e5c0ca9dacb5f76cf0144d417c08164e88c54b2c1034c33ca17b1c
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, -1, float> > >::getBlendedValue(void*, float*, int, void*) const
00621fc4 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE15getBlendedValueEPvPfiSD_>:
  621fc4: e92d4ff8     	push	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
  621fc8: e3530001     	cmp	r3, #1
  621fcc: e1a04003     	mov	r4, r3
  621fd0: e1a09002     	mov	r9, r2
  621fd4: e59db028     	ldr	r11, [sp, #0x28]
  621fd8: e1a05001     	mov	r5, r1
  621fdc: 0a00001c     	beq	0x622054 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE15getBlendedValueEPvPfiSD_+0x90> @ imm = #0x70
  621fe0: e3530000     	cmp	r3, #0
  621fe4: 03a08000     	moveq	r8, #0
  621fe8: 01a0a008     	moveq	r10, r8
  621fec: 0a000015     	beq	0x622048 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE15getBlendedValueEPvPfiSD_+0x84> @ imm = #0x54
  621ff0: e3a08000     	mov	r8, #0
  621ff4: e3a06000     	mov	r6, #0
  621ff8: e1a0a008     	mov	r10, r8
  621ffc: e7997006     	ldr	r7, [r9, r6]
  622000: e5951000     	ldr	r1, [r5]
  622004: e2866004     	add	r6, r6, #4
  622008: e1a00007     	mov	r0, r7
  62200c: ebf3b356     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3132a8
  622010: e1a01000     	mov	r1, r0
  622014: e1a00008     	mov	r0, r8
  622018: ebf3b2e1     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31347c
  62201c: e5951004     	ldr	r1, [r5, #0x4]
  622020: e1a08000     	mov	r8, r0
  622024: e1a00007     	mov	r0, r7
  622028: ebf3b34f     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3132c4
  62202c: e1a01000     	mov	r1, r0
  622030: e1a0000a     	mov	r0, r10
  622034: ebf3b2da     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x313498
  622038: e2544001     	subs	r4, r4, #1
  62203c: e1a0a000     	mov	r10, r0
  622040: e2855008     	add	r5, r5, #8
  622044: 1affffec     	bne	0x621ffc <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE15getBlendedValueEPvPfiSD_+0x38> @ imm = #-0x50
  622048: e58ba004     	str	r10, [r11, #0x4]
  62204c: e58b8000     	str	r8, [r11]
  622050: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
  622054: e5913000     	ldr	r3, [r1]
  622058: e58b3000     	str	r3, [r11]
  62205c: e5913004     	ldr	r3, [r1, #0x4]
  622060: e58b3004     	str	r3, [r11, #0x4]
  622064: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}

; FUNCTION 0x00622068 size=164 sha256=3cd32c35f2af4eaf54977b786e098eae98a0b06249302a4fc82886e0557b147e
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 0, float> > >::getAddedValue(void*, float*, int, void*) const
00622068 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE13getAddedValueEPvPfiSD_>:
  622068: e92d4ff8     	push	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62206c: e3530001     	cmp	r3, #1
  622070: e1a04003     	mov	r4, r3
  622074: e1a09002     	mov	r9, r2
  622078: e59db028     	ldr	r11, [sp, #0x28]
  62207c: e1a05001     	mov	r5, r1
  622080: 0a00001c     	beq	0x6220f8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE13getAddedValueEPvPfiSD_+0x90> @ imm = #0x70
  622084: e3530000     	cmp	r3, #0
  622088: 03a08000     	moveq	r8, #0
  62208c: 01a0a008     	moveq	r10, r8
  622090: 0a000015     	beq	0x6220ec <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE13getAddedValueEPvPfiSD_+0x84> @ imm = #0x54
  622094: e3a08000     	mov	r8, #0
  622098: e3a06000     	mov	r6, #0
  62209c: e1a0a008     	mov	r10, r8
  6220a0: e7997006     	ldr	r7, [r9, r6]
  6220a4: e5951000     	ldr	r1, [r5]
  6220a8: e2866004     	add	r6, r6, #4
  6220ac: e1a00007     	mov	r0, r7
  6220b0: ebf3b32d     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31334c
  6220b4: e1a01000     	mov	r1, r0
  6220b8: e1a00008     	mov	r0, r8
  6220bc: ebf3b2b8     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x313520
  6220c0: e5951004     	ldr	r1, [r5, #0x4]
  6220c4: e1a08000     	mov	r8, r0
  6220c8: e1a00007     	mov	r0, r7
  6220cc: ebf3b326     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x313368
  6220d0: e1a01000     	mov	r1, r0
  6220d4: e1a0000a     	mov	r0, r10
  6220d8: ebf3b2b1     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31353c
  6220dc: e2544001     	subs	r4, r4, #1
  6220e0: e1a0a000     	mov	r10, r0
  6220e4: e2855008     	add	r5, r5, #8
  6220e8: 1affffec     	bne	0x6220a0 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE13getAddedValueEPvPfiSD_+0x38> @ imm = #-0x50
  6220ec: e58ba004     	str	r10, [r11, #0x4]
  6220f0: e58b8000     	str	r8, [r11]
  6220f4: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
  6220f8: e5913000     	ldr	r3, [r1]
  6220fc: e58b3000     	str	r3, [r11]
  622100: e5913004     	ldr	r3, [r1, #0x4]
  622104: e58b3004     	str	r3, [r11, #0x4]
  622108: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}

; FUNCTION 0x0062210c size=164 sha256=e72d17ad634a801c887e3b417f173e1cfff4c2a061d1dd296e96f2dc1930de1d
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 1, float> > >::getAddedValue(void*, float*, int, void*) const
0062210c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE13getAddedValueEPvPfiSD_>:
  62210c: e92d4ff8     	push	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
  622110: e3530001     	cmp	r3, #1
  622114: e1a04003     	mov	r4, r3
  622118: e1a09002     	mov	r9, r2
  62211c: e59db028     	ldr	r11, [sp, #0x28]
  622120: e1a05001     	mov	r5, r1
  622124: 0a00001c     	beq	0x62219c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE13getAddedValueEPvPfiSD_+0x90> @ imm = #0x70
  622128: e3530000     	cmp	r3, #0
  62212c: 03a08000     	moveq	r8, #0
  622130: 01a0a008     	moveq	r10, r8
  622134: 0a000015     	beq	0x622190 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE13getAddedValueEPvPfiSD_+0x84> @ imm = #0x54
  622138: e3a08000     	mov	r8, #0
  62213c: e3a06000     	mov	r6, #0
  622140: e1a0a008     	mov	r10, r8
  622144: e7997006     	ldr	r7, [r9, r6]
  622148: e5951000     	ldr	r1, [r5]
  62214c: e2866004     	add	r6, r6, #4
  622150: e1a00007     	mov	r0, r7
  622154: ebf3b304     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3133f0
  622158: e1a01000     	mov	r1, r0
  62215c: e1a00008     	mov	r0, r8
  622160: ebf3b28f     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x3135c4
  622164: e5951004     	ldr	r1, [r5, #0x4]
  622168: e1a08000     	mov	r8, r0
  62216c: e1a00007     	mov	r0, r7
  622170: ebf3b2fd     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31340c
  622174: e1a01000     	mov	r1, r0
  622178: e1a0000a     	mov	r0, r10
  62217c: ebf3b288     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x3135e0
  622180: e2544001     	subs	r4, r4, #1
  622184: e1a0a000     	mov	r10, r0
  622188: e2855008     	add	r5, r5, #8
  62218c: 1affffec     	bne	0x622144 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE13getAddedValueEPvPfiSD_+0x38> @ imm = #-0x50
  622190: e58ba004     	str	r10, [r11, #0x4]
  622194: e58b8000     	str	r8, [r11]
  622198: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62219c: e5913000     	ldr	r3, [r1]
  6221a0: e58b3000     	str	r3, [r11]
  6221a4: e5913004     	ldr	r3, [r1, #0x4]
  6221a8: e58b3004     	str	r3, [r11, #0x4]
  6221ac: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}

; FUNCTION 0x006221b0 size=164 sha256=e07fd67e40aa4c780f75ab33ec48c96d558dcdd2f2461b7f75fa0a21570d11ed
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, -1, float> > >::getAddedValue(void*, float*, int, void*) const
006221b0 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE13getAddedValueEPvPfiSD_>:
  6221b0: e92d4ff8     	push	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
  6221b4: e3530001     	cmp	r3, #1
  6221b8: e1a04003     	mov	r4, r3
  6221bc: e1a09002     	mov	r9, r2
  6221c0: e59db028     	ldr	r11, [sp, #0x28]
  6221c4: e1a05001     	mov	r5, r1
  6221c8: 0a00001c     	beq	0x622240 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE13getAddedValueEPvPfiSD_+0x90> @ imm = #0x70
  6221cc: e3530000     	cmp	r3, #0
  6221d0: 03a08000     	moveq	r8, #0
  6221d4: 01a0a008     	moveq	r10, r8
  6221d8: 0a000015     	beq	0x622234 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE13getAddedValueEPvPfiSD_+0x84> @ imm = #0x54
  6221dc: e3a08000     	mov	r8, #0
  6221e0: e3a06000     	mov	r6, #0
  6221e4: e1a0a008     	mov	r10, r8
  6221e8: e7997006     	ldr	r7, [r9, r6]
  6221ec: e5951000     	ldr	r1, [r5]
  6221f0: e2866004     	add	r6, r6, #4
  6221f4: e1a00007     	mov	r0, r7
  6221f8: ebf3b2db     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x313494
  6221fc: e1a01000     	mov	r1, r0
  622200: e1a00008     	mov	r0, r8
  622204: ebf3b266     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x313668
  622208: e5951004     	ldr	r1, [r5, #0x4]
  62220c: e1a08000     	mov	r8, r0
  622210: e1a00007     	mov	r0, r7
  622214: ebf3b2d4     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3134b0
  622218: e1a01000     	mov	r1, r0
  62221c: e1a0000a     	mov	r0, r10
  622220: ebf3b25f     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x313684
  622224: e2544001     	subs	r4, r4, #1
  622228: e1a0a000     	mov	r10, r0
  62222c: e2855008     	add	r5, r5, #8
  622230: 1affffec     	bne	0x6221e8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE13getAddedValueEPvPfiSD_+0x38> @ imm = #-0x50
  622234: e58ba004     	str	r10, [r11, #0x4]
  622238: e58b8000     	str	r8, [r11]
  62223c: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
  622240: e5913000     	ldr	r3, [r1]
  622244: e58b3000     	str	r3, [r11]
  622248: e5913004     	ldr	r3, [r1, #0x4]
  62224c: e58b3004     	str	r3, [r11, #0x4]
  622250: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}

; FUNCTION 0x0062237c size=196 sha256=dd721031e407d044a35b4ef596db6f073aca8c1435867404fc6269bf98f5847d
; symbols: glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 0, float> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
0062237c <_ZN6glitch7collada15animation_track13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELi0EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE>:
  62237c: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  622380: e3520001     	cmp	r2, #1
  622384: e24dd00c     	sub	sp, sp, #12
  622388: e1a04002     	mov	r4, r2
  62238c: e1a05001     	mov	r5, r1
  622390: e1a0b003     	mov	r11, r3
  622394: e1a06000     	mov	r6, r0
  622398: 0a000023     	beq	0x62242c <_ZN6glitch7collada15animation_track13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELi0EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xb0> @ imm = #0x8c
  62239c: e3520000     	cmp	r2, #0
  6223a0: 03a0a000     	moveq	r10, #0
  6223a4: 01a0900a     	moveq	r9, r10
  6223a8: 0a000015     	beq	0x622404 <_ZN6glitch7collada15animation_track13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELi0EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x88> @ imm = #0x54
  6223ac: e3a0a000     	mov	r10, #0
  6223b0: e3a07000     	mov	r7, #0
  6223b4: e1a0900a     	mov	r9, r10
  6223b8: e7958007     	ldr	r8, [r5, r7]
  6223bc: e5961000     	ldr	r1, [r6]
  6223c0: e2877004     	add	r7, r7, #4
  6223c4: e1a00008     	mov	r0, r8
  6223c8: ebf3b267     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x313664
  6223cc: e1a01000     	mov	r1, r0
  6223d0: e1a0000a     	mov	r0, r10
  6223d4: ebf3b1f2     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x313838
  6223d8: e5961004     	ldr	r1, [r6, #0x4]
  6223dc: e1a0a000     	mov	r10, r0
  6223e0: e1a00008     	mov	r0, r8
  6223e4: ebf3b260     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x313680
  6223e8: e1a01000     	mov	r1, r0
  6223ec: e1a00009     	mov	r0, r9
  6223f0: ebf3b1eb     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x313854
  6223f4: e2544001     	subs	r4, r4, #1
  6223f8: e1a09000     	mov	r9, r0
  6223fc: e2866008     	add	r6, r6, #8
  622400: 1affffec     	bne	0x6223b8 <_ZN6glitch7collada15animation_track13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELi0EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x3c> @ imm = #-0x50
  622404: e58da000     	str	r10, [sp]
  622408: e58d9004     	str	r9, [sp, #0x4]
  62240c: e59d3030     	ldr	r3, [sp, #0x30]
  622410: e1a0000b     	mov	r0, r11
  622414: e3a02000     	mov	r2, #0
  622418: e1d310b8     	ldrh	r1, [r3, #8]
  62241c: e1a0300d     	mov	r3, sp
  622420: ebfe920e     	bl	0x5c6c60 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector2dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_> @ imm = #-0x5b7c8
  622424: e28dd00c     	add	sp, sp, #12
  622428: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62242c: e5902004     	ldr	r2, [r0, #0x4]
  622430: e5903000     	ldr	r3, [r0]
  622434: e58d2004     	str	r2, [sp, #0x4]
  622438: e58d3000     	str	r3, [sp]
  62243c: eafffff2     	b	0x62240c <_ZN6glitch7collada15animation_track13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELi0EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x90> @ imm = #-0x38

; FUNCTION 0x00622440 size=28 sha256=9dffd31655dbd508d8e38be9b8bcfa767fb56b9fba6fa1b135df1530a2bf6bd7
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 0, float> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
00622440 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  622440: e1a00001     	mov	r0, r1
  622444: e59dc004     	ldr	r12, [sp, #0x4]
  622448: e1a01002     	mov	r1, r2
  62244c: e1a02003     	mov	r2, r3
  622450: e59d3000     	ldr	r3, [sp]
  622454: e58dc000     	str	r12, [sp]
  622458: eaffffc7     	b	0x62237c <_ZN6glitch7collada15animation_track13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELi0EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE> @ imm = #-0xe4

; FUNCTION 0x0062245c size=196 sha256=1e20c80b68b148dde82bbda0c2282d3a3cbfee516afc49a5ad9f4ac8f25a8435
; symbols: glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 0, float> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
0062245c <_ZN6glitch7collada15animation_track13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELi0EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE>:
  62245c: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  622460: e3520001     	cmp	r2, #1
  622464: e24dd00c     	sub	sp, sp, #12
  622468: e1a04002     	mov	r4, r2
  62246c: e1a05001     	mov	r5, r1
  622470: e1a0b003     	mov	r11, r3
  622474: e1a06000     	mov	r6, r0
  622478: 0a000023     	beq	0x62250c <_ZN6glitch7collada15animation_track13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELi0EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xb0> @ imm = #0x8c
  62247c: e3520000     	cmp	r2, #0
  622480: 03a0a000     	moveq	r10, #0
  622484: 01a0900a     	moveq	r9, r10
  622488: 0a000015     	beq	0x6224e4 <_ZN6glitch7collada15animation_track13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELi0EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x88> @ imm = #0x54
  62248c: e3a0a000     	mov	r10, #0
  622490: e3a07000     	mov	r7, #0
  622494: e1a0900a     	mov	r9, r10
  622498: e7958007     	ldr	r8, [r5, r7]
  62249c: e5961000     	ldr	r1, [r6]
  6224a0: e2877004     	add	r7, r7, #4
  6224a4: e1a00008     	mov	r0, r8
  6224a8: ebf3b22f     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x313744
  6224ac: e1a01000     	mov	r1, r0
  6224b0: e1a0000a     	mov	r0, r10
  6224b4: ebf3b1ba     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x313918
  6224b8: e5961004     	ldr	r1, [r6, #0x4]
  6224bc: e1a0a000     	mov	r10, r0
  6224c0: e1a00008     	mov	r0, r8
  6224c4: ebf3b228     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x313760
  6224c8: e1a01000     	mov	r1, r0
  6224cc: e1a00009     	mov	r0, r9
  6224d0: ebf3b1b3     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x313934
  6224d4: e2544001     	subs	r4, r4, #1
  6224d8: e1a09000     	mov	r9, r0
  6224dc: e2866008     	add	r6, r6, #8
  6224e0: 1affffec     	bne	0x622498 <_ZN6glitch7collada15animation_track13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELi0EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x3c> @ imm = #-0x50
  6224e4: e58da000     	str	r10, [sp]
  6224e8: e58d9004     	str	r9, [sp, #0x4]
  6224ec: e59d3030     	ldr	r3, [sp, #0x30]
  6224f0: e1a0000b     	mov	r0, r11
  6224f4: e3a02000     	mov	r2, #0
  6224f8: e1d310b8     	ldrh	r1, [r3, #8]
  6224fc: e1a0300d     	mov	r3, sp
  622500: ebfe91d6     	bl	0x5c6c60 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector2dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_> @ imm = #-0x5b8a8
  622504: e28dd00c     	add	sp, sp, #12
  622508: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62250c: e5902004     	ldr	r2, [r0, #0x4]
  622510: e5903000     	ldr	r3, [r0]
  622514: e58d2004     	str	r2, [sp, #0x4]
  622518: e58d3000     	str	r3, [sp]
  62251c: eafffff2     	b	0x6224ec <_ZN6glitch7collada15animation_track13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELi0EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x90> @ imm = #-0x38

; FUNCTION 0x00622520 size=28 sha256=9dffd31655dbd508d8e38be9b8bcfa767fb56b9fba6fa1b135df1530a2bf6bd7
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [2], glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 0, float> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
00622520 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  622520: e1a00001     	mov	r0, r1
  622524: e59dc004     	ldr	r12, [sp, #0x4]
  622528: e1a01002     	mov	r1, r2
  62252c: e1a02003     	mov	r2, r3
  622530: e59d3000     	ldr	r3, [sp]
  622534: e58dc000     	str	r12, [sp]
  622538: eaffffc7     	b	0x62245c <_ZN6glitch7collada15animation_track13CApplyValueExIA2_fNS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELi0EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE> @ imm = #-0xe4

; FUNCTION 0x00622658 size=320 sha256=51cc81ea409964cca45a7c0146120719aa7ee50221add4dc820a58f1bfe4bdae
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 0, unsigned char> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
00622658 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEE15applyAddedValueEPvPfiSF_PNS1_15CApplicatorInfoE>:
  622658: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62265c: e3530001     	cmp	r3, #1
  622660: e24dd024     	sub	sp, sp, #36
  622664: e1a04003     	mov	r4, r3
  622668: e88d0006     	stm	sp, {r1, r2}
  62266c: 0a00003a     	beq	0x62275c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEE15applyAddedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x104> @ imm = #0xe8
  622670: e3a07000     	mov	r7, #0
  622674: e3530000     	cmp	r3, #0
  622678: e58d700c     	str	r7, [sp, #0xc]
  62267c: e58d7010     	str	r7, [sp, #0x10]
  622680: e58d7014     	str	r7, [sp, #0x14]
  622684: e58d7018     	str	r7, [sp, #0x18]
  622688: 13a0b000     	movne	r11, #0
  62268c: 128d800c     	addne	r8, sp, #12
  622690: 0a00003d     	beq	0x62278c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEE15applyAddedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x134> @ imm = #0xf4
  622694: e59d2004     	ldr	r2, [sp, #0x4]
  622698: e59d3000     	ldr	r3, [sp]
  62269c: e3a05000     	mov	r5, #0
  6226a0: e792a00b     	ldr	r10, [r2, r11]
  6226a4: e083900b     	add	r9, r3, r11
  6226a8: e1a06005     	mov	r6, r5
  6226ac: e7d90006     	ldrb	r0, [r9, r6]
  6226b0: ebf3b0ab     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x313d54
  6226b4: e1a0100a     	mov	r1, r10
  6226b8: ebf3b1ab     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x313954
  6226bc: e1a01007     	mov	r1, r7
  6226c0: ebf3b137     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x313b24
  6226c4: e7880005     	str	r0, [r8, r5]
  6226c8: e2855004     	add	r5, r5, #4
  6226cc: e3550010     	cmp	r5, #16
  6226d0: e2866001     	add	r6, r6, #1
  6226d4: 17987005     	ldrne	r7, [r8, r5]
  6226d8: 1afffff3     	bne	0x6226ac <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEE15applyAddedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x54> @ imm = #-0x34
  6226dc: e2544001     	subs	r4, r4, #1
  6226e0: e28bb004     	add	r11, r11, #4
  6226e4: 159d700c     	ldrne	r7, [sp, #0xc]
  6226e8: 1affffe9     	bne	0x622694 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEE15applyAddedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x3c> @ imm = #-0x5c
  6226ec: e59d000c     	ldr	r0, [sp, #0xc]
  6226f0: eb0a6eea     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x29bba8
  6226f4: e5cd001c     	strb	r0, [sp, #0x1c]
  6226f8: e59d0010     	ldr	r0, [sp, #0x10]
  6226fc: eb0a6ee7     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x29bb9c
  622700: e5cd001d     	strb	r0, [sp, #0x1d]
  622704: e59d0014     	ldr	r0, [sp, #0x14]
  622708: eb0a6ee4     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x29bb90
  62270c: e5cd001e     	strb	r0, [sp, #0x1e]
  622710: e59d0018     	ldr	r0, [sp, #0x18]
  622714: eb0a6ee1     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x29bb84
  622718: e5cd001f     	strb	r0, [sp, #0x1f]
  62271c: e59d304c     	ldr	r3, [sp, #0x4c]
  622720: e5dd501f     	ldrb	r5, [sp, #0x1f]
  622724: e5dd401c     	ldrb	r4, [sp, #0x1c]
  622728: e5dde01d     	ldrb	lr, [sp, #0x1d]
  62272c: e5ddc01e     	ldrb	r12, [sp, #0x1e]
  622730: e1d310b8     	ldrh	r1, [r3, #8]
  622734: e59d0048     	ldr	r0, [sp, #0x48]
  622738: e1a03008     	mov	r3, r8
  62273c: e3a02000     	mov	r2, #0
  622740: e5cd500f     	strb	r5, [sp, #0xf]
  622744: e5cd400c     	strb	r4, [sp, #0xc]
  622748: e5cde00d     	strb	lr, [sp, #0xd]
  62274c: e5cdc00e     	strb	r12, [sp, #0xe]
  622750: ebfea178     	bl	0x5cad38 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSC_> @ imm = #-0x57a20
  622754: e28dd024     	add	sp, sp, #36
  622758: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62275c: e59d3000     	ldr	r3, [sp]
  622760: e59d2000     	ldr	r2, [sp]
  622764: e28d800c     	add	r8, sp, #12
  622768: e4d30001     	ldrb	r0, [r3], #1
  62276c: e5d21001     	ldrb	r1, [r2, #0x1]
  622770: e5d32002     	ldrb	r2, [r3, #0x2]
  622774: e5d33001     	ldrb	r3, [r3, #0x1]
  622778: e5cd001c     	strb	r0, [sp, #0x1c]
  62277c: e5cd101d     	strb	r1, [sp, #0x1d]
  622780: e5cd301e     	strb	r3, [sp, #0x1e]
  622784: e5cd201f     	strb	r2, [sp, #0x1f]
  622788: eaffffe3     	b	0x62271c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEE15applyAddedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0xc4> @ imm = #-0x74
  62278c: e1a00007     	mov	r0, r7
  622790: e28d800c     	add	r8, sp, #12
  622794: eaffffd5     	b	0x6226f0 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEE15applyAddedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x98> @ imm = #-0xac

; FUNCTION 0x00623df0 size=248 sha256=b437af573428fc3b55ead79d184d3fec19ba34255bef5fdd743804044ebb29e6
; symbols: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
00623df0 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIsEELi2EsEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE>:
  623df0: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  623df4: e3520001     	cmp	r2, #1
  623df8: e24dd01c     	sub	sp, sp, #28
  623dfc: e3a0a000     	mov	r10, #0
  623e00: e1a04002     	mov	r4, r2
  623e04: e1a05001     	mov	r5, r1
  623e08: e58d3004     	str	r3, [sp, #0x4]
  623e0c: e58da014     	str	r10, [sp, #0x14]
  623e10: 0a00002b     	beq	0x623ec4 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIsEELi2EsEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xd4> @ imm = #0xac
  623e14: e3520000     	cmp	r2, #0
  623e18: 01a0b00a     	moveq	r11, r10
  623e1c: 01a0900a     	moveq	r9, r10
  623e20: 0a00001d     	beq	0x623e9c <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIsEELi2EsEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xac> @ imm = #0x74
  623e24: e1a06000     	mov	r6, r0
  623e28: e3a08000     	mov	r8, #0
  623e2c: e1a0b00a     	mov	r11, r10
  623e30: e1a0900a     	mov	r9, r10
  623e34: e7957008     	ldr	r7, [r5, r8]
  623e38: e5961000     	ldr	r1, [r6]
  623e3c: e2888004     	add	r8, r8, #4
  623e40: e1a00007     	mov	r0, r7
  623e44: ebf3abc8     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3150e0
  623e48: e1a01000     	mov	r1, r0
  623e4c: e1a0000a     	mov	r0, r10
  623e50: ebf3ab53     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x3152b4
  623e54: e5961004     	ldr	r1, [r6, #0x4]
  623e58: e1a0a000     	mov	r10, r0
  623e5c: e1a00007     	mov	r0, r7
  623e60: ebf3abc1     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3150fc
  623e64: e1a01000     	mov	r1, r0
  623e68: e1a0000b     	mov	r0, r11
  623e6c: ebf3ab4c     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x3152d0
  623e70: e5961008     	ldr	r1, [r6, #0x8]
  623e74: e1a0b000     	mov	r11, r0
  623e78: e1a00007     	mov	r0, r7
  623e7c: ebf3abba     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x315118
  623e80: e1a01000     	mov	r1, r0
  623e84: e1a00009     	mov	r0, r9
  623e88: ebf3ab45     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x3152ec
  623e8c: e2544001     	subs	r4, r4, #1
  623e90: e1a09000     	mov	r9, r0
  623e94: e286600c     	add	r6, r6, #12
  623e98: 1affffe5     	bne	0x623e34 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIsEELi2EsEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x44> @ imm = #-0x6c
  623e9c: e28d1018     	add	r1, sp, #24
  623ea0: e521a00c     	str	r10, [r1, #-0xc]!
  623ea4: e58db010     	str	r11, [sp, #0x10]
  623ea8: e5819008     	str	r9, [r1, #0x8]
  623eac: e59d0004     	ldr	r0, [sp, #0x4]
  623eb0: e5903000     	ldr	r3, [r0]
  623eb4: e1a0e00f     	mov	lr, pc
  623eb8: e593f0a4     	ldr	pc, [r3, #0xa4]
  623ebc: e28dd01c     	add	sp, sp, #28
  623ec0: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  623ec4: e1a03000     	mov	r3, r0
  623ec8: e493c004     	ldr	r12, [r3], #4
  623ecc: e5902004     	ldr	r2, [r0, #0x4]
  623ed0: e28d1018     	add	r1, sp, #24
  623ed4: e5933004     	ldr	r3, [r3, #0x4]
  623ed8: e521c00c     	str	r12, [r1, #-0xc]!
  623edc: e58d2010     	str	r2, [sp, #0x10]
  623ee0: e5813008     	str	r3, [r1, #0x8]
  623ee4: eafffff0     	b	0x623eac <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIsEELi2EsEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xbc> @ imm = #-0x40

; FUNCTION 0x00623ee8 size=28 sha256=e7ecfdacaee34dd6f39b726dc7b5ffcc3adf55e2c7037d1df0d3033e53eb0543
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
00623ee8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIsEELi2EsEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  623ee8: e1a00001     	mov	r0, r1
  623eec: e59dc004     	ldr	r12, [sp, #0x4]
  623ef0: e1a01002     	mov	r1, r2
  623ef4: e1a02003     	mov	r2, r3
  623ef8: e59d3000     	ldr	r3, [sp]
  623efc: e58dc000     	str	r12, [sp]
  623f00: eaffffba     	b	0x623df0 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIsEELi2EsEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE> @ imm = #-0x118

; FUNCTION 0x00623f04 size=244 sha256=9ff47f2b45744e5ea35e6a11717f3a3e31f99bf6dbd3a839cffe5a0ada981e94
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 0, float> > >::getBlendedValue(void*, float*, int, void*) const
00623f04 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE15getBlendedValueEPvPfiSD_>:
  623f04: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  623f08: e3530001     	cmp	r3, #1
  623f0c: e24dd014     	sub	sp, sp, #20
  623f10: e1a04003     	mov	r4, r3
  623f14: e1a0b002     	mov	r11, r2
  623f18: 0a000026     	beq	0x623fb8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE15getBlendedValueEPvPfiSD_+0xb4> @ imm = #0x98
  623f1c: e3a06000     	mov	r6, #0
  623f20: e3530000     	cmp	r3, #0
  623f24: e58d6000     	str	r6, [sp]
  623f28: e58d6004     	str	r6, [sp, #0x4]
  623f2c: e58d6008     	str	r6, [sp, #0x8]
  623f30: e58d600c     	str	r6, [sp, #0xc]
  623f34: 11a08001     	movne	r8, r1
  623f38: 13a09000     	movne	r9, #0
  623f3c: 11a0700d     	movne	r7, sp
  623f40: 0a000028     	beq	0x623fe8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE15getBlendedValueEPvPfiSD_+0xe4> @ imm = #0xa0
  623f44: e79ba109     	ldr	r10, [r11, r9, lsl #2]
  623f48: e3a05000     	mov	r5, #0
  623f4c: e7981005     	ldr	r1, [r8, r5]
  623f50: e1a0000a     	mov	r0, r10
  623f54: ebf3ab84     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3151f0
  623f58: e1a01006     	mov	r1, r6
  623f5c: ebf3ab10     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x3153c0
  623f60: e7870005     	str	r0, [r7, r5]
  623f64: e2855004     	add	r5, r5, #4
  623f68: e3550010     	cmp	r5, #16
  623f6c: 17976005     	ldrne	r6, [r7, r5]
  623f70: 1afffff5     	bne	0x623f4c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE15getBlendedValueEPvPfiSD_+0x48> @ imm = #-0x2c
  623f74: e2899001     	add	r9, r9, #1
  623f78: e1590004     	cmp	r9, r4
  623f7c: e2888010     	add	r8, r8, #16
  623f80: 159d6000     	ldrne	r6, [sp]
  623f84: 1affffee     	bne	0x623f44 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE15getBlendedValueEPvPfiSD_+0x40> @ imm = #-0x48
  623f88: e59d0000     	ldr	r0, [sp]
  623f8c: e59d1004     	ldr	r1, [sp, #0x4]
  623f90: e59d2008     	ldr	r2, [sp, #0x8]
  623f94: e59d600c     	ldr	r6, [sp, #0xc]
  623f98: e59d3038     	ldr	r3, [sp, #0x38]
  623f9c: e4830004     	str	r0, [r3], #4
  623fa0: e59d0038     	ldr	r0, [sp, #0x38]
  623fa4: e5801004     	str	r1, [r0, #0x4]
  623fa8: e5836008     	str	r6, [r3, #0x8]
  623fac: e5832004     	str	r2, [r3, #0x4]
  623fb0: e28dd014     	add	sp, sp, #20
  623fb4: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  623fb8: e1a02001     	mov	r2, r1
  623fbc: e4920004     	ldr	r0, [r2], #4
  623fc0: e59d3038     	ldr	r3, [sp, #0x38]
  623fc4: e4830004     	str	r0, [r3], #4
  623fc8: e5911004     	ldr	r1, [r1, #0x4]
  623fcc: e59d0038     	ldr	r0, [sp, #0x38]
  623fd0: e5801004     	str	r1, [r0, #0x4]
  623fd4: e5921004     	ldr	r1, [r2, #0x4]
  623fd8: e5831004     	str	r1, [r3, #0x4]
  623fdc: e5922008     	ldr	r2, [r2, #0x8]
  623fe0: e5832008     	str	r2, [r3, #0x8]
  623fe4: eafffff1     	b	0x623fb0 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE15getBlendedValueEPvPfiSD_+0xac> @ imm = #-0x3c
  623fe8: e1a02006     	mov	r2, r6
  623fec: e1a01006     	mov	r1, r6
  623ff0: e1a00006     	mov	r0, r6
  623ff4: eaffffe7     	b	0x623f98 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE15getBlendedValueEPvPfiSD_+0x94> @ imm = #-0x64

; FUNCTION 0x00623ff8 size=244 sha256=20d10affd0b2d6e3db1f519c94a22136db0f5c46f0478919e871dbed2a3341fc
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 1, float> > >::getBlendedValue(void*, float*, int, void*) const
00623ff8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE15getBlendedValueEPvPfiSD_>:
  623ff8: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  623ffc: e3530001     	cmp	r3, #1
  624000: e24dd014     	sub	sp, sp, #20
  624004: e1a04003     	mov	r4, r3
  624008: e1a0b002     	mov	r11, r2
  62400c: 0a000026     	beq	0x6240ac <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE15getBlendedValueEPvPfiSD_+0xb4> @ imm = #0x98
  624010: e3a06000     	mov	r6, #0
  624014: e3530000     	cmp	r3, #0
  624018: e58d6000     	str	r6, [sp]
  62401c: e58d6004     	str	r6, [sp, #0x4]
  624020: e58d6008     	str	r6, [sp, #0x8]
  624024: e58d600c     	str	r6, [sp, #0xc]
  624028: 11a08001     	movne	r8, r1
  62402c: 13a09000     	movne	r9, #0
  624030: 11a0700d     	movne	r7, sp
  624034: 0a000028     	beq	0x6240dc <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE15getBlendedValueEPvPfiSD_+0xe4> @ imm = #0xa0
  624038: e79ba109     	ldr	r10, [r11, r9, lsl #2]
  62403c: e3a05000     	mov	r5, #0
  624040: e7981005     	ldr	r1, [r8, r5]
  624044: e1a0000a     	mov	r0, r10
  624048: ebf3ab47     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3152e4
  62404c: e1a01006     	mov	r1, r6
  624050: ebf3aad3     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x3154b4
  624054: e7870005     	str	r0, [r7, r5]
  624058: e2855004     	add	r5, r5, #4
  62405c: e3550010     	cmp	r5, #16
  624060: 17976005     	ldrne	r6, [r7, r5]
  624064: 1afffff5     	bne	0x624040 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE15getBlendedValueEPvPfiSD_+0x48> @ imm = #-0x2c
  624068: e2899001     	add	r9, r9, #1
  62406c: e1590004     	cmp	r9, r4
  624070: e2888010     	add	r8, r8, #16
  624074: 159d6000     	ldrne	r6, [sp]
  624078: 1affffee     	bne	0x624038 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE15getBlendedValueEPvPfiSD_+0x40> @ imm = #-0x48
  62407c: e59d0000     	ldr	r0, [sp]
  624080: e59d1004     	ldr	r1, [sp, #0x4]
  624084: e59d2008     	ldr	r2, [sp, #0x8]
  624088: e59d600c     	ldr	r6, [sp, #0xc]
  62408c: e59d3038     	ldr	r3, [sp, #0x38]
  624090: e4830004     	str	r0, [r3], #4
  624094: e59d0038     	ldr	r0, [sp, #0x38]
  624098: e5801004     	str	r1, [r0, #0x4]
  62409c: e5836008     	str	r6, [r3, #0x8]
  6240a0: e5832004     	str	r2, [r3, #0x4]
  6240a4: e28dd014     	add	sp, sp, #20
  6240a8: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  6240ac: e1a02001     	mov	r2, r1
  6240b0: e4920004     	ldr	r0, [r2], #4
  6240b4: e59d3038     	ldr	r3, [sp, #0x38]
  6240b8: e4830004     	str	r0, [r3], #4
  6240bc: e5911004     	ldr	r1, [r1, #0x4]
  6240c0: e59d0038     	ldr	r0, [sp, #0x38]
  6240c4: e5801004     	str	r1, [r0, #0x4]
  6240c8: e5921004     	ldr	r1, [r2, #0x4]
  6240cc: e5831004     	str	r1, [r3, #0x4]
  6240d0: e5922008     	ldr	r2, [r2, #0x8]
  6240d4: e5832008     	str	r2, [r3, #0x8]
  6240d8: eafffff1     	b	0x6240a4 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE15getBlendedValueEPvPfiSD_+0xac> @ imm = #-0x3c
  6240dc: e1a02006     	mov	r2, r6
  6240e0: e1a01006     	mov	r1, r6
  6240e4: e1a00006     	mov	r0, r6
  6240e8: eaffffe7     	b	0x62408c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE15getBlendedValueEPvPfiSD_+0x94> @ imm = #-0x64

; FUNCTION 0x006240ec size=252 sha256=79cbc6bdeb1685c6d4bd363076698b59c43bded12d08824118fd6f624ced0314
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 3, float> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
006240ec <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  6240ec: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  6240f0: e3530001     	cmp	r3, #1
  6240f4: e24dd024     	sub	sp, sp, #36
  6240f8: e1a04003     	mov	r4, r3
  6240fc: e1a0b002     	mov	r11, r2
  624100: 0a00002a     	beq	0x6241b0 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0xc4> @ imm = #0xa8
  624104: e3a06000     	mov	r6, #0
  624108: e3530000     	cmp	r3, #0
  62410c: e58d6000     	str	r6, [sp]
  624110: e58d6004     	str	r6, [sp, #0x4]
  624114: e58d6008     	str	r6, [sp, #0x8]
  624118: e58d600c     	str	r6, [sp, #0xc]
  62411c: 11a08001     	movne	r8, r1
  624120: 13a09000     	movne	r9, #0
  624124: 11a0700d     	movne	r7, sp
  624128: 0a00002a     	beq	0x6241d8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0xec> @ imm = #0xa8
  62412c: e79ba109     	ldr	r10, [r11, r9, lsl #2]
  624130: e3a05000     	mov	r5, #0
  624134: e7981005     	ldr	r1, [r8, r5]
  624138: e1a0000a     	mov	r0, r10
  62413c: ebf3ab0a     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3153d8
  624140: e1a01006     	mov	r1, r6
  624144: ebf3aa96     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x3155a8
  624148: e7870005     	str	r0, [r7, r5]
  62414c: e2855004     	add	r5, r5, #4
  624150: e3550010     	cmp	r5, #16
  624154: 17976005     	ldrne	r6, [r7, r5]
  624158: 1afffff5     	bne	0x624134 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0x48> @ imm = #-0x2c
  62415c: e2899001     	add	r9, r9, #1
  624160: e1590004     	cmp	r9, r4
  624164: e2888010     	add	r8, r8, #16
  624168: 159d6000     	ldrne	r6, [sp]
  62416c: 1affffee     	bne	0x62412c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0x40> @ imm = #-0x48
  624170: e59d1000     	ldr	r1, [sp]
  624174: e59d2004     	ldr	r2, [sp, #0x4]
  624178: e59d3008     	ldr	r3, [sp, #0x8]
  62417c: e59d600c     	ldr	r6, [sp, #0xc]
  624180: e58d1010     	str	r1, [sp, #0x10]
  624184: e58d2014     	str	r2, [sp, #0x14]
  624188: e58d3018     	str	r3, [sp, #0x18]
  62418c: e58d601c     	str	r6, [sp, #0x1c]
  624190: e59d304c     	ldr	r3, [sp, #0x4c]
  624194: e59d0048     	ldr	r0, [sp, #0x48]
  624198: e3a02000     	mov	r2, #0
  62419c: e1d310b8     	ldrh	r1, [r3, #8]
  6241a0: e28d3010     	add	r3, sp, #16
  6241a4: ebfea96f     	bl	0x5ce768 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_> @ imm = #-0x55a44
  6241a8: e28dd024     	add	sp, sp, #36
  6241ac: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  6241b0: e1a03001     	mov	r3, r1
  6241b4: e4930004     	ldr	r0, [r3], #4
  6241b8: e5911004     	ldr	r1, [r1, #0x4]
  6241bc: e5932008     	ldr	r2, [r3, #0x8]
  6241c0: e5933004     	ldr	r3, [r3, #0x4]
  6241c4: e58d0010     	str	r0, [sp, #0x10]
  6241c8: e58d1014     	str	r1, [sp, #0x14]
  6241cc: e58d3018     	str	r3, [sp, #0x18]
  6241d0: e58d201c     	str	r2, [sp, #0x1c]
  6241d4: eaffffed     	b	0x624190 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0xa4> @ imm = #-0x4c
  6241d8: e1a03006     	mov	r3, r6
  6241dc: e1a02006     	mov	r2, r6
  6241e0: e1a01006     	mov	r1, r6
  6241e4: eaffffe5     	b	0x624180 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0x94> @ imm = #-0x6c

; FUNCTION 0x006241e8 size=252 sha256=67c45eb475d851e21ab698488f994196af922de18ed884bb3e93c50267f22f82
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, -1, float> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
006241e8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  6241e8: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  6241ec: e3530001     	cmp	r3, #1
  6241f0: e24dd024     	sub	sp, sp, #36
  6241f4: e1a04003     	mov	r4, r3
  6241f8: e1a0b002     	mov	r11, r2
  6241fc: 0a00002a     	beq	0x6242ac <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0xc4> @ imm = #0xa8
  624200: e3a06000     	mov	r6, #0
  624204: e3530000     	cmp	r3, #0
  624208: e58d6000     	str	r6, [sp]
  62420c: e58d6004     	str	r6, [sp, #0x4]
  624210: e58d6008     	str	r6, [sp, #0x8]
  624214: e58d600c     	str	r6, [sp, #0xc]
  624218: 11a08001     	movne	r8, r1
  62421c: 13a09000     	movne	r9, #0
  624220: 11a0700d     	movne	r7, sp
  624224: 0a00002a     	beq	0x6242d4 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0xec> @ imm = #0xa8
  624228: e79ba109     	ldr	r10, [r11, r9, lsl #2]
  62422c: e3a05000     	mov	r5, #0
  624230: e7981005     	ldr	r1, [r8, r5]
  624234: e1a0000a     	mov	r0, r10
  624238: ebf3aacb     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3154d4
  62423c: e1a01006     	mov	r1, r6
  624240: ebf3aa57     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x3156a4
  624244: e7870005     	str	r0, [r7, r5]
  624248: e2855004     	add	r5, r5, #4
  62424c: e3550010     	cmp	r5, #16
  624250: 17976005     	ldrne	r6, [r7, r5]
  624254: 1afffff5     	bne	0x624230 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0x48> @ imm = #-0x2c
  624258: e2899001     	add	r9, r9, #1
  62425c: e1590004     	cmp	r9, r4
  624260: e2888010     	add	r8, r8, #16
  624264: 159d6000     	ldrne	r6, [sp]
  624268: 1affffee     	bne	0x624228 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0x40> @ imm = #-0x48
  62426c: e59d1000     	ldr	r1, [sp]
  624270: e59d2004     	ldr	r2, [sp, #0x4]
  624274: e59d3008     	ldr	r3, [sp, #0x8]
  624278: e59d600c     	ldr	r6, [sp, #0xc]
  62427c: e58d1010     	str	r1, [sp, #0x10]
  624280: e58d2014     	str	r2, [sp, #0x14]
  624284: e58d3018     	str	r3, [sp, #0x18]
  624288: e58d601c     	str	r6, [sp, #0x1c]
  62428c: e59d304c     	ldr	r3, [sp, #0x4c]
  624290: e59d0048     	ldr	r0, [sp, #0x48]
  624294: e3a02000     	mov	r2, #0
  624298: e1d310b8     	ldrh	r1, [r3, #8]
  62429c: e28d3010     	add	r3, sp, #16
  6242a0: ebfea930     	bl	0x5ce768 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_> @ imm = #-0x55b40
  6242a4: e28dd024     	add	sp, sp, #36
  6242a8: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  6242ac: e1a03001     	mov	r3, r1
  6242b0: e4930004     	ldr	r0, [r3], #4
  6242b4: e5911004     	ldr	r1, [r1, #0x4]
  6242b8: e5932008     	ldr	r2, [r3, #0x8]
  6242bc: e5933004     	ldr	r3, [r3, #0x4]
  6242c0: e58d0010     	str	r0, [sp, #0x10]
  6242c4: e58d1014     	str	r1, [sp, #0x14]
  6242c8: e58d3018     	str	r3, [sp, #0x18]
  6242cc: e58d201c     	str	r2, [sp, #0x1c]
  6242d0: eaffffed     	b	0x62428c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0xa4> @ imm = #-0x4c
  6242d4: e1a03006     	mov	r3, r6
  6242d8: e1a02006     	mov	r2, r6
  6242dc: e1a01006     	mov	r1, r6
  6242e0: eaffffe5     	b	0x62427c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0x94> @ imm = #-0x6c

; FUNCTION 0x006242e4 size=252 sha256=30994c86a2e177e12ac13ad68357ccdc7a50fea3396157b3257ab3b0c9150d25
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 1, float> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
006242e4 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  6242e4: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  6242e8: e3530001     	cmp	r3, #1
  6242ec: e24dd024     	sub	sp, sp, #36
  6242f0: e1a04003     	mov	r4, r3
  6242f4: e1a0b002     	mov	r11, r2
  6242f8: 0a00002a     	beq	0x6243a8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0xc4> @ imm = #0xa8
  6242fc: e3a06000     	mov	r6, #0
  624300: e3530000     	cmp	r3, #0
  624304: e58d6000     	str	r6, [sp]
  624308: e58d6004     	str	r6, [sp, #0x4]
  62430c: e58d6008     	str	r6, [sp, #0x8]
  624310: e58d600c     	str	r6, [sp, #0xc]
  624314: 11a08001     	movne	r8, r1
  624318: 13a09000     	movne	r9, #0
  62431c: 11a0700d     	movne	r7, sp
  624320: 0a00002a     	beq	0x6243d0 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0xec> @ imm = #0xa8
  624324: e79ba109     	ldr	r10, [r11, r9, lsl #2]
  624328: e3a05000     	mov	r5, #0
  62432c: e7981005     	ldr	r1, [r8, r5]
  624330: e1a0000a     	mov	r0, r10
  624334: ebf3aa8c     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3155d0
  624338: e1a01006     	mov	r1, r6
  62433c: ebf3aa18     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x3157a0
  624340: e7870005     	str	r0, [r7, r5]
  624344: e2855004     	add	r5, r5, #4
  624348: e3550010     	cmp	r5, #16
  62434c: 17976005     	ldrne	r6, [r7, r5]
  624350: 1afffff5     	bne	0x62432c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0x48> @ imm = #-0x2c
  624354: e2899001     	add	r9, r9, #1
  624358: e1590004     	cmp	r9, r4
  62435c: e2888010     	add	r8, r8, #16
  624360: 159d6000     	ldrne	r6, [sp]
  624364: 1affffee     	bne	0x624324 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0x40> @ imm = #-0x48
  624368: e59d1000     	ldr	r1, [sp]
  62436c: e59d2004     	ldr	r2, [sp, #0x4]
  624370: e59d3008     	ldr	r3, [sp, #0x8]
  624374: e59d600c     	ldr	r6, [sp, #0xc]
  624378: e58d1010     	str	r1, [sp, #0x10]
  62437c: e58d2014     	str	r2, [sp, #0x14]
  624380: e58d3018     	str	r3, [sp, #0x18]
  624384: e58d601c     	str	r6, [sp, #0x1c]
  624388: e59d304c     	ldr	r3, [sp, #0x4c]
  62438c: e59d0048     	ldr	r0, [sp, #0x48]
  624390: e3a02000     	mov	r2, #0
  624394: e1d310b8     	ldrh	r1, [r3, #8]
  624398: e28d3010     	add	r3, sp, #16
  62439c: ebfea8f1     	bl	0x5ce768 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_> @ imm = #-0x55c3c
  6243a0: e28dd024     	add	sp, sp, #36
  6243a4: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  6243a8: e1a03001     	mov	r3, r1
  6243ac: e4930004     	ldr	r0, [r3], #4
  6243b0: e5911004     	ldr	r1, [r1, #0x4]
  6243b4: e5932008     	ldr	r2, [r3, #0x8]
  6243b8: e5933004     	ldr	r3, [r3, #0x4]
  6243bc: e58d0010     	str	r0, [sp, #0x10]
  6243c0: e58d1014     	str	r1, [sp, #0x14]
  6243c4: e58d3018     	str	r3, [sp, #0x18]
  6243c8: e58d201c     	str	r2, [sp, #0x1c]
  6243cc: eaffffed     	b	0x624388 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0xa4> @ imm = #-0x4c
  6243d0: e1a03006     	mov	r3, r6
  6243d4: e1a02006     	mov	r2, r6
  6243d8: e1a01006     	mov	r1, r6
  6243dc: eaffffe5     	b	0x624378 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0x94> @ imm = #-0x6c

; FUNCTION 0x006243e0 size=252 sha256=d984423801622be78dea4b67868bfa30722c0ceea32c45f8ab90b242864ea32f
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 2, float> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
006243e0 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  6243e0: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  6243e4: e3530001     	cmp	r3, #1
  6243e8: e24dd024     	sub	sp, sp, #36
  6243ec: e1a04003     	mov	r4, r3
  6243f0: e1a0b002     	mov	r11, r2
  6243f4: 0a00002a     	beq	0x6244a4 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0xc4> @ imm = #0xa8
  6243f8: e3a06000     	mov	r6, #0
  6243fc: e3530000     	cmp	r3, #0
  624400: e58d6000     	str	r6, [sp]
  624404: e58d6004     	str	r6, [sp, #0x4]
  624408: e58d6008     	str	r6, [sp, #0x8]
  62440c: e58d600c     	str	r6, [sp, #0xc]
  624410: 11a08001     	movne	r8, r1
  624414: 13a09000     	movne	r9, #0
  624418: 11a0700d     	movne	r7, sp
  62441c: 0a00002a     	beq	0x6244cc <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0xec> @ imm = #0xa8
  624420: e79ba109     	ldr	r10, [r11, r9, lsl #2]
  624424: e3a05000     	mov	r5, #0
  624428: e7981005     	ldr	r1, [r8, r5]
  62442c: e1a0000a     	mov	r0, r10
  624430: ebf3aa4d     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3156cc
  624434: e1a01006     	mov	r1, r6
  624438: ebf3a9d9     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31589c
  62443c: e7870005     	str	r0, [r7, r5]
  624440: e2855004     	add	r5, r5, #4
  624444: e3550010     	cmp	r5, #16
  624448: 17976005     	ldrne	r6, [r7, r5]
  62444c: 1afffff5     	bne	0x624428 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0x48> @ imm = #-0x2c
  624450: e2899001     	add	r9, r9, #1
  624454: e1590004     	cmp	r9, r4
  624458: e2888010     	add	r8, r8, #16
  62445c: 159d6000     	ldrne	r6, [sp]
  624460: 1affffee     	bne	0x624420 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0x40> @ imm = #-0x48
  624464: e59d1000     	ldr	r1, [sp]
  624468: e59d2004     	ldr	r2, [sp, #0x4]
  62446c: e59d3008     	ldr	r3, [sp, #0x8]
  624470: e59d600c     	ldr	r6, [sp, #0xc]
  624474: e58d1010     	str	r1, [sp, #0x10]
  624478: e58d2014     	str	r2, [sp, #0x14]
  62447c: e58d3018     	str	r3, [sp, #0x18]
  624480: e58d601c     	str	r6, [sp, #0x1c]
  624484: e59d304c     	ldr	r3, [sp, #0x4c]
  624488: e59d0048     	ldr	r0, [sp, #0x48]
  62448c: e3a02000     	mov	r2, #0
  624490: e1d310b8     	ldrh	r1, [r3, #8]
  624494: e28d3010     	add	r3, sp, #16
  624498: ebfea8b2     	bl	0x5ce768 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_> @ imm = #-0x55d38
  62449c: e28dd024     	add	sp, sp, #36
  6244a0: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  6244a4: e1a03001     	mov	r3, r1
  6244a8: e4930004     	ldr	r0, [r3], #4
  6244ac: e5911004     	ldr	r1, [r1, #0x4]
  6244b0: e5932008     	ldr	r2, [r3, #0x8]
  6244b4: e5933004     	ldr	r3, [r3, #0x4]
  6244b8: e58d0010     	str	r0, [sp, #0x10]
  6244bc: e58d1014     	str	r1, [sp, #0x14]
  6244c0: e58d3018     	str	r3, [sp, #0x18]
  6244c4: e58d201c     	str	r2, [sp, #0x1c]
  6244c8: eaffffed     	b	0x624484 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0xa4> @ imm = #-0x4c
  6244cc: e1a03006     	mov	r3, r6
  6244d0: e1a02006     	mov	r2, r6
  6244d4: e1a01006     	mov	r1, r6
  6244d8: eaffffe5     	b	0x624474 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0x94> @ imm = #-0x6c

; FUNCTION 0x006244dc size=252 sha256=4cd83042b839ed5f56a1b052b35b8d86cfa6f0c391cd61bbb38980b5b4e81cb5
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 2, float> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
006244dc <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  6244dc: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  6244e0: e3530001     	cmp	r3, #1
  6244e4: e24dd024     	sub	sp, sp, #36
  6244e8: e1a04003     	mov	r4, r3
  6244ec: e1a0b002     	mov	r11, r2
  6244f0: 0a00002a     	beq	0x6245a0 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0xc4> @ imm = #0xa8
  6244f4: e3a06000     	mov	r6, #0
  6244f8: e3530000     	cmp	r3, #0
  6244fc: e58d6000     	str	r6, [sp]
  624500: e58d6004     	str	r6, [sp, #0x4]
  624504: e58d6008     	str	r6, [sp, #0x8]
  624508: e58d600c     	str	r6, [sp, #0xc]
  62450c: 11a08001     	movne	r8, r1
  624510: 13a09000     	movne	r9, #0
  624514: 11a0700d     	movne	r7, sp
  624518: 0a00002a     	beq	0x6245c8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0xec> @ imm = #0xa8
  62451c: e79ba109     	ldr	r10, [r11, r9, lsl #2]
  624520: e3a05000     	mov	r5, #0
  624524: e7981005     	ldr	r1, [r8, r5]
  624528: e1a0000a     	mov	r0, r10
  62452c: ebf3aa0e     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3157c8
  624530: e1a01006     	mov	r1, r6
  624534: ebf3a99a     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x315998
  624538: e7870005     	str	r0, [r7, r5]
  62453c: e2855004     	add	r5, r5, #4
  624540: e3550010     	cmp	r5, #16
  624544: 17976005     	ldrne	r6, [r7, r5]
  624548: 1afffff5     	bne	0x624524 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0x48> @ imm = #-0x2c
  62454c: e2899001     	add	r9, r9, #1
  624550: e1590004     	cmp	r9, r4
  624554: e2888010     	add	r8, r8, #16
  624558: 159d6000     	ldrne	r6, [sp]
  62455c: 1affffee     	bne	0x62451c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0x40> @ imm = #-0x48
  624560: e59d1000     	ldr	r1, [sp]
  624564: e59d2004     	ldr	r2, [sp, #0x4]
  624568: e59d3008     	ldr	r3, [sp, #0x8]
  62456c: e59d600c     	ldr	r6, [sp, #0xc]
  624570: e58d1010     	str	r1, [sp, #0x10]
  624574: e58d2014     	str	r2, [sp, #0x14]
  624578: e58d3018     	str	r3, [sp, #0x18]
  62457c: e58d601c     	str	r6, [sp, #0x1c]
  624580: e59d304c     	ldr	r3, [sp, #0x4c]
  624584: e59d0048     	ldr	r0, [sp, #0x48]
  624588: e3a02000     	mov	r2, #0
  62458c: e1d310b8     	ldrh	r1, [r3, #8]
  624590: e28d3010     	add	r3, sp, #16
  624594: ebfea873     	bl	0x5ce768 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_> @ imm = #-0x55e34
  624598: e28dd024     	add	sp, sp, #36
  62459c: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  6245a0: e1a03001     	mov	r3, r1
  6245a4: e4930004     	ldr	r0, [r3], #4
  6245a8: e5911004     	ldr	r1, [r1, #0x4]
  6245ac: e5932008     	ldr	r2, [r3, #0x8]
  6245b0: e5933004     	ldr	r3, [r3, #0x4]
  6245b4: e58d0010     	str	r0, [sp, #0x10]
  6245b8: e58d1014     	str	r1, [sp, #0x14]
  6245bc: e58d3018     	str	r3, [sp, #0x18]
  6245c0: e58d201c     	str	r2, [sp, #0x1c]
  6245c4: eaffffed     	b	0x624580 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0xa4> @ imm = #-0x4c
  6245c8: e1a03006     	mov	r3, r6
  6245cc: e1a02006     	mov	r2, r6
  6245d0: e1a01006     	mov	r1, r6
  6245d4: eaffffe5     	b	0x624570 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0x94> @ imm = #-0x6c

; FUNCTION 0x006245d8 size=252 sha256=5defa057eb44f7e84791a702ac00a8e5b03879db86d7e23511e9c68138bcec4f
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 3, float> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
006245d8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  6245d8: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  6245dc: e3530001     	cmp	r3, #1
  6245e0: e24dd024     	sub	sp, sp, #36
  6245e4: e1a04003     	mov	r4, r3
  6245e8: e1a0b002     	mov	r11, r2
  6245ec: 0a00002a     	beq	0x62469c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0xc4> @ imm = #0xa8
  6245f0: e3a06000     	mov	r6, #0
  6245f4: e3530000     	cmp	r3, #0
  6245f8: e58d6000     	str	r6, [sp]
  6245fc: e58d6004     	str	r6, [sp, #0x4]
  624600: e58d6008     	str	r6, [sp, #0x8]
  624604: e58d600c     	str	r6, [sp, #0xc]
  624608: 11a08001     	movne	r8, r1
  62460c: 13a09000     	movne	r9, #0
  624610: 11a0700d     	movne	r7, sp
  624614: 0a00002a     	beq	0x6246c4 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0xec> @ imm = #0xa8
  624618: e79ba109     	ldr	r10, [r11, r9, lsl #2]
  62461c: e3a05000     	mov	r5, #0
  624620: e7981005     	ldr	r1, [r8, r5]
  624624: e1a0000a     	mov	r0, r10
  624628: ebf3a9cf     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3158c4
  62462c: e1a01006     	mov	r1, r6
  624630: ebf3a95b     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x315a94
  624634: e7870005     	str	r0, [r7, r5]
  624638: e2855004     	add	r5, r5, #4
  62463c: e3550010     	cmp	r5, #16
  624640: 17976005     	ldrne	r6, [r7, r5]
  624644: 1afffff5     	bne	0x624620 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0x48> @ imm = #-0x2c
  624648: e2899001     	add	r9, r9, #1
  62464c: e1590004     	cmp	r9, r4
  624650: e2888010     	add	r8, r8, #16
  624654: 159d6000     	ldrne	r6, [sp]
  624658: 1affffee     	bne	0x624618 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0x40> @ imm = #-0x48
  62465c: e59d1000     	ldr	r1, [sp]
  624660: e59d2004     	ldr	r2, [sp, #0x4]
  624664: e59d3008     	ldr	r3, [sp, #0x8]
  624668: e59d600c     	ldr	r6, [sp, #0xc]
  62466c: e58d1010     	str	r1, [sp, #0x10]
  624670: e58d2014     	str	r2, [sp, #0x14]
  624674: e58d3018     	str	r3, [sp, #0x18]
  624678: e58d601c     	str	r6, [sp, #0x1c]
  62467c: e59d304c     	ldr	r3, [sp, #0x4c]
  624680: e59d0048     	ldr	r0, [sp, #0x48]
  624684: e3a02000     	mov	r2, #0
  624688: e1d310b8     	ldrh	r1, [r3, #8]
  62468c: e28d3010     	add	r3, sp, #16
  624690: ebfea834     	bl	0x5ce768 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_> @ imm = #-0x55f30
  624694: e28dd024     	add	sp, sp, #36
  624698: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62469c: e1a03001     	mov	r3, r1
  6246a0: e4930004     	ldr	r0, [r3], #4
  6246a4: e5911004     	ldr	r1, [r1, #0x4]
  6246a8: e5932008     	ldr	r2, [r3, #0x8]
  6246ac: e5933004     	ldr	r3, [r3, #0x4]
  6246b0: e58d0010     	str	r0, [sp, #0x10]
  6246b4: e58d1014     	str	r1, [sp, #0x14]
  6246b8: e58d3018     	str	r3, [sp, #0x18]
  6246bc: e58d201c     	str	r2, [sp, #0x1c]
  6246c0: eaffffed     	b	0x62467c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0xa4> @ imm = #-0x4c
  6246c4: e1a03006     	mov	r3, r6
  6246c8: e1a02006     	mov	r2, r6
  6246cc: e1a01006     	mov	r1, r6
  6246d0: eaffffe5     	b	0x62466c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0x94> @ imm = #-0x6c

; FUNCTION 0x006246d4 size=244 sha256=2a564d68a66ff43b88606f04c4ee00784e56cded636575620337cac13c38af2e
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 2, float> > >::getBlendedValue(void*, float*, int, void*) const
006246d4 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEE15getBlendedValueEPvPfiSD_>:
  6246d4: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  6246d8: e3530001     	cmp	r3, #1
  6246dc: e24dd014     	sub	sp, sp, #20
  6246e0: e1a04003     	mov	r4, r3
  6246e4: e1a0b002     	mov	r11, r2
  6246e8: 0a000026     	beq	0x624788 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEE15getBlendedValueEPvPfiSD_+0xb4> @ imm = #0x98
  6246ec: e3a06000     	mov	r6, #0
  6246f0: e3530000     	cmp	r3, #0
  6246f4: e58d6000     	str	r6, [sp]
  6246f8: e58d6004     	str	r6, [sp, #0x4]
  6246fc: e58d6008     	str	r6, [sp, #0x8]
  624700: e58d600c     	str	r6, [sp, #0xc]
  624704: 11a08001     	movne	r8, r1
  624708: 13a09000     	movne	r9, #0
  62470c: 11a0700d     	movne	r7, sp
  624710: 0a000028     	beq	0x6247b8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEE15getBlendedValueEPvPfiSD_+0xe4> @ imm = #0xa0
  624714: e79ba109     	ldr	r10, [r11, r9, lsl #2]
  624718: e3a05000     	mov	r5, #0
  62471c: e7981005     	ldr	r1, [r8, r5]
  624720: e1a0000a     	mov	r0, r10
  624724: ebf3a990     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3159c0
  624728: e1a01006     	mov	r1, r6
  62472c: ebf3a91c     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x315b90
  624730: e7870005     	str	r0, [r7, r5]
  624734: e2855004     	add	r5, r5, #4
  624738: e3550010     	cmp	r5, #16
  62473c: 17976005     	ldrne	r6, [r7, r5]
  624740: 1afffff5     	bne	0x62471c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEE15getBlendedValueEPvPfiSD_+0x48> @ imm = #-0x2c
  624744: e2899001     	add	r9, r9, #1
  624748: e1590004     	cmp	r9, r4
  62474c: e2888010     	add	r8, r8, #16
  624750: 159d6000     	ldrne	r6, [sp]
  624754: 1affffee     	bne	0x624714 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEE15getBlendedValueEPvPfiSD_+0x40> @ imm = #-0x48
  624758: e59d0000     	ldr	r0, [sp]
  62475c: e59d1004     	ldr	r1, [sp, #0x4]
  624760: e59d2008     	ldr	r2, [sp, #0x8]
  624764: e59d600c     	ldr	r6, [sp, #0xc]
  624768: e59d3038     	ldr	r3, [sp, #0x38]
  62476c: e4830004     	str	r0, [r3], #4
  624770: e59d0038     	ldr	r0, [sp, #0x38]
  624774: e5801004     	str	r1, [r0, #0x4]
  624778: e5836008     	str	r6, [r3, #0x8]
  62477c: e5832004     	str	r2, [r3, #0x4]
  624780: e28dd014     	add	sp, sp, #20
  624784: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  624788: e1a02001     	mov	r2, r1
  62478c: e4920004     	ldr	r0, [r2], #4
  624790: e59d3038     	ldr	r3, [sp, #0x38]
  624794: e4830004     	str	r0, [r3], #4
  624798: e5911004     	ldr	r1, [r1, #0x4]
  62479c: e59d0038     	ldr	r0, [sp, #0x38]
  6247a0: e5801004     	str	r1, [r0, #0x4]
  6247a4: e5921004     	ldr	r1, [r2, #0x4]
  6247a8: e5831004     	str	r1, [r3, #0x4]
  6247ac: e5922008     	ldr	r2, [r2, #0x8]
  6247b0: e5832008     	str	r2, [r3, #0x8]
  6247b4: eafffff1     	b	0x624780 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEE15getBlendedValueEPvPfiSD_+0xac> @ imm = #-0x3c
  6247b8: e1a02006     	mov	r2, r6
  6247bc: e1a01006     	mov	r1, r6
  6247c0: e1a00006     	mov	r0, r6
  6247c4: eaffffe7     	b	0x624768 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEE15getBlendedValueEPvPfiSD_+0x94> @ imm = #-0x64

; FUNCTION 0x006247c8 size=244 sha256=e928a758ae3fa2758dc8ce4f39554ba0427ad38c78620ff4ad9c42abf49aebdc
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 3, float> > >::getBlendedValue(void*, float*, int, void*) const
006247c8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEE15getBlendedValueEPvPfiSD_>:
  6247c8: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  6247cc: e3530001     	cmp	r3, #1
  6247d0: e24dd014     	sub	sp, sp, #20
  6247d4: e1a04003     	mov	r4, r3
  6247d8: e1a0b002     	mov	r11, r2
  6247dc: 0a000026     	beq	0x62487c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEE15getBlendedValueEPvPfiSD_+0xb4> @ imm = #0x98
  6247e0: e3a06000     	mov	r6, #0
  6247e4: e3530000     	cmp	r3, #0
  6247e8: e58d6000     	str	r6, [sp]
  6247ec: e58d6004     	str	r6, [sp, #0x4]
  6247f0: e58d6008     	str	r6, [sp, #0x8]
  6247f4: e58d600c     	str	r6, [sp, #0xc]
  6247f8: 11a08001     	movne	r8, r1
  6247fc: 13a09000     	movne	r9, #0
  624800: 11a0700d     	movne	r7, sp
  624804: 0a000028     	beq	0x6248ac <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEE15getBlendedValueEPvPfiSD_+0xe4> @ imm = #0xa0
  624808: e79ba109     	ldr	r10, [r11, r9, lsl #2]
  62480c: e3a05000     	mov	r5, #0
  624810: e7981005     	ldr	r1, [r8, r5]
  624814: e1a0000a     	mov	r0, r10
  624818: ebf3a953     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x315ab4
  62481c: e1a01006     	mov	r1, r6
  624820: ebf3a8df     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x315c84
  624824: e7870005     	str	r0, [r7, r5]
  624828: e2855004     	add	r5, r5, #4
  62482c: e3550010     	cmp	r5, #16
  624830: 17976005     	ldrne	r6, [r7, r5]
  624834: 1afffff5     	bne	0x624810 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEE15getBlendedValueEPvPfiSD_+0x48> @ imm = #-0x2c
  624838: e2899001     	add	r9, r9, #1
  62483c: e1590004     	cmp	r9, r4
  624840: e2888010     	add	r8, r8, #16
  624844: 159d6000     	ldrne	r6, [sp]
  624848: 1affffee     	bne	0x624808 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEE15getBlendedValueEPvPfiSD_+0x40> @ imm = #-0x48
  62484c: e59d0000     	ldr	r0, [sp]
  624850: e59d1004     	ldr	r1, [sp, #0x4]
  624854: e59d2008     	ldr	r2, [sp, #0x8]
  624858: e59d600c     	ldr	r6, [sp, #0xc]
  62485c: e59d3038     	ldr	r3, [sp, #0x38]
  624860: e4830004     	str	r0, [r3], #4
  624864: e59d0038     	ldr	r0, [sp, #0x38]
  624868: e5801004     	str	r1, [r0, #0x4]
  62486c: e5836008     	str	r6, [r3, #0x8]
  624870: e5832004     	str	r2, [r3, #0x4]
  624874: e28dd014     	add	sp, sp, #20
  624878: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62487c: e1a02001     	mov	r2, r1
  624880: e4920004     	ldr	r0, [r2], #4
  624884: e59d3038     	ldr	r3, [sp, #0x38]
  624888: e4830004     	str	r0, [r3], #4
  62488c: e5911004     	ldr	r1, [r1, #0x4]
  624890: e59d0038     	ldr	r0, [sp, #0x38]
  624894: e5801004     	str	r1, [r0, #0x4]
  624898: e5921004     	ldr	r1, [r2, #0x4]
  62489c: e5831004     	str	r1, [r3, #0x4]
  6248a0: e5922008     	ldr	r2, [r2, #0x8]
  6248a4: e5832008     	str	r2, [r3, #0x8]
  6248a8: eafffff1     	b	0x624874 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEE15getBlendedValueEPvPfiSD_+0xac> @ imm = #-0x3c
  6248ac: e1a02006     	mov	r2, r6
  6248b0: e1a01006     	mov	r1, r6
  6248b4: e1a00006     	mov	r0, r6
  6248b8: eaffffe7     	b	0x62485c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEE15getBlendedValueEPvPfiSD_+0x94> @ imm = #-0x64

; FUNCTION 0x006248bc size=244 sha256=ec5d1833b5ad6a4ffbe70074727c91dd7df6f5b80469bb2e1b4d558851ead6e7
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, -1, float> > >::getBlendedValue(void*, float*, int, void*) const
006248bc <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE15getBlendedValueEPvPfiSD_>:
  6248bc: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  6248c0: e3530001     	cmp	r3, #1
  6248c4: e24dd014     	sub	sp, sp, #20
  6248c8: e1a04003     	mov	r4, r3
  6248cc: e1a0b002     	mov	r11, r2
  6248d0: 0a000026     	beq	0x624970 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE15getBlendedValueEPvPfiSD_+0xb4> @ imm = #0x98
  6248d4: e3a06000     	mov	r6, #0
  6248d8: e3530000     	cmp	r3, #0
  6248dc: e58d6000     	str	r6, [sp]
  6248e0: e58d6004     	str	r6, [sp, #0x4]
  6248e4: e58d6008     	str	r6, [sp, #0x8]
  6248e8: e58d600c     	str	r6, [sp, #0xc]
  6248ec: 11a08001     	movne	r8, r1
  6248f0: 13a09000     	movne	r9, #0
  6248f4: 11a0700d     	movne	r7, sp
  6248f8: 0a000028     	beq	0x6249a0 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE15getBlendedValueEPvPfiSD_+0xe4> @ imm = #0xa0
  6248fc: e79ba109     	ldr	r10, [r11, r9, lsl #2]
  624900: e3a05000     	mov	r5, #0
  624904: e7981005     	ldr	r1, [r8, r5]
  624908: e1a0000a     	mov	r0, r10
  62490c: ebf3a916     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x315ba8
  624910: e1a01006     	mov	r1, r6
  624914: ebf3a8a2     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x315d78
  624918: e7870005     	str	r0, [r7, r5]
  62491c: e2855004     	add	r5, r5, #4
  624920: e3550010     	cmp	r5, #16
  624924: 17976005     	ldrne	r6, [r7, r5]
  624928: 1afffff5     	bne	0x624904 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE15getBlendedValueEPvPfiSD_+0x48> @ imm = #-0x2c
  62492c: e2899001     	add	r9, r9, #1
  624930: e1590004     	cmp	r9, r4
  624934: e2888010     	add	r8, r8, #16
  624938: 159d6000     	ldrne	r6, [sp]
  62493c: 1affffee     	bne	0x6248fc <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE15getBlendedValueEPvPfiSD_+0x40> @ imm = #-0x48
  624940: e59d0000     	ldr	r0, [sp]
  624944: e59d1004     	ldr	r1, [sp, #0x4]
  624948: e59d2008     	ldr	r2, [sp, #0x8]
  62494c: e59d600c     	ldr	r6, [sp, #0xc]
  624950: e59d3038     	ldr	r3, [sp, #0x38]
  624954: e4830004     	str	r0, [r3], #4
  624958: e59d0038     	ldr	r0, [sp, #0x38]
  62495c: e5801004     	str	r1, [r0, #0x4]
  624960: e5836008     	str	r6, [r3, #0x8]
  624964: e5832004     	str	r2, [r3, #0x4]
  624968: e28dd014     	add	sp, sp, #20
  62496c: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  624970: e1a02001     	mov	r2, r1
  624974: e4920004     	ldr	r0, [r2], #4
  624978: e59d3038     	ldr	r3, [sp, #0x38]
  62497c: e4830004     	str	r0, [r3], #4
  624980: e5911004     	ldr	r1, [r1, #0x4]
  624984: e59d0038     	ldr	r0, [sp, #0x38]
  624988: e5801004     	str	r1, [r0, #0x4]
  62498c: e5921004     	ldr	r1, [r2, #0x4]
  624990: e5831004     	str	r1, [r3, #0x4]
  624994: e5922008     	ldr	r2, [r2, #0x8]
  624998: e5832008     	str	r2, [r3, #0x8]
  62499c: eafffff1     	b	0x624968 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE15getBlendedValueEPvPfiSD_+0xac> @ imm = #-0x3c
  6249a0: e1a02006     	mov	r2, r6
  6249a4: e1a01006     	mov	r1, r6
  6249a8: e1a00006     	mov	r0, r6
  6249ac: eaffffe7     	b	0x624950 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE15getBlendedValueEPvPfiSD_+0x94> @ imm = #-0x64

; FUNCTION 0x006249b0 size=244 sha256=e1170fe454410eb4a4892c9bf9d99b632a1950981025093ece5859e6e3eeee8b
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 0, float> > >::getAddedValue(void*, float*, int, void*) const
006249b0 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE13getAddedValueEPvPfiSD_>:
  6249b0: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  6249b4: e3530001     	cmp	r3, #1
  6249b8: e24dd014     	sub	sp, sp, #20
  6249bc: e1a04003     	mov	r4, r3
  6249c0: e1a0b002     	mov	r11, r2
  6249c4: 0a000026     	beq	0x624a64 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE13getAddedValueEPvPfiSD_+0xb4> @ imm = #0x98
  6249c8: e3a06000     	mov	r6, #0
  6249cc: e3530000     	cmp	r3, #0
  6249d0: e58d6000     	str	r6, [sp]
  6249d4: e58d6004     	str	r6, [sp, #0x4]
  6249d8: e58d6008     	str	r6, [sp, #0x8]
  6249dc: e58d600c     	str	r6, [sp, #0xc]
  6249e0: 11a08001     	movne	r8, r1
  6249e4: 13a09000     	movne	r9, #0
  6249e8: 11a0700d     	movne	r7, sp
  6249ec: 0a000028     	beq	0x624a94 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE13getAddedValueEPvPfiSD_+0xe4> @ imm = #0xa0
  6249f0: e79ba109     	ldr	r10, [r11, r9, lsl #2]
  6249f4: e3a05000     	mov	r5, #0
  6249f8: e7981005     	ldr	r1, [r8, r5]
  6249fc: e1a0000a     	mov	r0, r10
  624a00: ebf3a8d9     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x315c9c
  624a04: e1a01006     	mov	r1, r6
  624a08: ebf3a865     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x315e6c
  624a0c: e7870005     	str	r0, [r7, r5]
  624a10: e2855004     	add	r5, r5, #4
  624a14: e3550010     	cmp	r5, #16
  624a18: 17976005     	ldrne	r6, [r7, r5]
  624a1c: 1afffff5     	bne	0x6249f8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE13getAddedValueEPvPfiSD_+0x48> @ imm = #-0x2c
  624a20: e2899001     	add	r9, r9, #1
  624a24: e1590004     	cmp	r9, r4
  624a28: e2888010     	add	r8, r8, #16
  624a2c: 159d6000     	ldrne	r6, [sp]
  624a30: 1affffee     	bne	0x6249f0 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE13getAddedValueEPvPfiSD_+0x40> @ imm = #-0x48
  624a34: e59d0000     	ldr	r0, [sp]
  624a38: e59d1004     	ldr	r1, [sp, #0x4]
  624a3c: e59d2008     	ldr	r2, [sp, #0x8]
  624a40: e59d600c     	ldr	r6, [sp, #0xc]
  624a44: e59d3038     	ldr	r3, [sp, #0x38]
  624a48: e4830004     	str	r0, [r3], #4
  624a4c: e59d0038     	ldr	r0, [sp, #0x38]
  624a50: e5801004     	str	r1, [r0, #0x4]
  624a54: e5836008     	str	r6, [r3, #0x8]
  624a58: e5832004     	str	r2, [r3, #0x4]
  624a5c: e28dd014     	add	sp, sp, #20
  624a60: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  624a64: e1a02001     	mov	r2, r1
  624a68: e4920004     	ldr	r0, [r2], #4
  624a6c: e59d3038     	ldr	r3, [sp, #0x38]
  624a70: e4830004     	str	r0, [r3], #4
  624a74: e5911004     	ldr	r1, [r1, #0x4]
  624a78: e59d0038     	ldr	r0, [sp, #0x38]
  624a7c: e5801004     	str	r1, [r0, #0x4]
  624a80: e5921004     	ldr	r1, [r2, #0x4]
  624a84: e5831004     	str	r1, [r3, #0x4]
  624a88: e5922008     	ldr	r2, [r2, #0x8]
  624a8c: e5832008     	str	r2, [r3, #0x8]
  624a90: eafffff1     	b	0x624a5c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE13getAddedValueEPvPfiSD_+0xac> @ imm = #-0x3c
  624a94: e1a02006     	mov	r2, r6
  624a98: e1a01006     	mov	r1, r6
  624a9c: e1a00006     	mov	r0, r6
  624aa0: eaffffe7     	b	0x624a44 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE13getAddedValueEPvPfiSD_+0x94> @ imm = #-0x64

; FUNCTION 0x00624aa4 size=244 sha256=4096b941475c9d3ba7f13f7f3061bbd9e62c1db3e72420e25290930aef38730c
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 1, float> > >::getAddedValue(void*, float*, int, void*) const
00624aa4 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE13getAddedValueEPvPfiSD_>:
  624aa4: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  624aa8: e3530001     	cmp	r3, #1
  624aac: e24dd014     	sub	sp, sp, #20
  624ab0: e1a04003     	mov	r4, r3
  624ab4: e1a0b002     	mov	r11, r2
  624ab8: 0a000026     	beq	0x624b58 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE13getAddedValueEPvPfiSD_+0xb4> @ imm = #0x98
  624abc: e3a06000     	mov	r6, #0
  624ac0: e3530000     	cmp	r3, #0
  624ac4: e58d6000     	str	r6, [sp]
  624ac8: e58d6004     	str	r6, [sp, #0x4]
  624acc: e58d6008     	str	r6, [sp, #0x8]
  624ad0: e58d600c     	str	r6, [sp, #0xc]
  624ad4: 11a08001     	movne	r8, r1
  624ad8: 13a09000     	movne	r9, #0
  624adc: 11a0700d     	movne	r7, sp
  624ae0: 0a000028     	beq	0x624b88 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE13getAddedValueEPvPfiSD_+0xe4> @ imm = #0xa0
  624ae4: e79ba109     	ldr	r10, [r11, r9, lsl #2]
  624ae8: e3a05000     	mov	r5, #0
  624aec: e7981005     	ldr	r1, [r8, r5]
  624af0: e1a0000a     	mov	r0, r10
  624af4: ebf3a89c     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x315d90
  624af8: e1a01006     	mov	r1, r6
  624afc: ebf3a828     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x315f60
  624b00: e7870005     	str	r0, [r7, r5]
  624b04: e2855004     	add	r5, r5, #4
  624b08: e3550010     	cmp	r5, #16
  624b0c: 17976005     	ldrne	r6, [r7, r5]
  624b10: 1afffff5     	bne	0x624aec <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE13getAddedValueEPvPfiSD_+0x48> @ imm = #-0x2c
  624b14: e2899001     	add	r9, r9, #1
  624b18: e1590004     	cmp	r9, r4
  624b1c: e2888010     	add	r8, r8, #16
  624b20: 159d6000     	ldrne	r6, [sp]
  624b24: 1affffee     	bne	0x624ae4 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE13getAddedValueEPvPfiSD_+0x40> @ imm = #-0x48
  624b28: e59d0000     	ldr	r0, [sp]
  624b2c: e59d1004     	ldr	r1, [sp, #0x4]
  624b30: e59d2008     	ldr	r2, [sp, #0x8]
  624b34: e59d600c     	ldr	r6, [sp, #0xc]
  624b38: e59d3038     	ldr	r3, [sp, #0x38]
  624b3c: e4830004     	str	r0, [r3], #4
  624b40: e59d0038     	ldr	r0, [sp, #0x38]
  624b44: e5801004     	str	r1, [r0, #0x4]
  624b48: e5836008     	str	r6, [r3, #0x8]
  624b4c: e5832004     	str	r2, [r3, #0x4]
  624b50: e28dd014     	add	sp, sp, #20
  624b54: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  624b58: e1a02001     	mov	r2, r1
  624b5c: e4920004     	ldr	r0, [r2], #4
  624b60: e59d3038     	ldr	r3, [sp, #0x38]
  624b64: e4830004     	str	r0, [r3], #4
  624b68: e5911004     	ldr	r1, [r1, #0x4]
  624b6c: e59d0038     	ldr	r0, [sp, #0x38]
  624b70: e5801004     	str	r1, [r0, #0x4]
  624b74: e5921004     	ldr	r1, [r2, #0x4]
  624b78: e5831004     	str	r1, [r3, #0x4]
  624b7c: e5922008     	ldr	r2, [r2, #0x8]
  624b80: e5832008     	str	r2, [r3, #0x8]
  624b84: eafffff1     	b	0x624b50 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE13getAddedValueEPvPfiSD_+0xac> @ imm = #-0x3c
  624b88: e1a02006     	mov	r2, r6
  624b8c: e1a01006     	mov	r1, r6
  624b90: e1a00006     	mov	r0, r6
  624b94: eaffffe7     	b	0x624b38 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE13getAddedValueEPvPfiSD_+0x94> @ imm = #-0x64

; FUNCTION 0x00624b98 size=244 sha256=d282010f90a13ac53c9359a263c098865258239d953cddbf3bda77f7b0764776
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 2, float> > >::getAddedValue(void*, float*, int, void*) const
00624b98 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEE13getAddedValueEPvPfiSD_>:
  624b98: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  624b9c: e3530001     	cmp	r3, #1
  624ba0: e24dd014     	sub	sp, sp, #20
  624ba4: e1a04003     	mov	r4, r3
  624ba8: e1a0b002     	mov	r11, r2
  624bac: 0a000026     	beq	0x624c4c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEE13getAddedValueEPvPfiSD_+0xb4> @ imm = #0x98
  624bb0: e3a06000     	mov	r6, #0
  624bb4: e3530000     	cmp	r3, #0
  624bb8: e58d6000     	str	r6, [sp]
  624bbc: e58d6004     	str	r6, [sp, #0x4]
  624bc0: e58d6008     	str	r6, [sp, #0x8]
  624bc4: e58d600c     	str	r6, [sp, #0xc]
  624bc8: 11a08001     	movne	r8, r1
  624bcc: 13a09000     	movne	r9, #0
  624bd0: 11a0700d     	movne	r7, sp
  624bd4: 0a000028     	beq	0x624c7c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEE13getAddedValueEPvPfiSD_+0xe4> @ imm = #0xa0
  624bd8: e79ba109     	ldr	r10, [r11, r9, lsl #2]
  624bdc: e3a05000     	mov	r5, #0
  624be0: e7981005     	ldr	r1, [r8, r5]
  624be4: e1a0000a     	mov	r0, r10
  624be8: ebf3a85f     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x315e84
  624bec: e1a01006     	mov	r1, r6
  624bf0: ebf3a7eb     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x316054
  624bf4: e7870005     	str	r0, [r7, r5]
  624bf8: e2855004     	add	r5, r5, #4
  624bfc: e3550010     	cmp	r5, #16
  624c00: 17976005     	ldrne	r6, [r7, r5]
  624c04: 1afffff5     	bne	0x624be0 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEE13getAddedValueEPvPfiSD_+0x48> @ imm = #-0x2c
  624c08: e2899001     	add	r9, r9, #1
  624c0c: e1590004     	cmp	r9, r4
  624c10: e2888010     	add	r8, r8, #16
  624c14: 159d6000     	ldrne	r6, [sp]
  624c18: 1affffee     	bne	0x624bd8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEE13getAddedValueEPvPfiSD_+0x40> @ imm = #-0x48
  624c1c: e59d0000     	ldr	r0, [sp]
  624c20: e59d1004     	ldr	r1, [sp, #0x4]
  624c24: e59d2008     	ldr	r2, [sp, #0x8]
  624c28: e59d600c     	ldr	r6, [sp, #0xc]
  624c2c: e59d3038     	ldr	r3, [sp, #0x38]
  624c30: e4830004     	str	r0, [r3], #4
  624c34: e59d0038     	ldr	r0, [sp, #0x38]
  624c38: e5801004     	str	r1, [r0, #0x4]
  624c3c: e5836008     	str	r6, [r3, #0x8]
  624c40: e5832004     	str	r2, [r3, #0x4]
  624c44: e28dd014     	add	sp, sp, #20
  624c48: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  624c4c: e1a02001     	mov	r2, r1
  624c50: e4920004     	ldr	r0, [r2], #4
  624c54: e59d3038     	ldr	r3, [sp, #0x38]
  624c58: e4830004     	str	r0, [r3], #4
  624c5c: e5911004     	ldr	r1, [r1, #0x4]
  624c60: e59d0038     	ldr	r0, [sp, #0x38]
  624c64: e5801004     	str	r1, [r0, #0x4]
  624c68: e5921004     	ldr	r1, [r2, #0x4]
  624c6c: e5831004     	str	r1, [r3, #0x4]
  624c70: e5922008     	ldr	r2, [r2, #0x8]
  624c74: e5832008     	str	r2, [r3, #0x8]
  624c78: eafffff1     	b	0x624c44 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEE13getAddedValueEPvPfiSD_+0xac> @ imm = #-0x3c
  624c7c: e1a02006     	mov	r2, r6
  624c80: e1a01006     	mov	r1, r6
  624c84: e1a00006     	mov	r0, r6
  624c88: eaffffe7     	b	0x624c2c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi2EfEEEEE13getAddedValueEPvPfiSD_+0x94> @ imm = #-0x64

; FUNCTION 0x00624c8c size=244 sha256=2f4025d65ce530d1746afa7a03019613d2384a742f69d341b12128a5e538f680
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 3, float> > >::getAddedValue(void*, float*, int, void*) const
00624c8c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEE13getAddedValueEPvPfiSD_>:
  624c8c: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  624c90: e3530001     	cmp	r3, #1
  624c94: e24dd014     	sub	sp, sp, #20
  624c98: e1a04003     	mov	r4, r3
  624c9c: e1a0b002     	mov	r11, r2
  624ca0: 0a000026     	beq	0x624d40 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEE13getAddedValueEPvPfiSD_+0xb4> @ imm = #0x98
  624ca4: e3a06000     	mov	r6, #0
  624ca8: e3530000     	cmp	r3, #0
  624cac: e58d6000     	str	r6, [sp]
  624cb0: e58d6004     	str	r6, [sp, #0x4]
  624cb4: e58d6008     	str	r6, [sp, #0x8]
  624cb8: e58d600c     	str	r6, [sp, #0xc]
  624cbc: 11a08001     	movne	r8, r1
  624cc0: 13a09000     	movne	r9, #0
  624cc4: 11a0700d     	movne	r7, sp
  624cc8: 0a000028     	beq	0x624d70 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEE13getAddedValueEPvPfiSD_+0xe4> @ imm = #0xa0
  624ccc: e79ba109     	ldr	r10, [r11, r9, lsl #2]
  624cd0: e3a05000     	mov	r5, #0
  624cd4: e7981005     	ldr	r1, [r8, r5]
  624cd8: e1a0000a     	mov	r0, r10
  624cdc: ebf3a822     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x315f78
  624ce0: e1a01006     	mov	r1, r6
  624ce4: ebf3a7ae     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x316148
  624ce8: e7870005     	str	r0, [r7, r5]
  624cec: e2855004     	add	r5, r5, #4
  624cf0: e3550010     	cmp	r5, #16
  624cf4: 17976005     	ldrne	r6, [r7, r5]
  624cf8: 1afffff5     	bne	0x624cd4 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEE13getAddedValueEPvPfiSD_+0x48> @ imm = #-0x2c
  624cfc: e2899001     	add	r9, r9, #1
  624d00: e1590004     	cmp	r9, r4
  624d04: e2888010     	add	r8, r8, #16
  624d08: 159d6000     	ldrne	r6, [sp]
  624d0c: 1affffee     	bne	0x624ccc <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEE13getAddedValueEPvPfiSD_+0x40> @ imm = #-0x48
  624d10: e59d0000     	ldr	r0, [sp]
  624d14: e59d1004     	ldr	r1, [sp, #0x4]
  624d18: e59d2008     	ldr	r2, [sp, #0x8]
  624d1c: e59d600c     	ldr	r6, [sp, #0xc]
  624d20: e59d3038     	ldr	r3, [sp, #0x38]
  624d24: e4830004     	str	r0, [r3], #4
  624d28: e59d0038     	ldr	r0, [sp, #0x38]
  624d2c: e5801004     	str	r1, [r0, #0x4]
  624d30: e5836008     	str	r6, [r3, #0x8]
  624d34: e5832004     	str	r2, [r3, #0x4]
  624d38: e28dd014     	add	sp, sp, #20
  624d3c: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  624d40: e1a02001     	mov	r2, r1
  624d44: e4920004     	ldr	r0, [r2], #4
  624d48: e59d3038     	ldr	r3, [sp, #0x38]
  624d4c: e4830004     	str	r0, [r3], #4
  624d50: e5911004     	ldr	r1, [r1, #0x4]
  624d54: e59d0038     	ldr	r0, [sp, #0x38]
  624d58: e5801004     	str	r1, [r0, #0x4]
  624d5c: e5921004     	ldr	r1, [r2, #0x4]
  624d60: e5831004     	str	r1, [r3, #0x4]
  624d64: e5922008     	ldr	r2, [r2, #0x8]
  624d68: e5832008     	str	r2, [r3, #0x8]
  624d6c: eafffff1     	b	0x624d38 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEE13getAddedValueEPvPfiSD_+0xac> @ imm = #-0x3c
  624d70: e1a02006     	mov	r2, r6
  624d74: e1a01006     	mov	r1, r6
  624d78: e1a00006     	mov	r0, r6
  624d7c: eaffffe7     	b	0x624d20 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi3EfEEEEE13getAddedValueEPvPfiSD_+0x94> @ imm = #-0x64

; FUNCTION 0x00624d80 size=244 sha256=6a9e665dea158247e2606dc55c71f2f3bbb4dc5c3bda322c7728cd994af58c71
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, -1, float> > >::getAddedValue(void*, float*, int, void*) const
00624d80 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE13getAddedValueEPvPfiSD_>:
  624d80: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  624d84: e3530001     	cmp	r3, #1
  624d88: e24dd014     	sub	sp, sp, #20
  624d8c: e1a04003     	mov	r4, r3
  624d90: e1a0b002     	mov	r11, r2
  624d94: 0a000026     	beq	0x624e34 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE13getAddedValueEPvPfiSD_+0xb4> @ imm = #0x98
  624d98: e3a06000     	mov	r6, #0
  624d9c: e3530000     	cmp	r3, #0
  624da0: e58d6000     	str	r6, [sp]
  624da4: e58d6004     	str	r6, [sp, #0x4]
  624da8: e58d6008     	str	r6, [sp, #0x8]
  624dac: e58d600c     	str	r6, [sp, #0xc]
  624db0: 11a08001     	movne	r8, r1
  624db4: 13a09000     	movne	r9, #0
  624db8: 11a0700d     	movne	r7, sp
  624dbc: 0a000028     	beq	0x624e64 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE13getAddedValueEPvPfiSD_+0xe4> @ imm = #0xa0
  624dc0: e79ba109     	ldr	r10, [r11, r9, lsl #2]
  624dc4: e3a05000     	mov	r5, #0
  624dc8: e7981005     	ldr	r1, [r8, r5]
  624dcc: e1a0000a     	mov	r0, r10
  624dd0: ebf3a7e5     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31606c
  624dd4: e1a01006     	mov	r1, r6
  624dd8: ebf3a771     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31623c
  624ddc: e7870005     	str	r0, [r7, r5]
  624de0: e2855004     	add	r5, r5, #4
  624de4: e3550010     	cmp	r5, #16
  624de8: 17976005     	ldrne	r6, [r7, r5]
  624dec: 1afffff5     	bne	0x624dc8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE13getAddedValueEPvPfiSD_+0x48> @ imm = #-0x2c
  624df0: e2899001     	add	r9, r9, #1
  624df4: e1590004     	cmp	r9, r4
  624df8: e2888010     	add	r8, r8, #16
  624dfc: 159d6000     	ldrne	r6, [sp]
  624e00: 1affffee     	bne	0x624dc0 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE13getAddedValueEPvPfiSD_+0x40> @ imm = #-0x48
  624e04: e59d0000     	ldr	r0, [sp]
  624e08: e59d1004     	ldr	r1, [sp, #0x4]
  624e0c: e59d2008     	ldr	r2, [sp, #0x8]
  624e10: e59d600c     	ldr	r6, [sp, #0xc]
  624e14: e59d3038     	ldr	r3, [sp, #0x38]
  624e18: e4830004     	str	r0, [r3], #4
  624e1c: e59d0038     	ldr	r0, [sp, #0x38]
  624e20: e5801004     	str	r1, [r0, #0x4]
  624e24: e5836008     	str	r6, [r3, #0x8]
  624e28: e5832004     	str	r2, [r3, #0x4]
  624e2c: e28dd014     	add	sp, sp, #20
  624e30: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  624e34: e1a02001     	mov	r2, r1
  624e38: e4920004     	ldr	r0, [r2], #4
  624e3c: e59d3038     	ldr	r3, [sp, #0x38]
  624e40: e4830004     	str	r0, [r3], #4
  624e44: e5911004     	ldr	r1, [r1, #0x4]
  624e48: e59d0038     	ldr	r0, [sp, #0x38]
  624e4c: e5801004     	str	r1, [r0, #0x4]
  624e50: e5921004     	ldr	r1, [r2, #0x4]
  624e54: e5831004     	str	r1, [r3, #0x4]
  624e58: e5922008     	ldr	r2, [r2, #0x8]
  624e5c: e5832008     	str	r2, [r3, #0x8]
  624e60: eafffff1     	b	0x624e2c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE13getAddedValueEPvPfiSD_+0xac> @ imm = #-0x3c
  624e64: e1a02006     	mov	r2, r6
  624e68: e1a01006     	mov	r1, r6
  624e6c: e1a00006     	mov	r0, r6
  624e70: eaffffe7     	b	0x624e14 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE13getAddedValueEPvPfiSD_+0x94> @ imm = #-0x64

; FUNCTION 0x00624fb4 size=252 sha256=04801308946cd5854b41fe25c183d5a80fc5c21190b5084b8c9d23a5240be4ff
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 0, float> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
00624fb4 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  624fb4: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  624fb8: e3530001     	cmp	r3, #1
  624fbc: e24dd024     	sub	sp, sp, #36
  624fc0: e1a04003     	mov	r4, r3
  624fc4: e1a0b002     	mov	r11, r2
  624fc8: 0a00002a     	beq	0x625078 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0xc4> @ imm = #0xa8
  624fcc: e3a06000     	mov	r6, #0
  624fd0: e3530000     	cmp	r3, #0
  624fd4: e58d6000     	str	r6, [sp]
  624fd8: e58d6004     	str	r6, [sp, #0x4]
  624fdc: e58d6008     	str	r6, [sp, #0x8]
  624fe0: e58d600c     	str	r6, [sp, #0xc]
  624fe4: 11a08001     	movne	r8, r1
  624fe8: 13a09000     	movne	r9, #0
  624fec: 11a0700d     	movne	r7, sp
  624ff0: 0a00002a     	beq	0x6250a0 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0xec> @ imm = #0xa8
  624ff4: e79ba109     	ldr	r10, [r11, r9, lsl #2]
  624ff8: e3a05000     	mov	r5, #0
  624ffc: e7981005     	ldr	r1, [r8, r5]
  625000: e1a0000a     	mov	r0, r10
  625004: ebf3a758     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3162a0
  625008: e1a01006     	mov	r1, r6
  62500c: ebf3a6e4     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x316470
  625010: e7870005     	str	r0, [r7, r5]
  625014: e2855004     	add	r5, r5, #4
  625018: e3550010     	cmp	r5, #16
  62501c: 17976005     	ldrne	r6, [r7, r5]
  625020: 1afffff5     	bne	0x624ffc <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0x48> @ imm = #-0x2c
  625024: e2899001     	add	r9, r9, #1
  625028: e1590004     	cmp	r9, r4
  62502c: e2888010     	add	r8, r8, #16
  625030: 159d6000     	ldrne	r6, [sp]
  625034: 1affffee     	bne	0x624ff4 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0x40> @ imm = #-0x48
  625038: e59d1000     	ldr	r1, [sp]
  62503c: e59d2004     	ldr	r2, [sp, #0x4]
  625040: e59d3008     	ldr	r3, [sp, #0x8]
  625044: e59d600c     	ldr	r6, [sp, #0xc]
  625048: e58d1010     	str	r1, [sp, #0x10]
  62504c: e58d2014     	str	r2, [sp, #0x14]
  625050: e58d3018     	str	r3, [sp, #0x18]
  625054: e58d601c     	str	r6, [sp, #0x1c]
  625058: e59d304c     	ldr	r3, [sp, #0x4c]
  62505c: e59d0048     	ldr	r0, [sp, #0x48]
  625060: e3a02000     	mov	r2, #0
  625064: e1d310b8     	ldrh	r1, [r3, #8]
  625068: e28d3010     	add	r3, sp, #16
  62506c: ebfea5bd     	bl	0x5ce768 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_> @ imm = #-0x5690c
  625070: e28dd024     	add	sp, sp, #36
  625074: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  625078: e1a03001     	mov	r3, r1
  62507c: e4930004     	ldr	r0, [r3], #4
  625080: e5911004     	ldr	r1, [r1, #0x4]
  625084: e5932008     	ldr	r2, [r3, #0x8]
  625088: e5933004     	ldr	r3, [r3, #0x4]
  62508c: e58d0010     	str	r0, [sp, #0x10]
  625090: e58d1014     	str	r1, [sp, #0x14]
  625094: e58d3018     	str	r3, [sp, #0x18]
  625098: e58d201c     	str	r2, [sp, #0x1c]
  62509c: eaffffed     	b	0x625058 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0xa4> @ imm = #-0x4c
  6250a0: e1a03006     	mov	r3, r6
  6250a4: e1a02006     	mov	r2, r6
  6250a8: e1a01006     	mov	r1, r6
  6250ac: eaffffe5     	b	0x625048 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0x94> @ imm = #-0x6c

; FUNCTION 0x006250b0 size=252 sha256=c9ea04052d7dbc399875d4cd904e025bbda1e5ee9cc2bdef34f3aa869a7a1727
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 0, float> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
006250b0 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  6250b0: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  6250b4: e3530001     	cmp	r3, #1
  6250b8: e24dd024     	sub	sp, sp, #36
  6250bc: e1a04003     	mov	r4, r3
  6250c0: e1a0b002     	mov	r11, r2
  6250c4: 0a00002a     	beq	0x625174 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0xc4> @ imm = #0xa8
  6250c8: e3a06000     	mov	r6, #0
  6250cc: e3530000     	cmp	r3, #0
  6250d0: e58d6000     	str	r6, [sp]
  6250d4: e58d6004     	str	r6, [sp, #0x4]
  6250d8: e58d6008     	str	r6, [sp, #0x8]
  6250dc: e58d600c     	str	r6, [sp, #0xc]
  6250e0: 11a08001     	movne	r8, r1
  6250e4: 13a09000     	movne	r9, #0
  6250e8: 11a0700d     	movne	r7, sp
  6250ec: 0a00002a     	beq	0x62519c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0xec> @ imm = #0xa8
  6250f0: e79ba109     	ldr	r10, [r11, r9, lsl #2]
  6250f4: e3a05000     	mov	r5, #0
  6250f8: e7981005     	ldr	r1, [r8, r5]
  6250fc: e1a0000a     	mov	r0, r10
  625100: ebf3a719     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31639c
  625104: e1a01006     	mov	r1, r6
  625108: ebf3a6a5     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31656c
  62510c: e7870005     	str	r0, [r7, r5]
  625110: e2855004     	add	r5, r5, #4
  625114: e3550010     	cmp	r5, #16
  625118: 17976005     	ldrne	r6, [r7, r5]
  62511c: 1afffff5     	bne	0x6250f8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0x48> @ imm = #-0x2c
  625120: e2899001     	add	r9, r9, #1
  625124: e1590004     	cmp	r9, r4
  625128: e2888010     	add	r8, r8, #16
  62512c: 159d6000     	ldrne	r6, [sp]
  625130: 1affffee     	bne	0x6250f0 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0x40> @ imm = #-0x48
  625134: e59d1000     	ldr	r1, [sp]
  625138: e59d2004     	ldr	r2, [sp, #0x4]
  62513c: e59d3008     	ldr	r3, [sp, #0x8]
  625140: e59d600c     	ldr	r6, [sp, #0xc]
  625144: e58d1010     	str	r1, [sp, #0x10]
  625148: e58d2014     	str	r2, [sp, #0x14]
  62514c: e58d3018     	str	r3, [sp, #0x18]
  625150: e58d601c     	str	r6, [sp, #0x1c]
  625154: e59d304c     	ldr	r3, [sp, #0x4c]
  625158: e59d0048     	ldr	r0, [sp, #0x48]
  62515c: e3a02000     	mov	r2, #0
  625160: e1d310b8     	ldrh	r1, [r3, #8]
  625164: e28d3010     	add	r3, sp, #16
  625168: ebfea57e     	bl	0x5ce768 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_> @ imm = #-0x56a08
  62516c: e28dd024     	add	sp, sp, #36
  625170: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  625174: e1a03001     	mov	r3, r1
  625178: e4930004     	ldr	r0, [r3], #4
  62517c: e5911004     	ldr	r1, [r1, #0x4]
  625180: e5932008     	ldr	r2, [r3, #0x8]
  625184: e5933004     	ldr	r3, [r3, #0x4]
  625188: e58d0010     	str	r0, [sp, #0x10]
  62518c: e58d1014     	str	r1, [sp, #0x14]
  625190: e58d3018     	str	r3, [sp, #0x18]
  625194: e58d201c     	str	r2, [sp, #0x1c]
  625198: eaffffed     	b	0x625154 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0xa4> @ imm = #-0x4c
  62519c: e1a03006     	mov	r3, r6
  6251a0: e1a02006     	mov	r2, r6
  6251a4: e1a01006     	mov	r1, r6
  6251a8: eaffffe5     	b	0x625144 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0x94> @ imm = #-0x6c

; FUNCTION 0x006251ac size=252 sha256=6647083c927f0c514c4b0e36404fa9c0118a67fc44a2bf52804d1cc39eb98175
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 1, float> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
006251ac <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  6251ac: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  6251b0: e3530001     	cmp	r3, #1
  6251b4: e24dd024     	sub	sp, sp, #36
  6251b8: e1a04003     	mov	r4, r3
  6251bc: e1a0b002     	mov	r11, r2
  6251c0: 0a00002a     	beq	0x625270 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0xc4> @ imm = #0xa8
  6251c4: e3a06000     	mov	r6, #0
  6251c8: e3530000     	cmp	r3, #0
  6251cc: e58d6000     	str	r6, [sp]
  6251d0: e58d6004     	str	r6, [sp, #0x4]
  6251d4: e58d6008     	str	r6, [sp, #0x8]
  6251d8: e58d600c     	str	r6, [sp, #0xc]
  6251dc: 11a08001     	movne	r8, r1
  6251e0: 13a09000     	movne	r9, #0
  6251e4: 11a0700d     	movne	r7, sp
  6251e8: 0a00002a     	beq	0x625298 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0xec> @ imm = #0xa8
  6251ec: e79ba109     	ldr	r10, [r11, r9, lsl #2]
  6251f0: e3a05000     	mov	r5, #0
  6251f4: e7981005     	ldr	r1, [r8, r5]
  6251f8: e1a0000a     	mov	r0, r10
  6251fc: ebf3a6da     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x316498
  625200: e1a01006     	mov	r1, r6
  625204: ebf3a666     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x316668
  625208: e7870005     	str	r0, [r7, r5]
  62520c: e2855004     	add	r5, r5, #4
  625210: e3550010     	cmp	r5, #16
  625214: 17976005     	ldrne	r6, [r7, r5]
  625218: 1afffff5     	bne	0x6251f4 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0x48> @ imm = #-0x2c
  62521c: e2899001     	add	r9, r9, #1
  625220: e1590004     	cmp	r9, r4
  625224: e2888010     	add	r8, r8, #16
  625228: 159d6000     	ldrne	r6, [sp]
  62522c: 1affffee     	bne	0x6251ec <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0x40> @ imm = #-0x48
  625230: e59d1000     	ldr	r1, [sp]
  625234: e59d2004     	ldr	r2, [sp, #0x4]
  625238: e59d3008     	ldr	r3, [sp, #0x8]
  62523c: e59d600c     	ldr	r6, [sp, #0xc]
  625240: e58d1010     	str	r1, [sp, #0x10]
  625244: e58d2014     	str	r2, [sp, #0x14]
  625248: e58d3018     	str	r3, [sp, #0x18]
  62524c: e58d601c     	str	r6, [sp, #0x1c]
  625250: e59d304c     	ldr	r3, [sp, #0x4c]
  625254: e59d0048     	ldr	r0, [sp, #0x48]
  625258: e3a02000     	mov	r2, #0
  62525c: e1d310b8     	ldrh	r1, [r3, #8]
  625260: e28d3010     	add	r3, sp, #16
  625264: ebfea53f     	bl	0x5ce768 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_> @ imm = #-0x56b04
  625268: e28dd024     	add	sp, sp, #36
  62526c: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  625270: e1a03001     	mov	r3, r1
  625274: e4930004     	ldr	r0, [r3], #4
  625278: e5911004     	ldr	r1, [r1, #0x4]
  62527c: e5932008     	ldr	r2, [r3, #0x8]
  625280: e5933004     	ldr	r3, [r3, #0x4]
  625284: e58d0010     	str	r0, [sp, #0x10]
  625288: e58d1014     	str	r1, [sp, #0x14]
  62528c: e58d3018     	str	r3, [sp, #0x18]
  625290: e58d201c     	str	r2, [sp, #0x1c]
  625294: eaffffed     	b	0x625250 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0xa4> @ imm = #-0x4c
  625298: e1a03006     	mov	r3, r6
  62529c: e1a02006     	mov	r2, r6
  6252a0: e1a01006     	mov	r1, r6
  6252a4: eaffffe5     	b	0x625240 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi1EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE+0x94> @ imm = #-0x6c

; FUNCTION 0x006252a8 size=320 sha256=56de23c978146abcf245503f54a05cc905aa6f76dcdd5b143166a0d10533f3e1
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 0, unsigned char> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
006252a8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEE17applyBlendedValueEPvPfiSF_PNS1_15CApplicatorInfoE>:
  6252a8: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  6252ac: e3530001     	cmp	r3, #1
  6252b0: e24dd024     	sub	sp, sp, #36
  6252b4: e1a04003     	mov	r4, r3
  6252b8: e88d0006     	stm	sp, {r1, r2}
  6252bc: 0a00003a     	beq	0x6253ac <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEE17applyBlendedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x104> @ imm = #0xe8
  6252c0: e3a07000     	mov	r7, #0
  6252c4: e3530000     	cmp	r3, #0
  6252c8: e58d700c     	str	r7, [sp, #0xc]
  6252cc: e58d7010     	str	r7, [sp, #0x10]
  6252d0: e58d7014     	str	r7, [sp, #0x14]
  6252d4: e58d7018     	str	r7, [sp, #0x18]
  6252d8: 13a0b000     	movne	r11, #0
  6252dc: 128d800c     	addne	r8, sp, #12
  6252e0: 0a00003d     	beq	0x6253dc <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEE17applyBlendedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x134> @ imm = #0xf4
  6252e4: e59d2004     	ldr	r2, [sp, #0x4]
  6252e8: e59d3000     	ldr	r3, [sp]
  6252ec: e3a05000     	mov	r5, #0
  6252f0: e792a00b     	ldr	r10, [r2, r11]
  6252f4: e083900b     	add	r9, r3, r11
  6252f8: e1a06005     	mov	r6, r5
  6252fc: e7d90006     	ldrb	r0, [r9, r6]
  625300: ebf3a597     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x3169a4
  625304: e1a0100a     	mov	r1, r10
  625308: ebf3a697     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3165a4
  62530c: e1a01007     	mov	r1, r7
  625310: ebf3a623     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x316774
  625314: e7880005     	str	r0, [r8, r5]
  625318: e2855004     	add	r5, r5, #4
  62531c: e3550010     	cmp	r5, #16
  625320: e2866001     	add	r6, r6, #1
  625324: 17987005     	ldrne	r7, [r8, r5]
  625328: 1afffff3     	bne	0x6252fc <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEE17applyBlendedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x54> @ imm = #-0x34
  62532c: e2544001     	subs	r4, r4, #1
  625330: e28bb004     	add	r11, r11, #4
  625334: 159d700c     	ldrne	r7, [sp, #0xc]
  625338: 1affffe9     	bne	0x6252e4 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEE17applyBlendedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x3c> @ imm = #-0x5c
  62533c: e59d000c     	ldr	r0, [sp, #0xc]
  625340: eb0a63d6     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x298f58
  625344: e5cd001c     	strb	r0, [sp, #0x1c]
  625348: e59d0010     	ldr	r0, [sp, #0x10]
  62534c: eb0a63d3     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x298f4c
  625350: e5cd001d     	strb	r0, [sp, #0x1d]
  625354: e59d0014     	ldr	r0, [sp, #0x14]
  625358: eb0a63d0     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x298f40
  62535c: e5cd001e     	strb	r0, [sp, #0x1e]
  625360: e59d0018     	ldr	r0, [sp, #0x18]
  625364: eb0a63cd     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x298f34
  625368: e5cd001f     	strb	r0, [sp, #0x1f]
  62536c: e59d304c     	ldr	r3, [sp, #0x4c]
  625370: e5dd501f     	ldrb	r5, [sp, #0x1f]
  625374: e5dd401c     	ldrb	r4, [sp, #0x1c]
  625378: e5dde01d     	ldrb	lr, [sp, #0x1d]
  62537c: e5ddc01e     	ldrb	r12, [sp, #0x1e]
  625380: e1d310b8     	ldrh	r1, [r3, #8]
  625384: e59d0048     	ldr	r0, [sp, #0x48]
  625388: e1a03008     	mov	r3, r8
  62538c: e3a02000     	mov	r2, #0
  625390: e5cd500f     	strb	r5, [sp, #0xf]
  625394: e5cd400c     	strb	r4, [sp, #0xc]
  625398: e5cde00d     	strb	lr, [sp, #0xd]
  62539c: e5cdc00e     	strb	r12, [sp, #0xe]
  6253a0: ebfe9664     	bl	0x5cad38 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSC_> @ imm = #-0x5a670
  6253a4: e28dd024     	add	sp, sp, #36
  6253a8: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  6253ac: e59d3000     	ldr	r3, [sp]
  6253b0: e59d2000     	ldr	r2, [sp]
  6253b4: e28d800c     	add	r8, sp, #12
  6253b8: e4d30001     	ldrb	r0, [r3], #1
  6253bc: e5d21001     	ldrb	r1, [r2, #0x1]
  6253c0: e5d32002     	ldrb	r2, [r3, #0x2]
  6253c4: e5d33001     	ldrb	r3, [r3, #0x1]
  6253c8: e5cd001c     	strb	r0, [sp, #0x1c]
  6253cc: e5cd101d     	strb	r1, [sp, #0x1d]
  6253d0: e5cd301e     	strb	r3, [sp, #0x1e]
  6253d4: e5cd201f     	strb	r2, [sp, #0x1f]
  6253d8: eaffffe3     	b	0x62536c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEE17applyBlendedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0xc4> @ imm = #-0x74
  6253dc: e1a00007     	mov	r0, r7
  6253e0: e28d800c     	add	r8, sp, #12
  6253e4: eaffffd5     	b	0x625340 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEE17applyBlendedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x98> @ imm = #-0xac

; FUNCTION 0x006253e8 size=320 sha256=aa2d5be924b9445c5ed92cedc81f6281c7a138133abb83ba4e81492798632d02
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 1, unsigned char> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
006253e8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEE15applyAddedValueEPvPfiSF_PNS1_15CApplicatorInfoE>:
  6253e8: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  6253ec: e3530001     	cmp	r3, #1
  6253f0: e24dd024     	sub	sp, sp, #36
  6253f4: e1a04003     	mov	r4, r3
  6253f8: e88d0006     	stm	sp, {r1, r2}
  6253fc: 0a00003a     	beq	0x6254ec <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEE15applyAddedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x104> @ imm = #0xe8
  625400: e3a07000     	mov	r7, #0
  625404: e3530000     	cmp	r3, #0
  625408: e58d700c     	str	r7, [sp, #0xc]
  62540c: e58d7010     	str	r7, [sp, #0x10]
  625410: e58d7014     	str	r7, [sp, #0x14]
  625414: e58d7018     	str	r7, [sp, #0x18]
  625418: 13a0b000     	movne	r11, #0
  62541c: 128d800c     	addne	r8, sp, #12
  625420: 0a00003d     	beq	0x62551c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEE15applyAddedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x134> @ imm = #0xf4
  625424: e59d2004     	ldr	r2, [sp, #0x4]
  625428: e59d3000     	ldr	r3, [sp]
  62542c: e3a05000     	mov	r5, #0
  625430: e792a00b     	ldr	r10, [r2, r11]
  625434: e083900b     	add	r9, r3, r11
  625438: e1a06005     	mov	r6, r5
  62543c: e7d90006     	ldrb	r0, [r9, r6]
  625440: ebf3a547     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x316ae4
  625444: e1a0100a     	mov	r1, r10
  625448: ebf3a647     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3166e4
  62544c: e1a01007     	mov	r1, r7
  625450: ebf3a5d3     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x3168b4
  625454: e7880005     	str	r0, [r8, r5]
  625458: e2855004     	add	r5, r5, #4
  62545c: e3550010     	cmp	r5, #16
  625460: e2866001     	add	r6, r6, #1
  625464: 17987005     	ldrne	r7, [r8, r5]
  625468: 1afffff3     	bne	0x62543c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEE15applyAddedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x54> @ imm = #-0x34
  62546c: e2544001     	subs	r4, r4, #1
  625470: e28bb004     	add	r11, r11, #4
  625474: 159d700c     	ldrne	r7, [sp, #0xc]
  625478: 1affffe9     	bne	0x625424 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEE15applyAddedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x3c> @ imm = #-0x5c
  62547c: e59d000c     	ldr	r0, [sp, #0xc]
  625480: eb0a6386     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x298e18
  625484: e5cd001c     	strb	r0, [sp, #0x1c]
  625488: e59d0010     	ldr	r0, [sp, #0x10]
  62548c: eb0a6383     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x298e0c
  625490: e5cd001d     	strb	r0, [sp, #0x1d]
  625494: e59d0014     	ldr	r0, [sp, #0x14]
  625498: eb0a6380     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x298e00
  62549c: e5cd001e     	strb	r0, [sp, #0x1e]
  6254a0: e59d0018     	ldr	r0, [sp, #0x18]
  6254a4: eb0a637d     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x298df4
  6254a8: e5cd001f     	strb	r0, [sp, #0x1f]
  6254ac: e59d304c     	ldr	r3, [sp, #0x4c]
  6254b0: e5dd501f     	ldrb	r5, [sp, #0x1f]
  6254b4: e5dd401c     	ldrb	r4, [sp, #0x1c]
  6254b8: e5dde01d     	ldrb	lr, [sp, #0x1d]
  6254bc: e5ddc01e     	ldrb	r12, [sp, #0x1e]
  6254c0: e1d310b8     	ldrh	r1, [r3, #8]
  6254c4: e59d0048     	ldr	r0, [sp, #0x48]
  6254c8: e1a03008     	mov	r3, r8
  6254cc: e3a02000     	mov	r2, #0
  6254d0: e5cd500f     	strb	r5, [sp, #0xf]
  6254d4: e5cd400c     	strb	r4, [sp, #0xc]
  6254d8: e5cde00d     	strb	lr, [sp, #0xd]
  6254dc: e5cdc00e     	strb	r12, [sp, #0xe]
  6254e0: ebfe9614     	bl	0x5cad38 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSC_> @ imm = #-0x5a7b0
  6254e4: e28dd024     	add	sp, sp, #36
  6254e8: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  6254ec: e59d3000     	ldr	r3, [sp]
  6254f0: e59d2000     	ldr	r2, [sp]
  6254f4: e28d800c     	add	r8, sp, #12
  6254f8: e4d30001     	ldrb	r0, [r3], #1
  6254fc: e5d21001     	ldrb	r1, [r2, #0x1]
  625500: e5d32002     	ldrb	r2, [r3, #0x2]
  625504: e5d33001     	ldrb	r3, [r3, #0x1]
  625508: e5cd001c     	strb	r0, [sp, #0x1c]
  62550c: e5cd101d     	strb	r1, [sp, #0x1d]
  625510: e5cd301e     	strb	r3, [sp, #0x1e]
  625514: e5cd201f     	strb	r2, [sp, #0x1f]
  625518: eaffffe3     	b	0x6254ac <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEE15applyAddedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0xc4> @ imm = #-0x74
  62551c: e1a00007     	mov	r0, r7
  625520: e28d800c     	add	r8, sp, #12
  625524: eaffffd5     	b	0x625480 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEE15applyAddedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x98> @ imm = #-0xac

; FUNCTION 0x00625528 size=320 sha256=631ba702c73eda45be1340c80c29ac38e8e6a33c0aabf3d445905bfe3daa9a0d
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 1, unsigned char> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
00625528 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEE17applyBlendedValueEPvPfiSF_PNS1_15CApplicatorInfoE>:
  625528: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62552c: e3530001     	cmp	r3, #1
  625530: e24dd024     	sub	sp, sp, #36
  625534: e1a04003     	mov	r4, r3
  625538: e88d0006     	stm	sp, {r1, r2}
  62553c: 0a00003a     	beq	0x62562c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEE17applyBlendedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x104> @ imm = #0xe8
  625540: e3a07000     	mov	r7, #0
  625544: e3530000     	cmp	r3, #0
  625548: e58d700c     	str	r7, [sp, #0xc]
  62554c: e58d7010     	str	r7, [sp, #0x10]
  625550: e58d7014     	str	r7, [sp, #0x14]
  625554: e58d7018     	str	r7, [sp, #0x18]
  625558: 13a0b000     	movne	r11, #0
  62555c: 128d800c     	addne	r8, sp, #12
  625560: 0a00003d     	beq	0x62565c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEE17applyBlendedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x134> @ imm = #0xf4
  625564: e59d2004     	ldr	r2, [sp, #0x4]
  625568: e59d3000     	ldr	r3, [sp]
  62556c: e3a05000     	mov	r5, #0
  625570: e792a00b     	ldr	r10, [r2, r11]
  625574: e083900b     	add	r9, r3, r11
  625578: e1a06005     	mov	r6, r5
  62557c: e7d90006     	ldrb	r0, [r9, r6]
  625580: ebf3a4f7     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x316c24
  625584: e1a0100a     	mov	r1, r10
  625588: ebf3a5f7     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x316824
  62558c: e1a01007     	mov	r1, r7
  625590: ebf3a583     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x3169f4
  625594: e7880005     	str	r0, [r8, r5]
  625598: e2855004     	add	r5, r5, #4
  62559c: e3550010     	cmp	r5, #16
  6255a0: e2866001     	add	r6, r6, #1
  6255a4: 17987005     	ldrne	r7, [r8, r5]
  6255a8: 1afffff3     	bne	0x62557c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEE17applyBlendedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x54> @ imm = #-0x34
  6255ac: e2544001     	subs	r4, r4, #1
  6255b0: e28bb004     	add	r11, r11, #4
  6255b4: 159d700c     	ldrne	r7, [sp, #0xc]
  6255b8: 1affffe9     	bne	0x625564 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEE17applyBlendedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x3c> @ imm = #-0x5c
  6255bc: e59d000c     	ldr	r0, [sp, #0xc]
  6255c0: eb0a6336     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x298cd8
  6255c4: e5cd001c     	strb	r0, [sp, #0x1c]
  6255c8: e59d0010     	ldr	r0, [sp, #0x10]
  6255cc: eb0a6333     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x298ccc
  6255d0: e5cd001d     	strb	r0, [sp, #0x1d]
  6255d4: e59d0014     	ldr	r0, [sp, #0x14]
  6255d8: eb0a6330     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x298cc0
  6255dc: e5cd001e     	strb	r0, [sp, #0x1e]
  6255e0: e59d0018     	ldr	r0, [sp, #0x18]
  6255e4: eb0a632d     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x298cb4
  6255e8: e5cd001f     	strb	r0, [sp, #0x1f]
  6255ec: e59d304c     	ldr	r3, [sp, #0x4c]
  6255f0: e5dd501f     	ldrb	r5, [sp, #0x1f]
  6255f4: e5dd401c     	ldrb	r4, [sp, #0x1c]
  6255f8: e5dde01d     	ldrb	lr, [sp, #0x1d]
  6255fc: e5ddc01e     	ldrb	r12, [sp, #0x1e]
  625600: e1d310b8     	ldrh	r1, [r3, #8]
  625604: e59d0048     	ldr	r0, [sp, #0x48]
  625608: e1a03008     	mov	r3, r8
  62560c: e3a02000     	mov	r2, #0
  625610: e5cd500f     	strb	r5, [sp, #0xf]
  625614: e5cd400c     	strb	r4, [sp, #0xc]
  625618: e5cde00d     	strb	lr, [sp, #0xd]
  62561c: e5cdc00e     	strb	r12, [sp, #0xe]
  625620: ebfe95c4     	bl	0x5cad38 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSC_> @ imm = #-0x5a8f0
  625624: e28dd024     	add	sp, sp, #36
  625628: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62562c: e59d3000     	ldr	r3, [sp]
  625630: e59d2000     	ldr	r2, [sp]
  625634: e28d800c     	add	r8, sp, #12
  625638: e4d30001     	ldrb	r0, [r3], #1
  62563c: e5d21001     	ldrb	r1, [r2, #0x1]
  625640: e5d32002     	ldrb	r2, [r3, #0x2]
  625644: e5d33001     	ldrb	r3, [r3, #0x1]
  625648: e5cd001c     	strb	r0, [sp, #0x1c]
  62564c: e5cd101d     	strb	r1, [sp, #0x1d]
  625650: e5cd301e     	strb	r3, [sp, #0x1e]
  625654: e5cd201f     	strb	r2, [sp, #0x1f]
  625658: eaffffe3     	b	0x6255ec <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEE17applyBlendedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0xc4> @ imm = #-0x74
  62565c: e1a00007     	mov	r0, r7
  625660: e28d800c     	add	r8, sp, #12
  625664: eaffffd5     	b	0x6255c0 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEE17applyBlendedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x98> @ imm = #-0xac

; FUNCTION 0x00625668 size=320 sha256=369efd98dfaf7ace7e71b5bb580e52d95f283f561f0179b8786dfb237e2944c8
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 2, unsigned char> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
00625668 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEE15applyAddedValueEPvPfiSF_PNS1_15CApplicatorInfoE>:
  625668: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62566c: e3530001     	cmp	r3, #1
  625670: e24dd024     	sub	sp, sp, #36
  625674: e1a04003     	mov	r4, r3
  625678: e88d0006     	stm	sp, {r1, r2}
  62567c: 0a00003a     	beq	0x62576c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEE15applyAddedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x104> @ imm = #0xe8
  625680: e3a07000     	mov	r7, #0
  625684: e3530000     	cmp	r3, #0
  625688: e58d700c     	str	r7, [sp, #0xc]
  62568c: e58d7010     	str	r7, [sp, #0x10]
  625690: e58d7014     	str	r7, [sp, #0x14]
  625694: e58d7018     	str	r7, [sp, #0x18]
  625698: 13a0b000     	movne	r11, #0
  62569c: 128d800c     	addne	r8, sp, #12
  6256a0: 0a00003d     	beq	0x62579c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEE15applyAddedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x134> @ imm = #0xf4
  6256a4: e59d2004     	ldr	r2, [sp, #0x4]
  6256a8: e59d3000     	ldr	r3, [sp]
  6256ac: e3a05000     	mov	r5, #0
  6256b0: e792a00b     	ldr	r10, [r2, r11]
  6256b4: e083900b     	add	r9, r3, r11
  6256b8: e1a06005     	mov	r6, r5
  6256bc: e7d90006     	ldrb	r0, [r9, r6]
  6256c0: ebf3a4a7     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x316d64
  6256c4: e1a0100a     	mov	r1, r10
  6256c8: ebf3a5a7     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x316964
  6256cc: e1a01007     	mov	r1, r7
  6256d0: ebf3a533     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x316b34
  6256d4: e7880005     	str	r0, [r8, r5]
  6256d8: e2855004     	add	r5, r5, #4
  6256dc: e3550010     	cmp	r5, #16
  6256e0: e2866001     	add	r6, r6, #1
  6256e4: 17987005     	ldrne	r7, [r8, r5]
  6256e8: 1afffff3     	bne	0x6256bc <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEE15applyAddedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x54> @ imm = #-0x34
  6256ec: e2544001     	subs	r4, r4, #1
  6256f0: e28bb004     	add	r11, r11, #4
  6256f4: 159d700c     	ldrne	r7, [sp, #0xc]
  6256f8: 1affffe9     	bne	0x6256a4 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEE15applyAddedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x3c> @ imm = #-0x5c
  6256fc: e59d000c     	ldr	r0, [sp, #0xc]
  625700: eb0a62e6     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x298b98
  625704: e5cd001c     	strb	r0, [sp, #0x1c]
  625708: e59d0010     	ldr	r0, [sp, #0x10]
  62570c: eb0a62e3     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x298b8c
  625710: e5cd001d     	strb	r0, [sp, #0x1d]
  625714: e59d0014     	ldr	r0, [sp, #0x14]
  625718: eb0a62e0     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x298b80
  62571c: e5cd001e     	strb	r0, [sp, #0x1e]
  625720: e59d0018     	ldr	r0, [sp, #0x18]
  625724: eb0a62dd     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x298b74
  625728: e5cd001f     	strb	r0, [sp, #0x1f]
  62572c: e59d304c     	ldr	r3, [sp, #0x4c]
  625730: e5dd501f     	ldrb	r5, [sp, #0x1f]
  625734: e5dd401c     	ldrb	r4, [sp, #0x1c]
  625738: e5dde01d     	ldrb	lr, [sp, #0x1d]
  62573c: e5ddc01e     	ldrb	r12, [sp, #0x1e]
  625740: e1d310b8     	ldrh	r1, [r3, #8]
  625744: e59d0048     	ldr	r0, [sp, #0x48]
  625748: e1a03008     	mov	r3, r8
  62574c: e3a02000     	mov	r2, #0
  625750: e5cd500f     	strb	r5, [sp, #0xf]
  625754: e5cd400c     	strb	r4, [sp, #0xc]
  625758: e5cde00d     	strb	lr, [sp, #0xd]
  62575c: e5cdc00e     	strb	r12, [sp, #0xe]
  625760: ebfe9574     	bl	0x5cad38 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSC_> @ imm = #-0x5aa30
  625764: e28dd024     	add	sp, sp, #36
  625768: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62576c: e59d3000     	ldr	r3, [sp]
  625770: e59d2000     	ldr	r2, [sp]
  625774: e28d800c     	add	r8, sp, #12
  625778: e4d30001     	ldrb	r0, [r3], #1
  62577c: e5d21001     	ldrb	r1, [r2, #0x1]
  625780: e5d32002     	ldrb	r2, [r3, #0x2]
  625784: e5d33001     	ldrb	r3, [r3, #0x1]
  625788: e5cd001c     	strb	r0, [sp, #0x1c]
  62578c: e5cd101d     	strb	r1, [sp, #0x1d]
  625790: e5cd301e     	strb	r3, [sp, #0x1e]
  625794: e5cd201f     	strb	r2, [sp, #0x1f]
  625798: eaffffe3     	b	0x62572c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEE15applyAddedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0xc4> @ imm = #-0x74
  62579c: e1a00007     	mov	r0, r7
  6257a0: e28d800c     	add	r8, sp, #12
  6257a4: eaffffd5     	b	0x625700 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEE15applyAddedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x98> @ imm = #-0xac

; FUNCTION 0x006257a8 size=320 sha256=3e5fdeeed7bd011c42720ef39c484589ddb2cccce076b55fbea3ebac1d9e3494
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 2, unsigned char> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
006257a8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEE17applyBlendedValueEPvPfiSF_PNS1_15CApplicatorInfoE>:
  6257a8: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  6257ac: e3530001     	cmp	r3, #1
  6257b0: e24dd024     	sub	sp, sp, #36
  6257b4: e1a04003     	mov	r4, r3
  6257b8: e88d0006     	stm	sp, {r1, r2}
  6257bc: 0a00003a     	beq	0x6258ac <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEE17applyBlendedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x104> @ imm = #0xe8
  6257c0: e3a07000     	mov	r7, #0
  6257c4: e3530000     	cmp	r3, #0
  6257c8: e58d700c     	str	r7, [sp, #0xc]
  6257cc: e58d7010     	str	r7, [sp, #0x10]
  6257d0: e58d7014     	str	r7, [sp, #0x14]
  6257d4: e58d7018     	str	r7, [sp, #0x18]
  6257d8: 13a0b000     	movne	r11, #0
  6257dc: 128d800c     	addne	r8, sp, #12
  6257e0: 0a00003d     	beq	0x6258dc <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEE17applyBlendedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x134> @ imm = #0xf4
  6257e4: e59d2004     	ldr	r2, [sp, #0x4]
  6257e8: e59d3000     	ldr	r3, [sp]
  6257ec: e3a05000     	mov	r5, #0
  6257f0: e792a00b     	ldr	r10, [r2, r11]
  6257f4: e083900b     	add	r9, r3, r11
  6257f8: e1a06005     	mov	r6, r5
  6257fc: e7d90006     	ldrb	r0, [r9, r6]
  625800: ebf3a457     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x316ea4
  625804: e1a0100a     	mov	r1, r10
  625808: ebf3a557     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x316aa4
  62580c: e1a01007     	mov	r1, r7
  625810: ebf3a4e3     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x316c74
  625814: e7880005     	str	r0, [r8, r5]
  625818: e2855004     	add	r5, r5, #4
  62581c: e3550010     	cmp	r5, #16
  625820: e2866001     	add	r6, r6, #1
  625824: 17987005     	ldrne	r7, [r8, r5]
  625828: 1afffff3     	bne	0x6257fc <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEE17applyBlendedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x54> @ imm = #-0x34
  62582c: e2544001     	subs	r4, r4, #1
  625830: e28bb004     	add	r11, r11, #4
  625834: 159d700c     	ldrne	r7, [sp, #0xc]
  625838: 1affffe9     	bne	0x6257e4 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEE17applyBlendedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x3c> @ imm = #-0x5c
  62583c: e59d000c     	ldr	r0, [sp, #0xc]
  625840: eb0a6296     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x298a58
  625844: e5cd001c     	strb	r0, [sp, #0x1c]
  625848: e59d0010     	ldr	r0, [sp, #0x10]
  62584c: eb0a6293     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x298a4c
  625850: e5cd001d     	strb	r0, [sp, #0x1d]
  625854: e59d0014     	ldr	r0, [sp, #0x14]
  625858: eb0a6290     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x298a40
  62585c: e5cd001e     	strb	r0, [sp, #0x1e]
  625860: e59d0018     	ldr	r0, [sp, #0x18]
  625864: eb0a628d     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x298a34
  625868: e5cd001f     	strb	r0, [sp, #0x1f]
  62586c: e59d304c     	ldr	r3, [sp, #0x4c]
  625870: e5dd501f     	ldrb	r5, [sp, #0x1f]
  625874: e5dd401c     	ldrb	r4, [sp, #0x1c]
  625878: e5dde01d     	ldrb	lr, [sp, #0x1d]
  62587c: e5ddc01e     	ldrb	r12, [sp, #0x1e]
  625880: e1d310b8     	ldrh	r1, [r3, #8]
  625884: e59d0048     	ldr	r0, [sp, #0x48]
  625888: e1a03008     	mov	r3, r8
  62588c: e3a02000     	mov	r2, #0
  625890: e5cd500f     	strb	r5, [sp, #0xf]
  625894: e5cd400c     	strb	r4, [sp, #0xc]
  625898: e5cde00d     	strb	lr, [sp, #0xd]
  62589c: e5cdc00e     	strb	r12, [sp, #0xe]
  6258a0: ebfe9524     	bl	0x5cad38 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSC_> @ imm = #-0x5ab70
  6258a4: e28dd024     	add	sp, sp, #36
  6258a8: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  6258ac: e59d3000     	ldr	r3, [sp]
  6258b0: e59d2000     	ldr	r2, [sp]
  6258b4: e28d800c     	add	r8, sp, #12
  6258b8: e4d30001     	ldrb	r0, [r3], #1
  6258bc: e5d21001     	ldrb	r1, [r2, #0x1]
  6258c0: e5d32002     	ldrb	r2, [r3, #0x2]
  6258c4: e5d33001     	ldrb	r3, [r3, #0x1]
  6258c8: e5cd001c     	strb	r0, [sp, #0x1c]
  6258cc: e5cd101d     	strb	r1, [sp, #0x1d]
  6258d0: e5cd301e     	strb	r3, [sp, #0x1e]
  6258d4: e5cd201f     	strb	r2, [sp, #0x1f]
  6258d8: eaffffe3     	b	0x62586c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEE17applyBlendedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0xc4> @ imm = #-0x74
  6258dc: e1a00007     	mov	r0, r7
  6258e0: e28d800c     	add	r8, sp, #12
  6258e4: eaffffd5     	b	0x625840 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEE17applyBlendedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x98> @ imm = #-0xac

; FUNCTION 0x006258e8 size=320 sha256=94da1f3b960d173f1b2f735cecdcec492e1b277ba17e72aee3e34557a60916bd
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 3, unsigned char> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
006258e8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEE15applyAddedValueEPvPfiSF_PNS1_15CApplicatorInfoE>:
  6258e8: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  6258ec: e3530001     	cmp	r3, #1
  6258f0: e24dd024     	sub	sp, sp, #36
  6258f4: e1a04003     	mov	r4, r3
  6258f8: e88d0006     	stm	sp, {r1, r2}
  6258fc: 0a00003a     	beq	0x6259ec <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEE15applyAddedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x104> @ imm = #0xe8
  625900: e3a07000     	mov	r7, #0
  625904: e3530000     	cmp	r3, #0
  625908: e58d700c     	str	r7, [sp, #0xc]
  62590c: e58d7010     	str	r7, [sp, #0x10]
  625910: e58d7014     	str	r7, [sp, #0x14]
  625914: e58d7018     	str	r7, [sp, #0x18]
  625918: 13a0b000     	movne	r11, #0
  62591c: 128d800c     	addne	r8, sp, #12
  625920: 0a00003d     	beq	0x625a1c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEE15applyAddedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x134> @ imm = #0xf4
  625924: e59d2004     	ldr	r2, [sp, #0x4]
  625928: e59d3000     	ldr	r3, [sp]
  62592c: e3a05000     	mov	r5, #0
  625930: e792a00b     	ldr	r10, [r2, r11]
  625934: e083900b     	add	r9, r3, r11
  625938: e1a06005     	mov	r6, r5
  62593c: e7d90006     	ldrb	r0, [r9, r6]
  625940: ebf3a407     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x316fe4
  625944: e1a0100a     	mov	r1, r10
  625948: ebf3a507     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x316be4
  62594c: e1a01007     	mov	r1, r7
  625950: ebf3a493     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x316db4
  625954: e7880005     	str	r0, [r8, r5]
  625958: e2855004     	add	r5, r5, #4
  62595c: e3550010     	cmp	r5, #16
  625960: e2866001     	add	r6, r6, #1
  625964: 17987005     	ldrne	r7, [r8, r5]
  625968: 1afffff3     	bne	0x62593c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEE15applyAddedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x54> @ imm = #-0x34
  62596c: e2544001     	subs	r4, r4, #1
  625970: e28bb004     	add	r11, r11, #4
  625974: 159d700c     	ldrne	r7, [sp, #0xc]
  625978: 1affffe9     	bne	0x625924 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEE15applyAddedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x3c> @ imm = #-0x5c
  62597c: e59d000c     	ldr	r0, [sp, #0xc]
  625980: eb0a6246     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x298918
  625984: e5cd001c     	strb	r0, [sp, #0x1c]
  625988: e59d0010     	ldr	r0, [sp, #0x10]
  62598c: eb0a6243     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x29890c
  625990: e5cd001d     	strb	r0, [sp, #0x1d]
  625994: e59d0014     	ldr	r0, [sp, #0x14]
  625998: eb0a6240     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x298900
  62599c: e5cd001e     	strb	r0, [sp, #0x1e]
  6259a0: e59d0018     	ldr	r0, [sp, #0x18]
  6259a4: eb0a623d     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x2988f4
  6259a8: e5cd001f     	strb	r0, [sp, #0x1f]
  6259ac: e59d304c     	ldr	r3, [sp, #0x4c]
  6259b0: e5dd501f     	ldrb	r5, [sp, #0x1f]
  6259b4: e5dd401c     	ldrb	r4, [sp, #0x1c]
  6259b8: e5dde01d     	ldrb	lr, [sp, #0x1d]
  6259bc: e5ddc01e     	ldrb	r12, [sp, #0x1e]
  6259c0: e1d310b8     	ldrh	r1, [r3, #8]
  6259c4: e59d0048     	ldr	r0, [sp, #0x48]
  6259c8: e1a03008     	mov	r3, r8
  6259cc: e3a02000     	mov	r2, #0
  6259d0: e5cd500f     	strb	r5, [sp, #0xf]
  6259d4: e5cd400c     	strb	r4, [sp, #0xc]
  6259d8: e5cde00d     	strb	lr, [sp, #0xd]
  6259dc: e5cdc00e     	strb	r12, [sp, #0xe]
  6259e0: ebfe94d4     	bl	0x5cad38 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSC_> @ imm = #-0x5acb0
  6259e4: e28dd024     	add	sp, sp, #36
  6259e8: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  6259ec: e59d3000     	ldr	r3, [sp]
  6259f0: e59d2000     	ldr	r2, [sp]
  6259f4: e28d800c     	add	r8, sp, #12
  6259f8: e4d30001     	ldrb	r0, [r3], #1
  6259fc: e5d21001     	ldrb	r1, [r2, #0x1]
  625a00: e5d32002     	ldrb	r2, [r3, #0x2]
  625a04: e5d33001     	ldrb	r3, [r3, #0x1]
  625a08: e5cd001c     	strb	r0, [sp, #0x1c]
  625a0c: e5cd101d     	strb	r1, [sp, #0x1d]
  625a10: e5cd301e     	strb	r3, [sp, #0x1e]
  625a14: e5cd201f     	strb	r2, [sp, #0x1f]
  625a18: eaffffe3     	b	0x6259ac <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEE15applyAddedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0xc4> @ imm = #-0x74
  625a1c: e1a00007     	mov	r0, r7
  625a20: e28d800c     	add	r8, sp, #12
  625a24: eaffffd5     	b	0x625980 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEE15applyAddedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x98> @ imm = #-0xac

; FUNCTION 0x00625a28 size=320 sha256=3fa8ca1ba84652471710e6869681a99bf8f93f7af3bd8eaca2abf7cbae4c9a31
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 3, unsigned char> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
00625a28 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEE17applyBlendedValueEPvPfiSF_PNS1_15CApplicatorInfoE>:
  625a28: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  625a2c: e3530001     	cmp	r3, #1
  625a30: e24dd024     	sub	sp, sp, #36
  625a34: e1a04003     	mov	r4, r3
  625a38: e88d0006     	stm	sp, {r1, r2}
  625a3c: 0a00003a     	beq	0x625b2c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEE17applyBlendedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x104> @ imm = #0xe8
  625a40: e3a07000     	mov	r7, #0
  625a44: e3530000     	cmp	r3, #0
  625a48: e58d700c     	str	r7, [sp, #0xc]
  625a4c: e58d7010     	str	r7, [sp, #0x10]
  625a50: e58d7014     	str	r7, [sp, #0x14]
  625a54: e58d7018     	str	r7, [sp, #0x18]
  625a58: 13a0b000     	movne	r11, #0
  625a5c: 128d800c     	addne	r8, sp, #12
  625a60: 0a00003d     	beq	0x625b5c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEE17applyBlendedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x134> @ imm = #0xf4
  625a64: e59d2004     	ldr	r2, [sp, #0x4]
  625a68: e59d3000     	ldr	r3, [sp]
  625a6c: e3a05000     	mov	r5, #0
  625a70: e792a00b     	ldr	r10, [r2, r11]
  625a74: e083900b     	add	r9, r3, r11
  625a78: e1a06005     	mov	r6, r5
  625a7c: e7d90006     	ldrb	r0, [r9, r6]
  625a80: ebf3a3b7     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x317124
  625a84: e1a0100a     	mov	r1, r10
  625a88: ebf3a4b7     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x316d24
  625a8c: e1a01007     	mov	r1, r7
  625a90: ebf3a443     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x316ef4
  625a94: e7880005     	str	r0, [r8, r5]
  625a98: e2855004     	add	r5, r5, #4
  625a9c: e3550010     	cmp	r5, #16
  625aa0: e2866001     	add	r6, r6, #1
  625aa4: 17987005     	ldrne	r7, [r8, r5]
  625aa8: 1afffff3     	bne	0x625a7c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEE17applyBlendedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x54> @ imm = #-0x34
  625aac: e2544001     	subs	r4, r4, #1
  625ab0: e28bb004     	add	r11, r11, #4
  625ab4: 159d700c     	ldrne	r7, [sp, #0xc]
  625ab8: 1affffe9     	bne	0x625a64 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEE17applyBlendedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x3c> @ imm = #-0x5c
  625abc: e59d000c     	ldr	r0, [sp, #0xc]
  625ac0: eb0a61f6     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x2987d8
  625ac4: e5cd001c     	strb	r0, [sp, #0x1c]
  625ac8: e59d0010     	ldr	r0, [sp, #0x10]
  625acc: eb0a61f3     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x2987cc
  625ad0: e5cd001d     	strb	r0, [sp, #0x1d]
  625ad4: e59d0014     	ldr	r0, [sp, #0x14]
  625ad8: eb0a61f0     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x2987c0
  625adc: e5cd001e     	strb	r0, [sp, #0x1e]
  625ae0: e59d0018     	ldr	r0, [sp, #0x18]
  625ae4: eb0a61ed     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x2987b4
  625ae8: e5cd001f     	strb	r0, [sp, #0x1f]
  625aec: e59d304c     	ldr	r3, [sp, #0x4c]
  625af0: e5dd501f     	ldrb	r5, [sp, #0x1f]
  625af4: e5dd401c     	ldrb	r4, [sp, #0x1c]
  625af8: e5dde01d     	ldrb	lr, [sp, #0x1d]
  625afc: e5ddc01e     	ldrb	r12, [sp, #0x1e]
  625b00: e1d310b8     	ldrh	r1, [r3, #8]
  625b04: e59d0048     	ldr	r0, [sp, #0x48]
  625b08: e1a03008     	mov	r3, r8
  625b0c: e3a02000     	mov	r2, #0
  625b10: e5cd500f     	strb	r5, [sp, #0xf]
  625b14: e5cd400c     	strb	r4, [sp, #0xc]
  625b18: e5cde00d     	strb	lr, [sp, #0xd]
  625b1c: e5cdc00e     	strb	r12, [sp, #0xe]
  625b20: ebfe9484     	bl	0x5cad38 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSC_> @ imm = #-0x5adf0
  625b24: e28dd024     	add	sp, sp, #36
  625b28: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  625b2c: e59d3000     	ldr	r3, [sp]
  625b30: e59d2000     	ldr	r2, [sp]
  625b34: e28d800c     	add	r8, sp, #12
  625b38: e4d30001     	ldrb	r0, [r3], #1
  625b3c: e5d21001     	ldrb	r1, [r2, #0x1]
  625b40: e5d32002     	ldrb	r2, [r3, #0x2]
  625b44: e5d33001     	ldrb	r3, [r3, #0x1]
  625b48: e5cd001c     	strb	r0, [sp, #0x1c]
  625b4c: e5cd101d     	strb	r1, [sp, #0x1d]
  625b50: e5cd301e     	strb	r3, [sp, #0x1e]
  625b54: e5cd201f     	strb	r2, [sp, #0x1f]
  625b58: eaffffe3     	b	0x625aec <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEE17applyBlendedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0xc4> @ imm = #-0x74
  625b5c: e1a00007     	mov	r0, r7
  625b60: e28d800c     	add	r8, sp, #12
  625b64: eaffffd5     	b	0x625ac0 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEE17applyBlendedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x98> @ imm = #-0xac

; FUNCTION 0x00625b68 size=320 sha256=63916354f9f749a8b30643141649e5d9229a9e0c4b22b91079d81b3cd14f356c
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, -1, unsigned char> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
00625b68 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE15applyAddedValueEPvPfiSF_PNS1_15CApplicatorInfoE>:
  625b68: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  625b6c: e3530001     	cmp	r3, #1
  625b70: e24dd024     	sub	sp, sp, #36
  625b74: e1a04003     	mov	r4, r3
  625b78: e88d0006     	stm	sp, {r1, r2}
  625b7c: 0a00003a     	beq	0x625c6c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE15applyAddedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x104> @ imm = #0xe8
  625b80: e3a07000     	mov	r7, #0
  625b84: e3530000     	cmp	r3, #0
  625b88: e58d700c     	str	r7, [sp, #0xc]
  625b8c: e58d7010     	str	r7, [sp, #0x10]
  625b90: e58d7014     	str	r7, [sp, #0x14]
  625b94: e58d7018     	str	r7, [sp, #0x18]
  625b98: 13a0b000     	movne	r11, #0
  625b9c: 128d800c     	addne	r8, sp, #12
  625ba0: 0a00003d     	beq	0x625c9c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE15applyAddedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x134> @ imm = #0xf4
  625ba4: e59d2004     	ldr	r2, [sp, #0x4]
  625ba8: e59d3000     	ldr	r3, [sp]
  625bac: e3a05000     	mov	r5, #0
  625bb0: e792a00b     	ldr	r10, [r2, r11]
  625bb4: e083900b     	add	r9, r3, r11
  625bb8: e1a06005     	mov	r6, r5
  625bbc: e7d90006     	ldrb	r0, [r9, r6]
  625bc0: ebf3a367     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x317264
  625bc4: e1a0100a     	mov	r1, r10
  625bc8: ebf3a467     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x316e64
  625bcc: e1a01007     	mov	r1, r7
  625bd0: ebf3a3f3     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x317034
  625bd4: e7880005     	str	r0, [r8, r5]
  625bd8: e2855004     	add	r5, r5, #4
  625bdc: e3550010     	cmp	r5, #16
  625be0: e2866001     	add	r6, r6, #1
  625be4: 17987005     	ldrne	r7, [r8, r5]
  625be8: 1afffff3     	bne	0x625bbc <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE15applyAddedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x54> @ imm = #-0x34
  625bec: e2544001     	subs	r4, r4, #1
  625bf0: e28bb004     	add	r11, r11, #4
  625bf4: 159d700c     	ldrne	r7, [sp, #0xc]
  625bf8: 1affffe9     	bne	0x625ba4 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE15applyAddedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x3c> @ imm = #-0x5c
  625bfc: e59d000c     	ldr	r0, [sp, #0xc]
  625c00: eb0a61a6     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x298698
  625c04: e5cd001c     	strb	r0, [sp, #0x1c]
  625c08: e59d0010     	ldr	r0, [sp, #0x10]
  625c0c: eb0a61a3     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x29868c
  625c10: e5cd001d     	strb	r0, [sp, #0x1d]
  625c14: e59d0014     	ldr	r0, [sp, #0x14]
  625c18: eb0a61a0     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x298680
  625c1c: e5cd001e     	strb	r0, [sp, #0x1e]
  625c20: e59d0018     	ldr	r0, [sp, #0x18]
  625c24: eb0a619d     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x298674
  625c28: e5cd001f     	strb	r0, [sp, #0x1f]
  625c2c: e59d304c     	ldr	r3, [sp, #0x4c]
  625c30: e5dd501f     	ldrb	r5, [sp, #0x1f]
  625c34: e5dd401c     	ldrb	r4, [sp, #0x1c]
  625c38: e5dde01d     	ldrb	lr, [sp, #0x1d]
  625c3c: e5ddc01e     	ldrb	r12, [sp, #0x1e]
  625c40: e1d310b8     	ldrh	r1, [r3, #8]
  625c44: e59d0048     	ldr	r0, [sp, #0x48]
  625c48: e1a03008     	mov	r3, r8
  625c4c: e3a02000     	mov	r2, #0
  625c50: e5cd500f     	strb	r5, [sp, #0xf]
  625c54: e5cd400c     	strb	r4, [sp, #0xc]
  625c58: e5cde00d     	strb	lr, [sp, #0xd]
  625c5c: e5cdc00e     	strb	r12, [sp, #0xe]
  625c60: ebfe9434     	bl	0x5cad38 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSC_> @ imm = #-0x5af30
  625c64: e28dd024     	add	sp, sp, #36
  625c68: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  625c6c: e59d3000     	ldr	r3, [sp]
  625c70: e59d2000     	ldr	r2, [sp]
  625c74: e28d800c     	add	r8, sp, #12
  625c78: e4d30001     	ldrb	r0, [r3], #1
  625c7c: e5d21001     	ldrb	r1, [r2, #0x1]
  625c80: e5d32002     	ldrb	r2, [r3, #0x2]
  625c84: e5d33001     	ldrb	r3, [r3, #0x1]
  625c88: e5cd001c     	strb	r0, [sp, #0x1c]
  625c8c: e5cd101d     	strb	r1, [sp, #0x1d]
  625c90: e5cd301e     	strb	r3, [sp, #0x1e]
  625c94: e5cd201f     	strb	r2, [sp, #0x1f]
  625c98: eaffffe3     	b	0x625c2c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE15applyAddedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0xc4> @ imm = #-0x74
  625c9c: e1a00007     	mov	r0, r7
  625ca0: e28d800c     	add	r8, sp, #12
  625ca4: eaffffd5     	b	0x625c00 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE15applyAddedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x98> @ imm = #-0xac

; FUNCTION 0x00625ca8 size=320 sha256=1160e33ea5122fec06bebd4878c4796cc9506567bbe14b6854c6164bdb397da8
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, -1, unsigned char> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
00625ca8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE17applyBlendedValueEPvPfiSF_PNS1_15CApplicatorInfoE>:
  625ca8: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  625cac: e3530001     	cmp	r3, #1
  625cb0: e24dd024     	sub	sp, sp, #36
  625cb4: e1a04003     	mov	r4, r3
  625cb8: e88d0006     	stm	sp, {r1, r2}
  625cbc: 0a00003a     	beq	0x625dac <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE17applyBlendedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x104> @ imm = #0xe8
  625cc0: e3a07000     	mov	r7, #0
  625cc4: e3530000     	cmp	r3, #0
  625cc8: e58d700c     	str	r7, [sp, #0xc]
  625ccc: e58d7010     	str	r7, [sp, #0x10]
  625cd0: e58d7014     	str	r7, [sp, #0x14]
  625cd4: e58d7018     	str	r7, [sp, #0x18]
  625cd8: 13a0b000     	movne	r11, #0
  625cdc: 128d800c     	addne	r8, sp, #12
  625ce0: 0a00003d     	beq	0x625ddc <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE17applyBlendedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x134> @ imm = #0xf4
  625ce4: e59d2004     	ldr	r2, [sp, #0x4]
  625ce8: e59d3000     	ldr	r3, [sp]
  625cec: e3a05000     	mov	r5, #0
  625cf0: e792a00b     	ldr	r10, [r2, r11]
  625cf4: e083900b     	add	r9, r3, r11
  625cf8: e1a06005     	mov	r6, r5
  625cfc: e7d90006     	ldrb	r0, [r9, r6]
  625d00: ebf3a317     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x3173a4
  625d04: e1a0100a     	mov	r1, r10
  625d08: ebf3a417     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x316fa4
  625d0c: e1a01007     	mov	r1, r7
  625d10: ebf3a3a3     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x317174
  625d14: e7880005     	str	r0, [r8, r5]
  625d18: e2855004     	add	r5, r5, #4
  625d1c: e3550010     	cmp	r5, #16
  625d20: e2866001     	add	r6, r6, #1
  625d24: 17987005     	ldrne	r7, [r8, r5]
  625d28: 1afffff3     	bne	0x625cfc <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE17applyBlendedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x54> @ imm = #-0x34
  625d2c: e2544001     	subs	r4, r4, #1
  625d30: e28bb004     	add	r11, r11, #4
  625d34: 159d700c     	ldrne	r7, [sp, #0xc]
  625d38: 1affffe9     	bne	0x625ce4 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE17applyBlendedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x3c> @ imm = #-0x5c
  625d3c: e59d000c     	ldr	r0, [sp, #0xc]
  625d40: eb0a6156     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x298558
  625d44: e5cd001c     	strb	r0, [sp, #0x1c]
  625d48: e59d0010     	ldr	r0, [sp, #0x10]
  625d4c: eb0a6153     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x29854c
  625d50: e5cd001d     	strb	r0, [sp, #0x1d]
  625d54: e59d0014     	ldr	r0, [sp, #0x14]
  625d58: eb0a6150     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x298540
  625d5c: e5cd001e     	strb	r0, [sp, #0x1e]
  625d60: e59d0018     	ldr	r0, [sp, #0x18]
  625d64: eb0a614d     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x298534
  625d68: e5cd001f     	strb	r0, [sp, #0x1f]
  625d6c: e59d304c     	ldr	r3, [sp, #0x4c]
  625d70: e5dd501f     	ldrb	r5, [sp, #0x1f]
  625d74: e5dd401c     	ldrb	r4, [sp, #0x1c]
  625d78: e5dde01d     	ldrb	lr, [sp, #0x1d]
  625d7c: e5ddc01e     	ldrb	r12, [sp, #0x1e]
  625d80: e1d310b8     	ldrh	r1, [r3, #8]
  625d84: e59d0048     	ldr	r0, [sp, #0x48]
  625d88: e1a03008     	mov	r3, r8
  625d8c: e3a02000     	mov	r2, #0
  625d90: e5cd500f     	strb	r5, [sp, #0xf]
  625d94: e5cd400c     	strb	r4, [sp, #0xc]
  625d98: e5cde00d     	strb	lr, [sp, #0xd]
  625d9c: e5cdc00e     	strb	r12, [sp, #0xe]
  625da0: ebfe93e4     	bl	0x5cad38 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSC_> @ imm = #-0x5b070
  625da4: e28dd024     	add	sp, sp, #36
  625da8: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  625dac: e59d3000     	ldr	r3, [sp]
  625db0: e59d2000     	ldr	r2, [sp]
  625db4: e28d800c     	add	r8, sp, #12
  625db8: e4d30001     	ldrb	r0, [r3], #1
  625dbc: e5d21001     	ldrb	r1, [r2, #0x1]
  625dc0: e5d32002     	ldrb	r2, [r3, #0x2]
  625dc4: e5d33001     	ldrb	r3, [r3, #0x1]
  625dc8: e5cd001c     	strb	r0, [sp, #0x1c]
  625dcc: e5cd101d     	strb	r1, [sp, #0x1d]
  625dd0: e5cd301e     	strb	r3, [sp, #0x1e]
  625dd4: e5cd201f     	strb	r2, [sp, #0x1f]
  625dd8: eaffffe3     	b	0x625d6c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE17applyBlendedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0xc4> @ imm = #-0x74
  625ddc: e1a00007     	mov	r0, r7
  625de0: e28d800c     	add	r8, sp, #12
  625de4: eaffffd5     	b	0x625d40 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE17applyBlendedValueEPvPfiSF_PNS1_15CApplicatorInfoE+0x98> @ imm = #-0xac

; FUNCTION 0x00625de8 size=276 sha256=6286ab6a3e153bb1438d61b9c761adf7dc7a1d477a94b8e9345b36724545f5d1
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 0, unsigned char> > >::getBlendedValue(void*, float*, int, void*) const
00625de8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEE15getBlendedValueEPvPfiSF_>:
  625de8: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  625dec: e3530001     	cmp	r3, #1
  625df0: e24dd01c     	sub	sp, sp, #28
  625df4: e1a04003     	mov	r4, r3
  625df8: e88d0006     	stm	sp, {r1, r2}
  625dfc: 0a00002f     	beq	0x625ec0 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEE15getBlendedValueEPvPfiSF_+0xd8> @ imm = #0xbc
  625e00: e3a07000     	mov	r7, #0
  625e04: e3530000     	cmp	r3, #0
  625e08: e58d7008     	str	r7, [sp, #0x8]
  625e0c: e58d700c     	str	r7, [sp, #0xc]
  625e10: e58d7010     	str	r7, [sp, #0x10]
  625e14: e58d7014     	str	r7, [sp, #0x14]
  625e18: 13a0b000     	movne	r11, #0
  625e1c: 128d8008     	addne	r8, sp, #8
  625e20: 0a000033     	beq	0x625ef4 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEE15getBlendedValueEPvPfiSF_+0x10c> @ imm = #0xcc
  625e24: e59d0004     	ldr	r0, [sp, #0x4]
  625e28: e59d3000     	ldr	r3, [sp]
  625e2c: e3a05000     	mov	r5, #0
  625e30: e790a00b     	ldr	r10, [r0, r11]
  625e34: e083900b     	add	r9, r3, r11
  625e38: e1a06005     	mov	r6, r5
  625e3c: e7d90006     	ldrb	r0, [r9, r6]
  625e40: ebf3a2c7     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x3174e4
  625e44: e1a0100a     	mov	r1, r10
  625e48: ebf3a3c7     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3170e4
  625e4c: e1a01007     	mov	r1, r7
  625e50: ebf3a353     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x3172b4
  625e54: e7880005     	str	r0, [r8, r5]
  625e58: e2855004     	add	r5, r5, #4
  625e5c: e3550010     	cmp	r5, #16
  625e60: e2866001     	add	r6, r6, #1
  625e64: 17987005     	ldrne	r7, [r8, r5]
  625e68: 1afffff3     	bne	0x625e3c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEE15getBlendedValueEPvPfiSF_+0x54> @ imm = #-0x34
  625e6c: e2544001     	subs	r4, r4, #1
  625e70: e28bb004     	add	r11, r11, #4
  625e74: 159d7008     	ldrne	r7, [sp, #0x8]
  625e78: 1affffe9     	bne	0x625e24 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEE15getBlendedValueEPvPfiSF_+0x3c> @ imm = #-0x5c
  625e7c: e59d0008     	ldr	r0, [sp, #0x8]
  625e80: eb0a6106     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x298418
  625e84: e59d4040     	ldr	r4, [sp, #0x40]
  625e88: e4c40001     	strb	r0, [r4], #1
  625e8c: e59d000c     	ldr	r0, [sp, #0xc]
  625e90: eb0a6102     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x298408
  625e94: e59d3040     	ldr	r3, [sp, #0x40]
  625e98: e5c30001     	strb	r0, [r3, #0x1]
  625e9c: e59d0010     	ldr	r0, [sp, #0x10]
  625ea0: eb0a60fe     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x2983f8
  625ea4: e5c40001     	strb	r0, [r4, #0x1]
  625ea8: e59d0014     	ldr	r0, [sp, #0x14]
  625eac: eb0a60fb     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x2983ec
  625eb0: e2844001     	add	r4, r4, #1
  625eb4: e5c40001     	strb	r0, [r4, #0x1]
  625eb8: e28dd01c     	add	sp, sp, #28
  625ebc: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  625ec0: e59d2000     	ldr	r2, [sp]
  625ec4: e59d3040     	ldr	r3, [sp, #0x40]
  625ec8: e4d21001     	ldrb	r1, [r2], #1
  625ecc: e4c31001     	strb	r1, [r3], #1
  625ed0: e59d0000     	ldr	r0, [sp]
  625ed4: e5d01001     	ldrb	r1, [r0, #0x1]
  625ed8: e59d0040     	ldr	r0, [sp, #0x40]
  625edc: e5c01001     	strb	r1, [r0, #0x1]
  625ee0: e5d21001     	ldrb	r1, [r2, #0x1]
  625ee4: e5c31001     	strb	r1, [r3, #0x1]
  625ee8: e5d22002     	ldrb	r2, [r2, #0x2]
  625eec: e5c32002     	strb	r2, [r3, #0x2]
  625ef0: eafffff0     	b	0x625eb8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEE15getBlendedValueEPvPfiSF_+0xd0> @ imm = #-0x40
  625ef4: e1a00007     	mov	r0, r7
  625ef8: eaffffe0     	b	0x625e80 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEE15getBlendedValueEPvPfiSF_+0x98> @ imm = #-0x80

; FUNCTION 0x00625efc size=276 sha256=1217be8121ccfc3eaef2104c0db9df00205aa3028e1856c864834ce7fc6232a4
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 1, unsigned char> > >::getBlendedValue(void*, float*, int, void*) const
00625efc <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEE15getBlendedValueEPvPfiSF_>:
  625efc: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  625f00: e3530001     	cmp	r3, #1
  625f04: e24dd01c     	sub	sp, sp, #28
  625f08: e1a04003     	mov	r4, r3
  625f0c: e88d0006     	stm	sp, {r1, r2}
  625f10: 0a00002f     	beq	0x625fd4 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEE15getBlendedValueEPvPfiSF_+0xd8> @ imm = #0xbc
  625f14: e3a07000     	mov	r7, #0
  625f18: e3530000     	cmp	r3, #0
  625f1c: e58d7008     	str	r7, [sp, #0x8]
  625f20: e58d700c     	str	r7, [sp, #0xc]
  625f24: e58d7010     	str	r7, [sp, #0x10]
  625f28: e58d7014     	str	r7, [sp, #0x14]
  625f2c: 13a0b000     	movne	r11, #0
  625f30: 128d8008     	addne	r8, sp, #8
  625f34: 0a000033     	beq	0x626008 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEE15getBlendedValueEPvPfiSF_+0x10c> @ imm = #0xcc
  625f38: e59d0004     	ldr	r0, [sp, #0x4]
  625f3c: e59d3000     	ldr	r3, [sp]
  625f40: e3a05000     	mov	r5, #0
  625f44: e790a00b     	ldr	r10, [r0, r11]
  625f48: e083900b     	add	r9, r3, r11
  625f4c: e1a06005     	mov	r6, r5
  625f50: e7d90006     	ldrb	r0, [r9, r6]
  625f54: ebf3a282     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x3175f8
  625f58: e1a0100a     	mov	r1, r10
  625f5c: ebf3a382     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3171f8
  625f60: e1a01007     	mov	r1, r7
  625f64: ebf3a30e     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x3173c8
  625f68: e7880005     	str	r0, [r8, r5]
  625f6c: e2855004     	add	r5, r5, #4
  625f70: e3550010     	cmp	r5, #16
  625f74: e2866001     	add	r6, r6, #1
  625f78: 17987005     	ldrne	r7, [r8, r5]
  625f7c: 1afffff3     	bne	0x625f50 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEE15getBlendedValueEPvPfiSF_+0x54> @ imm = #-0x34
  625f80: e2544001     	subs	r4, r4, #1
  625f84: e28bb004     	add	r11, r11, #4
  625f88: 159d7008     	ldrne	r7, [sp, #0x8]
  625f8c: 1affffe9     	bne	0x625f38 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEE15getBlendedValueEPvPfiSF_+0x3c> @ imm = #-0x5c
  625f90: e59d0008     	ldr	r0, [sp, #0x8]
  625f94: eb0a60c1     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x298304
  625f98: e59d4040     	ldr	r4, [sp, #0x40]
  625f9c: e4c40001     	strb	r0, [r4], #1
  625fa0: e59d000c     	ldr	r0, [sp, #0xc]
  625fa4: eb0a60bd     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x2982f4
  625fa8: e59d3040     	ldr	r3, [sp, #0x40]
  625fac: e5c30001     	strb	r0, [r3, #0x1]
  625fb0: e59d0010     	ldr	r0, [sp, #0x10]
  625fb4: eb0a60b9     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x2982e4
  625fb8: e5c40001     	strb	r0, [r4, #0x1]
  625fbc: e59d0014     	ldr	r0, [sp, #0x14]
  625fc0: eb0a60b6     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x2982d8
  625fc4: e2844001     	add	r4, r4, #1
  625fc8: e5c40001     	strb	r0, [r4, #0x1]
  625fcc: e28dd01c     	add	sp, sp, #28
  625fd0: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  625fd4: e59d2000     	ldr	r2, [sp]
  625fd8: e59d3040     	ldr	r3, [sp, #0x40]
  625fdc: e4d21001     	ldrb	r1, [r2], #1
  625fe0: e4c31001     	strb	r1, [r3], #1
  625fe4: e59d0000     	ldr	r0, [sp]
  625fe8: e5d01001     	ldrb	r1, [r0, #0x1]
  625fec: e59d0040     	ldr	r0, [sp, #0x40]
  625ff0: e5c01001     	strb	r1, [r0, #0x1]
  625ff4: e5d21001     	ldrb	r1, [r2, #0x1]
  625ff8: e5c31001     	strb	r1, [r3, #0x1]
  625ffc: e5d22002     	ldrb	r2, [r2, #0x2]
  626000: e5c32002     	strb	r2, [r3, #0x2]
  626004: eafffff0     	b	0x625fcc <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEE15getBlendedValueEPvPfiSF_+0xd0> @ imm = #-0x40
  626008: e1a00007     	mov	r0, r7
  62600c: eaffffe0     	b	0x625f94 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEE15getBlendedValueEPvPfiSF_+0x98> @ imm = #-0x80

; FUNCTION 0x00626010 size=276 sha256=9678b5f45660294c3ae9068419076d5cf45be0630fe7cba86eb0b726da813c41
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 2, unsigned char> > >::getBlendedValue(void*, float*, int, void*) const
00626010 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEE15getBlendedValueEPvPfiSF_>:
  626010: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  626014: e3530001     	cmp	r3, #1
  626018: e24dd01c     	sub	sp, sp, #28
  62601c: e1a04003     	mov	r4, r3
  626020: e88d0006     	stm	sp, {r1, r2}
  626024: 0a00002f     	beq	0x6260e8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEE15getBlendedValueEPvPfiSF_+0xd8> @ imm = #0xbc
  626028: e3a07000     	mov	r7, #0
  62602c: e3530000     	cmp	r3, #0
  626030: e58d7008     	str	r7, [sp, #0x8]
  626034: e58d700c     	str	r7, [sp, #0xc]
  626038: e58d7010     	str	r7, [sp, #0x10]
  62603c: e58d7014     	str	r7, [sp, #0x14]
  626040: 13a0b000     	movne	r11, #0
  626044: 128d8008     	addne	r8, sp, #8
  626048: 0a000033     	beq	0x62611c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEE15getBlendedValueEPvPfiSF_+0x10c> @ imm = #0xcc
  62604c: e59d0004     	ldr	r0, [sp, #0x4]
  626050: e59d3000     	ldr	r3, [sp]
  626054: e3a05000     	mov	r5, #0
  626058: e790a00b     	ldr	r10, [r0, r11]
  62605c: e083900b     	add	r9, r3, r11
  626060: e1a06005     	mov	r6, r5
  626064: e7d90006     	ldrb	r0, [r9, r6]
  626068: ebf3a23d     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x31770c
  62606c: e1a0100a     	mov	r1, r10
  626070: ebf3a33d     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31730c
  626074: e1a01007     	mov	r1, r7
  626078: ebf3a2c9     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x3174dc
  62607c: e7880005     	str	r0, [r8, r5]
  626080: e2855004     	add	r5, r5, #4
  626084: e3550010     	cmp	r5, #16
  626088: e2866001     	add	r6, r6, #1
  62608c: 17987005     	ldrne	r7, [r8, r5]
  626090: 1afffff3     	bne	0x626064 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEE15getBlendedValueEPvPfiSF_+0x54> @ imm = #-0x34
  626094: e2544001     	subs	r4, r4, #1
  626098: e28bb004     	add	r11, r11, #4
  62609c: 159d7008     	ldrne	r7, [sp, #0x8]
  6260a0: 1affffe9     	bne	0x62604c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEE15getBlendedValueEPvPfiSF_+0x3c> @ imm = #-0x5c
  6260a4: e59d0008     	ldr	r0, [sp, #0x8]
  6260a8: eb0a607c     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x2981f0
  6260ac: e59d4040     	ldr	r4, [sp, #0x40]
  6260b0: e4c40001     	strb	r0, [r4], #1
  6260b4: e59d000c     	ldr	r0, [sp, #0xc]
  6260b8: eb0a6078     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x2981e0
  6260bc: e59d3040     	ldr	r3, [sp, #0x40]
  6260c0: e5c30001     	strb	r0, [r3, #0x1]
  6260c4: e59d0010     	ldr	r0, [sp, #0x10]
  6260c8: eb0a6074     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x2981d0
  6260cc: e5c40001     	strb	r0, [r4, #0x1]
  6260d0: e59d0014     	ldr	r0, [sp, #0x14]
  6260d4: eb0a6071     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x2981c4
  6260d8: e2844001     	add	r4, r4, #1
  6260dc: e5c40001     	strb	r0, [r4, #0x1]
  6260e0: e28dd01c     	add	sp, sp, #28
  6260e4: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  6260e8: e59d2000     	ldr	r2, [sp]
  6260ec: e59d3040     	ldr	r3, [sp, #0x40]
  6260f0: e4d21001     	ldrb	r1, [r2], #1
  6260f4: e4c31001     	strb	r1, [r3], #1
  6260f8: e59d0000     	ldr	r0, [sp]
  6260fc: e5d01001     	ldrb	r1, [r0, #0x1]
  626100: e59d0040     	ldr	r0, [sp, #0x40]
  626104: e5c01001     	strb	r1, [r0, #0x1]
  626108: e5d21001     	ldrb	r1, [r2, #0x1]
  62610c: e5c31001     	strb	r1, [r3, #0x1]
  626110: e5d22002     	ldrb	r2, [r2, #0x2]
  626114: e5c32002     	strb	r2, [r3, #0x2]
  626118: eafffff0     	b	0x6260e0 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEE15getBlendedValueEPvPfiSF_+0xd0> @ imm = #-0x40
  62611c: e1a00007     	mov	r0, r7
  626120: eaffffe0     	b	0x6260a8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEE15getBlendedValueEPvPfiSF_+0x98> @ imm = #-0x80

; FUNCTION 0x00626124 size=276 sha256=47515e8b0b4497c25f41d7b6132ba3a6fecd56682adf9dddb309690af7731721
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 3, unsigned char> > >::getBlendedValue(void*, float*, int, void*) const
00626124 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEE15getBlendedValueEPvPfiSF_>:
  626124: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  626128: e3530001     	cmp	r3, #1
  62612c: e24dd01c     	sub	sp, sp, #28
  626130: e1a04003     	mov	r4, r3
  626134: e88d0006     	stm	sp, {r1, r2}
  626138: 0a00002f     	beq	0x6261fc <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEE15getBlendedValueEPvPfiSF_+0xd8> @ imm = #0xbc
  62613c: e3a07000     	mov	r7, #0
  626140: e3530000     	cmp	r3, #0
  626144: e58d7008     	str	r7, [sp, #0x8]
  626148: e58d700c     	str	r7, [sp, #0xc]
  62614c: e58d7010     	str	r7, [sp, #0x10]
  626150: e58d7014     	str	r7, [sp, #0x14]
  626154: 13a0b000     	movne	r11, #0
  626158: 128d8008     	addne	r8, sp, #8
  62615c: 0a000033     	beq	0x626230 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEE15getBlendedValueEPvPfiSF_+0x10c> @ imm = #0xcc
  626160: e59d0004     	ldr	r0, [sp, #0x4]
  626164: e59d3000     	ldr	r3, [sp]
  626168: e3a05000     	mov	r5, #0
  62616c: e790a00b     	ldr	r10, [r0, r11]
  626170: e083900b     	add	r9, r3, r11
  626174: e1a06005     	mov	r6, r5
  626178: e7d90006     	ldrb	r0, [r9, r6]
  62617c: ebf3a1f8     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x317820
  626180: e1a0100a     	mov	r1, r10
  626184: ebf3a2f8     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x317420
  626188: e1a01007     	mov	r1, r7
  62618c: ebf3a284     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x3175f0
  626190: e7880005     	str	r0, [r8, r5]
  626194: e2855004     	add	r5, r5, #4
  626198: e3550010     	cmp	r5, #16
  62619c: e2866001     	add	r6, r6, #1
  6261a0: 17987005     	ldrne	r7, [r8, r5]
  6261a4: 1afffff3     	bne	0x626178 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEE15getBlendedValueEPvPfiSF_+0x54> @ imm = #-0x34
  6261a8: e2544001     	subs	r4, r4, #1
  6261ac: e28bb004     	add	r11, r11, #4
  6261b0: 159d7008     	ldrne	r7, [sp, #0x8]
  6261b4: 1affffe9     	bne	0x626160 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEE15getBlendedValueEPvPfiSF_+0x3c> @ imm = #-0x5c
  6261b8: e59d0008     	ldr	r0, [sp, #0x8]
  6261bc: eb0a6037     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x2980dc
  6261c0: e59d4040     	ldr	r4, [sp, #0x40]
  6261c4: e4c40001     	strb	r0, [r4], #1
  6261c8: e59d000c     	ldr	r0, [sp, #0xc]
  6261cc: eb0a6033     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x2980cc
  6261d0: e59d3040     	ldr	r3, [sp, #0x40]
  6261d4: e5c30001     	strb	r0, [r3, #0x1]
  6261d8: e59d0010     	ldr	r0, [sp, #0x10]
  6261dc: eb0a602f     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x2980bc
  6261e0: e5c40001     	strb	r0, [r4, #0x1]
  6261e4: e59d0014     	ldr	r0, [sp, #0x14]
  6261e8: eb0a602c     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x2980b0
  6261ec: e2844001     	add	r4, r4, #1
  6261f0: e5c40001     	strb	r0, [r4, #0x1]
  6261f4: e28dd01c     	add	sp, sp, #28
  6261f8: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  6261fc: e59d2000     	ldr	r2, [sp]
  626200: e59d3040     	ldr	r3, [sp, #0x40]
  626204: e4d21001     	ldrb	r1, [r2], #1
  626208: e4c31001     	strb	r1, [r3], #1
  62620c: e59d0000     	ldr	r0, [sp]
  626210: e5d01001     	ldrb	r1, [r0, #0x1]
  626214: e59d0040     	ldr	r0, [sp, #0x40]
  626218: e5c01001     	strb	r1, [r0, #0x1]
  62621c: e5d21001     	ldrb	r1, [r2, #0x1]
  626220: e5c31001     	strb	r1, [r3, #0x1]
  626224: e5d22002     	ldrb	r2, [r2, #0x2]
  626228: e5c32002     	strb	r2, [r3, #0x2]
  62622c: eafffff0     	b	0x6261f4 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEE15getBlendedValueEPvPfiSF_+0xd0> @ imm = #-0x40
  626230: e1a00007     	mov	r0, r7
  626234: eaffffe0     	b	0x6261bc <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEE15getBlendedValueEPvPfiSF_+0x98> @ imm = #-0x80

; FUNCTION 0x00626238 size=276 sha256=f34c83cb1cc720cef2d21e2ff701d0e677e9ff1eb9f8bb6101a1255ce6aa8391
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, -1, unsigned char> > >::getBlendedValue(void*, float*, int, void*) const
00626238 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE15getBlendedValueEPvPfiSF_>:
  626238: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62623c: e3530001     	cmp	r3, #1
  626240: e24dd01c     	sub	sp, sp, #28
  626244: e1a04003     	mov	r4, r3
  626248: e88d0006     	stm	sp, {r1, r2}
  62624c: 0a00002f     	beq	0x626310 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE15getBlendedValueEPvPfiSF_+0xd8> @ imm = #0xbc
  626250: e3a07000     	mov	r7, #0
  626254: e3530000     	cmp	r3, #0
  626258: e58d7008     	str	r7, [sp, #0x8]
  62625c: e58d700c     	str	r7, [sp, #0xc]
  626260: e58d7010     	str	r7, [sp, #0x10]
  626264: e58d7014     	str	r7, [sp, #0x14]
  626268: 13a0b000     	movne	r11, #0
  62626c: 128d8008     	addne	r8, sp, #8
  626270: 0a000033     	beq	0x626344 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE15getBlendedValueEPvPfiSF_+0x10c> @ imm = #0xcc
  626274: e59d0004     	ldr	r0, [sp, #0x4]
  626278: e59d3000     	ldr	r3, [sp]
  62627c: e3a05000     	mov	r5, #0
  626280: e790a00b     	ldr	r10, [r0, r11]
  626284: e083900b     	add	r9, r3, r11
  626288: e1a06005     	mov	r6, r5
  62628c: e7d90006     	ldrb	r0, [r9, r6]
  626290: ebf3a1b3     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x317934
  626294: e1a0100a     	mov	r1, r10
  626298: ebf3a2b3     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x317534
  62629c: e1a01007     	mov	r1, r7
  6262a0: ebf3a23f     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x317704
  6262a4: e7880005     	str	r0, [r8, r5]
  6262a8: e2855004     	add	r5, r5, #4
  6262ac: e3550010     	cmp	r5, #16
  6262b0: e2866001     	add	r6, r6, #1
  6262b4: 17987005     	ldrne	r7, [r8, r5]
  6262b8: 1afffff3     	bne	0x62628c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE15getBlendedValueEPvPfiSF_+0x54> @ imm = #-0x34
  6262bc: e2544001     	subs	r4, r4, #1
  6262c0: e28bb004     	add	r11, r11, #4
  6262c4: 159d7008     	ldrne	r7, [sp, #0x8]
  6262c8: 1affffe9     	bne	0x626274 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE15getBlendedValueEPvPfiSF_+0x3c> @ imm = #-0x5c
  6262cc: e59d0008     	ldr	r0, [sp, #0x8]
  6262d0: eb0a5ff2     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x297fc8
  6262d4: e59d4040     	ldr	r4, [sp, #0x40]
  6262d8: e4c40001     	strb	r0, [r4], #1
  6262dc: e59d000c     	ldr	r0, [sp, #0xc]
  6262e0: eb0a5fee     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x297fb8
  6262e4: e59d3040     	ldr	r3, [sp, #0x40]
  6262e8: e5c30001     	strb	r0, [r3, #0x1]
  6262ec: e59d0010     	ldr	r0, [sp, #0x10]
  6262f0: eb0a5fea     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x297fa8
  6262f4: e5c40001     	strb	r0, [r4, #0x1]
  6262f8: e59d0014     	ldr	r0, [sp, #0x14]
  6262fc: eb0a5fe7     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x297f9c
  626300: e2844001     	add	r4, r4, #1
  626304: e5c40001     	strb	r0, [r4, #0x1]
  626308: e28dd01c     	add	sp, sp, #28
  62630c: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  626310: e59d2000     	ldr	r2, [sp]
  626314: e59d3040     	ldr	r3, [sp, #0x40]
  626318: e4d21001     	ldrb	r1, [r2], #1
  62631c: e4c31001     	strb	r1, [r3], #1
  626320: e59d0000     	ldr	r0, [sp]
  626324: e5d01001     	ldrb	r1, [r0, #0x1]
  626328: e59d0040     	ldr	r0, [sp, #0x40]
  62632c: e5c01001     	strb	r1, [r0, #0x1]
  626330: e5d21001     	ldrb	r1, [r2, #0x1]
  626334: e5c31001     	strb	r1, [r3, #0x1]
  626338: e5d22002     	ldrb	r2, [r2, #0x2]
  62633c: e5c32002     	strb	r2, [r3, #0x2]
  626340: eafffff0     	b	0x626308 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE15getBlendedValueEPvPfiSF_+0xd0> @ imm = #-0x40
  626344: e1a00007     	mov	r0, r7
  626348: eaffffe0     	b	0x6262d0 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE15getBlendedValueEPvPfiSF_+0x98> @ imm = #-0x80

; FUNCTION 0x0062634c size=276 sha256=8c2caa86f1bb6376767e08c8d050a63d0ac5cde4abd8718d2f8a147a5dad9dbc
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 0, unsigned char> > >::getAddedValue(void*, float*, int, void*) const
0062634c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEE13getAddedValueEPvPfiSF_>:
  62634c: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  626350: e3530001     	cmp	r3, #1
  626354: e24dd01c     	sub	sp, sp, #28
  626358: e1a04003     	mov	r4, r3
  62635c: e88d0006     	stm	sp, {r1, r2}
  626360: 0a00002f     	beq	0x626424 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEE13getAddedValueEPvPfiSF_+0xd8> @ imm = #0xbc
  626364: e3a07000     	mov	r7, #0
  626368: e3530000     	cmp	r3, #0
  62636c: e58d7008     	str	r7, [sp, #0x8]
  626370: e58d700c     	str	r7, [sp, #0xc]
  626374: e58d7010     	str	r7, [sp, #0x10]
  626378: e58d7014     	str	r7, [sp, #0x14]
  62637c: 13a0b000     	movne	r11, #0
  626380: 128d8008     	addne	r8, sp, #8
  626384: 0a000033     	beq	0x626458 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEE13getAddedValueEPvPfiSF_+0x10c> @ imm = #0xcc
  626388: e59d0004     	ldr	r0, [sp, #0x4]
  62638c: e59d3000     	ldr	r3, [sp]
  626390: e3a05000     	mov	r5, #0
  626394: e790a00b     	ldr	r10, [r0, r11]
  626398: e083900b     	add	r9, r3, r11
  62639c: e1a06005     	mov	r6, r5
  6263a0: e7d90006     	ldrb	r0, [r9, r6]
  6263a4: ebf3a16e     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x317a48
  6263a8: e1a0100a     	mov	r1, r10
  6263ac: ebf3a26e     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x317648
  6263b0: e1a01007     	mov	r1, r7
  6263b4: ebf3a1fa     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x317818
  6263b8: e7880005     	str	r0, [r8, r5]
  6263bc: e2855004     	add	r5, r5, #4
  6263c0: e3550010     	cmp	r5, #16
  6263c4: e2866001     	add	r6, r6, #1
  6263c8: 17987005     	ldrne	r7, [r8, r5]
  6263cc: 1afffff3     	bne	0x6263a0 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEE13getAddedValueEPvPfiSF_+0x54> @ imm = #-0x34
  6263d0: e2544001     	subs	r4, r4, #1
  6263d4: e28bb004     	add	r11, r11, #4
  6263d8: 159d7008     	ldrne	r7, [sp, #0x8]
  6263dc: 1affffe9     	bne	0x626388 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEE13getAddedValueEPvPfiSF_+0x3c> @ imm = #-0x5c
  6263e0: e59d0008     	ldr	r0, [sp, #0x8]
  6263e4: eb0a5fad     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x297eb4
  6263e8: e59d4040     	ldr	r4, [sp, #0x40]
  6263ec: e4c40001     	strb	r0, [r4], #1
  6263f0: e59d000c     	ldr	r0, [sp, #0xc]
  6263f4: eb0a5fa9     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x297ea4
  6263f8: e59d3040     	ldr	r3, [sp, #0x40]
  6263fc: e5c30001     	strb	r0, [r3, #0x1]
  626400: e59d0010     	ldr	r0, [sp, #0x10]
  626404: eb0a5fa5     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x297e94
  626408: e5c40001     	strb	r0, [r4, #0x1]
  62640c: e59d0014     	ldr	r0, [sp, #0x14]
  626410: eb0a5fa2     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x297e88
  626414: e2844001     	add	r4, r4, #1
  626418: e5c40001     	strb	r0, [r4, #0x1]
  62641c: e28dd01c     	add	sp, sp, #28
  626420: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  626424: e59d2000     	ldr	r2, [sp]
  626428: e59d3040     	ldr	r3, [sp, #0x40]
  62642c: e4d21001     	ldrb	r1, [r2], #1
  626430: e4c31001     	strb	r1, [r3], #1
  626434: e59d0000     	ldr	r0, [sp]
  626438: e5d01001     	ldrb	r1, [r0, #0x1]
  62643c: e59d0040     	ldr	r0, [sp, #0x40]
  626440: e5c01001     	strb	r1, [r0, #0x1]
  626444: e5d21001     	ldrb	r1, [r2, #0x1]
  626448: e5c31001     	strb	r1, [r3, #0x1]
  62644c: e5d22002     	ldrb	r2, [r2, #0x2]
  626450: e5c32002     	strb	r2, [r3, #0x2]
  626454: eafffff0     	b	0x62641c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEE13getAddedValueEPvPfiSF_+0xd0> @ imm = #-0x40
  626458: e1a00007     	mov	r0, r7
  62645c: eaffffe0     	b	0x6263e4 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi0EhEEEEE13getAddedValueEPvPfiSF_+0x98> @ imm = #-0x80

; FUNCTION 0x00626460 size=276 sha256=8c6ea04dcca13cabd49d4bb1339cdd7e8a2e4cc9d3e9d2a140b3b54155ff560b
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 1, unsigned char> > >::getAddedValue(void*, float*, int, void*) const
00626460 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEE13getAddedValueEPvPfiSF_>:
  626460: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  626464: e3530001     	cmp	r3, #1
  626468: e24dd01c     	sub	sp, sp, #28
  62646c: e1a04003     	mov	r4, r3
  626470: e88d0006     	stm	sp, {r1, r2}
  626474: 0a00002f     	beq	0x626538 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEE13getAddedValueEPvPfiSF_+0xd8> @ imm = #0xbc
  626478: e3a07000     	mov	r7, #0
  62647c: e3530000     	cmp	r3, #0
  626480: e58d7008     	str	r7, [sp, #0x8]
  626484: e58d700c     	str	r7, [sp, #0xc]
  626488: e58d7010     	str	r7, [sp, #0x10]
  62648c: e58d7014     	str	r7, [sp, #0x14]
  626490: 13a0b000     	movne	r11, #0
  626494: 128d8008     	addne	r8, sp, #8
  626498: 0a000033     	beq	0x62656c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEE13getAddedValueEPvPfiSF_+0x10c> @ imm = #0xcc
  62649c: e59d0004     	ldr	r0, [sp, #0x4]
  6264a0: e59d3000     	ldr	r3, [sp]
  6264a4: e3a05000     	mov	r5, #0
  6264a8: e790a00b     	ldr	r10, [r0, r11]
  6264ac: e083900b     	add	r9, r3, r11
  6264b0: e1a06005     	mov	r6, r5
  6264b4: e7d90006     	ldrb	r0, [r9, r6]
  6264b8: ebf3a129     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x317b5c
  6264bc: e1a0100a     	mov	r1, r10
  6264c0: ebf3a229     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31775c
  6264c4: e1a01007     	mov	r1, r7
  6264c8: ebf3a1b5     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31792c
  6264cc: e7880005     	str	r0, [r8, r5]
  6264d0: e2855004     	add	r5, r5, #4
  6264d4: e3550010     	cmp	r5, #16
  6264d8: e2866001     	add	r6, r6, #1
  6264dc: 17987005     	ldrne	r7, [r8, r5]
  6264e0: 1afffff3     	bne	0x6264b4 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEE13getAddedValueEPvPfiSF_+0x54> @ imm = #-0x34
  6264e4: e2544001     	subs	r4, r4, #1
  6264e8: e28bb004     	add	r11, r11, #4
  6264ec: 159d7008     	ldrne	r7, [sp, #0x8]
  6264f0: 1affffe9     	bne	0x62649c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEE13getAddedValueEPvPfiSF_+0x3c> @ imm = #-0x5c
  6264f4: e59d0008     	ldr	r0, [sp, #0x8]
  6264f8: eb0a5f68     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x297da0
  6264fc: e59d4040     	ldr	r4, [sp, #0x40]
  626500: e4c40001     	strb	r0, [r4], #1
  626504: e59d000c     	ldr	r0, [sp, #0xc]
  626508: eb0a5f64     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x297d90
  62650c: e59d3040     	ldr	r3, [sp, #0x40]
  626510: e5c30001     	strb	r0, [r3, #0x1]
  626514: e59d0010     	ldr	r0, [sp, #0x10]
  626518: eb0a5f60     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x297d80
  62651c: e5c40001     	strb	r0, [r4, #0x1]
  626520: e59d0014     	ldr	r0, [sp, #0x14]
  626524: eb0a5f5d     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x297d74
  626528: e2844001     	add	r4, r4, #1
  62652c: e5c40001     	strb	r0, [r4, #0x1]
  626530: e28dd01c     	add	sp, sp, #28
  626534: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  626538: e59d2000     	ldr	r2, [sp]
  62653c: e59d3040     	ldr	r3, [sp, #0x40]
  626540: e4d21001     	ldrb	r1, [r2], #1
  626544: e4c31001     	strb	r1, [r3], #1
  626548: e59d0000     	ldr	r0, [sp]
  62654c: e5d01001     	ldrb	r1, [r0, #0x1]
  626550: e59d0040     	ldr	r0, [sp, #0x40]
  626554: e5c01001     	strb	r1, [r0, #0x1]
  626558: e5d21001     	ldrb	r1, [r2, #0x1]
  62655c: e5c31001     	strb	r1, [r3, #0x1]
  626560: e5d22002     	ldrb	r2, [r2, #0x2]
  626564: e5c32002     	strb	r2, [r3, #0x2]
  626568: eafffff0     	b	0x626530 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEE13getAddedValueEPvPfiSF_+0xd0> @ imm = #-0x40
  62656c: e1a00007     	mov	r0, r7
  626570: eaffffe0     	b	0x6264f8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi1EhEEEEE13getAddedValueEPvPfiSF_+0x98> @ imm = #-0x80

; FUNCTION 0x00626574 size=276 sha256=50d0370d21bba43f7626ff44ad3dcd112ef79645ea6b980f018e2cc284f226ad
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 2, unsigned char> > >::getAddedValue(void*, float*, int, void*) const
00626574 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEE13getAddedValueEPvPfiSF_>:
  626574: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  626578: e3530001     	cmp	r3, #1
  62657c: e24dd01c     	sub	sp, sp, #28
  626580: e1a04003     	mov	r4, r3
  626584: e88d0006     	stm	sp, {r1, r2}
  626588: 0a00002f     	beq	0x62664c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEE13getAddedValueEPvPfiSF_+0xd8> @ imm = #0xbc
  62658c: e3a07000     	mov	r7, #0
  626590: e3530000     	cmp	r3, #0
  626594: e58d7008     	str	r7, [sp, #0x8]
  626598: e58d700c     	str	r7, [sp, #0xc]
  62659c: e58d7010     	str	r7, [sp, #0x10]
  6265a0: e58d7014     	str	r7, [sp, #0x14]
  6265a4: 13a0b000     	movne	r11, #0
  6265a8: 128d8008     	addne	r8, sp, #8
  6265ac: 0a000033     	beq	0x626680 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEE13getAddedValueEPvPfiSF_+0x10c> @ imm = #0xcc
  6265b0: e59d0004     	ldr	r0, [sp, #0x4]
  6265b4: e59d3000     	ldr	r3, [sp]
  6265b8: e3a05000     	mov	r5, #0
  6265bc: e790a00b     	ldr	r10, [r0, r11]
  6265c0: e083900b     	add	r9, r3, r11
  6265c4: e1a06005     	mov	r6, r5
  6265c8: e7d90006     	ldrb	r0, [r9, r6]
  6265cc: ebf3a0e4     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x317c70
  6265d0: e1a0100a     	mov	r1, r10
  6265d4: ebf3a1e4     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x317870
  6265d8: e1a01007     	mov	r1, r7
  6265dc: ebf3a170     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x317a40
  6265e0: e7880005     	str	r0, [r8, r5]
  6265e4: e2855004     	add	r5, r5, #4
  6265e8: e3550010     	cmp	r5, #16
  6265ec: e2866001     	add	r6, r6, #1
  6265f0: 17987005     	ldrne	r7, [r8, r5]
  6265f4: 1afffff3     	bne	0x6265c8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEE13getAddedValueEPvPfiSF_+0x54> @ imm = #-0x34
  6265f8: e2544001     	subs	r4, r4, #1
  6265fc: e28bb004     	add	r11, r11, #4
  626600: 159d7008     	ldrne	r7, [sp, #0x8]
  626604: 1affffe9     	bne	0x6265b0 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEE13getAddedValueEPvPfiSF_+0x3c> @ imm = #-0x5c
  626608: e59d0008     	ldr	r0, [sp, #0x8]
  62660c: eb0a5f23     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x297c8c
  626610: e59d4040     	ldr	r4, [sp, #0x40]
  626614: e4c40001     	strb	r0, [r4], #1
  626618: e59d000c     	ldr	r0, [sp, #0xc]
  62661c: eb0a5f1f     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x297c7c
  626620: e59d3040     	ldr	r3, [sp, #0x40]
  626624: e5c30001     	strb	r0, [r3, #0x1]
  626628: e59d0010     	ldr	r0, [sp, #0x10]
  62662c: eb0a5f1b     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x297c6c
  626630: e5c40001     	strb	r0, [r4, #0x1]
  626634: e59d0014     	ldr	r0, [sp, #0x14]
  626638: eb0a5f18     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x297c60
  62663c: e2844001     	add	r4, r4, #1
  626640: e5c40001     	strb	r0, [r4, #0x1]
  626644: e28dd01c     	add	sp, sp, #28
  626648: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62664c: e59d2000     	ldr	r2, [sp]
  626650: e59d3040     	ldr	r3, [sp, #0x40]
  626654: e4d21001     	ldrb	r1, [r2], #1
  626658: e4c31001     	strb	r1, [r3], #1
  62665c: e59d0000     	ldr	r0, [sp]
  626660: e5d01001     	ldrb	r1, [r0, #0x1]
  626664: e59d0040     	ldr	r0, [sp, #0x40]
  626668: e5c01001     	strb	r1, [r0, #0x1]
  62666c: e5d21001     	ldrb	r1, [r2, #0x1]
  626670: e5c31001     	strb	r1, [r3, #0x1]
  626674: e5d22002     	ldrb	r2, [r2, #0x2]
  626678: e5c32002     	strb	r2, [r3, #0x2]
  62667c: eafffff0     	b	0x626644 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEE13getAddedValueEPvPfiSF_+0xd0> @ imm = #-0x40
  626680: e1a00007     	mov	r0, r7
  626684: eaffffe0     	b	0x62660c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi2EhEEEEE13getAddedValueEPvPfiSF_+0x98> @ imm = #-0x80

; FUNCTION 0x00626688 size=276 sha256=385f43523bebc2b4b8b6cc194bebbe8114d8c4af4b94ec6a6d41adcd198fb12b
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 3, unsigned char> > >::getAddedValue(void*, float*, int, void*) const
00626688 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEE13getAddedValueEPvPfiSF_>:
  626688: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62668c: e3530001     	cmp	r3, #1
  626690: e24dd01c     	sub	sp, sp, #28
  626694: e1a04003     	mov	r4, r3
  626698: e88d0006     	stm	sp, {r1, r2}
  62669c: 0a00002f     	beq	0x626760 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEE13getAddedValueEPvPfiSF_+0xd8> @ imm = #0xbc
  6266a0: e3a07000     	mov	r7, #0
  6266a4: e3530000     	cmp	r3, #0
  6266a8: e58d7008     	str	r7, [sp, #0x8]
  6266ac: e58d700c     	str	r7, [sp, #0xc]
  6266b0: e58d7010     	str	r7, [sp, #0x10]
  6266b4: e58d7014     	str	r7, [sp, #0x14]
  6266b8: 13a0b000     	movne	r11, #0
  6266bc: 128d8008     	addne	r8, sp, #8
  6266c0: 0a000033     	beq	0x626794 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEE13getAddedValueEPvPfiSF_+0x10c> @ imm = #0xcc
  6266c4: e59d0004     	ldr	r0, [sp, #0x4]
  6266c8: e59d3000     	ldr	r3, [sp]
  6266cc: e3a05000     	mov	r5, #0
  6266d0: e790a00b     	ldr	r10, [r0, r11]
  6266d4: e083900b     	add	r9, r3, r11
  6266d8: e1a06005     	mov	r6, r5
  6266dc: e7d90006     	ldrb	r0, [r9, r6]
  6266e0: ebf3a09f     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x317d84
  6266e4: e1a0100a     	mov	r1, r10
  6266e8: ebf3a19f     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x317984
  6266ec: e1a01007     	mov	r1, r7
  6266f0: ebf3a12b     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x317b54
  6266f4: e7880005     	str	r0, [r8, r5]
  6266f8: e2855004     	add	r5, r5, #4
  6266fc: e3550010     	cmp	r5, #16
  626700: e2866001     	add	r6, r6, #1
  626704: 17987005     	ldrne	r7, [r8, r5]
  626708: 1afffff3     	bne	0x6266dc <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEE13getAddedValueEPvPfiSF_+0x54> @ imm = #-0x34
  62670c: e2544001     	subs	r4, r4, #1
  626710: e28bb004     	add	r11, r11, #4
  626714: 159d7008     	ldrne	r7, [sp, #0x8]
  626718: 1affffe9     	bne	0x6266c4 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEE13getAddedValueEPvPfiSF_+0x3c> @ imm = #-0x5c
  62671c: e59d0008     	ldr	r0, [sp, #0x8]
  626720: eb0a5ede     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x297b78
  626724: e59d4040     	ldr	r4, [sp, #0x40]
  626728: e4c40001     	strb	r0, [r4], #1
  62672c: e59d000c     	ldr	r0, [sp, #0xc]
  626730: eb0a5eda     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x297b68
  626734: e59d3040     	ldr	r3, [sp, #0x40]
  626738: e5c30001     	strb	r0, [r3, #0x1]
  62673c: e59d0010     	ldr	r0, [sp, #0x10]
  626740: eb0a5ed6     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x297b58
  626744: e5c40001     	strb	r0, [r4, #0x1]
  626748: e59d0014     	ldr	r0, [sp, #0x14]
  62674c: eb0a5ed3     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x297b4c
  626750: e2844001     	add	r4, r4, #1
  626754: e5c40001     	strb	r0, [r4, #0x1]
  626758: e28dd01c     	add	sp, sp, #28
  62675c: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  626760: e59d2000     	ldr	r2, [sp]
  626764: e59d3040     	ldr	r3, [sp, #0x40]
  626768: e4d21001     	ldrb	r1, [r2], #1
  62676c: e4c31001     	strb	r1, [r3], #1
  626770: e59d0000     	ldr	r0, [sp]
  626774: e5d01001     	ldrb	r1, [r0, #0x1]
  626778: e59d0040     	ldr	r0, [sp, #0x40]
  62677c: e5c01001     	strb	r1, [r0, #0x1]
  626780: e5d21001     	ldrb	r1, [r2, #0x1]
  626784: e5c31001     	strb	r1, [r3, #0x1]
  626788: e5d22002     	ldrb	r2, [r2, #0x2]
  62678c: e5c32002     	strb	r2, [r3, #0x2]
  626790: eafffff0     	b	0x626758 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEE13getAddedValueEPvPfiSF_+0xd0> @ imm = #-0x40
  626794: e1a00007     	mov	r0, r7
  626798: eaffffe0     	b	0x626720 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELi3EhEEEEE13getAddedValueEPvPfiSF_+0x98> @ imm = #-0x80

; FUNCTION 0x0062679c size=276 sha256=568878305b373393d608978415f20eefa7a08b5c29b967f52645c403111478ae
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, -1, unsigned char> > >::getAddedValue(void*, float*, int, void*) const
0062679c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE13getAddedValueEPvPfiSF_>:
  62679c: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  6267a0: e3530001     	cmp	r3, #1
  6267a4: e24dd01c     	sub	sp, sp, #28
  6267a8: e1a04003     	mov	r4, r3
  6267ac: e88d0006     	stm	sp, {r1, r2}
  6267b0: 0a00002f     	beq	0x626874 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE13getAddedValueEPvPfiSF_+0xd8> @ imm = #0xbc
  6267b4: e3a07000     	mov	r7, #0
  6267b8: e3530000     	cmp	r3, #0
  6267bc: e58d7008     	str	r7, [sp, #0x8]
  6267c0: e58d700c     	str	r7, [sp, #0xc]
  6267c4: e58d7010     	str	r7, [sp, #0x10]
  6267c8: e58d7014     	str	r7, [sp, #0x14]
  6267cc: 13a0b000     	movne	r11, #0
  6267d0: 128d8008     	addne	r8, sp, #8
  6267d4: 0a000033     	beq	0x6268a8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE13getAddedValueEPvPfiSF_+0x10c> @ imm = #0xcc
  6267d8: e59d0004     	ldr	r0, [sp, #0x4]
  6267dc: e59d3000     	ldr	r3, [sp]
  6267e0: e3a05000     	mov	r5, #0
  6267e4: e790a00b     	ldr	r10, [r0, r11]
  6267e8: e083900b     	add	r9, r3, r11
  6267ec: e1a06005     	mov	r6, r5
  6267f0: e7d90006     	ldrb	r0, [r9, r6]
  6267f4: ebf3a05a     	bl	0x30e964 <__aeabi_i2f@plt> @ imm = #-0x317e98
  6267f8: e1a0100a     	mov	r1, r10
  6267fc: ebf3a15a     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x317a98
  626800: e1a01007     	mov	r1, r7
  626804: ebf3a0e6     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x317c68
  626808: e7880005     	str	r0, [r8, r5]
  62680c: e2855004     	add	r5, r5, #4
  626810: e3550010     	cmp	r5, #16
  626814: e2866001     	add	r6, r6, #1
  626818: 17987005     	ldrne	r7, [r8, r5]
  62681c: 1afffff3     	bne	0x6267f0 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE13getAddedValueEPvPfiSF_+0x54> @ imm = #-0x34
  626820: e2544001     	subs	r4, r4, #1
  626824: e28bb004     	add	r11, r11, #4
  626828: 159d7008     	ldrne	r7, [sp, #0x8]
  62682c: 1affffe9     	bne	0x6267d8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE13getAddedValueEPvPfiSF_+0x3c> @ imm = #-0x5c
  626830: e59d0008     	ldr	r0, [sp, #0x8]
  626834: eb0a5e99     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x297a64
  626838: e59d4040     	ldr	r4, [sp, #0x40]
  62683c: e4c40001     	strb	r0, [r4], #1
  626840: e59d000c     	ldr	r0, [sp, #0xc]
  626844: eb0a5e95     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x297a54
  626848: e59d3040     	ldr	r3, [sp, #0x40]
  62684c: e5c30001     	strb	r0, [r3, #0x1]
  626850: e59d0010     	ldr	r0, [sp, #0x10]
  626854: eb0a5e91     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x297a44
  626858: e5c40001     	strb	r0, [r4, #0x1]
  62685c: e59d0014     	ldr	r0, [sp, #0x14]
  626860: eb0a5e8e     	bl	0x8be2a0 <__fixunssfsi> @ imm = #0x297a38
  626864: e2844001     	add	r4, r4, #1
  626868: e5c40001     	strb	r0, [r4, #0x1]
  62686c: e28dd01c     	add	sp, sp, #28
  626870: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  626874: e59d2000     	ldr	r2, [sp]
  626878: e59d3040     	ldr	r3, [sp, #0x40]
  62687c: e4d21001     	ldrb	r1, [r2], #1
  626880: e4c31001     	strb	r1, [r3], #1
  626884: e59d0000     	ldr	r0, [sp]
  626888: e5d01001     	ldrb	r1, [r0, #0x1]
  62688c: e59d0040     	ldr	r0, [sp, #0x40]
  626890: e5c01001     	strb	r1, [r0, #0x1]
  626894: e5d21001     	ldrb	r1, [r2, #0x1]
  626898: e5c31001     	strb	r1, [r3, #0x1]
  62689c: e5d22002     	ldrb	r2, [r2, #0x2]
  6268a0: e5c32002     	strb	r2, [r3, #0x2]
  6268a4: eafffff0     	b	0x62686c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE13getAddedValueEPvPfiSF_+0xd0> @ imm = #-0x40
  6268a8: e1a00007     	mov	r0, r7
  6268ac: eaffffe0     	b	0x626834 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_NS_5video6SColorEEEEELin1EhEEEEE13getAddedValueEPvPfiSF_+0x98> @ imm = #-0x80

; FUNCTION 0x00626a38 size=248 sha256=e88ecd83d0d000dfda1f0c336ffb0a9389eb177499de17ce20f369040df83c3c
; symbols: glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, -1, float> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
00626a38 <_ZN6glitch7collada15animation_track13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELin1EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE>:
  626a38: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  626a3c: e3520001     	cmp	r2, #1
  626a40: e24dd01c     	sub	sp, sp, #28
  626a44: e1a04002     	mov	r4, r2
  626a48: e1a05001     	mov	r5, r1
  626a4c: e58d3004     	str	r3, [sp, #0x4]
  626a50: 0a00002e     	beq	0x626b10 <_ZN6glitch7collada15animation_track13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELin1EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xd8> @ imm = #0xb8
  626a54: e3520000     	cmp	r2, #0
  626a58: 03a0a000     	moveq	r10, #0
  626a5c: 01a0b00a     	moveq	r11, r10
  626a60: 01a0900a     	moveq	r9, r10
  626a64: 0a00001e     	beq	0x626ae4 <_ZN6glitch7collada15animation_track13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELin1EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xac> @ imm = #0x78
  626a68: e3a0a000     	mov	r10, #0
  626a6c: e1a06000     	mov	r6, r0
  626a70: e3a08000     	mov	r8, #0
  626a74: e1a0b00a     	mov	r11, r10
  626a78: e1a0900a     	mov	r9, r10
  626a7c: e7957008     	ldr	r7, [r5, r8]
  626a80: e5961000     	ldr	r1, [r6]
  626a84: e2888004     	add	r8, r8, #4
  626a88: e1a00007     	mov	r0, r7
  626a8c: ebf3a0b6     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x317d28
  626a90: e1a01000     	mov	r1, r0
  626a94: e1a0000a     	mov	r0, r10
  626a98: ebf3a041     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x317efc
  626a9c: e5961004     	ldr	r1, [r6, #0x4]
  626aa0: e1a0a000     	mov	r10, r0
  626aa4: e1a00007     	mov	r0, r7
  626aa8: ebf3a0af     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x317d44
  626aac: e1a01000     	mov	r1, r0
  626ab0: e1a0000b     	mov	r0, r11
  626ab4: ebf3a03a     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x317f18
  626ab8: e5961008     	ldr	r1, [r6, #0x8]
  626abc: e1a0b000     	mov	r11, r0
  626ac0: e1a00007     	mov	r0, r7
  626ac4: ebf3a0a8     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x317d60
  626ac8: e1a01000     	mov	r1, r0
  626acc: e1a00009     	mov	r0, r9
  626ad0: ebf3a033     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x317f34
  626ad4: e2544001     	subs	r4, r4, #1
  626ad8: e1a09000     	mov	r9, r0
  626adc: e286600c     	add	r6, r6, #12
  626ae0: 1affffe5     	bne	0x626a7c <_ZN6glitch7collada15animation_track13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELin1EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x44> @ imm = #-0x6c
  626ae4: e58da00c     	str	r10, [sp, #0xc]
  626ae8: e58db010     	str	r11, [sp, #0x10]
  626aec: e58d9014     	str	r9, [sp, #0x14]
  626af0: e59d3040     	ldr	r3, [sp, #0x40]
  626af4: e59d0004     	ldr	r0, [sp, #0x4]
  626af8: e3a02000     	mov	r2, #0
  626afc: e1d310b8     	ldrh	r1, [r3, #8]
  626b00: e28d300c     	add	r3, sp, #12
  626b04: ebfe808a     	bl	0x5c6d34 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector3dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_> @ imm = #-0x5fdd8
  626b08: e28dd01c     	add	sp, sp, #28
  626b0c: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  626b10: e1a03000     	mov	r3, r0
  626b14: e4931004     	ldr	r1, [r3], #4
  626b18: e5902004     	ldr	r2, [r0, #0x4]
  626b1c: e5933004     	ldr	r3, [r3, #0x4]
  626b20: e58d100c     	str	r1, [sp, #0xc]
  626b24: e58d2010     	str	r2, [sp, #0x10]
  626b28: e58d3014     	str	r3, [sp, #0x14]
  626b2c: eaffffef     	b	0x626af0 <_ZN6glitch7collada15animation_track13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELin1EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xb8> @ imm = #-0x44

; FUNCTION 0x00626b30 size=28 sha256=e7ecfdacaee34dd6f39b726dc7b5ffcc3adf55e2c7037d1df0d3033e53eb0543
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, -1, float> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
00626b30 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  626b30: e1a00001     	mov	r0, r1
  626b34: e59dc004     	ldr	r12, [sp, #0x4]
  626b38: e1a01002     	mov	r1, r2
  626b3c: e1a02003     	mov	r2, r3
  626b40: e59d3000     	ldr	r3, [sp]
  626b44: e58dc000     	str	r12, [sp]
  626b48: eaffffba     	b	0x626a38 <_ZN6glitch7collada15animation_track13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELin1EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE> @ imm = #-0x118

; FUNCTION 0x00626df8 size=228 sha256=e4f315523574a22b129304ca0d3f02827d51474b38225a787d5a262aa6518e29
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float> > >::getBlendedValue(void*, float*, int, void*) const
00626df8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIfEELi0EfEEEEE15getBlendedValueEPvPfiSD_>:
  626df8: e3530001     	cmp	r3, #1
  626dfc: e92d4ff8     	push	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
  626e00: e1a04003     	mov	r4, r3
  626e04: e1a0b002     	mov	r11, r2
  626e08: 0a000029     	beq	0x626eb4 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIfEELi0EfEEEEE15getBlendedValueEPvPfiSD_+0xbc> @ imm = #0xa4
  626e0c: e3530000     	cmp	r3, #0
  626e10: 03a08000     	moveq	r8, #0
  626e14: 01a09008     	moveq	r9, r8
  626e18: 01a0a008     	moveq	r10, r8
  626e1c: 0a00001e     	beq	0x626e9c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIfEELi0EfEEEEE15getBlendedValueEPvPfiSD_+0xa4> @ imm = #0x78
  626e20: e3a08000     	mov	r8, #0
  626e24: e1a05001     	mov	r5, r1
  626e28: e3a07000     	mov	r7, #0
  626e2c: e1a09008     	mov	r9, r8
  626e30: e1a0a008     	mov	r10, r8
  626e34: e79b6007     	ldr	r6, [r11, r7]
  626e38: e5951000     	ldr	r1, [r5]
  626e3c: e2877004     	add	r7, r7, #4
  626e40: e1a00006     	mov	r0, r6
  626e44: ebf39fc8     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3180e0
  626e48: e1a01000     	mov	r1, r0
  626e4c: e1a00008     	mov	r0, r8
  626e50: ebf39f53     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x3182b4
  626e54: e5951004     	ldr	r1, [r5, #0x4]
  626e58: e1a08000     	mov	r8, r0
  626e5c: e1a00006     	mov	r0, r6
  626e60: ebf39fc1     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3180fc
  626e64: e1a01000     	mov	r1, r0
  626e68: e1a00009     	mov	r0, r9
  626e6c: ebf39f4c     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x3182d0
  626e70: e5951008     	ldr	r1, [r5, #0x8]
  626e74: e1a09000     	mov	r9, r0
  626e78: e1a00006     	mov	r0, r6
  626e7c: ebf39fba     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x318118
  626e80: e1a01000     	mov	r1, r0
  626e84: e1a0000a     	mov	r0, r10
  626e88: ebf39f45     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x3182ec
  626e8c: e2544001     	subs	r4, r4, #1
  626e90: e1a0a000     	mov	r10, r0
  626e94: e285500c     	add	r5, r5, #12
  626e98: 1affffe5     	bne	0x626e34 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIfEELi0EfEEEEE15getBlendedValueEPvPfiSD_+0x3c> @ imm = #-0x6c
  626e9c: e59d3028     	ldr	r3, [sp, #0x28]
  626ea0: e4838004     	str	r8, [r3], #4
  626ea4: e59d2028     	ldr	r2, [sp, #0x28]
  626ea8: e5829004     	str	r9, [r2, #0x4]
  626eac: e583a004     	str	r10, [r3, #0x4]
  626eb0: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
  626eb4: e1a02001     	mov	r2, r1
  626eb8: e4920004     	ldr	r0, [r2], #4
  626ebc: e59d3028     	ldr	r3, [sp, #0x28]
  626ec0: e4830004     	str	r0, [r3], #4
  626ec4: e5911004     	ldr	r1, [r1, #0x4]
  626ec8: e59d0028     	ldr	r0, [sp, #0x28]
  626ecc: e5801004     	str	r1, [r0, #0x4]
  626ed0: e5922004     	ldr	r2, [r2, #0x4]
  626ed4: e5832004     	str	r2, [r3, #0x4]
  626ed8: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}

; FUNCTION 0x00626edc size=228 sha256=60ac9bca1d8ed866a8f3886b65fd17cdd67e0f6a986100375783d8442542ae94
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short> > >::getBlendedValue(void*, float*, int, void*) const
00626edc <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIsEELi0EsEEEEE15getBlendedValueEPvPfiSD_>:
  626edc: e3530001     	cmp	r3, #1
  626ee0: e92d4ff8     	push	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
  626ee4: e1a04003     	mov	r4, r3
  626ee8: e1a0b002     	mov	r11, r2
  626eec: 0a000029     	beq	0x626f98 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIsEELi0EsEEEEE15getBlendedValueEPvPfiSD_+0xbc> @ imm = #0xa4
  626ef0: e3530000     	cmp	r3, #0
  626ef4: 03a08000     	moveq	r8, #0
  626ef8: 01a09008     	moveq	r9, r8
  626efc: 01a0a008     	moveq	r10, r8
  626f00: 0a00001e     	beq	0x626f80 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIsEELi0EsEEEEE15getBlendedValueEPvPfiSD_+0xa4> @ imm = #0x78
  626f04: e3a08000     	mov	r8, #0
  626f08: e1a05001     	mov	r5, r1
  626f0c: e3a07000     	mov	r7, #0
  626f10: e1a09008     	mov	r9, r8
  626f14: e1a0a008     	mov	r10, r8
  626f18: e79b6007     	ldr	r6, [r11, r7]
  626f1c: e5951000     	ldr	r1, [r5]
  626f20: e2877004     	add	r7, r7, #4
  626f24: e1a00006     	mov	r0, r6
  626f28: ebf39f8f     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3181c4
  626f2c: e1a01000     	mov	r1, r0
  626f30: e1a00008     	mov	r0, r8
  626f34: ebf39f1a     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x318398
  626f38: e5951004     	ldr	r1, [r5, #0x4]
  626f3c: e1a08000     	mov	r8, r0
  626f40: e1a00006     	mov	r0, r6
  626f44: ebf39f88     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3181e0
  626f48: e1a01000     	mov	r1, r0
  626f4c: e1a00009     	mov	r0, r9
  626f50: ebf39f13     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x3183b4
  626f54: e5951008     	ldr	r1, [r5, #0x8]
  626f58: e1a09000     	mov	r9, r0
  626f5c: e1a00006     	mov	r0, r6
  626f60: ebf39f81     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3181fc
  626f64: e1a01000     	mov	r1, r0
  626f68: e1a0000a     	mov	r0, r10
  626f6c: ebf39f0c     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x3183d0
  626f70: e2544001     	subs	r4, r4, #1
  626f74: e1a0a000     	mov	r10, r0
  626f78: e285500c     	add	r5, r5, #12
  626f7c: 1affffe5     	bne	0x626f18 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIsEELi0EsEEEEE15getBlendedValueEPvPfiSD_+0x3c> @ imm = #-0x6c
  626f80: e59d3028     	ldr	r3, [sp, #0x28]
  626f84: e4838004     	str	r8, [r3], #4
  626f88: e59d2028     	ldr	r2, [sp, #0x28]
  626f8c: e5829004     	str	r9, [r2, #0x4]
  626f90: e583a004     	str	r10, [r3, #0x4]
  626f94: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
  626f98: e1a02001     	mov	r2, r1
  626f9c: e4920004     	ldr	r0, [r2], #4
  626fa0: e59d3028     	ldr	r3, [sp, #0x28]
  626fa4: e4830004     	str	r0, [r3], #4
  626fa8: e5911004     	ldr	r1, [r1, #0x4]
  626fac: e59d0028     	ldr	r0, [sp, #0x28]
  626fb0: e5801004     	str	r1, [r0, #0x4]
  626fb4: e5922004     	ldr	r2, [r2, #0x4]
  626fb8: e5832004     	str	r2, [r3, #0x4]
  626fbc: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}

; FUNCTION 0x00626fc0 size=228 sha256=a756c6f0a28f79f4dd3a92750a49b03d0ef4fd3bb74a48fffe62e57492475871
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char> > >::getBlendedValue(void*, float*, int, void*) const
00626fc0 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIcEELi0EcEEEEE15getBlendedValueEPvPfiSD_>:
  626fc0: e3530001     	cmp	r3, #1
  626fc4: e92d4ff8     	push	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
  626fc8: e1a04003     	mov	r4, r3
  626fcc: e1a0b002     	mov	r11, r2
  626fd0: 0a000029     	beq	0x62707c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIcEELi0EcEEEEE15getBlendedValueEPvPfiSD_+0xbc> @ imm = #0xa4
  626fd4: e3530000     	cmp	r3, #0
  626fd8: 03a08000     	moveq	r8, #0
  626fdc: 01a09008     	moveq	r9, r8
  626fe0: 01a0a008     	moveq	r10, r8
  626fe4: 0a00001e     	beq	0x627064 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIcEELi0EcEEEEE15getBlendedValueEPvPfiSD_+0xa4> @ imm = #0x78
  626fe8: e3a08000     	mov	r8, #0
  626fec: e1a05001     	mov	r5, r1
  626ff0: e3a07000     	mov	r7, #0
  626ff4: e1a09008     	mov	r9, r8
  626ff8: e1a0a008     	mov	r10, r8
  626ffc: e79b6007     	ldr	r6, [r11, r7]
  627000: e5951000     	ldr	r1, [r5]
  627004: e2877004     	add	r7, r7, #4
  627008: e1a00006     	mov	r0, r6
  62700c: ebf39f56     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3182a8
  627010: e1a01000     	mov	r1, r0
  627014: e1a00008     	mov	r0, r8
  627018: ebf39ee1     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31847c
  62701c: e5951004     	ldr	r1, [r5, #0x4]
  627020: e1a08000     	mov	r8, r0
  627024: e1a00006     	mov	r0, r6
  627028: ebf39f4f     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3182c4
  62702c: e1a01000     	mov	r1, r0
  627030: e1a00009     	mov	r0, r9
  627034: ebf39eda     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x318498
  627038: e5951008     	ldr	r1, [r5, #0x8]
  62703c: e1a09000     	mov	r9, r0
  627040: e1a00006     	mov	r0, r6
  627044: ebf39f48     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3182e0
  627048: e1a01000     	mov	r1, r0
  62704c: e1a0000a     	mov	r0, r10
  627050: ebf39ed3     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x3184b4
  627054: e2544001     	subs	r4, r4, #1
  627058: e1a0a000     	mov	r10, r0
  62705c: e285500c     	add	r5, r5, #12
  627060: 1affffe5     	bne	0x626ffc <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIcEELi0EcEEEEE15getBlendedValueEPvPfiSD_+0x3c> @ imm = #-0x6c
  627064: e59d3028     	ldr	r3, [sp, #0x28]
  627068: e4838004     	str	r8, [r3], #4
  62706c: e59d2028     	ldr	r2, [sp, #0x28]
  627070: e5829004     	str	r9, [r2, #0x4]
  627074: e583a004     	str	r10, [r3, #0x4]
  627078: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62707c: e1a02001     	mov	r2, r1
  627080: e4920004     	ldr	r0, [r2], #4
  627084: e59d3028     	ldr	r3, [sp, #0x28]
  627088: e4830004     	str	r0, [r3], #4
  62708c: e5911004     	ldr	r1, [r1, #0x4]
  627090: e59d0028     	ldr	r0, [sp, #0x28]
  627094: e5801004     	str	r1, [r0, #0x4]
  627098: e5922004     	ldr	r2, [r2, #0x4]
  62709c: e5832004     	str	r2, [r3, #0x4]
  6270a0: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}

; FUNCTION 0x006270a4 size=228 sha256=94be590c40003ec849e0dd2f8922e5c0f0c990683435d7777713a90fb70ece44
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float> > >::getBlendedValue(void*, float*, int, void*) const
006270a4 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIfEELi1EfEEEEE15getBlendedValueEPvPfiSD_>:
  6270a4: e3530001     	cmp	r3, #1
  6270a8: e92d4ff8     	push	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
  6270ac: e1a04003     	mov	r4, r3
  6270b0: e1a0b002     	mov	r11, r2
  6270b4: 0a000029     	beq	0x627160 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIfEELi1EfEEEEE15getBlendedValueEPvPfiSD_+0xbc> @ imm = #0xa4
  6270b8: e3530000     	cmp	r3, #0
  6270bc: 03a08000     	moveq	r8, #0
  6270c0: 01a09008     	moveq	r9, r8
  6270c4: 01a0a008     	moveq	r10, r8
  6270c8: 0a00001e     	beq	0x627148 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIfEELi1EfEEEEE15getBlendedValueEPvPfiSD_+0xa4> @ imm = #0x78
  6270cc: e3a08000     	mov	r8, #0
  6270d0: e1a05001     	mov	r5, r1
  6270d4: e3a07000     	mov	r7, #0
  6270d8: e1a09008     	mov	r9, r8
  6270dc: e1a0a008     	mov	r10, r8
  6270e0: e79b6007     	ldr	r6, [r11, r7]
  6270e4: e5951000     	ldr	r1, [r5]
  6270e8: e2877004     	add	r7, r7, #4
  6270ec: e1a00006     	mov	r0, r6
  6270f0: ebf39f1d     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31838c
  6270f4: e1a01000     	mov	r1, r0
  6270f8: e1a00008     	mov	r0, r8
  6270fc: ebf39ea8     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x318560
  627100: e5951004     	ldr	r1, [r5, #0x4]
  627104: e1a08000     	mov	r8, r0
  627108: e1a00006     	mov	r0, r6
  62710c: ebf39f16     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3183a8
  627110: e1a01000     	mov	r1, r0
  627114: e1a00009     	mov	r0, r9
  627118: ebf39ea1     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31857c
  62711c: e5951008     	ldr	r1, [r5, #0x8]
  627120: e1a09000     	mov	r9, r0
  627124: e1a00006     	mov	r0, r6
  627128: ebf39f0f     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3183c4
  62712c: e1a01000     	mov	r1, r0
  627130: e1a0000a     	mov	r0, r10
  627134: ebf39e9a     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x318598
  627138: e2544001     	subs	r4, r4, #1
  62713c: e1a0a000     	mov	r10, r0
  627140: e285500c     	add	r5, r5, #12
  627144: 1affffe5     	bne	0x6270e0 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIfEELi1EfEEEEE15getBlendedValueEPvPfiSD_+0x3c> @ imm = #-0x6c
  627148: e59d3028     	ldr	r3, [sp, #0x28]
  62714c: e4838004     	str	r8, [r3], #4
  627150: e59d2028     	ldr	r2, [sp, #0x28]
  627154: e5829004     	str	r9, [r2, #0x4]
  627158: e583a004     	str	r10, [r3, #0x4]
  62715c: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
  627160: e1a02001     	mov	r2, r1
  627164: e4920004     	ldr	r0, [r2], #4
  627168: e59d3028     	ldr	r3, [sp, #0x28]
  62716c: e4830004     	str	r0, [r3], #4
  627170: e5911004     	ldr	r1, [r1, #0x4]
  627174: e59d0028     	ldr	r0, [sp, #0x28]
  627178: e5801004     	str	r1, [r0, #0x4]
  62717c: e5922004     	ldr	r2, [r2, #0x4]
  627180: e5832004     	str	r2, [r3, #0x4]
  627184: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}

; FUNCTION 0x00627188 size=228 sha256=f6595e725f5a2ea00fb07002be1ca9c983f34b08c1a238f2edc483bdde5b1b27
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short> > >::getBlendedValue(void*, float*, int, void*) const
00627188 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIsEELi1EsEEEEE15getBlendedValueEPvPfiSD_>:
  627188: e3530001     	cmp	r3, #1
  62718c: e92d4ff8     	push	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
  627190: e1a04003     	mov	r4, r3
  627194: e1a0b002     	mov	r11, r2
  627198: 0a000029     	beq	0x627244 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIsEELi1EsEEEEE15getBlendedValueEPvPfiSD_+0xbc> @ imm = #0xa4
  62719c: e3530000     	cmp	r3, #0
  6271a0: 03a08000     	moveq	r8, #0
  6271a4: 01a09008     	moveq	r9, r8
  6271a8: 01a0a008     	moveq	r10, r8
  6271ac: 0a00001e     	beq	0x62722c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIsEELi1EsEEEEE15getBlendedValueEPvPfiSD_+0xa4> @ imm = #0x78
  6271b0: e3a08000     	mov	r8, #0
  6271b4: e1a05001     	mov	r5, r1
  6271b8: e3a07000     	mov	r7, #0
  6271bc: e1a09008     	mov	r9, r8
  6271c0: e1a0a008     	mov	r10, r8
  6271c4: e79b6007     	ldr	r6, [r11, r7]
  6271c8: e5951000     	ldr	r1, [r5]
  6271cc: e2877004     	add	r7, r7, #4
  6271d0: e1a00006     	mov	r0, r6
  6271d4: ebf39ee4     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x318470
  6271d8: e1a01000     	mov	r1, r0
  6271dc: e1a00008     	mov	r0, r8
  6271e0: ebf39e6f     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x318644
  6271e4: e5951004     	ldr	r1, [r5, #0x4]
  6271e8: e1a08000     	mov	r8, r0
  6271ec: e1a00006     	mov	r0, r6
  6271f0: ebf39edd     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31848c
  6271f4: e1a01000     	mov	r1, r0
  6271f8: e1a00009     	mov	r0, r9
  6271fc: ebf39e68     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x318660
  627200: e5951008     	ldr	r1, [r5, #0x8]
  627204: e1a09000     	mov	r9, r0
  627208: e1a00006     	mov	r0, r6
  62720c: ebf39ed6     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3184a8
  627210: e1a01000     	mov	r1, r0
  627214: e1a0000a     	mov	r0, r10
  627218: ebf39e61     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31867c
  62721c: e2544001     	subs	r4, r4, #1
  627220: e1a0a000     	mov	r10, r0
  627224: e285500c     	add	r5, r5, #12
  627228: 1affffe5     	bne	0x6271c4 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIsEELi1EsEEEEE15getBlendedValueEPvPfiSD_+0x3c> @ imm = #-0x6c
  62722c: e59d3028     	ldr	r3, [sp, #0x28]
  627230: e4838004     	str	r8, [r3], #4
  627234: e59d2028     	ldr	r2, [sp, #0x28]
  627238: e5829004     	str	r9, [r2, #0x4]
  62723c: e583a004     	str	r10, [r3, #0x4]
  627240: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
  627244: e1a02001     	mov	r2, r1
  627248: e4920004     	ldr	r0, [r2], #4
  62724c: e59d3028     	ldr	r3, [sp, #0x28]
  627250: e4830004     	str	r0, [r3], #4
  627254: e5911004     	ldr	r1, [r1, #0x4]
  627258: e59d0028     	ldr	r0, [sp, #0x28]
  62725c: e5801004     	str	r1, [r0, #0x4]
  627260: e5922004     	ldr	r2, [r2, #0x4]
  627264: e5832004     	str	r2, [r3, #0x4]
  627268: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}

; FUNCTION 0x0062726c size=228 sha256=4f66084c9a432028b2d830153275c58af4fd1d2c46fea177b86168483eb3fd05
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char> > >::getBlendedValue(void*, float*, int, void*) const
0062726c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIcEELi1EcEEEEE15getBlendedValueEPvPfiSD_>:
  62726c: e3530001     	cmp	r3, #1
  627270: e92d4ff8     	push	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
  627274: e1a04003     	mov	r4, r3
  627278: e1a0b002     	mov	r11, r2
  62727c: 0a000029     	beq	0x627328 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIcEELi1EcEEEEE15getBlendedValueEPvPfiSD_+0xbc> @ imm = #0xa4
  627280: e3530000     	cmp	r3, #0
  627284: 03a08000     	moveq	r8, #0
  627288: 01a09008     	moveq	r9, r8
  62728c: 01a0a008     	moveq	r10, r8
  627290: 0a00001e     	beq	0x627310 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIcEELi1EcEEEEE15getBlendedValueEPvPfiSD_+0xa4> @ imm = #0x78
  627294: e3a08000     	mov	r8, #0
  627298: e1a05001     	mov	r5, r1
  62729c: e3a07000     	mov	r7, #0
  6272a0: e1a09008     	mov	r9, r8
  6272a4: e1a0a008     	mov	r10, r8
  6272a8: e79b6007     	ldr	r6, [r11, r7]
  6272ac: e5951000     	ldr	r1, [r5]
  6272b0: e2877004     	add	r7, r7, #4
  6272b4: e1a00006     	mov	r0, r6
  6272b8: ebf39eab     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x318554
  6272bc: e1a01000     	mov	r1, r0
  6272c0: e1a00008     	mov	r0, r8
  6272c4: ebf39e36     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x318728
  6272c8: e5951004     	ldr	r1, [r5, #0x4]
  6272cc: e1a08000     	mov	r8, r0
  6272d0: e1a00006     	mov	r0, r6
  6272d4: ebf39ea4     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x318570
  6272d8: e1a01000     	mov	r1, r0
  6272dc: e1a00009     	mov	r0, r9
  6272e0: ebf39e2f     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x318744
  6272e4: e5951008     	ldr	r1, [r5, #0x8]
  6272e8: e1a09000     	mov	r9, r0
  6272ec: e1a00006     	mov	r0, r6
  6272f0: ebf39e9d     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31858c
  6272f4: e1a01000     	mov	r1, r0
  6272f8: e1a0000a     	mov	r0, r10
  6272fc: ebf39e28     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x318760
  627300: e2544001     	subs	r4, r4, #1
  627304: e1a0a000     	mov	r10, r0
  627308: e285500c     	add	r5, r5, #12
  62730c: 1affffe5     	bne	0x6272a8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIcEELi1EcEEEEE15getBlendedValueEPvPfiSD_+0x3c> @ imm = #-0x6c
  627310: e59d3028     	ldr	r3, [sp, #0x28]
  627314: e4838004     	str	r8, [r3], #4
  627318: e59d2028     	ldr	r2, [sp, #0x28]
  62731c: e5829004     	str	r9, [r2, #0x4]
  627320: e583a004     	str	r10, [r3, #0x4]
  627324: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
  627328: e1a02001     	mov	r2, r1
  62732c: e4920004     	ldr	r0, [r2], #4
  627330: e59d3028     	ldr	r3, [sp, #0x28]
  627334: e4830004     	str	r0, [r3], #4
  627338: e5911004     	ldr	r1, [r1, #0x4]
  62733c: e59d0028     	ldr	r0, [sp, #0x28]
  627340: e5801004     	str	r1, [r0, #0x4]
  627344: e5922004     	ldr	r2, [r2, #0x4]
  627348: e5832004     	str	r2, [r3, #0x4]
  62734c: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}

; FUNCTION 0x00627350 size=228 sha256=12ee7283084e34a4ee223bfbeffa313886ef7a823ce25676f1f5ca54ff046207
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float> > >::getBlendedValue(void*, float*, int, void*) const
00627350 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIfEELi2EfEEEEE15getBlendedValueEPvPfiSD_>:
  627350: e3530001     	cmp	r3, #1
  627354: e92d4ff8     	push	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
  627358: e1a04003     	mov	r4, r3
  62735c: e1a0b002     	mov	r11, r2
  627360: 0a000029     	beq	0x62740c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIfEELi2EfEEEEE15getBlendedValueEPvPfiSD_+0xbc> @ imm = #0xa4
  627364: e3530000     	cmp	r3, #0
  627368: 03a08000     	moveq	r8, #0
  62736c: 01a09008     	moveq	r9, r8
  627370: 01a0a008     	moveq	r10, r8
  627374: 0a00001e     	beq	0x6273f4 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIfEELi2EfEEEEE15getBlendedValueEPvPfiSD_+0xa4> @ imm = #0x78
  627378: e3a08000     	mov	r8, #0
  62737c: e1a05001     	mov	r5, r1
  627380: e3a07000     	mov	r7, #0
  627384: e1a09008     	mov	r9, r8
  627388: e1a0a008     	mov	r10, r8
  62738c: e79b6007     	ldr	r6, [r11, r7]
  627390: e5951000     	ldr	r1, [r5]
  627394: e2877004     	add	r7, r7, #4
  627398: e1a00006     	mov	r0, r6
  62739c: ebf39e72     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x318638
  6273a0: e1a01000     	mov	r1, r0
  6273a4: e1a00008     	mov	r0, r8
  6273a8: ebf39dfd     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31880c
  6273ac: e5951004     	ldr	r1, [r5, #0x4]
  6273b0: e1a08000     	mov	r8, r0
  6273b4: e1a00006     	mov	r0, r6
  6273b8: ebf39e6b     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x318654
  6273bc: e1a01000     	mov	r1, r0
  6273c0: e1a00009     	mov	r0, r9
  6273c4: ebf39df6     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x318828
  6273c8: e5951008     	ldr	r1, [r5, #0x8]
  6273cc: e1a09000     	mov	r9, r0
  6273d0: e1a00006     	mov	r0, r6
  6273d4: ebf39e64     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x318670
  6273d8: e1a01000     	mov	r1, r0
  6273dc: e1a0000a     	mov	r0, r10
  6273e0: ebf39def     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x318844
  6273e4: e2544001     	subs	r4, r4, #1
  6273e8: e1a0a000     	mov	r10, r0
  6273ec: e285500c     	add	r5, r5, #12
  6273f0: 1affffe5     	bne	0x62738c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIfEELi2EfEEEEE15getBlendedValueEPvPfiSD_+0x3c> @ imm = #-0x6c
  6273f4: e59d3028     	ldr	r3, [sp, #0x28]
  6273f8: e4838004     	str	r8, [r3], #4
  6273fc: e59d2028     	ldr	r2, [sp, #0x28]
  627400: e5829004     	str	r9, [r2, #0x4]
  627404: e583a004     	str	r10, [r3, #0x4]
  627408: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62740c: e1a02001     	mov	r2, r1
  627410: e4920004     	ldr	r0, [r2], #4
  627414: e59d3028     	ldr	r3, [sp, #0x28]
  627418: e4830004     	str	r0, [r3], #4
  62741c: e5911004     	ldr	r1, [r1, #0x4]
  627420: e59d0028     	ldr	r0, [sp, #0x28]
  627424: e5801004     	str	r1, [r0, #0x4]
  627428: e5922004     	ldr	r2, [r2, #0x4]
  62742c: e5832004     	str	r2, [r3, #0x4]
  627430: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}

; FUNCTION 0x00627434 size=228 sha256=8a22cb4c62332e47cd26674c946a1166cf32c3ae4a1c73baf6ae0a9e5a01aad4
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short> > >::getBlendedValue(void*, float*, int, void*) const
00627434 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIsEELi2EsEEEEE15getBlendedValueEPvPfiSD_>:
  627434: e3530001     	cmp	r3, #1
  627438: e92d4ff8     	push	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62743c: e1a04003     	mov	r4, r3
  627440: e1a0b002     	mov	r11, r2
  627444: 0a000029     	beq	0x6274f0 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIsEELi2EsEEEEE15getBlendedValueEPvPfiSD_+0xbc> @ imm = #0xa4
  627448: e3530000     	cmp	r3, #0
  62744c: 03a08000     	moveq	r8, #0
  627450: 01a09008     	moveq	r9, r8
  627454: 01a0a008     	moveq	r10, r8
  627458: 0a00001e     	beq	0x6274d8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIsEELi2EsEEEEE15getBlendedValueEPvPfiSD_+0xa4> @ imm = #0x78
  62745c: e3a08000     	mov	r8, #0
  627460: e1a05001     	mov	r5, r1
  627464: e3a07000     	mov	r7, #0
  627468: e1a09008     	mov	r9, r8
  62746c: e1a0a008     	mov	r10, r8
  627470: e79b6007     	ldr	r6, [r11, r7]
  627474: e5951000     	ldr	r1, [r5]
  627478: e2877004     	add	r7, r7, #4
  62747c: e1a00006     	mov	r0, r6
  627480: ebf39e39     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31871c
  627484: e1a01000     	mov	r1, r0
  627488: e1a00008     	mov	r0, r8
  62748c: ebf39dc4     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x3188f0
  627490: e5951004     	ldr	r1, [r5, #0x4]
  627494: e1a08000     	mov	r8, r0
  627498: e1a00006     	mov	r0, r6
  62749c: ebf39e32     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x318738
  6274a0: e1a01000     	mov	r1, r0
  6274a4: e1a00009     	mov	r0, r9
  6274a8: ebf39dbd     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31890c
  6274ac: e5951008     	ldr	r1, [r5, #0x8]
  6274b0: e1a09000     	mov	r9, r0
  6274b4: e1a00006     	mov	r0, r6
  6274b8: ebf39e2b     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x318754
  6274bc: e1a01000     	mov	r1, r0
  6274c0: e1a0000a     	mov	r0, r10
  6274c4: ebf39db6     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x318928
  6274c8: e2544001     	subs	r4, r4, #1
  6274cc: e1a0a000     	mov	r10, r0
  6274d0: e285500c     	add	r5, r5, #12
  6274d4: 1affffe5     	bne	0x627470 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIsEELi2EsEEEEE15getBlendedValueEPvPfiSD_+0x3c> @ imm = #-0x6c
  6274d8: e59d3028     	ldr	r3, [sp, #0x28]
  6274dc: e4838004     	str	r8, [r3], #4
  6274e0: e59d2028     	ldr	r2, [sp, #0x28]
  6274e4: e5829004     	str	r9, [r2, #0x4]
  6274e8: e583a004     	str	r10, [r3, #0x4]
  6274ec: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
  6274f0: e1a02001     	mov	r2, r1
  6274f4: e4920004     	ldr	r0, [r2], #4
  6274f8: e59d3028     	ldr	r3, [sp, #0x28]
  6274fc: e4830004     	str	r0, [r3], #4
  627500: e5911004     	ldr	r1, [r1, #0x4]
  627504: e59d0028     	ldr	r0, [sp, #0x28]
  627508: e5801004     	str	r1, [r0, #0x4]
  62750c: e5922004     	ldr	r2, [r2, #0x4]
  627510: e5832004     	str	r2, [r3, #0x4]
  627514: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}

; FUNCTION 0x00627518 size=228 sha256=becf13377bfb6947b85a94331f78d62e00128164cdd9627c0497daee44857e30
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char> > >::getBlendedValue(void*, float*, int, void*) const
00627518 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIcEELi2EcEEEEE15getBlendedValueEPvPfiSD_>:
  627518: e3530001     	cmp	r3, #1
  62751c: e92d4ff8     	push	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
  627520: e1a04003     	mov	r4, r3
  627524: e1a0b002     	mov	r11, r2
  627528: 0a000029     	beq	0x6275d4 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIcEELi2EcEEEEE15getBlendedValueEPvPfiSD_+0xbc> @ imm = #0xa4
  62752c: e3530000     	cmp	r3, #0
  627530: 03a08000     	moveq	r8, #0
  627534: 01a09008     	moveq	r9, r8
  627538: 01a0a008     	moveq	r10, r8
  62753c: 0a00001e     	beq	0x6275bc <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIcEELi2EcEEEEE15getBlendedValueEPvPfiSD_+0xa4> @ imm = #0x78
  627540: e3a08000     	mov	r8, #0
  627544: e1a05001     	mov	r5, r1
  627548: e3a07000     	mov	r7, #0
  62754c: e1a09008     	mov	r9, r8
  627550: e1a0a008     	mov	r10, r8
  627554: e79b6007     	ldr	r6, [r11, r7]
  627558: e5951000     	ldr	r1, [r5]
  62755c: e2877004     	add	r7, r7, #4
  627560: e1a00006     	mov	r0, r6
  627564: ebf39e00     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x318800
  627568: e1a01000     	mov	r1, r0
  62756c: e1a00008     	mov	r0, r8
  627570: ebf39d8b     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x3189d4
  627574: e5951004     	ldr	r1, [r5, #0x4]
  627578: e1a08000     	mov	r8, r0
  62757c: e1a00006     	mov	r0, r6
  627580: ebf39df9     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31881c
  627584: e1a01000     	mov	r1, r0
  627588: e1a00009     	mov	r0, r9
  62758c: ebf39d84     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x3189f0
  627590: e5951008     	ldr	r1, [r5, #0x8]
  627594: e1a09000     	mov	r9, r0
  627598: e1a00006     	mov	r0, r6
  62759c: ebf39df2     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x318838
  6275a0: e1a01000     	mov	r1, r0
  6275a4: e1a0000a     	mov	r0, r10
  6275a8: ebf39d7d     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x318a0c
  6275ac: e2544001     	subs	r4, r4, #1
  6275b0: e1a0a000     	mov	r10, r0
  6275b4: e285500c     	add	r5, r5, #12
  6275b8: 1affffe5     	bne	0x627554 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIcEELi2EcEEEEE15getBlendedValueEPvPfiSD_+0x3c> @ imm = #-0x6c
  6275bc: e59d3028     	ldr	r3, [sp, #0x28]
  6275c0: e4838004     	str	r8, [r3], #4
  6275c4: e59d2028     	ldr	r2, [sp, #0x28]
  6275c8: e5829004     	str	r9, [r2, #0x4]
  6275cc: e583a004     	str	r10, [r3, #0x4]
  6275d0: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
  6275d4: e1a02001     	mov	r2, r1
  6275d8: e4920004     	ldr	r0, [r2], #4
  6275dc: e59d3028     	ldr	r3, [sp, #0x28]
  6275e0: e4830004     	str	r0, [r3], #4
  6275e4: e5911004     	ldr	r1, [r1, #0x4]
  6275e8: e59d0028     	ldr	r0, [sp, #0x28]
  6275ec: e5801004     	str	r1, [r0, #0x4]
  6275f0: e5922004     	ldr	r2, [r2, #0x4]
  6275f4: e5832004     	str	r2, [r3, #0x4]
  6275f8: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}

; FUNCTION 0x006278a8 size=228 sha256=7edd554463a7738126068cb391510fc4fb10221391dfe46f0584cf49a9673963
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float> > >::getBlendedValue(void*, float*, int, void*) const
006278a8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIfEELi0EfEEEEE15getBlendedValueEPvPfiSD_>:
  6278a8: e3530001     	cmp	r3, #1
  6278ac: e92d4ff8     	push	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
  6278b0: e1a04003     	mov	r4, r3
  6278b4: e1a0b002     	mov	r11, r2
  6278b8: 0a000029     	beq	0x627964 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIfEELi0EfEEEEE15getBlendedValueEPvPfiSD_+0xbc> @ imm = #0xa4
  6278bc: e3530000     	cmp	r3, #0
  6278c0: 03a08000     	moveq	r8, #0
  6278c4: 01a09008     	moveq	r9, r8
  6278c8: 01a0a008     	moveq	r10, r8
  6278cc: 0a00001e     	beq	0x62794c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIfEELi0EfEEEEE15getBlendedValueEPvPfiSD_+0xa4> @ imm = #0x78
  6278d0: e3a08000     	mov	r8, #0
  6278d4: e1a05001     	mov	r5, r1
  6278d8: e3a07000     	mov	r7, #0
  6278dc: e1a09008     	mov	r9, r8
  6278e0: e1a0a008     	mov	r10, r8
  6278e4: e79b6007     	ldr	r6, [r11, r7]
  6278e8: e5951000     	ldr	r1, [r5]
  6278ec: e2877004     	add	r7, r7, #4
  6278f0: e1a00006     	mov	r0, r6
  6278f4: ebf39d1c     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x318b90
  6278f8: e1a01000     	mov	r1, r0
  6278fc: e1a00008     	mov	r0, r8
  627900: ebf39ca7     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x318d64
  627904: e5951004     	ldr	r1, [r5, #0x4]
  627908: e1a08000     	mov	r8, r0
  62790c: e1a00006     	mov	r0, r6
  627910: ebf39d15     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x318bac
  627914: e1a01000     	mov	r1, r0
  627918: e1a00009     	mov	r0, r9
  62791c: ebf39ca0     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x318d80
  627920: e5951008     	ldr	r1, [r5, #0x8]
  627924: e1a09000     	mov	r9, r0
  627928: e1a00006     	mov	r0, r6
  62792c: ebf39d0e     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x318bc8
  627930: e1a01000     	mov	r1, r0
  627934: e1a0000a     	mov	r0, r10
  627938: ebf39c99     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x318d9c
  62793c: e2544001     	subs	r4, r4, #1
  627940: e1a0a000     	mov	r10, r0
  627944: e285500c     	add	r5, r5, #12
  627948: 1affffe5     	bne	0x6278e4 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIfEELi0EfEEEEE15getBlendedValueEPvPfiSD_+0x3c> @ imm = #-0x6c
  62794c: e59d3028     	ldr	r3, [sp, #0x28]
  627950: e4838004     	str	r8, [r3], #4
  627954: e59d2028     	ldr	r2, [sp, #0x28]
  627958: e5829004     	str	r9, [r2, #0x4]
  62795c: e583a004     	str	r10, [r3, #0x4]
  627960: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
  627964: e1a02001     	mov	r2, r1
  627968: e4920004     	ldr	r0, [r2], #4
  62796c: e59d3028     	ldr	r3, [sp, #0x28]
  627970: e4830004     	str	r0, [r3], #4
  627974: e5911004     	ldr	r1, [r1, #0x4]
  627978: e59d0028     	ldr	r0, [sp, #0x28]
  62797c: e5801004     	str	r1, [r0, #0x4]
  627980: e5922004     	ldr	r2, [r2, #0x4]
  627984: e5832004     	str	r2, [r3, #0x4]
  627988: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}

; FUNCTION 0x0062798c size=248 sha256=cb8641963722350b35c2a23cb4054de7a5fc54b945a7c5829144b4a719986082
; symbols: glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, 0, float> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
0062798c <_ZN6glitch7collada15animation_track13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELi0EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE>:
  62798c: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  627990: e3520001     	cmp	r2, #1
  627994: e24dd01c     	sub	sp, sp, #28
  627998: e1a04002     	mov	r4, r2
  62799c: e1a05001     	mov	r5, r1
  6279a0: e58d3004     	str	r3, [sp, #0x4]
  6279a4: 0a00002e     	beq	0x627a64 <_ZN6glitch7collada15animation_track13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELi0EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xd8> @ imm = #0xb8
  6279a8: e3520000     	cmp	r2, #0
  6279ac: 03a0a000     	moveq	r10, #0
  6279b0: 01a0b00a     	moveq	r11, r10
  6279b4: 01a0900a     	moveq	r9, r10
  6279b8: 0a00001e     	beq	0x627a38 <_ZN6glitch7collada15animation_track13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELi0EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xac> @ imm = #0x78
  6279bc: e3a0a000     	mov	r10, #0
  6279c0: e1a06000     	mov	r6, r0
  6279c4: e3a08000     	mov	r8, #0
  6279c8: e1a0b00a     	mov	r11, r10
  6279cc: e1a0900a     	mov	r9, r10
  6279d0: e7957008     	ldr	r7, [r5, r8]
  6279d4: e5961000     	ldr	r1, [r6]
  6279d8: e2888004     	add	r8, r8, #4
  6279dc: e1a00007     	mov	r0, r7
  6279e0: ebf39ce1     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x318c7c
  6279e4: e1a01000     	mov	r1, r0
  6279e8: e1a0000a     	mov	r0, r10
  6279ec: ebf39c6c     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x318e50
  6279f0: e5961004     	ldr	r1, [r6, #0x4]
  6279f4: e1a0a000     	mov	r10, r0
  6279f8: e1a00007     	mov	r0, r7
  6279fc: ebf39cda     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x318c98
  627a00: e1a01000     	mov	r1, r0
  627a04: e1a0000b     	mov	r0, r11
  627a08: ebf39c65     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x318e6c
  627a0c: e5961008     	ldr	r1, [r6, #0x8]
  627a10: e1a0b000     	mov	r11, r0
  627a14: e1a00007     	mov	r0, r7
  627a18: ebf39cd3     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x318cb4
  627a1c: e1a01000     	mov	r1, r0
  627a20: e1a00009     	mov	r0, r9
  627a24: ebf39c5e     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x318e88
  627a28: e2544001     	subs	r4, r4, #1
  627a2c: e1a09000     	mov	r9, r0
  627a30: e286600c     	add	r6, r6, #12
  627a34: 1affffe5     	bne	0x6279d0 <_ZN6glitch7collada15animation_track13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELi0EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x44> @ imm = #-0x6c
  627a38: e58da00c     	str	r10, [sp, #0xc]
  627a3c: e58db010     	str	r11, [sp, #0x10]
  627a40: e58d9014     	str	r9, [sp, #0x14]
  627a44: e59d3040     	ldr	r3, [sp, #0x40]
  627a48: e59d0004     	ldr	r0, [sp, #0x4]
  627a4c: e3a02000     	mov	r2, #0
  627a50: e1d310b8     	ldrh	r1, [r3, #8]
  627a54: e28d300c     	add	r3, sp, #12
  627a58: ebfe7cb5     	bl	0x5c6d34 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector3dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_> @ imm = #-0x60d2c
  627a5c: e28dd01c     	add	sp, sp, #28
  627a60: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  627a64: e1a03000     	mov	r3, r0
  627a68: e4931004     	ldr	r1, [r3], #4
  627a6c: e5902004     	ldr	r2, [r0, #0x4]
  627a70: e5933004     	ldr	r3, [r3, #0x4]
  627a74: e58d100c     	str	r1, [sp, #0xc]
  627a78: e58d2010     	str	r2, [sp, #0x10]
  627a7c: e58d3014     	str	r3, [sp, #0x14]
  627a80: eaffffef     	b	0x627a44 <_ZN6glitch7collada15animation_track13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELi0EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xb8> @ imm = #-0x44

; FUNCTION 0x00627a84 size=28 sha256=e7ecfdacaee34dd6f39b726dc7b5ffcc3adf55e2c7037d1df0d3033e53eb0543
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, 0, float> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
00627a84 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  627a84: e1a00001     	mov	r0, r1
  627a88: e59dc004     	ldr	r12, [sp, #0x4]
  627a8c: e1a01002     	mov	r1, r2
  627a90: e1a02003     	mov	r2, r3
  627a94: e59d3000     	ldr	r3, [sp]
  627a98: e58dc000     	str	r12, [sp]
  627a9c: eaffffba     	b	0x62798c <_ZN6glitch7collada15animation_track13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELi0EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE> @ imm = #-0x118

; FUNCTION 0x00627aa0 size=248 sha256=d8c4c9d5210f6946b451d749c181dd0f75ee0666ebf2c402ae8118ae06ca6f25
; symbols: glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, -1, float> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
00627aa0 <_ZN6glitch7collada15animation_track13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELin1EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE>:
  627aa0: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  627aa4: e3520001     	cmp	r2, #1
  627aa8: e24dd01c     	sub	sp, sp, #28
  627aac: e1a04002     	mov	r4, r2
  627ab0: e1a05001     	mov	r5, r1
  627ab4: e58d3004     	str	r3, [sp, #0x4]
  627ab8: 0a00002e     	beq	0x627b78 <_ZN6glitch7collada15animation_track13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELin1EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xd8> @ imm = #0xb8
  627abc: e3520000     	cmp	r2, #0
  627ac0: 03a0a000     	moveq	r10, #0
  627ac4: 01a0b00a     	moveq	r11, r10
  627ac8: 01a0900a     	moveq	r9, r10
  627acc: 0a00001e     	beq	0x627b4c <_ZN6glitch7collada15animation_track13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELin1EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xac> @ imm = #0x78
  627ad0: e3a0a000     	mov	r10, #0
  627ad4: e1a06000     	mov	r6, r0
  627ad8: e3a08000     	mov	r8, #0
  627adc: e1a0b00a     	mov	r11, r10
  627ae0: e1a0900a     	mov	r9, r10
  627ae4: e7957008     	ldr	r7, [r5, r8]
  627ae8: e5961000     	ldr	r1, [r6]
  627aec: e2888004     	add	r8, r8, #4
  627af0: e1a00007     	mov	r0, r7
  627af4: ebf39c9c     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x318d90
  627af8: e1a01000     	mov	r1, r0
  627afc: e1a0000a     	mov	r0, r10
  627b00: ebf39c27     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x318f64
  627b04: e5961004     	ldr	r1, [r6, #0x4]
  627b08: e1a0a000     	mov	r10, r0
  627b0c: e1a00007     	mov	r0, r7
  627b10: ebf39c95     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x318dac
  627b14: e1a01000     	mov	r1, r0
  627b18: e1a0000b     	mov	r0, r11
  627b1c: ebf39c20     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x318f80
  627b20: e5961008     	ldr	r1, [r6, #0x8]
  627b24: e1a0b000     	mov	r11, r0
  627b28: e1a00007     	mov	r0, r7
  627b2c: ebf39c8e     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x318dc8
  627b30: e1a01000     	mov	r1, r0
  627b34: e1a00009     	mov	r0, r9
  627b38: ebf39c19     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x318f9c
  627b3c: e2544001     	subs	r4, r4, #1
  627b40: e1a09000     	mov	r9, r0
  627b44: e286600c     	add	r6, r6, #12
  627b48: 1affffe5     	bne	0x627ae4 <_ZN6glitch7collada15animation_track13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELin1EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x44> @ imm = #-0x6c
  627b4c: e58da00c     	str	r10, [sp, #0xc]
  627b50: e58db010     	str	r11, [sp, #0x10]
  627b54: e58d9014     	str	r9, [sp, #0x14]
  627b58: e59d3040     	ldr	r3, [sp, #0x40]
  627b5c: e59d0004     	ldr	r0, [sp, #0x4]
  627b60: e3a02000     	mov	r2, #0
  627b64: e1d310b8     	ldrh	r1, [r3, #8]
  627b68: e28d300c     	add	r3, sp, #12
  627b6c: ebfe7c70     	bl	0x5c6d34 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector3dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_> @ imm = #-0x60e40
  627b70: e28dd01c     	add	sp, sp, #28
  627b74: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  627b78: e1a03000     	mov	r3, r0
  627b7c: e4931004     	ldr	r1, [r3], #4
  627b80: e5902004     	ldr	r2, [r0, #0x4]
  627b84: e5933004     	ldr	r3, [r3, #0x4]
  627b88: e58d100c     	str	r1, [sp, #0xc]
  627b8c: e58d2010     	str	r2, [sp, #0x10]
  627b90: e58d3014     	str	r3, [sp, #0x14]
  627b94: eaffffef     	b	0x627b58 <_ZN6glitch7collada15animation_track13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELin1EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xb8> @ imm = #-0x44

; FUNCTION 0x00627b98 size=28 sha256=e7ecfdacaee34dd6f39b726dc7b5ffcc3adf55e2c7037d1df0d3033e53eb0543
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, -1, float> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
00627b98 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  627b98: e1a00001     	mov	r0, r1
  627b9c: e59dc004     	ldr	r12, [sp, #0x4]
  627ba0: e1a01002     	mov	r1, r2
  627ba4: e1a02003     	mov	r2, r3
  627ba8: e59d3000     	ldr	r3, [sp]
  627bac: e58dc000     	str	r12, [sp]
  627bb0: eaffffba     	b	0x627aa0 <_ZN6glitch7collada15animation_track13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELin1EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE> @ imm = #-0x118

; FUNCTION 0x00628168 size=248 sha256=a561dc75a35c533fb3d664f418cf174e8707a58e67bbafc01119edc926178355
; symbols: glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, 0, float> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
00628168 <_ZN6glitch7collada15animation_track13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELi0EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE>:
  628168: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62816c: e3520001     	cmp	r2, #1
  628170: e24dd01c     	sub	sp, sp, #28
  628174: e1a04002     	mov	r4, r2
  628178: e1a05001     	mov	r5, r1
  62817c: e58d3004     	str	r3, [sp, #0x4]
  628180: 0a00002e     	beq	0x628240 <_ZN6glitch7collada15animation_track13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELi0EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xd8> @ imm = #0xb8
  628184: e3520000     	cmp	r2, #0
  628188: 03a0a000     	moveq	r10, #0
  62818c: 01a0b00a     	moveq	r11, r10
  628190: 01a0900a     	moveq	r9, r10
  628194: 0a00001e     	beq	0x628214 <_ZN6glitch7collada15animation_track13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELi0EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xac> @ imm = #0x78
  628198: e3a0a000     	mov	r10, #0
  62819c: e1a06000     	mov	r6, r0
  6281a0: e3a08000     	mov	r8, #0
  6281a4: e1a0b00a     	mov	r11, r10
  6281a8: e1a0900a     	mov	r9, r10
  6281ac: e7957008     	ldr	r7, [r5, r8]
  6281b0: e5961000     	ldr	r1, [r6]
  6281b4: e2888004     	add	r8, r8, #4
  6281b8: e1a00007     	mov	r0, r7
  6281bc: ebf39aea     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x319458
  6281c0: e1a01000     	mov	r1, r0
  6281c4: e1a0000a     	mov	r0, r10
  6281c8: ebf39a75     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31962c
  6281cc: e5961004     	ldr	r1, [r6, #0x4]
  6281d0: e1a0a000     	mov	r10, r0
  6281d4: e1a00007     	mov	r0, r7
  6281d8: ebf39ae3     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x319474
  6281dc: e1a01000     	mov	r1, r0
  6281e0: e1a0000b     	mov	r0, r11
  6281e4: ebf39a6e     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x319648
  6281e8: e5961008     	ldr	r1, [r6, #0x8]
  6281ec: e1a0b000     	mov	r11, r0
  6281f0: e1a00007     	mov	r0, r7
  6281f4: ebf39adc     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x319490
  6281f8: e1a01000     	mov	r1, r0
  6281fc: e1a00009     	mov	r0, r9
  628200: ebf39a67     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x319664
  628204: e2544001     	subs	r4, r4, #1
  628208: e1a09000     	mov	r9, r0
  62820c: e286600c     	add	r6, r6, #12
  628210: 1affffe5     	bne	0x6281ac <_ZN6glitch7collada15animation_track13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELi0EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x44> @ imm = #-0x6c
  628214: e58da00c     	str	r10, [sp, #0xc]
  628218: e58db010     	str	r11, [sp, #0x10]
  62821c: e58d9014     	str	r9, [sp, #0x14]
  628220: e59d3040     	ldr	r3, [sp, #0x40]
  628224: e59d0004     	ldr	r0, [sp, #0x4]
  628228: e3a02000     	mov	r2, #0
  62822c: e1d310b8     	ldrh	r1, [r3, #8]
  628230: e28d300c     	add	r3, sp, #12
  628234: ebfe7abe     	bl	0x5c6d34 <_ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector3dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRKSE_> @ imm = #-0x61508
  628238: e28dd01c     	add	sp, sp, #28
  62823c: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  628240: e1a03000     	mov	r3, r0
  628244: e4931004     	ldr	r1, [r3], #4
  628248: e5902004     	ldr	r2, [r0, #0x4]
  62824c: e5933004     	ldr	r3, [r3, #0x4]
  628250: e58d100c     	str	r1, [sp, #0xc]
  628254: e58d2010     	str	r2, [sp, #0x10]
  628258: e58d3014     	str	r3, [sp, #0x14]
  62825c: eaffffef     	b	0x628220 <_ZN6glitch7collada15animation_track13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELi0EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xb8> @ imm = #-0x44

; FUNCTION 0x00628260 size=28 sha256=e7ecfdacaee34dd6f39b726dc7b5ffcc3adf55e2c7037d1df0d3033e53eb0543
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, 0, float> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
00628260 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  628260: e1a00001     	mov	r0, r1
  628264: e59dc004     	ldr	r12, [sp, #0x4]
  628268: e1a01002     	mov	r1, r2
  62826c: e1a02003     	mov	r2, r3
  628270: e59d3000     	ldr	r3, [sp]
  628274: e58dc000     	str	r12, [sp]
  628278: eaffffba     	b	0x628168 <_ZN6glitch7collada15animation_track13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELi0EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE> @ imm = #-0x118

; FUNCTION 0x00628d2c size=248 sha256=10929d2e872c7e1d2268e8ec4af0d2739e8fb31f9c448295d7f7c21922cd2534
; symbols: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
00628d2c <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIfEELi2EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE>:
  628d2c: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  628d30: e3520001     	cmp	r2, #1
  628d34: e24dd01c     	sub	sp, sp, #28
  628d38: e3a0a000     	mov	r10, #0
  628d3c: e1a04002     	mov	r4, r2
  628d40: e1a05001     	mov	r5, r1
  628d44: e58d3004     	str	r3, [sp, #0x4]
  628d48: e58da014     	str	r10, [sp, #0x14]
  628d4c: 0a00002b     	beq	0x628e00 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIfEELi2EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xd4> @ imm = #0xac
  628d50: e3520000     	cmp	r2, #0
  628d54: 01a0b00a     	moveq	r11, r10
  628d58: 01a0900a     	moveq	r9, r10
  628d5c: 0a00001d     	beq	0x628dd8 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIfEELi2EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xac> @ imm = #0x74
  628d60: e1a06000     	mov	r6, r0
  628d64: e3a08000     	mov	r8, #0
  628d68: e1a0b00a     	mov	r11, r10
  628d6c: e1a0900a     	mov	r9, r10
  628d70: e7957008     	ldr	r7, [r5, r8]
  628d74: e5961000     	ldr	r1, [r6]
  628d78: e2888004     	add	r8, r8, #4
  628d7c: e1a00007     	mov	r0, r7
  628d80: ebf397f9     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31a01c
  628d84: e1a01000     	mov	r1, r0
  628d88: e1a0000a     	mov	r0, r10
  628d8c: ebf39784     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31a1f0
  628d90: e5961004     	ldr	r1, [r6, #0x4]
  628d94: e1a0a000     	mov	r10, r0
  628d98: e1a00007     	mov	r0, r7
  628d9c: ebf397f2     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31a038
  628da0: e1a01000     	mov	r1, r0
  628da4: e1a0000b     	mov	r0, r11
  628da8: ebf3977d     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31a20c
  628dac: e5961008     	ldr	r1, [r6, #0x8]
  628db0: e1a0b000     	mov	r11, r0
  628db4: e1a00007     	mov	r0, r7
  628db8: ebf397eb     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31a054
  628dbc: e1a01000     	mov	r1, r0
  628dc0: e1a00009     	mov	r0, r9
  628dc4: ebf39776     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31a228
  628dc8: e2544001     	subs	r4, r4, #1
  628dcc: e1a09000     	mov	r9, r0
  628dd0: e286600c     	add	r6, r6, #12
  628dd4: 1affffe5     	bne	0x628d70 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIfEELi2EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x44> @ imm = #-0x6c
  628dd8: e28d1018     	add	r1, sp, #24
  628ddc: e521a00c     	str	r10, [r1, #-0xc]!
  628de0: e58db010     	str	r11, [sp, #0x10]
  628de4: e5819008     	str	r9, [r1, #0x8]
  628de8: e59d0004     	ldr	r0, [sp, #0x4]
  628dec: e5903000     	ldr	r3, [r0]
  628df0: e1a0e00f     	mov	lr, pc
  628df4: e593f0a4     	ldr	pc, [r3, #0xa4]
  628df8: e28dd01c     	add	sp, sp, #28
  628dfc: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  628e00: e1a03000     	mov	r3, r0
  628e04: e493c004     	ldr	r12, [r3], #4
  628e08: e5902004     	ldr	r2, [r0, #0x4]
  628e0c: e28d1018     	add	r1, sp, #24
  628e10: e5933004     	ldr	r3, [r3, #0x4]
  628e14: e521c00c     	str	r12, [r1, #-0xc]!
  628e18: e58d2010     	str	r2, [sp, #0x10]
  628e1c: e5813008     	str	r3, [r1, #0x8]
  628e20: eafffff0     	b	0x628de8 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIfEELi2EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xbc> @ imm = #-0x40

; FUNCTION 0x00628e24 size=28 sha256=e7ecfdacaee34dd6f39b726dc7b5ffcc3adf55e2c7037d1df0d3033e53eb0543
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
00628e24 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIfEELi2EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  628e24: e1a00001     	mov	r0, r1
  628e28: e59dc004     	ldr	r12, [sp, #0x4]
  628e2c: e1a01002     	mov	r1, r2
  628e30: e1a02003     	mov	r2, r3
  628e34: e59d3000     	ldr	r3, [sp]
  628e38: e58dc000     	str	r12, [sp]
  628e3c: eaffffba     	b	0x628d2c <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIfEELi2EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE> @ imm = #-0x118

; FUNCTION 0x00628e40 size=248 sha256=862998d67efdd48d2d27a2cdd83ab73e2a32f7a9e29889f494b700f9cc1ab584
; symbols: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
00628e40 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIfEELi2EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE>:
  628e40: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  628e44: e3520001     	cmp	r2, #1
  628e48: e24dd01c     	sub	sp, sp, #28
  628e4c: e3a0a000     	mov	r10, #0
  628e50: e1a04002     	mov	r4, r2
  628e54: e1a05001     	mov	r5, r1
  628e58: e58d3004     	str	r3, [sp, #0x4]
  628e5c: e58da014     	str	r10, [sp, #0x14]
  628e60: 0a00002b     	beq	0x628f14 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIfEELi2EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xd4> @ imm = #0xac
  628e64: e3520000     	cmp	r2, #0
  628e68: 01a0b00a     	moveq	r11, r10
  628e6c: 01a0900a     	moveq	r9, r10
  628e70: 0a00001d     	beq	0x628eec <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIfEELi2EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xac> @ imm = #0x74
  628e74: e1a06000     	mov	r6, r0
  628e78: e3a08000     	mov	r8, #0
  628e7c: e1a0b00a     	mov	r11, r10
  628e80: e1a0900a     	mov	r9, r10
  628e84: e7957008     	ldr	r7, [r5, r8]
  628e88: e5961000     	ldr	r1, [r6]
  628e8c: e2888004     	add	r8, r8, #4
  628e90: e1a00007     	mov	r0, r7
  628e94: ebf397b4     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31a130
  628e98: e1a01000     	mov	r1, r0
  628e9c: e1a0000a     	mov	r0, r10
  628ea0: ebf3973f     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31a304
  628ea4: e5961004     	ldr	r1, [r6, #0x4]
  628ea8: e1a0a000     	mov	r10, r0
  628eac: e1a00007     	mov	r0, r7
  628eb0: ebf397ad     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31a14c
  628eb4: e1a01000     	mov	r1, r0
  628eb8: e1a0000b     	mov	r0, r11
  628ebc: ebf39738     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31a320
  628ec0: e5961008     	ldr	r1, [r6, #0x8]
  628ec4: e1a0b000     	mov	r11, r0
  628ec8: e1a00007     	mov	r0, r7
  628ecc: ebf397a6     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31a168
  628ed0: e1a01000     	mov	r1, r0
  628ed4: e1a00009     	mov	r0, r9
  628ed8: ebf39731     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31a33c
  628edc: e2544001     	subs	r4, r4, #1
  628ee0: e1a09000     	mov	r9, r0
  628ee4: e286600c     	add	r6, r6, #12
  628ee8: 1affffe5     	bne	0x628e84 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIfEELi2EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x44> @ imm = #-0x6c
  628eec: e28d1018     	add	r1, sp, #24
  628ef0: e521a00c     	str	r10, [r1, #-0xc]!
  628ef4: e58db010     	str	r11, [sp, #0x10]
  628ef8: e5819008     	str	r9, [r1, #0x8]
  628efc: e59d0004     	ldr	r0, [sp, #0x4]
  628f00: e5903000     	ldr	r3, [r0]
  628f04: e1a0e00f     	mov	lr, pc
  628f08: e593f0a4     	ldr	pc, [r3, #0xa4]
  628f0c: e28dd01c     	add	sp, sp, #28
  628f10: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  628f14: e1a03000     	mov	r3, r0
  628f18: e493c004     	ldr	r12, [r3], #4
  628f1c: e5902004     	ldr	r2, [r0, #0x4]
  628f20: e28d1018     	add	r1, sp, #24
  628f24: e5933004     	ldr	r3, [r3, #0x4]
  628f28: e521c00c     	str	r12, [r1, #-0xc]!
  628f2c: e58d2010     	str	r2, [sp, #0x10]
  628f30: e5813008     	str	r3, [r1, #0x8]
  628f34: eafffff0     	b	0x628efc <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIfEELi2EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xbc> @ imm = #-0x40

; FUNCTION 0x00628f38 size=28 sha256=e7ecfdacaee34dd6f39b726dc7b5ffcc3adf55e2c7037d1df0d3033e53eb0543
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
00628f38 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIfEELi2EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  628f38: e1a00001     	mov	r0, r1
  628f3c: e59dc004     	ldr	r12, [sp, #0x4]
  628f40: e1a01002     	mov	r1, r2
  628f44: e1a02003     	mov	r2, r3
  628f48: e59d3000     	ldr	r3, [sp]
  628f4c: e58dc000     	str	r12, [sp]
  628f50: eaffffba     	b	0x628e40 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIfEELi2EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE> @ imm = #-0x118

; FUNCTION 0x00628f54 size=248 sha256=c458ca4ad764513c009d84bcb9adf4aa7351b0c4f3e32b1488c3f5289a3060d0
; symbols: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
00628f54 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIcEELi1EcEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE>:
  628f54: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  628f58: e3520001     	cmp	r2, #1
  628f5c: e24dd01c     	sub	sp, sp, #28
  628f60: e3a0a000     	mov	r10, #0
  628f64: e1a04002     	mov	r4, r2
  628f68: e1a05001     	mov	r5, r1
  628f6c: e58d3004     	str	r3, [sp, #0x4]
  628f70: e58da014     	str	r10, [sp, #0x14]
  628f74: 0a00002b     	beq	0x629028 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIcEELi1EcEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xd4> @ imm = #0xac
  628f78: e3520000     	cmp	r2, #0
  628f7c: 01a0b00a     	moveq	r11, r10
  628f80: 01a0900a     	moveq	r9, r10
  628f84: 0a00001d     	beq	0x629000 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIcEELi1EcEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xac> @ imm = #0x74
  628f88: e1a06000     	mov	r6, r0
  628f8c: e3a08000     	mov	r8, #0
  628f90: e1a0b00a     	mov	r11, r10
  628f94: e1a0900a     	mov	r9, r10
  628f98: e7957008     	ldr	r7, [r5, r8]
  628f9c: e5961000     	ldr	r1, [r6]
  628fa0: e2888004     	add	r8, r8, #4
  628fa4: e1a00007     	mov	r0, r7
  628fa8: ebf3976f     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31a244
  628fac: e1a01000     	mov	r1, r0
  628fb0: e1a0000a     	mov	r0, r10
  628fb4: ebf396fa     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31a418
  628fb8: e5961004     	ldr	r1, [r6, #0x4]
  628fbc: e1a0a000     	mov	r10, r0
  628fc0: e1a00007     	mov	r0, r7
  628fc4: ebf39768     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31a260
  628fc8: e1a01000     	mov	r1, r0
  628fcc: e1a0000b     	mov	r0, r11
  628fd0: ebf396f3     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31a434
  628fd4: e5961008     	ldr	r1, [r6, #0x8]
  628fd8: e1a0b000     	mov	r11, r0
  628fdc: e1a00007     	mov	r0, r7
  628fe0: ebf39761     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31a27c
  628fe4: e1a01000     	mov	r1, r0
  628fe8: e1a00009     	mov	r0, r9
  628fec: ebf396ec     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31a450
  628ff0: e2544001     	subs	r4, r4, #1
  628ff4: e1a09000     	mov	r9, r0
  628ff8: e286600c     	add	r6, r6, #12
  628ffc: 1affffe5     	bne	0x628f98 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIcEELi1EcEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x44> @ imm = #-0x6c
  629000: e28d1018     	add	r1, sp, #24
  629004: e521a00c     	str	r10, [r1, #-0xc]!
  629008: e58db010     	str	r11, [sp, #0x10]
  62900c: e5819008     	str	r9, [r1, #0x8]
  629010: e59d0004     	ldr	r0, [sp, #0x4]
  629014: e5903000     	ldr	r3, [r0]
  629018: e1a0e00f     	mov	lr, pc
  62901c: e593f0a4     	ldr	pc, [r3, #0xa4]
  629020: e28dd01c     	add	sp, sp, #28
  629024: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  629028: e1a03000     	mov	r3, r0
  62902c: e493c004     	ldr	r12, [r3], #4
  629030: e5902004     	ldr	r2, [r0, #0x4]
  629034: e28d1018     	add	r1, sp, #24
  629038: e5933004     	ldr	r3, [r3, #0x4]
  62903c: e521c00c     	str	r12, [r1, #-0xc]!
  629040: e58d2010     	str	r2, [sp, #0x10]
  629044: e5813008     	str	r3, [r1, #0x8]
  629048: eafffff0     	b	0x629010 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIcEELi1EcEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xbc> @ imm = #-0x40

; FUNCTION 0x0062904c size=28 sha256=e7ecfdacaee34dd6f39b726dc7b5ffcc3adf55e2c7037d1df0d3033e53eb0543
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
0062904c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIcEELi1EcEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  62904c: e1a00001     	mov	r0, r1
  629050: e59dc004     	ldr	r12, [sp, #0x4]
  629054: e1a01002     	mov	r1, r2
  629058: e1a02003     	mov	r2, r3
  62905c: e59d3000     	ldr	r3, [sp]
  629060: e58dc000     	str	r12, [sp]
  629064: eaffffba     	b	0x628f54 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIcEELi1EcEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE> @ imm = #-0x118

; FUNCTION 0x00629068 size=248 sha256=6a6a2a90aa30cba75d1d8442297da5011f1c709dff41e717f959ac1c782f6191
; symbols: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
00629068 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIcEELi1EcEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE>:
  629068: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62906c: e3520001     	cmp	r2, #1
  629070: e24dd01c     	sub	sp, sp, #28
  629074: e3a0a000     	mov	r10, #0
  629078: e1a04002     	mov	r4, r2
  62907c: e1a05001     	mov	r5, r1
  629080: e58d3004     	str	r3, [sp, #0x4]
  629084: e58da014     	str	r10, [sp, #0x14]
  629088: 0a00002b     	beq	0x62913c <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIcEELi1EcEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xd4> @ imm = #0xac
  62908c: e3520000     	cmp	r2, #0
  629090: 01a0b00a     	moveq	r11, r10
  629094: 01a0900a     	moveq	r9, r10
  629098: 0a00001d     	beq	0x629114 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIcEELi1EcEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xac> @ imm = #0x74
  62909c: e1a06000     	mov	r6, r0
  6290a0: e3a08000     	mov	r8, #0
  6290a4: e1a0b00a     	mov	r11, r10
  6290a8: e1a0900a     	mov	r9, r10
  6290ac: e7957008     	ldr	r7, [r5, r8]
  6290b0: e5961000     	ldr	r1, [r6]
  6290b4: e2888004     	add	r8, r8, #4
  6290b8: e1a00007     	mov	r0, r7
  6290bc: ebf3972a     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31a358
  6290c0: e1a01000     	mov	r1, r0
  6290c4: e1a0000a     	mov	r0, r10
  6290c8: ebf396b5     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31a52c
  6290cc: e5961004     	ldr	r1, [r6, #0x4]
  6290d0: e1a0a000     	mov	r10, r0
  6290d4: e1a00007     	mov	r0, r7
  6290d8: ebf39723     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31a374
  6290dc: e1a01000     	mov	r1, r0
  6290e0: e1a0000b     	mov	r0, r11
  6290e4: ebf396ae     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31a548
  6290e8: e5961008     	ldr	r1, [r6, #0x8]
  6290ec: e1a0b000     	mov	r11, r0
  6290f0: e1a00007     	mov	r0, r7
  6290f4: ebf3971c     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31a390
  6290f8: e1a01000     	mov	r1, r0
  6290fc: e1a00009     	mov	r0, r9
  629100: ebf396a7     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31a564
  629104: e2544001     	subs	r4, r4, #1
  629108: e1a09000     	mov	r9, r0
  62910c: e286600c     	add	r6, r6, #12
  629110: 1affffe5     	bne	0x6290ac <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIcEELi1EcEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x44> @ imm = #-0x6c
  629114: e28d1018     	add	r1, sp, #24
  629118: e521a00c     	str	r10, [r1, #-0xc]!
  62911c: e58db010     	str	r11, [sp, #0x10]
  629120: e5819008     	str	r9, [r1, #0x8]
  629124: e59d0004     	ldr	r0, [sp, #0x4]
  629128: e5903000     	ldr	r3, [r0]
  62912c: e1a0e00f     	mov	lr, pc
  629130: e593f0a4     	ldr	pc, [r3, #0xa4]
  629134: e28dd01c     	add	sp, sp, #28
  629138: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62913c: e1a03000     	mov	r3, r0
  629140: e493c004     	ldr	r12, [r3], #4
  629144: e5902004     	ldr	r2, [r0, #0x4]
  629148: e28d1018     	add	r1, sp, #24
  62914c: e5933004     	ldr	r3, [r3, #0x4]
  629150: e521c00c     	str	r12, [r1, #-0xc]!
  629154: e58d2010     	str	r2, [sp, #0x10]
  629158: e5813008     	str	r3, [r1, #0x8]
  62915c: eafffff0     	b	0x629124 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIcEELi1EcEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xbc> @ imm = #-0x40

; FUNCTION 0x00629160 size=28 sha256=e7ecfdacaee34dd6f39b726dc7b5ffcc3adf55e2c7037d1df0d3033e53eb0543
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
00629160 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIcEELi1EcEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  629160: e1a00001     	mov	r0, r1
  629164: e59dc004     	ldr	r12, [sp, #0x4]
  629168: e1a01002     	mov	r1, r2
  62916c: e1a02003     	mov	r2, r3
  629170: e59d3000     	ldr	r3, [sp]
  629174: e58dc000     	str	r12, [sp]
  629178: eaffffba     	b	0x629068 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIcEELi1EcEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE> @ imm = #-0x118

; FUNCTION 0x0062917c size=248 sha256=4fc49364b7f35f5ff634ef6cb85e0b0618275385bbcd59d77fcee6d0b496b39e
; symbols: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
0062917c <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIsEELi1EsEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE>:
  62917c: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  629180: e3520001     	cmp	r2, #1
  629184: e24dd01c     	sub	sp, sp, #28
  629188: e3a0a000     	mov	r10, #0
  62918c: e1a04002     	mov	r4, r2
  629190: e1a05001     	mov	r5, r1
  629194: e58d3004     	str	r3, [sp, #0x4]
  629198: e58da014     	str	r10, [sp, #0x14]
  62919c: 0a00002b     	beq	0x629250 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIsEELi1EsEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xd4> @ imm = #0xac
  6291a0: e3520000     	cmp	r2, #0
  6291a4: 01a0b00a     	moveq	r11, r10
  6291a8: 01a0900a     	moveq	r9, r10
  6291ac: 0a00001d     	beq	0x629228 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIsEELi1EsEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xac> @ imm = #0x74
  6291b0: e1a06000     	mov	r6, r0
  6291b4: e3a08000     	mov	r8, #0
  6291b8: e1a0b00a     	mov	r11, r10
  6291bc: e1a0900a     	mov	r9, r10
  6291c0: e7957008     	ldr	r7, [r5, r8]
  6291c4: e5961000     	ldr	r1, [r6]
  6291c8: e2888004     	add	r8, r8, #4
  6291cc: e1a00007     	mov	r0, r7
  6291d0: ebf396e5     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31a46c
  6291d4: e1a01000     	mov	r1, r0
  6291d8: e1a0000a     	mov	r0, r10
  6291dc: ebf39670     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31a640
  6291e0: e5961004     	ldr	r1, [r6, #0x4]
  6291e4: e1a0a000     	mov	r10, r0
  6291e8: e1a00007     	mov	r0, r7
  6291ec: ebf396de     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31a488
  6291f0: e1a01000     	mov	r1, r0
  6291f4: e1a0000b     	mov	r0, r11
  6291f8: ebf39669     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31a65c
  6291fc: e5961008     	ldr	r1, [r6, #0x8]
  629200: e1a0b000     	mov	r11, r0
  629204: e1a00007     	mov	r0, r7
  629208: ebf396d7     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31a4a4
  62920c: e1a01000     	mov	r1, r0
  629210: e1a00009     	mov	r0, r9
  629214: ebf39662     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31a678
  629218: e2544001     	subs	r4, r4, #1
  62921c: e1a09000     	mov	r9, r0
  629220: e286600c     	add	r6, r6, #12
  629224: 1affffe5     	bne	0x6291c0 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIsEELi1EsEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x44> @ imm = #-0x6c
  629228: e28d1018     	add	r1, sp, #24
  62922c: e521a00c     	str	r10, [r1, #-0xc]!
  629230: e58db010     	str	r11, [sp, #0x10]
  629234: e5819008     	str	r9, [r1, #0x8]
  629238: e59d0004     	ldr	r0, [sp, #0x4]
  62923c: e5903000     	ldr	r3, [r0]
  629240: e1a0e00f     	mov	lr, pc
  629244: e593f0a4     	ldr	pc, [r3, #0xa4]
  629248: e28dd01c     	add	sp, sp, #28
  62924c: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  629250: e1a03000     	mov	r3, r0
  629254: e493c004     	ldr	r12, [r3], #4
  629258: e5902004     	ldr	r2, [r0, #0x4]
  62925c: e28d1018     	add	r1, sp, #24
  629260: e5933004     	ldr	r3, [r3, #0x4]
  629264: e521c00c     	str	r12, [r1, #-0xc]!
  629268: e58d2010     	str	r2, [sp, #0x10]
  62926c: e5813008     	str	r3, [r1, #0x8]
  629270: eafffff0     	b	0x629238 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIsEELi1EsEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xbc> @ imm = #-0x40

; FUNCTION 0x00629274 size=28 sha256=e7ecfdacaee34dd6f39b726dc7b5ffcc3adf55e2c7037d1df0d3033e53eb0543
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
00629274 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIsEELi1EsEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  629274: e1a00001     	mov	r0, r1
  629278: e59dc004     	ldr	r12, [sp, #0x4]
  62927c: e1a01002     	mov	r1, r2
  629280: e1a02003     	mov	r2, r3
  629284: e59d3000     	ldr	r3, [sp]
  629288: e58dc000     	str	r12, [sp]
  62928c: eaffffba     	b	0x62917c <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIsEELi1EsEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE> @ imm = #-0x118

; FUNCTION 0x00629290 size=248 sha256=7e14289ac4dd8daab46586215002d7edd5a0630228946bb7223dfa1fc89086f0
; symbols: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
00629290 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIsEELi1EsEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE>:
  629290: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  629294: e3520001     	cmp	r2, #1
  629298: e24dd01c     	sub	sp, sp, #28
  62929c: e3a0a000     	mov	r10, #0
  6292a0: e1a04002     	mov	r4, r2
  6292a4: e1a05001     	mov	r5, r1
  6292a8: e58d3004     	str	r3, [sp, #0x4]
  6292ac: e58da014     	str	r10, [sp, #0x14]
  6292b0: 0a00002b     	beq	0x629364 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIsEELi1EsEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xd4> @ imm = #0xac
  6292b4: e3520000     	cmp	r2, #0
  6292b8: 01a0b00a     	moveq	r11, r10
  6292bc: 01a0900a     	moveq	r9, r10
  6292c0: 0a00001d     	beq	0x62933c <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIsEELi1EsEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xac> @ imm = #0x74
  6292c4: e1a06000     	mov	r6, r0
  6292c8: e3a08000     	mov	r8, #0
  6292cc: e1a0b00a     	mov	r11, r10
  6292d0: e1a0900a     	mov	r9, r10
  6292d4: e7957008     	ldr	r7, [r5, r8]
  6292d8: e5961000     	ldr	r1, [r6]
  6292dc: e2888004     	add	r8, r8, #4
  6292e0: e1a00007     	mov	r0, r7
  6292e4: ebf396a0     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31a580
  6292e8: e1a01000     	mov	r1, r0
  6292ec: e1a0000a     	mov	r0, r10
  6292f0: ebf3962b     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31a754
  6292f4: e5961004     	ldr	r1, [r6, #0x4]
  6292f8: e1a0a000     	mov	r10, r0
  6292fc: e1a00007     	mov	r0, r7
  629300: ebf39699     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31a59c
  629304: e1a01000     	mov	r1, r0
  629308: e1a0000b     	mov	r0, r11
  62930c: ebf39624     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31a770
  629310: e5961008     	ldr	r1, [r6, #0x8]
  629314: e1a0b000     	mov	r11, r0
  629318: e1a00007     	mov	r0, r7
  62931c: ebf39692     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31a5b8
  629320: e1a01000     	mov	r1, r0
  629324: e1a00009     	mov	r0, r9
  629328: ebf3961d     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31a78c
  62932c: e2544001     	subs	r4, r4, #1
  629330: e1a09000     	mov	r9, r0
  629334: e286600c     	add	r6, r6, #12
  629338: 1affffe5     	bne	0x6292d4 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIsEELi1EsEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x44> @ imm = #-0x6c
  62933c: e28d1018     	add	r1, sp, #24
  629340: e521a00c     	str	r10, [r1, #-0xc]!
  629344: e58db010     	str	r11, [sp, #0x10]
  629348: e5819008     	str	r9, [r1, #0x8]
  62934c: e59d0004     	ldr	r0, [sp, #0x4]
  629350: e5903000     	ldr	r3, [r0]
  629354: e1a0e00f     	mov	lr, pc
  629358: e593f0a4     	ldr	pc, [r3, #0xa4]
  62935c: e28dd01c     	add	sp, sp, #28
  629360: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  629364: e1a03000     	mov	r3, r0
  629368: e493c004     	ldr	r12, [r3], #4
  62936c: e5902004     	ldr	r2, [r0, #0x4]
  629370: e28d1018     	add	r1, sp, #24
  629374: e5933004     	ldr	r3, [r3, #0x4]
  629378: e521c00c     	str	r12, [r1, #-0xc]!
  62937c: e58d2010     	str	r2, [sp, #0x10]
  629380: e5813008     	str	r3, [r1, #0x8]
  629384: eafffff0     	b	0x62934c <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIsEELi1EsEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xbc> @ imm = #-0x40

; FUNCTION 0x00629388 size=28 sha256=e7ecfdacaee34dd6f39b726dc7b5ffcc3adf55e2c7037d1df0d3033e53eb0543
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
00629388 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIsEELi1EsEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  629388: e1a00001     	mov	r0, r1
  62938c: e59dc004     	ldr	r12, [sp, #0x4]
  629390: e1a01002     	mov	r1, r2
  629394: e1a02003     	mov	r2, r3
  629398: e59d3000     	ldr	r3, [sp]
  62939c: e58dc000     	str	r12, [sp]
  6293a0: eaffffba     	b	0x629290 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIsEELi1EsEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE> @ imm = #-0x118

; FUNCTION 0x006293a4 size=248 sha256=f974c5021a6aad88ced9fb3c6e2c2a34af64d17ddfec3e2c58ddb3a809ec4207
; symbols: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
006293a4 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIfEELi1EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE>:
  6293a4: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  6293a8: e3520001     	cmp	r2, #1
  6293ac: e24dd01c     	sub	sp, sp, #28
  6293b0: e3a0a000     	mov	r10, #0
  6293b4: e1a04002     	mov	r4, r2
  6293b8: e1a05001     	mov	r5, r1
  6293bc: e58d3004     	str	r3, [sp, #0x4]
  6293c0: e58da014     	str	r10, [sp, #0x14]
  6293c4: 0a00002b     	beq	0x629478 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIfEELi1EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xd4> @ imm = #0xac
  6293c8: e3520000     	cmp	r2, #0
  6293cc: 01a0b00a     	moveq	r11, r10
  6293d0: 01a0900a     	moveq	r9, r10
  6293d4: 0a00001d     	beq	0x629450 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIfEELi1EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xac> @ imm = #0x74
  6293d8: e1a06000     	mov	r6, r0
  6293dc: e3a08000     	mov	r8, #0
  6293e0: e1a0b00a     	mov	r11, r10
  6293e4: e1a0900a     	mov	r9, r10
  6293e8: e7957008     	ldr	r7, [r5, r8]
  6293ec: e5961000     	ldr	r1, [r6]
  6293f0: e2888004     	add	r8, r8, #4
  6293f4: e1a00007     	mov	r0, r7
  6293f8: ebf3965b     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31a694
  6293fc: e1a01000     	mov	r1, r0
  629400: e1a0000a     	mov	r0, r10
  629404: ebf395e6     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31a868
  629408: e5961004     	ldr	r1, [r6, #0x4]
  62940c: e1a0a000     	mov	r10, r0
  629410: e1a00007     	mov	r0, r7
  629414: ebf39654     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31a6b0
  629418: e1a01000     	mov	r1, r0
  62941c: e1a0000b     	mov	r0, r11
  629420: ebf395df     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31a884
  629424: e5961008     	ldr	r1, [r6, #0x8]
  629428: e1a0b000     	mov	r11, r0
  62942c: e1a00007     	mov	r0, r7
  629430: ebf3964d     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31a6cc
  629434: e1a01000     	mov	r1, r0
  629438: e1a00009     	mov	r0, r9
  62943c: ebf395d8     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31a8a0
  629440: e2544001     	subs	r4, r4, #1
  629444: e1a09000     	mov	r9, r0
  629448: e286600c     	add	r6, r6, #12
  62944c: 1affffe5     	bne	0x6293e8 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIfEELi1EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x44> @ imm = #-0x6c
  629450: e28d1018     	add	r1, sp, #24
  629454: e521a00c     	str	r10, [r1, #-0xc]!
  629458: e58db010     	str	r11, [sp, #0x10]
  62945c: e5819008     	str	r9, [r1, #0x8]
  629460: e59d0004     	ldr	r0, [sp, #0x4]
  629464: e5903000     	ldr	r3, [r0]
  629468: e1a0e00f     	mov	lr, pc
  62946c: e593f0a4     	ldr	pc, [r3, #0xa4]
  629470: e28dd01c     	add	sp, sp, #28
  629474: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  629478: e1a03000     	mov	r3, r0
  62947c: e493c004     	ldr	r12, [r3], #4
  629480: e5902004     	ldr	r2, [r0, #0x4]
  629484: e28d1018     	add	r1, sp, #24
  629488: e5933004     	ldr	r3, [r3, #0x4]
  62948c: e521c00c     	str	r12, [r1, #-0xc]!
  629490: e58d2010     	str	r2, [sp, #0x10]
  629494: e5813008     	str	r3, [r1, #0x8]
  629498: eafffff0     	b	0x629460 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIfEELi1EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xbc> @ imm = #-0x40

; FUNCTION 0x0062949c size=28 sha256=e7ecfdacaee34dd6f39b726dc7b5ffcc3adf55e2c7037d1df0d3033e53eb0543
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
0062949c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIfEELi1EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  62949c: e1a00001     	mov	r0, r1
  6294a0: e59dc004     	ldr	r12, [sp, #0x4]
  6294a4: e1a01002     	mov	r1, r2
  6294a8: e1a02003     	mov	r2, r3
  6294ac: e59d3000     	ldr	r3, [sp]
  6294b0: e58dc000     	str	r12, [sp]
  6294b4: eaffffba     	b	0x6293a4 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIfEELi1EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE> @ imm = #-0x118

; FUNCTION 0x006294b8 size=248 sha256=58205ffa52d18353e883c1d4df7d33d1b0aa108c866861804d4c7cce08f2770c
; symbols: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
006294b8 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIfEELi1EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE>:
  6294b8: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  6294bc: e3520001     	cmp	r2, #1
  6294c0: e24dd01c     	sub	sp, sp, #28
  6294c4: e3a0a000     	mov	r10, #0
  6294c8: e1a04002     	mov	r4, r2
  6294cc: e1a05001     	mov	r5, r1
  6294d0: e58d3004     	str	r3, [sp, #0x4]
  6294d4: e58da014     	str	r10, [sp, #0x14]
  6294d8: 0a00002b     	beq	0x62958c <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIfEELi1EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xd4> @ imm = #0xac
  6294dc: e3520000     	cmp	r2, #0
  6294e0: 01a0b00a     	moveq	r11, r10
  6294e4: 01a0900a     	moveq	r9, r10
  6294e8: 0a00001d     	beq	0x629564 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIfEELi1EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xac> @ imm = #0x74
  6294ec: e1a06000     	mov	r6, r0
  6294f0: e3a08000     	mov	r8, #0
  6294f4: e1a0b00a     	mov	r11, r10
  6294f8: e1a0900a     	mov	r9, r10
  6294fc: e7957008     	ldr	r7, [r5, r8]
  629500: e5961000     	ldr	r1, [r6]
  629504: e2888004     	add	r8, r8, #4
  629508: e1a00007     	mov	r0, r7
  62950c: ebf39616     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31a7a8
  629510: e1a01000     	mov	r1, r0
  629514: e1a0000a     	mov	r0, r10
  629518: ebf395a1     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31a97c
  62951c: e5961004     	ldr	r1, [r6, #0x4]
  629520: e1a0a000     	mov	r10, r0
  629524: e1a00007     	mov	r0, r7
  629528: ebf3960f     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31a7c4
  62952c: e1a01000     	mov	r1, r0
  629530: e1a0000b     	mov	r0, r11
  629534: ebf3959a     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31a998
  629538: e5961008     	ldr	r1, [r6, #0x8]
  62953c: e1a0b000     	mov	r11, r0
  629540: e1a00007     	mov	r0, r7
  629544: ebf39608     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31a7e0
  629548: e1a01000     	mov	r1, r0
  62954c: e1a00009     	mov	r0, r9
  629550: ebf39593     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31a9b4
  629554: e2544001     	subs	r4, r4, #1
  629558: e1a09000     	mov	r9, r0
  62955c: e286600c     	add	r6, r6, #12
  629560: 1affffe5     	bne	0x6294fc <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIfEELi1EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x44> @ imm = #-0x6c
  629564: e28d1018     	add	r1, sp, #24
  629568: e521a00c     	str	r10, [r1, #-0xc]!
  62956c: e58db010     	str	r11, [sp, #0x10]
  629570: e5819008     	str	r9, [r1, #0x8]
  629574: e59d0004     	ldr	r0, [sp, #0x4]
  629578: e5903000     	ldr	r3, [r0]
  62957c: e1a0e00f     	mov	lr, pc
  629580: e593f0a4     	ldr	pc, [r3, #0xa4]
  629584: e28dd01c     	add	sp, sp, #28
  629588: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62958c: e1a03000     	mov	r3, r0
  629590: e493c004     	ldr	r12, [r3], #4
  629594: e5902004     	ldr	r2, [r0, #0x4]
  629598: e28d1018     	add	r1, sp, #24
  62959c: e5933004     	ldr	r3, [r3, #0x4]
  6295a0: e521c00c     	str	r12, [r1, #-0xc]!
  6295a4: e58d2010     	str	r2, [sp, #0x10]
  6295a8: e5813008     	str	r3, [r1, #0x8]
  6295ac: eafffff0     	b	0x629574 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIfEELi1EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xbc> @ imm = #-0x40

; FUNCTION 0x006295b0 size=28 sha256=e7ecfdacaee34dd6f39b726dc7b5ffcc3adf55e2c7037d1df0d3033e53eb0543
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
006295b0 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIfEELi1EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  6295b0: e1a00001     	mov	r0, r1
  6295b4: e59dc004     	ldr	r12, [sp, #0x4]
  6295b8: e1a01002     	mov	r1, r2
  6295bc: e1a02003     	mov	r2, r3
  6295c0: e59d3000     	ldr	r3, [sp]
  6295c4: e58dc000     	str	r12, [sp]
  6295c8: eaffffba     	b	0x6294b8 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIfEELi1EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE> @ imm = #-0x118

; FUNCTION 0x006295cc size=248 sha256=1877801e33e2493babcb27d36a639d91c2dc158caeefb8236d62f75ad0fe5aad
; symbols: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
006295cc <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIcEELi0EcEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE>:
  6295cc: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  6295d0: e3520001     	cmp	r2, #1
  6295d4: e24dd01c     	sub	sp, sp, #28
  6295d8: e3a0a000     	mov	r10, #0
  6295dc: e1a04002     	mov	r4, r2
  6295e0: e1a05001     	mov	r5, r1
  6295e4: e58d3004     	str	r3, [sp, #0x4]
  6295e8: e58da014     	str	r10, [sp, #0x14]
  6295ec: 0a00002b     	beq	0x6296a0 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIcEELi0EcEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xd4> @ imm = #0xac
  6295f0: e3520000     	cmp	r2, #0
  6295f4: 01a0b00a     	moveq	r11, r10
  6295f8: 01a0900a     	moveq	r9, r10
  6295fc: 0a00001d     	beq	0x629678 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIcEELi0EcEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xac> @ imm = #0x74
  629600: e1a06000     	mov	r6, r0
  629604: e3a08000     	mov	r8, #0
  629608: e1a0b00a     	mov	r11, r10
  62960c: e1a0900a     	mov	r9, r10
  629610: e7957008     	ldr	r7, [r5, r8]
  629614: e5961000     	ldr	r1, [r6]
  629618: e2888004     	add	r8, r8, #4
  62961c: e1a00007     	mov	r0, r7
  629620: ebf395d1     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31a8bc
  629624: e1a01000     	mov	r1, r0
  629628: e1a0000a     	mov	r0, r10
  62962c: ebf3955c     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31aa90
  629630: e5961004     	ldr	r1, [r6, #0x4]
  629634: e1a0a000     	mov	r10, r0
  629638: e1a00007     	mov	r0, r7
  62963c: ebf395ca     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31a8d8
  629640: e1a01000     	mov	r1, r0
  629644: e1a0000b     	mov	r0, r11
  629648: ebf39555     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31aaac
  62964c: e5961008     	ldr	r1, [r6, #0x8]
  629650: e1a0b000     	mov	r11, r0
  629654: e1a00007     	mov	r0, r7
  629658: ebf395c3     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31a8f4
  62965c: e1a01000     	mov	r1, r0
  629660: e1a00009     	mov	r0, r9
  629664: ebf3954e     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31aac8
  629668: e2544001     	subs	r4, r4, #1
  62966c: e1a09000     	mov	r9, r0
  629670: e286600c     	add	r6, r6, #12
  629674: 1affffe5     	bne	0x629610 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIcEELi0EcEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x44> @ imm = #-0x6c
  629678: e28d1018     	add	r1, sp, #24
  62967c: e521a00c     	str	r10, [r1, #-0xc]!
  629680: e58db010     	str	r11, [sp, #0x10]
  629684: e5819008     	str	r9, [r1, #0x8]
  629688: e59d0004     	ldr	r0, [sp, #0x4]
  62968c: e5903000     	ldr	r3, [r0]
  629690: e1a0e00f     	mov	lr, pc
  629694: e593f0a4     	ldr	pc, [r3, #0xa4]
  629698: e28dd01c     	add	sp, sp, #28
  62969c: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  6296a0: e1a03000     	mov	r3, r0
  6296a4: e493c004     	ldr	r12, [r3], #4
  6296a8: e5902004     	ldr	r2, [r0, #0x4]
  6296ac: e28d1018     	add	r1, sp, #24
  6296b0: e5933004     	ldr	r3, [r3, #0x4]
  6296b4: e521c00c     	str	r12, [r1, #-0xc]!
  6296b8: e58d2010     	str	r2, [sp, #0x10]
  6296bc: e5813008     	str	r3, [r1, #0x8]
  6296c0: eafffff0     	b	0x629688 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIcEELi0EcEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xbc> @ imm = #-0x40

; FUNCTION 0x006296c4 size=28 sha256=e7ecfdacaee34dd6f39b726dc7b5ffcc3adf55e2c7037d1df0d3033e53eb0543
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
006296c4 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIcEELi0EcEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  6296c4: e1a00001     	mov	r0, r1
  6296c8: e59dc004     	ldr	r12, [sp, #0x4]
  6296cc: e1a01002     	mov	r1, r2
  6296d0: e1a02003     	mov	r2, r3
  6296d4: e59d3000     	ldr	r3, [sp]
  6296d8: e58dc000     	str	r12, [sp]
  6296dc: eaffffba     	b	0x6295cc <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIcEELi0EcEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE> @ imm = #-0x118

; FUNCTION 0x006296e0 size=248 sha256=a115be0cb763ab767fc5015dbb131598f87b7edee6eb522efca6befefbe6c036
; symbols: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
006296e0 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIcEELi0EcEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE>:
  6296e0: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  6296e4: e3520001     	cmp	r2, #1
  6296e8: e24dd01c     	sub	sp, sp, #28
  6296ec: e3a0a000     	mov	r10, #0
  6296f0: e1a04002     	mov	r4, r2
  6296f4: e1a05001     	mov	r5, r1
  6296f8: e58d3004     	str	r3, [sp, #0x4]
  6296fc: e58da014     	str	r10, [sp, #0x14]
  629700: 0a00002b     	beq	0x6297b4 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIcEELi0EcEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xd4> @ imm = #0xac
  629704: e3520000     	cmp	r2, #0
  629708: 01a0b00a     	moveq	r11, r10
  62970c: 01a0900a     	moveq	r9, r10
  629710: 0a00001d     	beq	0x62978c <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIcEELi0EcEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xac> @ imm = #0x74
  629714: e1a06000     	mov	r6, r0
  629718: e3a08000     	mov	r8, #0
  62971c: e1a0b00a     	mov	r11, r10
  629720: e1a0900a     	mov	r9, r10
  629724: e7957008     	ldr	r7, [r5, r8]
  629728: e5961000     	ldr	r1, [r6]
  62972c: e2888004     	add	r8, r8, #4
  629730: e1a00007     	mov	r0, r7
  629734: ebf3958c     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31a9d0
  629738: e1a01000     	mov	r1, r0
  62973c: e1a0000a     	mov	r0, r10
  629740: ebf39517     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31aba4
  629744: e5961004     	ldr	r1, [r6, #0x4]
  629748: e1a0a000     	mov	r10, r0
  62974c: e1a00007     	mov	r0, r7
  629750: ebf39585     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31a9ec
  629754: e1a01000     	mov	r1, r0
  629758: e1a0000b     	mov	r0, r11
  62975c: ebf39510     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31abc0
  629760: e5961008     	ldr	r1, [r6, #0x8]
  629764: e1a0b000     	mov	r11, r0
  629768: e1a00007     	mov	r0, r7
  62976c: ebf3957e     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31aa08
  629770: e1a01000     	mov	r1, r0
  629774: e1a00009     	mov	r0, r9
  629778: ebf39509     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31abdc
  62977c: e2544001     	subs	r4, r4, #1
  629780: e1a09000     	mov	r9, r0
  629784: e286600c     	add	r6, r6, #12
  629788: 1affffe5     	bne	0x629724 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIcEELi0EcEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x44> @ imm = #-0x6c
  62978c: e28d1018     	add	r1, sp, #24
  629790: e521a00c     	str	r10, [r1, #-0xc]!
  629794: e58db010     	str	r11, [sp, #0x10]
  629798: e5819008     	str	r9, [r1, #0x8]
  62979c: e59d0004     	ldr	r0, [sp, #0x4]
  6297a0: e5903000     	ldr	r3, [r0]
  6297a4: e1a0e00f     	mov	lr, pc
  6297a8: e593f0a4     	ldr	pc, [r3, #0xa4]
  6297ac: e28dd01c     	add	sp, sp, #28
  6297b0: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  6297b4: e1a03000     	mov	r3, r0
  6297b8: e493c004     	ldr	r12, [r3], #4
  6297bc: e5902004     	ldr	r2, [r0, #0x4]
  6297c0: e28d1018     	add	r1, sp, #24
  6297c4: e5933004     	ldr	r3, [r3, #0x4]
  6297c8: e521c00c     	str	r12, [r1, #-0xc]!
  6297cc: e58d2010     	str	r2, [sp, #0x10]
  6297d0: e5813008     	str	r3, [r1, #0x8]
  6297d4: eafffff0     	b	0x62979c <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIcEELi0EcEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xbc> @ imm = #-0x40

; FUNCTION 0x006297d8 size=28 sha256=e7ecfdacaee34dd6f39b726dc7b5ffcc3adf55e2c7037d1df0d3033e53eb0543
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
006297d8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIcEELi0EcEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  6297d8: e1a00001     	mov	r0, r1
  6297dc: e59dc004     	ldr	r12, [sp, #0x4]
  6297e0: e1a01002     	mov	r1, r2
  6297e4: e1a02003     	mov	r2, r3
  6297e8: e59d3000     	ldr	r3, [sp]
  6297ec: e58dc000     	str	r12, [sp]
  6297f0: eaffffba     	b	0x6296e0 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIcEELi0EcEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE> @ imm = #-0x118

; FUNCTION 0x006297f4 size=248 sha256=978512aca68bc33b442cb555ad2fcc48379b6acbf91096e27b828aae7279f056
; symbols: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
006297f4 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIsEELi0EsEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE>:
  6297f4: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  6297f8: e3520001     	cmp	r2, #1
  6297fc: e24dd01c     	sub	sp, sp, #28
  629800: e3a0a000     	mov	r10, #0
  629804: e1a04002     	mov	r4, r2
  629808: e1a05001     	mov	r5, r1
  62980c: e58d3004     	str	r3, [sp, #0x4]
  629810: e58da014     	str	r10, [sp, #0x14]
  629814: 0a00002b     	beq	0x6298c8 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIsEELi0EsEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xd4> @ imm = #0xac
  629818: e3520000     	cmp	r2, #0
  62981c: 01a0b00a     	moveq	r11, r10
  629820: 01a0900a     	moveq	r9, r10
  629824: 0a00001d     	beq	0x6298a0 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIsEELi0EsEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xac> @ imm = #0x74
  629828: e1a06000     	mov	r6, r0
  62982c: e3a08000     	mov	r8, #0
  629830: e1a0b00a     	mov	r11, r10
  629834: e1a0900a     	mov	r9, r10
  629838: e7957008     	ldr	r7, [r5, r8]
  62983c: e5961000     	ldr	r1, [r6]
  629840: e2888004     	add	r8, r8, #4
  629844: e1a00007     	mov	r0, r7
  629848: ebf39547     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31aae4
  62984c: e1a01000     	mov	r1, r0
  629850: e1a0000a     	mov	r0, r10
  629854: ebf394d2     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31acb8
  629858: e5961004     	ldr	r1, [r6, #0x4]
  62985c: e1a0a000     	mov	r10, r0
  629860: e1a00007     	mov	r0, r7
  629864: ebf39540     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31ab00
  629868: e1a01000     	mov	r1, r0
  62986c: e1a0000b     	mov	r0, r11
  629870: ebf394cb     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31acd4
  629874: e5961008     	ldr	r1, [r6, #0x8]
  629878: e1a0b000     	mov	r11, r0
  62987c: e1a00007     	mov	r0, r7
  629880: ebf39539     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31ab1c
  629884: e1a01000     	mov	r1, r0
  629888: e1a00009     	mov	r0, r9
  62988c: ebf394c4     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31acf0
  629890: e2544001     	subs	r4, r4, #1
  629894: e1a09000     	mov	r9, r0
  629898: e286600c     	add	r6, r6, #12
  62989c: 1affffe5     	bne	0x629838 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIsEELi0EsEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x44> @ imm = #-0x6c
  6298a0: e28d1018     	add	r1, sp, #24
  6298a4: e521a00c     	str	r10, [r1, #-0xc]!
  6298a8: e58db010     	str	r11, [sp, #0x10]
  6298ac: e5819008     	str	r9, [r1, #0x8]
  6298b0: e59d0004     	ldr	r0, [sp, #0x4]
  6298b4: e5903000     	ldr	r3, [r0]
  6298b8: e1a0e00f     	mov	lr, pc
  6298bc: e593f0a4     	ldr	pc, [r3, #0xa4]
  6298c0: e28dd01c     	add	sp, sp, #28
  6298c4: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  6298c8: e1a03000     	mov	r3, r0
  6298cc: e493c004     	ldr	r12, [r3], #4
  6298d0: e5902004     	ldr	r2, [r0, #0x4]
  6298d4: e28d1018     	add	r1, sp, #24
  6298d8: e5933004     	ldr	r3, [r3, #0x4]
  6298dc: e521c00c     	str	r12, [r1, #-0xc]!
  6298e0: e58d2010     	str	r2, [sp, #0x10]
  6298e4: e5813008     	str	r3, [r1, #0x8]
  6298e8: eafffff0     	b	0x6298b0 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIsEELi0EsEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xbc> @ imm = #-0x40

; FUNCTION 0x006298ec size=28 sha256=e7ecfdacaee34dd6f39b726dc7b5ffcc3adf55e2c7037d1df0d3033e53eb0543
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
006298ec <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIsEELi0EsEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  6298ec: e1a00001     	mov	r0, r1
  6298f0: e59dc004     	ldr	r12, [sp, #0x4]
  6298f4: e1a01002     	mov	r1, r2
  6298f8: e1a02003     	mov	r2, r3
  6298fc: e59d3000     	ldr	r3, [sp]
  629900: e58dc000     	str	r12, [sp]
  629904: eaffffba     	b	0x6297f4 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIsEELi0EsEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE> @ imm = #-0x118

; FUNCTION 0x00629908 size=248 sha256=be2a8ebfa1b684deafc41ca75e114d0d248f118b429650840981403d6c62b44c
; symbols: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
00629908 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIsEELi0EsEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE>:
  629908: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62990c: e3520001     	cmp	r2, #1
  629910: e24dd01c     	sub	sp, sp, #28
  629914: e3a0a000     	mov	r10, #0
  629918: e1a04002     	mov	r4, r2
  62991c: e1a05001     	mov	r5, r1
  629920: e58d3004     	str	r3, [sp, #0x4]
  629924: e58da014     	str	r10, [sp, #0x14]
  629928: 0a00002b     	beq	0x6299dc <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIsEELi0EsEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xd4> @ imm = #0xac
  62992c: e3520000     	cmp	r2, #0
  629930: 01a0b00a     	moveq	r11, r10
  629934: 01a0900a     	moveq	r9, r10
  629938: 0a00001d     	beq	0x6299b4 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIsEELi0EsEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xac> @ imm = #0x74
  62993c: e1a06000     	mov	r6, r0
  629940: e3a08000     	mov	r8, #0
  629944: e1a0b00a     	mov	r11, r10
  629948: e1a0900a     	mov	r9, r10
  62994c: e7957008     	ldr	r7, [r5, r8]
  629950: e5961000     	ldr	r1, [r6]
  629954: e2888004     	add	r8, r8, #4
  629958: e1a00007     	mov	r0, r7
  62995c: ebf39502     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31abf8
  629960: e1a01000     	mov	r1, r0
  629964: e1a0000a     	mov	r0, r10
  629968: ebf3948d     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31adcc
  62996c: e5961004     	ldr	r1, [r6, #0x4]
  629970: e1a0a000     	mov	r10, r0
  629974: e1a00007     	mov	r0, r7
  629978: ebf394fb     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31ac14
  62997c: e1a01000     	mov	r1, r0
  629980: e1a0000b     	mov	r0, r11
  629984: ebf39486     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31ade8
  629988: e5961008     	ldr	r1, [r6, #0x8]
  62998c: e1a0b000     	mov	r11, r0
  629990: e1a00007     	mov	r0, r7
  629994: ebf394f4     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31ac30
  629998: e1a01000     	mov	r1, r0
  62999c: e1a00009     	mov	r0, r9
  6299a0: ebf3947f     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31ae04
  6299a4: e2544001     	subs	r4, r4, #1
  6299a8: e1a09000     	mov	r9, r0
  6299ac: e286600c     	add	r6, r6, #12
  6299b0: 1affffe5     	bne	0x62994c <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIsEELi0EsEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x44> @ imm = #-0x6c
  6299b4: e28d1018     	add	r1, sp, #24
  6299b8: e521a00c     	str	r10, [r1, #-0xc]!
  6299bc: e58db010     	str	r11, [sp, #0x10]
  6299c0: e5819008     	str	r9, [r1, #0x8]
  6299c4: e59d0004     	ldr	r0, [sp, #0x4]
  6299c8: e5903000     	ldr	r3, [r0]
  6299cc: e1a0e00f     	mov	lr, pc
  6299d0: e593f0a4     	ldr	pc, [r3, #0xa4]
  6299d4: e28dd01c     	add	sp, sp, #28
  6299d8: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  6299dc: e1a03000     	mov	r3, r0
  6299e0: e493c004     	ldr	r12, [r3], #4
  6299e4: e5902004     	ldr	r2, [r0, #0x4]
  6299e8: e28d1018     	add	r1, sp, #24
  6299ec: e5933004     	ldr	r3, [r3, #0x4]
  6299f0: e521c00c     	str	r12, [r1, #-0xc]!
  6299f4: e58d2010     	str	r2, [sp, #0x10]
  6299f8: e5813008     	str	r3, [r1, #0x8]
  6299fc: eafffff0     	b	0x6299c4 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIsEELi0EsEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xbc> @ imm = #-0x40

; FUNCTION 0x00629a00 size=28 sha256=e7ecfdacaee34dd6f39b726dc7b5ffcc3adf55e2c7037d1df0d3033e53eb0543
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
00629a00 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIsEELi0EsEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  629a00: e1a00001     	mov	r0, r1
  629a04: e59dc004     	ldr	r12, [sp, #0x4]
  629a08: e1a01002     	mov	r1, r2
  629a0c: e1a02003     	mov	r2, r3
  629a10: e59d3000     	ldr	r3, [sp]
  629a14: e58dc000     	str	r12, [sp]
  629a18: eaffffba     	b	0x629908 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIsEELi0EsEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE> @ imm = #-0x118

; FUNCTION 0x00629a1c size=248 sha256=14549a1cd16b79625022c2c911c82e7f7904482c5997ff64ef03d14019ac7940
; symbols: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
00629a1c <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIfEELi0EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE>:
  629a1c: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  629a20: e3520001     	cmp	r2, #1
  629a24: e24dd01c     	sub	sp, sp, #28
  629a28: e3a0a000     	mov	r10, #0
  629a2c: e1a04002     	mov	r4, r2
  629a30: e1a05001     	mov	r5, r1
  629a34: e58d3004     	str	r3, [sp, #0x4]
  629a38: e58da014     	str	r10, [sp, #0x14]
  629a3c: 0a00002b     	beq	0x629af0 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIfEELi0EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xd4> @ imm = #0xac
  629a40: e3520000     	cmp	r2, #0
  629a44: 01a0b00a     	moveq	r11, r10
  629a48: 01a0900a     	moveq	r9, r10
  629a4c: 0a00001d     	beq	0x629ac8 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIfEELi0EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xac> @ imm = #0x74
  629a50: e1a06000     	mov	r6, r0
  629a54: e3a08000     	mov	r8, #0
  629a58: e1a0b00a     	mov	r11, r10
  629a5c: e1a0900a     	mov	r9, r10
  629a60: e7957008     	ldr	r7, [r5, r8]
  629a64: e5961000     	ldr	r1, [r6]
  629a68: e2888004     	add	r8, r8, #4
  629a6c: e1a00007     	mov	r0, r7
  629a70: ebf394bd     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31ad0c
  629a74: e1a01000     	mov	r1, r0
  629a78: e1a0000a     	mov	r0, r10
  629a7c: ebf39448     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31aee0
  629a80: e5961004     	ldr	r1, [r6, #0x4]
  629a84: e1a0a000     	mov	r10, r0
  629a88: e1a00007     	mov	r0, r7
  629a8c: ebf394b6     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31ad28
  629a90: e1a01000     	mov	r1, r0
  629a94: e1a0000b     	mov	r0, r11
  629a98: ebf39441     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31aefc
  629a9c: e5961008     	ldr	r1, [r6, #0x8]
  629aa0: e1a0b000     	mov	r11, r0
  629aa4: e1a00007     	mov	r0, r7
  629aa8: ebf394af     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31ad44
  629aac: e1a01000     	mov	r1, r0
  629ab0: e1a00009     	mov	r0, r9
  629ab4: ebf3943a     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31af18
  629ab8: e2544001     	subs	r4, r4, #1
  629abc: e1a09000     	mov	r9, r0
  629ac0: e286600c     	add	r6, r6, #12
  629ac4: 1affffe5     	bne	0x629a60 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIfEELi0EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x44> @ imm = #-0x6c
  629ac8: e28d1018     	add	r1, sp, #24
  629acc: e521a00c     	str	r10, [r1, #-0xc]!
  629ad0: e58db010     	str	r11, [sp, #0x10]
  629ad4: e5819008     	str	r9, [r1, #0x8]
  629ad8: e59d0004     	ldr	r0, [sp, #0x4]
  629adc: e5903000     	ldr	r3, [r0]
  629ae0: e1a0e00f     	mov	lr, pc
  629ae4: e593f0a4     	ldr	pc, [r3, #0xa4]
  629ae8: e28dd01c     	add	sp, sp, #28
  629aec: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  629af0: e1a03000     	mov	r3, r0
  629af4: e493c004     	ldr	r12, [r3], #4
  629af8: e5902004     	ldr	r2, [r0, #0x4]
  629afc: e28d1018     	add	r1, sp, #24
  629b00: e5933004     	ldr	r3, [r3, #0x4]
  629b04: e521c00c     	str	r12, [r1, #-0xc]!
  629b08: e58d2010     	str	r2, [sp, #0x10]
  629b0c: e5813008     	str	r3, [r1, #0x8]
  629b10: eafffff0     	b	0x629ad8 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIfEELi0EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xbc> @ imm = #-0x40

; FUNCTION 0x00629b14 size=28 sha256=e7ecfdacaee34dd6f39b726dc7b5ffcc3adf55e2c7037d1df0d3033e53eb0543
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
00629b14 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIfEELi0EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  629b14: e1a00001     	mov	r0, r1
  629b18: e59dc004     	ldr	r12, [sp, #0x4]
  629b1c: e1a01002     	mov	r1, r2
  629b20: e1a02003     	mov	r2, r3
  629b24: e59d3000     	ldr	r3, [sp]
  629b28: e58dc000     	str	r12, [sp]
  629b2c: eaffffba     	b	0x629a1c <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIfEELi0EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE> @ imm = #-0x118

; FUNCTION 0x00629b30 size=248 sha256=26f6c9e1fe59df03bef7b2e7615d1c4211199cf16ad9afca3e5a2102d88a7fe3
; symbols: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
00629b30 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIfEELi0EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE>:
  629b30: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  629b34: e3520001     	cmp	r2, #1
  629b38: e24dd01c     	sub	sp, sp, #28
  629b3c: e3a0a000     	mov	r10, #0
  629b40: e1a04002     	mov	r4, r2
  629b44: e1a05001     	mov	r5, r1
  629b48: e58d3004     	str	r3, [sp, #0x4]
  629b4c: e58da014     	str	r10, [sp, #0x14]
  629b50: 0a00002b     	beq	0x629c04 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIfEELi0EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xd4> @ imm = #0xac
  629b54: e3520000     	cmp	r2, #0
  629b58: 01a0b00a     	moveq	r11, r10
  629b5c: 01a0900a     	moveq	r9, r10
  629b60: 0a00001d     	beq	0x629bdc <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIfEELi0EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xac> @ imm = #0x74
  629b64: e1a06000     	mov	r6, r0
  629b68: e3a08000     	mov	r8, #0
  629b6c: e1a0b00a     	mov	r11, r10
  629b70: e1a0900a     	mov	r9, r10
  629b74: e7957008     	ldr	r7, [r5, r8]
  629b78: e5961000     	ldr	r1, [r6]
  629b7c: e2888004     	add	r8, r8, #4
  629b80: e1a00007     	mov	r0, r7
  629b84: ebf39478     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31ae20
  629b88: e1a01000     	mov	r1, r0
  629b8c: e1a0000a     	mov	r0, r10
  629b90: ebf39403     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31aff4
  629b94: e5961004     	ldr	r1, [r6, #0x4]
  629b98: e1a0a000     	mov	r10, r0
  629b9c: e1a00007     	mov	r0, r7
  629ba0: ebf39471     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31ae3c
  629ba4: e1a01000     	mov	r1, r0
  629ba8: e1a0000b     	mov	r0, r11
  629bac: ebf393fc     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31b010
  629bb0: e5961008     	ldr	r1, [r6, #0x8]
  629bb4: e1a0b000     	mov	r11, r0
  629bb8: e1a00007     	mov	r0, r7
  629bbc: ebf3946a     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31ae58
  629bc0: e1a01000     	mov	r1, r0
  629bc4: e1a00009     	mov	r0, r9
  629bc8: ebf393f5     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31b02c
  629bcc: e2544001     	subs	r4, r4, #1
  629bd0: e1a09000     	mov	r9, r0
  629bd4: e286600c     	add	r6, r6, #12
  629bd8: 1affffe5     	bne	0x629b74 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIfEELi0EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x44> @ imm = #-0x6c
  629bdc: e28d1018     	add	r1, sp, #24
  629be0: e521a00c     	str	r10, [r1, #-0xc]!
  629be4: e58db010     	str	r11, [sp, #0x10]
  629be8: e5819008     	str	r9, [r1, #0x8]
  629bec: e59d0004     	ldr	r0, [sp, #0x4]
  629bf0: e5903000     	ldr	r3, [r0]
  629bf4: e1a0e00f     	mov	lr, pc
  629bf8: e593f0a4     	ldr	pc, [r3, #0xa4]
  629bfc: e28dd01c     	add	sp, sp, #28
  629c00: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  629c04: e1a03000     	mov	r3, r0
  629c08: e493c004     	ldr	r12, [r3], #4
  629c0c: e5902004     	ldr	r2, [r0, #0x4]
  629c10: e28d1018     	add	r1, sp, #24
  629c14: e5933004     	ldr	r3, [r3, #0x4]
  629c18: e521c00c     	str	r12, [r1, #-0xc]!
  629c1c: e58d2010     	str	r2, [sp, #0x10]
  629c20: e5813008     	str	r3, [r1, #0x8]
  629c24: eafffff0     	b	0x629bec <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIfEELi0EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xbc> @ imm = #-0x40

; FUNCTION 0x00629c28 size=28 sha256=e7ecfdacaee34dd6f39b726dc7b5ffcc3adf55e2c7037d1df0d3033e53eb0543
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
00629c28 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIfEELi0EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  629c28: e1a00001     	mov	r0, r1
  629c2c: e59dc004     	ldr	r12, [sp, #0x4]
  629c30: e1a01002     	mov	r1, r2
  629c34: e1a02003     	mov	r2, r3
  629c38: e59d3000     	ldr	r3, [sp]
  629c3c: e58dc000     	str	r12, [sp]
  629c40: eaffffba     	b	0x629b30 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIfEELi0EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE> @ imm = #-0x118

; FUNCTION 0x00629e6c size=228 sha256=8d7fd67e1825723fc48d0bb7667bcff386ca4c6cad6e8e2d388cee83d2266a67
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short> > >::getBlendedValue(void*, float*, int, void*) const
00629e6c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIsEELi0EsEEEEE15getBlendedValueEPvPfiSD_>:
  629e6c: e3530001     	cmp	r3, #1
  629e70: e92d4ff8     	push	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
  629e74: e1a04003     	mov	r4, r3
  629e78: e1a0b002     	mov	r11, r2
  629e7c: 0a000029     	beq	0x629f28 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIsEELi0EsEEEEE15getBlendedValueEPvPfiSD_+0xbc> @ imm = #0xa4
  629e80: e3530000     	cmp	r3, #0
  629e84: 03a08000     	moveq	r8, #0
  629e88: 01a09008     	moveq	r9, r8
  629e8c: 01a0a008     	moveq	r10, r8
  629e90: 0a00001e     	beq	0x629f10 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIsEELi0EsEEEEE15getBlendedValueEPvPfiSD_+0xa4> @ imm = #0x78
  629e94: e3a08000     	mov	r8, #0
  629e98: e1a05001     	mov	r5, r1
  629e9c: e3a07000     	mov	r7, #0
  629ea0: e1a09008     	mov	r9, r8
  629ea4: e1a0a008     	mov	r10, r8
  629ea8: e79b6007     	ldr	r6, [r11, r7]
  629eac: e5951000     	ldr	r1, [r5]
  629eb0: e2877004     	add	r7, r7, #4
  629eb4: e1a00006     	mov	r0, r6
  629eb8: ebf393ab     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31b154
  629ebc: e1a01000     	mov	r1, r0
  629ec0: e1a00008     	mov	r0, r8
  629ec4: ebf39336     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31b328
  629ec8: e5951004     	ldr	r1, [r5, #0x4]
  629ecc: e1a08000     	mov	r8, r0
  629ed0: e1a00006     	mov	r0, r6
  629ed4: ebf393a4     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31b170
  629ed8: e1a01000     	mov	r1, r0
  629edc: e1a00009     	mov	r0, r9
  629ee0: ebf3932f     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31b344
  629ee4: e5951008     	ldr	r1, [r5, #0x8]
  629ee8: e1a09000     	mov	r9, r0
  629eec: e1a00006     	mov	r0, r6
  629ef0: ebf3939d     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31b18c
  629ef4: e1a01000     	mov	r1, r0
  629ef8: e1a0000a     	mov	r0, r10
  629efc: ebf39328     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31b360
  629f00: e2544001     	subs	r4, r4, #1
  629f04: e1a0a000     	mov	r10, r0
  629f08: e285500c     	add	r5, r5, #12
  629f0c: 1affffe5     	bne	0x629ea8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIsEELi0EsEEEEE15getBlendedValueEPvPfiSD_+0x3c> @ imm = #-0x6c
  629f10: e59d3028     	ldr	r3, [sp, #0x28]
  629f14: e4838004     	str	r8, [r3], #4
  629f18: e59d2028     	ldr	r2, [sp, #0x28]
  629f1c: e5829004     	str	r9, [r2, #0x4]
  629f20: e583a004     	str	r10, [r3, #0x4]
  629f24: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
  629f28: e1a02001     	mov	r2, r1
  629f2c: e4920004     	ldr	r0, [r2], #4
  629f30: e59d3028     	ldr	r3, [sp, #0x28]
  629f34: e4830004     	str	r0, [r3], #4
  629f38: e5911004     	ldr	r1, [r1, #0x4]
  629f3c: e59d0028     	ldr	r0, [sp, #0x28]
  629f40: e5801004     	str	r1, [r0, #0x4]
  629f44: e5922004     	ldr	r2, [r2, #0x4]
  629f48: e5832004     	str	r2, [r3, #0x4]
  629f4c: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}

; FUNCTION 0x00629f50 size=228 sha256=cfc53d3fbf26ce9b4b1c429c4460de0949e146ab31b2821a882af444f5ad171b
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char> > >::getBlendedValue(void*, float*, int, void*) const
00629f50 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIcEELi0EcEEEEE15getBlendedValueEPvPfiSD_>:
  629f50: e3530001     	cmp	r3, #1
  629f54: e92d4ff8     	push	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
  629f58: e1a04003     	mov	r4, r3
  629f5c: e1a0b002     	mov	r11, r2
  629f60: 0a000029     	beq	0x62a00c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIcEELi0EcEEEEE15getBlendedValueEPvPfiSD_+0xbc> @ imm = #0xa4
  629f64: e3530000     	cmp	r3, #0
  629f68: 03a08000     	moveq	r8, #0
  629f6c: 01a09008     	moveq	r9, r8
  629f70: 01a0a008     	moveq	r10, r8
  629f74: 0a00001e     	beq	0x629ff4 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIcEELi0EcEEEEE15getBlendedValueEPvPfiSD_+0xa4> @ imm = #0x78
  629f78: e3a08000     	mov	r8, #0
  629f7c: e1a05001     	mov	r5, r1
  629f80: e3a07000     	mov	r7, #0
  629f84: e1a09008     	mov	r9, r8
  629f88: e1a0a008     	mov	r10, r8
  629f8c: e79b6007     	ldr	r6, [r11, r7]
  629f90: e5951000     	ldr	r1, [r5]
  629f94: e2877004     	add	r7, r7, #4
  629f98: e1a00006     	mov	r0, r6
  629f9c: ebf39372     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31b238
  629fa0: e1a01000     	mov	r1, r0
  629fa4: e1a00008     	mov	r0, r8
  629fa8: ebf392fd     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31b40c
  629fac: e5951004     	ldr	r1, [r5, #0x4]
  629fb0: e1a08000     	mov	r8, r0
  629fb4: e1a00006     	mov	r0, r6
  629fb8: ebf3936b     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31b254
  629fbc: e1a01000     	mov	r1, r0
  629fc0: e1a00009     	mov	r0, r9
  629fc4: ebf392f6     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31b428
  629fc8: e5951008     	ldr	r1, [r5, #0x8]
  629fcc: e1a09000     	mov	r9, r0
  629fd0: e1a00006     	mov	r0, r6
  629fd4: ebf39364     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31b270
  629fd8: e1a01000     	mov	r1, r0
  629fdc: e1a0000a     	mov	r0, r10
  629fe0: ebf392ef     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31b444
  629fe4: e2544001     	subs	r4, r4, #1
  629fe8: e1a0a000     	mov	r10, r0
  629fec: e285500c     	add	r5, r5, #12
  629ff0: 1affffe5     	bne	0x629f8c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIcEELi0EcEEEEE15getBlendedValueEPvPfiSD_+0x3c> @ imm = #-0x6c
  629ff4: e59d3028     	ldr	r3, [sp, #0x28]
  629ff8: e4838004     	str	r8, [r3], #4
  629ffc: e59d2028     	ldr	r2, [sp, #0x28]
  62a000: e5829004     	str	r9, [r2, #0x4]
  62a004: e583a004     	str	r10, [r3, #0x4]
  62a008: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62a00c: e1a02001     	mov	r2, r1
  62a010: e4920004     	ldr	r0, [r2], #4
  62a014: e59d3028     	ldr	r3, [sp, #0x28]
  62a018: e4830004     	str	r0, [r3], #4
  62a01c: e5911004     	ldr	r1, [r1, #0x4]
  62a020: e59d0028     	ldr	r0, [sp, #0x28]
  62a024: e5801004     	str	r1, [r0, #0x4]
  62a028: e5922004     	ldr	r2, [r2, #0x4]
  62a02c: e5832004     	str	r2, [r3, #0x4]
  62a030: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}

; FUNCTION 0x0062a034 size=228 sha256=1f72192de84a960cfe6caa07033411fe2197265ebc9bcb331656dd6b80f747fd
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float> > >::getBlendedValue(void*, float*, int, void*) const
0062a034 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIfEELi1EfEEEEE15getBlendedValueEPvPfiSD_>:
  62a034: e3530001     	cmp	r3, #1
  62a038: e92d4ff8     	push	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62a03c: e1a04003     	mov	r4, r3
  62a040: e1a0b002     	mov	r11, r2
  62a044: 0a000029     	beq	0x62a0f0 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIfEELi1EfEEEEE15getBlendedValueEPvPfiSD_+0xbc> @ imm = #0xa4
  62a048: e3530000     	cmp	r3, #0
  62a04c: 03a08000     	moveq	r8, #0
  62a050: 01a09008     	moveq	r9, r8
  62a054: 01a0a008     	moveq	r10, r8
  62a058: 0a00001e     	beq	0x62a0d8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIfEELi1EfEEEEE15getBlendedValueEPvPfiSD_+0xa4> @ imm = #0x78
  62a05c: e3a08000     	mov	r8, #0
  62a060: e1a05001     	mov	r5, r1
  62a064: e3a07000     	mov	r7, #0
  62a068: e1a09008     	mov	r9, r8
  62a06c: e1a0a008     	mov	r10, r8
  62a070: e79b6007     	ldr	r6, [r11, r7]
  62a074: e5951000     	ldr	r1, [r5]
  62a078: e2877004     	add	r7, r7, #4
  62a07c: e1a00006     	mov	r0, r6
  62a080: ebf39339     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31b31c
  62a084: e1a01000     	mov	r1, r0
  62a088: e1a00008     	mov	r0, r8
  62a08c: ebf392c4     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31b4f0
  62a090: e5951004     	ldr	r1, [r5, #0x4]
  62a094: e1a08000     	mov	r8, r0
  62a098: e1a00006     	mov	r0, r6
  62a09c: ebf39332     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31b338
  62a0a0: e1a01000     	mov	r1, r0
  62a0a4: e1a00009     	mov	r0, r9
  62a0a8: ebf392bd     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31b50c
  62a0ac: e5951008     	ldr	r1, [r5, #0x8]
  62a0b0: e1a09000     	mov	r9, r0
  62a0b4: e1a00006     	mov	r0, r6
  62a0b8: ebf3932b     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31b354
  62a0bc: e1a01000     	mov	r1, r0
  62a0c0: e1a0000a     	mov	r0, r10
  62a0c4: ebf392b6     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31b528
  62a0c8: e2544001     	subs	r4, r4, #1
  62a0cc: e1a0a000     	mov	r10, r0
  62a0d0: e285500c     	add	r5, r5, #12
  62a0d4: 1affffe5     	bne	0x62a070 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIfEELi1EfEEEEE15getBlendedValueEPvPfiSD_+0x3c> @ imm = #-0x6c
  62a0d8: e59d3028     	ldr	r3, [sp, #0x28]
  62a0dc: e4838004     	str	r8, [r3], #4
  62a0e0: e59d2028     	ldr	r2, [sp, #0x28]
  62a0e4: e5829004     	str	r9, [r2, #0x4]
  62a0e8: e583a004     	str	r10, [r3, #0x4]
  62a0ec: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62a0f0: e1a02001     	mov	r2, r1
  62a0f4: e4920004     	ldr	r0, [r2], #4
  62a0f8: e59d3028     	ldr	r3, [sp, #0x28]
  62a0fc: e4830004     	str	r0, [r3], #4
  62a100: e5911004     	ldr	r1, [r1, #0x4]
  62a104: e59d0028     	ldr	r0, [sp, #0x28]
  62a108: e5801004     	str	r1, [r0, #0x4]
  62a10c: e5922004     	ldr	r2, [r2, #0x4]
  62a110: e5832004     	str	r2, [r3, #0x4]
  62a114: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}

; FUNCTION 0x0062a118 size=228 sha256=bf333d0c8a9e13deac22c0800bc11812fd761ba58c9bf1fd6983b264b99c9d16
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short> > >::getBlendedValue(void*, float*, int, void*) const
0062a118 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIsEELi1EsEEEEE15getBlendedValueEPvPfiSD_>:
  62a118: e3530001     	cmp	r3, #1
  62a11c: e92d4ff8     	push	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62a120: e1a04003     	mov	r4, r3
  62a124: e1a0b002     	mov	r11, r2
  62a128: 0a000029     	beq	0x62a1d4 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIsEELi1EsEEEEE15getBlendedValueEPvPfiSD_+0xbc> @ imm = #0xa4
  62a12c: e3530000     	cmp	r3, #0
  62a130: 03a08000     	moveq	r8, #0
  62a134: 01a09008     	moveq	r9, r8
  62a138: 01a0a008     	moveq	r10, r8
  62a13c: 0a00001e     	beq	0x62a1bc <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIsEELi1EsEEEEE15getBlendedValueEPvPfiSD_+0xa4> @ imm = #0x78
  62a140: e3a08000     	mov	r8, #0
  62a144: e1a05001     	mov	r5, r1
  62a148: e3a07000     	mov	r7, #0
  62a14c: e1a09008     	mov	r9, r8
  62a150: e1a0a008     	mov	r10, r8
  62a154: e79b6007     	ldr	r6, [r11, r7]
  62a158: e5951000     	ldr	r1, [r5]
  62a15c: e2877004     	add	r7, r7, #4
  62a160: e1a00006     	mov	r0, r6
  62a164: ebf39300     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31b400
  62a168: e1a01000     	mov	r1, r0
  62a16c: e1a00008     	mov	r0, r8
  62a170: ebf3928b     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31b5d4
  62a174: e5951004     	ldr	r1, [r5, #0x4]
  62a178: e1a08000     	mov	r8, r0
  62a17c: e1a00006     	mov	r0, r6
  62a180: ebf392f9     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31b41c
  62a184: e1a01000     	mov	r1, r0
  62a188: e1a00009     	mov	r0, r9
  62a18c: ebf39284     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31b5f0
  62a190: e5951008     	ldr	r1, [r5, #0x8]
  62a194: e1a09000     	mov	r9, r0
  62a198: e1a00006     	mov	r0, r6
  62a19c: ebf392f2     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31b438
  62a1a0: e1a01000     	mov	r1, r0
  62a1a4: e1a0000a     	mov	r0, r10
  62a1a8: ebf3927d     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31b60c
  62a1ac: e2544001     	subs	r4, r4, #1
  62a1b0: e1a0a000     	mov	r10, r0
  62a1b4: e285500c     	add	r5, r5, #12
  62a1b8: 1affffe5     	bne	0x62a154 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIsEELi1EsEEEEE15getBlendedValueEPvPfiSD_+0x3c> @ imm = #-0x6c
  62a1bc: e59d3028     	ldr	r3, [sp, #0x28]
  62a1c0: e4838004     	str	r8, [r3], #4
  62a1c4: e59d2028     	ldr	r2, [sp, #0x28]
  62a1c8: e5829004     	str	r9, [r2, #0x4]
  62a1cc: e583a004     	str	r10, [r3, #0x4]
  62a1d0: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62a1d4: e1a02001     	mov	r2, r1
  62a1d8: e4920004     	ldr	r0, [r2], #4
  62a1dc: e59d3028     	ldr	r3, [sp, #0x28]
  62a1e0: e4830004     	str	r0, [r3], #4
  62a1e4: e5911004     	ldr	r1, [r1, #0x4]
  62a1e8: e59d0028     	ldr	r0, [sp, #0x28]
  62a1ec: e5801004     	str	r1, [r0, #0x4]
  62a1f0: e5922004     	ldr	r2, [r2, #0x4]
  62a1f4: e5832004     	str	r2, [r3, #0x4]
  62a1f8: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}

; FUNCTION 0x0062a1fc size=228 sha256=f7d308542ff7b7ea24be52fcbddeb31289c846af3213ad194d43f378ff88c5b9
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char> > >::getBlendedValue(void*, float*, int, void*) const
0062a1fc <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIcEELi1EcEEEEE15getBlendedValueEPvPfiSD_>:
  62a1fc: e3530001     	cmp	r3, #1
  62a200: e92d4ff8     	push	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62a204: e1a04003     	mov	r4, r3
  62a208: e1a0b002     	mov	r11, r2
  62a20c: 0a000029     	beq	0x62a2b8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIcEELi1EcEEEEE15getBlendedValueEPvPfiSD_+0xbc> @ imm = #0xa4
  62a210: e3530000     	cmp	r3, #0
  62a214: 03a08000     	moveq	r8, #0
  62a218: 01a09008     	moveq	r9, r8
  62a21c: 01a0a008     	moveq	r10, r8
  62a220: 0a00001e     	beq	0x62a2a0 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIcEELi1EcEEEEE15getBlendedValueEPvPfiSD_+0xa4> @ imm = #0x78
  62a224: e3a08000     	mov	r8, #0
  62a228: e1a05001     	mov	r5, r1
  62a22c: e3a07000     	mov	r7, #0
  62a230: e1a09008     	mov	r9, r8
  62a234: e1a0a008     	mov	r10, r8
  62a238: e79b6007     	ldr	r6, [r11, r7]
  62a23c: e5951000     	ldr	r1, [r5]
  62a240: e2877004     	add	r7, r7, #4
  62a244: e1a00006     	mov	r0, r6
  62a248: ebf392c7     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31b4e4
  62a24c: e1a01000     	mov	r1, r0
  62a250: e1a00008     	mov	r0, r8
  62a254: ebf39252     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31b6b8
  62a258: e5951004     	ldr	r1, [r5, #0x4]
  62a25c: e1a08000     	mov	r8, r0
  62a260: e1a00006     	mov	r0, r6
  62a264: ebf392c0     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31b500
  62a268: e1a01000     	mov	r1, r0
  62a26c: e1a00009     	mov	r0, r9
  62a270: ebf3924b     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31b6d4
  62a274: e5951008     	ldr	r1, [r5, #0x8]
  62a278: e1a09000     	mov	r9, r0
  62a27c: e1a00006     	mov	r0, r6
  62a280: ebf392b9     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31b51c
  62a284: e1a01000     	mov	r1, r0
  62a288: e1a0000a     	mov	r0, r10
  62a28c: ebf39244     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31b6f0
  62a290: e2544001     	subs	r4, r4, #1
  62a294: e1a0a000     	mov	r10, r0
  62a298: e285500c     	add	r5, r5, #12
  62a29c: 1affffe5     	bne	0x62a238 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIcEELi1EcEEEEE15getBlendedValueEPvPfiSD_+0x3c> @ imm = #-0x6c
  62a2a0: e59d3028     	ldr	r3, [sp, #0x28]
  62a2a4: e4838004     	str	r8, [r3], #4
  62a2a8: e59d2028     	ldr	r2, [sp, #0x28]
  62a2ac: e5829004     	str	r9, [r2, #0x4]
  62a2b0: e583a004     	str	r10, [r3, #0x4]
  62a2b4: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62a2b8: e1a02001     	mov	r2, r1
  62a2bc: e4920004     	ldr	r0, [r2], #4
  62a2c0: e59d3028     	ldr	r3, [sp, #0x28]
  62a2c4: e4830004     	str	r0, [r3], #4
  62a2c8: e5911004     	ldr	r1, [r1, #0x4]
  62a2cc: e59d0028     	ldr	r0, [sp, #0x28]
  62a2d0: e5801004     	str	r1, [r0, #0x4]
  62a2d4: e5922004     	ldr	r2, [r2, #0x4]
  62a2d8: e5832004     	str	r2, [r3, #0x4]
  62a2dc: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}

; FUNCTION 0x0062a2e0 size=228 sha256=d2ab92714e5513ef610cffcd5ae5270694b31b06d935e9939cf6c6a0aa38c6b9
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float> > >::getBlendedValue(void*, float*, int, void*) const
0062a2e0 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIfEELi2EfEEEEE15getBlendedValueEPvPfiSD_>:
  62a2e0: e3530001     	cmp	r3, #1
  62a2e4: e92d4ff8     	push	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62a2e8: e1a04003     	mov	r4, r3
  62a2ec: e1a0b002     	mov	r11, r2
  62a2f0: 0a000029     	beq	0x62a39c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIfEELi2EfEEEEE15getBlendedValueEPvPfiSD_+0xbc> @ imm = #0xa4
  62a2f4: e3530000     	cmp	r3, #0
  62a2f8: 03a08000     	moveq	r8, #0
  62a2fc: 01a09008     	moveq	r9, r8
  62a300: 01a0a008     	moveq	r10, r8
  62a304: 0a00001e     	beq	0x62a384 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIfEELi2EfEEEEE15getBlendedValueEPvPfiSD_+0xa4> @ imm = #0x78
  62a308: e3a08000     	mov	r8, #0
  62a30c: e1a05001     	mov	r5, r1
  62a310: e3a07000     	mov	r7, #0
  62a314: e1a09008     	mov	r9, r8
  62a318: e1a0a008     	mov	r10, r8
  62a31c: e79b6007     	ldr	r6, [r11, r7]
  62a320: e5951000     	ldr	r1, [r5]
  62a324: e2877004     	add	r7, r7, #4
  62a328: e1a00006     	mov	r0, r6
  62a32c: ebf3928e     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31b5c8
  62a330: e1a01000     	mov	r1, r0
  62a334: e1a00008     	mov	r0, r8
  62a338: ebf39219     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31b79c
  62a33c: e5951004     	ldr	r1, [r5, #0x4]
  62a340: e1a08000     	mov	r8, r0
  62a344: e1a00006     	mov	r0, r6
  62a348: ebf39287     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31b5e4
  62a34c: e1a01000     	mov	r1, r0
  62a350: e1a00009     	mov	r0, r9
  62a354: ebf39212     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31b7b8
  62a358: e5951008     	ldr	r1, [r5, #0x8]
  62a35c: e1a09000     	mov	r9, r0
  62a360: e1a00006     	mov	r0, r6
  62a364: ebf39280     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31b600
  62a368: e1a01000     	mov	r1, r0
  62a36c: e1a0000a     	mov	r0, r10
  62a370: ebf3920b     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31b7d4
  62a374: e2544001     	subs	r4, r4, #1
  62a378: e1a0a000     	mov	r10, r0
  62a37c: e285500c     	add	r5, r5, #12
  62a380: 1affffe5     	bne	0x62a31c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIfEELi2EfEEEEE15getBlendedValueEPvPfiSD_+0x3c> @ imm = #-0x6c
  62a384: e59d3028     	ldr	r3, [sp, #0x28]
  62a388: e4838004     	str	r8, [r3], #4
  62a38c: e59d2028     	ldr	r2, [sp, #0x28]
  62a390: e5829004     	str	r9, [r2, #0x4]
  62a394: e583a004     	str	r10, [r3, #0x4]
  62a398: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62a39c: e1a02001     	mov	r2, r1
  62a3a0: e4920004     	ldr	r0, [r2], #4
  62a3a4: e59d3028     	ldr	r3, [sp, #0x28]
  62a3a8: e4830004     	str	r0, [r3], #4
  62a3ac: e5911004     	ldr	r1, [r1, #0x4]
  62a3b0: e59d0028     	ldr	r0, [sp, #0x28]
  62a3b4: e5801004     	str	r1, [r0, #0x4]
  62a3b8: e5922004     	ldr	r2, [r2, #0x4]
  62a3bc: e5832004     	str	r2, [r3, #0x4]
  62a3c0: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}

; FUNCTION 0x0062a3c4 size=228 sha256=4940956052f21b4e4e7dff90dbc9787ae4b65538996edf79ca67f483211b740f
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short> > >::getBlendedValue(void*, float*, int, void*) const
0062a3c4 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIsEELi2EsEEEEE15getBlendedValueEPvPfiSD_>:
  62a3c4: e3530001     	cmp	r3, #1
  62a3c8: e92d4ff8     	push	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62a3cc: e1a04003     	mov	r4, r3
  62a3d0: e1a0b002     	mov	r11, r2
  62a3d4: 0a000029     	beq	0x62a480 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIsEELi2EsEEEEE15getBlendedValueEPvPfiSD_+0xbc> @ imm = #0xa4
  62a3d8: e3530000     	cmp	r3, #0
  62a3dc: 03a08000     	moveq	r8, #0
  62a3e0: 01a09008     	moveq	r9, r8
  62a3e4: 01a0a008     	moveq	r10, r8
  62a3e8: 0a00001e     	beq	0x62a468 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIsEELi2EsEEEEE15getBlendedValueEPvPfiSD_+0xa4> @ imm = #0x78
  62a3ec: e3a08000     	mov	r8, #0
  62a3f0: e1a05001     	mov	r5, r1
  62a3f4: e3a07000     	mov	r7, #0
  62a3f8: e1a09008     	mov	r9, r8
  62a3fc: e1a0a008     	mov	r10, r8
  62a400: e79b6007     	ldr	r6, [r11, r7]
  62a404: e5951000     	ldr	r1, [r5]
  62a408: e2877004     	add	r7, r7, #4
  62a40c: e1a00006     	mov	r0, r6
  62a410: ebf39255     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31b6ac
  62a414: e1a01000     	mov	r1, r0
  62a418: e1a00008     	mov	r0, r8
  62a41c: ebf391e0     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31b880
  62a420: e5951004     	ldr	r1, [r5, #0x4]
  62a424: e1a08000     	mov	r8, r0
  62a428: e1a00006     	mov	r0, r6
  62a42c: ebf3924e     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31b6c8
  62a430: e1a01000     	mov	r1, r0
  62a434: e1a00009     	mov	r0, r9
  62a438: ebf391d9     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31b89c
  62a43c: e5951008     	ldr	r1, [r5, #0x8]
  62a440: e1a09000     	mov	r9, r0
  62a444: e1a00006     	mov	r0, r6
  62a448: ebf39247     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31b6e4
  62a44c: e1a01000     	mov	r1, r0
  62a450: e1a0000a     	mov	r0, r10
  62a454: ebf391d2     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31b8b8
  62a458: e2544001     	subs	r4, r4, #1
  62a45c: e1a0a000     	mov	r10, r0
  62a460: e285500c     	add	r5, r5, #12
  62a464: 1affffe5     	bne	0x62a400 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIsEELi2EsEEEEE15getBlendedValueEPvPfiSD_+0x3c> @ imm = #-0x6c
  62a468: e59d3028     	ldr	r3, [sp, #0x28]
  62a46c: e4838004     	str	r8, [r3], #4
  62a470: e59d2028     	ldr	r2, [sp, #0x28]
  62a474: e5829004     	str	r9, [r2, #0x4]
  62a478: e583a004     	str	r10, [r3, #0x4]
  62a47c: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62a480: e1a02001     	mov	r2, r1
  62a484: e4920004     	ldr	r0, [r2], #4
  62a488: e59d3028     	ldr	r3, [sp, #0x28]
  62a48c: e4830004     	str	r0, [r3], #4
  62a490: e5911004     	ldr	r1, [r1, #0x4]
  62a494: e59d0028     	ldr	r0, [sp, #0x28]
  62a498: e5801004     	str	r1, [r0, #0x4]
  62a49c: e5922004     	ldr	r2, [r2, #0x4]
  62a4a0: e5832004     	str	r2, [r3, #0x4]
  62a4a4: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}

; FUNCTION 0x0062a4a8 size=228 sha256=194c255d4c7e09bd9ffc5e022d994723435d7d7610ac6732a1a84d6794d0d36c
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char> > >::getBlendedValue(void*, float*, int, void*) const
0062a4a8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIcEELi2EcEEEEE15getBlendedValueEPvPfiSD_>:
  62a4a8: e3530001     	cmp	r3, #1
  62a4ac: e92d4ff8     	push	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62a4b0: e1a04003     	mov	r4, r3
  62a4b4: e1a0b002     	mov	r11, r2
  62a4b8: 0a000029     	beq	0x62a564 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIcEELi2EcEEEEE15getBlendedValueEPvPfiSD_+0xbc> @ imm = #0xa4
  62a4bc: e3530000     	cmp	r3, #0
  62a4c0: 03a08000     	moveq	r8, #0
  62a4c4: 01a09008     	moveq	r9, r8
  62a4c8: 01a0a008     	moveq	r10, r8
  62a4cc: 0a00001e     	beq	0x62a54c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIcEELi2EcEEEEE15getBlendedValueEPvPfiSD_+0xa4> @ imm = #0x78
  62a4d0: e3a08000     	mov	r8, #0
  62a4d4: e1a05001     	mov	r5, r1
  62a4d8: e3a07000     	mov	r7, #0
  62a4dc: e1a09008     	mov	r9, r8
  62a4e0: e1a0a008     	mov	r10, r8
  62a4e4: e79b6007     	ldr	r6, [r11, r7]
  62a4e8: e5951000     	ldr	r1, [r5]
  62a4ec: e2877004     	add	r7, r7, #4
  62a4f0: e1a00006     	mov	r0, r6
  62a4f4: ebf3921c     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31b790
  62a4f8: e1a01000     	mov	r1, r0
  62a4fc: e1a00008     	mov	r0, r8
  62a500: ebf391a7     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31b964
  62a504: e5951004     	ldr	r1, [r5, #0x4]
  62a508: e1a08000     	mov	r8, r0
  62a50c: e1a00006     	mov	r0, r6
  62a510: ebf39215     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31b7ac
  62a514: e1a01000     	mov	r1, r0
  62a518: e1a00009     	mov	r0, r9
  62a51c: ebf391a0     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31b980
  62a520: e5951008     	ldr	r1, [r5, #0x8]
  62a524: e1a09000     	mov	r9, r0
  62a528: e1a00006     	mov	r0, r6
  62a52c: ebf3920e     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31b7c8
  62a530: e1a01000     	mov	r1, r0
  62a534: e1a0000a     	mov	r0, r10
  62a538: ebf39199     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31b99c
  62a53c: e2544001     	subs	r4, r4, #1
  62a540: e1a0a000     	mov	r10, r0
  62a544: e285500c     	add	r5, r5, #12
  62a548: 1affffe5     	bne	0x62a4e4 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIcEELi2EcEEEEE15getBlendedValueEPvPfiSD_+0x3c> @ imm = #-0x6c
  62a54c: e59d3028     	ldr	r3, [sp, #0x28]
  62a550: e4838004     	str	r8, [r3], #4
  62a554: e59d2028     	ldr	r2, [sp, #0x28]
  62a558: e5829004     	str	r9, [r2, #0x4]
  62a55c: e583a004     	str	r10, [r3, #0x4]
  62a560: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62a564: e1a02001     	mov	r2, r1
  62a568: e4920004     	ldr	r0, [r2], #4
  62a56c: e59d3028     	ldr	r3, [sp, #0x28]
  62a570: e4830004     	str	r0, [r3], #4
  62a574: e5911004     	ldr	r1, [r1, #0x4]
  62a578: e59d0028     	ldr	r0, [sp, #0x28]
  62a57c: e5801004     	str	r1, [r0, #0x4]
  62a580: e5922004     	ldr	r2, [r2, #0x4]
  62a584: e5832004     	str	r2, [r3, #0x4]
  62a588: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}

; FUNCTION 0x0062a58c size=228 sha256=88fbcc76095c50ebfc28ffaa2f11d90d27ebccc55465c88ee0d555e1d386ee85
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, 0, float> > >::getBlendedValue(void*, float*, int, void*) const
0062a58c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE15getBlendedValueEPvPfiSD_>:
  62a58c: e3530001     	cmp	r3, #1
  62a590: e92d4ff8     	push	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62a594: e1a04003     	mov	r4, r3
  62a598: e1a0b002     	mov	r11, r2
  62a59c: 0a000029     	beq	0x62a648 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE15getBlendedValueEPvPfiSD_+0xbc> @ imm = #0xa4
  62a5a0: e3530000     	cmp	r3, #0
  62a5a4: 03a08000     	moveq	r8, #0
  62a5a8: 01a09008     	moveq	r9, r8
  62a5ac: 01a0a008     	moveq	r10, r8
  62a5b0: 0a00001e     	beq	0x62a630 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE15getBlendedValueEPvPfiSD_+0xa4> @ imm = #0x78
  62a5b4: e3a08000     	mov	r8, #0
  62a5b8: e1a05001     	mov	r5, r1
  62a5bc: e3a07000     	mov	r7, #0
  62a5c0: e1a09008     	mov	r9, r8
  62a5c4: e1a0a008     	mov	r10, r8
  62a5c8: e79b6007     	ldr	r6, [r11, r7]
  62a5cc: e5951000     	ldr	r1, [r5]
  62a5d0: e2877004     	add	r7, r7, #4
  62a5d4: e1a00006     	mov	r0, r6
  62a5d8: ebf391e3     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31b874
  62a5dc: e1a01000     	mov	r1, r0
  62a5e0: e1a00008     	mov	r0, r8
  62a5e4: ebf3916e     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31ba48
  62a5e8: e5951004     	ldr	r1, [r5, #0x4]
  62a5ec: e1a08000     	mov	r8, r0
  62a5f0: e1a00006     	mov	r0, r6
  62a5f4: ebf391dc     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31b890
  62a5f8: e1a01000     	mov	r1, r0
  62a5fc: e1a00009     	mov	r0, r9
  62a600: ebf39167     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31ba64
  62a604: e5951008     	ldr	r1, [r5, #0x8]
  62a608: e1a09000     	mov	r9, r0
  62a60c: e1a00006     	mov	r0, r6
  62a610: ebf391d5     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31b8ac
  62a614: e1a01000     	mov	r1, r0
  62a618: e1a0000a     	mov	r0, r10
  62a61c: ebf39160     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31ba80
  62a620: e2544001     	subs	r4, r4, #1
  62a624: e1a0a000     	mov	r10, r0
  62a628: e285500c     	add	r5, r5, #12
  62a62c: 1affffe5     	bne	0x62a5c8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE15getBlendedValueEPvPfiSD_+0x3c> @ imm = #-0x6c
  62a630: e59d3028     	ldr	r3, [sp, #0x28]
  62a634: e4838004     	str	r8, [r3], #4
  62a638: e59d2028     	ldr	r2, [sp, #0x28]
  62a63c: e5829004     	str	r9, [r2, #0x4]
  62a640: e583a004     	str	r10, [r3, #0x4]
  62a644: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62a648: e1a02001     	mov	r2, r1
  62a64c: e4920004     	ldr	r0, [r2], #4
  62a650: e59d3028     	ldr	r3, [sp, #0x28]
  62a654: e4830004     	str	r0, [r3], #4
  62a658: e5911004     	ldr	r1, [r1, #0x4]
  62a65c: e59d0028     	ldr	r0, [sp, #0x28]
  62a660: e5801004     	str	r1, [r0, #0x4]
  62a664: e5922004     	ldr	r2, [r2, #0x4]
  62a668: e5832004     	str	r2, [r3, #0x4]
  62a66c: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}

; FUNCTION 0x0062a670 size=228 sha256=e799d0e1ccd1da929f2553fd860563045d74f9957894bfd7097223b225bafc81
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, -1, float> > >::getBlendedValue(void*, float*, int, void*) const
0062a670 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE15getBlendedValueEPvPfiSD_>:
  62a670: e3530001     	cmp	r3, #1
  62a674: e92d4ff8     	push	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62a678: e1a04003     	mov	r4, r3
  62a67c: e1a0b002     	mov	r11, r2
  62a680: 0a000029     	beq	0x62a72c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE15getBlendedValueEPvPfiSD_+0xbc> @ imm = #0xa4
  62a684: e3530000     	cmp	r3, #0
  62a688: 03a08000     	moveq	r8, #0
  62a68c: 01a09008     	moveq	r9, r8
  62a690: 01a0a008     	moveq	r10, r8
  62a694: 0a00001e     	beq	0x62a714 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE15getBlendedValueEPvPfiSD_+0xa4> @ imm = #0x78
  62a698: e3a08000     	mov	r8, #0
  62a69c: e1a05001     	mov	r5, r1
  62a6a0: e3a07000     	mov	r7, #0
  62a6a4: e1a09008     	mov	r9, r8
  62a6a8: e1a0a008     	mov	r10, r8
  62a6ac: e79b6007     	ldr	r6, [r11, r7]
  62a6b0: e5951000     	ldr	r1, [r5]
  62a6b4: e2877004     	add	r7, r7, #4
  62a6b8: e1a00006     	mov	r0, r6
  62a6bc: ebf391aa     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31b958
  62a6c0: e1a01000     	mov	r1, r0
  62a6c4: e1a00008     	mov	r0, r8
  62a6c8: ebf39135     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31bb2c
  62a6cc: e5951004     	ldr	r1, [r5, #0x4]
  62a6d0: e1a08000     	mov	r8, r0
  62a6d4: e1a00006     	mov	r0, r6
  62a6d8: ebf391a3     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31b974
  62a6dc: e1a01000     	mov	r1, r0
  62a6e0: e1a00009     	mov	r0, r9
  62a6e4: ebf3912e     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31bb48
  62a6e8: e5951008     	ldr	r1, [r5, #0x8]
  62a6ec: e1a09000     	mov	r9, r0
  62a6f0: e1a00006     	mov	r0, r6
  62a6f4: ebf3919c     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31b990
  62a6f8: e1a01000     	mov	r1, r0
  62a6fc: e1a0000a     	mov	r0, r10
  62a700: ebf39127     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31bb64
  62a704: e2544001     	subs	r4, r4, #1
  62a708: e1a0a000     	mov	r10, r0
  62a70c: e285500c     	add	r5, r5, #12
  62a710: 1affffe5     	bne	0x62a6ac <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE15getBlendedValueEPvPfiSD_+0x3c> @ imm = #-0x6c
  62a714: e59d3028     	ldr	r3, [sp, #0x28]
  62a718: e4838004     	str	r8, [r3], #4
  62a71c: e59d2028     	ldr	r2, [sp, #0x28]
  62a720: e5829004     	str	r9, [r2, #0x4]
  62a724: e583a004     	str	r10, [r3, #0x4]
  62a728: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62a72c: e1a02001     	mov	r2, r1
  62a730: e4920004     	ldr	r0, [r2], #4
  62a734: e59d3028     	ldr	r3, [sp, #0x28]
  62a738: e4830004     	str	r0, [r3], #4
  62a73c: e5911004     	ldr	r1, [r1, #0x4]
  62a740: e59d0028     	ldr	r0, [sp, #0x28]
  62a744: e5801004     	str	r1, [r0, #0x4]
  62a748: e5922004     	ldr	r2, [r2, #0x4]
  62a74c: e5832004     	str	r2, [r3, #0x4]
  62a750: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}

; FUNCTION 0x0062aa00 size=228 sha256=ecf7ce3f84170f5b85e33be2a5d2f4f995e6df45850ab0caa3e04b03ffdfdddc
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float> > >::getAddedValue(void*, float*, int, void*) const
0062aa00 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIfEELi0EfEEEEE13getAddedValueEPvPfiSD_>:
  62aa00: e3530001     	cmp	r3, #1
  62aa04: e92d4ff8     	push	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62aa08: e1a04003     	mov	r4, r3
  62aa0c: e1a0b002     	mov	r11, r2
  62aa10: 0a000029     	beq	0x62aabc <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIfEELi0EfEEEEE13getAddedValueEPvPfiSD_+0xbc> @ imm = #0xa4
  62aa14: e3530000     	cmp	r3, #0
  62aa18: 03a08000     	moveq	r8, #0
  62aa1c: 01a09008     	moveq	r9, r8
  62aa20: 01a0a008     	moveq	r10, r8
  62aa24: 0a00001e     	beq	0x62aaa4 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIfEELi0EfEEEEE13getAddedValueEPvPfiSD_+0xa4> @ imm = #0x78
  62aa28: e3a08000     	mov	r8, #0
  62aa2c: e1a05001     	mov	r5, r1
  62aa30: e3a07000     	mov	r7, #0
  62aa34: e1a09008     	mov	r9, r8
  62aa38: e1a0a008     	mov	r10, r8
  62aa3c: e79b6007     	ldr	r6, [r11, r7]
  62aa40: e5951000     	ldr	r1, [r5]
  62aa44: e2877004     	add	r7, r7, #4
  62aa48: e1a00006     	mov	r0, r6
  62aa4c: ebf390c6     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31bce8
  62aa50: e1a01000     	mov	r1, r0
  62aa54: e1a00008     	mov	r0, r8
  62aa58: ebf39051     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31bebc
  62aa5c: e5951004     	ldr	r1, [r5, #0x4]
  62aa60: e1a08000     	mov	r8, r0
  62aa64: e1a00006     	mov	r0, r6
  62aa68: ebf390bf     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31bd04
  62aa6c: e1a01000     	mov	r1, r0
  62aa70: e1a00009     	mov	r0, r9
  62aa74: ebf3904a     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31bed8
  62aa78: e5951008     	ldr	r1, [r5, #0x8]
  62aa7c: e1a09000     	mov	r9, r0
  62aa80: e1a00006     	mov	r0, r6
  62aa84: ebf390b8     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31bd20
  62aa88: e1a01000     	mov	r1, r0
  62aa8c: e1a0000a     	mov	r0, r10
  62aa90: ebf39043     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31bef4
  62aa94: e2544001     	subs	r4, r4, #1
  62aa98: e1a0a000     	mov	r10, r0
  62aa9c: e285500c     	add	r5, r5, #12
  62aaa0: 1affffe5     	bne	0x62aa3c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIfEELi0EfEEEEE13getAddedValueEPvPfiSD_+0x3c> @ imm = #-0x6c
  62aaa4: e59d3028     	ldr	r3, [sp, #0x28]
  62aaa8: e4838004     	str	r8, [r3], #4
  62aaac: e59d2028     	ldr	r2, [sp, #0x28]
  62aab0: e5829004     	str	r9, [r2, #0x4]
  62aab4: e583a004     	str	r10, [r3, #0x4]
  62aab8: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62aabc: e1a02001     	mov	r2, r1
  62aac0: e4920004     	ldr	r0, [r2], #4
  62aac4: e59d3028     	ldr	r3, [sp, #0x28]
  62aac8: e4830004     	str	r0, [r3], #4
  62aacc: e5911004     	ldr	r1, [r1, #0x4]
  62aad0: e59d0028     	ldr	r0, [sp, #0x28]
  62aad4: e5801004     	str	r1, [r0, #0x4]
  62aad8: e5922004     	ldr	r2, [r2, #0x4]
  62aadc: e5832004     	str	r2, [r3, #0x4]
  62aae0: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}

; FUNCTION 0x0062aae4 size=228 sha256=88a03fbaa491bc9c303d56975659f0ce3b1b3186dfddb71d32aea463e66f16c5
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short> > >::getAddedValue(void*, float*, int, void*) const
0062aae4 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIsEELi0EsEEEEE13getAddedValueEPvPfiSD_>:
  62aae4: e3530001     	cmp	r3, #1
  62aae8: e92d4ff8     	push	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62aaec: e1a04003     	mov	r4, r3
  62aaf0: e1a0b002     	mov	r11, r2
  62aaf4: 0a000029     	beq	0x62aba0 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIsEELi0EsEEEEE13getAddedValueEPvPfiSD_+0xbc> @ imm = #0xa4
  62aaf8: e3530000     	cmp	r3, #0
  62aafc: 03a08000     	moveq	r8, #0
  62ab00: 01a09008     	moveq	r9, r8
  62ab04: 01a0a008     	moveq	r10, r8
  62ab08: 0a00001e     	beq	0x62ab88 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIsEELi0EsEEEEE13getAddedValueEPvPfiSD_+0xa4> @ imm = #0x78
  62ab0c: e3a08000     	mov	r8, #0
  62ab10: e1a05001     	mov	r5, r1
  62ab14: e3a07000     	mov	r7, #0
  62ab18: e1a09008     	mov	r9, r8
  62ab1c: e1a0a008     	mov	r10, r8
  62ab20: e79b6007     	ldr	r6, [r11, r7]
  62ab24: e5951000     	ldr	r1, [r5]
  62ab28: e2877004     	add	r7, r7, #4
  62ab2c: e1a00006     	mov	r0, r6
  62ab30: ebf3908d     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31bdcc
  62ab34: e1a01000     	mov	r1, r0
  62ab38: e1a00008     	mov	r0, r8
  62ab3c: ebf39018     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31bfa0
  62ab40: e5951004     	ldr	r1, [r5, #0x4]
  62ab44: e1a08000     	mov	r8, r0
  62ab48: e1a00006     	mov	r0, r6
  62ab4c: ebf39086     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31bde8
  62ab50: e1a01000     	mov	r1, r0
  62ab54: e1a00009     	mov	r0, r9
  62ab58: ebf39011     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31bfbc
  62ab5c: e5951008     	ldr	r1, [r5, #0x8]
  62ab60: e1a09000     	mov	r9, r0
  62ab64: e1a00006     	mov	r0, r6
  62ab68: ebf3907f     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31be04
  62ab6c: e1a01000     	mov	r1, r0
  62ab70: e1a0000a     	mov	r0, r10
  62ab74: ebf3900a     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31bfd8
  62ab78: e2544001     	subs	r4, r4, #1
  62ab7c: e1a0a000     	mov	r10, r0
  62ab80: e285500c     	add	r5, r5, #12
  62ab84: 1affffe5     	bne	0x62ab20 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIsEELi0EsEEEEE13getAddedValueEPvPfiSD_+0x3c> @ imm = #-0x6c
  62ab88: e59d3028     	ldr	r3, [sp, #0x28]
  62ab8c: e4838004     	str	r8, [r3], #4
  62ab90: e59d2028     	ldr	r2, [sp, #0x28]
  62ab94: e5829004     	str	r9, [r2, #0x4]
  62ab98: e583a004     	str	r10, [r3, #0x4]
  62ab9c: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62aba0: e1a02001     	mov	r2, r1
  62aba4: e4920004     	ldr	r0, [r2], #4
  62aba8: e59d3028     	ldr	r3, [sp, #0x28]
  62abac: e4830004     	str	r0, [r3], #4
  62abb0: e5911004     	ldr	r1, [r1, #0x4]
  62abb4: e59d0028     	ldr	r0, [sp, #0x28]
  62abb8: e5801004     	str	r1, [r0, #0x4]
  62abbc: e5922004     	ldr	r2, [r2, #0x4]
  62abc0: e5832004     	str	r2, [r3, #0x4]
  62abc4: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}

; FUNCTION 0x0062abc8 size=228 sha256=81a6d9cb893a9a2f0e0e32d8042d63915ea86342f43c02da65680218044381d2
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char> > >::getAddedValue(void*, float*, int, void*) const
0062abc8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIcEELi0EcEEEEE13getAddedValueEPvPfiSD_>:
  62abc8: e3530001     	cmp	r3, #1
  62abcc: e92d4ff8     	push	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62abd0: e1a04003     	mov	r4, r3
  62abd4: e1a0b002     	mov	r11, r2
  62abd8: 0a000029     	beq	0x62ac84 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIcEELi0EcEEEEE13getAddedValueEPvPfiSD_+0xbc> @ imm = #0xa4
  62abdc: e3530000     	cmp	r3, #0
  62abe0: 03a08000     	moveq	r8, #0
  62abe4: 01a09008     	moveq	r9, r8
  62abe8: 01a0a008     	moveq	r10, r8
  62abec: 0a00001e     	beq	0x62ac6c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIcEELi0EcEEEEE13getAddedValueEPvPfiSD_+0xa4> @ imm = #0x78
  62abf0: e3a08000     	mov	r8, #0
  62abf4: e1a05001     	mov	r5, r1
  62abf8: e3a07000     	mov	r7, #0
  62abfc: e1a09008     	mov	r9, r8
  62ac00: e1a0a008     	mov	r10, r8
  62ac04: e79b6007     	ldr	r6, [r11, r7]
  62ac08: e5951000     	ldr	r1, [r5]
  62ac0c: e2877004     	add	r7, r7, #4
  62ac10: e1a00006     	mov	r0, r6
  62ac14: ebf39054     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31beb0
  62ac18: e1a01000     	mov	r1, r0
  62ac1c: e1a00008     	mov	r0, r8
  62ac20: ebf38fdf     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31c084
  62ac24: e5951004     	ldr	r1, [r5, #0x4]
  62ac28: e1a08000     	mov	r8, r0
  62ac2c: e1a00006     	mov	r0, r6
  62ac30: ebf3904d     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31becc
  62ac34: e1a01000     	mov	r1, r0
  62ac38: e1a00009     	mov	r0, r9
  62ac3c: ebf38fd8     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31c0a0
  62ac40: e5951008     	ldr	r1, [r5, #0x8]
  62ac44: e1a09000     	mov	r9, r0
  62ac48: e1a00006     	mov	r0, r6
  62ac4c: ebf39046     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31bee8
  62ac50: e1a01000     	mov	r1, r0
  62ac54: e1a0000a     	mov	r0, r10
  62ac58: ebf38fd1     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31c0bc
  62ac5c: e2544001     	subs	r4, r4, #1
  62ac60: e1a0a000     	mov	r10, r0
  62ac64: e285500c     	add	r5, r5, #12
  62ac68: 1affffe5     	bne	0x62ac04 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIcEELi0EcEEEEE13getAddedValueEPvPfiSD_+0x3c> @ imm = #-0x6c
  62ac6c: e59d3028     	ldr	r3, [sp, #0x28]
  62ac70: e4838004     	str	r8, [r3], #4
  62ac74: e59d2028     	ldr	r2, [sp, #0x28]
  62ac78: e5829004     	str	r9, [r2, #0x4]
  62ac7c: e583a004     	str	r10, [r3, #0x4]
  62ac80: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62ac84: e1a02001     	mov	r2, r1
  62ac88: e4920004     	ldr	r0, [r2], #4
  62ac8c: e59d3028     	ldr	r3, [sp, #0x28]
  62ac90: e4830004     	str	r0, [r3], #4
  62ac94: e5911004     	ldr	r1, [r1, #0x4]
  62ac98: e59d0028     	ldr	r0, [sp, #0x28]
  62ac9c: e5801004     	str	r1, [r0, #0x4]
  62aca0: e5922004     	ldr	r2, [r2, #0x4]
  62aca4: e5832004     	str	r2, [r3, #0x4]
  62aca8: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}

; FUNCTION 0x0062acac size=228 sha256=fd9474b5671783b9a89ec56ed044cddafc4250e0ba467fce944f9943fdc202e5
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float> > >::getAddedValue(void*, float*, int, void*) const
0062acac <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIfEELi1EfEEEEE13getAddedValueEPvPfiSD_>:
  62acac: e3530001     	cmp	r3, #1
  62acb0: e92d4ff8     	push	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62acb4: e1a04003     	mov	r4, r3
  62acb8: e1a0b002     	mov	r11, r2
  62acbc: 0a000029     	beq	0x62ad68 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIfEELi1EfEEEEE13getAddedValueEPvPfiSD_+0xbc> @ imm = #0xa4
  62acc0: e3530000     	cmp	r3, #0
  62acc4: 03a08000     	moveq	r8, #0
  62acc8: 01a09008     	moveq	r9, r8
  62accc: 01a0a008     	moveq	r10, r8
  62acd0: 0a00001e     	beq	0x62ad50 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIfEELi1EfEEEEE13getAddedValueEPvPfiSD_+0xa4> @ imm = #0x78
  62acd4: e3a08000     	mov	r8, #0
  62acd8: e1a05001     	mov	r5, r1
  62acdc: e3a07000     	mov	r7, #0
  62ace0: e1a09008     	mov	r9, r8
  62ace4: e1a0a008     	mov	r10, r8
  62ace8: e79b6007     	ldr	r6, [r11, r7]
  62acec: e5951000     	ldr	r1, [r5]
  62acf0: e2877004     	add	r7, r7, #4
  62acf4: e1a00006     	mov	r0, r6
  62acf8: ebf3901b     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31bf94
  62acfc: e1a01000     	mov	r1, r0
  62ad00: e1a00008     	mov	r0, r8
  62ad04: ebf38fa6     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31c168
  62ad08: e5951004     	ldr	r1, [r5, #0x4]
  62ad0c: e1a08000     	mov	r8, r0
  62ad10: e1a00006     	mov	r0, r6
  62ad14: ebf39014     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31bfb0
  62ad18: e1a01000     	mov	r1, r0
  62ad1c: e1a00009     	mov	r0, r9
  62ad20: ebf38f9f     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31c184
  62ad24: e5951008     	ldr	r1, [r5, #0x8]
  62ad28: e1a09000     	mov	r9, r0
  62ad2c: e1a00006     	mov	r0, r6
  62ad30: ebf3900d     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31bfcc
  62ad34: e1a01000     	mov	r1, r0
  62ad38: e1a0000a     	mov	r0, r10
  62ad3c: ebf38f98     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31c1a0
  62ad40: e2544001     	subs	r4, r4, #1
  62ad44: e1a0a000     	mov	r10, r0
  62ad48: e285500c     	add	r5, r5, #12
  62ad4c: 1affffe5     	bne	0x62ace8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIfEELi1EfEEEEE13getAddedValueEPvPfiSD_+0x3c> @ imm = #-0x6c
  62ad50: e59d3028     	ldr	r3, [sp, #0x28]
  62ad54: e4838004     	str	r8, [r3], #4
  62ad58: e59d2028     	ldr	r2, [sp, #0x28]
  62ad5c: e5829004     	str	r9, [r2, #0x4]
  62ad60: e583a004     	str	r10, [r3, #0x4]
  62ad64: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62ad68: e1a02001     	mov	r2, r1
  62ad6c: e4920004     	ldr	r0, [r2], #4
  62ad70: e59d3028     	ldr	r3, [sp, #0x28]
  62ad74: e4830004     	str	r0, [r3], #4
  62ad78: e5911004     	ldr	r1, [r1, #0x4]
  62ad7c: e59d0028     	ldr	r0, [sp, #0x28]
  62ad80: e5801004     	str	r1, [r0, #0x4]
  62ad84: e5922004     	ldr	r2, [r2, #0x4]
  62ad88: e5832004     	str	r2, [r3, #0x4]
  62ad8c: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}

; FUNCTION 0x0062ad90 size=228 sha256=21b9a4fa4ffb9fb148342f2640256f2433170970b1af847ae0ab08b9bae88010
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short> > >::getAddedValue(void*, float*, int, void*) const
0062ad90 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIsEELi1EsEEEEE13getAddedValueEPvPfiSD_>:
  62ad90: e3530001     	cmp	r3, #1
  62ad94: e92d4ff8     	push	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62ad98: e1a04003     	mov	r4, r3
  62ad9c: e1a0b002     	mov	r11, r2
  62ada0: 0a000029     	beq	0x62ae4c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIsEELi1EsEEEEE13getAddedValueEPvPfiSD_+0xbc> @ imm = #0xa4
  62ada4: e3530000     	cmp	r3, #0
  62ada8: 03a08000     	moveq	r8, #0
  62adac: 01a09008     	moveq	r9, r8
  62adb0: 01a0a008     	moveq	r10, r8
  62adb4: 0a00001e     	beq	0x62ae34 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIsEELi1EsEEEEE13getAddedValueEPvPfiSD_+0xa4> @ imm = #0x78
  62adb8: e3a08000     	mov	r8, #0
  62adbc: e1a05001     	mov	r5, r1
  62adc0: e3a07000     	mov	r7, #0
  62adc4: e1a09008     	mov	r9, r8
  62adc8: e1a0a008     	mov	r10, r8
  62adcc: e79b6007     	ldr	r6, [r11, r7]
  62add0: e5951000     	ldr	r1, [r5]
  62add4: e2877004     	add	r7, r7, #4
  62add8: e1a00006     	mov	r0, r6
  62addc: ebf38fe2     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31c078
  62ade0: e1a01000     	mov	r1, r0
  62ade4: e1a00008     	mov	r0, r8
  62ade8: ebf38f6d     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31c24c
  62adec: e5951004     	ldr	r1, [r5, #0x4]
  62adf0: e1a08000     	mov	r8, r0
  62adf4: e1a00006     	mov	r0, r6
  62adf8: ebf38fdb     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31c094
  62adfc: e1a01000     	mov	r1, r0
  62ae00: e1a00009     	mov	r0, r9
  62ae04: ebf38f66     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31c268
  62ae08: e5951008     	ldr	r1, [r5, #0x8]
  62ae0c: e1a09000     	mov	r9, r0
  62ae10: e1a00006     	mov	r0, r6
  62ae14: ebf38fd4     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31c0b0
  62ae18: e1a01000     	mov	r1, r0
  62ae1c: e1a0000a     	mov	r0, r10
  62ae20: ebf38f5f     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31c284
  62ae24: e2544001     	subs	r4, r4, #1
  62ae28: e1a0a000     	mov	r10, r0
  62ae2c: e285500c     	add	r5, r5, #12
  62ae30: 1affffe5     	bne	0x62adcc <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIsEELi1EsEEEEE13getAddedValueEPvPfiSD_+0x3c> @ imm = #-0x6c
  62ae34: e59d3028     	ldr	r3, [sp, #0x28]
  62ae38: e4838004     	str	r8, [r3], #4
  62ae3c: e59d2028     	ldr	r2, [sp, #0x28]
  62ae40: e5829004     	str	r9, [r2, #0x4]
  62ae44: e583a004     	str	r10, [r3, #0x4]
  62ae48: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62ae4c: e1a02001     	mov	r2, r1
  62ae50: e4920004     	ldr	r0, [r2], #4
  62ae54: e59d3028     	ldr	r3, [sp, #0x28]
  62ae58: e4830004     	str	r0, [r3], #4
  62ae5c: e5911004     	ldr	r1, [r1, #0x4]
  62ae60: e59d0028     	ldr	r0, [sp, #0x28]
  62ae64: e5801004     	str	r1, [r0, #0x4]
  62ae68: e5922004     	ldr	r2, [r2, #0x4]
  62ae6c: e5832004     	str	r2, [r3, #0x4]
  62ae70: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}

; FUNCTION 0x0062ae74 size=228 sha256=5a466453217068da1e91e2dd3d444ae7b3ebb78ab93cb3aeec761c69d9573b9d
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char> > >::getAddedValue(void*, float*, int, void*) const
0062ae74 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIcEELi1EcEEEEE13getAddedValueEPvPfiSD_>:
  62ae74: e3530001     	cmp	r3, #1
  62ae78: e92d4ff8     	push	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62ae7c: e1a04003     	mov	r4, r3
  62ae80: e1a0b002     	mov	r11, r2
  62ae84: 0a000029     	beq	0x62af30 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIcEELi1EcEEEEE13getAddedValueEPvPfiSD_+0xbc> @ imm = #0xa4
  62ae88: e3530000     	cmp	r3, #0
  62ae8c: 03a08000     	moveq	r8, #0
  62ae90: 01a09008     	moveq	r9, r8
  62ae94: 01a0a008     	moveq	r10, r8
  62ae98: 0a00001e     	beq	0x62af18 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIcEELi1EcEEEEE13getAddedValueEPvPfiSD_+0xa4> @ imm = #0x78
  62ae9c: e3a08000     	mov	r8, #0
  62aea0: e1a05001     	mov	r5, r1
  62aea4: e3a07000     	mov	r7, #0
  62aea8: e1a09008     	mov	r9, r8
  62aeac: e1a0a008     	mov	r10, r8
  62aeb0: e79b6007     	ldr	r6, [r11, r7]
  62aeb4: e5951000     	ldr	r1, [r5]
  62aeb8: e2877004     	add	r7, r7, #4
  62aebc: e1a00006     	mov	r0, r6
  62aec0: ebf38fa9     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31c15c
  62aec4: e1a01000     	mov	r1, r0
  62aec8: e1a00008     	mov	r0, r8
  62aecc: ebf38f34     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31c330
  62aed0: e5951004     	ldr	r1, [r5, #0x4]
  62aed4: e1a08000     	mov	r8, r0
  62aed8: e1a00006     	mov	r0, r6
  62aedc: ebf38fa2     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31c178
  62aee0: e1a01000     	mov	r1, r0
  62aee4: e1a00009     	mov	r0, r9
  62aee8: ebf38f2d     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31c34c
  62aeec: e5951008     	ldr	r1, [r5, #0x8]
  62aef0: e1a09000     	mov	r9, r0
  62aef4: e1a00006     	mov	r0, r6
  62aef8: ebf38f9b     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31c194
  62aefc: e1a01000     	mov	r1, r0
  62af00: e1a0000a     	mov	r0, r10
  62af04: ebf38f26     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31c368
  62af08: e2544001     	subs	r4, r4, #1
  62af0c: e1a0a000     	mov	r10, r0
  62af10: e285500c     	add	r5, r5, #12
  62af14: 1affffe5     	bne	0x62aeb0 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIcEELi1EcEEEEE13getAddedValueEPvPfiSD_+0x3c> @ imm = #-0x6c
  62af18: e59d3028     	ldr	r3, [sp, #0x28]
  62af1c: e4838004     	str	r8, [r3], #4
  62af20: e59d2028     	ldr	r2, [sp, #0x28]
  62af24: e5829004     	str	r9, [r2, #0x4]
  62af28: e583a004     	str	r10, [r3, #0x4]
  62af2c: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62af30: e1a02001     	mov	r2, r1
  62af34: e4920004     	ldr	r0, [r2], #4
  62af38: e59d3028     	ldr	r3, [sp, #0x28]
  62af3c: e4830004     	str	r0, [r3], #4
  62af40: e5911004     	ldr	r1, [r1, #0x4]
  62af44: e59d0028     	ldr	r0, [sp, #0x28]
  62af48: e5801004     	str	r1, [r0, #0x4]
  62af4c: e5922004     	ldr	r2, [r2, #0x4]
  62af50: e5832004     	str	r2, [r3, #0x4]
  62af54: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}

; FUNCTION 0x0062af58 size=228 sha256=aac37fe9c400d76392b86a0d8b16234356e5fedca27bb47c0e19b782ed95c989
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<float>, 2, float> > >::getAddedValue(void*, float*, int, void*) const
0062af58 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIfEELi2EfEEEEE13getAddedValueEPvPfiSD_>:
  62af58: e3530001     	cmp	r3, #1
  62af5c: e92d4ff8     	push	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62af60: e1a04003     	mov	r4, r3
  62af64: e1a0b002     	mov	r11, r2
  62af68: 0a000029     	beq	0x62b014 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIfEELi2EfEEEEE13getAddedValueEPvPfiSD_+0xbc> @ imm = #0xa4
  62af6c: e3530000     	cmp	r3, #0
  62af70: 03a08000     	moveq	r8, #0
  62af74: 01a09008     	moveq	r9, r8
  62af78: 01a0a008     	moveq	r10, r8
  62af7c: 0a00001e     	beq	0x62affc <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIfEELi2EfEEEEE13getAddedValueEPvPfiSD_+0xa4> @ imm = #0x78
  62af80: e3a08000     	mov	r8, #0
  62af84: e1a05001     	mov	r5, r1
  62af88: e3a07000     	mov	r7, #0
  62af8c: e1a09008     	mov	r9, r8
  62af90: e1a0a008     	mov	r10, r8
  62af94: e79b6007     	ldr	r6, [r11, r7]
  62af98: e5951000     	ldr	r1, [r5]
  62af9c: e2877004     	add	r7, r7, #4
  62afa0: e1a00006     	mov	r0, r6
  62afa4: ebf38f70     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31c240
  62afa8: e1a01000     	mov	r1, r0
  62afac: e1a00008     	mov	r0, r8
  62afb0: ebf38efb     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31c414
  62afb4: e5951004     	ldr	r1, [r5, #0x4]
  62afb8: e1a08000     	mov	r8, r0
  62afbc: e1a00006     	mov	r0, r6
  62afc0: ebf38f69     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31c25c
  62afc4: e1a01000     	mov	r1, r0
  62afc8: e1a00009     	mov	r0, r9
  62afcc: ebf38ef4     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31c430
  62afd0: e5951008     	ldr	r1, [r5, #0x8]
  62afd4: e1a09000     	mov	r9, r0
  62afd8: e1a00006     	mov	r0, r6
  62afdc: ebf38f62     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31c278
  62afe0: e1a01000     	mov	r1, r0
  62afe4: e1a0000a     	mov	r0, r10
  62afe8: ebf38eed     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31c44c
  62afec: e2544001     	subs	r4, r4, #1
  62aff0: e1a0a000     	mov	r10, r0
  62aff4: e285500c     	add	r5, r5, #12
  62aff8: 1affffe5     	bne	0x62af94 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIfEELi2EfEEEEE13getAddedValueEPvPfiSD_+0x3c> @ imm = #-0x6c
  62affc: e59d3028     	ldr	r3, [sp, #0x28]
  62b000: e4838004     	str	r8, [r3], #4
  62b004: e59d2028     	ldr	r2, [sp, #0x28]
  62b008: e5829004     	str	r9, [r2, #0x4]
  62b00c: e583a004     	str	r10, [r3, #0x4]
  62b010: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62b014: e1a02001     	mov	r2, r1
  62b018: e4920004     	ldr	r0, [r2], #4
  62b01c: e59d3028     	ldr	r3, [sp, #0x28]
  62b020: e4830004     	str	r0, [r3], #4
  62b024: e5911004     	ldr	r1, [r1, #0x4]
  62b028: e59d0028     	ldr	r0, [sp, #0x28]
  62b02c: e5801004     	str	r1, [r0, #0x4]
  62b030: e5922004     	ldr	r2, [r2, #0x4]
  62b034: e5832004     	str	r2, [r3, #0x4]
  62b038: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}

; FUNCTION 0x0062b03c size=228 sha256=121254ad6c6f34f7597c6de40b4be237b0b408f4534816daf2ddbb244b417b27
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short> > >::getAddedValue(void*, float*, int, void*) const
0062b03c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIsEELi2EsEEEEE13getAddedValueEPvPfiSD_>:
  62b03c: e3530001     	cmp	r3, #1
  62b040: e92d4ff8     	push	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62b044: e1a04003     	mov	r4, r3
  62b048: e1a0b002     	mov	r11, r2
  62b04c: 0a000029     	beq	0x62b0f8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIsEELi2EsEEEEE13getAddedValueEPvPfiSD_+0xbc> @ imm = #0xa4
  62b050: e3530000     	cmp	r3, #0
  62b054: 03a08000     	moveq	r8, #0
  62b058: 01a09008     	moveq	r9, r8
  62b05c: 01a0a008     	moveq	r10, r8
  62b060: 0a00001e     	beq	0x62b0e0 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIsEELi2EsEEEEE13getAddedValueEPvPfiSD_+0xa4> @ imm = #0x78
  62b064: e3a08000     	mov	r8, #0
  62b068: e1a05001     	mov	r5, r1
  62b06c: e3a07000     	mov	r7, #0
  62b070: e1a09008     	mov	r9, r8
  62b074: e1a0a008     	mov	r10, r8
  62b078: e79b6007     	ldr	r6, [r11, r7]
  62b07c: e5951000     	ldr	r1, [r5]
  62b080: e2877004     	add	r7, r7, #4
  62b084: e1a00006     	mov	r0, r6
  62b088: ebf38f37     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31c324
  62b08c: e1a01000     	mov	r1, r0
  62b090: e1a00008     	mov	r0, r8
  62b094: ebf38ec2     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31c4f8
  62b098: e5951004     	ldr	r1, [r5, #0x4]
  62b09c: e1a08000     	mov	r8, r0
  62b0a0: e1a00006     	mov	r0, r6
  62b0a4: ebf38f30     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31c340
  62b0a8: e1a01000     	mov	r1, r0
  62b0ac: e1a00009     	mov	r0, r9
  62b0b0: ebf38ebb     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31c514
  62b0b4: e5951008     	ldr	r1, [r5, #0x8]
  62b0b8: e1a09000     	mov	r9, r0
  62b0bc: e1a00006     	mov	r0, r6
  62b0c0: ebf38f29     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31c35c
  62b0c4: e1a01000     	mov	r1, r0
  62b0c8: e1a0000a     	mov	r0, r10
  62b0cc: ebf38eb4     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31c530
  62b0d0: e2544001     	subs	r4, r4, #1
  62b0d4: e1a0a000     	mov	r10, r0
  62b0d8: e285500c     	add	r5, r5, #12
  62b0dc: 1affffe5     	bne	0x62b078 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIsEELi2EsEEEEE13getAddedValueEPvPfiSD_+0x3c> @ imm = #-0x6c
  62b0e0: e59d3028     	ldr	r3, [sp, #0x28]
  62b0e4: e4838004     	str	r8, [r3], #4
  62b0e8: e59d2028     	ldr	r2, [sp, #0x28]
  62b0ec: e5829004     	str	r9, [r2, #0x4]
  62b0f0: e583a004     	str	r10, [r3, #0x4]
  62b0f4: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62b0f8: e1a02001     	mov	r2, r1
  62b0fc: e4920004     	ldr	r0, [r2], #4
  62b100: e59d3028     	ldr	r3, [sp, #0x28]
  62b104: e4830004     	str	r0, [r3], #4
  62b108: e5911004     	ldr	r1, [r1, #0x4]
  62b10c: e59d0028     	ldr	r0, [sp, #0x28]
  62b110: e5801004     	str	r1, [r0, #0x4]
  62b114: e5922004     	ldr	r2, [r2, #0x4]
  62b118: e5832004     	str	r2, [r3, #0x4]
  62b11c: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}

; FUNCTION 0x0062b120 size=228 sha256=fe2c26a2165e0daccb6f3af8c409ce2460bb717a4d3fcd02aceb668f4977d4b4
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char> > >::getAddedValue(void*, float*, int, void*) const
0062b120 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIcEELi2EcEEEEE13getAddedValueEPvPfiSD_>:
  62b120: e3530001     	cmp	r3, #1
  62b124: e92d4ff8     	push	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62b128: e1a04003     	mov	r4, r3
  62b12c: e1a0b002     	mov	r11, r2
  62b130: 0a000029     	beq	0x62b1dc <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIcEELi2EcEEEEE13getAddedValueEPvPfiSD_+0xbc> @ imm = #0xa4
  62b134: e3530000     	cmp	r3, #0
  62b138: 03a08000     	moveq	r8, #0
  62b13c: 01a09008     	moveq	r9, r8
  62b140: 01a0a008     	moveq	r10, r8
  62b144: 0a00001e     	beq	0x62b1c4 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIcEELi2EcEEEEE13getAddedValueEPvPfiSD_+0xa4> @ imm = #0x78
  62b148: e3a08000     	mov	r8, #0
  62b14c: e1a05001     	mov	r5, r1
  62b150: e3a07000     	mov	r7, #0
  62b154: e1a09008     	mov	r9, r8
  62b158: e1a0a008     	mov	r10, r8
  62b15c: e79b6007     	ldr	r6, [r11, r7]
  62b160: e5951000     	ldr	r1, [r5]
  62b164: e2877004     	add	r7, r7, #4
  62b168: e1a00006     	mov	r0, r6
  62b16c: ebf38efe     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31c408
  62b170: e1a01000     	mov	r1, r0
  62b174: e1a00008     	mov	r0, r8
  62b178: ebf38e89     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31c5dc
  62b17c: e5951004     	ldr	r1, [r5, #0x4]
  62b180: e1a08000     	mov	r8, r0
  62b184: e1a00006     	mov	r0, r6
  62b188: ebf38ef7     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31c424
  62b18c: e1a01000     	mov	r1, r0
  62b190: e1a00009     	mov	r0, r9
  62b194: ebf38e82     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31c5f8
  62b198: e5951008     	ldr	r1, [r5, #0x8]
  62b19c: e1a09000     	mov	r9, r0
  62b1a0: e1a00006     	mov	r0, r6
  62b1a4: ebf38ef0     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31c440
  62b1a8: e1a01000     	mov	r1, r0
  62b1ac: e1a0000a     	mov	r0, r10
  62b1b0: ebf38e7b     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31c614
  62b1b4: e2544001     	subs	r4, r4, #1
  62b1b8: e1a0a000     	mov	r10, r0
  62b1bc: e285500c     	add	r5, r5, #12
  62b1c0: 1affffe5     	bne	0x62b15c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIcEELi2EcEEEEE13getAddedValueEPvPfiSD_+0x3c> @ imm = #-0x6c
  62b1c4: e59d3028     	ldr	r3, [sp, #0x28]
  62b1c8: e4838004     	str	r8, [r3], #4
  62b1cc: e59d2028     	ldr	r2, [sp, #0x28]
  62b1d0: e5829004     	str	r9, [r2, #0x4]
  62b1d4: e583a004     	str	r10, [r3, #0x4]
  62b1d8: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62b1dc: e1a02001     	mov	r2, r1
  62b1e0: e4920004     	ldr	r0, [r2], #4
  62b1e4: e59d3028     	ldr	r3, [sp, #0x28]
  62b1e8: e4830004     	str	r0, [r3], #4
  62b1ec: e5911004     	ldr	r1, [r1, #0x4]
  62b1f0: e59d0028     	ldr	r0, [sp, #0x28]
  62b1f4: e5801004     	str	r1, [r0, #0x4]
  62b1f8: e5922004     	ldr	r2, [r2, #0x4]
  62b1fc: e5832004     	str	r2, [r3, #0x4]
  62b200: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}

; FUNCTION 0x0062b4b0 size=228 sha256=279943d563b0b94ebbf038263304c0f0d8487e551188b90a301496a143dbe39a
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float> > >::getAddedValue(void*, float*, int, void*) const
0062b4b0 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIfEELi0EfEEEEE13getAddedValueEPvPfiSD_>:
  62b4b0: e3530001     	cmp	r3, #1
  62b4b4: e92d4ff8     	push	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62b4b8: e1a04003     	mov	r4, r3
  62b4bc: e1a0b002     	mov	r11, r2
  62b4c0: 0a000029     	beq	0x62b56c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIfEELi0EfEEEEE13getAddedValueEPvPfiSD_+0xbc> @ imm = #0xa4
  62b4c4: e3530000     	cmp	r3, #0
  62b4c8: 03a08000     	moveq	r8, #0
  62b4cc: 01a09008     	moveq	r9, r8
  62b4d0: 01a0a008     	moveq	r10, r8
  62b4d4: 0a00001e     	beq	0x62b554 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIfEELi0EfEEEEE13getAddedValueEPvPfiSD_+0xa4> @ imm = #0x78
  62b4d8: e3a08000     	mov	r8, #0
  62b4dc: e1a05001     	mov	r5, r1
  62b4e0: e3a07000     	mov	r7, #0
  62b4e4: e1a09008     	mov	r9, r8
  62b4e8: e1a0a008     	mov	r10, r8
  62b4ec: e79b6007     	ldr	r6, [r11, r7]
  62b4f0: e5951000     	ldr	r1, [r5]
  62b4f4: e2877004     	add	r7, r7, #4
  62b4f8: e1a00006     	mov	r0, r6
  62b4fc: ebf38e1a     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31c798
  62b500: e1a01000     	mov	r1, r0
  62b504: e1a00008     	mov	r0, r8
  62b508: ebf38da5     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31c96c
  62b50c: e5951004     	ldr	r1, [r5, #0x4]
  62b510: e1a08000     	mov	r8, r0
  62b514: e1a00006     	mov	r0, r6
  62b518: ebf38e13     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31c7b4
  62b51c: e1a01000     	mov	r1, r0
  62b520: e1a00009     	mov	r0, r9
  62b524: ebf38d9e     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31c988
  62b528: e5951008     	ldr	r1, [r5, #0x8]
  62b52c: e1a09000     	mov	r9, r0
  62b530: e1a00006     	mov	r0, r6
  62b534: ebf38e0c     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31c7d0
  62b538: e1a01000     	mov	r1, r0
  62b53c: e1a0000a     	mov	r0, r10
  62b540: ebf38d97     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31c9a4
  62b544: e2544001     	subs	r4, r4, #1
  62b548: e1a0a000     	mov	r10, r0
  62b54c: e285500c     	add	r5, r5, #12
  62b550: 1affffe5     	bne	0x62b4ec <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIfEELi0EfEEEEE13getAddedValueEPvPfiSD_+0x3c> @ imm = #-0x6c
  62b554: e59d3028     	ldr	r3, [sp, #0x28]
  62b558: e4838004     	str	r8, [r3], #4
  62b55c: e59d2028     	ldr	r2, [sp, #0x28]
  62b560: e5829004     	str	r9, [r2, #0x4]
  62b564: e583a004     	str	r10, [r3, #0x4]
  62b568: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62b56c: e1a02001     	mov	r2, r1
  62b570: e4920004     	ldr	r0, [r2], #4
  62b574: e59d3028     	ldr	r3, [sp, #0x28]
  62b578: e4830004     	str	r0, [r3], #4
  62b57c: e5911004     	ldr	r1, [r1, #0x4]
  62b580: e59d0028     	ldr	r0, [sp, #0x28]
  62b584: e5801004     	str	r1, [r0, #0x4]
  62b588: e5922004     	ldr	r2, [r2, #0x4]
  62b58c: e5832004     	str	r2, [r3, #0x4]
  62b590: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}

; FUNCTION 0x0062b594 size=228 sha256=e53ff35621b53b418a2dd6a9f7103e902620120ff63b3ba780982195b8ce04ec
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short> > >::getAddedValue(void*, float*, int, void*) const
0062b594 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIsEELi0EsEEEEE13getAddedValueEPvPfiSD_>:
  62b594: e3530001     	cmp	r3, #1
  62b598: e92d4ff8     	push	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62b59c: e1a04003     	mov	r4, r3
  62b5a0: e1a0b002     	mov	r11, r2
  62b5a4: 0a000029     	beq	0x62b650 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIsEELi0EsEEEEE13getAddedValueEPvPfiSD_+0xbc> @ imm = #0xa4
  62b5a8: e3530000     	cmp	r3, #0
  62b5ac: 03a08000     	moveq	r8, #0
  62b5b0: 01a09008     	moveq	r9, r8
  62b5b4: 01a0a008     	moveq	r10, r8
  62b5b8: 0a00001e     	beq	0x62b638 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIsEELi0EsEEEEE13getAddedValueEPvPfiSD_+0xa4> @ imm = #0x78
  62b5bc: e3a08000     	mov	r8, #0
  62b5c0: e1a05001     	mov	r5, r1
  62b5c4: e3a07000     	mov	r7, #0
  62b5c8: e1a09008     	mov	r9, r8
  62b5cc: e1a0a008     	mov	r10, r8
  62b5d0: e79b6007     	ldr	r6, [r11, r7]
  62b5d4: e5951000     	ldr	r1, [r5]
  62b5d8: e2877004     	add	r7, r7, #4
  62b5dc: e1a00006     	mov	r0, r6
  62b5e0: ebf38de1     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31c87c
  62b5e4: e1a01000     	mov	r1, r0
  62b5e8: e1a00008     	mov	r0, r8
  62b5ec: ebf38d6c     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31ca50
  62b5f0: e5951004     	ldr	r1, [r5, #0x4]
  62b5f4: e1a08000     	mov	r8, r0
  62b5f8: e1a00006     	mov	r0, r6
  62b5fc: ebf38dda     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31c898
  62b600: e1a01000     	mov	r1, r0
  62b604: e1a00009     	mov	r0, r9
  62b608: ebf38d65     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31ca6c
  62b60c: e5951008     	ldr	r1, [r5, #0x8]
  62b610: e1a09000     	mov	r9, r0
  62b614: e1a00006     	mov	r0, r6
  62b618: ebf38dd3     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31c8b4
  62b61c: e1a01000     	mov	r1, r0
  62b620: e1a0000a     	mov	r0, r10
  62b624: ebf38d5e     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31ca88
  62b628: e2544001     	subs	r4, r4, #1
  62b62c: e1a0a000     	mov	r10, r0
  62b630: e285500c     	add	r5, r5, #12
  62b634: 1affffe5     	bne	0x62b5d0 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIsEELi0EsEEEEE13getAddedValueEPvPfiSD_+0x3c> @ imm = #-0x6c
  62b638: e59d3028     	ldr	r3, [sp, #0x28]
  62b63c: e4838004     	str	r8, [r3], #4
  62b640: e59d2028     	ldr	r2, [sp, #0x28]
  62b644: e5829004     	str	r9, [r2, #0x4]
  62b648: e583a004     	str	r10, [r3, #0x4]
  62b64c: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62b650: e1a02001     	mov	r2, r1
  62b654: e4920004     	ldr	r0, [r2], #4
  62b658: e59d3028     	ldr	r3, [sp, #0x28]
  62b65c: e4830004     	str	r0, [r3], #4
  62b660: e5911004     	ldr	r1, [r1, #0x4]
  62b664: e59d0028     	ldr	r0, [sp, #0x28]
  62b668: e5801004     	str	r1, [r0, #0x4]
  62b66c: e5922004     	ldr	r2, [r2, #0x4]
  62b670: e5832004     	str	r2, [r3, #0x4]
  62b674: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}

; FUNCTION 0x0062b678 size=228 sha256=c102d497fd2964a098528937c85e63580a3d6c6985e7033b5afbae8efb9a1624
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char> > >::getAddedValue(void*, float*, int, void*) const
0062b678 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIcEELi0EcEEEEE13getAddedValueEPvPfiSD_>:
  62b678: e3530001     	cmp	r3, #1
  62b67c: e92d4ff8     	push	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62b680: e1a04003     	mov	r4, r3
  62b684: e1a0b002     	mov	r11, r2
  62b688: 0a000029     	beq	0x62b734 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIcEELi0EcEEEEE13getAddedValueEPvPfiSD_+0xbc> @ imm = #0xa4
  62b68c: e3530000     	cmp	r3, #0
  62b690: 03a08000     	moveq	r8, #0
  62b694: 01a09008     	moveq	r9, r8
  62b698: 01a0a008     	moveq	r10, r8
  62b69c: 0a00001e     	beq	0x62b71c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIcEELi0EcEEEEE13getAddedValueEPvPfiSD_+0xa4> @ imm = #0x78
  62b6a0: e3a08000     	mov	r8, #0
  62b6a4: e1a05001     	mov	r5, r1
  62b6a8: e3a07000     	mov	r7, #0
  62b6ac: e1a09008     	mov	r9, r8
  62b6b0: e1a0a008     	mov	r10, r8
  62b6b4: e79b6007     	ldr	r6, [r11, r7]
  62b6b8: e5951000     	ldr	r1, [r5]
  62b6bc: e2877004     	add	r7, r7, #4
  62b6c0: e1a00006     	mov	r0, r6
  62b6c4: ebf38da8     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31c960
  62b6c8: e1a01000     	mov	r1, r0
  62b6cc: e1a00008     	mov	r0, r8
  62b6d0: ebf38d33     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31cb34
  62b6d4: e5951004     	ldr	r1, [r5, #0x4]
  62b6d8: e1a08000     	mov	r8, r0
  62b6dc: e1a00006     	mov	r0, r6
  62b6e0: ebf38da1     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31c97c
  62b6e4: e1a01000     	mov	r1, r0
  62b6e8: e1a00009     	mov	r0, r9
  62b6ec: ebf38d2c     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31cb50
  62b6f0: e5951008     	ldr	r1, [r5, #0x8]
  62b6f4: e1a09000     	mov	r9, r0
  62b6f8: e1a00006     	mov	r0, r6
  62b6fc: ebf38d9a     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31c998
  62b700: e1a01000     	mov	r1, r0
  62b704: e1a0000a     	mov	r0, r10
  62b708: ebf38d25     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31cb6c
  62b70c: e2544001     	subs	r4, r4, #1
  62b710: e1a0a000     	mov	r10, r0
  62b714: e285500c     	add	r5, r5, #12
  62b718: 1affffe5     	bne	0x62b6b4 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIcEELi0EcEEEEE13getAddedValueEPvPfiSD_+0x3c> @ imm = #-0x6c
  62b71c: e59d3028     	ldr	r3, [sp, #0x28]
  62b720: e4838004     	str	r8, [r3], #4
  62b724: e59d2028     	ldr	r2, [sp, #0x28]
  62b728: e5829004     	str	r9, [r2, #0x4]
  62b72c: e583a004     	str	r10, [r3, #0x4]
  62b730: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62b734: e1a02001     	mov	r2, r1
  62b738: e4920004     	ldr	r0, [r2], #4
  62b73c: e59d3028     	ldr	r3, [sp, #0x28]
  62b740: e4830004     	str	r0, [r3], #4
  62b744: e5911004     	ldr	r1, [r1, #0x4]
  62b748: e59d0028     	ldr	r0, [sp, #0x28]
  62b74c: e5801004     	str	r1, [r0, #0x4]
  62b750: e5922004     	ldr	r2, [r2, #0x4]
  62b754: e5832004     	str	r2, [r3, #0x4]
  62b758: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}

; FUNCTION 0x0062b75c size=228 sha256=80216bc73c5254ebce5acbdf87a4da2994ebd7ecaf3756fe4dc64840705824a0
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float> > >::getAddedValue(void*, float*, int, void*) const
0062b75c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIfEELi1EfEEEEE13getAddedValueEPvPfiSD_>:
  62b75c: e3530001     	cmp	r3, #1
  62b760: e92d4ff8     	push	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62b764: e1a04003     	mov	r4, r3
  62b768: e1a0b002     	mov	r11, r2
  62b76c: 0a000029     	beq	0x62b818 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIfEELi1EfEEEEE13getAddedValueEPvPfiSD_+0xbc> @ imm = #0xa4
  62b770: e3530000     	cmp	r3, #0
  62b774: 03a08000     	moveq	r8, #0
  62b778: 01a09008     	moveq	r9, r8
  62b77c: 01a0a008     	moveq	r10, r8
  62b780: 0a00001e     	beq	0x62b800 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIfEELi1EfEEEEE13getAddedValueEPvPfiSD_+0xa4> @ imm = #0x78
  62b784: e3a08000     	mov	r8, #0
  62b788: e1a05001     	mov	r5, r1
  62b78c: e3a07000     	mov	r7, #0
  62b790: e1a09008     	mov	r9, r8
  62b794: e1a0a008     	mov	r10, r8
  62b798: e79b6007     	ldr	r6, [r11, r7]
  62b79c: e5951000     	ldr	r1, [r5]
  62b7a0: e2877004     	add	r7, r7, #4
  62b7a4: e1a00006     	mov	r0, r6
  62b7a8: ebf38d6f     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31ca44
  62b7ac: e1a01000     	mov	r1, r0
  62b7b0: e1a00008     	mov	r0, r8
  62b7b4: ebf38cfa     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31cc18
  62b7b8: e5951004     	ldr	r1, [r5, #0x4]
  62b7bc: e1a08000     	mov	r8, r0
  62b7c0: e1a00006     	mov	r0, r6
  62b7c4: ebf38d68     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31ca60
  62b7c8: e1a01000     	mov	r1, r0
  62b7cc: e1a00009     	mov	r0, r9
  62b7d0: ebf38cf3     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31cc34
  62b7d4: e5951008     	ldr	r1, [r5, #0x8]
  62b7d8: e1a09000     	mov	r9, r0
  62b7dc: e1a00006     	mov	r0, r6
  62b7e0: ebf38d61     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31ca7c
  62b7e4: e1a01000     	mov	r1, r0
  62b7e8: e1a0000a     	mov	r0, r10
  62b7ec: ebf38cec     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31cc50
  62b7f0: e2544001     	subs	r4, r4, #1
  62b7f4: e1a0a000     	mov	r10, r0
  62b7f8: e285500c     	add	r5, r5, #12
  62b7fc: 1affffe5     	bne	0x62b798 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIfEELi1EfEEEEE13getAddedValueEPvPfiSD_+0x3c> @ imm = #-0x6c
  62b800: e59d3028     	ldr	r3, [sp, #0x28]
  62b804: e4838004     	str	r8, [r3], #4
  62b808: e59d2028     	ldr	r2, [sp, #0x28]
  62b80c: e5829004     	str	r9, [r2, #0x4]
  62b810: e583a004     	str	r10, [r3, #0x4]
  62b814: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62b818: e1a02001     	mov	r2, r1
  62b81c: e4920004     	ldr	r0, [r2], #4
  62b820: e59d3028     	ldr	r3, [sp, #0x28]
  62b824: e4830004     	str	r0, [r3], #4
  62b828: e5911004     	ldr	r1, [r1, #0x4]
  62b82c: e59d0028     	ldr	r0, [sp, #0x28]
  62b830: e5801004     	str	r1, [r0, #0x4]
  62b834: e5922004     	ldr	r2, [r2, #0x4]
  62b838: e5832004     	str	r2, [r3, #0x4]
  62b83c: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}

; FUNCTION 0x0062b840 size=228 sha256=5d3ab3e6b1bcdd324bf9a8a3d755f16ca5c041e2cbb25dff0491fb55e80a953c
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short> > >::getAddedValue(void*, float*, int, void*) const
0062b840 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIsEELi1EsEEEEE13getAddedValueEPvPfiSD_>:
  62b840: e3530001     	cmp	r3, #1
  62b844: e92d4ff8     	push	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62b848: e1a04003     	mov	r4, r3
  62b84c: e1a0b002     	mov	r11, r2
  62b850: 0a000029     	beq	0x62b8fc <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIsEELi1EsEEEEE13getAddedValueEPvPfiSD_+0xbc> @ imm = #0xa4
  62b854: e3530000     	cmp	r3, #0
  62b858: 03a08000     	moveq	r8, #0
  62b85c: 01a09008     	moveq	r9, r8
  62b860: 01a0a008     	moveq	r10, r8
  62b864: 0a00001e     	beq	0x62b8e4 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIsEELi1EsEEEEE13getAddedValueEPvPfiSD_+0xa4> @ imm = #0x78
  62b868: e3a08000     	mov	r8, #0
  62b86c: e1a05001     	mov	r5, r1
  62b870: e3a07000     	mov	r7, #0
  62b874: e1a09008     	mov	r9, r8
  62b878: e1a0a008     	mov	r10, r8
  62b87c: e79b6007     	ldr	r6, [r11, r7]
  62b880: e5951000     	ldr	r1, [r5]
  62b884: e2877004     	add	r7, r7, #4
  62b888: e1a00006     	mov	r0, r6
  62b88c: ebf38d36     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31cb28
  62b890: e1a01000     	mov	r1, r0
  62b894: e1a00008     	mov	r0, r8
  62b898: ebf38cc1     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31ccfc
  62b89c: e5951004     	ldr	r1, [r5, #0x4]
  62b8a0: e1a08000     	mov	r8, r0
  62b8a4: e1a00006     	mov	r0, r6
  62b8a8: ebf38d2f     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31cb44
  62b8ac: e1a01000     	mov	r1, r0
  62b8b0: e1a00009     	mov	r0, r9
  62b8b4: ebf38cba     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31cd18
  62b8b8: e5951008     	ldr	r1, [r5, #0x8]
  62b8bc: e1a09000     	mov	r9, r0
  62b8c0: e1a00006     	mov	r0, r6
  62b8c4: ebf38d28     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31cb60
  62b8c8: e1a01000     	mov	r1, r0
  62b8cc: e1a0000a     	mov	r0, r10
  62b8d0: ebf38cb3     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31cd34
  62b8d4: e2544001     	subs	r4, r4, #1
  62b8d8: e1a0a000     	mov	r10, r0
  62b8dc: e285500c     	add	r5, r5, #12
  62b8e0: 1affffe5     	bne	0x62b87c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIsEELi1EsEEEEE13getAddedValueEPvPfiSD_+0x3c> @ imm = #-0x6c
  62b8e4: e59d3028     	ldr	r3, [sp, #0x28]
  62b8e8: e4838004     	str	r8, [r3], #4
  62b8ec: e59d2028     	ldr	r2, [sp, #0x28]
  62b8f0: e5829004     	str	r9, [r2, #0x4]
  62b8f4: e583a004     	str	r10, [r3, #0x4]
  62b8f8: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62b8fc: e1a02001     	mov	r2, r1
  62b900: e4920004     	ldr	r0, [r2], #4
  62b904: e59d3028     	ldr	r3, [sp, #0x28]
  62b908: e4830004     	str	r0, [r3], #4
  62b90c: e5911004     	ldr	r1, [r1, #0x4]
  62b910: e59d0028     	ldr	r0, [sp, #0x28]
  62b914: e5801004     	str	r1, [r0, #0x4]
  62b918: e5922004     	ldr	r2, [r2, #0x4]
  62b91c: e5832004     	str	r2, [r3, #0x4]
  62b920: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}

; FUNCTION 0x0062b924 size=228 sha256=4cc0559a167be29660a6ae231de9f27117c68ed3e944602309bc59be0846cd03
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char> > >::getAddedValue(void*, float*, int, void*) const
0062b924 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIcEELi1EcEEEEE13getAddedValueEPvPfiSD_>:
  62b924: e3530001     	cmp	r3, #1
  62b928: e92d4ff8     	push	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62b92c: e1a04003     	mov	r4, r3
  62b930: e1a0b002     	mov	r11, r2
  62b934: 0a000029     	beq	0x62b9e0 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIcEELi1EcEEEEE13getAddedValueEPvPfiSD_+0xbc> @ imm = #0xa4
  62b938: e3530000     	cmp	r3, #0
  62b93c: 03a08000     	moveq	r8, #0
  62b940: 01a09008     	moveq	r9, r8
  62b944: 01a0a008     	moveq	r10, r8
  62b948: 0a00001e     	beq	0x62b9c8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIcEELi1EcEEEEE13getAddedValueEPvPfiSD_+0xa4> @ imm = #0x78
  62b94c: e3a08000     	mov	r8, #0
  62b950: e1a05001     	mov	r5, r1
  62b954: e3a07000     	mov	r7, #0
  62b958: e1a09008     	mov	r9, r8
  62b95c: e1a0a008     	mov	r10, r8
  62b960: e79b6007     	ldr	r6, [r11, r7]
  62b964: e5951000     	ldr	r1, [r5]
  62b968: e2877004     	add	r7, r7, #4
  62b96c: e1a00006     	mov	r0, r6
  62b970: ebf38cfd     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31cc0c
  62b974: e1a01000     	mov	r1, r0
  62b978: e1a00008     	mov	r0, r8
  62b97c: ebf38c88     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31cde0
  62b980: e5951004     	ldr	r1, [r5, #0x4]
  62b984: e1a08000     	mov	r8, r0
  62b988: e1a00006     	mov	r0, r6
  62b98c: ebf38cf6     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31cc28
  62b990: e1a01000     	mov	r1, r0
  62b994: e1a00009     	mov	r0, r9
  62b998: ebf38c81     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31cdfc
  62b99c: e5951008     	ldr	r1, [r5, #0x8]
  62b9a0: e1a09000     	mov	r9, r0
  62b9a4: e1a00006     	mov	r0, r6
  62b9a8: ebf38cef     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31cc44
  62b9ac: e1a01000     	mov	r1, r0
  62b9b0: e1a0000a     	mov	r0, r10
  62b9b4: ebf38c7a     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31ce18
  62b9b8: e2544001     	subs	r4, r4, #1
  62b9bc: e1a0a000     	mov	r10, r0
  62b9c0: e285500c     	add	r5, r5, #12
  62b9c4: 1affffe5     	bne	0x62b960 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIcEELi1EcEEEEE13getAddedValueEPvPfiSD_+0x3c> @ imm = #-0x6c
  62b9c8: e59d3028     	ldr	r3, [sp, #0x28]
  62b9cc: e4838004     	str	r8, [r3], #4
  62b9d0: e59d2028     	ldr	r2, [sp, #0x28]
  62b9d4: e5829004     	str	r9, [r2, #0x4]
  62b9d8: e583a004     	str	r10, [r3, #0x4]
  62b9dc: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62b9e0: e1a02001     	mov	r2, r1
  62b9e4: e4920004     	ldr	r0, [r2], #4
  62b9e8: e59d3028     	ldr	r3, [sp, #0x28]
  62b9ec: e4830004     	str	r0, [r3], #4
  62b9f0: e5911004     	ldr	r1, [r1, #0x4]
  62b9f4: e59d0028     	ldr	r0, [sp, #0x28]
  62b9f8: e5801004     	str	r1, [r0, #0x4]
  62b9fc: e5922004     	ldr	r2, [r2, #0x4]
  62ba00: e5832004     	str	r2, [r3, #0x4]
  62ba04: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}

; FUNCTION 0x0062ba08 size=228 sha256=84d9100da2a59b4ef791159e981df590d1f54ef61e3955581ac9b50e0abf2108
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float> > >::getAddedValue(void*, float*, int, void*) const
0062ba08 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIfEELi2EfEEEEE13getAddedValueEPvPfiSD_>:
  62ba08: e3530001     	cmp	r3, #1
  62ba0c: e92d4ff8     	push	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62ba10: e1a04003     	mov	r4, r3
  62ba14: e1a0b002     	mov	r11, r2
  62ba18: 0a000029     	beq	0x62bac4 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIfEELi2EfEEEEE13getAddedValueEPvPfiSD_+0xbc> @ imm = #0xa4
  62ba1c: e3530000     	cmp	r3, #0
  62ba20: 03a08000     	moveq	r8, #0
  62ba24: 01a09008     	moveq	r9, r8
  62ba28: 01a0a008     	moveq	r10, r8
  62ba2c: 0a00001e     	beq	0x62baac <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIfEELi2EfEEEEE13getAddedValueEPvPfiSD_+0xa4> @ imm = #0x78
  62ba30: e3a08000     	mov	r8, #0
  62ba34: e1a05001     	mov	r5, r1
  62ba38: e3a07000     	mov	r7, #0
  62ba3c: e1a09008     	mov	r9, r8
  62ba40: e1a0a008     	mov	r10, r8
  62ba44: e79b6007     	ldr	r6, [r11, r7]
  62ba48: e5951000     	ldr	r1, [r5]
  62ba4c: e2877004     	add	r7, r7, #4
  62ba50: e1a00006     	mov	r0, r6
  62ba54: ebf38cc4     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31ccf0
  62ba58: e1a01000     	mov	r1, r0
  62ba5c: e1a00008     	mov	r0, r8
  62ba60: ebf38c4f     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31cec4
  62ba64: e5951004     	ldr	r1, [r5, #0x4]
  62ba68: e1a08000     	mov	r8, r0
  62ba6c: e1a00006     	mov	r0, r6
  62ba70: ebf38cbd     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31cd0c
  62ba74: e1a01000     	mov	r1, r0
  62ba78: e1a00009     	mov	r0, r9
  62ba7c: ebf38c48     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31cee0
  62ba80: e5951008     	ldr	r1, [r5, #0x8]
  62ba84: e1a09000     	mov	r9, r0
  62ba88: e1a00006     	mov	r0, r6
  62ba8c: ebf38cb6     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31cd28
  62ba90: e1a01000     	mov	r1, r0
  62ba94: e1a0000a     	mov	r0, r10
  62ba98: ebf38c41     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31cefc
  62ba9c: e2544001     	subs	r4, r4, #1
  62baa0: e1a0a000     	mov	r10, r0
  62baa4: e285500c     	add	r5, r5, #12
  62baa8: 1affffe5     	bne	0x62ba44 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIfEELi2EfEEEEE13getAddedValueEPvPfiSD_+0x3c> @ imm = #-0x6c
  62baac: e59d3028     	ldr	r3, [sp, #0x28]
  62bab0: e4838004     	str	r8, [r3], #4
  62bab4: e59d2028     	ldr	r2, [sp, #0x28]
  62bab8: e5829004     	str	r9, [r2, #0x4]
  62babc: e583a004     	str	r10, [r3, #0x4]
  62bac0: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62bac4: e1a02001     	mov	r2, r1
  62bac8: e4920004     	ldr	r0, [r2], #4
  62bacc: e59d3028     	ldr	r3, [sp, #0x28]
  62bad0: e4830004     	str	r0, [r3], #4
  62bad4: e5911004     	ldr	r1, [r1, #0x4]
  62bad8: e59d0028     	ldr	r0, [sp, #0x28]
  62badc: e5801004     	str	r1, [r0, #0x4]
  62bae0: e5922004     	ldr	r2, [r2, #0x4]
  62bae4: e5832004     	str	r2, [r3, #0x4]
  62bae8: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}

; FUNCTION 0x0062baec size=228 sha256=7955826b1be544fb2b2269d5a02414a58b2e3e18ed61ab6039ff81466b12c61b
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short> > >::getAddedValue(void*, float*, int, void*) const
0062baec <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIsEELi2EsEEEEE13getAddedValueEPvPfiSD_>:
  62baec: e3530001     	cmp	r3, #1
  62baf0: e92d4ff8     	push	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62baf4: e1a04003     	mov	r4, r3
  62baf8: e1a0b002     	mov	r11, r2
  62bafc: 0a000029     	beq	0x62bba8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIsEELi2EsEEEEE13getAddedValueEPvPfiSD_+0xbc> @ imm = #0xa4
  62bb00: e3530000     	cmp	r3, #0
  62bb04: 03a08000     	moveq	r8, #0
  62bb08: 01a09008     	moveq	r9, r8
  62bb0c: 01a0a008     	moveq	r10, r8
  62bb10: 0a00001e     	beq	0x62bb90 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIsEELi2EsEEEEE13getAddedValueEPvPfiSD_+0xa4> @ imm = #0x78
  62bb14: e3a08000     	mov	r8, #0
  62bb18: e1a05001     	mov	r5, r1
  62bb1c: e3a07000     	mov	r7, #0
  62bb20: e1a09008     	mov	r9, r8
  62bb24: e1a0a008     	mov	r10, r8
  62bb28: e79b6007     	ldr	r6, [r11, r7]
  62bb2c: e5951000     	ldr	r1, [r5]
  62bb30: e2877004     	add	r7, r7, #4
  62bb34: e1a00006     	mov	r0, r6
  62bb38: ebf38c8b     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31cdd4
  62bb3c: e1a01000     	mov	r1, r0
  62bb40: e1a00008     	mov	r0, r8
  62bb44: ebf38c16     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31cfa8
  62bb48: e5951004     	ldr	r1, [r5, #0x4]
  62bb4c: e1a08000     	mov	r8, r0
  62bb50: e1a00006     	mov	r0, r6
  62bb54: ebf38c84     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31cdf0
  62bb58: e1a01000     	mov	r1, r0
  62bb5c: e1a00009     	mov	r0, r9
  62bb60: ebf38c0f     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31cfc4
  62bb64: e5951008     	ldr	r1, [r5, #0x8]
  62bb68: e1a09000     	mov	r9, r0
  62bb6c: e1a00006     	mov	r0, r6
  62bb70: ebf38c7d     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31ce0c
  62bb74: e1a01000     	mov	r1, r0
  62bb78: e1a0000a     	mov	r0, r10
  62bb7c: ebf38c08     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31cfe0
  62bb80: e2544001     	subs	r4, r4, #1
  62bb84: e1a0a000     	mov	r10, r0
  62bb88: e285500c     	add	r5, r5, #12
  62bb8c: 1affffe5     	bne	0x62bb28 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIsEELi2EsEEEEE13getAddedValueEPvPfiSD_+0x3c> @ imm = #-0x6c
  62bb90: e59d3028     	ldr	r3, [sp, #0x28]
  62bb94: e4838004     	str	r8, [r3], #4
  62bb98: e59d2028     	ldr	r2, [sp, #0x28]
  62bb9c: e5829004     	str	r9, [r2, #0x4]
  62bba0: e583a004     	str	r10, [r3, #0x4]
  62bba4: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62bba8: e1a02001     	mov	r2, r1
  62bbac: e4920004     	ldr	r0, [r2], #4
  62bbb0: e59d3028     	ldr	r3, [sp, #0x28]
  62bbb4: e4830004     	str	r0, [r3], #4
  62bbb8: e5911004     	ldr	r1, [r1, #0x4]
  62bbbc: e59d0028     	ldr	r0, [sp, #0x28]
  62bbc0: e5801004     	str	r1, [r0, #0x4]
  62bbc4: e5922004     	ldr	r2, [r2, #0x4]
  62bbc8: e5832004     	str	r2, [r3, #0x4]
  62bbcc: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}

; FUNCTION 0x0062bbd0 size=228 sha256=74b83c764d26fc719a6889d207a476919ad5563561c954c1f9d48c9028c2d7a4
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char> > >::getAddedValue(void*, float*, int, void*) const
0062bbd0 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIcEELi2EcEEEEE13getAddedValueEPvPfiSD_>:
  62bbd0: e3530001     	cmp	r3, #1
  62bbd4: e92d4ff8     	push	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62bbd8: e1a04003     	mov	r4, r3
  62bbdc: e1a0b002     	mov	r11, r2
  62bbe0: 0a000029     	beq	0x62bc8c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIcEELi2EcEEEEE13getAddedValueEPvPfiSD_+0xbc> @ imm = #0xa4
  62bbe4: e3530000     	cmp	r3, #0
  62bbe8: 03a08000     	moveq	r8, #0
  62bbec: 01a09008     	moveq	r9, r8
  62bbf0: 01a0a008     	moveq	r10, r8
  62bbf4: 0a00001e     	beq	0x62bc74 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIcEELi2EcEEEEE13getAddedValueEPvPfiSD_+0xa4> @ imm = #0x78
  62bbf8: e3a08000     	mov	r8, #0
  62bbfc: e1a05001     	mov	r5, r1
  62bc00: e3a07000     	mov	r7, #0
  62bc04: e1a09008     	mov	r9, r8
  62bc08: e1a0a008     	mov	r10, r8
  62bc0c: e79b6007     	ldr	r6, [r11, r7]
  62bc10: e5951000     	ldr	r1, [r5]
  62bc14: e2877004     	add	r7, r7, #4
  62bc18: e1a00006     	mov	r0, r6
  62bc1c: ebf38c52     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31ceb8
  62bc20: e1a01000     	mov	r1, r0
  62bc24: e1a00008     	mov	r0, r8
  62bc28: ebf38bdd     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31d08c
  62bc2c: e5951004     	ldr	r1, [r5, #0x4]
  62bc30: e1a08000     	mov	r8, r0
  62bc34: e1a00006     	mov	r0, r6
  62bc38: ebf38c4b     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31ced4
  62bc3c: e1a01000     	mov	r1, r0
  62bc40: e1a00009     	mov	r0, r9
  62bc44: ebf38bd6     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31d0a8
  62bc48: e5951008     	ldr	r1, [r5, #0x8]
  62bc4c: e1a09000     	mov	r9, r0
  62bc50: e1a00006     	mov	r0, r6
  62bc54: ebf38c44     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31cef0
  62bc58: e1a01000     	mov	r1, r0
  62bc5c: e1a0000a     	mov	r0, r10
  62bc60: ebf38bcf     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31d0c4
  62bc64: e2544001     	subs	r4, r4, #1
  62bc68: e1a0a000     	mov	r10, r0
  62bc6c: e285500c     	add	r5, r5, #12
  62bc70: 1affffe5     	bne	0x62bc0c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIcEELi2EcEEEEE13getAddedValueEPvPfiSD_+0x3c> @ imm = #-0x6c
  62bc74: e59d3028     	ldr	r3, [sp, #0x28]
  62bc78: e4838004     	str	r8, [r3], #4
  62bc7c: e59d2028     	ldr	r2, [sp, #0x28]
  62bc80: e5829004     	str	r9, [r2, #0x4]
  62bc84: e583a004     	str	r10, [r3, #0x4]
  62bc88: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62bc8c: e1a02001     	mov	r2, r1
  62bc90: e4920004     	ldr	r0, [r2], #4
  62bc94: e59d3028     	ldr	r3, [sp, #0x28]
  62bc98: e4830004     	str	r0, [r3], #4
  62bc9c: e5911004     	ldr	r1, [r1, #0x4]
  62bca0: e59d0028     	ldr	r0, [sp, #0x28]
  62bca4: e5801004     	str	r1, [r0, #0x4]
  62bca8: e5922004     	ldr	r2, [r2, #0x4]
  62bcac: e5832004     	str	r2, [r3, #0x4]
  62bcb0: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}

; FUNCTION 0x0062bcb4 size=228 sha256=4b1c45abd309411582c8e5254f34a199c1c4ba1e1444b8a917375490ec279184
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, 0, float> > >::getAddedValue(void*, float*, int, void*) const
0062bcb4 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE13getAddedValueEPvPfiSD_>:
  62bcb4: e3530001     	cmp	r3, #1
  62bcb8: e92d4ff8     	push	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62bcbc: e1a04003     	mov	r4, r3
  62bcc0: e1a0b002     	mov	r11, r2
  62bcc4: 0a000029     	beq	0x62bd70 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE13getAddedValueEPvPfiSD_+0xbc> @ imm = #0xa4
  62bcc8: e3530000     	cmp	r3, #0
  62bccc: 03a08000     	moveq	r8, #0
  62bcd0: 01a09008     	moveq	r9, r8
  62bcd4: 01a0a008     	moveq	r10, r8
  62bcd8: 0a00001e     	beq	0x62bd58 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE13getAddedValueEPvPfiSD_+0xa4> @ imm = #0x78
  62bcdc: e3a08000     	mov	r8, #0
  62bce0: e1a05001     	mov	r5, r1
  62bce4: e3a07000     	mov	r7, #0
  62bce8: e1a09008     	mov	r9, r8
  62bcec: e1a0a008     	mov	r10, r8
  62bcf0: e79b6007     	ldr	r6, [r11, r7]
  62bcf4: e5951000     	ldr	r1, [r5]
  62bcf8: e2877004     	add	r7, r7, #4
  62bcfc: e1a00006     	mov	r0, r6
  62bd00: ebf38c19     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31cf9c
  62bd04: e1a01000     	mov	r1, r0
  62bd08: e1a00008     	mov	r0, r8
  62bd0c: ebf38ba4     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31d170
  62bd10: e5951004     	ldr	r1, [r5, #0x4]
  62bd14: e1a08000     	mov	r8, r0
  62bd18: e1a00006     	mov	r0, r6
  62bd1c: ebf38c12     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31cfb8
  62bd20: e1a01000     	mov	r1, r0
  62bd24: e1a00009     	mov	r0, r9
  62bd28: ebf38b9d     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31d18c
  62bd2c: e5951008     	ldr	r1, [r5, #0x8]
  62bd30: e1a09000     	mov	r9, r0
  62bd34: e1a00006     	mov	r0, r6
  62bd38: ebf38c0b     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31cfd4
  62bd3c: e1a01000     	mov	r1, r0
  62bd40: e1a0000a     	mov	r0, r10
  62bd44: ebf38b96     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31d1a8
  62bd48: e2544001     	subs	r4, r4, #1
  62bd4c: e1a0a000     	mov	r10, r0
  62bd50: e285500c     	add	r5, r5, #12
  62bd54: 1affffe5     	bne	0x62bcf0 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELi0EfEEEEE13getAddedValueEPvPfiSD_+0x3c> @ imm = #-0x6c
  62bd58: e59d3028     	ldr	r3, [sp, #0x28]
  62bd5c: e4838004     	str	r8, [r3], #4
  62bd60: e59d2028     	ldr	r2, [sp, #0x28]
  62bd64: e5829004     	str	r9, [r2, #0x4]
  62bd68: e583a004     	str	r10, [r3, #0x4]
  62bd6c: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62bd70: e1a02001     	mov	r2, r1
  62bd74: e4920004     	ldr	r0, [r2], #4
  62bd78: e59d3028     	ldr	r3, [sp, #0x28]
  62bd7c: e4830004     	str	r0, [r3], #4
  62bd80: e5911004     	ldr	r1, [r1, #0x4]
  62bd84: e59d0028     	ldr	r0, [sp, #0x28]
  62bd88: e5801004     	str	r1, [r0, #0x4]
  62bd8c: e5922004     	ldr	r2, [r2, #0x4]
  62bd90: e5832004     	str	r2, [r3, #0x4]
  62bd94: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}

; FUNCTION 0x0062bd98 size=228 sha256=beaffd523863a343bf1f32461377eb79c92b8cb5109a04c1411fc0206d3dbea0
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<float [3], glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, -1, float> > >::getAddedValue(void*, float*, int, void*) const
0062bd98 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE13getAddedValueEPvPfiSD_>:
  62bd98: e3530001     	cmp	r3, #1
  62bd9c: e92d4ff8     	push	{r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62bda0: e1a04003     	mov	r4, r3
  62bda4: e1a0b002     	mov	r11, r2
  62bda8: 0a000029     	beq	0x62be54 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE13getAddedValueEPvPfiSD_+0xbc> @ imm = #0xa4
  62bdac: e3530000     	cmp	r3, #0
  62bdb0: 03a08000     	moveq	r8, #0
  62bdb4: 01a09008     	moveq	r9, r8
  62bdb8: 01a0a008     	moveq	r10, r8
  62bdbc: 0a00001e     	beq	0x62be3c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE13getAddedValueEPvPfiSD_+0xa4> @ imm = #0x78
  62bdc0: e3a08000     	mov	r8, #0
  62bdc4: e1a05001     	mov	r5, r1
  62bdc8: e3a07000     	mov	r7, #0
  62bdcc: e1a09008     	mov	r9, r8
  62bdd0: e1a0a008     	mov	r10, r8
  62bdd4: e79b6007     	ldr	r6, [r11, r7]
  62bdd8: e5951000     	ldr	r1, [r5]
  62bddc: e2877004     	add	r7, r7, #4
  62bde0: e1a00006     	mov	r0, r6
  62bde4: ebf38be0     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31d080
  62bde8: e1a01000     	mov	r1, r0
  62bdec: e1a00008     	mov	r0, r8
  62bdf0: ebf38b6b     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31d254
  62bdf4: e5951004     	ldr	r1, [r5, #0x4]
  62bdf8: e1a08000     	mov	r8, r0
  62bdfc: e1a00006     	mov	r0, r6
  62be00: ebf38bd9     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31d09c
  62be04: e1a01000     	mov	r1, r0
  62be08: e1a00009     	mov	r0, r9
  62be0c: ebf38b64     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31d270
  62be10: e5951008     	ldr	r1, [r5, #0x8]
  62be14: e1a09000     	mov	r9, r0
  62be18: e1a00006     	mov	r0, r6
  62be1c: ebf38bd2     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31d0b8
  62be20: e1a01000     	mov	r1, r0
  62be24: e1a0000a     	mov	r0, r10
  62be28: ebf38b5d     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31d28c
  62be2c: e2544001     	subs	r4, r4, #1
  62be30: e1a0a000     	mov	r10, r0
  62be34: e285500c     	add	r5, r5, #12
  62be38: 1affffe5     	bne	0x62bdd4 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExIA3_fNS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS4_S4_EEEELin1EfEEEEE13getAddedValueEPvPfiSD_+0x3c> @ imm = #-0x6c
  62be3c: e59d3028     	ldr	r3, [sp, #0x28]
  62be40: e4838004     	str	r8, [r3], #4
  62be44: e59d2028     	ldr	r2, [sp, #0x28]
  62be48: e5829004     	str	r9, [r2, #0x4]
  62be4c: e583a004     	str	r10, [r3, #0x4]
  62be50: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62be54: e1a02001     	mov	r2, r1
  62be58: e4920004     	ldr	r0, [r2], #4
  62be5c: e59d3028     	ldr	r3, [sp, #0x28]
  62be60: e4830004     	str	r0, [r3], #4
  62be64: e5911004     	ldr	r1, [r1, #0x4]
  62be68: e59d0028     	ldr	r0, [sp, #0x28]
  62be6c: e5801004     	str	r1, [r0, #0x4]
  62be70: e5922004     	ldr	r2, [r2, #0x4]
  62be74: e5832004     	str	r2, [r3, #0x4]
  62be78: e8bd8ff8     	pop	{r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}

; FUNCTION 0x0062be7c size=248 sha256=756b8cba5549dba76e9a2645b1c6c7caa1c67787768ee4b00b890188e259f102
; symbols: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
0062be7c <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIcEELi2EcEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE>:
  62be7c: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62be80: e3520001     	cmp	r2, #1
  62be84: e24dd01c     	sub	sp, sp, #28
  62be88: e3a0a000     	mov	r10, #0
  62be8c: e1a04002     	mov	r4, r2
  62be90: e1a05001     	mov	r5, r1
  62be94: e58d3004     	str	r3, [sp, #0x4]
  62be98: e58da014     	str	r10, [sp, #0x14]
  62be9c: 0a00002b     	beq	0x62bf50 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIcEELi2EcEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xd4> @ imm = #0xac
  62bea0: e3520000     	cmp	r2, #0
  62bea4: 01a0b00a     	moveq	r11, r10
  62bea8: 01a0900a     	moveq	r9, r10
  62beac: 0a00001d     	beq	0x62bf28 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIcEELi2EcEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xac> @ imm = #0x74
  62beb0: e1a06000     	mov	r6, r0
  62beb4: e3a08000     	mov	r8, #0
  62beb8: e1a0b00a     	mov	r11, r10
  62bebc: e1a0900a     	mov	r9, r10
  62bec0: e7957008     	ldr	r7, [r5, r8]
  62bec4: e5961000     	ldr	r1, [r6]
  62bec8: e2888004     	add	r8, r8, #4
  62becc: e1a00007     	mov	r0, r7
  62bed0: ebf38ba5     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31d16c
  62bed4: e1a01000     	mov	r1, r0
  62bed8: e1a0000a     	mov	r0, r10
  62bedc: ebf38b30     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31d340
  62bee0: e5961004     	ldr	r1, [r6, #0x4]
  62bee4: e1a0a000     	mov	r10, r0
  62bee8: e1a00007     	mov	r0, r7
  62beec: ebf38b9e     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31d188
  62bef0: e1a01000     	mov	r1, r0
  62bef4: e1a0000b     	mov	r0, r11
  62bef8: ebf38b29     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31d35c
  62befc: e5961008     	ldr	r1, [r6, #0x8]
  62bf00: e1a0b000     	mov	r11, r0
  62bf04: e1a00007     	mov	r0, r7
  62bf08: ebf38b97     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31d1a4
  62bf0c: e1a01000     	mov	r1, r0
  62bf10: e1a00009     	mov	r0, r9
  62bf14: ebf38b22     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31d378
  62bf18: e2544001     	subs	r4, r4, #1
  62bf1c: e1a09000     	mov	r9, r0
  62bf20: e286600c     	add	r6, r6, #12
  62bf24: 1affffe5     	bne	0x62bec0 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIcEELi2EcEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x44> @ imm = #-0x6c
  62bf28: e28d1018     	add	r1, sp, #24
  62bf2c: e521a00c     	str	r10, [r1, #-0xc]!
  62bf30: e58db010     	str	r11, [sp, #0x10]
  62bf34: e5819008     	str	r9, [r1, #0x8]
  62bf38: e59d0004     	ldr	r0, [sp, #0x4]
  62bf3c: e5903000     	ldr	r3, [r0]
  62bf40: e1a0e00f     	mov	lr, pc
  62bf44: e593f094     	ldr	pc, [r3, #0x94]
  62bf48: e28dd01c     	add	sp, sp, #28
  62bf4c: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62bf50: e1a03000     	mov	r3, r0
  62bf54: e493c004     	ldr	r12, [r3], #4
  62bf58: e5902004     	ldr	r2, [r0, #0x4]
  62bf5c: e28d1018     	add	r1, sp, #24
  62bf60: e5933004     	ldr	r3, [r3, #0x4]
  62bf64: e521c00c     	str	r12, [r1, #-0xc]!
  62bf68: e58d2010     	str	r2, [sp, #0x10]
  62bf6c: e5813008     	str	r3, [r1, #0x8]
  62bf70: eafffff0     	b	0x62bf38 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIcEELi2EcEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xbc> @ imm = #-0x40

; FUNCTION 0x0062bf74 size=28 sha256=e7ecfdacaee34dd6f39b726dc7b5ffcc3adf55e2c7037d1df0d3033e53eb0543
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
0062bf74 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIcEELi2EcEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  62bf74: e1a00001     	mov	r0, r1
  62bf78: e59dc004     	ldr	r12, [sp, #0x4]
  62bf7c: e1a01002     	mov	r1, r2
  62bf80: e1a02003     	mov	r2, r3
  62bf84: e59d3000     	ldr	r3, [sp]
  62bf88: e58dc000     	str	r12, [sp]
  62bf8c: eaffffba     	b	0x62be7c <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIcEELi2EcEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE> @ imm = #-0x118

; FUNCTION 0x0062bf90 size=248 sha256=3f0f672691da0720793569de8f930efb51e6ab72e2d14b35aae23021aacf3482
; symbols: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
0062bf90 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIcEELi2EcEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE>:
  62bf90: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62bf94: e3520001     	cmp	r2, #1
  62bf98: e24dd01c     	sub	sp, sp, #28
  62bf9c: e3a0a000     	mov	r10, #0
  62bfa0: e1a04002     	mov	r4, r2
  62bfa4: e1a05001     	mov	r5, r1
  62bfa8: e58d3004     	str	r3, [sp, #0x4]
  62bfac: e58da014     	str	r10, [sp, #0x14]
  62bfb0: 0a00002b     	beq	0x62c064 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIcEELi2EcEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xd4> @ imm = #0xac
  62bfb4: e3520000     	cmp	r2, #0
  62bfb8: 01a0b00a     	moveq	r11, r10
  62bfbc: 01a0900a     	moveq	r9, r10
  62bfc0: 0a00001d     	beq	0x62c03c <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIcEELi2EcEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xac> @ imm = #0x74
  62bfc4: e1a06000     	mov	r6, r0
  62bfc8: e3a08000     	mov	r8, #0
  62bfcc: e1a0b00a     	mov	r11, r10
  62bfd0: e1a0900a     	mov	r9, r10
  62bfd4: e7957008     	ldr	r7, [r5, r8]
  62bfd8: e5961000     	ldr	r1, [r6]
  62bfdc: e2888004     	add	r8, r8, #4
  62bfe0: e1a00007     	mov	r0, r7
  62bfe4: ebf38b60     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31d280
  62bfe8: e1a01000     	mov	r1, r0
  62bfec: e1a0000a     	mov	r0, r10
  62bff0: ebf38aeb     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31d454
  62bff4: e5961004     	ldr	r1, [r6, #0x4]
  62bff8: e1a0a000     	mov	r10, r0
  62bffc: e1a00007     	mov	r0, r7
  62c000: ebf38b59     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31d29c
  62c004: e1a01000     	mov	r1, r0
  62c008: e1a0000b     	mov	r0, r11
  62c00c: ebf38ae4     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31d470
  62c010: e5961008     	ldr	r1, [r6, #0x8]
  62c014: e1a0b000     	mov	r11, r0
  62c018: e1a00007     	mov	r0, r7
  62c01c: ebf38b52     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31d2b8
  62c020: e1a01000     	mov	r1, r0
  62c024: e1a00009     	mov	r0, r9
  62c028: ebf38add     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31d48c
  62c02c: e2544001     	subs	r4, r4, #1
  62c030: e1a09000     	mov	r9, r0
  62c034: e286600c     	add	r6, r6, #12
  62c038: 1affffe5     	bne	0x62bfd4 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIcEELi2EcEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x44> @ imm = #-0x6c
  62c03c: e28d1018     	add	r1, sp, #24
  62c040: e521a00c     	str	r10, [r1, #-0xc]!
  62c044: e58db010     	str	r11, [sp, #0x10]
  62c048: e5819008     	str	r9, [r1, #0x8]
  62c04c: e59d0004     	ldr	r0, [sp, #0x4]
  62c050: e5903000     	ldr	r3, [r0]
  62c054: e1a0e00f     	mov	lr, pc
  62c058: e593f094     	ldr	pc, [r3, #0x94]
  62c05c: e28dd01c     	add	sp, sp, #28
  62c060: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62c064: e1a03000     	mov	r3, r0
  62c068: e493c004     	ldr	r12, [r3], #4
  62c06c: e5902004     	ldr	r2, [r0, #0x4]
  62c070: e28d1018     	add	r1, sp, #24
  62c074: e5933004     	ldr	r3, [r3, #0x4]
  62c078: e521c00c     	str	r12, [r1, #-0xc]!
  62c07c: e58d2010     	str	r2, [sp, #0x10]
  62c080: e5813008     	str	r3, [r1, #0x8]
  62c084: eafffff0     	b	0x62c04c <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIcEELi2EcEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xbc> @ imm = #-0x40

; FUNCTION 0x0062c088 size=28 sha256=e7ecfdacaee34dd6f39b726dc7b5ffcc3adf55e2c7037d1df0d3033e53eb0543
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
0062c088 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIcEELi2EcEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  62c088: e1a00001     	mov	r0, r1
  62c08c: e59dc004     	ldr	r12, [sp, #0x4]
  62c090: e1a01002     	mov	r1, r2
  62c094: e1a02003     	mov	r2, r3
  62c098: e59d3000     	ldr	r3, [sp]
  62c09c: e58dc000     	str	r12, [sp]
  62c0a0: eaffffba     	b	0x62bf90 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIcEELi2EcEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE> @ imm = #-0x118

; FUNCTION 0x0062c0a4 size=248 sha256=e4dc7bfbcae59b7cb52c08221c326e455def17217e73e8c98f2d49f813f1ec2e
; symbols: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
0062c0a4 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIsEELi2EsEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE>:
  62c0a4: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62c0a8: e3520001     	cmp	r2, #1
  62c0ac: e24dd01c     	sub	sp, sp, #28
  62c0b0: e3a0a000     	mov	r10, #0
  62c0b4: e1a04002     	mov	r4, r2
  62c0b8: e1a05001     	mov	r5, r1
  62c0bc: e58d3004     	str	r3, [sp, #0x4]
  62c0c0: e58da014     	str	r10, [sp, #0x14]
  62c0c4: 0a00002b     	beq	0x62c178 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIsEELi2EsEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xd4> @ imm = #0xac
  62c0c8: e3520000     	cmp	r2, #0
  62c0cc: 01a0b00a     	moveq	r11, r10
  62c0d0: 01a0900a     	moveq	r9, r10
  62c0d4: 0a00001d     	beq	0x62c150 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIsEELi2EsEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xac> @ imm = #0x74
  62c0d8: e1a06000     	mov	r6, r0
  62c0dc: e3a08000     	mov	r8, #0
  62c0e0: e1a0b00a     	mov	r11, r10
  62c0e4: e1a0900a     	mov	r9, r10
  62c0e8: e7957008     	ldr	r7, [r5, r8]
  62c0ec: e5961000     	ldr	r1, [r6]
  62c0f0: e2888004     	add	r8, r8, #4
  62c0f4: e1a00007     	mov	r0, r7
  62c0f8: ebf38b1b     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31d394
  62c0fc: e1a01000     	mov	r1, r0
  62c100: e1a0000a     	mov	r0, r10
  62c104: ebf38aa6     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31d568
  62c108: e5961004     	ldr	r1, [r6, #0x4]
  62c10c: e1a0a000     	mov	r10, r0
  62c110: e1a00007     	mov	r0, r7
  62c114: ebf38b14     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31d3b0
  62c118: e1a01000     	mov	r1, r0
  62c11c: e1a0000b     	mov	r0, r11
  62c120: ebf38a9f     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31d584
  62c124: e5961008     	ldr	r1, [r6, #0x8]
  62c128: e1a0b000     	mov	r11, r0
  62c12c: e1a00007     	mov	r0, r7
  62c130: ebf38b0d     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31d3cc
  62c134: e1a01000     	mov	r1, r0
  62c138: e1a00009     	mov	r0, r9
  62c13c: ebf38a98     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31d5a0
  62c140: e2544001     	subs	r4, r4, #1
  62c144: e1a09000     	mov	r9, r0
  62c148: e286600c     	add	r6, r6, #12
  62c14c: 1affffe5     	bne	0x62c0e8 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIsEELi2EsEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x44> @ imm = #-0x6c
  62c150: e28d1018     	add	r1, sp, #24
  62c154: e521a00c     	str	r10, [r1, #-0xc]!
  62c158: e58db010     	str	r11, [sp, #0x10]
  62c15c: e5819008     	str	r9, [r1, #0x8]
  62c160: e59d0004     	ldr	r0, [sp, #0x4]
  62c164: e5903000     	ldr	r3, [r0]
  62c168: e1a0e00f     	mov	lr, pc
  62c16c: e593f094     	ldr	pc, [r3, #0x94]
  62c170: e28dd01c     	add	sp, sp, #28
  62c174: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62c178: e1a03000     	mov	r3, r0
  62c17c: e493c004     	ldr	r12, [r3], #4
  62c180: e5902004     	ldr	r2, [r0, #0x4]
  62c184: e28d1018     	add	r1, sp, #24
  62c188: e5933004     	ldr	r3, [r3, #0x4]
  62c18c: e521c00c     	str	r12, [r1, #-0xc]!
  62c190: e58d2010     	str	r2, [sp, #0x10]
  62c194: e5813008     	str	r3, [r1, #0x8]
  62c198: eafffff0     	b	0x62c160 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIsEELi2EsEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xbc> @ imm = #-0x40

; FUNCTION 0x0062c19c size=28 sha256=e7ecfdacaee34dd6f39b726dc7b5ffcc3adf55e2c7037d1df0d3033e53eb0543
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
0062c19c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIsEELi2EsEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  62c19c: e1a00001     	mov	r0, r1
  62c1a0: e59dc004     	ldr	r12, [sp, #0x4]
  62c1a4: e1a01002     	mov	r1, r2
  62c1a8: e1a02003     	mov	r2, r3
  62c1ac: e59d3000     	ldr	r3, [sp]
  62c1b0: e58dc000     	str	r12, [sp]
  62c1b4: eaffffba     	b	0x62c0a4 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIsEELi2EsEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE> @ imm = #-0x118

; FUNCTION 0x0062c1b8 size=248 sha256=c5271e7c9edb5ae788a573a840fc45e964fcab5085315ad4e50c9393e6f78d72
; symbols: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
0062c1b8 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIsEELi2EsEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE>:
  62c1b8: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62c1bc: e3520001     	cmp	r2, #1
  62c1c0: e24dd01c     	sub	sp, sp, #28
  62c1c4: e3a0a000     	mov	r10, #0
  62c1c8: e1a04002     	mov	r4, r2
  62c1cc: e1a05001     	mov	r5, r1
  62c1d0: e58d3004     	str	r3, [sp, #0x4]
  62c1d4: e58da014     	str	r10, [sp, #0x14]
  62c1d8: 0a00002b     	beq	0x62c28c <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIsEELi2EsEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xd4> @ imm = #0xac
  62c1dc: e3520000     	cmp	r2, #0
  62c1e0: 01a0b00a     	moveq	r11, r10
  62c1e4: 01a0900a     	moveq	r9, r10
  62c1e8: 0a00001d     	beq	0x62c264 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIsEELi2EsEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xac> @ imm = #0x74
  62c1ec: e1a06000     	mov	r6, r0
  62c1f0: e3a08000     	mov	r8, #0
  62c1f4: e1a0b00a     	mov	r11, r10
  62c1f8: e1a0900a     	mov	r9, r10
  62c1fc: e7957008     	ldr	r7, [r5, r8]
  62c200: e5961000     	ldr	r1, [r6]
  62c204: e2888004     	add	r8, r8, #4
  62c208: e1a00007     	mov	r0, r7
  62c20c: ebf38ad6     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31d4a8
  62c210: e1a01000     	mov	r1, r0
  62c214: e1a0000a     	mov	r0, r10
  62c218: ebf38a61     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31d67c
  62c21c: e5961004     	ldr	r1, [r6, #0x4]
  62c220: e1a0a000     	mov	r10, r0
  62c224: e1a00007     	mov	r0, r7
  62c228: ebf38acf     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31d4c4
  62c22c: e1a01000     	mov	r1, r0
  62c230: e1a0000b     	mov	r0, r11
  62c234: ebf38a5a     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31d698
  62c238: e5961008     	ldr	r1, [r6, #0x8]
  62c23c: e1a0b000     	mov	r11, r0
  62c240: e1a00007     	mov	r0, r7
  62c244: ebf38ac8     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31d4e0
  62c248: e1a01000     	mov	r1, r0
  62c24c: e1a00009     	mov	r0, r9
  62c250: ebf38a53     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31d6b4
  62c254: e2544001     	subs	r4, r4, #1
  62c258: e1a09000     	mov	r9, r0
  62c25c: e286600c     	add	r6, r6, #12
  62c260: 1affffe5     	bne	0x62c1fc <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIsEELi2EsEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x44> @ imm = #-0x6c
  62c264: e28d1018     	add	r1, sp, #24
  62c268: e521a00c     	str	r10, [r1, #-0xc]!
  62c26c: e58db010     	str	r11, [sp, #0x10]
  62c270: e5819008     	str	r9, [r1, #0x8]
  62c274: e59d0004     	ldr	r0, [sp, #0x4]
  62c278: e5903000     	ldr	r3, [r0]
  62c27c: e1a0e00f     	mov	lr, pc
  62c280: e593f094     	ldr	pc, [r3, #0x94]
  62c284: e28dd01c     	add	sp, sp, #28
  62c288: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62c28c: e1a03000     	mov	r3, r0
  62c290: e493c004     	ldr	r12, [r3], #4
  62c294: e5902004     	ldr	r2, [r0, #0x4]
  62c298: e28d1018     	add	r1, sp, #24
  62c29c: e5933004     	ldr	r3, [r3, #0x4]
  62c2a0: e521c00c     	str	r12, [r1, #-0xc]!
  62c2a4: e58d2010     	str	r2, [sp, #0x10]
  62c2a8: e5813008     	str	r3, [r1, #0x8]
  62c2ac: eafffff0     	b	0x62c274 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIsEELi2EsEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xbc> @ imm = #-0x40

; FUNCTION 0x0062c2b0 size=28 sha256=e7ecfdacaee34dd6f39b726dc7b5ffcc3adf55e2c7037d1df0d3033e53eb0543
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, 2, short> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
0062c2b0 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIsEELi2EsEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  62c2b0: e1a00001     	mov	r0, r1
  62c2b4: e59dc004     	ldr	r12, [sp, #0x4]
  62c2b8: e1a01002     	mov	r1, r2
  62c2bc: e1a02003     	mov	r2, r3
  62c2c0: e59d3000     	ldr	r3, [sp]
  62c2c4: e58dc000     	str	r12, [sp]
  62c2c8: eaffffba     	b	0x62c1b8 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIsEELi2EsEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE> @ imm = #-0x118

; FUNCTION 0x0062c2cc size=248 sha256=a32c2e75a37be2ce820273280ccd8e62fb921a4dc34d40a2c837017c57c93464
; symbols: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
0062c2cc <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIfEELi2EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE>:
  62c2cc: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62c2d0: e3520001     	cmp	r2, #1
  62c2d4: e24dd01c     	sub	sp, sp, #28
  62c2d8: e3a0a000     	mov	r10, #0
  62c2dc: e1a04002     	mov	r4, r2
  62c2e0: e1a05001     	mov	r5, r1
  62c2e4: e58d3004     	str	r3, [sp, #0x4]
  62c2e8: e58da014     	str	r10, [sp, #0x14]
  62c2ec: 0a00002b     	beq	0x62c3a0 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIfEELi2EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xd4> @ imm = #0xac
  62c2f0: e3520000     	cmp	r2, #0
  62c2f4: 01a0b00a     	moveq	r11, r10
  62c2f8: 01a0900a     	moveq	r9, r10
  62c2fc: 0a00001d     	beq	0x62c378 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIfEELi2EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xac> @ imm = #0x74
  62c300: e1a06000     	mov	r6, r0
  62c304: e3a08000     	mov	r8, #0
  62c308: e1a0b00a     	mov	r11, r10
  62c30c: e1a0900a     	mov	r9, r10
  62c310: e7957008     	ldr	r7, [r5, r8]
  62c314: e5961000     	ldr	r1, [r6]
  62c318: e2888004     	add	r8, r8, #4
  62c31c: e1a00007     	mov	r0, r7
  62c320: ebf38a91     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31d5bc
  62c324: e1a01000     	mov	r1, r0
  62c328: e1a0000a     	mov	r0, r10
  62c32c: ebf38a1c     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31d790
  62c330: e5961004     	ldr	r1, [r6, #0x4]
  62c334: e1a0a000     	mov	r10, r0
  62c338: e1a00007     	mov	r0, r7
  62c33c: ebf38a8a     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31d5d8
  62c340: e1a01000     	mov	r1, r0
  62c344: e1a0000b     	mov	r0, r11
  62c348: ebf38a15     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31d7ac
  62c34c: e5961008     	ldr	r1, [r6, #0x8]
  62c350: e1a0b000     	mov	r11, r0
  62c354: e1a00007     	mov	r0, r7
  62c358: ebf38a83     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31d5f4
  62c35c: e1a01000     	mov	r1, r0
  62c360: e1a00009     	mov	r0, r9
  62c364: ebf38a0e     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31d7c8
  62c368: e2544001     	subs	r4, r4, #1
  62c36c: e1a09000     	mov	r9, r0
  62c370: e286600c     	add	r6, r6, #12
  62c374: 1affffe5     	bne	0x62c310 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIfEELi2EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x44> @ imm = #-0x6c
  62c378: e28d1018     	add	r1, sp, #24
  62c37c: e521a00c     	str	r10, [r1, #-0xc]!
  62c380: e58db010     	str	r11, [sp, #0x10]
  62c384: e5819008     	str	r9, [r1, #0x8]
  62c388: e59d0004     	ldr	r0, [sp, #0x4]
  62c38c: e5903000     	ldr	r3, [r0]
  62c390: e1a0e00f     	mov	lr, pc
  62c394: e593f094     	ldr	pc, [r3, #0x94]
  62c398: e28dd01c     	add	sp, sp, #28
  62c39c: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62c3a0: e1a03000     	mov	r3, r0
  62c3a4: e493c004     	ldr	r12, [r3], #4
  62c3a8: e5902004     	ldr	r2, [r0, #0x4]
  62c3ac: e28d1018     	add	r1, sp, #24
  62c3b0: e5933004     	ldr	r3, [r3, #0x4]
  62c3b4: e521c00c     	str	r12, [r1, #-0xc]!
  62c3b8: e58d2010     	str	r2, [sp, #0x10]
  62c3bc: e5813008     	str	r3, [r1, #0x8]
  62c3c0: eafffff0     	b	0x62c388 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIfEELi2EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xbc> @ imm = #-0x40

; FUNCTION 0x0062c3c4 size=28 sha256=e7ecfdacaee34dd6f39b726dc7b5ffcc3adf55e2c7037d1df0d3033e53eb0543
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
0062c3c4 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIfEELi2EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  62c3c4: e1a00001     	mov	r0, r1
  62c3c8: e59dc004     	ldr	r12, [sp, #0x4]
  62c3cc: e1a01002     	mov	r1, r2
  62c3d0: e1a02003     	mov	r2, r3
  62c3d4: e59d3000     	ldr	r3, [sp]
  62c3d8: e58dc000     	str	r12, [sp]
  62c3dc: eaffffba     	b	0x62c2cc <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIfEELi2EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE> @ imm = #-0x118

; FUNCTION 0x0062c3e0 size=248 sha256=49a1938f53cb98aefe66b9077c754dab22cf7ffe6d4349f9222fd5e6ebc7b150
; symbols: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
0062c3e0 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIfEELi2EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE>:
  62c3e0: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62c3e4: e3520001     	cmp	r2, #1
  62c3e8: e24dd01c     	sub	sp, sp, #28
  62c3ec: e3a0a000     	mov	r10, #0
  62c3f0: e1a04002     	mov	r4, r2
  62c3f4: e1a05001     	mov	r5, r1
  62c3f8: e58d3004     	str	r3, [sp, #0x4]
  62c3fc: e58da014     	str	r10, [sp, #0x14]
  62c400: 0a00002b     	beq	0x62c4b4 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIfEELi2EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xd4> @ imm = #0xac
  62c404: e3520000     	cmp	r2, #0
  62c408: 01a0b00a     	moveq	r11, r10
  62c40c: 01a0900a     	moveq	r9, r10
  62c410: 0a00001d     	beq	0x62c48c <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIfEELi2EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xac> @ imm = #0x74
  62c414: e1a06000     	mov	r6, r0
  62c418: e3a08000     	mov	r8, #0
  62c41c: e1a0b00a     	mov	r11, r10
  62c420: e1a0900a     	mov	r9, r10
  62c424: e7957008     	ldr	r7, [r5, r8]
  62c428: e5961000     	ldr	r1, [r6]
  62c42c: e2888004     	add	r8, r8, #4
  62c430: e1a00007     	mov	r0, r7
  62c434: ebf38a4c     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31d6d0
  62c438: e1a01000     	mov	r1, r0
  62c43c: e1a0000a     	mov	r0, r10
  62c440: ebf389d7     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31d8a4
  62c444: e5961004     	ldr	r1, [r6, #0x4]
  62c448: e1a0a000     	mov	r10, r0
  62c44c: e1a00007     	mov	r0, r7
  62c450: ebf38a45     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31d6ec
  62c454: e1a01000     	mov	r1, r0
  62c458: e1a0000b     	mov	r0, r11
  62c45c: ebf389d0     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31d8c0
  62c460: e5961008     	ldr	r1, [r6, #0x8]
  62c464: e1a0b000     	mov	r11, r0
  62c468: e1a00007     	mov	r0, r7
  62c46c: ebf38a3e     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31d708
  62c470: e1a01000     	mov	r1, r0
  62c474: e1a00009     	mov	r0, r9
  62c478: ebf389c9     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31d8dc
  62c47c: e2544001     	subs	r4, r4, #1
  62c480: e1a09000     	mov	r9, r0
  62c484: e286600c     	add	r6, r6, #12
  62c488: 1affffe5     	bne	0x62c424 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIfEELi2EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x44> @ imm = #-0x6c
  62c48c: e28d1018     	add	r1, sp, #24
  62c490: e521a00c     	str	r10, [r1, #-0xc]!
  62c494: e58db010     	str	r11, [sp, #0x10]
  62c498: e5819008     	str	r9, [r1, #0x8]
  62c49c: e59d0004     	ldr	r0, [sp, #0x4]
  62c4a0: e5903000     	ldr	r3, [r0]
  62c4a4: e1a0e00f     	mov	lr, pc
  62c4a8: e593f094     	ldr	pc, [r3, #0x94]
  62c4ac: e28dd01c     	add	sp, sp, #28
  62c4b0: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62c4b4: e1a03000     	mov	r3, r0
  62c4b8: e493c004     	ldr	r12, [r3], #4
  62c4bc: e5902004     	ldr	r2, [r0, #0x4]
  62c4c0: e28d1018     	add	r1, sp, #24
  62c4c4: e5933004     	ldr	r3, [r3, #0x4]
  62c4c8: e521c00c     	str	r12, [r1, #-0xc]!
  62c4cc: e58d2010     	str	r2, [sp, #0x10]
  62c4d0: e5813008     	str	r3, [r1, #0x8]
  62c4d4: eafffff0     	b	0x62c49c <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIfEELi2EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xbc> @ imm = #-0x40

; FUNCTION 0x0062c4d8 size=28 sha256=e7ecfdacaee34dd6f39b726dc7b5ffcc3adf55e2c7037d1df0d3033e53eb0543
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
0062c4d8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIfEELi2EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  62c4d8: e1a00001     	mov	r0, r1
  62c4dc: e59dc004     	ldr	r12, [sp, #0x4]
  62c4e0: e1a01002     	mov	r1, r2
  62c4e4: e1a02003     	mov	r2, r3
  62c4e8: e59d3000     	ldr	r3, [sp]
  62c4ec: e58dc000     	str	r12, [sp]
  62c4f0: eaffffba     	b	0x62c3e0 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIfEELi2EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE> @ imm = #-0x118

; FUNCTION 0x0062c4f4 size=248 sha256=1892d643aeef6613287a2eb0c9b7f4d46d2bfc2509f1638a7205ade5e8adc2b6
; symbols: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
0062c4f4 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIcEELi1EcEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE>:
  62c4f4: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62c4f8: e3520001     	cmp	r2, #1
  62c4fc: e24dd01c     	sub	sp, sp, #28
  62c500: e3a0a000     	mov	r10, #0
  62c504: e1a04002     	mov	r4, r2
  62c508: e1a05001     	mov	r5, r1
  62c50c: e58d3004     	str	r3, [sp, #0x4]
  62c510: e58da014     	str	r10, [sp, #0x14]
  62c514: 0a00002b     	beq	0x62c5c8 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIcEELi1EcEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xd4> @ imm = #0xac
  62c518: e3520000     	cmp	r2, #0
  62c51c: 01a0b00a     	moveq	r11, r10
  62c520: 01a0900a     	moveq	r9, r10
  62c524: 0a00001d     	beq	0x62c5a0 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIcEELi1EcEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xac> @ imm = #0x74
  62c528: e1a06000     	mov	r6, r0
  62c52c: e3a08000     	mov	r8, #0
  62c530: e1a0b00a     	mov	r11, r10
  62c534: e1a0900a     	mov	r9, r10
  62c538: e7957008     	ldr	r7, [r5, r8]
  62c53c: e5961000     	ldr	r1, [r6]
  62c540: e2888004     	add	r8, r8, #4
  62c544: e1a00007     	mov	r0, r7
  62c548: ebf38a07     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31d7e4
  62c54c: e1a01000     	mov	r1, r0
  62c550: e1a0000a     	mov	r0, r10
  62c554: ebf38992     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31d9b8
  62c558: e5961004     	ldr	r1, [r6, #0x4]
  62c55c: e1a0a000     	mov	r10, r0
  62c560: e1a00007     	mov	r0, r7
  62c564: ebf38a00     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31d800
  62c568: e1a01000     	mov	r1, r0
  62c56c: e1a0000b     	mov	r0, r11
  62c570: ebf3898b     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31d9d4
  62c574: e5961008     	ldr	r1, [r6, #0x8]
  62c578: e1a0b000     	mov	r11, r0
  62c57c: e1a00007     	mov	r0, r7
  62c580: ebf389f9     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31d81c
  62c584: e1a01000     	mov	r1, r0
  62c588: e1a00009     	mov	r0, r9
  62c58c: ebf38984     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31d9f0
  62c590: e2544001     	subs	r4, r4, #1
  62c594: e1a09000     	mov	r9, r0
  62c598: e286600c     	add	r6, r6, #12
  62c59c: 1affffe5     	bne	0x62c538 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIcEELi1EcEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x44> @ imm = #-0x6c
  62c5a0: e28d1018     	add	r1, sp, #24
  62c5a4: e521a00c     	str	r10, [r1, #-0xc]!
  62c5a8: e58db010     	str	r11, [sp, #0x10]
  62c5ac: e5819008     	str	r9, [r1, #0x8]
  62c5b0: e59d0004     	ldr	r0, [sp, #0x4]
  62c5b4: e5903000     	ldr	r3, [r0]
  62c5b8: e1a0e00f     	mov	lr, pc
  62c5bc: e593f094     	ldr	pc, [r3, #0x94]
  62c5c0: e28dd01c     	add	sp, sp, #28
  62c5c4: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62c5c8: e1a03000     	mov	r3, r0
  62c5cc: e493c004     	ldr	r12, [r3], #4
  62c5d0: e5902004     	ldr	r2, [r0, #0x4]
  62c5d4: e28d1018     	add	r1, sp, #24
  62c5d8: e5933004     	ldr	r3, [r3, #0x4]
  62c5dc: e521c00c     	str	r12, [r1, #-0xc]!
  62c5e0: e58d2010     	str	r2, [sp, #0x10]
  62c5e4: e5813008     	str	r3, [r1, #0x8]
  62c5e8: eafffff0     	b	0x62c5b0 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIcEELi1EcEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xbc> @ imm = #-0x40

; FUNCTION 0x0062c5ec size=28 sha256=e7ecfdacaee34dd6f39b726dc7b5ffcc3adf55e2c7037d1df0d3033e53eb0543
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
0062c5ec <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIcEELi1EcEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  62c5ec: e1a00001     	mov	r0, r1
  62c5f0: e59dc004     	ldr	r12, [sp, #0x4]
  62c5f4: e1a01002     	mov	r1, r2
  62c5f8: e1a02003     	mov	r2, r3
  62c5fc: e59d3000     	ldr	r3, [sp]
  62c600: e58dc000     	str	r12, [sp]
  62c604: eaffffba     	b	0x62c4f4 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIcEELi1EcEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE> @ imm = #-0x118

; FUNCTION 0x0062c608 size=248 sha256=6171119f589a00ccf7af993bc2007dc853871c151675046a55d26d876bf8e2b4
; symbols: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
0062c608 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIcEELi1EcEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE>:
  62c608: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62c60c: e3520001     	cmp	r2, #1
  62c610: e24dd01c     	sub	sp, sp, #28
  62c614: e3a0a000     	mov	r10, #0
  62c618: e1a04002     	mov	r4, r2
  62c61c: e1a05001     	mov	r5, r1
  62c620: e58d3004     	str	r3, [sp, #0x4]
  62c624: e58da014     	str	r10, [sp, #0x14]
  62c628: 0a00002b     	beq	0x62c6dc <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIcEELi1EcEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xd4> @ imm = #0xac
  62c62c: e3520000     	cmp	r2, #0
  62c630: 01a0b00a     	moveq	r11, r10
  62c634: 01a0900a     	moveq	r9, r10
  62c638: 0a00001d     	beq	0x62c6b4 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIcEELi1EcEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xac> @ imm = #0x74
  62c63c: e1a06000     	mov	r6, r0
  62c640: e3a08000     	mov	r8, #0
  62c644: e1a0b00a     	mov	r11, r10
  62c648: e1a0900a     	mov	r9, r10
  62c64c: e7957008     	ldr	r7, [r5, r8]
  62c650: e5961000     	ldr	r1, [r6]
  62c654: e2888004     	add	r8, r8, #4
  62c658: e1a00007     	mov	r0, r7
  62c65c: ebf389c2     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31d8f8
  62c660: e1a01000     	mov	r1, r0
  62c664: e1a0000a     	mov	r0, r10
  62c668: ebf3894d     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31dacc
  62c66c: e5961004     	ldr	r1, [r6, #0x4]
  62c670: e1a0a000     	mov	r10, r0
  62c674: e1a00007     	mov	r0, r7
  62c678: ebf389bb     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31d914
  62c67c: e1a01000     	mov	r1, r0
  62c680: e1a0000b     	mov	r0, r11
  62c684: ebf38946     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31dae8
  62c688: e5961008     	ldr	r1, [r6, #0x8]
  62c68c: e1a0b000     	mov	r11, r0
  62c690: e1a00007     	mov	r0, r7
  62c694: ebf389b4     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31d930
  62c698: e1a01000     	mov	r1, r0
  62c69c: e1a00009     	mov	r0, r9
  62c6a0: ebf3893f     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31db04
  62c6a4: e2544001     	subs	r4, r4, #1
  62c6a8: e1a09000     	mov	r9, r0
  62c6ac: e286600c     	add	r6, r6, #12
  62c6b0: 1affffe5     	bne	0x62c64c <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIcEELi1EcEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x44> @ imm = #-0x6c
  62c6b4: e28d1018     	add	r1, sp, #24
  62c6b8: e521a00c     	str	r10, [r1, #-0xc]!
  62c6bc: e58db010     	str	r11, [sp, #0x10]
  62c6c0: e5819008     	str	r9, [r1, #0x8]
  62c6c4: e59d0004     	ldr	r0, [sp, #0x4]
  62c6c8: e5903000     	ldr	r3, [r0]
  62c6cc: e1a0e00f     	mov	lr, pc
  62c6d0: e593f094     	ldr	pc, [r3, #0x94]
  62c6d4: e28dd01c     	add	sp, sp, #28
  62c6d8: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62c6dc: e1a03000     	mov	r3, r0
  62c6e0: e493c004     	ldr	r12, [r3], #4
  62c6e4: e5902004     	ldr	r2, [r0, #0x4]
  62c6e8: e28d1018     	add	r1, sp, #24
  62c6ec: e5933004     	ldr	r3, [r3, #0x4]
  62c6f0: e521c00c     	str	r12, [r1, #-0xc]!
  62c6f4: e58d2010     	str	r2, [sp, #0x10]
  62c6f8: e5813008     	str	r3, [r1, #0x8]
  62c6fc: eafffff0     	b	0x62c6c4 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIcEELi1EcEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xbc> @ imm = #-0x40

; FUNCTION 0x0062c700 size=28 sha256=e7ecfdacaee34dd6f39b726dc7b5ffcc3adf55e2c7037d1df0d3033e53eb0543
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, 1, char> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
0062c700 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIcEELi1EcEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  62c700: e1a00001     	mov	r0, r1
  62c704: e59dc004     	ldr	r12, [sp, #0x4]
  62c708: e1a01002     	mov	r1, r2
  62c70c: e1a02003     	mov	r2, r3
  62c710: e59d3000     	ldr	r3, [sp]
  62c714: e58dc000     	str	r12, [sp]
  62c718: eaffffba     	b	0x62c608 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIcEELi1EcEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE> @ imm = #-0x118

; FUNCTION 0x0062c71c size=248 sha256=0a85f0cebb7366a8ded6603ee902f13c4fcac6a9b2f756805062d9568bbb340f
; symbols: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
0062c71c <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIsEELi1EsEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE>:
  62c71c: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62c720: e3520001     	cmp	r2, #1
  62c724: e24dd01c     	sub	sp, sp, #28
  62c728: e3a0a000     	mov	r10, #0
  62c72c: e1a04002     	mov	r4, r2
  62c730: e1a05001     	mov	r5, r1
  62c734: e58d3004     	str	r3, [sp, #0x4]
  62c738: e58da014     	str	r10, [sp, #0x14]
  62c73c: 0a00002b     	beq	0x62c7f0 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIsEELi1EsEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xd4> @ imm = #0xac
  62c740: e3520000     	cmp	r2, #0
  62c744: 01a0b00a     	moveq	r11, r10
  62c748: 01a0900a     	moveq	r9, r10
  62c74c: 0a00001d     	beq	0x62c7c8 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIsEELi1EsEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xac> @ imm = #0x74
  62c750: e1a06000     	mov	r6, r0
  62c754: e3a08000     	mov	r8, #0
  62c758: e1a0b00a     	mov	r11, r10
  62c75c: e1a0900a     	mov	r9, r10
  62c760: e7957008     	ldr	r7, [r5, r8]
  62c764: e5961000     	ldr	r1, [r6]
  62c768: e2888004     	add	r8, r8, #4
  62c76c: e1a00007     	mov	r0, r7
  62c770: ebf3897d     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31da0c
  62c774: e1a01000     	mov	r1, r0
  62c778: e1a0000a     	mov	r0, r10
  62c77c: ebf38908     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31dbe0
  62c780: e5961004     	ldr	r1, [r6, #0x4]
  62c784: e1a0a000     	mov	r10, r0
  62c788: e1a00007     	mov	r0, r7
  62c78c: ebf38976     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31da28
  62c790: e1a01000     	mov	r1, r0
  62c794: e1a0000b     	mov	r0, r11
  62c798: ebf38901     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31dbfc
  62c79c: e5961008     	ldr	r1, [r6, #0x8]
  62c7a0: e1a0b000     	mov	r11, r0
  62c7a4: e1a00007     	mov	r0, r7
  62c7a8: ebf3896f     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31da44
  62c7ac: e1a01000     	mov	r1, r0
  62c7b0: e1a00009     	mov	r0, r9
  62c7b4: ebf388fa     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31dc18
  62c7b8: e2544001     	subs	r4, r4, #1
  62c7bc: e1a09000     	mov	r9, r0
  62c7c0: e286600c     	add	r6, r6, #12
  62c7c4: 1affffe5     	bne	0x62c760 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIsEELi1EsEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x44> @ imm = #-0x6c
  62c7c8: e28d1018     	add	r1, sp, #24
  62c7cc: e521a00c     	str	r10, [r1, #-0xc]!
  62c7d0: e58db010     	str	r11, [sp, #0x10]
  62c7d4: e5819008     	str	r9, [r1, #0x8]
  62c7d8: e59d0004     	ldr	r0, [sp, #0x4]
  62c7dc: e5903000     	ldr	r3, [r0]
  62c7e0: e1a0e00f     	mov	lr, pc
  62c7e4: e593f094     	ldr	pc, [r3, #0x94]
  62c7e8: e28dd01c     	add	sp, sp, #28
  62c7ec: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62c7f0: e1a03000     	mov	r3, r0
  62c7f4: e493c004     	ldr	r12, [r3], #4
  62c7f8: e5902004     	ldr	r2, [r0, #0x4]
  62c7fc: e28d1018     	add	r1, sp, #24
  62c800: e5933004     	ldr	r3, [r3, #0x4]
  62c804: e521c00c     	str	r12, [r1, #-0xc]!
  62c808: e58d2010     	str	r2, [sp, #0x10]
  62c80c: e5813008     	str	r3, [r1, #0x8]
  62c810: eafffff0     	b	0x62c7d8 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIsEELi1EsEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xbc> @ imm = #-0x40

; FUNCTION 0x0062c814 size=28 sha256=e7ecfdacaee34dd6f39b726dc7b5ffcc3adf55e2c7037d1df0d3033e53eb0543
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
0062c814 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIsEELi1EsEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  62c814: e1a00001     	mov	r0, r1
  62c818: e59dc004     	ldr	r12, [sp, #0x4]
  62c81c: e1a01002     	mov	r1, r2
  62c820: e1a02003     	mov	r2, r3
  62c824: e59d3000     	ldr	r3, [sp]
  62c828: e58dc000     	str	r12, [sp]
  62c82c: eaffffba     	b	0x62c71c <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIsEELi1EsEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE> @ imm = #-0x118

; FUNCTION 0x0062c830 size=248 sha256=d67f4e4d04f29ef94b1e6f4bd8f7a87201dcdd98dcfbfa91b1f5cfb719eba1f5
; symbols: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
0062c830 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIsEELi1EsEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE>:
  62c830: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62c834: e3520001     	cmp	r2, #1
  62c838: e24dd01c     	sub	sp, sp, #28
  62c83c: e3a0a000     	mov	r10, #0
  62c840: e1a04002     	mov	r4, r2
  62c844: e1a05001     	mov	r5, r1
  62c848: e58d3004     	str	r3, [sp, #0x4]
  62c84c: e58da014     	str	r10, [sp, #0x14]
  62c850: 0a00002b     	beq	0x62c904 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIsEELi1EsEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xd4> @ imm = #0xac
  62c854: e3520000     	cmp	r2, #0
  62c858: 01a0b00a     	moveq	r11, r10
  62c85c: 01a0900a     	moveq	r9, r10
  62c860: 0a00001d     	beq	0x62c8dc <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIsEELi1EsEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xac> @ imm = #0x74
  62c864: e1a06000     	mov	r6, r0
  62c868: e3a08000     	mov	r8, #0
  62c86c: e1a0b00a     	mov	r11, r10
  62c870: e1a0900a     	mov	r9, r10
  62c874: e7957008     	ldr	r7, [r5, r8]
  62c878: e5961000     	ldr	r1, [r6]
  62c87c: e2888004     	add	r8, r8, #4
  62c880: e1a00007     	mov	r0, r7
  62c884: ebf38938     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31db20
  62c888: e1a01000     	mov	r1, r0
  62c88c: e1a0000a     	mov	r0, r10
  62c890: ebf388c3     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31dcf4
  62c894: e5961004     	ldr	r1, [r6, #0x4]
  62c898: e1a0a000     	mov	r10, r0
  62c89c: e1a00007     	mov	r0, r7
  62c8a0: ebf38931     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31db3c
  62c8a4: e1a01000     	mov	r1, r0
  62c8a8: e1a0000b     	mov	r0, r11
  62c8ac: ebf388bc     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31dd10
  62c8b0: e5961008     	ldr	r1, [r6, #0x8]
  62c8b4: e1a0b000     	mov	r11, r0
  62c8b8: e1a00007     	mov	r0, r7
  62c8bc: ebf3892a     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31db58
  62c8c0: e1a01000     	mov	r1, r0
  62c8c4: e1a00009     	mov	r0, r9
  62c8c8: ebf388b5     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31dd2c
  62c8cc: e2544001     	subs	r4, r4, #1
  62c8d0: e1a09000     	mov	r9, r0
  62c8d4: e286600c     	add	r6, r6, #12
  62c8d8: 1affffe5     	bne	0x62c874 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIsEELi1EsEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x44> @ imm = #-0x6c
  62c8dc: e28d1018     	add	r1, sp, #24
  62c8e0: e521a00c     	str	r10, [r1, #-0xc]!
  62c8e4: e58db010     	str	r11, [sp, #0x10]
  62c8e8: e5819008     	str	r9, [r1, #0x8]
  62c8ec: e59d0004     	ldr	r0, [sp, #0x4]
  62c8f0: e5903000     	ldr	r3, [r0]
  62c8f4: e1a0e00f     	mov	lr, pc
  62c8f8: e593f094     	ldr	pc, [r3, #0x94]
  62c8fc: e28dd01c     	add	sp, sp, #28
  62c900: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62c904: e1a03000     	mov	r3, r0
  62c908: e493c004     	ldr	r12, [r3], #4
  62c90c: e5902004     	ldr	r2, [r0, #0x4]
  62c910: e28d1018     	add	r1, sp, #24
  62c914: e5933004     	ldr	r3, [r3, #0x4]
  62c918: e521c00c     	str	r12, [r1, #-0xc]!
  62c91c: e58d2010     	str	r2, [sp, #0x10]
  62c920: e5813008     	str	r3, [r1, #0x8]
  62c924: eafffff0     	b	0x62c8ec <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIsEELi1EsEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xbc> @ imm = #-0x40

; FUNCTION 0x0062c928 size=28 sha256=e7ecfdacaee34dd6f39b726dc7b5ffcc3adf55e2c7037d1df0d3033e53eb0543
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, 1, short> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
0062c928 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIsEELi1EsEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  62c928: e1a00001     	mov	r0, r1
  62c92c: e59dc004     	ldr	r12, [sp, #0x4]
  62c930: e1a01002     	mov	r1, r2
  62c934: e1a02003     	mov	r2, r3
  62c938: e59d3000     	ldr	r3, [sp]
  62c93c: e58dc000     	str	r12, [sp]
  62c940: eaffffba     	b	0x62c830 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIsEELi1EsEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE> @ imm = #-0x118

; FUNCTION 0x0062c944 size=248 sha256=00b397d91b74f46041e72ae7b4fb3d39221da8eaa54c226e4583d19a1246da26
; symbols: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
0062c944 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIfEELi1EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE>:
  62c944: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62c948: e3520001     	cmp	r2, #1
  62c94c: e24dd01c     	sub	sp, sp, #28
  62c950: e3a0a000     	mov	r10, #0
  62c954: e1a04002     	mov	r4, r2
  62c958: e1a05001     	mov	r5, r1
  62c95c: e58d3004     	str	r3, [sp, #0x4]
  62c960: e58da014     	str	r10, [sp, #0x14]
  62c964: 0a00002b     	beq	0x62ca18 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIfEELi1EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xd4> @ imm = #0xac
  62c968: e3520000     	cmp	r2, #0
  62c96c: 01a0b00a     	moveq	r11, r10
  62c970: 01a0900a     	moveq	r9, r10
  62c974: 0a00001d     	beq	0x62c9f0 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIfEELi1EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xac> @ imm = #0x74
  62c978: e1a06000     	mov	r6, r0
  62c97c: e3a08000     	mov	r8, #0
  62c980: e1a0b00a     	mov	r11, r10
  62c984: e1a0900a     	mov	r9, r10
  62c988: e7957008     	ldr	r7, [r5, r8]
  62c98c: e5961000     	ldr	r1, [r6]
  62c990: e2888004     	add	r8, r8, #4
  62c994: e1a00007     	mov	r0, r7
  62c998: ebf388f3     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31dc34
  62c99c: e1a01000     	mov	r1, r0
  62c9a0: e1a0000a     	mov	r0, r10
  62c9a4: ebf3887e     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31de08
  62c9a8: e5961004     	ldr	r1, [r6, #0x4]
  62c9ac: e1a0a000     	mov	r10, r0
  62c9b0: e1a00007     	mov	r0, r7
  62c9b4: ebf388ec     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31dc50
  62c9b8: e1a01000     	mov	r1, r0
  62c9bc: e1a0000b     	mov	r0, r11
  62c9c0: ebf38877     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31de24
  62c9c4: e5961008     	ldr	r1, [r6, #0x8]
  62c9c8: e1a0b000     	mov	r11, r0
  62c9cc: e1a00007     	mov	r0, r7
  62c9d0: ebf388e5     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31dc6c
  62c9d4: e1a01000     	mov	r1, r0
  62c9d8: e1a00009     	mov	r0, r9
  62c9dc: ebf38870     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31de40
  62c9e0: e2544001     	subs	r4, r4, #1
  62c9e4: e1a09000     	mov	r9, r0
  62c9e8: e286600c     	add	r6, r6, #12
  62c9ec: 1affffe5     	bne	0x62c988 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIfEELi1EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x44> @ imm = #-0x6c
  62c9f0: e28d1018     	add	r1, sp, #24
  62c9f4: e521a00c     	str	r10, [r1, #-0xc]!
  62c9f8: e58db010     	str	r11, [sp, #0x10]
  62c9fc: e5819008     	str	r9, [r1, #0x8]
  62ca00: e59d0004     	ldr	r0, [sp, #0x4]
  62ca04: e5903000     	ldr	r3, [r0]
  62ca08: e1a0e00f     	mov	lr, pc
  62ca0c: e593f094     	ldr	pc, [r3, #0x94]
  62ca10: e28dd01c     	add	sp, sp, #28
  62ca14: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62ca18: e1a03000     	mov	r3, r0
  62ca1c: e493c004     	ldr	r12, [r3], #4
  62ca20: e5902004     	ldr	r2, [r0, #0x4]
  62ca24: e28d1018     	add	r1, sp, #24
  62ca28: e5933004     	ldr	r3, [r3, #0x4]
  62ca2c: e521c00c     	str	r12, [r1, #-0xc]!
  62ca30: e58d2010     	str	r2, [sp, #0x10]
  62ca34: e5813008     	str	r3, [r1, #0x8]
  62ca38: eafffff0     	b	0x62ca00 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIfEELi1EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xbc> @ imm = #-0x40

; FUNCTION 0x0062ca3c size=28 sha256=e7ecfdacaee34dd6f39b726dc7b5ffcc3adf55e2c7037d1df0d3033e53eb0543
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
0062ca3c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIfEELi1EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  62ca3c: e1a00001     	mov	r0, r1
  62ca40: e59dc004     	ldr	r12, [sp, #0x4]
  62ca44: e1a01002     	mov	r1, r2
  62ca48: e1a02003     	mov	r2, r3
  62ca4c: e59d3000     	ldr	r3, [sp]
  62ca50: e58dc000     	str	r12, [sp]
  62ca54: eaffffba     	b	0x62c944 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIfEELi1EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE> @ imm = #-0x118

; FUNCTION 0x0062ca58 size=248 sha256=f8f0af7f159ce25e0195b51cb162cb2e8338e2db478a16047375281c529d701a
; symbols: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
0062ca58 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIfEELi1EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE>:
  62ca58: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62ca5c: e3520001     	cmp	r2, #1
  62ca60: e24dd01c     	sub	sp, sp, #28
  62ca64: e3a0a000     	mov	r10, #0
  62ca68: e1a04002     	mov	r4, r2
  62ca6c: e1a05001     	mov	r5, r1
  62ca70: e58d3004     	str	r3, [sp, #0x4]
  62ca74: e58da014     	str	r10, [sp, #0x14]
  62ca78: 0a00002b     	beq	0x62cb2c <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIfEELi1EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xd4> @ imm = #0xac
  62ca7c: e3520000     	cmp	r2, #0
  62ca80: 01a0b00a     	moveq	r11, r10
  62ca84: 01a0900a     	moveq	r9, r10
  62ca88: 0a00001d     	beq	0x62cb04 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIfEELi1EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xac> @ imm = #0x74
  62ca8c: e1a06000     	mov	r6, r0
  62ca90: e3a08000     	mov	r8, #0
  62ca94: e1a0b00a     	mov	r11, r10
  62ca98: e1a0900a     	mov	r9, r10
  62ca9c: e7957008     	ldr	r7, [r5, r8]
  62caa0: e5961000     	ldr	r1, [r6]
  62caa4: e2888004     	add	r8, r8, #4
  62caa8: e1a00007     	mov	r0, r7
  62caac: ebf388ae     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31dd48
  62cab0: e1a01000     	mov	r1, r0
  62cab4: e1a0000a     	mov	r0, r10
  62cab8: ebf38839     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31df1c
  62cabc: e5961004     	ldr	r1, [r6, #0x4]
  62cac0: e1a0a000     	mov	r10, r0
  62cac4: e1a00007     	mov	r0, r7
  62cac8: ebf388a7     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31dd64
  62cacc: e1a01000     	mov	r1, r0
  62cad0: e1a0000b     	mov	r0, r11
  62cad4: ebf38832     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31df38
  62cad8: e5961008     	ldr	r1, [r6, #0x8]
  62cadc: e1a0b000     	mov	r11, r0
  62cae0: e1a00007     	mov	r0, r7
  62cae4: ebf388a0     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31dd80
  62cae8: e1a01000     	mov	r1, r0
  62caec: e1a00009     	mov	r0, r9
  62caf0: ebf3882b     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31df54
  62caf4: e2544001     	subs	r4, r4, #1
  62caf8: e1a09000     	mov	r9, r0
  62cafc: e286600c     	add	r6, r6, #12
  62cb00: 1affffe5     	bne	0x62ca9c <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIfEELi1EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x44> @ imm = #-0x6c
  62cb04: e28d1018     	add	r1, sp, #24
  62cb08: e521a00c     	str	r10, [r1, #-0xc]!
  62cb0c: e58db010     	str	r11, [sp, #0x10]
  62cb10: e5819008     	str	r9, [r1, #0x8]
  62cb14: e59d0004     	ldr	r0, [sp, #0x4]
  62cb18: e5903000     	ldr	r3, [r0]
  62cb1c: e1a0e00f     	mov	lr, pc
  62cb20: e593f094     	ldr	pc, [r3, #0x94]
  62cb24: e28dd01c     	add	sp, sp, #28
  62cb28: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62cb2c: e1a03000     	mov	r3, r0
  62cb30: e493c004     	ldr	r12, [r3], #4
  62cb34: e5902004     	ldr	r2, [r0, #0x4]
  62cb38: e28d1018     	add	r1, sp, #24
  62cb3c: e5933004     	ldr	r3, [r3, #0x4]
  62cb40: e521c00c     	str	r12, [r1, #-0xc]!
  62cb44: e58d2010     	str	r2, [sp, #0x10]
  62cb48: e5813008     	str	r3, [r1, #0x8]
  62cb4c: eafffff0     	b	0x62cb14 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIfEELi1EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xbc> @ imm = #-0x40

; FUNCTION 0x0062cb50 size=28 sha256=e7ecfdacaee34dd6f39b726dc7b5ffcc3adf55e2c7037d1df0d3033e53eb0543
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, 1, float> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
0062cb50 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIfEELi1EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  62cb50: e1a00001     	mov	r0, r1
  62cb54: e59dc004     	ldr	r12, [sp, #0x4]
  62cb58: e1a01002     	mov	r1, r2
  62cb5c: e1a02003     	mov	r2, r3
  62cb60: e59d3000     	ldr	r3, [sp]
  62cb64: e58dc000     	str	r12, [sp]
  62cb68: eaffffba     	b	0x62ca58 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleYExIfEELi1EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE> @ imm = #-0x118

; FUNCTION 0x0062cb6c size=248 sha256=3b101c3c54029b781fcae0e8b1c940b4067fc8b0d97eb40cbf2373050c26e878
; symbols: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
0062cb6c <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIcEELi0EcEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE>:
  62cb6c: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62cb70: e3520001     	cmp	r2, #1
  62cb74: e24dd01c     	sub	sp, sp, #28
  62cb78: e3a0a000     	mov	r10, #0
  62cb7c: e1a04002     	mov	r4, r2
  62cb80: e1a05001     	mov	r5, r1
  62cb84: e58d3004     	str	r3, [sp, #0x4]
  62cb88: e58da014     	str	r10, [sp, #0x14]
  62cb8c: 0a00002b     	beq	0x62cc40 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIcEELi0EcEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xd4> @ imm = #0xac
  62cb90: e3520000     	cmp	r2, #0
  62cb94: 01a0b00a     	moveq	r11, r10
  62cb98: 01a0900a     	moveq	r9, r10
  62cb9c: 0a00001d     	beq	0x62cc18 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIcEELi0EcEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xac> @ imm = #0x74
  62cba0: e1a06000     	mov	r6, r0
  62cba4: e3a08000     	mov	r8, #0
  62cba8: e1a0b00a     	mov	r11, r10
  62cbac: e1a0900a     	mov	r9, r10
  62cbb0: e7957008     	ldr	r7, [r5, r8]
  62cbb4: e5961000     	ldr	r1, [r6]
  62cbb8: e2888004     	add	r8, r8, #4
  62cbbc: e1a00007     	mov	r0, r7
  62cbc0: ebf38869     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31de5c
  62cbc4: e1a01000     	mov	r1, r0
  62cbc8: e1a0000a     	mov	r0, r10
  62cbcc: ebf387f4     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31e030
  62cbd0: e5961004     	ldr	r1, [r6, #0x4]
  62cbd4: e1a0a000     	mov	r10, r0
  62cbd8: e1a00007     	mov	r0, r7
  62cbdc: ebf38862     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31de78
  62cbe0: e1a01000     	mov	r1, r0
  62cbe4: e1a0000b     	mov	r0, r11
  62cbe8: ebf387ed     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31e04c
  62cbec: e5961008     	ldr	r1, [r6, #0x8]
  62cbf0: e1a0b000     	mov	r11, r0
  62cbf4: e1a00007     	mov	r0, r7
  62cbf8: ebf3885b     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31de94
  62cbfc: e1a01000     	mov	r1, r0
  62cc00: e1a00009     	mov	r0, r9
  62cc04: ebf387e6     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31e068
  62cc08: e2544001     	subs	r4, r4, #1
  62cc0c: e1a09000     	mov	r9, r0
  62cc10: e286600c     	add	r6, r6, #12
  62cc14: 1affffe5     	bne	0x62cbb0 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIcEELi0EcEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x44> @ imm = #-0x6c
  62cc18: e28d1018     	add	r1, sp, #24
  62cc1c: e521a00c     	str	r10, [r1, #-0xc]!
  62cc20: e58db010     	str	r11, [sp, #0x10]
  62cc24: e5819008     	str	r9, [r1, #0x8]
  62cc28: e59d0004     	ldr	r0, [sp, #0x4]
  62cc2c: e5903000     	ldr	r3, [r0]
  62cc30: e1a0e00f     	mov	lr, pc
  62cc34: e593f094     	ldr	pc, [r3, #0x94]
  62cc38: e28dd01c     	add	sp, sp, #28
  62cc3c: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62cc40: e1a03000     	mov	r3, r0
  62cc44: e493c004     	ldr	r12, [r3], #4
  62cc48: e5902004     	ldr	r2, [r0, #0x4]
  62cc4c: e28d1018     	add	r1, sp, #24
  62cc50: e5933004     	ldr	r3, [r3, #0x4]
  62cc54: e521c00c     	str	r12, [r1, #-0xc]!
  62cc58: e58d2010     	str	r2, [sp, #0x10]
  62cc5c: e5813008     	str	r3, [r1, #0x8]
  62cc60: eafffff0     	b	0x62cc28 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIcEELi0EcEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xbc> @ imm = #-0x40

; FUNCTION 0x0062cc64 size=28 sha256=e7ecfdacaee34dd6f39b726dc7b5ffcc3adf55e2c7037d1df0d3033e53eb0543
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
0062cc64 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIcEELi0EcEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  62cc64: e1a00001     	mov	r0, r1
  62cc68: e59dc004     	ldr	r12, [sp, #0x4]
  62cc6c: e1a01002     	mov	r1, r2
  62cc70: e1a02003     	mov	r2, r3
  62cc74: e59d3000     	ldr	r3, [sp]
  62cc78: e58dc000     	str	r12, [sp]
  62cc7c: eaffffba     	b	0x62cb6c <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIcEELi0EcEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE> @ imm = #-0x118

; FUNCTION 0x0062cc80 size=248 sha256=cddb6f942fb5618f7dc96a4d39ebbe2c705f5d9779a9f3b7b042bdd4abe60b6c
; symbols: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
0062cc80 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIcEELi0EcEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE>:
  62cc80: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62cc84: e3520001     	cmp	r2, #1
  62cc88: e24dd01c     	sub	sp, sp, #28
  62cc8c: e3a0a000     	mov	r10, #0
  62cc90: e1a04002     	mov	r4, r2
  62cc94: e1a05001     	mov	r5, r1
  62cc98: e58d3004     	str	r3, [sp, #0x4]
  62cc9c: e58da014     	str	r10, [sp, #0x14]
  62cca0: 0a00002b     	beq	0x62cd54 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIcEELi0EcEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xd4> @ imm = #0xac
  62cca4: e3520000     	cmp	r2, #0
  62cca8: 01a0b00a     	moveq	r11, r10
  62ccac: 01a0900a     	moveq	r9, r10
  62ccb0: 0a00001d     	beq	0x62cd2c <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIcEELi0EcEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xac> @ imm = #0x74
  62ccb4: e1a06000     	mov	r6, r0
  62ccb8: e3a08000     	mov	r8, #0
  62ccbc: e1a0b00a     	mov	r11, r10
  62ccc0: e1a0900a     	mov	r9, r10
  62ccc4: e7957008     	ldr	r7, [r5, r8]
  62ccc8: e5961000     	ldr	r1, [r6]
  62cccc: e2888004     	add	r8, r8, #4
  62ccd0: e1a00007     	mov	r0, r7
  62ccd4: ebf38824     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31df70
  62ccd8: e1a01000     	mov	r1, r0
  62ccdc: e1a0000a     	mov	r0, r10
  62cce0: ebf387af     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31e144
  62cce4: e5961004     	ldr	r1, [r6, #0x4]
  62cce8: e1a0a000     	mov	r10, r0
  62ccec: e1a00007     	mov	r0, r7
  62ccf0: ebf3881d     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31df8c
  62ccf4: e1a01000     	mov	r1, r0
  62ccf8: e1a0000b     	mov	r0, r11
  62ccfc: ebf387a8     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31e160
  62cd00: e5961008     	ldr	r1, [r6, #0x8]
  62cd04: e1a0b000     	mov	r11, r0
  62cd08: e1a00007     	mov	r0, r7
  62cd0c: ebf38816     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31dfa8
  62cd10: e1a01000     	mov	r1, r0
  62cd14: e1a00009     	mov	r0, r9
  62cd18: ebf387a1     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31e17c
  62cd1c: e2544001     	subs	r4, r4, #1
  62cd20: e1a09000     	mov	r9, r0
  62cd24: e286600c     	add	r6, r6, #12
  62cd28: 1affffe5     	bne	0x62ccc4 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIcEELi0EcEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x44> @ imm = #-0x6c
  62cd2c: e28d1018     	add	r1, sp, #24
  62cd30: e521a00c     	str	r10, [r1, #-0xc]!
  62cd34: e58db010     	str	r11, [sp, #0x10]
  62cd38: e5819008     	str	r9, [r1, #0x8]
  62cd3c: e59d0004     	ldr	r0, [sp, #0x4]
  62cd40: e5903000     	ldr	r3, [r0]
  62cd44: e1a0e00f     	mov	lr, pc
  62cd48: e593f094     	ldr	pc, [r3, #0x94]
  62cd4c: e28dd01c     	add	sp, sp, #28
  62cd50: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62cd54: e1a03000     	mov	r3, r0
  62cd58: e493c004     	ldr	r12, [r3], #4
  62cd5c: e5902004     	ldr	r2, [r0, #0x4]
  62cd60: e28d1018     	add	r1, sp, #24
  62cd64: e5933004     	ldr	r3, [r3, #0x4]
  62cd68: e521c00c     	str	r12, [r1, #-0xc]!
  62cd6c: e58d2010     	str	r2, [sp, #0x10]
  62cd70: e5813008     	str	r3, [r1, #0x8]
  62cd74: eafffff0     	b	0x62cd3c <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIcEELi0EcEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xbc> @ imm = #-0x40

; FUNCTION 0x0062cd78 size=28 sha256=e7ecfdacaee34dd6f39b726dc7b5ffcc3adf55e2c7037d1df0d3033e53eb0543
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
0062cd78 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIcEELi0EcEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  62cd78: e1a00001     	mov	r0, r1
  62cd7c: e59dc004     	ldr	r12, [sp, #0x4]
  62cd80: e1a01002     	mov	r1, r2
  62cd84: e1a02003     	mov	r2, r3
  62cd88: e59d3000     	ldr	r3, [sp]
  62cd8c: e58dc000     	str	r12, [sp]
  62cd90: eaffffba     	b	0x62cc80 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIcEELi0EcEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE> @ imm = #-0x118

; FUNCTION 0x0062cd94 size=248 sha256=d78827373bc0154ccce2b0ad9bf29c44ebf4d07e3bfbcf76da5337b76be74ed0
; symbols: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
0062cd94 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIsEELi0EsEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE>:
  62cd94: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62cd98: e3520001     	cmp	r2, #1
  62cd9c: e24dd01c     	sub	sp, sp, #28
  62cda0: e3a0a000     	mov	r10, #0
  62cda4: e1a04002     	mov	r4, r2
  62cda8: e1a05001     	mov	r5, r1
  62cdac: e58d3004     	str	r3, [sp, #0x4]
  62cdb0: e58da014     	str	r10, [sp, #0x14]
  62cdb4: 0a00002b     	beq	0x62ce68 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIsEELi0EsEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xd4> @ imm = #0xac
  62cdb8: e3520000     	cmp	r2, #0
  62cdbc: 01a0b00a     	moveq	r11, r10
  62cdc0: 01a0900a     	moveq	r9, r10
  62cdc4: 0a00001d     	beq	0x62ce40 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIsEELi0EsEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xac> @ imm = #0x74
  62cdc8: e1a06000     	mov	r6, r0
  62cdcc: e3a08000     	mov	r8, #0
  62cdd0: e1a0b00a     	mov	r11, r10
  62cdd4: e1a0900a     	mov	r9, r10
  62cdd8: e7957008     	ldr	r7, [r5, r8]
  62cddc: e5961000     	ldr	r1, [r6]
  62cde0: e2888004     	add	r8, r8, #4
  62cde4: e1a00007     	mov	r0, r7
  62cde8: ebf387df     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31e084
  62cdec: e1a01000     	mov	r1, r0
  62cdf0: e1a0000a     	mov	r0, r10
  62cdf4: ebf3876a     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31e258
  62cdf8: e5961004     	ldr	r1, [r6, #0x4]
  62cdfc: e1a0a000     	mov	r10, r0
  62ce00: e1a00007     	mov	r0, r7
  62ce04: ebf387d8     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31e0a0
  62ce08: e1a01000     	mov	r1, r0
  62ce0c: e1a0000b     	mov	r0, r11
  62ce10: ebf38763     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31e274
  62ce14: e5961008     	ldr	r1, [r6, #0x8]
  62ce18: e1a0b000     	mov	r11, r0
  62ce1c: e1a00007     	mov	r0, r7
  62ce20: ebf387d1     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31e0bc
  62ce24: e1a01000     	mov	r1, r0
  62ce28: e1a00009     	mov	r0, r9
  62ce2c: ebf3875c     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31e290
  62ce30: e2544001     	subs	r4, r4, #1
  62ce34: e1a09000     	mov	r9, r0
  62ce38: e286600c     	add	r6, r6, #12
  62ce3c: 1affffe5     	bne	0x62cdd8 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIsEELi0EsEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x44> @ imm = #-0x6c
  62ce40: e28d1018     	add	r1, sp, #24
  62ce44: e521a00c     	str	r10, [r1, #-0xc]!
  62ce48: e58db010     	str	r11, [sp, #0x10]
  62ce4c: e5819008     	str	r9, [r1, #0x8]
  62ce50: e59d0004     	ldr	r0, [sp, #0x4]
  62ce54: e5903000     	ldr	r3, [r0]
  62ce58: e1a0e00f     	mov	lr, pc
  62ce5c: e593f094     	ldr	pc, [r3, #0x94]
  62ce60: e28dd01c     	add	sp, sp, #28
  62ce64: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62ce68: e1a03000     	mov	r3, r0
  62ce6c: e493c004     	ldr	r12, [r3], #4
  62ce70: e5902004     	ldr	r2, [r0, #0x4]
  62ce74: e28d1018     	add	r1, sp, #24
  62ce78: e5933004     	ldr	r3, [r3, #0x4]
  62ce7c: e521c00c     	str	r12, [r1, #-0xc]!
  62ce80: e58d2010     	str	r2, [sp, #0x10]
  62ce84: e5813008     	str	r3, [r1, #0x8]
  62ce88: eafffff0     	b	0x62ce50 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIsEELi0EsEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xbc> @ imm = #-0x40

; FUNCTION 0x0062ce8c size=28 sha256=e7ecfdacaee34dd6f39b726dc7b5ffcc3adf55e2c7037d1df0d3033e53eb0543
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
0062ce8c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIsEELi0EsEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  62ce8c: e1a00001     	mov	r0, r1
  62ce90: e59dc004     	ldr	r12, [sp, #0x4]
  62ce94: e1a01002     	mov	r1, r2
  62ce98: e1a02003     	mov	r2, r3
  62ce9c: e59d3000     	ldr	r3, [sp]
  62cea0: e58dc000     	str	r12, [sp]
  62cea4: eaffffba     	b	0x62cd94 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIsEELi0EsEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE> @ imm = #-0x118

; FUNCTION 0x0062cea8 size=248 sha256=9a2bb97b10081878201bb0c93e4164f0497f9738d16b3b19a415eee96d530444
; symbols: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
0062cea8 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIsEELi0EsEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE>:
  62cea8: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62ceac: e3520001     	cmp	r2, #1
  62ceb0: e24dd01c     	sub	sp, sp, #28
  62ceb4: e3a0a000     	mov	r10, #0
  62ceb8: e1a04002     	mov	r4, r2
  62cebc: e1a05001     	mov	r5, r1
  62cec0: e58d3004     	str	r3, [sp, #0x4]
  62cec4: e58da014     	str	r10, [sp, #0x14]
  62cec8: 0a00002b     	beq	0x62cf7c <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIsEELi0EsEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xd4> @ imm = #0xac
  62cecc: e3520000     	cmp	r2, #0
  62ced0: 01a0b00a     	moveq	r11, r10
  62ced4: 01a0900a     	moveq	r9, r10
  62ced8: 0a00001d     	beq	0x62cf54 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIsEELi0EsEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xac> @ imm = #0x74
  62cedc: e1a06000     	mov	r6, r0
  62cee0: e3a08000     	mov	r8, #0
  62cee4: e1a0b00a     	mov	r11, r10
  62cee8: e1a0900a     	mov	r9, r10
  62ceec: e7957008     	ldr	r7, [r5, r8]
  62cef0: e5961000     	ldr	r1, [r6]
  62cef4: e2888004     	add	r8, r8, #4
  62cef8: e1a00007     	mov	r0, r7
  62cefc: ebf3879a     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31e198
  62cf00: e1a01000     	mov	r1, r0
  62cf04: e1a0000a     	mov	r0, r10
  62cf08: ebf38725     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31e36c
  62cf0c: e5961004     	ldr	r1, [r6, #0x4]
  62cf10: e1a0a000     	mov	r10, r0
  62cf14: e1a00007     	mov	r0, r7
  62cf18: ebf38793     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31e1b4
  62cf1c: e1a01000     	mov	r1, r0
  62cf20: e1a0000b     	mov	r0, r11
  62cf24: ebf3871e     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31e388
  62cf28: e5961008     	ldr	r1, [r6, #0x8]
  62cf2c: e1a0b000     	mov	r11, r0
  62cf30: e1a00007     	mov	r0, r7
  62cf34: ebf3878c     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31e1d0
  62cf38: e1a01000     	mov	r1, r0
  62cf3c: e1a00009     	mov	r0, r9
  62cf40: ebf38717     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31e3a4
  62cf44: e2544001     	subs	r4, r4, #1
  62cf48: e1a09000     	mov	r9, r0
  62cf4c: e286600c     	add	r6, r6, #12
  62cf50: 1affffe5     	bne	0x62ceec <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIsEELi0EsEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x44> @ imm = #-0x6c
  62cf54: e28d1018     	add	r1, sp, #24
  62cf58: e521a00c     	str	r10, [r1, #-0xc]!
  62cf5c: e58db010     	str	r11, [sp, #0x10]
  62cf60: e5819008     	str	r9, [r1, #0x8]
  62cf64: e59d0004     	ldr	r0, [sp, #0x4]
  62cf68: e5903000     	ldr	r3, [r0]
  62cf6c: e1a0e00f     	mov	lr, pc
  62cf70: e593f094     	ldr	pc, [r3, #0x94]
  62cf74: e28dd01c     	add	sp, sp, #28
  62cf78: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62cf7c: e1a03000     	mov	r3, r0
  62cf80: e493c004     	ldr	r12, [r3], #4
  62cf84: e5902004     	ldr	r2, [r0, #0x4]
  62cf88: e28d1018     	add	r1, sp, #24
  62cf8c: e5933004     	ldr	r3, [r3, #0x4]
  62cf90: e521c00c     	str	r12, [r1, #-0xc]!
  62cf94: e58d2010     	str	r2, [sp, #0x10]
  62cf98: e5813008     	str	r3, [r1, #0x8]
  62cf9c: eafffff0     	b	0x62cf64 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIsEELi0EsEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xbc> @ imm = #-0x40

; FUNCTION 0x0062cfa0 size=28 sha256=e7ecfdacaee34dd6f39b726dc7b5ffcc3adf55e2c7037d1df0d3033e53eb0543
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, 0, short> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
0062cfa0 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIsEELi0EsEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  62cfa0: e1a00001     	mov	r0, r1
  62cfa4: e59dc004     	ldr	r12, [sp, #0x4]
  62cfa8: e1a01002     	mov	r1, r2
  62cfac: e1a02003     	mov	r2, r3
  62cfb0: e59d3000     	ldr	r3, [sp]
  62cfb4: e58dc000     	str	r12, [sp]
  62cfb8: eaffffba     	b	0x62cea8 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIsEELi0EsEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE> @ imm = #-0x118

; FUNCTION 0x0062cfbc size=248 sha256=28581612e0f7e7bff5e650352fe9a9506b97d32c1c92f5b4682d086c8278c999
; symbols: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
0062cfbc <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIfEELi0EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE>:
  62cfbc: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62cfc0: e3520001     	cmp	r2, #1
  62cfc4: e24dd01c     	sub	sp, sp, #28
  62cfc8: e3a0a000     	mov	r10, #0
  62cfcc: e1a04002     	mov	r4, r2
  62cfd0: e1a05001     	mov	r5, r1
  62cfd4: e58d3004     	str	r3, [sp, #0x4]
  62cfd8: e58da014     	str	r10, [sp, #0x14]
  62cfdc: 0a00002b     	beq	0x62d090 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIfEELi0EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xd4> @ imm = #0xac
  62cfe0: e3520000     	cmp	r2, #0
  62cfe4: 01a0b00a     	moveq	r11, r10
  62cfe8: 01a0900a     	moveq	r9, r10
  62cfec: 0a00001d     	beq	0x62d068 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIfEELi0EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xac> @ imm = #0x74
  62cff0: e1a06000     	mov	r6, r0
  62cff4: e3a08000     	mov	r8, #0
  62cff8: e1a0b00a     	mov	r11, r10
  62cffc: e1a0900a     	mov	r9, r10
  62d000: e7957008     	ldr	r7, [r5, r8]
  62d004: e5961000     	ldr	r1, [r6]
  62d008: e2888004     	add	r8, r8, #4
  62d00c: e1a00007     	mov	r0, r7
  62d010: ebf38755     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31e2ac
  62d014: e1a01000     	mov	r1, r0
  62d018: e1a0000a     	mov	r0, r10
  62d01c: ebf386e0     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31e480
  62d020: e5961004     	ldr	r1, [r6, #0x4]
  62d024: e1a0a000     	mov	r10, r0
  62d028: e1a00007     	mov	r0, r7
  62d02c: ebf3874e     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31e2c8
  62d030: e1a01000     	mov	r1, r0
  62d034: e1a0000b     	mov	r0, r11
  62d038: ebf386d9     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31e49c
  62d03c: e5961008     	ldr	r1, [r6, #0x8]
  62d040: e1a0b000     	mov	r11, r0
  62d044: e1a00007     	mov	r0, r7
  62d048: ebf38747     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31e2e4
  62d04c: e1a01000     	mov	r1, r0
  62d050: e1a00009     	mov	r0, r9
  62d054: ebf386d2     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31e4b8
  62d058: e2544001     	subs	r4, r4, #1
  62d05c: e1a09000     	mov	r9, r0
  62d060: e286600c     	add	r6, r6, #12
  62d064: 1affffe5     	bne	0x62d000 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIfEELi0EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x44> @ imm = #-0x6c
  62d068: e28d1018     	add	r1, sp, #24
  62d06c: e521a00c     	str	r10, [r1, #-0xc]!
  62d070: e58db010     	str	r11, [sp, #0x10]
  62d074: e5819008     	str	r9, [r1, #0x8]
  62d078: e59d0004     	ldr	r0, [sp, #0x4]
  62d07c: e5903000     	ldr	r3, [r0]
  62d080: e1a0e00f     	mov	lr, pc
  62d084: e593f094     	ldr	pc, [r3, #0x94]
  62d088: e28dd01c     	add	sp, sp, #28
  62d08c: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62d090: e1a03000     	mov	r3, r0
  62d094: e493c004     	ldr	r12, [r3], #4
  62d098: e5902004     	ldr	r2, [r0, #0x4]
  62d09c: e28d1018     	add	r1, sp, #24
  62d0a0: e5933004     	ldr	r3, [r3, #0x4]
  62d0a4: e521c00c     	str	r12, [r1, #-0xc]!
  62d0a8: e58d2010     	str	r2, [sp, #0x10]
  62d0ac: e5813008     	str	r3, [r1, #0x8]
  62d0b0: eafffff0     	b	0x62d078 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIfEELi0EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xbc> @ imm = #-0x40

; FUNCTION 0x0062d0b4 size=28 sha256=e7ecfdacaee34dd6f39b726dc7b5ffcc3adf55e2c7037d1df0d3033e53eb0543
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
0062d0b4 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIfEELi0EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  62d0b4: e1a00001     	mov	r0, r1
  62d0b8: e59dc004     	ldr	r12, [sp, #0x4]
  62d0bc: e1a01002     	mov	r1, r2
  62d0c0: e1a02003     	mov	r2, r3
  62d0c4: e59d3000     	ldr	r3, [sp]
  62d0c8: e58dc000     	str	r12, [sp]
  62d0cc: eaffffba     	b	0x62cfbc <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIfEELi0EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE> @ imm = #-0x118

; FUNCTION 0x0062d0d0 size=248 sha256=3349ea0e46e87bbfbbe648eb8826f995ff7fc94c4fe6b0f5baf7f1174447fcbc
; symbols: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
0062d0d0 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIfEELi0EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE>:
  62d0d0: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62d0d4: e3520001     	cmp	r2, #1
  62d0d8: e24dd01c     	sub	sp, sp, #28
  62d0dc: e3a0a000     	mov	r10, #0
  62d0e0: e1a04002     	mov	r4, r2
  62d0e4: e1a05001     	mov	r5, r1
  62d0e8: e58d3004     	str	r3, [sp, #0x4]
  62d0ec: e58da014     	str	r10, [sp, #0x14]
  62d0f0: 0a00002b     	beq	0x62d1a4 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIfEELi0EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xd4> @ imm = #0xac
  62d0f4: e3520000     	cmp	r2, #0
  62d0f8: 01a0b00a     	moveq	r11, r10
  62d0fc: 01a0900a     	moveq	r9, r10
  62d100: 0a00001d     	beq	0x62d17c <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIfEELi0EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xac> @ imm = #0x74
  62d104: e1a06000     	mov	r6, r0
  62d108: e3a08000     	mov	r8, #0
  62d10c: e1a0b00a     	mov	r11, r10
  62d110: e1a0900a     	mov	r9, r10
  62d114: e7957008     	ldr	r7, [r5, r8]
  62d118: e5961000     	ldr	r1, [r6]
  62d11c: e2888004     	add	r8, r8, #4
  62d120: e1a00007     	mov	r0, r7
  62d124: ebf38710     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31e3c0
  62d128: e1a01000     	mov	r1, r0
  62d12c: e1a0000a     	mov	r0, r10
  62d130: ebf3869b     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31e594
  62d134: e5961004     	ldr	r1, [r6, #0x4]
  62d138: e1a0a000     	mov	r10, r0
  62d13c: e1a00007     	mov	r0, r7
  62d140: ebf38709     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31e3dc
  62d144: e1a01000     	mov	r1, r0
  62d148: e1a0000b     	mov	r0, r11
  62d14c: ebf38694     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31e5b0
  62d150: e5961008     	ldr	r1, [r6, #0x8]
  62d154: e1a0b000     	mov	r11, r0
  62d158: e1a00007     	mov	r0, r7
  62d15c: ebf38702     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31e3f8
  62d160: e1a01000     	mov	r1, r0
  62d164: e1a00009     	mov	r0, r9
  62d168: ebf3868d     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31e5cc
  62d16c: e2544001     	subs	r4, r4, #1
  62d170: e1a09000     	mov	r9, r0
  62d174: e286600c     	add	r6, r6, #12
  62d178: 1affffe5     	bne	0x62d114 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIfEELi0EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x44> @ imm = #-0x6c
  62d17c: e28d1018     	add	r1, sp, #24
  62d180: e521a00c     	str	r10, [r1, #-0xc]!
  62d184: e58db010     	str	r11, [sp, #0x10]
  62d188: e5819008     	str	r9, [r1, #0x8]
  62d18c: e59d0004     	ldr	r0, [sp, #0x4]
  62d190: e5903000     	ldr	r3, [r0]
  62d194: e1a0e00f     	mov	lr, pc
  62d198: e593f094     	ldr	pc, [r3, #0x94]
  62d19c: e28dd01c     	add	sp, sp, #28
  62d1a0: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62d1a4: e1a03000     	mov	r3, r0
  62d1a8: e493c004     	ldr	r12, [r3], #4
  62d1ac: e5902004     	ldr	r2, [r0, #0x4]
  62d1b0: e28d1018     	add	r1, sp, #24
  62d1b4: e5933004     	ldr	r3, [r3, #0x4]
  62d1b8: e521c00c     	str	r12, [r1, #-0xc]!
  62d1bc: e58d2010     	str	r2, [sp, #0x10]
  62d1c0: e5813008     	str	r3, [r1, #0x8]
  62d1c4: eafffff0     	b	0x62d18c <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIfEELi0EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xbc> @ imm = #-0x40

; FUNCTION 0x0062d1c8 size=28 sha256=e7ecfdacaee34dd6f39b726dc7b5ffcc3adf55e2c7037d1df0d3033e53eb0543
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, 0, float> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
0062d1c8 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIfEELi0EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  62d1c8: e1a00001     	mov	r0, r1
  62d1cc: e59dc004     	ldr	r12, [sp, #0x4]
  62d1d0: e1a01002     	mov	r1, r2
  62d1d4: e1a02003     	mov	r2, r3
  62d1d8: e59d3000     	ldr	r3, [sp]
  62d1dc: e58dc000     	str	r12, [sp]
  62d1e0: eaffffba     	b	0x62d0d0 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIfEELi0EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE> @ imm = #-0x118

; FUNCTION 0x0062d85c size=248 sha256=3b807d6971050b866497ecdce20a77ddfd12869efe01710a48f53ffc33cb0030
; symbols: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
0062d85c <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIcEELi2EcEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE>:
  62d85c: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62d860: e3520001     	cmp	r2, #1
  62d864: e24dd01c     	sub	sp, sp, #28
  62d868: e3a0a000     	mov	r10, #0
  62d86c: e1a04002     	mov	r4, r2
  62d870: e1a05001     	mov	r5, r1
  62d874: e58d3004     	str	r3, [sp, #0x4]
  62d878: e58da014     	str	r10, [sp, #0x14]
  62d87c: 0a00002b     	beq	0x62d930 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIcEELi2EcEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xd4> @ imm = #0xac
  62d880: e3520000     	cmp	r2, #0
  62d884: 01a0b00a     	moveq	r11, r10
  62d888: 01a0900a     	moveq	r9, r10
  62d88c: 0a00001d     	beq	0x62d908 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIcEELi2EcEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xac> @ imm = #0x74
  62d890: e1a06000     	mov	r6, r0
  62d894: e3a08000     	mov	r8, #0
  62d898: e1a0b00a     	mov	r11, r10
  62d89c: e1a0900a     	mov	r9, r10
  62d8a0: e7957008     	ldr	r7, [r5, r8]
  62d8a4: e5961000     	ldr	r1, [r6]
  62d8a8: e2888004     	add	r8, r8, #4
  62d8ac: e1a00007     	mov	r0, r7
  62d8b0: ebf3852d     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31eb4c
  62d8b4: e1a01000     	mov	r1, r0
  62d8b8: e1a0000a     	mov	r0, r10
  62d8bc: ebf384b8     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31ed20
  62d8c0: e5961004     	ldr	r1, [r6, #0x4]
  62d8c4: e1a0a000     	mov	r10, r0
  62d8c8: e1a00007     	mov	r0, r7
  62d8cc: ebf38526     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31eb68
  62d8d0: e1a01000     	mov	r1, r0
  62d8d4: e1a0000b     	mov	r0, r11
  62d8d8: ebf384b1     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31ed3c
  62d8dc: e5961008     	ldr	r1, [r6, #0x8]
  62d8e0: e1a0b000     	mov	r11, r0
  62d8e4: e1a00007     	mov	r0, r7
  62d8e8: ebf3851f     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31eb84
  62d8ec: e1a01000     	mov	r1, r0
  62d8f0: e1a00009     	mov	r0, r9
  62d8f4: ebf384aa     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31ed58
  62d8f8: e2544001     	subs	r4, r4, #1
  62d8fc: e1a09000     	mov	r9, r0
  62d900: e286600c     	add	r6, r6, #12
  62d904: 1affffe5     	bne	0x62d8a0 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIcEELi2EcEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x44> @ imm = #-0x6c
  62d908: e28d1018     	add	r1, sp, #24
  62d90c: e521a00c     	str	r10, [r1, #-0xc]!
  62d910: e58db010     	str	r11, [sp, #0x10]
  62d914: e5819008     	str	r9, [r1, #0x8]
  62d918: e59d0004     	ldr	r0, [sp, #0x4]
  62d91c: e5903000     	ldr	r3, [r0]
  62d920: e1a0e00f     	mov	lr, pc
  62d924: e593f0a4     	ldr	pc, [r3, #0xa4]
  62d928: e28dd01c     	add	sp, sp, #28
  62d92c: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62d930: e1a03000     	mov	r3, r0
  62d934: e493c004     	ldr	r12, [r3], #4
  62d938: e5902004     	ldr	r2, [r0, #0x4]
  62d93c: e28d1018     	add	r1, sp, #24
  62d940: e5933004     	ldr	r3, [r3, #0x4]
  62d944: e521c00c     	str	r12, [r1, #-0xc]!
  62d948: e58d2010     	str	r2, [sp, #0x10]
  62d94c: e5813008     	str	r3, [r1, #0x8]
  62d950: eafffff0     	b	0x62d918 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIcEELi2EcEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xbc> @ imm = #-0x40

; FUNCTION 0x0062d954 size=28 sha256=e7ecfdacaee34dd6f39b726dc7b5ffcc3adf55e2c7037d1df0d3033e53eb0543
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
0062d954 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIcEELi2EcEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  62d954: e1a00001     	mov	r0, r1
  62d958: e59dc004     	ldr	r12, [sp, #0x4]
  62d95c: e1a01002     	mov	r1, r2
  62d960: e1a02003     	mov	r2, r3
  62d964: e59d3000     	ldr	r3, [sp]
  62d968: e58dc000     	str	r12, [sp]
  62d96c: eaffffba     	b	0x62d85c <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIcEELi2EcEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE> @ imm = #-0x118

; FUNCTION 0x0062d970 size=248 sha256=2311777e761b9950666b26c4fcef38fc743537470945ef153bec0cbfdd3b7aba
; symbols: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
0062d970 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIcEELi2EcEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE>:
  62d970: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62d974: e3520001     	cmp	r2, #1
  62d978: e24dd01c     	sub	sp, sp, #28
  62d97c: e3a0a000     	mov	r10, #0
  62d980: e1a04002     	mov	r4, r2
  62d984: e1a05001     	mov	r5, r1
  62d988: e58d3004     	str	r3, [sp, #0x4]
  62d98c: e58da014     	str	r10, [sp, #0x14]
  62d990: 0a00002b     	beq	0x62da44 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIcEELi2EcEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xd4> @ imm = #0xac
  62d994: e3520000     	cmp	r2, #0
  62d998: 01a0b00a     	moveq	r11, r10
  62d99c: 01a0900a     	moveq	r9, r10
  62d9a0: 0a00001d     	beq	0x62da1c <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIcEELi2EcEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xac> @ imm = #0x74
  62d9a4: e1a06000     	mov	r6, r0
  62d9a8: e3a08000     	mov	r8, #0
  62d9ac: e1a0b00a     	mov	r11, r10
  62d9b0: e1a0900a     	mov	r9, r10
  62d9b4: e7957008     	ldr	r7, [r5, r8]
  62d9b8: e5961000     	ldr	r1, [r6]
  62d9bc: e2888004     	add	r8, r8, #4
  62d9c0: e1a00007     	mov	r0, r7
  62d9c4: ebf384e8     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31ec60
  62d9c8: e1a01000     	mov	r1, r0
  62d9cc: e1a0000a     	mov	r0, r10
  62d9d0: ebf38473     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31ee34
  62d9d4: e5961004     	ldr	r1, [r6, #0x4]
  62d9d8: e1a0a000     	mov	r10, r0
  62d9dc: e1a00007     	mov	r0, r7
  62d9e0: ebf384e1     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31ec7c
  62d9e4: e1a01000     	mov	r1, r0
  62d9e8: e1a0000b     	mov	r0, r11
  62d9ec: ebf3846c     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31ee50
  62d9f0: e5961008     	ldr	r1, [r6, #0x8]
  62d9f4: e1a0b000     	mov	r11, r0
  62d9f8: e1a00007     	mov	r0, r7
  62d9fc: ebf384da     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31ec98
  62da00: e1a01000     	mov	r1, r0
  62da04: e1a00009     	mov	r0, r9
  62da08: ebf38465     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31ee6c
  62da0c: e2544001     	subs	r4, r4, #1
  62da10: e1a09000     	mov	r9, r0
  62da14: e286600c     	add	r6, r6, #12
  62da18: 1affffe5     	bne	0x62d9b4 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIcEELi2EcEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x44> @ imm = #-0x6c
  62da1c: e28d1018     	add	r1, sp, #24
  62da20: e521a00c     	str	r10, [r1, #-0xc]!
  62da24: e58db010     	str	r11, [sp, #0x10]
  62da28: e5819008     	str	r9, [r1, #0x8]
  62da2c: e59d0004     	ldr	r0, [sp, #0x4]
  62da30: e5903000     	ldr	r3, [r0]
  62da34: e1a0e00f     	mov	lr, pc
  62da38: e593f0a4     	ldr	pc, [r3, #0xa4]
  62da3c: e28dd01c     	add	sp, sp, #28
  62da40: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62da44: e1a03000     	mov	r3, r0
  62da48: e493c004     	ldr	r12, [r3], #4
  62da4c: e5902004     	ldr	r2, [r0, #0x4]
  62da50: e28d1018     	add	r1, sp, #24
  62da54: e5933004     	ldr	r3, [r3, #0x4]
  62da58: e521c00c     	str	r12, [r1, #-0xc]!
  62da5c: e58d2010     	str	r2, [sp, #0x10]
  62da60: e5813008     	str	r3, [r1, #0x8]
  62da64: eafffff0     	b	0x62da2c <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIcEELi2EcEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xbc> @ imm = #-0x40

; FUNCTION 0x0062da68 size=28 sha256=e7ecfdacaee34dd6f39b726dc7b5ffcc3adf55e2c7037d1df0d3033e53eb0543
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<char>, 2, char> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
0062da68 <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIcEELi2EcEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  62da68: e1a00001     	mov	r0, r1
  62da6c: e59dc004     	ldr	r12, [sp, #0x4]
  62da70: e1a01002     	mov	r1, r2
  62da74: e1a02003     	mov	r2, r3
  62da78: e59d3000     	ldr	r3, [sp]
  62da7c: e58dc000     	str	r12, [sp]
  62da80: eaffffba     	b	0x62d970 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIcEELi2EcEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE> @ imm = #-0x118

; FUNCTION 0x0062da84 size=248 sha256=e31d683adbd9cb51e77b17c70654dc342c1c593d68e27d54e6f01f755e9a2478
; symbols: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
0062da84 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIsEELi2EsEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE>:
  62da84: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  62da88: e3520001     	cmp	r2, #1
  62da8c: e24dd01c     	sub	sp, sp, #28
  62da90: e3a0a000     	mov	r10, #0
  62da94: e1a04002     	mov	r4, r2
  62da98: e1a05001     	mov	r5, r1
  62da9c: e58d3004     	str	r3, [sp, #0x4]
  62daa0: e58da014     	str	r10, [sp, #0x14]
  62daa4: 0a00002b     	beq	0x62db58 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIsEELi2EsEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xd4> @ imm = #0xac
  62daa8: e3520000     	cmp	r2, #0
  62daac: 01a0b00a     	moveq	r11, r10
  62dab0: 01a0900a     	moveq	r9, r10
  62dab4: 0a00001d     	beq	0x62db30 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIsEELi2EsEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xac> @ imm = #0x74
  62dab8: e1a06000     	mov	r6, r0
  62dabc: e3a08000     	mov	r8, #0
  62dac0: e1a0b00a     	mov	r11, r10
  62dac4: e1a0900a     	mov	r9, r10
  62dac8: e7957008     	ldr	r7, [r5, r8]
  62dacc: e5961000     	ldr	r1, [r6]
  62dad0: e2888004     	add	r8, r8, #4
  62dad4: e1a00007     	mov	r0, r7
  62dad8: ebf384a3     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31ed74
  62dadc: e1a01000     	mov	r1, r0
  62dae0: e1a0000a     	mov	r0, r10
  62dae4: ebf3842e     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31ef48
  62dae8: e5961004     	ldr	r1, [r6, #0x4]
  62daec: e1a0a000     	mov	r10, r0
  62daf0: e1a00007     	mov	r0, r7
  62daf4: ebf3849c     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31ed90
  62daf8: e1a01000     	mov	r1, r0
  62dafc: e1a0000b     	mov	r0, r11
  62db00: ebf38427     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31ef64
  62db04: e5961008     	ldr	r1, [r6, #0x8]
  62db08: e1a0b000     	mov	r11, r0
  62db0c: e1a00007     	mov	r0, r7
  62db10: ebf38495     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x31edac
  62db14: e1a01000     	mov	r1, r0
  62db18: e1a00009     	mov	r0, r9
  62db1c: ebf38420     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x31ef80
  62db20: e2544001     	subs	r4, r4, #1
  62db24: e1a09000     	mov	r9, r0
  62db28: e286600c     	add	r6, r6, #12
  62db2c: 1affffe5     	bne	0x62dac8 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIsEELi2EsEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0x44> @ imm = #-0x6c
  62db30: e28d1018     	add	r1, sp, #24
  62db34: e521a00c     	str	r10, [r1, #-0xc]!
  62db38: e58db010     	str	r11, [sp, #0x10]
  62db3c: e5819008     	str	r9, [r1, #0x8]
  62db40: e59d0004     	ldr	r0, [sp, #0x4]
  62db44: e5903000     	ldr	r3, [r0]
  62db48: e1a0e00f     	mov	lr, pc
  62db4c: e593f0a4     	ldr	pc, [r3, #0xa4]
  62db50: e28dd01c     	add	sp, sp, #28
  62db54: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  62db58: e1a03000     	mov	r3, r0
  62db5c: e493c004     	ldr	r12, [r3], #4
  62db60: e5902004     	ldr	r2, [r0, #0x4]
  62db64: e28d1018     	add	r1, sp, #24
  62db68: e5933004     	ldr	r3, [r3, #0x4]
  62db6c: e521c00c     	str	r12, [r1, #-0xc]!
  62db70: e58d2010     	str	r2, [sp, #0x10]
  62db74: e5813008     	str	r3, [r1, #0x8]
  62db78: eafffff0     	b	0x62db40 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIsEELi2EsEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE+0xbc> @ imm = #-0x40

; FUNCTION 0x0062db7c size=28 sha256=e7ecfdacaee34dd6f39b726dc7b5ffcc3adf55e2c7037d1df0d3033e53eb0543
; symbols: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionZEx<short>, 2, short> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
0062db7c <_ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIsEELi2EsEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE>:
  62db7c: e1a00001     	mov	r0, r1
  62db80: e59dc004     	ldr	r12, [sp, #0x4]
  62db84: e1a01002     	mov	r1, r2
  62db88: e1a02003     	mov	r2, r3
  62db8c: e59d3000     	ldr	r3, [sp]
  62db90: e58dc000     	str	r12, [sp]
  62db94: eaffffba     	b	0x62da84 <_ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionZExIsEELi2EsEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE> @ imm = #-0x118

; FUNCTION 0x008be2a0 size=84 sha256=1bfbab489e0e7b2166376f736f04f891a50f7bf04191cfb8731e5294b752d66f
; symbols: __aeabi_f2uiz | __fixunssfsi
008be2a0 <__fixunssfsi>:
  8be2a0: e1b02080     	lsls	r2, r0, #1
  8be2a4: 2a000008     	bhs	0x8be2cc <__fixunssfsi+0x2c> @ imm = #0x20
  8be2a8: e352047f     	cmp	r2, #2130706432
  8be2ac: 3a000006     	blo	0x8be2cc <__fixunssfsi+0x2c> @ imm = #0x18
  8be2b0: e3a0309e     	mov	r3, #158
  8be2b4: e0532c22     	subs	r2, r3, r2, lsr #24
  8be2b8: 4a000005     	bmi	0x8be2d4 <__fixunssfsi+0x34> @ imm = #0x14
  8be2bc: e1a03400     	lsl	r3, r0, #8
  8be2c0: e3833102     	orr	r3, r3, #-2147483648
  8be2c4: e1a00233     	lsr	r0, r3, r2
  8be2c8: e12fff1e     	bx	lr
  8be2cc: e3a00000     	mov	r0, #0
  8be2d0: e12fff1e     	bx	lr
  8be2d4: e3720061     	cmn	r2, #97
  8be2d8: 1a000001     	bne	0x8be2e4 <__fixunssfsi+0x44> @ imm = #0x4
  8be2dc: e1b02480     	lsls	r2, r0, #9
  8be2e0: 1a000001     	bne	0x8be2ec <__fixunssfsi+0x4c> @ imm = #0x4
  8be2e4: e3e00000     	mvn	r0, #0
  8be2e8: e12fff1e     	bx	lr
  8be2ec: e3a00000     	mov	r0, #0
  8be2f0: e12fff1e     	bx	lr
