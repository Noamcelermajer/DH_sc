; APK-backed ARM32 disassembly for the selected typed animation-track ranges.
; ELF SHA-256: 36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80
; Tool: llvm-objdump 22.1.8, --disassemble --demangle.
; Every body below is bounded by the exact ELF symbol size recorded in functions.json.

; quaternion_float_get_direct: Direct float4 key getter copies one output record.
; ELF VA=0x0061cf8c, file offset=0x0061cf8c, size=76, SHA-256=1bcd2b99a2ce08b773e7c7b59f712e52afca9cd21cfdf168bb0b4e2d242f81fb
0061cf8c <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const>:
  61cf8c: e92d4070     	push	{r4, r5, r6, lr}
  61cf90: e1a00001     	mov	r0, r1
  61cf94: e3a01000     	mov	r1, #0
  61cf98: e1a04002     	mov	r4, r2
  61cf9c: e1a05003     	mov	r5, r3
  61cfa0: eb01339f     	bl	0x669e24 <glitch::collada::SAnimationAccessor::getOutput(int) const> @ imm = #0x4ce7c
  61cfa4: e5902004     	ldr	r2, [r0, #0x4]
  61cfa8: e1a03005     	mov	r3, r5
  61cfac: e7921204     	ldr	r1, [r2, r4, lsl #4]
  61cfb0: e0824204     	add	r4, r2, r4, lsl #4
  61cfb4: e2842004     	add	r2, r4, #4
  61cfb8: e4831004     	str	r1, [r3], #4
  61cfbc: e5941004     	ldr	r1, [r4, #0x4]
  61cfc0: e5851004     	str	r1, [r5, #0x4]
  61cfc4: e5921004     	ldr	r1, [r2, #0x4]
  61cfc8: e5831004     	str	r1, [r3, #0x4]
  61cfcc: e5922008     	ldr	r2, [r2, #0x8]
  61cfd0: e5832008     	str	r2, [r3, #0x8]
  61cfd4: e8bd8070     	pop	{r4, r5, r6, pc}

; quaternion_float_get_interpolation_wrapper: Address-point wrapper for interpolated float4 getter.
; ELF VA=0x006132e4, file offset=0x006132e4, size=28, SHA-256=e0232aeb1a413f4ada1885116b42cd128be946b81bdd11a914b1df73513eb401
006132e4 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const>:
  6132e4: e1a00001     	mov	r0, r1
  6132e8: e59dc004     	ldr	r12, [sp, #0x4]
  6132ec: e1a01002     	mov	r1, r2
  6132f0: e1a02003     	mov	r2, r3
  6132f4: e59d3000     	ldr	r3, [sp]
  6132f8: e58dc000     	str	r12, [sp]
  6132fc: eaffffe4     	b	0x613294 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>, float, 4, glitch::collada::animation_track::SUseDefaultLerp<float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)> @ imm = #-0x70

; quaternion_float_interpreter: Builds two weights and dispatches the pair to the quaternion blender.
; ELF VA=0x00613294, file offset=0x00613294, size=80, SHA-256=ed4eb477bd0056640b28e659de232b3f150e2adf48a2adb4b23cbeb4d6821e00
00613294 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>, float, 4, glitch::collada::animation_track::SUseDefaultLerp<float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)>:
  613294: e92d4070     	push	{r4, r5, r6, lr}
  613298: e1a04001     	mov	r4, r1
  61329c: e24dd008     	sub	sp, sp, #8
  6132a0: e3a01000     	mov	r1, #0
  6132a4: e1a05003     	mov	r5, r3
  6132a8: eb015add     	bl	0x669e24 <glitch::collada::SAnimationAccessor::getOutput(int) const> @ imm = #0x56b74
  6132ac: e1a01005     	mov	r1, r5
  6132b0: e1a06000     	mov	r6, r0
  6132b4: e3a005fe     	mov	r0, #1065353216
  6132b8: ebf3ec3b     	bl	0x30e3ac <__aeabi_fsub@plt> @ imm = #-0x304f14
  6132bc: e58d5004     	str	r5, [sp, #0x4]
  6132c0: e58d0000     	str	r0, [sp]
  6132c4: e5960004     	ldr	r0, [r6, #0x4]
  6132c8: e59d3018     	ldr	r3, [sp, #0x18]
  6132cc: e1a0100d     	mov	r1, sp
  6132d0: e0800204     	add	r0, r0, r4, lsl #4
  6132d4: e3a02002     	mov	r2, #2
  6132d8: ebffff7d     	bl	0x6130d4 <glitch::collada::animation_track::CBlender<glitch::core::quaternion, 1, glitch::core::quaternion>::getBlendedValueEx(void*, float*, int, void*)> @ imm = #-0x20c
  6132dc: e28dd008     	add	sp, sp, #8
  6132e0: e8bd8070     	pop	{r4, r5, r6, pc}

; quaternion_float_blender: Weighted quaternion blend implementation; calls the engine quaternion slerp.
; ELF VA=0x006130d4, file offset=0x006130d4, size=448, SHA-256=76547124667f91b7cd041af567af33bf673c552b465c4b04719ced469c6dd57b
006130d4 <glitch::collada::animation_track::CBlender<glitch::core::quaternion, 1, glitch::core::quaternion>::getBlendedValueEx(void*, float*, int, void*)>:
  6130d4: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  6130d8: e3a0c000     	mov	r12, #0
  6130dc: e24dd03c     	sub	sp, sp, #60
  6130e0: e2526000     	subs	r6, r2, #0
  6130e4: e3a025fe     	mov	r2, #1065353216
  6130e8: e1a08000     	mov	r8, r0
  6130ec: e58d2034     	str	r2, [sp, #0x34]
  6130f0: e1a05001     	mov	r5, r1
  6130f4: e1a09003     	mov	r9, r3
  6130f8: e58dc028     	str	r12, [sp, #0x28]
  6130fc: e58dc02c     	str	r12, [sp, #0x2c]
  613100: e58dc030     	str	r12, [sp, #0x30]
  613104: da000060     	ble	0x61328c <glitch::collada::animation_track::CBlender<glitch::core::quaternion, 1, glitch::core::quaternion>::getBlendedValueEx(void*, float*, int, void*)+0x1b8> @ imm = #0x180
  613108: e1a0100c     	mov	r1, r12
  61310c: e5950000     	ldr	r0, [r5]
  613110: ebf3eb9d     	bl	0x30df8c <__aeabi_fcmpeq@plt> @ imm = #-0x30518c
  613114: e3500000     	cmp	r0, #0
  613118: 03a03000     	moveq	r3, #0
  61311c: 01a07005     	moveq	r7, r5
  613120: 01a04003     	moveq	r4, r3
  613124: 0a00003e     	beq	0x613224 <glitch::collada::animation_track::CBlender<glitch::core::quaternion, 1, glitch::core::quaternion>::getBlendedValueEx(void*, float*, int, void*)+0x150> @ imm = #0xf8
  613128: e1a07005     	mov	r7, r5
  61312c: e3a04000     	mov	r4, #0
  613130: ea000003     	b	0x613144 <glitch::collada::animation_track::CBlender<glitch::core::quaternion, 1, glitch::core::quaternion>::getBlendedValueEx(void*, float*, int, void*)+0x70> @ imm = #0xc
  613134: e5b70004     	ldr	r0, [r7, #0x4]!
  613138: ebf3eb93     	bl	0x30df8c <__aeabi_fcmpeq@plt> @ imm = #-0x3051b4
  61313c: e3500000     	cmp	r0, #0
  613140: 0a000036     	beq	0x613220 <glitch::collada::animation_track::CBlender<glitch::core::quaternion, 1, glitch::core::quaternion>::getBlendedValueEx(void*, float*, int, void*)+0x14c> @ imm = #0xd8
  613144: e2844001     	add	r4, r4, #1
  613148: e1540006     	cmp	r4, r6
  61314c: e3a01000     	mov	r1, #0
  613150: 1afffff7     	bne	0x613134 <glitch::collada::animation_track::CBlender<glitch::core::quaternion, 1, glitch::core::quaternion>::getBlendedValueEx(void*, float*, int, void*)+0x60> @ imm = #-0x24
  613154: e2864001     	add	r4, r6, #1
  613158: e3a0a000     	mov	r10, #0
  61315c: e1560004     	cmp	r6, r4
  613160: da000024     	ble	0x6131f8 <glitch::collada::animation_track::CBlender<glitch::core::quaternion, 1, glitch::core::quaternion>::getBlendedValueEx(void*, float*, int, void*)+0x124> @ imm = #0x90
  613164: e28d3004     	add	r3, sp, #4
  613168: e0855104     	add	r5, r5, r4, lsl #2
  61316c: e0888204     	add	r8, r8, r4, lsl #4
  613170: e28db028     	add	r11, sp, #40
  613174: e58d3024     	str	r3, [sp, #0x24]
  613178: ea000003     	b	0x61318c <glitch::collada::animation_track::CBlender<glitch::core::quaternion, 1, glitch::core::quaternion>::getBlendedValueEx(void*, float*, int, void*)+0xb8> @ imm = #0xc
  61317c: e1540006     	cmp	r4, r6
  613180: e2855004     	add	r5, r5, #4
  613184: e2888010     	add	r8, r8, #16
  613188: 0a00001a     	beq	0x6131f8 <glitch::collada::animation_track::CBlender<glitch::core::quaternion, 1, glitch::core::quaternion>::getBlendedValueEx(void*, float*, int, void*)+0x124> @ imm = #0x68
  61318c: e5957000     	ldr	r7, [r5]
  613190: e3a01000     	mov	r1, #0
  613194: e2844001     	add	r4, r4, #1
  613198: e1a00007     	mov	r0, r7
  61319c: ebf3eb7a     	bl	0x30df8c <__aeabi_fcmpeq@plt> @ imm = #-0x305218
  6131a0: e3500000     	cmp	r0, #0
  6131a4: 1afffff4     	bne	0x61317c <glitch::collada::animation_track::CBlender<glitch::core::quaternion, 1, glitch::core::quaternion>::getBlendedValueEx(void*, float*, int, void*)+0xa8> @ imm = #-0x30
  6131a8: e1a0000a     	mov	r0, r10
  6131ac: e1a01007     	mov	r1, r7
  6131b0: ebf3ee7b     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x304614
  6131b4: e59dc024     	ldr	r12, [sp, #0x24]
  6131b8: e1a0a000     	mov	r10, r0
  6131bc: e898000f     	ldm	r8, {r0, r1, r2, r3}
  6131c0: e88c000f     	stm	r12, {r0, r1, r2, r3}
  6131c4: e1a0100a     	mov	r1, r10
  6131c8: e1a00007     	mov	r0, r7
  6131cc: ebf3eeb0     	bl	0x30ec94 <__aeabi_fdiv@plt> @ imm = #-0x304540
  6131d0: e89b000e     	ldm	r11, {r1, r2, r3}
  6131d4: e59dc034     	ldr	r12, [sp, #0x34]
  6131d8: e58d0014     	str	r0, [sp, #0x14]
  6131dc: e1a0000b     	mov	r0, r11
  6131e0: e58dc000     	str	r12, [sp]
  6131e4: ebfffec5     	bl	0x612d00 <glitch::core::quaternion::slerp(glitch::core::quaternion, glitch::core::quaternion, float)> @ imm = #-0x4ec
  6131e8: e1540006     	cmp	r4, r6
  6131ec: e2855004     	add	r5, r5, #4
  6131f0: e2888010     	add	r8, r8, #16
  6131f4: 1affffe4     	bne	0x61318c <glitch::collada::animation_track::CBlender<glitch::core::quaternion, 1, glitch::core::quaternion>::getBlendedValueEx(void*, float*, int, void*)+0xb8> @ imm = #-0x70
  6131f8: e59d102c     	ldr	r1, [sp, #0x2c]
  6131fc: e59d3030     	ldr	r3, [sp, #0x30]
  613200: e59d2034     	ldr	r2, [sp, #0x34]
  613204: e59d0028     	ldr	r0, [sp, #0x28]
  613208: e5891004     	str	r1, [r9, #0x4]
  61320c: e589200c     	str	r2, [r9, #0xc]
  613210: e5890000     	str	r0, [r9]
  613214: e5893008     	str	r3, [r9, #0x8]
  613218: e28dd03c     	add	sp, sp, #60
  61321c: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  613220: e1a03204     	lsl	r3, r4, #4
  613224: e597a000     	ldr	r10, [r7]
  613228: e0882003     	add	r2, r8, r3
  61322c: e7987003     	ldr	r7, [r8, r3]
  613230: e592b00c     	ldr	r11, [r2, #0xc]
  613234: e5923004     	ldr	r3, [r2, #0x4]
  613238: e5922008     	ldr	r2, [r2, #0x8]
  61323c: e1a0000a     	mov	r0, r10
  613240: e3a015fe     	mov	r1, #1065353216
  613244: e58d302c     	str	r3, [sp, #0x2c]
  613248: e58d2030     	str	r2, [sp, #0x30]
  61324c: e58d201c     	str	r2, [sp, #0x1c]
  613250: e58d3020     	str	r3, [sp, #0x20]
  613254: e58d7028     	str	r7, [sp, #0x28]
  613258: e58db034     	str	r11, [sp, #0x34]
  61325c: ebf3eb4a     	bl	0x30df8c <__aeabi_fcmpeq@plt> @ imm = #-0x3052d8
  613260: e3500000     	cmp	r0, #0
  613264: e59d201c     	ldr	r2, [sp, #0x1c]
  613268: e59d3020     	ldr	r3, [sp, #0x20]
  61326c: 0a000004     	beq	0x613284 <glitch::collada::animation_track::CBlender<glitch::core::quaternion, 1, glitch::core::quaternion>::getBlendedValueEx(void*, float*, int, void*)+0x1b0> @ imm = #0x10
  613270: e589b00c     	str	r11, [r9, #0xc]
  613274: e5897000     	str	r7, [r9]
  613278: e5893004     	str	r3, [r9, #0x4]
  61327c: e5892008     	str	r2, [r9, #0x8]
  613280: eaffffe4     	b	0x613218 <glitch::collada::animation_track::CBlender<glitch::core::quaternion, 1, glitch::core::quaternion>::getBlendedValueEx(void*, float*, int, void*)+0x144> @ imm = #-0x70
  613284: e2844001     	add	r4, r4, #1
  613288: eaffffb3     	b	0x61315c <glitch::collada::animation_track::CBlender<glitch::core::quaternion, 1, glitch::core::quaternion>::getBlendedValueEx(void*, float*, int, void*)+0x88> @ imm = #-0x134
  61328c: e3a04001     	mov	r4, #1
  613290: eaffffb0     	b	0x613158 <glitch::collada::animation_track::CBlender<glitch::core::quaternion, 1, glitch::core::quaternion>::getBlendedValueEx(void*, float*, int, void*)+0x84> @ imm = #-0x140

; quaternion_float_apply_direct_wrapper: Address-point wrapper for direct quaternion apply.
; ELF VA=0x006208e4, file offset=0x006208e4, size=20, SHA-256=23afc2c31ddc5267252711ec3682875f5399b9f91392ff32c034e0b9de41167c
006208e4 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const>:
  6208e4: e1a00001     	mov	r0, r1
  6208e8: e1a01002     	mov	r1, r2
  6208ec: e1a02003     	mov	r2, r3
  6208f0: e59d3000     	ldr	r3, [sp]
  6208f4: eaffffda     	b	0x620864 <glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)> @ imm = #-0x98

; quaternion_float_apply_direct: Copies one quaternion key and calls the applicator vtable.
; ELF VA=0x00620864, file offset=0x00620864, size=128, SHA-256=b5c929e5a83095a78b86e6be36c99145fc28b528c29e30897f0e22565984e0f5
00620864 <glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)>:
  620864: e92d4030     	push	{r4, r5, lr}
  620868: e3a03000     	mov	r3, #0
  62086c: e24dd014     	sub	sp, sp, #20
  620870: e1a04001     	mov	r4, r1
  620874: e3a0c5fe     	mov	r12, #1065353216
  620878: e3a01000     	mov	r1, #0
  62087c: e1a05002     	mov	r5, r2
  620880: e58d3008     	str	r3, [sp, #0x8]
  620884: e58dc00c     	str	r12, [sp, #0xc]
  620888: e58d3000     	str	r3, [sp]
  62088c: e58d3004     	str	r3, [sp, #0x4]
  620890: eb012563     	bl	0x669e24 <glitch::collada::SAnimationAccessor::getOutput(int) const> @ imm = #0x4958c
  620894: e5903004     	ldr	r3, [r0, #0x4]
  620898: e28d1010     	add	r1, sp, #16
  62089c: e1a00005     	mov	r0, r5
  6208a0: e7932204     	ldr	r2, [r3, r4, lsl #4]
  6208a4: e0834204     	add	r4, r3, r4, lsl #4
  6208a8: e284c004     	add	r12, r4, #4
  6208ac: e5212010     	str	r2, [r1, #-0x10]!
  6208b0: e5943004     	ldr	r3, [r4, #0x4]
  6208b4: e2812004     	add	r2, r1, #4
  6208b8: e1a0100d     	mov	r1, sp
  6208bc: e58d3004     	str	r3, [sp, #0x4]
  6208c0: e59ce004     	ldr	lr, [r12, #0x4]
  6208c4: e5953000     	ldr	r3, [r5]
  6208c8: e582e004     	str	lr, [r2, #0x4]
  6208cc: e59cc008     	ldr	r12, [r12, #0x8]
  6208d0: e582c008     	str	r12, [r2, #0x8]
  6208d4: e1a0e00f     	mov	lr, pc
  6208d8: e593f09c     	ldr	pc, [r3, #0x9c]
  6208dc: e28dd014     	add	sp, sp, #20
  6208e0: e8bd8030     	pop	{r4, r5, pc}

; quaternion_float_apply_interpolation_wrapper: Address-point wrapper for interpolated quaternion apply.
; ELF VA=0x00620944, file offset=0x00620944, size=36, SHA-256=5d2f3a2e13a9b59c9adf29f786e769e4ad146eba5226e1e196a38f8d3345bfd7
00620944 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const>:
  620944: e59dc004     	ldr	r12, [sp, #0x4]
  620948: e1a00001     	mov	r0, r1
  62094c: e1a01002     	mov	r1, r2
  620950: e1a02003     	mov	r2, r3
  620954: e59d3000     	ldr	r3, [sp]
  620958: e58dc000     	str	r12, [sp]
  62095c: e59dc008     	ldr	r12, [sp, #0x8]
  620960: e58dc004     	str	r12, [sp, #0x4]
  620964: eaffffe3     	b	0x6208f8 <glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)> @ imm = #-0x74

; quaternion_float_apply_interpolated: Calls the float4 quaternion interpreter, then the applicator vtable.
; ELF VA=0x006208f8, file offset=0x006208f8, size=76, SHA-256=ad1a4b9f36d9b3427cd81a4b13899abda52c4edb2f2c60ef7a7bf941874171cd
006208f8 <glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)>:
  6208f8: e92d4030     	push	{r4, r5, lr}
  6208fc: e24dd01c     	sub	sp, sp, #28
  620900: e59d4028     	ldr	r4, [sp, #0x28]
  620904: e3a0c000     	mov	r12, #0
  620908: e28d5008     	add	r5, sp, #8
  62090c: e3a0e5fe     	mov	lr, #1065353216
  620910: e58dc010     	str	r12, [sp, #0x10]
  620914: e58de014     	str	lr, [sp, #0x14]
  620918: e58dc008     	str	r12, [sp, #0x8]
  62091c: e58dc00c     	str	r12, [sp, #0xc]
  620920: e58d5000     	str	r5, [sp]
  620924: ebffca5a     	bl	0x613294 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>, float, 4, glitch::collada::animation_track::SUseDefaultLerp<float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)> @ imm = #-0xd698
  620928: e1a00004     	mov	r0, r4
  62092c: e1a01005     	mov	r1, r5
  620930: e5943000     	ldr	r3, [r4]
  620934: e1a0e00f     	mov	lr, pc
  620938: e593f09c     	ldr	pc, [r3, #0x9c]
  62093c: e28dd01c     	add	sp, sp, #28
  620940: e8bd8030     	pop	{r4, r5, pc}

; quaternion_float_get_indexed_direct_wrapper: Wrapper for the separate two-index quaternion overload.
; ELF VA=0x0061d0ec, file offset=0x0061d0ec, size=20, SHA-256=e5de6b97ba9d48d8e6c4271a7dc3e2b4078b49b89756e901b4d8d57c278ad2e8
0061d0ec <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const>:
  61d0ec: e1a00001     	mov	r0, r1
  61d0f0: e1a01002     	mov	r1, r2
  61d0f4: e1a02003     	mov	r2, r3
  61d0f8: e59d3000     	ldr	r3, [sp]
  61d0fc: eaffffb5     	b	0x61cfd8 <glitch::collada::animation_track::CInterpreterQuaternion<glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>, float>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, void*)> @ imm = #-0x12c

; quaternion_float_get_indexed_direct: Reads two quaternion records, conjugates one, and calls quaternion multiply.
; ELF VA=0x0061cfd8, file offset=0x0061cfd8, size=276, SHA-256=6c8abf322629349921da20a12bb9d0cf925fe2b3ae2dfcd122729e2d3934ef01
0061cfd8 <glitch::collada::animation_track::CInterpreterQuaternion<glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>, float>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, void*)>:
  61cfd8: e92d41f0     	push	{r4, r5, r6, r7, r8, lr}
  61cfdc: e3a0c000     	mov	r12, #0
  61cfe0: e24dd030     	sub	sp, sp, #48
  61cfe4: e3a0e5fe     	mov	lr, #1065353216
  61cfe8: e1a04001     	mov	r4, r1
  61cfec: e3a01000     	mov	r1, #0
  61cff0: e1a05003     	mov	r5, r3
  61cff4: e1a07002     	mov	r7, r2
  61cff8: e58de01c     	str	lr, [sp, #0x1c]
  61cffc: e58de02c     	str	lr, [sp, #0x2c]
  61d000: e58dc018     	str	r12, [sp, #0x18]
  61d004: e58dc020     	str	r12, [sp, #0x20]
  61d008: e58dc024     	str	r12, [sp, #0x24]
  61d00c: e58dc028     	str	r12, [sp, #0x28]
  61d010: e58dc010     	str	r12, [sp, #0x10]
  61d014: e58dc014     	str	r12, [sp, #0x14]
  61d018: e1a08000     	mov	r8, r0
  61d01c: eb013380     	bl	0x669e24 <glitch::collada::SAnimationAccessor::getOutput(int) const> @ imm = #0x4ce00
  61d020: e5903004     	ldr	r3, [r0, #0x4]
  61d024: e28d6030     	add	r6, sp, #48
  61d028: e1a00008     	mov	r0, r8
  61d02c: e7931207     	ldr	r1, [r3, r7, lsl #4]
  61d030: e0837207     	add	r7, r3, r7, lsl #4
  61d034: e2872004     	add	r2, r7, #4
  61d038: e5261010     	str	r1, [r6, #-0x10]!
  61d03c: e597c004     	ldr	r12, [r7, #0x4]
  61d040: e2863004     	add	r3, r6, #4
  61d044: e3a01000     	mov	r1, #0
  61d048: e58dc024     	str	r12, [sp, #0x24]
  61d04c: e592c004     	ldr	r12, [r2, #0x4]
  61d050: e583c004     	str	r12, [r3, #0x4]
  61d054: e5922008     	ldr	r2, [r2, #0x8]
  61d058: e5832008     	str	r2, [r3, #0x8]
  61d05c: eb013370     	bl	0x669e24 <glitch::collada::SAnimationAccessor::getOutput(int) const> @ imm = #0x4cdc0
  61d060: e5903004     	ldr	r3, [r0, #0x4]
  61d064: e28d1030     	add	r1, sp, #48
  61d068: e1a02006     	mov	r2, r6
  61d06c: e7930204     	ldr	r0, [r3, r4, lsl #4]
  61d070: e0834204     	add	r4, r3, r4, lsl #4
  61d074: e284c004     	add	r12, r4, #4
  61d078: e5210020     	str	r0, [r1, #-0x20]!
  61d07c: e5940004     	ldr	r0, [r4, #0x4]
  61d080: e2813004     	add	r3, r1, #4
  61d084: e58d0014     	str	r0, [sp, #0x14]
  61d088: e59ce004     	ldr	lr, [r12, #0x4]
  61d08c: e1a0000d     	mov	r0, sp
  61d090: e583e004     	str	lr, [r3, #0x4]
  61d094: e59cc008     	ldr	r12, [r12, #0x8]
  61d098: e583c008     	str	r12, [r3, #0x8]
  61d09c: e59de010     	ldr	lr, [sp, #0x10]
  61d0a0: e59dc014     	ldr	r12, [sp, #0x14]
  61d0a4: e59d3018     	ldr	r3, [sp, #0x18]
  61d0a8: e28ee102     	add	lr, lr, #-2147483648
  61d0ac: e28cc102     	add	r12, r12, #-2147483648
  61d0b0: e2833102     	add	r3, r3, #-2147483648
  61d0b4: e58d3018     	str	r3, [sp, #0x18]
  61d0b8: e58de010     	str	lr, [sp, #0x10]
  61d0bc: e58dc014     	str	r12, [sp, #0x14]
  61d0c0: ebffc31b     	bl	0x60dd34 <glitch::core::quaternion::operator*(glitch::core::quaternion const&) const> @ imm = #-0xf394
  61d0c4: e59d1004     	ldr	r1, [sp, #0x4]
  61d0c8: e59d3008     	ldr	r3, [sp, #0x8]
  61d0cc: e59d200c     	ldr	r2, [sp, #0xc]
  61d0d0: e59d0000     	ldr	r0, [sp]
  61d0d4: e5851004     	str	r1, [r5, #0x4]
  61d0d8: e585200c     	str	r2, [r5, #0xc]
  61d0dc: e5850000     	str	r0, [r5]
  61d0e0: e5853008     	str	r3, [r5, #0x8]
  61d0e4: e28dd030     	add	sp, sp, #48
  61d0e8: e8bd81f0     	pop	{r4, r5, r6, r7, r8, pc}

; quaternion_float_get_indexed_interpolation_wrapper: Wrapper for the separate three-index quaternion overload.
; ELF VA=0x0061d2a8, file offset=0x0061d2a8, size=36, SHA-256=5c38c6f7b2cdc2deea015dbadd3b73454d9d6b5a1e8eb1d8813f91a53240e1ab
0061d2a8 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const>:
  61d2a8: e59dc004     	ldr	r12, [sp, #0x4]
  61d2ac: e1a00001     	mov	r0, r1
  61d2b0: e1a01002     	mov	r1, r2
  61d2b4: e1a02003     	mov	r2, r3
  61d2b8: e59d3000     	ldr	r3, [sp]
  61d2bc: e58dc000     	str	r12, [sp]
  61d2c0: e59dc008     	ldr	r12, [sp, #0x8]
  61d2c4: e58dc004     	str	r12, [sp, #0x4]
  61d2c8: eaffff8c     	b	0x61d100 <glitch::collada::animation_track::CInterpreterQuaternion<glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>, float>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)> @ imm = #-0x1d0

; quaternion_float_get_indexed_interpolated: Reads three indexed records, slerps one pair, conjugates another, and multiplies.
; ELF VA=0x0061d100, file offset=0x0061d100, size=424, SHA-256=d2f2a02ecda98e1159e09c7e5545381ba4576c82803a1238e117c32ab65f5079
0061d100 <glitch::collada::animation_track::CInterpreterQuaternion<glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>, float>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)>:
  61d100: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  61d104: e3a0c000     	mov	r12, #0
  61d108: e24dd06c     	sub	sp, sp, #108
  61d10c: e3a0e5fe     	mov	lr, #1065353216
  61d110: e1a07001     	mov	r7, r1
  61d114: e3a01000     	mov	r1, #0
  61d118: e58de034     	str	lr, [sp, #0x34]
  61d11c: e58de064     	str	lr, [sp, #0x64]
  61d120: e58de054     	str	lr, [sp, #0x54]
  61d124: e58de044     	str	lr, [sp, #0x44]
  61d128: e59d5094     	ldr	r5, [sp, #0x94]
  61d12c: e1a06002     	mov	r6, r2
  61d130: e1a09003     	mov	r9, r3
  61d134: e1a0b000     	mov	r11, r0
  61d138: e58dc030     	str	r12, [sp, #0x30]
  61d13c: e58dc058     	str	r12, [sp, #0x58]
  61d140: e58dc05c     	str	r12, [sp, #0x5c]
  61d144: e58dc060     	str	r12, [sp, #0x60]
  61d148: e58dc048     	str	r12, [sp, #0x48]
  61d14c: e58dc04c     	str	r12, [sp, #0x4c]
  61d150: e58dc050     	str	r12, [sp, #0x50]
  61d154: e58dc038     	str	r12, [sp, #0x38]
  61d158: e58dc03c     	str	r12, [sp, #0x3c]
  61d15c: e58dc040     	str	r12, [sp, #0x40]
  61d160: e58dc028     	str	r12, [sp, #0x28]
  61d164: e58dc02c     	str	r12, [sp, #0x2c]
  61d168: eb01332d     	bl	0x669e24 <glitch::collada::SAnimationAccessor::getOutput(int) const> @ imm = #0x4ccb4
  61d16c: e5903004     	ldr	r3, [r0, #0x4]
  61d170: e28d4068     	add	r4, sp, #104
  61d174: e3a01000     	mov	r1, #0
  61d178: e7930206     	ldr	r0, [r3, r6, lsl #4]
  61d17c: e0836206     	add	r6, r3, r6, lsl #4
  61d180: e2862004     	add	r2, r6, #4
  61d184: e5240010     	str	r0, [r4, #-0x10]!
  61d188: e596c004     	ldr	r12, [r6, #0x4]
  61d18c: e2843004     	add	r3, r4, #4
  61d190: e1a0000b     	mov	r0, r11
  61d194: e58dc05c     	str	r12, [sp, #0x5c]
  61d198: e592c004     	ldr	r12, [r2, #0x4]
  61d19c: e28da068     	add	r10, sp, #104
  61d1a0: e1a0600a     	mov	r6, r10
  61d1a4: e583c004     	str	r12, [r3, #0x4]
  61d1a8: e5922008     	ldr	r2, [r2, #0x8]
  61d1ac: e28d8038     	add	r8, sp, #56
  61d1b0: e5832008     	str	r2, [r3, #0x8]
  61d1b4: eb01331a     	bl	0x669e24 <glitch::collada::SAnimationAccessor::getOutput(int) const> @ imm = #0x4cc68
  61d1b8: e5902004     	ldr	r2, [r0, #0x4]
  61d1bc: e3a01000     	mov	r1, #0
  61d1c0: e1a0000b     	mov	r0, r11
  61d1c4: e7923209     	ldr	r3, [r2, r9, lsl #4]
  61d1c8: e0829209     	add	r9, r2, r9, lsl #4
  61d1cc: e2892004     	add	r2, r9, #4
  61d1d0: e52a3020     	str	r3, [r10, #-0x20]!
  61d1d4: e599c004     	ldr	r12, [r9, #0x4]
  61d1d8: e28a3004     	add	r3, r10, #4
  61d1dc: e58dc04c     	str	r12, [sp, #0x4c]
  61d1e0: e592c004     	ldr	r12, [r2, #0x4]
  61d1e4: e583c004     	str	r12, [r3, #0x4]
  61d1e8: e5922008     	ldr	r2, [r2, #0x8]
  61d1ec: e5832008     	str	r2, [r3, #0x8]
  61d1f0: eb01330b     	bl	0x669e24 <glitch::collada::SAnimationAccessor::getOutput(int) const> @ imm = #0x4cc2c
  61d1f4: e5903004     	ldr	r3, [r0, #0x4]
  61d1f8: e28dc004     	add	r12, sp, #4
  61d1fc: e7931207     	ldr	r1, [r3, r7, lsl #4]
  61d200: e0837207     	add	r7, r3, r7, lsl #4
  61d204: e2872004     	add	r2, r7, #4
  61d208: e5261040     	str	r1, [r6, #-0x40]!
  61d20c: e5971004     	ldr	r1, [r7, #0x4]
  61d210: e2863004     	add	r3, r6, #4
  61d214: e58d102c     	str	r1, [sp, #0x2c]
  61d218: e5921004     	ldr	r1, [r2, #0x4]
  61d21c: e5831004     	str	r1, [r3, #0x4]
  61d220: e5922008     	ldr	r2, [r2, #0x8]
  61d224: e5832008     	str	r2, [r3, #0x8]
  61d228: e89a000f     	ldm	r10, {r0, r1, r2, r3}
  61d22c: e88c000f     	stm	r12, {r0, r1, r2, r3}
  61d230: e59dc090     	ldr	r12, [sp, #0x90]
  61d234: e894000e     	ldm	r4, {r1, r2, r3}
  61d238: e1a00008     	mov	r0, r8
  61d23c: e58dc014     	str	r12, [sp, #0x14]
  61d240: e59dc064     	ldr	r12, [sp, #0x64]
  61d244: e58dc000     	str	r12, [sp]
  61d248: ebffd6ac     	bl	0x612d00 <glitch::core::quaternion::slerp(glitch::core::quaternion, glitch::core::quaternion, float)> @ imm = #-0xa550
  61d24c: e59de028     	ldr	lr, [sp, #0x28]
  61d250: e59dc02c     	ldr	r12, [sp, #0x2c]
  61d254: e59d3030     	ldr	r3, [sp, #0x30]
  61d258: e28ee102     	add	lr, lr, #-2147483648
  61d25c: e28cc102     	add	r12, r12, #-2147483648
  61d260: e2833102     	add	r3, r3, #-2147483648
  61d264: e1a01006     	mov	r1, r6
  61d268: e1a02008     	mov	r2, r8
  61d26c: e28d0018     	add	r0, sp, #24
  61d270: e58d3030     	str	r3, [sp, #0x30]
  61d274: e58de028     	str	lr, [sp, #0x28]
  61d278: e58dc02c     	str	r12, [sp, #0x2c]
  61d27c: ebffc2ac     	bl	0x60dd34 <glitch::core::quaternion::operator*(glitch::core::quaternion const&) const> @ imm = #-0xf550
  61d280: e59d101c     	ldr	r1, [sp, #0x1c]
  61d284: e59d3020     	ldr	r3, [sp, #0x20]
  61d288: e59d2024     	ldr	r2, [sp, #0x24]
  61d28c: e59d0018     	ldr	r0, [sp, #0x18]
  61d290: e5851004     	str	r1, [r5, #0x4]
  61d294: e585200c     	str	r2, [r5, #0xc]
  61d298: e5850000     	str	r0, [r5]
  61d29c: e5853008     	str	r3, [r5, #0x8]
  61d2a0: e28dd06c     	add	sp, sp, #108
  61d2a4: e8bd8ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}

; scale_float_get_direct: Direct float3 key getter copies one 12-byte output record.
; ELF VA=0x00612394, file offset=0x00612394, size=72, SHA-256=de7f72557ebfa161b96ef1588378fc8e82a0a793a1a8c98160202bb1d274eb9c
00612394 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const>:
  612394: e92d4070     	push	{r4, r5, r6, lr}
  612398: e1a00001     	mov	r0, r1
  61239c: e3a01000     	mov	r1, #0
  6123a0: e1a04003     	mov	r4, r3
  6123a4: e1a05002     	mov	r5, r2
  6123a8: eb015e9d     	bl	0x669e24 <glitch::collada::SAnimationAccessor::getOutput(int) const> @ imm = #0x57a74
  6123ac: e3a0300c     	mov	r3, #12
  6123b0: e5902004     	ldr	r2, [r0, #0x4]
  6123b4: e0050593     	mul	r5, r3, r5
  6123b8: e1a03004     	mov	r3, r4
  6123bc: e7921005     	ldr	r1, [r2, r5]
  6123c0: e0825005     	add	r5, r2, r5
  6123c4: e4831004     	str	r1, [r3], #4
  6123c8: e5952004     	ldr	r2, [r5, #0x4]
  6123cc: e5842004     	str	r2, [r4, #0x4]
  6123d0: e5952008     	ldr	r2, [r5, #0x8]
  6123d4: e5832004     	str	r2, [r3, #0x4]
  6123d8: e8bd8070     	pop	{r4, r5, r6, pc}

; scale_float_get_interpolation_wrapper: Address-point wrapper for interpolated scale getter.
; ELF VA=0x006289b8, file offset=0x006289b8, size=28, SHA-256=400d3368b04a0571c9dc975f1980d6ae19a5463f24aa7a15c9485d413aec2fe5
006289b8 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float>>>::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const>:
  6289b8: e1a00001     	mov	r0, r1
  6289bc: e59dc004     	ldr	r12, [sp, #0x4]
  6289c0: e1a01002     	mov	r1, r2
  6289c4: e1a02003     	mov	r2, r3
  6289c8: e59d3000     	ldr	r3, [sp]
  6289cc: e58dc000     	str	r12, [sp]
  6289d0: eaffff9e     	b	0x628850 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleMixin<float>, float, 3, glitch::collada::animation_track::SUseDefaultLerp<float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)> @ imm = #-0x188

; scale_float_interpreter: Interpolates three adjacent-key float components.
; ELF VA=0x00628850, file offset=0x00628850, size=256, SHA-256=6337fc51cd454293f3c78e0f932d498624fd4c2a3645c1418f785121b88a0b1c
00628850 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleMixin<float>, float, 3, glitch::collada::animation_track::SUseDefaultLerp<float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)>:
  628850: e92d47f0     	push	{r4, r5, r6, r7, r8, r9, r10, lr}
  628854: e1a07001     	mov	r7, r1
  628858: e24dd008     	sub	sp, sp, #8
  62885c: e3a01000     	mov	r1, #0
  628860: e1a04003     	mov	r4, r3
  628864: e59d6028     	ldr	r6, [sp, #0x28]
  628868: eb01056d     	bl	0x669e24 <glitch::collada::SAnimationAccessor::getOutput(int) const> @ imm = #0x415b4
  62886c: e1a01004     	mov	r1, r4
  628870: e1a08000     	mov	r8, r0
  628874: e3a005fe     	mov	r0, #1065353216
  628878: ebf396cb     	bl	0x30e3ac <__aeabi_fsub@plt> @ imm = #-0x31a4d4
  62887c: e58d4004     	str	r4, [sp, #0x4]
  628880: e58d0000     	str	r0, [sp]
  628884: e3a0300c     	mov	r3, #12
  628888: e0070793     	mul	r7, r3, r7
  62888c: e5983004     	ldr	r3, [r8, #0x4]
  628890: e1a05000     	mov	r5, r0
  628894: e7931007     	ldr	r1, [r3, r7]
  628898: e0837007     	add	r7, r3, r7
  62889c: ebf39932     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x319b38
  6288a0: e3a01000     	mov	r1, #0
  6288a4: ebf398be     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x319d08
  6288a8: e5971004     	ldr	r1, [r7, #0x4]
  6288ac: e1a08000     	mov	r8, r0
  6288b0: e1a00005     	mov	r0, r5
  6288b4: ebf3992c     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x319b50
  6288b8: e3a01000     	mov	r1, #0
  6288bc: ebf398b8     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x319d20
  6288c0: e2877004     	add	r7, r7, #4
  6288c4: e5971004     	ldr	r1, [r7, #0x4]
  6288c8: e1a0a000     	mov	r10, r0
  6288cc: e1a00005     	mov	r0, r5
  6288d0: ebf39925     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x319b6c
  6288d4: e3a01000     	mov	r1, #0
  6288d8: ebf398b1     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x319d3c
  6288dc: e2875004     	add	r5, r7, #4
  6288e0: e2859004     	add	r9, r5, #4
  6288e4: e5991004     	ldr	r1, [r9, #0x4]
  6288e8: e1a07000     	mov	r7, r0
  6288ec: e1a00004     	mov	r0, r4
  6288f0: ebf3991d     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x319b8c
  6288f4: e1a01000     	mov	r1, r0
  6288f8: e1a0000a     	mov	r0, r10
  6288fc: ebf398a8     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x319d60
  628900: e2899004     	add	r9, r9, #4
  628904: e5991004     	ldr	r1, [r9, #0x4]
  628908: e1a0a000     	mov	r10, r0
  62890c: e1a00004     	mov	r0, r4
  628910: ebf39915     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x319bac
  628914: e1a01007     	mov	r1, r7
  628918: ebf398a1     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x319d7c
  62891c: e5951004     	ldr	r1, [r5, #0x4]
  628920: e1a07000     	mov	r7, r0
  628924: e1a00004     	mov	r0, r4
  628928: ebf3990f     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x319bc4
  62892c: e1a01000     	mov	r1, r0
  628930: e1a00008     	mov	r0, r8
  628934: ebf3989a     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x319d98
  628938: e1a03006     	mov	r3, r6
  62893c: e4830004     	str	r0, [r3], #4
  628940: e586a004     	str	r10, [r6, #0x4]
  628944: e5837004     	str	r7, [r3, #0x4]
  628948: e28dd008     	add	sp, sp, #8
  62894c: e8bd87f0     	pop	{r4, r5, r6, r7, r8, r9, r10, pc}

; scale_float_apply_direct_wrapper: Address-point wrapper for direct scale apply.
; ELF VA=0x006239c4, file offset=0x006239c4, size=20, SHA-256=2f3926d2c059ae7061cd49b95cd9f528b15c8b3005ec47207ae78800ed7c22f7
006239c4 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const>:
  6239c4: e1a00001     	mov	r0, r1
  6239c8: e1a01002     	mov	r1, r2
  6239cc: e1a02003     	mov	r2, r3
  6239d0: e59d3000     	ldr	r3, [sp]
  6239d4: eaffffde     	b	0x623954 <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)> @ imm = #-0x88

; scale_float_apply_direct: Copies one float3 key and calls the applicator vtable.
; ELF VA=0x00623954, file offset=0x00623954, size=112, SHA-256=1280ae739c78cd145a8037eea45cd9a1afbcf2da605a3b2b9f8f4facd1d46712
00623954 <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)>:
  623954: e92d4030     	push	{r4, r5, lr}
  623958: e3a03000     	mov	r3, #0
  62395c: e24dd014     	sub	sp, sp, #20
  623960: e1a04001     	mov	r4, r1
  623964: e3a01000     	mov	r1, #0
  623968: e1a05002     	mov	r5, r2
  62396c: e58d300c     	str	r3, [sp, #0xc]
  623970: e58d3004     	str	r3, [sp, #0x4]
  623974: e58d3008     	str	r3, [sp, #0x8]
  623978: eb011929     	bl	0x669e24 <glitch::collada::SAnimationAccessor::getOutput(int) const> @ imm = #0x464a4
  62397c: e3a0300c     	mov	r3, #12
  623980: e0040493     	mul	r4, r3, r4
  623984: e5903004     	ldr	r3, [r0, #0x4]
  623988: e28d2010     	add	r2, sp, #16
  62398c: e1a00005     	mov	r0, r5
  623990: e7931004     	ldr	r1, [r3, r4]
  623994: e0834004     	add	r4, r3, r4
  623998: e5953000     	ldr	r3, [r5]
  62399c: e522100c     	str	r1, [r2, #-0xc]!
  6239a0: e594c004     	ldr	r12, [r4, #0x4]
  6239a4: e1a01002     	mov	r1, r2
  6239a8: e58dc008     	str	r12, [sp, #0x8]
  6239ac: e594c008     	ldr	r12, [r4, #0x8]
  6239b0: e582c008     	str	r12, [r2, #0x8]
  6239b4: e1a0e00f     	mov	lr, pc
  6239b8: e593f094     	ldr	pc, [r3, #0x94]
  6239bc: e28dd014     	add	sp, sp, #20
  6239c0: e8bd8030     	pop	{r4, r5, pc}

; scale_float_apply_interpolation_wrapper: Address-point wrapper for interpolated scale apply.
; ELF VA=0x00628994, file offset=0x00628994, size=36, SHA-256=ee0724f4e95b9d2428a132e61278f4709cb3e2137ad2676bd32b535c9ee25e27
00628994 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float>>>::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const>:
  628994: e59dc004     	ldr	r12, [sp, #0x4]
  628998: e1a00001     	mov	r0, r1
  62899c: e1a01002     	mov	r1, r2
  6289a0: e1a02003     	mov	r2, r3
  6289a4: e59d3000     	ldr	r3, [sp]
  6289a8: e58dc000     	str	r12, [sp]
  6289ac: e59dc008     	ldr	r12, [sp, #0x8]
  6289b0: e58dc004     	str	r12, [sp, #0x4]
  6289b4: eaffffe5     	b	0x628950 <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)> @ imm = #-0x6c

; scale_float_apply_interpolated: Calls the float3 interpreter, then the applicator vtable.
; ELF VA=0x00628950, file offset=0x00628950, size=68, SHA-256=36d724b84c1998045c0233b9e5584ca76482e821a91d2b716bb23b7829dad1fc
00628950 <glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float>>::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)>:
  628950: e92d4030     	push	{r4, r5, lr}
  628954: e24dd01c     	sub	sp, sp, #28
  628958: e59d4028     	ldr	r4, [sp, #0x28]
  62895c: e3a0c000     	mov	r12, #0
  628960: e28d500c     	add	r5, sp, #12
  628964: e58d5000     	str	r5, [sp]
  628968: e58dc014     	str	r12, [sp, #0x14]
  62896c: e58dc00c     	str	r12, [sp, #0xc]
  628970: e58dc010     	str	r12, [sp, #0x10]
  628974: ebffffb5     	bl	0x628850 <glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleMixin<float>, float, 3, glitch::collada::animation_track::SUseDefaultLerp<float>>::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)> @ imm = #-0x12c
  628978: e1a00004     	mov	r0, r4
  62897c: e1a01005     	mov	r1, r5
  628980: e5943000     	ldr	r3, [r4]
  628984: e1a0e00f     	mov	lr, pc
  628988: e593f094     	ldr	pc, [r3, #0x94]
  62898c: e28dd01c     	add	sp, sp, #28
  628990: e8bd8030     	pop	{r4, r5, pc}

; quaternion_slerp_call_target: Engine quaternion spherical-interpolation routine called by the track blender.
; ELF VA=0x00612d00, file offset=0x00612d00, size=980, SHA-256=320c09ce496f978ca29941c242952215c5636791faebe2028c5623199a788c1b
00612d00 <glitch::core::quaternion::slerp(glitch::core::quaternion, glitch::core::quaternion, float)>:
  612d00: e24dd010     	sub	sp, sp, #16
  612d04: e92d4ff0     	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  612d08: e24dd01c     	sub	sp, sp, #28
  612d0c: e28dc044     	add	r12, sp, #68
  612d10: e88c000e     	stm	r12, {r1, r2, r3}
  612d14: e59db054     	ldr	r11, [sp, #0x54]
  612d18: e59d9044     	ldr	r9, [sp, #0x44]
  612d1c: e59d3058     	ldr	r3, [sp, #0x58]
  612d20: e1a0100b     	mov	r1, r11
  612d24: e1a04000     	mov	r4, r0
  612d28: e1a00009     	mov	r0, r9
  612d2c: e58d300c     	str	r3, [sp, #0xc]
  612d30: ebf3f00d     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x303fcc
  612d34: e59da048     	ldr	r10, [sp, #0x48]
  612d38: e1a05000     	mov	r5, r0
  612d3c: e59d100c     	ldr	r1, [sp, #0xc]
  612d40: e1a0000a     	mov	r0, r10
  612d44: ebf3f008     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x303fe0
  612d48: e59d305c     	ldr	r3, [sp, #0x5c]
  612d4c: e1a01000     	mov	r1, r0
  612d50: e1a00005     	mov	r0, r5
  612d54: e58d3008     	str	r3, [sp, #0x8]
  612d58: ebf3ef91     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x3041bc
  612d5c: e59d804c     	ldr	r8, [sp, #0x4c]
  612d60: e1a05000     	mov	r5, r0
  612d64: e59d1008     	ldr	r1, [sp, #0x8]
  612d68: e1a00008     	mov	r0, r8
  612d6c: ebf3effe     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x304008
  612d70: e59d3060     	ldr	r3, [sp, #0x60]
  612d74: e1a01000     	mov	r1, r0
  612d78: e1a00005     	mov	r0, r5
  612d7c: e58d3004     	str	r3, [sp, #0x4]
  612d80: ebf3ef87     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x3041e4
  612d84: e59d7050     	ldr	r7, [sp, #0x50]
  612d88: e1a05000     	mov	r5, r0
  612d8c: e59d1004     	ldr	r1, [sp, #0x4]
  612d90: e1a00007     	mov	r0, r7
  612d94: ebf3eff4     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x304030
  612d98: e1a01000     	mov	r1, r0
  612d9c: e1a00005     	mov	r0, r5
  612da0: ebf3ef7f     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x304204
  612da4: e3a01000     	mov	r1, #0
  612da8: e1a06000     	mov	r6, r0
  612dac: ebf3ee56     	bl	0x30e70c <__aeabi_fcmplt@plt> @ imm = #-0x3046a8
  612db0: e3500000     	cmp	r0, #0
  612db4: 12866102     	addne	r6, r6, #-2147483648
  612db8: e3a015fe     	mov	r1, #1065353216
  612dbc: e1a00006     	mov	r0, r6
  612dc0: 12899102     	addne	r9, r9, #-2147483648
  612dc4: 128aa102     	addne	r10, r10, #-2147483648
  612dc8: 12888102     	addne	r8, r8, #-2147483648
  612dcc: 12877102     	addne	r7, r7, #-2147483648
  612dd0: ebf3ef73     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x304234
  612dd4: e30c1ccd     	movw	r1, #0xcccd
  612dd8: e3431d4c     	movt	r1, #0x3d4c
  612ddc: ebf3ed45     	bl	0x30e2f8 <__aeabi_fcmpgt@plt> @ imm = #-0x304aec
  612de0: e3500000     	cmp	r0, #0
  612de4: e59d5064     	ldr	r5, [sp, #0x64]
  612de8: 0a000048     	beq	0x612f10 <glitch::core::quaternion::slerp(glitch::core::quaternion, glitch::core::quaternion, float)+0x210> @ imm = #0x120
  612dec: e1a01006     	mov	r1, r6
  612df0: e3a005fe     	mov	r0, #1065353216
  612df4: ebf3ed6c     	bl	0x30e3ac <__aeabi_fsub@plt> @ imm = #-0x304a50
  612df8: e30c1ccd     	movw	r1, #0xcccd
  612dfc: e3431d4c     	movt	r1, #0x3d4c
  612e00: ebf3edab     	bl	0x30e4b4 <__aeabi_fcmpge@plt> @ imm = #-0x304954
  612e04: e3500000     	cmp	r0, #0
  612e08: 0a00007f     	beq	0x61300c <glitch::core::quaternion::slerp(glitch::core::quaternion, glitch::core::quaternion, float)+0x30c> @ imm = #0x1fc
  612e0c: e1a00006     	mov	r0, r6
  612e10: ebf3ed71     	bl	0x30e3dc <acosf@plt>    @ imm = #-0x304a3c
  612e14: e58d0010     	str	r0, [sp, #0x10]
  612e18: ebf3ef3a     	bl	0x30eb08 <sinf@plt>     @ imm = #-0x304318
  612e1c: e1a01000     	mov	r1, r0
  612e20: e3a005fe     	mov	r0, #1065353216
  612e24: ebf3ef9a     	bl	0x30ec94 <__aeabi_fdiv@plt> @ imm = #-0x304198
  612e28: e1a01005     	mov	r1, r5
  612e2c: e58d0014     	str	r0, [sp, #0x14]
  612e30: e3a005fe     	mov	r0, #1065353216
  612e34: ebf3ed5c     	bl	0x30e3ac <__aeabi_fsub@plt> @ imm = #-0x304a90
  612e38: e1a01000     	mov	r1, r0
  612e3c: e59d0010     	ldr	r0, [sp, #0x10]
  612e40: ebf3efc9     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3040dc
  612e44: ebf3ef2f     	bl	0x30eb08 <sinf@plt>     @ imm = #-0x304344
  612e48: e59d1014     	ldr	r1, [sp, #0x14]
  612e4c: ebf3efc6     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3040e8
  612e50: e1a01005     	mov	r1, r5
  612e54: e1a06000     	mov	r6, r0
  612e58: e59d0010     	ldr	r0, [sp, #0x10]
  612e5c: ebf3efc2     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3040f8
  612e60: ebf3ef28     	bl	0x30eb08 <sinf@plt>     @ imm = #-0x304360
  612e64: e59d1014     	ldr	r1, [sp, #0x14]
  612e68: ebf3efbf     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x304104
  612e6c: e1a01009     	mov	r1, r9
  612e70: e1a05000     	mov	r5, r0
  612e74: e1a00006     	mov	r0, r6
  612e78: ebf3efbb     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x304114
  612e7c: e1a0100b     	mov	r1, r11
  612e80: e1a09000     	mov	r9, r0
  612e84: e1a00005     	mov	r0, r5
  612e88: ebf3efb7     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x304124
  612e8c: e1a01000     	mov	r1, r0
  612e90: e1a00009     	mov	r0, r9
  612e94: ebf3ef42     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x3042f8
  612e98: e1a0100a     	mov	r1, r10
  612e9c: e5840000     	str	r0, [r4]
  612ea0: e1a00006     	mov	r0, r6
  612ea4: ebf3efb0     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x304140
  612ea8: e59d100c     	ldr	r1, [sp, #0xc]
  612eac: e1a0a000     	mov	r10, r0
  612eb0: e1a00005     	mov	r0, r5
  612eb4: ebf3efac     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x304150
  612eb8: e1a01000     	mov	r1, r0
  612ebc: e1a0000a     	mov	r0, r10
  612ec0: ebf3ef37     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x304324
  612ec4: e1a01008     	mov	r1, r8
  612ec8: e5840004     	str	r0, [r4, #0x4]
  612ecc: e1a00006     	mov	r0, r6
  612ed0: ebf3efa5     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x30416c
  612ed4: e59d1008     	ldr	r1, [sp, #0x8]
  612ed8: e1a08000     	mov	r8, r0
  612edc: e1a00005     	mov	r0, r5
  612ee0: ebf3efa1     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x30417c
  612ee4: e1a01000     	mov	r1, r0
  612ee8: e1a00008     	mov	r0, r8
  612eec: ebf3ef2c     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x304350
  612ef0: e1a01007     	mov	r1, r7
  612ef4: e5840008     	str	r0, [r4, #0x8]
  612ef8: e1a00006     	mov	r0, r6
  612efc: ebf3ef9a     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x304198
  612f00: e59d1004     	ldr	r1, [sp, #0x4]
  612f04: e1a06000     	mov	r6, r0
  612f08: e1a00005     	mov	r0, r5
  612f0c: ea000034     	b	0x612fe4 <glitch::core::quaternion::slerp(glitch::core::quaternion, glitch::core::quaternion, float)+0x2e4> @ imm = #0xd0
  612f10: e1a01005     	mov	r1, r5
  612f14: e3a0043f     	mov	r0, #1056964608
  612f18: ebf3ed23     	bl	0x30e3ac <__aeabi_fsub@plt> @ imm = #-0x304b74
  612f1c: e3001fdb     	movw	r1, #0xfdb
  612f20: e3441049     	movt	r1, #0x4049
  612f24: ebf3ef90     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3041c0
  612f28: ebf3eef6     	bl	0x30eb08 <sinf@plt>     @ imm = #-0x304428
  612f2c: e3001fdb     	movw	r1, #0xfdb
  612f30: e1a06000     	mov	r6, r0
  612f34: e3441049     	movt	r1, #0x4049
  612f38: e1a00005     	mov	r0, r5
  612f3c: ebf3ef8a     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3041d8
  612f40: ebf3eef0     	bl	0x30eb08 <sinf@plt>     @ imm = #-0x304440
  612f44: e1a01009     	mov	r1, r9
  612f48: e1a05000     	mov	r5, r0
  612f4c: e1a00006     	mov	r0, r6
  612f50: ebf3ef85     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3041ec
  612f54: e1a01005     	mov	r1, r5
  612f58: e1a0b000     	mov	r11, r0
  612f5c: e28a0102     	add	r0, r10, #-2147483648
  612f60: ebf3ef81     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3041fc
  612f64: e1a01000     	mov	r1, r0
  612f68: e1a0000b     	mov	r0, r11
  612f6c: ebf3ef0c     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x3043d0
  612f70: e1a0100a     	mov	r1, r10
  612f74: e5840000     	str	r0, [r4]
  612f78: e1a00006     	mov	r0, r6
  612f7c: ebf3ef7a     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x304218
  612f80: e1a01009     	mov	r1, r9
  612f84: e1a0a000     	mov	r10, r0
  612f88: e1a00005     	mov	r0, r5
  612f8c: ebf3ef76     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x304228
  612f90: e1a01000     	mov	r1, r0
  612f94: e1a0000a     	mov	r0, r10
  612f98: ebf3ef01     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x3043fc
  612f9c: e1a01008     	mov	r1, r8
  612fa0: e5840004     	str	r0, [r4, #0x4]
  612fa4: e1a00006     	mov	r0, r6
  612fa8: ebf3ef6f     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x304244
  612fac: e1a01005     	mov	r1, r5
  612fb0: e1a0a000     	mov	r10, r0
  612fb4: e2870102     	add	r0, r7, #-2147483648
  612fb8: ebf3ef6b     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x304254
  612fbc: e1a01000     	mov	r1, r0
  612fc0: e1a0000a     	mov	r0, r10
  612fc4: ebf3eef6     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x304428
  612fc8: e1a01007     	mov	r1, r7
  612fcc: e5840008     	str	r0, [r4, #0x8]
  612fd0: e1a00006     	mov	r0, r6
  612fd4: ebf3ef64     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x304270
  612fd8: e1a01008     	mov	r1, r8
  612fdc: e1a06000     	mov	r6, r0
  612fe0: e1a00005     	mov	r0, r5
  612fe4: ebf3ef60     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x304280
  612fe8: e1a01000     	mov	r1, r0
  612fec: e1a00006     	mov	r0, r6
  612ff0: ebf3eeeb     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x304454
  612ff4: e584000c     	str	r0, [r4, #0xc]
  612ff8: e1a00004     	mov	r0, r4
  612ffc: e28dd01c     	add	sp, sp, #28
  613000: e8bd4ff0     	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  613004: e28dd010     	add	sp, sp, #16
  613008: e12fff1e     	bx	lr
  61300c: e1a01005     	mov	r1, r5
  613010: e3a005fe     	mov	r0, #1065353216
  613014: ebf3ece4     	bl	0x30e3ac <__aeabi_fsub@plt> @ imm = #-0x304c70
  613018: e1a01009     	mov	r1, r9
  61301c: e1a06000     	mov	r6, r0
  613020: ebf3ef51     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3042bc
  613024: e1a0100b     	mov	r1, r11
  613028: e1a09000     	mov	r9, r0
  61302c: e1a00005     	mov	r0, r5
  613030: ebf3ef4d     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3042cc
  613034: e1a01000     	mov	r1, r0
  613038: e1a00009     	mov	r0, r9
  61303c: ebf3eed8     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x3044a0
  613040: e1a0100a     	mov	r1, r10
  613044: e5840000     	str	r0, [r4]
  613048: e1a00006     	mov	r0, r6
  61304c: ebf3ef46     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3042e8
  613050: e59d100c     	ldr	r1, [sp, #0xc]
  613054: e1a0a000     	mov	r10, r0
  613058: e1a00005     	mov	r0, r5
  61305c: ebf3ef42     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x3042f8
  613060: e1a01000     	mov	r1, r0
  613064: e1a0000a     	mov	r0, r10
  613068: ebf3eecd     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x3044cc
  61306c: e1a01008     	mov	r1, r8
  613070: e5840004     	str	r0, [r4, #0x4]
  613074: e1a00006     	mov	r0, r6
  613078: ebf3ef3b     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x304314
  61307c: e59d1008     	ldr	r1, [sp, #0x8]
  613080: e1a08000     	mov	r8, r0
  613084: e1a00005     	mov	r0, r5
  613088: ebf3ef37     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x304324
  61308c: e1a01000     	mov	r1, r0
  613090: e1a00008     	mov	r0, r8
  613094: ebf3eec2     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x3044f8
  613098: e1a01007     	mov	r1, r7
  61309c: e5840008     	str	r0, [r4, #0x8]
  6130a0: e1a00006     	mov	r0, r6
  6130a4: ebf3ef30     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x304340
  6130a8: e59d1004     	ldr	r1, [sp, #0x4]
  6130ac: e1a06000     	mov	r6, r0
  6130b0: e1a00005     	mov	r0, r5
  6130b4: ebf3ef2c     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x304350
  6130b8: e1a01000     	mov	r1, r0
  6130bc: e1a00006     	mov	r0, r6
  6130c0: ebf3eeb7     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x304524
  6130c4: e584000c     	str	r0, [r4, #0xc]
  6130c8: e1a00004     	mov	r0, r4
  6130cc: ebf52607     	bl	0x35c8f0 <glitch::core::quaternion::normalize()> @ imm = #-0x2b67e4
  6130d0: eaffffc8     	b	0x612ff8 <glitch::core::quaternion::slerp(glitch::core::quaternion, glitch::core::quaternion, float)+0x2f8> @ imm = #-0xe0

; quaternion_multiply_call_target: Engine quaternion multiply routine called by the separate indexed overload.
; ELF VA=0x0060dd34, file offset=0x0060dd34, size=448, SHA-256=8ccbd2df93a138f1b45ba1ebe938d4da7539c4ab0f0da00bff21da584fdd2ea2
0060dd34 <glitch::core::quaternion::operator*(glitch::core::quaternion const&) const>:
  60dd34: e92d41f0     	push	{r4, r5, r6, r7, r8, lr}
  60dd38: e3a03000     	mov	r3, #0
  60dd3c: e5803008     	str	r3, [r0, #0x8]
  60dd40: e1a04000     	mov	r4, r0
  60dd44: e3a005fe     	mov	r0, #1065353216
  60dd48: e5843000     	str	r3, [r4]
  60dd4c: e5843004     	str	r3, [r4, #0x4]
  60dd50: e1a05001     	mov	r5, r1
  60dd54: e584000c     	str	r0, [r4, #0xc]
  60dd58: e592100c     	ldr	r1, [r2, #0xc]
  60dd5c: e595000c     	ldr	r0, [r5, #0xc]
  60dd60: e1a06002     	mov	r6, r2
  60dd64: ebf40400     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x2ff000
  60dd68: e5961000     	ldr	r1, [r6]
  60dd6c: e1a07000     	mov	r7, r0
  60dd70: e5950000     	ldr	r0, [r5]
  60dd74: ebf403fc     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x2ff010
  60dd78: e1a01000     	mov	r1, r0
  60dd7c: e1a00007     	mov	r0, r7
  60dd80: ebf40189     	bl	0x30e3ac <__aeabi_fsub@plt> @ imm = #-0x2ff9dc
  60dd84: e5961004     	ldr	r1, [r6, #0x4]
  60dd88: e1a07000     	mov	r7, r0
  60dd8c: e5950004     	ldr	r0, [r5, #0x4]
  60dd90: ebf403f5     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x2ff02c
  60dd94: e1a01000     	mov	r1, r0
  60dd98: e1a00007     	mov	r0, r7
  60dd9c: ebf40182     	bl	0x30e3ac <__aeabi_fsub@plt> @ imm = #-0x2ff9f8
  60dda0: e5961008     	ldr	r1, [r6, #0x8]
  60dda4: e1a07000     	mov	r7, r0
  60dda8: e5950008     	ldr	r0, [r5, #0x8]
  60ddac: ebf403ee     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x2ff048
  60ddb0: e1a01000     	mov	r1, r0
  60ddb4: e1a00007     	mov	r0, r7
  60ddb8: ebf4017b     	bl	0x30e3ac <__aeabi_fsub@plt> @ imm = #-0x2ffa14
  60ddbc: e584000c     	str	r0, [r4, #0xc]
  60ddc0: e596100c     	ldr	r1, [r6, #0xc]
  60ddc4: e5950000     	ldr	r0, [r5]
  60ddc8: ebf403e7     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x2ff064
  60ddcc: e5961000     	ldr	r1, [r6]
  60ddd0: e1a07000     	mov	r7, r0
  60ddd4: e595000c     	ldr	r0, [r5, #0xc]
  60ddd8: ebf403e3     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x2ff074
  60dddc: e1a01000     	mov	r1, r0
  60dde0: e1a00007     	mov	r0, r7
  60dde4: ebf4036e     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x2ff248
  60dde8: e5961004     	ldr	r1, [r6, #0x4]
  60ddec: e1a07000     	mov	r7, r0
  60ddf0: e5950008     	ldr	r0, [r5, #0x8]
  60ddf4: ebf403dc     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x2ff090
  60ddf8: e1a01000     	mov	r1, r0
  60ddfc: e1a00007     	mov	r0, r7
  60de00: ebf40367     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x2ff264
  60de04: e5961008     	ldr	r1, [r6, #0x8]
  60de08: e1a07000     	mov	r7, r0
  60de0c: e5950004     	ldr	r0, [r5, #0x4]
  60de10: ebf403d5     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x2ff0ac
  60de14: e1a01000     	mov	r1, r0
  60de18: e1a00007     	mov	r0, r7
  60de1c: ebf40162     	bl	0x30e3ac <__aeabi_fsub@plt> @ imm = #-0x2ffa78
  60de20: e5840000     	str	r0, [r4]
  60de24: e596100c     	ldr	r1, [r6, #0xc]
  60de28: e5950004     	ldr	r0, [r5, #0x4]
  60de2c: ebf403ce     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x2ff0c8
  60de30: e5961004     	ldr	r1, [r6, #0x4]
  60de34: e1a07000     	mov	r7, r0
  60de38: e595000c     	ldr	r0, [r5, #0xc]
  60de3c: ebf403ca     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x2ff0d8
  60de40: e1a01000     	mov	r1, r0
  60de44: e1a00007     	mov	r0, r7
  60de48: ebf40355     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x2ff2ac
  60de4c: e5961008     	ldr	r1, [r6, #0x8]
  60de50: e1a07000     	mov	r7, r0
  60de54: e5950000     	ldr	r0, [r5]
  60de58: ebf403c3     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x2ff0f4
  60de5c: e1a01000     	mov	r1, r0
  60de60: e1a00007     	mov	r0, r7
  60de64: ebf4034e     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x2ff2c8
  60de68: e5961000     	ldr	r1, [r6]
  60de6c: e1a07000     	mov	r7, r0
  60de70: e5950008     	ldr	r0, [r5, #0x8]
  60de74: ebf403bc     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x2ff110
  60de78: e1a01000     	mov	r1, r0
  60de7c: e1a00007     	mov	r0, r7
  60de80: ebf40149     	bl	0x30e3ac <__aeabi_fsub@plt> @ imm = #-0x2ffadc
  60de84: e5840004     	str	r0, [r4, #0x4]
  60de88: e596100c     	ldr	r1, [r6, #0xc]
  60de8c: e5950008     	ldr	r0, [r5, #0x8]
  60de90: ebf403b5     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x2ff12c
  60de94: e5961008     	ldr	r1, [r6, #0x8]
  60de98: e1a07000     	mov	r7, r0
  60de9c: e595000c     	ldr	r0, [r5, #0xc]
  60dea0: ebf403b1     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x2ff13c
  60dea4: e1a01000     	mov	r1, r0
  60dea8: e1a00007     	mov	r0, r7
  60deac: ebf4033c     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x2ff310
  60deb0: e5961000     	ldr	r1, [r6]
  60deb4: e1a07000     	mov	r7, r0
  60deb8: e5950004     	ldr	r0, [r5, #0x4]
  60debc: ebf403aa     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x2ff158
  60dec0: e1a01000     	mov	r1, r0
  60dec4: e1a00007     	mov	r0, r7
  60dec8: ebf40335     	bl	0x30eba4 <__aeabi_fadd@plt> @ imm = #-0x2ff32c
  60decc: e5961004     	ldr	r1, [r6, #0x4]
  60ded0: e1a07000     	mov	r7, r0
  60ded4: e5950000     	ldr	r0, [r5]
  60ded8: ebf403a3     	bl	0x30ed6c <__aeabi_fmul@plt> @ imm = #-0x2ff174
  60dedc: e1a01000     	mov	r1, r0
  60dee0: e1a00007     	mov	r0, r7
  60dee4: ebf40130     	bl	0x30e3ac <__aeabi_fsub@plt> @ imm = #-0x2ffb40
  60dee8: e5840008     	str	r0, [r4, #0x8]
  60deec: e1a00004     	mov	r0, r4
  60def0: e8bd81f0     	pop	{r4, r5, r6, r7, r8, pc}

; quaternion_float_singleton_initializer: Initializes the float quaternion CVirtualEx singleton.
; ELF VA=0x0060ff20, file offset=0x0060ff20, size=148, SHA-256=8df3e509f1f03646025954e604f1d82c111e62c23894b73d2e111c1a470857ce
0060ff20 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>>::getInstance()>:
  60ff20: e92d4070     	push	{r4, r5, r6, lr}
  60ff24: e59f4070     	ldr	r4, [pc, #0x70]         @ 0x60ff9c <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>>::getInstance()+0x7c>
  60ff28: e59f3070     	ldr	r3, [pc, #0x70]         @ 0x60ffa0 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>>::getInstance()+0x80>
  60ff2c: e08f4004     	add	r4, pc, r4
  60ff30: e7946003     	ldr	r6, [r4, r3]
  60ff34: e5963000     	ldr	r3, [r6]
  60ff38: e3130001     	tst	r3, #1
  60ff3c: 0a000002     	beq	0x60ff4c <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>>::getInstance()+0x2c> @ imm = #0x8
  60ff40: e59f505c     	ldr	r5, [pc, #0x5c]         @ 0x60ffa4 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>>::getInstance()+0x84>
  60ff44: e7940005     	ldr	r0, [r4, r5]
  60ff48: e8bd8070     	pop	{r4, r5, r6, pc}
  60ff4c: e1a00006     	mov	r0, r6
  60ff50: ebf3fa05     	bl	0x30e76c <__cxa_guard_acquire@plt> @ imm = #-0x3017ec
  60ff54: e3500000     	cmp	r0, #0
  60ff58: 0afffff8     	beq	0x60ff40 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>>::getInstance()+0x20> @ imm = #-0x20
  60ff5c: e59f3044     	ldr	r3, [pc, #0x44]         @ 0x60ffa8 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>>::getInstance()+0x88>
  60ff60: e59f503c     	ldr	r5, [pc, #0x3c]         @ 0x60ffa4 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>>::getInstance()+0x84>
  60ff64: e1a00006     	mov	r0, r6
  60ff68: e7943003     	ldr	r3, [r4, r3]
  60ff6c: e7946005     	ldr	r6, [r4, r5]
  60ff70: e2833008     	add	r3, r3, #8
  60ff74: e5863000     	str	r3, [r6]
  60ff78: ebf3faaf     	bl	0x30ea3c <__cxa_guard_release@plt> @ imm = #-0x301544
  60ff7c: e59f3028     	ldr	r3, [pc, #0x28]         @ 0x60ffac <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>>::getInstance()+0x8c>
  60ff80: e1a00006     	mov	r0, r6
  60ff84: e7941003     	ldr	r1, [r4, r3]
  60ff88: e59f3020     	ldr	r3, [pc, #0x20]         @ 0x60ffb0 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float>>>::getInstance()+0x90>
  60ff8c: e7942003     	ldr	r2, [r4, r3]
  60ff90: ebf3f8db     	bl	0x30e304 <__aeabi_atexit@plt> @ imm = #-0x301c94
  60ff94: e7940005     	ldr	r0, [r4, r5]
  60ff98: e8bd8070     	pop	{r4, r5, r6, pc}
  60ff9c: 64 4b 38 00  	.word	0x00384b64
  60ffa0: 8c 45 00 00  	.word	0x0000458c
  60ffa4: 18 32 00 00  	.word	0x00003218
  60ffa8: 48 12 00 00  	.word	0x00001248
  60ffac: 30 46 00 00  	.word	0x00004630
  60ffb0: 90 18 00 00  	.word	0x00001890

; scale_float_singleton_initializer: Initializes the float scale CVirtualEx singleton.
; ELF VA=0x00610988, file offset=0x00610988, size=148, SHA-256=a9970daa37c40a12a5c3b55827abb0180206c6afaf5144f45e0bc1347298d581
00610988 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float>>>::getInstance()>:
  610988: e92d4070     	push	{r4, r5, r6, lr}
  61098c: e59f4070     	ldr	r4, [pc, #0x70]         @ 0x610a04 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float>>>::getInstance()+0x7c>
  610990: e59f3070     	ldr	r3, [pc, #0x70]         @ 0x610a08 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float>>>::getInstance()+0x80>
  610994: e08f4004     	add	r4, pc, r4
  610998: e7946003     	ldr	r6, [r4, r3]
  61099c: e5963000     	ldr	r3, [r6]
  6109a0: e3130001     	tst	r3, #1
  6109a4: 0a000002     	beq	0x6109b4 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float>>>::getInstance()+0x2c> @ imm = #0x8
  6109a8: e59f505c     	ldr	r5, [pc, #0x5c]         @ 0x610a0c <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float>>>::getInstance()+0x84>
  6109ac: e7940005     	ldr	r0, [r4, r5]
  6109b0: e8bd8070     	pop	{r4, r5, r6, pc}
  6109b4: e1a00006     	mov	r0, r6
  6109b8: ebf3f76b     	bl	0x30e76c <__cxa_guard_acquire@plt> @ imm = #-0x302254
  6109bc: e3500000     	cmp	r0, #0
  6109c0: 0afffff8     	beq	0x6109a8 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float>>>::getInstance()+0x20> @ imm = #-0x20
  6109c4: e59f3044     	ldr	r3, [pc, #0x44]         @ 0x610a10 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float>>>::getInstance()+0x88>
  6109c8: e59f503c     	ldr	r5, [pc, #0x3c]         @ 0x610a0c <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float>>>::getInstance()+0x84>
  6109cc: e1a00006     	mov	r0, r6
  6109d0: e7943003     	ldr	r3, [r4, r3]
  6109d4: e7946005     	ldr	r6, [r4, r5]
  6109d8: e2833008     	add	r3, r3, #8
  6109dc: e5863000     	str	r3, [r6]
  6109e0: ebf3f815     	bl	0x30ea3c <__cxa_guard_release@plt> @ imm = #-0x301fac
  6109e4: e59f3028     	ldr	r3, [pc, #0x28]         @ 0x610a14 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float>>>::getInstance()+0x8c>
  6109e8: e1a00006     	mov	r0, r6
  6109ec: e7941003     	ldr	r1, [r4, r3]
  6109f0: e59f3020     	ldr	r3, [pc, #0x20]         @ 0x610a18 <glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float>>>::getInstance()+0x90>
  6109f4: e7942003     	ldr	r2, [r4, r3]
  6109f8: ebf3f641     	bl	0x30e304 <__aeabi_atexit@plt> @ imm = #-0x3026fc
  6109fc: e7940005     	ldr	r0, [r4, r5]
  610a00: e8bd8070     	pop	{r4, r5, r6, pc}
  610a04: fc 40 38 00  	.word	0x003840fc
  610a08: 50 3b 00 00  	.word	0x00003b50
  610a0c: 68 1e 00 00  	.word	0x00001e68
  610a10: cc 3b 00 00  	.word	0x00003bcc
  610a14: d0 2c 00 00  	.word	0x00002cd0
  610a18: 90 18 00 00  	.word	0x00001890
